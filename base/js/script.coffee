# Author: Mike

afterPjax = []
window.$$$ = (callback) ->
  afterPjax.push(callback)

$ ->
  $(".navbar-inner a").pjax
    fragment: ".main-subcontainer"
    container: ".main-container"
    success: ->
      _.each afterPjax, (callback) -> callback()
  _.each afterPjax, (callback) -> callback()

popped = 'state' in window.history && window.history.state isnt null
initialURL = location.href

$(window).bind 'popstate', (e) ->
  initialPop = !popped && location.href == initialURL
  popped = true
  return if (initialPop)

  _.each afterPjax, (callback) -> callback()

slugify = (text) ->
  text
    .replace(/[\W\s]+/g, '-')
    .toLowerCase()

$$$ ->
  contentTmpl = $(".main-content").data("tmpl")
  $("ul.nav li").each () ->
    $li = $ @
    currentText = $("a", $li).text()

    if currentText is "Home"
      if contentTmpl is "/index.html"
        $li.addClass "active"
      else
        $li.removeClass "active"
      return
    if contentTmpl.indexOf($("a", $li).attr("href")) > -1
      $li.addClass "active"
    else
      $li.removeClass "active"
  $("body").attr "class", slugify($("ul.nav li.active").text())

$$$ ->
  disqus_shortname = 'yaluandmike'

  return unless $("#disqus_thread").length
  dsq = document.createElement('script')
  dsq.type = 'text/javascript'
  dsq.async = true
  dsq.src = 'http://' + disqus_shortname + '.disqus.com/embed.js';
  (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq)


$$$ ->
  console.log $("body").attr("class")
  return unless $("body").hasClass "photos"

  console.log "Running"
  $("#photo-nav-bar a").on "click", (e) ->
    e.preventDefault()
    target = @hash
    $.scrollTo target, 1000

  deferreds = []
  $(".album-container").each ->
    deferred = $.Deferred()
    deferreds.push deferred
    $container = $(@)
    $container.imagesLoaded ->
      $container.gpGallery(".picture-item")
      deferred.resolve()
  $.when(deferreds).then ->
    setTimeout((->
      $("body").scrollspy("refresh")
    ), 1000)
    setTimeout((->
      $("body").scrollspy("refresh")
    ), 600)
    setTimeout((->
      $("body").scrollspy("refresh")
    ), 1600)
    setTimeout((->
      $("body").scrollspy
        offset: 20
    ), 100)

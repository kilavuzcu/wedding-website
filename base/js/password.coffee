window.Blog = window.Blog || {}
User = window.User = window.User || {}

Blog.isPhone = -> $(window).width() < 480 or !!(/Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent))

_gaq = window._gaq = window._gaq || []


pwCookieName = "_IAMSEEN"

mainPw =
  'e30ed5b157c44ee6c435b06bae68b2d106d29035': 'Eleni Orphanides'
  '28c2def44d63e33804a47aaf04226f8f95ef6f91': 'Jo Osborn'
  '46a3775d2e1edfdeb019b376cd02b2335a9ed8e5': 'Lilei Xu'
  '3e2f4de49b3e837daf391fc62ea1b53a0c6a2be7': 'Sanya Gurnani'
  '8b13d25aa3d2fb6c3db440e0263e1b8f06381b92': 'Jeff Burgess'
  '272d162ce4173a0480e0834a48421bc5b0a26da8': 'Peter Axiak'
  '22be77c0cadb4da6085e45c68e23e88f7a6f8ea3': 'Mrs. Jiang,Alex Jiang,Barbara Jiang'
  '52c1e6cb377600412bc81978ad677bf43eb2b54e': 'Tim Yang'
  'f5e53e6973451b0efebfcb7e399d0f41367a244c': 'Rosie Axiak Niebolt'
  'de2f0bf6779a3f842a3fc744413294ed19180343': 'Monica Mack'
  '517d88ca04f7cce2bb7c7d5b3d525a37f3d2b1de': 'Chris Burgess'
  '24765b4c90fc2e23473c676ae4ed89a28c4ecf1e': 'Bruce Marcus'
  'b652819ff5bcc22c7ad49282998c384337f7da21': 'Celia Chen'
  'c45cd80a556f432a3607171a6818cd5a074b5cd4': 'Zhencai & Yehong'
  '37b19054cbc49172edd7fc3e762eb695cac832a1': 'Dave Burgess'
  'c0159612b0ef32139322233232df1a0d189c4b9b': 'Mike Shaw'
  'fc5ce85d6ddc60da9b367fd86a6b3a89d426bd64': 'Michael Axiak'
  '23ed30a594145905e5fb264400bdab1ee8bb5c1c': 'Gus Axiaq'
  '29f77b024ee5c4cdc92e6cc0f641dcdb6ec95fdb': 'Marie Pantojan'
  'bb7ff8f13adabcc9505660f185214c5af8162ec9': 'Joseph Axiak,Adam Buggia,Michael Price,Lucy Wu,Xiumin Zeng,Alice Chiang'
  '45b724982f78c97eaaa57828d39763889005fc63': 'Sandeep Satish'
  '8c01c025ccce645d143af42af02ce96e52345206': 'Frank Axiak'
  '8564e13e1ed441eacfe947f1100b4b059e9d5d51': 'Cathy Yao'
  'd554fae801dd23ca7dc12dd8932b5a7a85468a3e': 'Frank Thanh Cao'
  'bbdcadf9b6c120e48733747e91858b3fe80ee49a': 'Justin Pombrio'
  '2cc5420872645ee927bbd68e9f0025b06ecb6793': 'Maureen Axiak'
  '24da59d64f6fb251c5c4dab014a7dbfffb9266c0': 'Mary Hong'
  'ecbd8af733a17803b66ee4321b23f87f103cc9ca': 'Ginger Burgess Patrick,Tim Burgess'
  '2b432f9660f66df939089f8250f6d6c12c7583be': 'Vicki Zhou'
  'cf63252a0ed01720e41389480846d32c90a547cd': 'Luke Burgess'
  '93057c34b230f021581f0efbaf9cb5d5edd05750': 'Jingwen Tao'
  '9ce4a065c671b95bde016b295e58d25ceb42a7ae': 'Karl Rieb'
  '40e8d131d243ae5019bd9f78ebeaab7b3cef1ea3': 'Jessie Wang'
  '8ed95a2ba150b18f11f78776b6324c9e22fcbad8': 'Javier Hernandez'
  'ed256594e8b90f8922f5ecbc055eec313e4b24c4': 'Misha Koryak'
  '6472c73a3f1094a92f361edad4a765840b9646b2': 'Grace Yuen'
  'a480de7811283751e1558c5703081da73e4d3190': 'Virginia Burgess'
  'bb11ef2f15b1d3a45f78ae619ca0e2032d932c4b': 'Aunt Li Jun'
  'd6dd43fceeaf99287c8b9404302ec3afb20517ac': 'Laura Kelly'
  'd7222d8383bf43e96340d057b3ab08022ad453cd': 'Andrew Yoon'
  'e01721035c4856a59f5bcb368d87aef7de0529ae': 'Lynne Burgess Axiak'

individuals =
  'Lucy Wu': ['Ms. Lucy Wu']
  'Sandeep Satish': ['Mr. Sandeep Satish']
  'Lynne Burgess Axiak': ['Mrs. Lynne-Marie Axiak']
  'Frank Thanh Cao': ['Mr. Frank Thanh Tao']
  'Bruce Marcus': ['Mr. Bruce Marcus', 'Mrs. Bruce Marcus']
  'Peter Axiak': ['Mr. Peter Axiak', 'Mrs. Peter Axiak', 'Miss Hailey Axiak', 'Miss Kahlan Axiak']
  'Zhencai & Yehong': ['Mr. Zhencai Wu', 'Ms. Yehong Xu']
  'Tim Burgess': ['Mr. Timothy Burgess', 'Mrs. Timothy Burgess']
  'Aunt Li Jun': ['Mr. Joe Peng', 'Ms. Jun Li', 'Miss Joy Peng']
  'Jeff Burgess': ['Mr. Jeff Burgess']
  'Dave Burgess': ['Mr. David Burgess']
  'Karl Rieb': ['Mr. Karl Rieb', 'Mrs. Karl Rieb']
  'Misha Koryak': ['Mr. Misha Koryak', 'Mrs. Misha Koryak']
  'Barbara Jiang': ['Ms. Barbara Jiang']
  'Andrew Yoon': ['Mr. Andrew Yoon']
  'Mike Shaw': ['Mr. Michael Shaw']
  'Jessie Wang': ['Ms. Jessie Wang']
  'Grace Yuen': ['Ms. Grace Yuen', 'Mr. Vinay Mahajan']
  'Gus Axiaq': ['Mr. Gus Axiaq', 'Mrs. Gus Axiaq']
  'Michael Axiak': ['Mr. Michael Axiak']
  'Celia Chen': ['Ms. Celia Chen']
  'Monica Mack': ['Mr. Jay Mack', 'Mrs. Jay Mack']
  'Frank Axiak': ['Mr. Frank Axiak', 'Mrs. Frank Axiak']
  'Mary Hong': ['Ms. Mary Hong']
  'Adam Buggia': ['Mr. Adam Buggia', 'Ms. Sandra Ryeom']
  'Javier Hernandez': ['Mr. Javier Hernandez']
  'Marie Pantojan': ['Ms. Marie Pantojan', 'Mr. Eric Hagan']
  'Justin Pombrio': ['Mr. Justin Pombrio']
  'Xiumin Zeng': ['Ms. Xiumin Zeng']
  'Eleni Orphanides': ['Ms. Eleni Orphanides', 'Mr. Ali Wyne']
  'Joseph Axiak': ['Mr. Joseph Axiak']
  'Virginia Burgess': ['Mr. Fiore Bronga', 'Mrs. Fiore Bronga']
  'Michael Price': ['Mr. Michael Price', 'Ms. Michelle Bentivegna']
  'Luke Burgess': ['Mr. Luke Burgess']
  'Lilei Xu': ['Ms. Lilei Xu']
  'Jingwen Tao': ['Ms. Jingwen Tao']
  'Cathy Yao': ['Ms. Cathy Yao']
  'Laura Kelly': ['Ms. Laura Kelly']
  'Ginger Burgess Patrick': ['Mr. Frank Patrick', 'Mrs. Frank Patrick']
  'Alice Chiang': ['Ms. Alice Chiang', 'Mr. Matthew Herpich']
  'Alex Jiang': ['Ms. Alex Jiang']
  'Chris Burgess': ['Mr. Christopher Burgess', 'Ms. Lucy Biondi']
  'Rosie Axiak Niebolt': ['Mr. Russ Niebolt', 'Mrs. Russ Niebolt']
  'Jo Osborn': ['Mr. Michael Osborn', 'Mrs. Michael Osborn']
  'Vicki Zhou': ['Ms. Vicki Zhou', 'Mr. David Chang']
  'Maureen Axiak': ['Mr. Scott Ringrose', 'Mrs. Scott Ringrose', 'Mstr. Nathaniel Ringrose', 'Miss Penelope Ringrose']
  'Sanya Gurnani': ['Ms. Sanya Gurnani', "Ms. Sanya Gurnani's guest"]
  'Mrs. Jiang': ['Mr. Yongping Jiang', 'Ms. Xiaofang Jiang']
  'Tim Yang': ['Mr. Tim Yang']


authorizeUser = (user) ->
  User.name = user
  User.rsvpAddress = individuals[user]

  $(".initial-backdrop").remove()
  $('html').css('overflow', '')
  $(".container").removeClass("blurred")
  $("#pw-modal").modal 'hide'


checkPassword = (password, success, error) ->
  user = mainPw[hex_sha1(password.toLowerCase())]
  if user?
    _gaq.push ['_trackEvent', 'passwordSuccess', location.href, password, undefined]
    $.cookie pwCookieName, password,
      expires: 31
      path: "/"
    _gaq.push ["_setCustomVar", 1, "Name", user, 1]
    success(user)
  else
    error()

showModal = ->
  $("#pw-modal").modal
    backdrop: false
    keyboard: false
    show: true

  $("#pw-modal form").on 'submit', (e) ->
    e.preventDefault()
    checkPassword $("#pw-modal .pw-answer").val(), authorizeUser, (->
      $("#pw-modal .alert").show()
   )

  $(".container").addClass("blurred")
  if $(window).width() >= 480
    $('html').css('overflow', 'hidden')

showPrompt = ->
  answer = prompt("Please enter your password")
  checkPassword answer, authorizeUser, showPrompt

val = $.cookie(pwCookieName)
if val
  user = mainPw[hex_sha1(val.toLowerCase())]
else
  m = location.hash.match(/^#(.+)/)
  if m
    val = m[1]
    user = mainPw[hex_sha1(val.toLowerCase())]

if val and user?
  _gaq.push ["_setCustomVar", 1, "Name", user, 1]
  authorizeUser(user)
else
  if Blog.isPhone()
    showPrompt()
  else
    showModal()


m = window.location.href.match /\/rsvp\/(.+)$/
if m
  [base, password] = m

  checkPassword password, authorizeUser, (->)
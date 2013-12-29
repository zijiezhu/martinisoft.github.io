$(document).ready ->
  $("a.menu").click ->
    $(".site-header nav").slideToggle 100
    false

  $(window).resize ->
    w = $(window).width()
    menu = $(".site-header nav")
    menu.removeAttr "style"  if w > 680 and menu.is(":hidden")

  $("article.post iframe").wrap "<div class=\"video-container\" />"

$(document).ready ->
  vpH = $(window).height()
  vH = vpH - 350
  $(".overlay").css "height", vH
  $(".featured-image").css "height", vH

$ ->
  $("<img>").attr("src", ->
    imgUrl = $("div.featured-image").css("background-image")
    return  unless imgUrl
    imgUrl = imgUrl.substring(4, imgUrl.length - 1)
    imgUrl
  ).load ->
    $("img.loading").fadeOut 500
    $("div.overlay").fadeTo "slow", 0.6

$ ->
  $(".post-list li").each (i) ->
    t = $(this)
    setTimeout (->
      t.addClass "slider"
    ), (i + 1) * 330

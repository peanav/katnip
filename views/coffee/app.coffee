define ['lib/jquery', 'router'], ($, router) ->
  init = ->
    router.start()

  return {
    init: init
  }

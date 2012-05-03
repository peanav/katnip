define ['lib/jquery', 'router'], ($, router) ->
  init = ->
    gold = silver = rest = "unknown"

    awardMedals = (first, second, others...) ->
      gold   = first
      silver = second
      rest   = others

    contenders = [
      "Michael Phelps"
      "Liu Xiang"
      "Yao Ming"
      "Allyson Felix"
      "Shawn Johnson"
      "Roman Sebrle"
      "Guo Jingjing"
      "Tyson Gay"
      "Asafa Powell"
      "Usain Bolt"
    ]

    awardMedals contenders...

    alert "Gold: " + gold
    alert "Silver: " + silver
    alert "The Field: " + rest
    router.start()

  return {
    init: init
  }

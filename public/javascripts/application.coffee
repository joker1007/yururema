$(->
  $("#remindButton").click((e) ->
    e.preventDefault()
    reload_task()
  )
)

reload_task = () ->
  $.ajax {
    type: "GET"
    url: "/"
    dataType: "json"
    success: (data) ->
      tasks = _.map(data, (elem)->
        elem.daily_task
      )
      rendered = $("#taskTemplate").render(tasks)
      $("#taskList").animate({
        opacity: 0.0
        top: '+=100'
      }, 200, ->
        ul = $("<ul>").attr("id", "taskList").css({
          "opacity": 0.0
          "position": "relative"
          "top": "-100px"
        })
        ul.html(rendered)
        $(this).replaceWith(ul)
        ul.animate({
          opacity: 1.0
          top: '+=100'
        }, 200)
      )
  }

$(->
  $("#remindButton").click((e) ->
    e.preventDefault()
    reload_task()
  )
  
  $("select").change((e) ->
    category_name = $(this).children("option:selected").val()
    reload_task(category_name)
  )
)

reload_task = (category_name) ->
  if category_name?
    url = "/?category_name="+category_name
  else
    url = "/"
  $.ajax {
    type: "GET"
    url: url
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
  
  

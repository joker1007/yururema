$(->
  $("#remindButton").click((e) ->
    e.preventDefault()
    $.ajax {
      type: "GET"
      url: "/"
      dataType: "json"
      success: (data) ->
        tasks = _.map(data, (elem)->
          elem.daily_task
        )
        html = $("#taskTemplate").render(tasks)
        $("#taskList").html(html)
    }
  )
)

(function() {
  $(function() {
    return $("#remindButton").click(function(e) {
      e.preventDefault();
      return $.ajax({
        type: "GET",
        url: "/",
        dataType: "json",
        success: function(data) {
          var html, tasks;
          tasks = _.map(data, function(elem) {
            return elem.daily_task;
          });
          html = $("#taskTemplate").render(tasks);
          return $("#taskList").html(html);
        }
      });
    });
  });
}).call(this);

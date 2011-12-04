(function() {
  var reload_task;
  $(function() {
    $("#remindButton").click(function(e) {
      e.preventDefault();
      return reload_task();
    });
    return $("select").change(function(e) {
      var category_name;
      category_name = $(this).children("option:selected").val();
      return reload_task(category_name);
    });
  });
  reload_task = function(category_name) {
    var url;
    if (category_name != null) {
      url = "/?category_name=" + category_name;
    } else {
      url = "/";
    }
    return $.ajax({
      type: "GET",
      url: url,
      dataType: "json",
      success: function(data) {
        var rendered, tasks;
        tasks = _.map(data, function(elem) {
          return elem.daily_task;
        });
        rendered = $("#taskTemplate").render(tasks);
        return $("#taskList").animate({
          opacity: 0.0,
          top: '+=100'
        }, 200, function() {
          var ul;
          ul = $("<ul>").attr("id", "taskList").css({
            "opacity": 0.0,
            "position": "relative",
            "top": "-100px"
          });
          ul.html(rendered);
          $(this).replaceWith(ul);
          return ul.animate({
            opacity: 1.0,
            top: '+=100'
          }, 200);
        });
      }
    });
  };
}).call(this);

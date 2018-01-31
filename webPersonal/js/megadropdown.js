$(document).ready(function () {
    var sub = $("#sub");
    var activeRow;
    var activeMeun;

    var timer;

    var mouseInSub = false;
    sub.on("mouseenter", function (e) {
        mouseInSub = true;
    })
    sub.on("mouseleave", function (e) {
        mouseInSub = false;
    })

    $("#test").on("mouseenter", function (e) {
        sub.removeClass("none");

        $(document).bind("mousemove", moveHanlder);
    }).on("mouseleave", function (e) {
        sub.addClass("none");
        if (activeRow) {
            activeRow.removeClass("active");
            activeRow = null;
        }
        if (activeMeun) {
            activeMeun.addClass("none");
            activeMeun = null;
        }
        
        $(document).unbind("mousemove", moveHanlder);

    }).on("mouseenter", "li", function (e) {
        if (!activeRow) {
            activeRow = $(e.target).addClass("active");
            activeMeun = $("#" + activeRow.data("id"));
            activeMeun.removeClass("none");
            return;
        }
      
        if (timer) {
            clearTimeout(timer);
        }

        timer = setTimeout(function () {
            if (mouseInSub) {
                return;
            }

            activeRow.removeClass("active");
            activeMeun.addClass("none");

            activeRow = $(e.target);
            activeRow.addClass("active");
            activeMeun = $("#" + activeRow.data('id'));
            activeMeun.removeClass("none");
            timer = null;
        }, 200);


        
    })
});



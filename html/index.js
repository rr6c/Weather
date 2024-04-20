$(function () {
    function display(bool) {
        if (bool) {
            $(".container").show();
        } else {
            $(".container").hide();
        }
    }

    display(false)

    function display2(bool,Text) {
        if (bool) {
            $(".box").show();
            $(".text-wrapper").html(Text);
        } else {
            $(".box").hide();
        }
    }
    display2(false)

    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type === "Weathernui") {
            if (item.status == true) {
                display(true)
            } else {
                display(false)
            }
        }
        if (item.type === "Donejfh") {
            if (item.status == true) {
                display2(true, item.Text);
            } else {
                display2(false, "");
            }
        }
    })
    document.onkeyup = function (data) {
        if (data.which == 27) {
            $.post('https://Weather_nui/close', JSON.stringify({}));
            return
        }
    };
    $("#snow").click(function () {
        $.post('https://Weather_nui/snow', JSON.stringify({}));
        return;
    })
    $("#halloween").click(function () {
        $.post('https://Weather_nui/halloween', JSON.stringify({}));
        return;
    })
    $("#rain").click(function () {
        $.post('https://Weather_nui/rain', JSON.stringify({}));
        return;
    })
    $("#night").click(function () {
        $.post('https://Weather_nui/night', JSON.stringify({}));
        return;
    })
    $("#sun").click(function () {
        $.post('https://Weather_nui/sun', JSON.stringify({}));
        return;
    })
    $("#lightoff").click(function () {
        $.post('https://Weather_nui/lightoff', JSON.stringify({}));
        return;
    })
})
var Conversion = function (url, formObj) {

    var apiUrl;
    var form;

    this.construct = function (url, formObj) {
        apiUrl = url;
        form = formObj;
    };

    this.showLoading = function () {
        $("div#result").hide();
        $("div#resultLoader").show();
    };

    this.showResult = function () {
        $("div#result").show();
        $("div#resultLoader").hide();
    };

    this.hideResultLoading = function () {
        $("div#result").hide();
        $("div#resultLoader").hide();
    };

    this.getConversionResult = function () {
        var obj = this;
        obj.showLoading();
        $.ajax({
            url: apiUrl,
            cache: false,
            data: {property: form.find('#property').val(), value: form.find('#value').val()},
            success: function (data) {
                obj.appendResult(data);
                if (data.error) {
                    alert(data.error);
                    obj.hideResultLoading();
                } else {
                    obj.showResult();
                }
            },
            error: function () {
                obj.hideResultLoading();
            }
        });
    };

    this.appendResult = function (data) {
        $('div#celsius').html(data.celsius);
        $('div#fahrenheit').html(data.fahrenheit);
    };


    this.construct(url, formObj);

};
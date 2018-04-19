<link type="text/css" rel="stylesheet" href="${staticServePath}/plugins/symphony-interest/style.css"/>
<div id="symphonyInterestPanel">
    <div class="module-panel">
        <div class="module-header">
            <h2>Hello Solo!</h2>
        </div>
        <div class="module-body padding12">
            <div id="symphonyInterest">
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    plugins.symphonyInterest = {
        init: function () {
            $("#loadMsg").text("${loadingLabel}");

            $("#symphonyInterest").css("background",
                    "url(${staticServePath}/images/loader.gif) no-repeat scroll center center transparent");

            $("#loadMsg").text("");
        }
    };

    /*
     * 添加插件
     */
    admin.plugin.add({
        "id": "symphonyInterest",
        "path": "/main/panel1",
        "content": $("#symphonyInterestPanel").html()
    });

    // 移除现有内容
    $("#symphonyInterestPanel").remove();
</script>

$(document).ready(function () {
    // Hasierako karga
    $("main").load("Hasiera.html");

    // Klik logoan
    $("#hasieraLogo").on("click", function (e) {
        e.preventDefault();
        $("main").load("Hasiera.html");
        document.title = "FNFS - Hasiera";
    });

    // Klik "Hasiera" estekan
    $("#hasieraNav").on("click", function (e) {
        e.preventDefault();
        $("main").load("Hasiera.html");
        document.title = "FNFS - Hasiera";
    });

    // Taldeak
    $("#taldeak").on("click", function () {
        document.title = "FNFS - Taldeak"
        $.ajax({
            type: "GET",
            url: "xml/Taldeak.xml",
            dataType: "xml",
            success: function (xml) {
                $.ajax({
                    type: "GET",
                    url: "xml/Taldeak.xsl",
                    dataType: "xml",
                    success: function (xsl) {
                        var xsltProcessor = new XSLTProcessor();
                        xsltProcessor.importStylesheet(xsl);
                        var resultDocument = xsltProcessor.transformToDocument(xml);
                        var resultHtml = new XMLSerializer().serializeToString(resultDocument);
                        $("main").html(resultHtml);
                    },
                    error: function () {
                        console.log("Error loading XSL");
                    }
                });
            },
            error: function () {
                console.log("Error loading XML");
            }
        });
    });

    // Berriak
    $("#berriak").on("click", function () {
        document.title = "FNFS - Berriak"
        $.ajax({
            type: "GET",
            url: "xml/Berriak.xml",
            dataType: "xml",
            success: function (xml) {
                $.ajax({
                    type: "GET",
                    url: "xml/Berriak.xsl",
                    dataType: "xml",
                    success: function (xsl) {
                        var xsltProcessor = new XSLTProcessor();
                        xsltProcessor.importStylesheet(xsl);
                        var resultDocument = xsltProcessor.transformToDocument(xml);
                        var resultHtml = new XMLSerializer().serializeToString(resultDocument);
                        $("main").html(resultHtml);
                    },
                    error: function () {
                        console.log("Error loading XSL");
                    }
                });
            },
            error: function () {
                console.log("Error loading XML");
            }
        });
    });

});
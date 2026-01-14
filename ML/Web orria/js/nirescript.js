$(document).ready(function () {
    // hasierako karga
    $("main").load("hasiera.html");

    // Klik logoan
    $("#hasieraLogo").on("click", function (e) {
        e.preventDefault();
        $("main").load("hasiera.html");
        document.title = "FNFS - hasiera";
    });

    // Klik "hasiera" estekan
    $("#hasieraNav").on("click", function (e) {
        e.preventDefault();
        $("main").load("hasiera.html");
        document.title = "FNFS - hasiera";
    });

    // Taldeak
    $("#taldeak").on("click", function () {
        document.title = "FNFS - Taldeak"
        $.ajax({
            type: "GET",
            url: "xml/taldeak.xml",
            dataType: "xml",
            success: function (xml) {
                $.ajax({
                    type: "GET",
                    url: "xml/taldeak.xsl",
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
            url: "xml/berriak.xml",
            dataType: "xml",
            success: function (xml) {
                $.ajax({
                    type: "GET",
                    url: "xml/berriak.xsl",
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

    // Jardunaldi
    $("#jornada").on("click", function () {
        document.title = "FNFS - Jardunaldi"
        $.ajax({
            type: "GET",
            url: "xml/jardunaldia.xml",
            dataType: "xml",
            success: function (xml) {
                $.ajax({
                    type: "GET",
                    url: "xml/jardunaldia.xsl",
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

    // Sailkapena
    $("#sailkapena").on("click", function () {
        document.title = "FNFS - Sailkapena"
        $.ajax({
            type: "GET",
            url: "xml/sailkapena.xml",
            dataType: "xml",
            success: function (xml) {
                $.ajax({
                    type: "GET",
                    url: "xml/sailkapena.xsl",
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
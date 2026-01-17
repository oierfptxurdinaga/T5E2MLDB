$(document).ready(function () {

    // --- Kode berdina ez deitzeko 4 aldiz---
    function kargatuXML(xmlPath, xslPath, callback) {
        $.ajax({
            type: "GET",
            url: xmlPath,
            dataType: "xml",
            success: function (xml) {
                $.ajax({
                    type: "GET",
                    url: xslPath,
                    dataType: "xml",
                    success: function (xsl) {
                        try {
                            var xsltProcessor = new XSLTProcessor();
                            xsltProcessor.importStylesheet(xsl);
                            var resultDocument = xsltProcessor.transformToDocument(xml);
                            var resultHtml = new XMLSerializer().serializeToString(resultDocument);

                            $("main").html(resultHtml);
                            if (callback) callback();

                        } catch (e) {
                            console.error("Errorea XSLT transformazioan:", e);
                            $("main").html("<p>Errorea datuak kargatzean.</p>");
                        }
                    },
                    error: function () { console.log("Error loading XSL: " + xslPath); }
                });
            },
            error: function () { console.log("Error loading XML: " + xmlPath); }
        });
    }

    $("main").load("hasiera.html");

    $("#hasieraLogo, #hasieraNav").on("click", function (e) {
        e.preventDefault();
        $("main").load("hasiera.html");
        document.title = "FNFS - Hasiera";
    });

    // Taldeak
    $("#taldeak").on("click", function () {
        document.title = "FNFS - Taldeak";
        kargatuXML("xml/federazioa.xml", "xml/taldeak.xsl"); 
   
    });

    // Berriak
    $("#berriak").on("click", function () {
        document.title = "FNFS - Berriak";
        kargatuXML("xml/berriak.xml", "xml/berriak.xsl");
    });

    // Jardunaldi
    $("#jornada").on("click", function () {
        document.title = "FNFS - Jardunaldi";
        kargatuXML("xml/federazioa.xml", "xml/jardunaldia.xsl");
    });

    $("#sailkapena").on("click", function () {
        document.title = "FNFS - Sailkapena";
        kargatuXML("xml/federazioa.xml", "xml/sailkapena.xsl", function() {

            $(".denborald-taula").hide();

            var idHasiera = $("#temporada-selector").val(); 
            if(idHasiera) {
                $("#" + idHasiera).show();
            }


            $("#temporada-selector").on("change", function() {
                var idAukeratua = $(this).val(); 
                
                $(".denboraldi-taula").hide();
                $("#" + idAukeratua).fadeIn(300);
            });
        });
    });

});
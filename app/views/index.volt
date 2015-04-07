<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        {{ get_title() }}
        {{ stylesheet_link('lib/lumen/css/normalize.css') }}
		{{ stylesheet_link('lib/bootstrap/css/bootstrap.css') }}
		{{ stylesheet_link("lib/lumen/lumen_font/style.css") }}
		{{ stylesheet_link("lib/lumen/montserrat_font/font.css") }}
		{{ stylesheet_link("lib/lumen/css/app.css") }}

        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Your invoices">
        <meta name="author" content="Phalcon Team">
    </head>
    <body>
        {{ content() }}
        {{ javascript_include("lib/jquery/jquery.min.js") }}
    </body>
</html>


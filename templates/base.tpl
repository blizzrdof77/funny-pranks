<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>Funny Pranks</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="icon" type="image/jpg" href="/static/images/favicon.png" />
    <link href="/static/styles/styles.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="js/jquery.pikachoose.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js" type="text/javascript"></script>
    <script src="/static/js/cufon-yui.js" type="text/javascript"></script>
    <script src="/static/js/funnypranks.font.js" type="text/javascript"></script>
    <script src="/static/js/custom.js" type="text/javascript"></script>
  </head>

  <body>

    <div id="mainContent">
    <div id="ad-container">
      <div id="googleAds">
        <script type="text/javascript"><!--
          google_ad_client = "pub-6474890236827150";
          google_ad_width = 120;
          google_ad_height = 600;
          google_ad_format = "120x600_as";
          google_ad_type = "text_image";
          google_ad_channel = "";
          //-->
        </script>
        <script type="text/javascript"
         src="http://pagead2.googlesyndication.com/pagead/show_ads.js"></script>
      </div>
    </div>
      <div id="pranksArea">
        {% block funny_pranks_body %}
          XXX: fill in the "funny_pranks_body" block...
        {% endblock %}
      </div>

      <div id="prankListNavigation">
        {% block funny_pranks_page_links %}
          XXX: fill me in...
        {% endblock %}
      </div>

      <footer>
        <div id="licenseInfo">
          <div>
            <img src="/static/images/freedomdefined.png" alt="" />
          </div>
          <div class="blurb">
            All pranks are made available under the terms of the
            <a href="http://creativecommons.org/licenses/by-sa/3.0/"
              >Creative Commons Attribution-ShareAlike License</a>.
          </div>
        </div>
        <div id="donate">
          <div>
            <img src="/static/images/bitcoin.png" alt="" />
          </div>
          <div class="blurb">
            Tips graciously accepted via <a href="http://bitcoin.org">Bitcoin</a>:
            1Hr7P86VhBkBceCiLSbXVEtm3S3y8STf5X
          </div>
        </div>
      </footer>

      <!--
      <div id="useStandardsCompliantBrowser">
        Site best viewed with a standards-compliant browser...
        <a href="http://www.mozilla.com/en-US/firefox/">Firefox</a> will do.
      </div>
      -->

      <!-- XXX: Silly little hack to get some more padding at the bottom of
                the page. -->
      <div id="quickPaddingHack"> </div>

    </div>


    <script type="text/javascript">
      var gaJsHost = (("https:" == document.location.protocol) ?
        "https://ssl." : "http://www.");
      document.write(unescape("%3Cscript src='" + gaJsHost +
        "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
    </script>
    <script type="text/javascript">
      try {
        var pageTracker = _gat._getTracker("UA-9999925-2");
        pageTracker._trackPageview();
      } catch(err) {}
    </script>

  <!--
    <script src="http://www.google-analytics.com/urchin.js" type="text/javascript">
    </script>
    <script type="text/javascript">
      _uacct = "UA-3106703-1";
      urchinTracker();
    </script>
  -->

  </body>
</html>

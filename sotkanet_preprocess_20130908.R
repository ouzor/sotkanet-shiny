



<!DOCTYPE html>
<html lang="en" class="">
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    
    
    <title>takomo/sotkanet_preprocess_20130908.R at master · louhos/takomo</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png">
    <meta property="fb:app_id" content="1401488693436528">

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="louhos/takomo" name="twitter:title" /><meta content="takomo - Miscellaneous and preliminary source code" name="twitter:description" /><meta content="https://avatars1.githubusercontent.com/u/1228310?v=2&amp;s=400" name="twitter:image:src" />
<meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://avatars1.githubusercontent.com/u/1228310?v=2&amp;s=400" property="og:image" /><meta content="louhos/takomo" property="og:title" /><meta content="https://github.com/louhos/takomo" property="og:url" /><meta content="takomo - Miscellaneous and preliminary source code" property="og:description" />

      <meta name="browser-stats-url" content="/_stats">
    <link rel="assets" href="https://assets-cdn.github.com/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035">
    <link rel="xhr-socket" href="/_sockets">
    <meta name="pjax-timeout" content="1000">

    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="selected-link" value="repo_source" data-pjax-transient>
      <meta name="google-analytics" content="UA-3769691-2">

    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="C264D30B:6BEA:1E6F2BF:5437B613" name="octolytics-dimension-request_id" /><meta content="1228426" name="octolytics-actor-id" /><meta content="ouzor" name="octolytics-actor-login" /><meta content="1374d097f272481f8a6de31d5d2713eb3776a484177603c804d7d987bcb58a34" name="octolytics-actor-hash" />
    <meta content="Rails, view, blob#show" name="analytics-event" />

    
    
    <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico">


    <meta content="authenticity_token" name="csrf-param" />
<meta content="Vle7wL88kSrcurDJAEcrU0zoMdFRIq0Bwc9IlIkCerACACgyYCsycNPLzSONFfylXNZifHLH1BOru/7rjQvndA==" name="csrf-token" />

    <link href="https://assets-cdn.github.com/assets/github-0b7f6f87923ad9426424470c38a307b7e83d5ca5.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://assets-cdn.github.com/assets/github2-d5b333d2db016759f0579af151c14effd2373ff4.css" media="all" rel="stylesheet" type="text/css" />
    


    <meta http-equiv="x-pjax-version" content="c9ea9fce8962578a1976253eaa6d3e7c">

      
  <meta name="description" content="takomo - Miscellaneous and preliminary source code">
  <meta name="go-import" content="github.com/louhos/takomo git https://github.com/louhos/takomo.git">

  <meta content="1228310" name="octolytics-dimension-user_id" /><meta content="louhos" name="octolytics-dimension-user_login" /><meta content="3610040" name="octolytics-dimension-repository_id" /><meta content="louhos/takomo" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="3610040" name="octolytics-dimension-repository_network_root_id" /><meta content="louhos/takomo" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/louhos/takomo/commits/master.atom" rel="alternate" title="Recent Commits to takomo:master" type="application/atom+xml">

  </head>


  <body class="logged_in  env-production macintosh vis-public page-blob">
    <a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>
    <div class="wrapper">
      
      
      
      


      <div class="header header-logged-in true" role="banner">
  <div class="container clearfix">

    <a class="header-logo-invertocat" href="https://github.com/" data-hotkey="g d" aria-label="Homepage" ga-data-click="Header, go to dashboard, icon:logo">
  <span class="mega-octicon octicon-mark-github"></span>
</a>


      <div class="site-search repo-scope js-site-search" role="search">
          <form accept-charset="UTF-8" action="/louhos/takomo/search" class="js-site-search-form" data-global-search-url="/search" data-repo-search-url="/louhos/takomo/search" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
  <input type="text"
    class="js-site-search-field is-clearable"
    data-hotkey="s"
    name="q"
    placeholder="Search"
    data-global-scope-placeholder="Search GitHub"
    data-repo-scope-placeholder="Search"
    tabindex="1"
    autocapitalize="off">
  <div class="scope-badge">This repository</div>
</form>
      </div>
      <ul class="header-nav left" role="navigation">
        <li class="header-nav-item explore">
          <a class="header-nav-link" href="/explore" data-ga-click="Header, go to explore, text:explore">Explore</a>
        </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="https://gist.github.com" data-ga-click="Header, go to gist, text:gist">Gist</a>
          </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="/blog" data-ga-click="Header, go to blog, text:blog">Blog</a>
          </li>
        <li class="header-nav-item">
          <a class="header-nav-link" href="https://help.github.com" data-ga-click="Header, go to help, text:help">Help</a>
        </li>
      </ul>

    
<ul class="header-nav user-nav right" id="user-links">
  <li class="header-nav-item dropdown js-menu-container">
    <a class="header-nav-link name" href="/ouzor" data-ga-click="Header, go to profile, text:username">
      <img alt="Juuso Parkkinen" class="avatar" data-user="1228426" height="20" src="https://avatars3.githubusercontent.com/u/1228426?v=2&amp;s=40" width="20" />
      <span class="css-truncate">
        <span class="css-truncate-target">ouzor</span>
      </span>
    </a>
  </li>

  <li class="header-nav-item dropdown js-menu-container">
    <a class="header-nav-link js-menu-target tooltipped tooltipped-s" href="#" aria-label="Create new..." data-ga-click="Header, create new, icon:add">
      <span class="octicon octicon-plus"></span>
      <span class="dropdown-caret"></span>
    </a>

    <div class="dropdown-menu-content js-menu-content">
      
<ul class="dropdown-menu">
  <li>
    <a href="/new"><span class="octicon octicon-repo"></span> New repository</a>
  </li>
  <li>
    <a href="/organizations/new"><span class="octicon octicon-organization"></span> New organization</a>
  </li>
    <li class="dropdown-divider"></li>
    <li class="dropdown-header">
      <span title="louhos">This organization</span>
    </li>

    <li>
      <a href="/orgs/louhos/invitations/new"><span class="octicon octicon-person"></span> Invite someone</a>
    </li>

    <li>
      <a href="/orgs/louhos/new-team"><span class="octicon octicon-jersey"></span> New team</a>
    </li>

    <li>
      <a href="/organizations/louhos/repositories/new"><span class="octicon octicon-repo"></span> New repository</a>
    </li>


    <li class="dropdown-divider"></li>
    <li class="dropdown-header">
      <span title="louhos/takomo">This repository</span>
    </li>
      <li>
        <a href="/louhos/takomo/issues/new"><span class="octicon octicon-issue-opened"></span> New issue</a>
      </li>
      <li>
        <a href="/louhos/takomo/settings/collaboration"><span class="octicon octicon-person"></span> New collaborator</a>
      </li>
</ul>

    </div>
  </li>

  <li class="header-nav-item">
        <a href="/notifications" aria-label="You have no unread notifications" class="header-nav-link notification-indicator tooltipped tooltipped-s" data-ga-click="Header, go to notifications, icon:read" data-hotkey="g n">
        <span class="mail-status all-read"></span>
        <span class="octicon octicon-inbox"></span>
</a>
  </li>

  <li class="header-nav-item">
    <a class="header-nav-link tooltipped tooltipped-s" href="/settings/profile" id="account_settings" aria-label="Settings" data-ga-click="Header, go to settings, icon:settings">
      <span class="octicon octicon-gear"></span>
    </a>
  </li>

  <li class="header-nav-item">
    <form accept-charset="UTF-8" action="/logout" class="logout-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="vnQCJrvoe7tZL92JIMqpzo7kRe5r8UGPQI4Fg5ekxm2vNIl9aU6y345j9dcDM+XQFFq295xac2/EdslZWqn4Zg==" /></div>
      <button class="header-nav-link sign-out-button tooltipped tooltipped-s" aria-label="Sign out" data-ga-click="Header, sign out, icon:logout">
        <span class="octicon octicon-sign-out"></span>
      </button>
</form>  </li>

</ul>


    
  </div>
</div>

      

        


      <div id="start-of-content" class="accessibility-aid"></div>
          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    <div id="js-flash-container">
      
    </div>
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        
<ul class="pagehead-actions">

    <li class="subscription">
      <form accept-charset="UTF-8" action="/notifications/subscribe" class="js-social-container" data-autosubmit="true" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="fugxTk34VnthYYuLuHVHdFwcrlopY5Ahp0x2l0h35Ep8Fi2NqOL+miHvxlLPv5pqIIWuoou6HK0SmzwJmvKV/Q==" /></div>  <input id="repository_id" name="repository_id" type="hidden" value="3610040" />

    <div class="select-menu js-menu-container js-select-menu">
      <a class="social-count js-social-count" href="/louhos/takomo/watchers">
        1
      </a>
      <a href="/louhos/takomo/subscription"
        class="minibutton select-menu-button with-count js-menu-target" role="button" tabindex="0" aria-haspopup="true">
        <span class="js-select-button">
          <span class="octicon octicon-eye"></span>
          Watch
        </span>
      </a>

      <div class="select-menu-modal-holder">
        <div class="select-menu-modal subscription-menu-modal js-menu-content" aria-hidden="true">
          <div class="select-menu-header">
            <span class="select-menu-title">Notifications</span>
            <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
          </div> <!-- /.select-menu-header -->

          <div class="select-menu-list js-navigation-container" role="menu">

            <div class="select-menu-item js-navigation-item selected" role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input checked="checked" id="do_included" name="do" type="radio" value="included" />
                <h4>Not watching</h4>
                <span class="description">Be notified when participating or @mentioned.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-eye"></span>
                  Watch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input id="do_subscribed" name="do" type="radio" value="subscribed" />
                <h4>Watching</h4>
                <span class="description">Be notified of all conversations.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-eye"></span>
                  Unwatch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input id="do_ignore" name="do" type="radio" value="ignore" />
                <h4>Ignoring</h4>
                <span class="description">Never be notified.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-mute"></span>
                  Stop ignoring
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

          </div> <!-- /.select-menu-list -->

        </div> <!-- /.select-menu-modal -->
      </div> <!-- /.select-menu-modal-holder -->
    </div> <!-- /.select-menu -->

</form>
    </li>

  <li>
    
  <div class="js-toggler-container js-social-container starring-container ">

    <form accept-charset="UTF-8" action="/louhos/takomo/unstar" class="js-toggler-form starred js-unstar-button" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="lNfUvEUY5eayHgGpP3qvoWDUxwg+1yiqzkfwC7CnpwwEXzbcKh1QqP8LUspofWVe/98VlfGmzfTDADXiaptV2Q==" /></div>
      <button
        class="minibutton with-count js-toggler-target star-button"
        aria-label="Unstar this repository" title="Unstar louhos/takomo">
        <span class="octicon octicon-star"></span>
        Unstar
      </button>
        <a class="social-count js-social-count" href="/louhos/takomo/stargazers">
          6
        </a>
</form>
    <form accept-charset="UTF-8" action="/louhos/takomo/star" class="js-toggler-form unstarred js-star-button" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="ZbLRRLLnMJst9/ReZSsRi/qHdwjfDFzXotY4EztB1hHa/02fev6D0MHWMzSJW/5kAJo909nubkA28AXhBo7D+Q==" /></div>
      <button
        class="minibutton with-count js-toggler-target star-button"
        aria-label="Star this repository" title="Star louhos/takomo">
        <span class="octicon octicon-star"></span>
        Star
      </button>
        <a class="social-count js-social-count" href="/louhos/takomo/stargazers">
          6
        </a>
</form>  </div>

  </li>


        <li>
          <a href="/louhos/takomo/fork" class="minibutton with-count js-toggler-target fork-button tooltipped-n" title="Fork your own copy of louhos/takomo to your account" aria-label="Fork your own copy of louhos/takomo to your account" rel="facebox nofollow">
            <span class="octicon octicon-repo-forked"></span>
            Fork
          </a>
          <a href="/louhos/takomo/network" class="social-count">2</a>
        </li>

</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="mega-octicon octicon-repo"></span>
          <span class="author"><a href="/louhos" class="url fn" itemprop="url" rel="author"><span itemprop="title">louhos</span></a></span><!--
       --><span class="path-divider">/</span><!--
       --><strong><a href="/louhos/takomo" class="js-current-repository js-repo-home-link">takomo</a></strong>

          <span class="page-context-loader">
            <img alt="" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">
      <div class="repository-with-sidebar repo-container new-discussion-timeline  ">
        <div class="repository-sidebar clearfix">
            
<div class="sunken-menu vertical-right repo-nav js-repo-nav js-repository-container-pjax js-octicon-loaders" role="navigation" data-issue-count-url="/louhos/takomo/issues/counts">
  <div class="sunken-menu-contents">
    <ul class="sunken-menu-group">
      <li class="tooltipped tooltipped-w" aria-label="Code">
        <a href="/louhos/takomo" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-hotkey="g c" data-pjax="true" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /louhos/takomo">
          <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

        <li class="tooltipped tooltipped-w" aria-label="Issues">
          <a href="/louhos/takomo/issues" aria-label="Issues" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-hotkey="g i" data-selected-links="repo_issues repo_labels repo_milestones /louhos/takomo/issues">
            <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
            <span class="js-issue-replace-counter"></span>
            <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>

      <li class="tooltipped tooltipped-w" aria-label="Pull Requests">
        <a href="/louhos/takomo/pulls" aria-label="Pull Requests" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-hotkey="g p" data-selected-links="repo_pulls /louhos/takomo/pulls">
            <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
            <span class="js-pull-replace-counter"></span>
            <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


        <li class="tooltipped tooltipped-w" aria-label="Wiki">
          <a href="/louhos/takomo/wiki" aria-label="Wiki" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-hotkey="g w" data-selected-links="repo_wiki /louhos/takomo/wiki">
            <span class="octicon octicon-book"></span> <span class="full-word">Wiki</span>
            <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>
    </ul>
    <div class="sunken-menu-separator"></div>
    <ul class="sunken-menu-group">

      <li class="tooltipped tooltipped-w" aria-label="Pulse">
        <a href="/louhos/takomo/pulse/weekly" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="pulse /louhos/takomo/pulse/weekly">
          <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped tooltipped-w" aria-label="Graphs">
        <a href="/louhos/takomo/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="repo_graphs repo_contributors /louhos/takomo/graphs">
          <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>
    </ul>


      <div class="sunken-menu-separator"></div>
      <ul class="sunken-menu-group">
        <li class="tooltipped tooltipped-w" aria-label="Settings">
          <a href="/louhos/takomo/settings" aria-label="Settings" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="repo_settings /louhos/takomo/settings">
            <span class="octicon octicon-tools"></span> <span class="full-word">Settings</span>
            <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>
      </ul>
  </div>
</div>

              <div class="only-with-full-nav">
                
  
<div class="clone-url "
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=push">
  <h3><span class="text-emphasized">HTTPS</span> clone URL</h3>
  <div class="input-group">
    <input type="text" class="input-mini input-monospace js-url-field"
           value="https://github.com/louhos/takomo.git" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="https://github.com/louhos/takomo.git" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="clone-url open"
  data-protocol-type="ssh"
  data-url="/users/set_protocol?protocol_selector=ssh&amp;protocol_type=push">
  <h3><span class="text-emphasized">SSH</span> clone URL</h3>
  <div class="input-group">
    <input type="text" class="input-mini input-monospace js-url-field"
           value="git@github.com:louhos/takomo.git" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="git@github.com:louhos/takomo.git" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=push">
  <h3><span class="text-emphasized">Subversion</span> checkout URL</h3>
  <div class="input-group">
    <input type="text" class="input-mini input-monospace js-url-field"
           value="https://github.com/louhos/takomo" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="https://github.com/louhos/takomo" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>


<p class="clone-options">You can clone with
      <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>,
      <a href="#" class="js-clone-selector" data-protocol="ssh">SSH</a>,
      or <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>.
  <a href="https://help.github.com/articles/which-remote-url-should-i-use" class="help tooltipped tooltipped-n" aria-label="Get help on which URL is right for you.">
    <span class="octicon octicon-question"></span>
  </a>
</p>

  <a href="http://mac.github.com" data-url="github-mac://openRepo/https://github.com/louhos/takomo" class="minibutton sidebar-button js-conduit-rewrite-url" title="Save louhos/takomo to your computer and use it in GitHub Desktop." aria-label="Save louhos/takomo to your computer and use it in GitHub Desktop.">
    <span class="octicon octicon-device-desktop"></span>
    Clone in Desktop
  </a>


                <a href="/louhos/takomo/archive/master.zip"
                   class="minibutton sidebar-button"
                   aria-label="Download the contents of louhos/takomo as a zip file"
                   title="Download the contents of louhos/takomo as a zip file"
                   rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
              </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          

<a href="/louhos/takomo/blob/6d9e1fe7a011caa114a4a19f4ad7155751bab2b4/Demos_Helsinki/Sotkanet/sotkanet_preprocess_20130908.R" class="hidden js-permalink-shortcut" data-hotkey="y">Permalink</a>

<!-- blob contrib key: blob_contributors:v21:0a933fe14312f22bd1b22a6819427078 -->

<div class="file-navigation">
  
<div class="select-menu js-menu-container js-select-menu left">
  <span class="minibutton select-menu-button js-menu-target css-truncate" data-hotkey="w"
    data-master-branch="master"
    data-ref="master"
    title="master"
    role="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button css-truncate-target">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
      </div> <!-- /.select-menu-header -->

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Find or create a branch…" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Find or create a branch…">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div><!-- /.select-menu-tabs -->
      </div><!-- /.select-menu-filters -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item selected">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/louhos/takomo/blob/master/Demos_Helsinki/Sotkanet/sotkanet_preprocess_20130908.R"
                 data-name="master"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="master">master</a>
            </div> <!-- /.select-menu-item -->
        </div>

          <form accept-charset="UTF-8" action="/louhos/takomo/branches" class="js-create-branch select-menu-item select-menu-new-item-form js-navigation-item js-new-item-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="//e6Bq42bqK+1JV/mFVgUgREF/7mGij+AtXLySZknxhoMdu9+jOBQAJzjEQxHAMWE/aLaj+EDLVqYaa8Xn7EDw==" /></div>
            <span class="octicon octicon-git-branch select-menu-item-icon"></span>
            <div class="select-menu-item-text">
              <h4>Create branch: <span class="js-new-item-name"></span></h4>
              <span class="description">from ‘master’</span>
            </div>
            <input type="hidden" name="name" id="name" class="js-new-item-value">
            <input type="hidden" name="branch" id="branch" value="master">
            <input type="hidden" name="path" id="path" value="Demos_Helsinki/Sotkanet/sotkanet_preprocess_20130908.R">
          </form> <!-- /.select-menu-item -->

      </div> <!-- /.select-menu-list -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

    </div> <!-- /.select-menu-modal -->
  </div> <!-- /.select-menu-modal-holder -->
</div> <!-- /.select-menu -->

  <div class="button-group right">
    <a href="/louhos/takomo/find/master"
          class="js-show-file-finder minibutton empty-icon tooltipped tooltipped-s"
          data-pjax
          data-hotkey="t"
          aria-label="Quickly jump between files">
      <span class="octicon octicon-list-unordered"></span>
    </a>
    <button class="js-zeroclipboard minibutton zeroclipboard-button"
          data-clipboard-text="Demos_Helsinki/Sotkanet/sotkanet_preprocess_20130908.R"
          aria-label="Copy to clipboard"
          data-copied-hint="Copied!">
      <span class="octicon octicon-clippy"></span>
    </button>
  </div>

  <div class="breadcrumb">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/louhos/takomo" class="" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">takomo</span></a></span></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/louhos/takomo/tree/master/Demos_Helsinki" class="" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">Demos_Helsinki</span></a></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/louhos/takomo/tree/master/Demos_Helsinki/Sotkanet" class="" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">Sotkanet</span></a></span><span class="separator"> / </span><strong class="final-path">sotkanet_preprocess_20130908.R</strong>
  </div>
</div>


  <div class="commit commit-loader file-history-tease js-deferred-content" data-url="/louhos/takomo/contributors/master/Demos_Helsinki/Sotkanet/sotkanet_preprocess_20130908.R">
    <div class="file-history-tease-header">
      Fetching contributors&hellip;
    </div>

    <div class="participation">
      <p class="loader-loading"><img alt="" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32-EAF2F5.gif" width="16" /></p>
      <p class="loader-error">Cannot retrieve contributors at this time</p>
    </div>
  </div>

<div class="file-box">
  <div class="file">
    <div class="meta clearfix">
      <div class="info file-name">
          <span>127 lines (95 sloc)</span>
          <span class="meta-divider"></span>
        <span>5.829 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
          <a href="/louhos/takomo/raw/master/Demos_Helsinki/Sotkanet/sotkanet_preprocess_20130908.R" class="minibutton " id="raw-url">Raw</a>
            <a href="/louhos/takomo/blame/master/Demos_Helsinki/Sotkanet/sotkanet_preprocess_20130908.R" class="minibutton js-update-url-with-hash">Blame</a>
          <a href="/louhos/takomo/commits/master/Demos_Helsinki/Sotkanet/sotkanet_preprocess_20130908.R" class="minibutton " rel="nofollow">History</a>
        </div><!-- /.button-group -->

          <a class="octicon-button tooltipped tooltipped-nw js-conduit-openfile-check"
             href="http://mac.github.com"
             data-url="github-mac://openRepo/https://github.com/louhos/takomo?branch=master&amp;filepath=Demos_Helsinki%2FSotkanet%2Fsotkanet_preprocess_20130908.R"
             aria-label="Open this file in GitHub for Mac"
             data-failed-title="Your version of GitHub for Mac is too old to open this file. Try checking for updates.">
              <span class="octicon octicon-device-desktop"></span>
          </a>

              <a class="octicon-button js-update-url-with-hash"
                 href="/louhos/takomo/edit/master/Demos_Helsinki/Sotkanet/sotkanet_preprocess_20130908.R"
                 data-method="post" rel="nofollow" data-hotkey="e"><span class="octicon octicon-pencil"></span></a>

            <a class="octicon-button danger"
               href="/louhos/takomo/delete/master/Demos_Helsinki/Sotkanet/sotkanet_preprocess_20130908.R"
               data-method="post" data-test-id="delete-blob-file" rel="nofollow">
          <span class="octicon octicon-trashcan"></span>
        </a>
      </div><!-- /.actions -->
    </div>
    
  <div class="blob-wrapper data type-r">
      <table class="highlight tab-size-8 js-file-line-container">
      <tr>
        <td id="L1" class="blob-num js-line-number" data-line-number="1"></td>
        <td id="LC1" class="blob-code js-file-line"><span class="c1"># Script for processing Sotkanet data for Demos Hesinki</span></td>
      </tr>
      <tr>
        <td id="L2" class="blob-num js-line-number" data-line-number="2"></td>
        <td id="LC2" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L3" class="blob-num js-line-number" data-line-number="3"></td>
        <td id="LC3" class="blob-code js-file-line"><span class="c1"># This script is part of the Louhos-project (http://louhos.github.com/)</span></td>
      </tr>
      <tr>
        <td id="L4" class="blob-num js-line-number" data-line-number="4"></td>
        <td id="LC4" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L5" class="blob-num js-line-number" data-line-number="5"></td>
        <td id="LC5" class="blob-code js-file-line"><span class="c1"># Copyright (C) 2012-2013 Juuso Parkkinen and Leo Lahti.</span></td>
      </tr>
      <tr>
        <td id="L6" class="blob-num js-line-number" data-line-number="6"></td>
        <td id="LC6" class="blob-code js-file-line"><span class="c1"># Contact: &lt;http://louhos.github.com/contact&gt;. </span></td>
      </tr>
      <tr>
        <td id="L7" class="blob-num js-line-number" data-line-number="7"></td>
        <td id="LC7" class="blob-code js-file-line"><span class="c1"># All rights reserved.</span></td>
      </tr>
      <tr>
        <td id="L8" class="blob-num js-line-number" data-line-number="8"></td>
        <td id="LC8" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L9" class="blob-num js-line-number" data-line-number="9"></td>
        <td id="LC9" class="blob-code js-file-line"><span class="c1"># This program is open source software; you can redistribute it and/or modify</span></td>
      </tr>
      <tr>
        <td id="L10" class="blob-num js-line-number" data-line-number="10"></td>
        <td id="LC10" class="blob-code js-file-line"><span class="c1"># it under the terms of the FreeBSD License (keep this notice):</span></td>
      </tr>
      <tr>
        <td id="L11" class="blob-num js-line-number" data-line-number="11"></td>
        <td id="LC11" class="blob-code js-file-line"><span class="c1"># http://en.wikipedia.org/wiki/BSD_licenses</span></td>
      </tr>
      <tr>
        <td id="L12" class="blob-num js-line-number" data-line-number="12"></td>
        <td id="LC12" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L13" class="blob-num js-line-number" data-line-number="13"></td>
        <td id="LC13" class="blob-code js-file-line"><span class="c1"># This program is distributed in the hope that it will be useful,</span></td>
      </tr>
      <tr>
        <td id="L14" class="blob-num js-line-number" data-line-number="14"></td>
        <td id="LC14" class="blob-code js-file-line"><span class="c1"># but WITHOUT ANY WARRANTY; without even the implied warranty of</span></td>
      </tr>
      <tr>
        <td id="L15" class="blob-num js-line-number" data-line-number="15"></td>
        <td id="LC15" class="blob-code js-file-line"><span class="c1"># MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.</span></td>
      </tr>
      <tr>
        <td id="L16" class="blob-num js-line-number" data-line-number="16"></td>
        <td id="LC16" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L17" class="blob-num js-line-number" data-line-number="17"></td>
        <td id="LC17" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L18" class="blob-num js-line-number" data-line-number="18"></td>
        <td id="LC18" class="blob-code js-file-line"><span class="c1">## PREPARE  ############</span></td>
      </tr>
      <tr>
        <td id="L19" class="blob-num js-line-number" data-line-number="19"></td>
        <td id="LC19" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L20" class="blob-num js-line-number" data-line-number="20"></td>
        <td id="LC20" class="blob-code js-file-line"><span class="c1"># Install and load sorvi package</span></td>
      </tr>
      <tr>
        <td id="L21" class="blob-num js-line-number" data-line-number="21"></td>
        <td id="LC21" class="blob-code js-file-line"><span class="c1"># library(devtools)</span></td>
      </tr>
      <tr>
        <td id="L22" class="blob-num js-line-number" data-line-number="22"></td>
        <td id="LC22" class="blob-code js-file-line"><span class="c1"># install_github(&quot;sorvi&quot;, &quot;louhos&quot;, ref = &quot;develop&quot;)</span></td>
      </tr>
      <tr>
        <td id="L23" class="blob-num js-line-number" data-line-number="23"></td>
        <td id="LC23" class="blob-code js-file-line"><span class="kn">library</span><span class="p">(</span>sorvi<span class="p">)</span> <span class="c1"># http://louhos.github.com/sorvi</span></td>
      </tr>
      <tr>
        <td id="L24" class="blob-num js-line-number" data-line-number="24"></td>
        <td id="LC24" class="blob-code js-file-line"><span class="kn">library</span><span class="p">(</span>RCurl<span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L25" class="blob-num js-line-number" data-line-number="25"></td>
        <td id="LC25" class="blob-code js-file-line"><span class="kn">library</span><span class="p">(</span>XML<span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L26" class="blob-num js-line-number" data-line-number="26"></td>
        <td id="LC26" class="blob-code js-file-line"><span class="kn">library</span><span class="p">(</span>ggplot2<span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L27" class="blob-num js-line-number" data-line-number="27"></td>
        <td id="LC27" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L28" class="blob-num js-line-number" data-line-number="28"></td>
        <td id="LC28" class="blob-code js-file-line"><span class="c1"># Folders for data and output</span></td>
      </tr>
      <tr>
        <td id="L29" class="blob-num js-line-number" data-line-number="29"></td>
        <td id="LC29" class="blob-code js-file-line">data.folder <span class="o">&lt;-</span> <span class="s">&quot;/Users/juusoparkkinen/Documents/workspace/Rdrafts/demos/sotkanet/&quot;</span></td>
      </tr>
      <tr>
        <td id="L30" class="blob-num js-line-number" data-line-number="30"></td>
        <td id="LC30" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L31" class="blob-num js-line-number" data-line-number="31"></td>
        <td id="LC31" class="blob-code js-file-line"><span class="c1">## PROCESS REGION INFORMATION ############</span></td>
      </tr>
      <tr>
        <td id="L32" class="blob-num js-line-number" data-line-number="32"></td>
        <td id="LC32" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L33" class="blob-num js-line-number" data-line-number="33"></td>
        <td id="LC33" class="blob-code js-file-line"><span class="c1"># Get province and municipality info</span></td>
      </tr>
      <tr>
        <td id="L34" class="blob-num js-line-number" data-line-number="34"></td>
        <td id="LC34" class="blob-code js-file-line">sotkanet.regions <span class="o">&lt;-</span> SotkanetRegions<span class="p">(</span><span class="s">&quot;table&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L35" class="blob-num js-line-number" data-line-number="35"></td>
        <td id="LC35" class="blob-code js-file-line">kunnat <span class="o">&lt;-</span> <span class="kp">droplevels</span><span class="p">(</span><span class="kp">subset</span><span class="p">(</span>sotkanet.regions<span class="p">,</span> region.category <span class="o">==</span> <span class="s">&quot;KUNTA&quot;</span><span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L36" class="blob-num js-line-number" data-line-number="36"></td>
        <td id="LC36" class="blob-code js-file-line">maakunnat <span class="o">&lt;-</span> <span class="kp">droplevels</span><span class="p">(</span><span class="kp">subset</span><span class="p">(</span>sotkanet.regions<span class="p">,</span> region.category <span class="o">==</span> <span class="s">&quot;MAAKUNTA&quot;</span><span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L37" class="blob-num js-line-number" data-line-number="37"></td>
        <td id="LC37" class="blob-code js-file-line">seutukunnat <span class="o">&lt;-</span> <span class="kp">droplevels</span><span class="p">(</span><span class="kp">subset</span><span class="p">(</span>sotkanet.regions<span class="p">,</span> region.category <span class="o">==</span> <span class="s">&quot;SEUTUKUNTA&quot;</span><span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L38" class="blob-num js-line-number" data-line-number="38"></td>
        <td id="LC38" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L39" class="blob-num js-line-number" data-line-number="39"></td>
        <td id="LC39" class="blob-code js-file-line"><span class="c1"># Match municipalities and provinces</span></td>
      </tr>
      <tr>
        <td id="L40" class="blob-num js-line-number" data-line-number="40"></td>
        <td id="LC40" class="blob-code js-file-line">regions.raw <span class="o">&lt;-</span> SotkanetRegions<span class="p">(</span><span class="s">&quot;raw&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L41" class="blob-num js-line-number" data-line-number="41"></td>
        <td id="LC41" class="blob-code js-file-line">regions.id <span class="o">&lt;-</span> <span class="kp">sapply</span><span class="p">(</span>regions.raw<span class="p">,</span> <span class="kr">function</span><span class="p">(</span>x<span class="p">)</span> x<span class="o">$</span>id<span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L42" class="blob-num js-line-number" data-line-number="42"></td>
        <td id="LC42" class="blob-code js-file-line">kunnat<span class="o">$</span>maakunta.region <span class="o">&lt;-</span> <span class="kp">sapply</span><span class="p">(</span>regions.raw<span class="p">[</span><span class="kp">match</span><span class="p">(</span>kunnat<span class="o">$</span>region<span class="p">,</span> regions.id<span class="p">)],</span> <span class="kr">function</span><span class="p">(</span>x<span class="p">)</span> x<span class="o">$</span>memberOf<span class="p">[</span>x<span class="o">$</span>memberOf <span class="o">%in%</span> maakunnat<span class="o">$</span>region<span class="p">])</span></td>
      </tr>
      <tr>
        <td id="L43" class="blob-num js-line-number" data-line-number="43"></td>
        <td id="LC43" class="blob-code js-file-line">kunnat<span class="o">$</span>seutukunta.region <span class="o">&lt;-</span> <span class="kp">sapply</span><span class="p">(</span>regions.raw<span class="p">[</span><span class="kp">match</span><span class="p">(</span>kunnat<span class="o">$</span>region<span class="p">,</span> regions.id<span class="p">)],</span> <span class="kr">function</span><span class="p">(</span>x<span class="p">)</span> x<span class="o">$</span>memberOf<span class="p">[</span>x<span class="o">$</span>memberOf <span class="o">%in%</span> seutukunnat<span class="o">$</span>region<span class="p">])</span></td>
      </tr>
      <tr>
        <td id="L44" class="blob-num js-line-number" data-line-number="44"></td>
        <td id="LC44" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L45" class="blob-num js-line-number" data-line-number="45"></td>
        <td id="LC45" class="blob-code js-file-line">kunnat<span class="o">$</span>maakunta.title.fi <span class="o">&lt;-</span> maakunnat<span class="o">$</span>region.title.fi<span class="p">[</span><span class="kp">match</span><span class="p">(</span>kunnat<span class="o">$</span>maakunta.region<span class="p">,</span> maakunnat<span class="o">$</span>region<span class="p">)]</span></td>
      </tr>
      <tr>
        <td id="L46" class="blob-num js-line-number" data-line-number="46"></td>
        <td id="LC46" class="blob-code js-file-line">kunnat<span class="o">$</span>seutukunta.title.fi <span class="o">&lt;-</span> seutukunnat<span class="o">$</span>region.title.fi<span class="p">[</span><span class="kp">match</span><span class="p">(</span>kunnat<span class="o">$</span>seutukunta.region<span class="p">,</span> seutukunnat<span class="o">$</span>region<span class="p">)]</span></td>
      </tr>
      <tr>
        <td id="L47" class="blob-num js-line-number" data-line-number="47"></td>
        <td id="LC47" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L48" class="blob-num js-line-number" data-line-number="48"></td>
        <td id="LC48" class="blob-code js-file-line"><span class="c1"># Get Finnish region id&#39;s for gvisGeoChart</span></td>
      </tr>
      <tr>
        <td id="L49" class="blob-num js-line-number" data-line-number="49"></td>
        <td id="LC49" class="blob-code js-file-line">temp <span class="o">&lt;-</span> readHTMLTable<span class="p">(</span><span class="s">&quot;http://en.wikipedia.org/wiki/ISO_3166-2:FI&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L50" class="blob-num js-line-number" data-line-number="50"></td>
        <td id="LC50" class="blob-code js-file-line">fincodes <span class="o">&lt;-</span> temp<span class="p">[[</span><span class="m">1</span><span class="p">]][,</span><span class="m">1</span><span class="o">:</span><span class="m">2</span><span class="p">]</span></td>
      </tr>
      <tr>
        <td id="L51" class="blob-num js-line-number" data-line-number="51"></td>
        <td id="LC51" class="blob-code js-file-line"><span class="kp">names</span><span class="p">(</span>fincodes<span class="p">)[</span><span class="m">2</span><span class="p">]</span> <span class="o">&lt;-</span> <span class="s">&quot;Maakunta&quot;</span></td>
      </tr>
      <tr>
        <td id="L52" class="blob-num js-line-number" data-line-number="52"></td>
        <td id="LC52" class="blob-code js-file-line"><span class="kp">levels</span><span class="p">(</span>fincodes<span class="o">$</span>Maakunta<span class="p">)</span> <span class="o">&lt;-</span> <span class="kp">iconv</span><span class="p">(</span><span class="kp">levels</span><span class="p">(</span>fincodes<span class="o">$</span>Maakunta<span class="p">),</span> from<span class="o">=</span><span class="s">&quot;UTF-8&quot;</span><span class="p">,</span> to<span class="o">=</span><span class="s">&quot;ISO-8859-1&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L53" class="blob-num js-line-number" data-line-number="53"></td>
        <td id="LC53" class="blob-code js-file-line"><span class="kp">levels</span><span class="p">(</span>fincodes<span class="o">$</span>Maakunta<span class="p">)[</span><span class="m">1</span><span class="p">]</span> <span class="o">&lt;-</span> <span class="s">&quot;Ahvenanmaa&quot;</span></td>
      </tr>
      <tr>
        <td id="L54" class="blob-num js-line-number" data-line-number="54"></td>
        <td id="LC54" class="blob-code js-file-line">kunnat <span class="o">&lt;-</span> <span class="kp">merge</span><span class="p">(</span>kunnat<span class="p">,</span> fincodes<span class="p">,</span> by.x<span class="o">=</span><span class="s">&quot;maakunta.title.fi&quot;</span><span class="p">,</span> by.y<span class="o">=</span><span class="s">&quot;Maakunta&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L55" class="blob-num js-line-number" data-line-number="55"></td>
        <td id="LC55" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L56" class="blob-num js-line-number" data-line-number="56"></td>
        <td id="LC56" class="blob-code js-file-line"><span class="c1"># Get province map data from MML</span></td>
      </tr>
      <tr>
        <td id="L57" class="blob-num js-line-number" data-line-number="57"></td>
        <td id="LC57" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L58" class="blob-num js-line-number" data-line-number="58"></td>
        <td id="LC58" class="blob-code js-file-line">mk.sp <span class="o">&lt;-</span> LoadMML<span class="p">(</span>data.id <span class="o">=</span> <span class="s">&quot;maaku4_p&quot;</span><span class="p">,</span> resolution <span class="o">=</span> <span class="s">&quot;4_5_milj_shape_etrs-tm35fin&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L59" class="blob-num js-line-number" data-line-number="59"></td>
        <td id="LC59" class="blob-code js-file-line">mk.df <span class="o">&lt;-</span> fortify<span class="p">(</span>mk.sp<span class="p">,</span> region<span class="o">=</span><span class="s">&quot;Maaku_ni1&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L60" class="blob-num js-line-number" data-line-number="60"></td>
        <td id="LC60" class="blob-code js-file-line">mk.df<span class="o">$</span>Maakunta <span class="o">&lt;-</span> <span class="kp">factor</span><span class="p">(</span>mk.df<span class="o">$</span>id<span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L61" class="blob-num js-line-number" data-line-number="61"></td>
        <td id="LC61" class="blob-code js-file-line"><span class="kp">levels</span><span class="p">(</span>mk.df<span class="o">$</span>Maakunta<span class="p">)[</span><span class="m">1</span><span class="p">]</span> <span class="o">&lt;-</span> <span class="kt">c</span><span class="p">(</span><span class="s">&quot;Ahvenanmaa&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L62" class="blob-num js-line-number" data-line-number="62"></td>
        <td id="LC62" class="blob-code js-file-line">ggplot<span class="p">(</span>mk.df<span class="p">,</span> aes<span class="p">(</span>x<span class="o">=</span>long<span class="p">,</span> y<span class="o">=</span>lat<span class="p">,</span> fill<span class="o">=</span>Maakunta<span class="p">))</span> <span class="o">+</span> geom_polygon<span class="p">()</span></td>
      </tr>
      <tr>
        <td id="L63" class="blob-num js-line-number" data-line-number="63"></td>
        <td id="LC63" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L64" class="blob-num js-line-number" data-line-number="64"></td>
        <td id="LC64" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L65" class="blob-num js-line-number" data-line-number="65"></td>
        <td id="LC65" class="blob-code js-file-line"><span class="c1"># Save</span></td>
      </tr>
      <tr>
        <td id="L66" class="blob-num js-line-number" data-line-number="66"></td>
        <td id="LC66" class="blob-code js-file-line"><span class="kp">save</span><span class="p">(</span>kunnat<span class="p">,</span> mk.df<span class="p">,</span> file<span class="o">=</span><span class="kp">file.path</span><span class="p">(</span>data.folder<span class="p">,</span> <span class="s">&quot;Sotkanet_MunicipalityData_20130908.RData&quot;</span><span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L67" class="blob-num js-line-number" data-line-number="67"></td>
        <td id="LC67" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L68" class="blob-num js-line-number" data-line-number="68"></td>
        <td id="LC68" class="blob-code js-file-line"><span class="c1">## GET DATA FOR CHOSEN INDICATORS ################</span></td>
      </tr>
      <tr>
        <td id="L69" class="blob-num js-line-number" data-line-number="69"></td>
        <td id="LC69" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L70" class="blob-num js-line-number" data-line-number="70"></td>
        <td id="LC70" class="blob-code js-file-line"><span class="c1"># Read list of chosen indicators from Github</span></td>
      </tr>
      <tr>
        <td id="L71" class="blob-num js-line-number" data-line-number="71"></td>
        <td id="LC71" class="blob-code js-file-line">chosen.indicators <span class="o">&lt;-</span> read.csv<span class="p">(</span>text<span class="o">=</span>getURL<span class="p">(</span><span class="s">&quot;https://raw.github.com/louhos/takomo/master/Demos_Helsinki/Sotkanet/Sotkanet_valitut_indikaattorit_20130817.csv&quot;</span><span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L72" class="blob-num js-line-number" data-line-number="72"></td>
        <td id="LC72" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L73" class="blob-num js-line-number" data-line-number="73"></td>
        <td id="LC73" class="blob-code js-file-line"><span class="c1"># Process (includes now indicator.category)</span></td>
      </tr>
      <tr>
        <td id="L74" class="blob-num js-line-number" data-line-number="74"></td>
        <td id="LC74" class="blob-code js-file-line">chosen.indicators <span class="o">&lt;-</span> chosen.indicators<span class="p">[</span><span class="m">1</span><span class="o">:</span><span class="m">3</span><span class="p">]</span></td>
      </tr>
      <tr>
        <td id="L75" class="blob-num js-line-number" data-line-number="75"></td>
        <td id="LC75" class="blob-code js-file-line">chosen.indicators <span class="o">&lt;-</span> <span class="kp">droplevels</span><span class="p">(</span><span class="kp">subset</span><span class="p">(</span>chosen.indicators<span class="p">,</span> indicator.category<span class="o">!=</span><span class="s">&quot;&quot;</span><span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L76" class="blob-num js-line-number" data-line-number="76"></td>
        <td id="LC76" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L77" class="blob-num js-line-number" data-line-number="77"></td>
        <td id="LC77" class="blob-code js-file-line"><span class="c1"># Get Sotkanet data for the chosen indicators from the web with sorvi package</span></td>
      </tr>
      <tr>
        <td id="L78" class="blob-num js-line-number" data-line-number="78"></td>
        <td id="LC78" class="blob-code js-file-line"><span class="c1"># dat.raw &lt;- GetDataSotkanet(indicators=chosen.indicators$indicator, genders=&quot;total&quot;)</span></td>
      </tr>
      <tr>
        <td id="L79" class="blob-num js-line-number" data-line-number="79"></td>
        <td id="LC79" class="blob-code js-file-line"><span class="c1"># save(dat.raw, file=file.path(data.folder, &quot;Sotkanet_chosen_raw_20130817.RData&quot;))</span></td>
      </tr>
      <tr>
        <td id="L80" class="blob-num js-line-number" data-line-number="80"></td>
        <td id="LC80" class="blob-code js-file-line"><span class="kp">load</span><span class="p">(</span><span class="kp">file.path</span><span class="p">(</span>data.folder<span class="p">,</span> <span class="s">&quot;Sotkanet_chosen_raw_20130817.RData&quot;</span><span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L81" class="blob-num js-line-number" data-line-number="81"></td>
        <td id="LC81" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L82" class="blob-num js-line-number" data-line-number="82"></td>
        <td id="LC82" class="blob-code js-file-line"><span class="c1"># Load region info</span></td>
      </tr>
      <tr>
        <td id="L83" class="blob-num js-line-number" data-line-number="83"></td>
        <td id="LC83" class="blob-code js-file-line"><span class="kp">load</span><span class="p">(</span><span class="kp">file.path</span><span class="p">(</span>data.folder<span class="p">,</span> <span class="s">&quot;Sotkanet_MunicipalityData_20130908.RData&quot;</span><span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L84" class="blob-num js-line-number" data-line-number="84"></td>
        <td id="LC84" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L85" class="blob-num js-line-number" data-line-number="85"></td>
        <td id="LC85" class="blob-code js-file-line"><span class="c1"># Take subset of important variables</span></td>
      </tr>
      <tr>
        <td id="L86" class="blob-num js-line-number" data-line-number="86"></td>
        <td id="LC86" class="blob-code js-file-line">sotkanet.df <span class="o">&lt;-</span> dat.raw<span class="p">[,</span> <span class="kt">c</span><span class="p">(</span><span class="s">&quot;indicator&quot;</span><span class="p">,</span> <span class="s">&quot;indicator.title.fi&quot;</span><span class="p">,</span><span class="s">&quot;region.title.fi&quot;</span><span class="p">,</span> <span class="s">&quot;region.category&quot;</span><span class="p">,</span> <span class="s">&quot;year&quot;</span><span class="p">,</span> <span class="s">&quot;primary.value&quot;</span><span class="p">)]</span></td>
      </tr>
      <tr>
        <td id="L87" class="blob-num js-line-number" data-line-number="87"></td>
        <td id="LC87" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L88" class="blob-num js-line-number" data-line-number="88"></td>
        <td id="LC88" class="blob-code js-file-line"><span class="c1"># Add indicator category, also tag to indicator</span></td>
      </tr>
      <tr>
        <td id="L89" class="blob-num js-line-number" data-line-number="89"></td>
        <td id="LC89" class="blob-code js-file-line">sotkanet.df<span class="o">$</span>Category <span class="o">&lt;-</span> chosen.indicators<span class="o">$</span>indicator.category<span class="p">[</span><span class="kp">match</span><span class="p">(</span>sotkanet.df<span class="o">$</span>indicator<span class="p">,</span> chosen.indicators<span class="o">$</span>indicator<span class="p">)]</span></td>
      </tr>
      <tr>
        <td id="L90" class="blob-num js-line-number" data-line-number="90"></td>
        <td id="LC90" class="blob-code js-file-line">sotkanet.df<span class="o">$</span>Category.Indicator <span class="o">&lt;-</span> <span class="kp">factor</span><span class="p">(</span><span class="kp">paste0</span><span class="p">(</span><span class="s">&quot;[&quot;</span><span class="p">,</span>sotkanet.df<span class="o">$</span>Category<span class="p">,</span><span class="s">&quot;] &quot;</span><span class="p">,</span> sotkanet.df<span class="o">$</span>indicator.title.fi<span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L91" class="blob-num js-line-number" data-line-number="91"></td>
        <td id="LC91" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L92" class="blob-num js-line-number" data-line-number="92"></td>
        <td id="LC92" class="blob-code js-file-line"><span class="c1"># Construct data for different region categories</span></td>
      </tr>
      <tr>
        <td id="L93" class="blob-num js-line-number" data-line-number="93"></td>
        <td id="LC93" class="blob-code js-file-line"><span class="kp">head</span><span class="p">(</span><span class="kp">sort</span><span class="p">(</span><span class="kp">table</span><span class="p">(</span>sotkanet.df<span class="o">$</span>region.category<span class="p">),</span> decreasing<span class="o">=</span><span class="bp">T</span><span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L94" class="blob-num js-line-number" data-line-number="94"></td>
        <td id="LC94" class="blob-code js-file-line"><span class="c1"># KUNTA          SEUTUKUNTA   SAIRAANHOITOPIIRI            MAAKUNTA ALUEHALLINTOVIRASTO </span></td>
      </tr>
      <tr>
        <td id="L95" class="blob-num js-line-number" data-line-number="95"></td>
        <td id="LC95" class="blob-code js-file-line"><span class="c1"># 216183               46112               14340               12976                4607 </span></td>
      </tr>
      <tr>
        <td id="L96" class="blob-num js-line-number" data-line-number="96"></td>
        <td id="LC96" class="blob-code js-file-line"><span class="c1"># ERVA </span></td>
      </tr>
      <tr>
        <td id="L97" class="blob-num js-line-number" data-line-number="97"></td>
        <td id="LC97" class="blob-code js-file-line"><span class="c1"># 2665 </span></td>
      </tr>
      <tr>
        <td id="L98" class="blob-num js-line-number" data-line-number="98"></td>
        <td id="LC98" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L99" class="blob-num js-line-number" data-line-number="99"></td>
        <td id="LC99" class="blob-code js-file-line"><span class="c1">## Kunta</span></td>
      </tr>
      <tr>
        <td id="L100" class="blob-num js-line-number" data-line-number="100"></td>
        <td id="LC100" class="blob-code js-file-line">kunta.df <span class="o">&lt;-</span> <span class="kp">droplevels</span><span class="p">(</span><span class="kp">subset</span><span class="p">(</span>sotkanet.df<span class="p">,</span> region.category<span class="o">==</span><span class="s">&quot;KUNTA&quot;</span><span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L101" class="blob-num js-line-number" data-line-number="101"></td>
        <td id="LC101" class="blob-code js-file-line">kunta.df <span class="o">&lt;-</span> <span class="kp">merge</span><span class="p">(</span>kunta.df<span class="p">,</span> kunnat<span class="p">[</span><span class="kt">c</span><span class="p">(</span><span class="s">&quot;region.title.fi&quot;</span><span class="p">,</span> <span class="s">&quot;maakunta.title.fi&quot;</span><span class="p">)])</span><span class="c1">#</span></td>
      </tr>
      <tr>
        <td id="L102" class="blob-num js-line-number" data-line-number="102"></td>
        <td id="LC102" class="blob-code js-file-line">kunta.df <span class="o">&lt;-</span> kunta.df<span class="p">[</span><span class="kt">c</span><span class="p">(</span><span class="m">8</span><span class="p">,</span><span class="m">1</span><span class="p">,</span><span class="m">5</span><span class="p">,</span><span class="m">6</span><span class="p">,</span><span class="m">9</span><span class="p">)]</span></td>
      </tr>
      <tr>
        <td id="L103" class="blob-num js-line-number" data-line-number="103"></td>
        <td id="LC103" class="blob-code js-file-line"><span class="kp">names</span><span class="p">(</span>kunta.df<span class="p">)</span> <span class="o">&lt;-</span> <span class="kt">c</span><span class="p">(</span><span class="s">&quot;Muuttuja&quot;</span><span class="p">,</span> <span class="s">&quot;Alue&quot;</span><span class="p">,</span> <span class="s">&quot;Vuosi&quot;</span><span class="p">,</span> <span class="s">&quot;Arvo&quot;</span><span class="p">,</span> <span class="s">&quot;Maakunta&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L104" class="blob-num js-line-number" data-line-number="104"></td>
        <td id="LC104" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L105" class="blob-num js-line-number" data-line-number="105"></td>
        <td id="LC105" class="blob-code js-file-line"><span class="c1">## Maakunta</span></td>
      </tr>
      <tr>
        <td id="L106" class="blob-num js-line-number" data-line-number="106"></td>
        <td id="LC106" class="blob-code js-file-line">maakunta.df <span class="o">&lt;-</span> <span class="kp">droplevels</span><span class="p">(</span><span class="kp">subset</span><span class="p">(</span>sotkanet.df<span class="p">,</span> region.category<span class="o">==</span><span class="s">&quot;MAAKUNTA&quot;</span><span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L107" class="blob-num js-line-number" data-line-number="107"></td>
        <td id="LC107" class="blob-code js-file-line">maakunta.df <span class="o">&lt;-</span> maakunta.df<span class="p">[</span><span class="kt">c</span><span class="p">(</span><span class="m">8</span><span class="p">,</span><span class="m">3</span><span class="p">,</span><span class="m">5</span><span class="p">,</span><span class="m">6</span><span class="p">,</span><span class="m">3</span><span class="p">)]</span></td>
      </tr>
      <tr>
        <td id="L108" class="blob-num js-line-number" data-line-number="108"></td>
        <td id="LC108" class="blob-code js-file-line"><span class="kp">names</span><span class="p">(</span>maakunta.df<span class="p">)</span> <span class="o">&lt;-</span> <span class="kt">c</span><span class="p">(</span><span class="s">&quot;Muuttuja&quot;</span><span class="p">,</span> <span class="s">&quot;Alue&quot;</span><span class="p">,</span> <span class="s">&quot;Vuosi&quot;</span><span class="p">,</span> <span class="s">&quot;Arvo&quot;</span><span class="p">,</span> <span class="s">&quot;Maakunta&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L109" class="blob-num js-line-number" data-line-number="109"></td>
        <td id="LC109" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L110" class="blob-num js-line-number" data-line-number="110"></td>
        <td id="LC110" class="blob-code js-file-line"><span class="c1">## Seutukunta</span></td>
      </tr>
      <tr>
        <td id="L111" class="blob-num js-line-number" data-line-number="111"></td>
        <td id="LC111" class="blob-code js-file-line">seutukunta.df <span class="o">&lt;-</span> <span class="kp">droplevels</span><span class="p">(</span><span class="kp">subset</span><span class="p">(</span>sotkanet.df<span class="p">,</span> region.category<span class="o">==</span><span class="s">&quot;SEUTUKUNTA&quot;</span><span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L112" class="blob-num js-line-number" data-line-number="112"></td>
        <td id="LC112" class="blob-code js-file-line">seutukunta.df <span class="o">&lt;-</span> <span class="kp">merge</span><span class="p">(</span>seutukunta.df<span class="p">,</span> <span class="kp">unique</span><span class="p">(</span>kunnat<span class="p">[</span><span class="kt">c</span><span class="p">(</span><span class="s">&quot;seutukunta.title.fi&quot;</span><span class="p">,</span> <span class="s">&quot;maakunta.title.fi&quot;</span><span class="p">)]),</span> by.x<span class="o">=</span><span class="s">&quot;region.title.fi&quot;</span><span class="p">,</span> by.y<span class="o">=</span><span class="s">&quot;seutukunta.title.fi&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L113" class="blob-num js-line-number" data-line-number="113"></td>
        <td id="LC113" class="blob-code js-file-line">seutukunta.df <span class="o">&lt;-</span> seutukunta.df<span class="p">[</span><span class="kt">c</span><span class="p">(</span><span class="m">8</span><span class="p">,</span><span class="m">1</span><span class="p">,</span><span class="m">5</span><span class="p">,</span><span class="m">6</span><span class="p">,</span><span class="m">9</span><span class="p">)]</span></td>
      </tr>
      <tr>
        <td id="L114" class="blob-num js-line-number" data-line-number="114"></td>
        <td id="LC114" class="blob-code js-file-line"><span class="kp">names</span><span class="p">(</span>seutukunta.df<span class="p">)</span> <span class="o">&lt;-</span> <span class="kt">c</span><span class="p">(</span><span class="s">&quot;Muuttuja&quot;</span><span class="p">,</span> <span class="s">&quot;Alue&quot;</span><span class="p">,</span> <span class="s">&quot;Vuosi&quot;</span><span class="p">,</span> <span class="s">&quot;Arvo&quot;</span><span class="p">,</span> <span class="s">&quot;Maakunta&quot;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L115" class="blob-num js-line-number" data-line-number="115"></td>
        <td id="LC115" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L116" class="blob-num js-line-number" data-line-number="116"></td>
        <td id="LC116" class="blob-code js-file-line"><span class="c1"># Join as a list</span></td>
      </tr>
      <tr>
        <td id="L117" class="blob-num js-line-number" data-line-number="117"></td>
        <td id="LC117" class="blob-code js-file-line">sotkanet.list <span class="o">&lt;-</span> <span class="kt">list</span><span class="p">(</span>kunta<span class="o">=</span>kunta.df<span class="p">,</span> maakunta<span class="o">=</span>maakunta.df<span class="p">,</span> seutukunta<span class="o">=</span>seutukunta.df<span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L118" class="blob-num js-line-number" data-line-number="118"></td>
        <td id="LC118" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L119" class="blob-num js-line-number" data-line-number="119"></td>
        <td id="LC119" class="blob-code js-file-line"><span class="c1"># Save</span></td>
      </tr>
      <tr>
        <td id="L120" class="blob-num js-line-number" data-line-number="120"></td>
        <td id="LC120" class="blob-code js-file-line"><span class="kp">save</span><span class="p">(</span>sotkanet.list<span class="p">,</span> file<span class="o">=</span><span class="kp">file.path</span><span class="p">(</span>data.folder<span class="p">,</span> <span class="s">&quot;sotkanet_data_20130908.RData&quot;</span><span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L121" class="blob-num js-line-number" data-line-number="121"></td>
        <td id="LC121" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L122" class="blob-num js-line-number" data-line-number="122"></td>
        <td id="LC122" class="blob-code js-file-line"><span class="c1"># # Write down subset with KOETTU HYVINVOINTI</span></td>
      </tr>
      <tr>
        <td id="L123" class="blob-num js-line-number" data-line-number="123"></td>
        <td id="LC123" class="blob-code js-file-line"><span class="c1"># kh.df &lt;- subset(sotkanet.df, Category==&quot;KOETTU HYVINVOINTI&quot;)</span></td>
      </tr>
      <tr>
        <td id="L124" class="blob-num js-line-number" data-line-number="124"></td>
        <td id="LC124" class="blob-code js-file-line"><span class="c1"># write.csv(kh.df, &quot;/Users/juusoparkkinen/Dropbox/Public/Demos/Koettu_hyvinvointi_data_20130819.csv&quot;)</span></td>
      </tr>
      <tr>
        <td id="L125" class="blob-num js-line-number" data-line-number="125"></td>
        <td id="LC125" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L126" class="blob-num js-line-number" data-line-number="126"></td>
        <td id="LC126" class="blob-code js-file-line"><span class="c1"># Write down names for indicators with province-level data (for shiny maps)</span></td>
      </tr>
      <tr>
        <td id="L127" class="blob-num js-line-number" data-line-number="127"></td>
        <td id="LC127" class="blob-code js-file-line"><span class="c1"># write.table(levels(maakunta.df$Muuttuja), quote=TRUE, eol=&quot;,\n&quot;,row.names=FALSE, col.names=FALSE, file=file.path(data.folder, &quot;Maakunta_muuttujat_20130908.txt&quot;))</span></td>
      </tr>
</table>

  </div>

  </div>
</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" class="js-jump-to-line-form">
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="button">Go</button>
  </form>
</div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer" role="contentinfo">
    <ul class="site-footer-links right">
      <li><a href="https://status.github.com/">Status</a></li>
      <li><a href="http://developer.github.com">API</a></li>
      <li><a href="http://training.github.com">Training</a></li>
      <li><a href="http://shop.github.com">Shop</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="/about">About</a></li>

    </ul>

    <a href="/" aria-label="Homepage">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2014 <span title="0.12900s from github-fe133-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="/site/terms">Terms</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
  </div><!-- /.site-footer -->
</div><!-- /.container -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-suggester-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="fullscreen-contents js-fullscreen-contents js-suggester-field" placeholder=""></textarea>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped tooltipped-w" aria-label="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped tooltipped-w"
      aria-label="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-x flash-close js-ajax-error-dismiss" aria-label="Dismiss error"></a>
      Something went wrong with that request. Please try again.
    </div>


      <script crossorigin="anonymous" src="https://assets-cdn.github.com/assets/frameworks-a01bdc1aca276a761ef0fa0428e86678b940285a.js" type="text/javascript"></script>
      <script async="async" crossorigin="anonymous" src="https://assets-cdn.github.com/assets/github-913280f801f01eac8ed785f5ef996e8147f6da71.js" type="text/javascript"></script>
      
      
        <script async src="https://www.google-analytics.com/analytics.js"></script>
  </body>
</html>


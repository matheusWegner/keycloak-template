<#assign usernameValue = (login.username!'')>
<#if locale??>
  <#assign currentLang = locale.currentLanguageTag>
<#else>
  <#assign currentLang = 'pt_BR'>
</#if>
<!DOCTYPE html>
<html lang="${currentLang}">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>${msg("pageExpiredTitle",(realm.displayName!realm.name)!"Portal")}</title>
    <link rel="stylesheet" href="${url.resourcesPath}/css/login.css" />
</head>
<body class="kc-login-body">
  <div class="kc-viewport">
    <section class="kc-card">
      <div class="kc-card__brand">
        <img src="${url.resourcesPath}/img/logo.svg" alt="Logo" />
        <div>
          <h2>${msg("pageExpiredTitle")}</h2>
        </div>
      </div>

      <div class="kc-alert kc-alert--warning">
        <span>${msg("pageExpiredMsg1")} <a id="loginRestartLink" href="${url.loginRestartFlowUrl}">${msg("doClickHere")}</a> . ${msg("pageExpiredMsg2")} <a id="loginContinueLink" href="${url.loginAction}">${msg("doClickHere")}</a> .</span>
      </div>

    </section>
  </div>
</body>
</html>

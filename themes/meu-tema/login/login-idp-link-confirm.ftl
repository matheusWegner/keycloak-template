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
    <title>${msg("confirmLinkIdpTitle",(realm.displayName!realm.name)!"Portal")}</title>
    <link rel="stylesheet" href="${url.resourcesPath}/css/login.css" />
</head>
<body class="kc-login-body">
  <div class="kc-viewport">
    <section class="kc-card">
      <div class="kc-card__brand">
        <img src="${url.resourcesPath}/img/logo.svg" alt="Logo" />
        <div>
          <h2>${msg("confirmLinkIdpTitle")}</h2>
        </div>
      </div>

      <div class="kc-alert kc-alert--info">
        <span>${msg("confirmLinkIdpReviewProfile")}</span>
      </div>

      <form id="kc-register-form" class="kc-form" action="${url.loginAction}" method="post">
        
        <div class="kc-field">
          <label for="username">${msg("username")}</label>
          <input type="text" id="username" name="username" value="${idpAlias}" disabled="disabled" />
        </div>

        <div class="kc-field">
          <label for="email">${msg("email")}</label>
          <input type="text" id="email" name="email" value="${idpDisplayName}" disabled="disabled" />
        </div>

        <input type="hidden" id="updateProfile" name="updateProfile" value="off"/>

        <div class="kc-buttons">
          <input class="kc-btn kc-btn--primary" type="submit" value="${msg("confirmLinkIdpContinue")}" />
        </div>
      </form>

    </section>
  </div>
</body>
</html>

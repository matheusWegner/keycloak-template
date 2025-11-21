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
    <title>${msg("loginTitle",(realm.displayName!realm.name)!"Portal")}</title>
    <link rel="stylesheet" href="${url.resourcesPath}/css/login.css" />
</head>
<body class="kc-login-body">
  <div class="kc-viewport">
    <section class="kc-card">
      <div class="kc-card__brand">
        <img src="${url.resourcesPath}/img/logo.svg" alt="Logo" />
        <div>
          <h2>Entre com sua conta</h2>
        </div>
      </div>

      <#if message?has_content>
        <div class="kc-alert kc-alert--${message.type!}">
          <span>${message.summary!}</span>
        </div>
      </#if>

      <form id="kc-form-login" class="kc-form" action="${url.loginAction}" method="post">

        <#if realm.password && !usernameEditDisabled??>
          <div class="kc-field">
            <label for="username">${msg("usernameOrEmail")}</label>
            <input tabindex="1" id="username" name="username" value="${usernameValue}" autofocus="autofocus" type="text" autocomplete="username" />
          </div>

          <div class="kc-field">
            <div class="kc-field__label">
              <label for="password">${msg("password")}</label>
              <#if realm.resetPasswordAllowed>
                <a class="kc-link" href="${url.loginResetCredentialsUrl}">${msg("doForgotPassword")}</a>
              </#if>
            </div>
            <input tabindex="2" id="password" name="password" type="password" autocomplete="current-password" />
          </div>

          <#if realm.rememberMe>
            <label class="kc-remember">
              <input type="checkbox" id="rememberMe" name="rememberMe" <#if login.rememberMe?? && login.rememberMe>checked</#if> />
              <span>${msg("rememberMe")}</span>
            </label>
          </#if>

          <#if realm.password && recaptchaRequired?? && recaptchaRequired>
            <div class="kc-captcha">
              <div class="g-recaptcha" data-sitekey="${recaptchaSiteKey}"></div>
            </div>
          </#if>

          <button tabindex="4" id="kc-login" type="submit">${msg("doLogIn")}</button>
        <#else>
          <#include "login-username.ftl">
        </#if>
      </form>

      <#if social?? && social.providers?has_content>
        <div class="kc-divider"><span>ou continue com</span></div>
        <div class="kc-social">
          <#list social.providers as provider>
            <a class="kc-social__item" href="${provider.loginUrl}" data-provider="${provider.alias}">
              <span>${provider.displayName}</span>
            </a>
          </#list>
        </div>
      </#if>

      <div class="kc-footer">
        <p>Esqueceu sua senha? <a href="${url.loginResetCredentialsUrl}">Recupere aqui</a></p>
        <#if realm.registrationAllowed?? && realm.registrationAllowed>
          <p>Ainda não possui acesso? <a href="${url.registrationUrl}">Crie sua conta</a></p>
        </#if>
      </div>
    </section>
  </div>

  <#if realm.password && recaptchaRequired?? && recaptchaRequired>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
  </#if>
</body>
</html>

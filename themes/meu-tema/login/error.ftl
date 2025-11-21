<#if locale??>
    <#assign currentLang = locale.currentLanguageTag>
<#else>
    <#assign currentLang = 'en'>
</#if>
<!DOCTYPE html>
<html lang="${currentLang}">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>${msg("errorTitle", "Erro no login")}</title>
    <link rel="stylesheet" href="${url.resourcesPath}/css/login.css" />
    <style>
        body { display:flex;align-items:center;justify-content:center;min-height:100vh;background:#020617;color:#f1f5f9;font-family:"Inter","Segoe UI",sans-serif; }
        .kc-error { max-width:420px;padding:32px;border-radius:20px;background:rgba(15,23,42,.85);border:1px solid rgba(148,163,184,.25);box-shadow:0 20px 60px rgba(2,6,23,.6);text-align:center; }
        .kc-error h1 { margin-bottom:12px;font-size:26px; }
        .kc-error p { margin:0 0 18px;color:#94a3b8; }
        .kc-error a { color:#38bdf8;text-decoration:none;font-weight:600; }
    </style>
</head>
<body>
    <div class="kc-error">
        <h1>${msg("errorTitle", "Ops, algo deu errado")}</h1>
        <p>${message!msg("unexpectedError","Tente novamente em instantes.")}</p>
        <p><a href="${url.loginUrl}">${msg("backToApplication","Voltar para o login")}</a></p>
    </div>
</body>
</html>

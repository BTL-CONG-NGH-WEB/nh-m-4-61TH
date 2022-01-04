<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Spotify</title>
    <link rel="icon" href="https://accounts.scdn.co/sso/images/favicon.ace4d8543bbb017893402a1e9d1ac1fa.ico">
    <link href="https://accounts.scdn.co/sso/css/index.f154bf48b3e0d0631bea.css" media="screen" rel="stylesheet">

</head>

<body>
    <div ng-include="template" class="ng-scope">
        <div sp-header="" class="ng-scope">
            <div class="head ">
                <a data-testid="spotify-logo" class="spotify-logo" tabindex="-1" title="Spotify"></a>
            </div>
            <div class="container-fluid login ng-scope">
                <div class="content" data-testid="login-container">
                    <div class="row ng-scope" ng-if="showContinueLabel">
                        <div class="col-xs-12 text-center">
                            <h1 id="login-to-continue" class="h5 ng-binding"
                            >To continue, log in to Spotify.</h1>
                        </div>
                    </div>
                    <div ng-if="!onlyPasswordView" class="ng-scope">
                        <div class="row">
                            <div class="col-xs-12">
                                <a ng-href="" class="btn btn-block btn-facebook ng-binding" target="_parent"
                                    role="button" analytics-on="click" analytics-category="Login View"
                                    analytics-event="Facebook Button" data-testid="facebook-login" analytics-label="{{"
                                    clientid=""=""
                                    href="https://www.facebook.com/login.php?skip_api_login=1&api_key=174829003346&kid_directed_site=0&app_id=174829003346&signed_next=1&next=https%3A%2F%2Fwww.facebook.com%2Fv7.0%2Fdialog%2Foauth%3Fclient_id%3D174829003346%26state%3DAQCrRQw8qiFIWjwhzRiexTmzOPjJRx41EKfNeq3LwSIKIQYPj%252Fr%252B5Vm7YRi1yjnl7Xi1wAltvwDG6cy4ndSLq8Hae84%252BPYkLvK4yC0MpeO2AkCwu%252FCT46yDLeuOZ28VphSPk1L0ROCFKSjJFD9b6TyWn9eb%252FIHSfIQuxhH9kvvtWyQWEAKRGtoFCDBCP2YujguB6iZsN%252BUXf%26redirect_uri%3Dhttps%253A%252F%252Faccounts.spotify.com%252Flogin%252Ffacebook%252Fredirect%26ret%3Dlogin%26fbapp_pres%3D0%26logger_id%3D98fc8bc2-de50-4028-bd26-078bb8a192c8%26tp%3Dunspecified&cancel_url=https%3A%2F%2Faccounts.spotify.com%2Flogin%2Ffacebook%2Fredirect%3Ferror%3Daccess_denied%26error_code%3D200%26error_description%3DPermissions%2Berror%26error_reason%3Duser_denied%26state%3DAQCrRQw8qiFIWjwhzRiexTmzOPjJRx41EKfNeq3LwSIKIQYPj%252Fr%252B5Vm7YRi1yjnl7Xi1wAltvwDG6cy4ndSLq8Hae84%252BPYkLvK4yC0MpeO2AkCwu%252FCT46yDLeuOZ28VphSPk1L0ROCFKSjJFD9b6TyWn9eb%252FIHSfIQuxhH9kvvtWyQWEAKRGtoFCDBCP2YujguB6iZsN%252BUXf%23_%3D_&display=page&locale=vi_VN&pl_dbl=0"
                                    >Continue with Facebook</a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <a ng-href="https://appleid.apple.com/auth/authorize?client_id=com.spotify.accounts&amp;response_type=code&amp;response_mode=form_post&amp;scope=name%20email&amp;state=AQAjGFjzAUPo4qUg%2F7jc9lk19aVNg3BF2VkcjL%2BQ5Dc70pnCiCpXVV7E%2Fd04HztYc15%2FPjXDpXz3tOx%2Fq%2BsicPUvvVmuMID1ATJa%2BDmj4w8Mf34eUxOmyrlMNjYcfpOGmZSYhdfVMC7R3ocI0LmIn6neX5d8aWqoEifDSuN%2B1dAYuV3ywbaNvGM5GwMAPkHFpOTL1O3U%2Bz1IXmzQ6H1kw5imwoP%2FToL%2BCogwL50alygwxlnVyRQbBJvbUqsYQ41Epgyp&amp;redirect_uri=https%3A%2F%2Faccounts.spotify.com%2Flogin%2Fapple%2Fredirect"
                                    class="btn btn-block btn-black btn-apple ng-binding" target="_parent" role="button"
                                    analytics-on="click" analytics-category="Login View" analytics-event="Apple Button"
                                    data-testid="apple-login" analytics-label="{{" clientid=""=""
                                    href="https://appleid.apple.com/auth/authorize?client_id=com.spotify.accounts&amp;response_type=code&amp;response_mode=form_post&amp;scope=name%20email&amp;state=AQAjGFjzAUPo4qUg%2F7jc9lk19aVNg3BF2VkcjL%2BQ5Dc70pnCiCpXVV7E%2Fd04HztYc15%2FPjXDpXz3tOx%2Fq%2BsicPUvvVmuMID1ATJa%2BDmj4w8Mf34eUxOmyrlMNjYcfpOGmZSYhdfVMC7R3ocI0LmIn6neX5d8aWqoEifDSuN%2B1dAYuV3ywbaNvGM5GwMAPkHFpOTL1O3U%2Bz1IXmzQ6H1kw5imwoP%2FToL%2BCogwL50alygwxlnVyRQbBJvbUqsYQ41Epgyp&amp;redirect_uri=https%3A%2F%2Faccounts.spotify.com%2Flogin%2Fapple%2Fredirect"
                                    >Continue with Apple</a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <a ng-href="" class="btn btn-block btn-default btn-google ng-binding" target="_parent"
                                    role="button" analytics-on="click" analytics-category="Login View"
                                    analytics-event="Google Button" data-testid="google-login" analytics-label="{{"
                                    clientid=""=""
                                    href="https://accounts.google.com/o/oauth2/v2/auth/oauthchooseaccount?response_type=code&access_type=offline&client_id=1046568431490-ij1gi5shcp2gtorls09frkc56d4mjbe2.apps.googleusercontent.com&state=AQB4lUm3%2FY15cgTshJYSwC6pJv5xjEkRoI3hsV2TvkLQjxyX0cgvayn178ECjdONsQSET%2Bl2HJG7deBxcFK%2FYAv5f2Fza4ScXZYDYyERRRjQlMf2ZqpUy0N29TJiwhcy1XBDpgRZUCJEMpGyiJTGWPX%2FDMRHf%2FiovElPPHA9Wdziir9jpqGVQ3ySuTIzWMfwN0jq60IAf9d0&scope=profile%20email%20openid&redirect_uri=https%3A%2F%2Faccounts.spotify.com%2Flogin%2Fgoogle%2Fredirect&flowName=GeneralOAuthFlow"
                                    >Continue with Google</a>
                            </div>
                        </div>
                        <div class="row ng-scope" ng-if="phoneBtnEnabled">
                            <div class="col-xs-12">
                                <a ng-href="" class="btn btn-block btn-default ng-binding" target="_parent"
                                    role="button" analytics-on="click" analytics-category="Login View"
                                    analytics-event="Phone Button" data-testid="phone-login" analytics-label="{{"
                                    clientid=""=""
                                    href="https://accounts.spotify.com/en/login/phone?continue=https:%2F%2Fopen.spotify.com%2F__noul__%3Fl2l%3D1%26nd%3D1"
                                    >Continue with phone number</a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="divider">
                                    <strong class="divider-title ng-binding">or</strong>
                                </div>
                            </div>
                        </div>
                    </div>
                    <form name="$parent.accounts" method="post" data-testid="login-form" novalidate=""
                        class="ng-valid-sp-disallow-chars ng-dirty ng-valid-parse ng-valid ng-valid-required">

                        <div class="row"
                            ng-class="{'has-error': (accounts.username.$dirty &amp;&amp; accounts.username.$invalid) || invalidCredentials}">
                            <div class="col-xs-12">
                                <label for="login-username" class="control-label ng-binding">
                                    Email address or username
                                </label>
                                <input ng-model="form.username" type="text"
                                    class="form-control input-with-feedback ng-valid-sp-disallow-chars ng-touched ng-not-empty ng-dirty ng-valid-parse ng-valid ng-valid-required"
                                    name="username" id="login-username" placeholder="Email address or username"
                                    required="" sp-disallow-chars=":&amp;'`&quot;"
                                    sp-disallow-chars-model="usernameDisallowedChars" autocapitalize="off"
                                    autocomplete="off" autocorrect="off" autofocus="autofocus" ng-trim="false"
                                    ng-change="onInputChange()">
                            </div>
                        </div>
                        <div class="row"
                            ng-class="{'has-error': (accounts.password.$dirty &amp;&amp; accounts.password.$invalid) || invalidCredentials}">
                            <div class="col-xs-12">
                                <label for="login-password" class="control-label ng-binding">
                                    Password
                                </label>
                                <input ng-model="form.password" type="password"
                                    class="form-control input-with-feedback ng-not-empty ng-dirty ng-valid-parse ng-valid ng-valid-required ng-touched"
                                    name="password" id="login-password" placeholder="Password" required=""
                                    autocomplete="off" ng-trim="false" ng-change="onInputChange()">
                            </div>
                        </div>
                        <div class="row password-reset">
                            <div class="col-xs-12">
                                <p>
                                    <a id="reset-password-link" data-testid="reset-password-link"
                                        ng-href="https://www.spotify.com/password-reset/" analytics-on="click"
                                        analytics-category="Login View" analytics-event="Forgot Button"
                                        analytics-label="" class="ng-binding"
                                        href="https://www.spotify.com/password-reset/"
                                        >Forgot your password?</a>
                                </p>
                            </div>
                        </div>
                        <div class="row row-submit">
                            <div class="col-xs-12 col-sm-6">
                                <div class="checkbox">
                                    <label class="ng-binding">
                                        <input ng-model="form.remember" type="checkbox" name="remember"
                                            analytics-on="checked" analytics-category="Login View" id="login-remember"
                                            class="ng-pristine ng-untouched ng-valid ng-not-empty"
                                            > Remember me
                                        <span class="control-indicator"></span>
                                    </label>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6">
                                <button class="btn btn-block btn-green ng-binding" id="login-button"
                                    ng-click="onLoginClick($event)"
                                    >Log In</button>
                            </div>
                        </div>
                    </form>
                    <div id="sign-up-section">
                        <div class="row">
                            <div class="col-xs-12">
                                <signup class="ng-isolate-scope">
                                    <div ng-if="showSignup" class="ng-scope">
                                        <div ng-if="showButton" class="ng-scope">
                                            <div class="row">
                                                <div class="col-xs-12">
                                                    <div class="divider">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row text-center mt-0">
                                                <h2 class="h4 ng-binding"
                                                >Don't have an account?</h2>
                                            </div>
                                            <div>
                                                <div class="row">
                                                    <div class="col-xs-12">
                                                        <a id="sign-up-link" data-testid="signup-btn-link"
                                                            ng-click="onSignupClick()" ng-href=""
                                                            class="btn btn-block btn-default ng-binding"
                                                            role="button"
                                                            >Sign up for Spotify</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </signup>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
</body>

</html>
<%--
  Created by IntelliJ IDEA.
  User: luo
  Date: 2020/4/1
  Time: 1:22 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:wb="http://open.weibo.com/wb">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>调问网</title>
    <meta name="keywords" content="调查问卷模板，调查问卷，问卷调查模板，问卷模板，在线调查问卷，在线问卷，在线调查，问卷调查系统，调查问卷设计，调查问卷格式，论文数据来源，学术论文，调问网" />
    <meta name="description" content="调问网提供调查问卷模板与调查问卷设计，免费好用的在线调查问卷平台，拥有大量调查问卷模板，拥有所见可视化直观的编辑和结果统计界面，各行业的调查问卷模板，多样化在线调查问卷收集渠道。适用在线调查问卷，员工满意度调查,市场调查,人才测评,学术论文,活动投票等调查问卷服务。" />

    <script type="text/javascript" src="/js/plugs/jquery-ui-1.10.3.custom/js/jquery-1.10.1.js"></script>
    <script type="text/javascript" src="/js/dw/responsive-width.js"></script>
    <script type="text/javascript" src="/js/plugs/jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.js"></script>
    <link href="/css/dw-user.css" rel="stylesheet" type="text/css" />

    <script src="/js/plugs/jquery/jquery.cookie.js" type="text/javascript"></script>
    <link href="/js/plugs/validate/jquery.validate.css" type="text/css" rel="stylesheet" />
    <script src="/js/plugs/validate/jquery.validate.js" type="text/javascript"></script>
    <script src="/js/plugs/validate/messages_cn.js" type="text/javascript"></script>
    <script src="/js/plugs/validate/jquery.metadata.js" type="text/javascript"></script>
    <link rel="icon" href="/favicon.ico" type="image/x-icon" />
    <script type="text/javascript">
        $(document).ready(function(){

            //validate
            var registerFormValidate=$("#registerForm").validate({
                rules:{
                    email:{required:true,email:true,maxlength:60,remote:"/user!checkEmail.action"},
                    plainPassword:{required:true,minlength:6,maxlength:40},
                    pwd1:{required:true,equalTo:"#plainPassword"}
                },
                messages: {
                    loginName: {
                        minlength:"不能少于3个字符！",
                        maxlength:"不能超过60个字符！",
                        remote: "用户名已存在"
                    },
                    pwd1:{
                        equalTo: "前后密码不一致！"
                    },
                    email: {
                        email: "格式不正确！",
                        remote: "邮箱已存在"
                    }
                },
                errorPlacement: function(error, element) {
                    //error.appendTo(element.parent().parent());
                    element.parent().append(error);
                    //	$(element).css("borderColor","#C40000");
                }
            });

            var ckCodeError=$.cookie("registerError");
            if(ckCodeError!=null && ckCodeError=="0"){
                $("#register-error").text("验证码不正确!");
                $.removeCookie('registerError',{path:'/'});
            }

        });
    </script>
    <style type="text/css">
        label.error{
            display: block;
            margin-top: 3px;
        }
    </style>
</head>
<body style="background-color: #537088;">

<div class="m-logbg"><img src="/images/bgimg/pexels-photo-934718.jpeg" style="margin-top:0px; margin-left: 0px; opacity: 1;" width="100%" ></div>
<%@ include file="/WEB-INF/page/layouts/loginbgimg.jsp"%>
<div id="wrap" class="wrapLogin">
    <input type="hidden" id="id" name="id" value="${survey.id }">
    <input type="hidden" id="ctx" value="${ctx }">

    <script>
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?dca3db1fcd7f962a4c8d93ac26ff28fb";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>


    <style>
        .gitItem{
            padding: 0px;
            margin: 0px;
            background: #24292C;
        }
        .gitItem a{
            margin: 0px;
            width: 95px;
            font-size: 14px;
            padding: 10px 40px;
        }
        .gitItem a:hover{
            background: black;
        }
    </style>

    <div style="clear: both;"></div>
    <div id="dwBody" >
        <div id="dwBodyContent" class="bodyCenter" style="background: none;">

            <div class="dw_login_logo">
                <h1 class="f1">DIAOWEN</h1>
                <h2 class="f2">方便<span class="f3">、</span>高效<span class="f3">、</span>实用的调研方式</h2>
            </div>


            <div id="dwLoginContent">
                <div class="dlcTitleBg" ></div>
                <div class="dlcTitle" >
                    <span class="dlcTitleTab" >注册体验账号，开始体验系统</span>
                </div>

                <div class="loginFormContent">

                    <form id="registerForm" action="/user!save.action" method="post">
                        <div id="registerTabContent" >
                            <div id="register-error" class="errorMsg" style="color: red;padding-left: 60px;">&nbsp;</div>
                            <div class="dlcLeft">
                                <div class="frmItem">
                                    <label for="" class="frm_label">邮箱</label>
                                    <div class="frm_controls">
                                        <input id="userEmail" type="text" class="frm-controlM" name="email" value="">
                                        <span class="frm_desc">用来登录KX，接收到激活邮件才能完成注册</span>
                                    </div>
                                </div>
                                <div class="frmItem">
                                    <label for="" class="frm_label">密码</label>
                                    <div class="frm_controls">
                                        <input type="password"  name="plainPassword" id="plainPassword"  class="frm-controlM" >
                                        <span class="frm_desc">字母、数字或者英文符号，最短6位，区分大小写</span>
                                    </div>
                                </div>
                                <div class="frmItem">
                                    <label for="" class="frm_label">确认密码</label>
                                    <div class="frm_controls">
                                        <input type="password"  name="pwd1" class="frm-controlM" >
                                        <span class="frm_desc">字母、数字或者英文符号，最短6位，区分大小写</span>
                                    </div>
                                </div>
                                <div class="frmItem"  style="">
                                    <label for="" class="frm_label">验证码</label>
                                    <div class="frm_controls">
											<span class="auth-code" id="verifycodeImgArea">
											<input name="jcaptchaInput" type="text"  class="" style="width:100px;" autocomplete="off">
											<img id="register-jcaptchaImg"  onclick="refreshAutoCode('register-jcaptchaImg')" src="/jcaptcha.action" alt="验证码"  height="40"></span>
                                        <a href="javascript:refreshAutoCode('register-jcaptchaImg');" style="margin-left: 5px;">换一张</a>
                                        <span class="frm_desc">输入下面图片的字符，不区分大小写</span>
                                        <p class="valid-msg fail" style="display: none;"><i>●</i><span class="msg_content">验证码错误，请重新输入</span></p>
                                    </div>
                                </div>
                                <div class="frmItem" style="padding: 3px 5px;padding-bottom: 7px;">
                                    <label for="" class="frm_label">&nbsp;</label>
                                    <!-- <label class="frmItemLabel" ><input id="agree" name="agree" type="checkbox" checked="checked">我同意并遵守<a href="" target="_blank">《KX调研问卷系统服务协议》</a></label> -->
                                    <span class="ztagCheckbox checkedTrue"><input id="c0" type="checkbox"></span>
                                    <span class="dw_style_a_1">我同意并遵守</span>
                                    <a href="" target="_blank" class="dw_style_a_1">《调问网服务协议》</a>
                                </div>
                                <div class="frmItem" style="padding: 6px 5px;">
                                    <label for="" class="frm_label">&nbsp;</label>
                                    <input type="submit"  value=" 注 册 体 验 账 号 " class="btnGreen" style="width: 330px;height: 45px;" />
                                </div>
                                <!--
                                <div class="frmItem" style="padding: 10px 5px;">
                                    <label for="" class="frm_label">&nbsp;</label>
                                    还没有账号&nbsp;&nbsp;<a href="">免费注册</a>
                                </div> -->
                            </div>
                            <div class="dlcRight">

                                <div style="color: gray;">
                                    <h3 style="line-height: 40px;">联系信息</h3>
                                    <p style="line-height: 40px;">邮箱：service@diaowen.net</p>
                                    <p style="line-height: 40px;">电话：0000000000</p>
                                    <p style="line-height: 40px;">京ICP备13050030号-3</p>
                                </div>


                                <div><p style="line-height: 28px;">有体验帐号 <a href="/login.jsp" style="color: #5B9FD0;font-size: 22px;">立即登录</a></p></div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </div>
</div>
<script type="text/javascript">
    resizeBodyWidth();
    $(".dlcTitleBg").animate({opacity:0.6},0);
    $("a").attr("hidefocus",true);
</script>

<script type="text/javascript">

</script>
</body>
</html>
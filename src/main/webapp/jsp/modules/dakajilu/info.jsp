<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>

</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto" id="navUl">

                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">编辑打卡记录</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">打卡记录管理</li>
                        <li class="breadcrumb-item active">打卡记录登记</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">打卡记录信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                            <!-- 级联表所有字段 -->

                                        <div class="form-group col-md-6">
                                            <label>学工号</label>
                                            <input id="yonghuXuegonghao" name="yonghuXuegonghao" class="form-control"
                                                   v-model="ruleForm.yonghuXuegonghao" readonly>
                                        </div>


                                        <div class="form-group col-md-6">
                                            <label>用户姓名</label>
                                            <input id="yonghuName" name="yonghuName" class="form-control"
                                                   v-model="ruleForm.yonghuName" readonly>
                                        </div>


                                    <div class="form-group col-md-6">
                                        <label>性别</label>
                                        <input id="sexValue" name="sexValue" class="form-control"
                                               v-model="ruleForm.sexValue" readonly>
                                    </div>


                                        <div class="form-group col-md-6">
                                            <label>身份证号</label>
                                            <input id="yonghuIdNumber" name="yonghuIdNumber" class="form-control"
                                                   v-model="ruleForm.yonghuIdNumber" readonly>
                                        </div>


                                        <div class="form-group col-md-6">
                                            <label>手机号</label>
                                            <input id="yonghuPhone" name="yonghuPhone" class="form-control"
                                                   v-model="ruleForm.yonghuPhone" readonly>
                                        </div>


                                    <div class="form-group col-md-6">
                                        <label>照片</label>
                                        <img id="yonghuPhotoImg" width="100" height="100">
                                    </div>

                                        <div class="form-group col-md-6">
                                            <label>学院</label>
                                            <input id="yonghuXueyuan" name="yonghuXueyuan" class="form-control"
                                                   v-model="ruleForm.yonghuXueyuan" readonly>
                                        </div>


                                        <div class="form-group col-md-6">
                                            <label>专业</label>
                                            <input id="yonghuZhuanye" name="yonghuZhuanye" class="form-control"
                                                   v-model="ruleForm.yonghuZhuanye" readonly>
                                        </div>


                                        <div class="form-group col-md-6">
                                            <label>班级</label>
                                            <input id="yonghuBanji" name="yonghuBanji" class="form-control"
                                                   v-model="ruleForm.yonghuBanji" readonly>
                                        </div>


                                        <div class="form-group col-md-6">
                                            <label>年级</label>
                                            <input id="yonghuNianji" name="yonghuNianji" class="form-control"
                                                   v-model="ruleForm.yonghuNianji" readonly>
                                        </div>

                            <!-- 本表所有字段 -->



                                    <input id="updateId" name="id" type="hidden">
                                <input id="yonghuId" name="yonghuId" v-model="ruleForm.yonghuId" readonly type="hidden">

                                    <div class="form-group col-md-6">
                                        <label>打卡时间</label>
                                        <input id="insertTime" name="insertTime" class="form-control"
                                               v-model="ruleForm.insertTime" readonly>
                                    </div>


                                    <div class="form-group col-md-6">
                                        <label>体温</label>
                                        <input id="dakajiluTiwen" name="dakajiluTiwen" class="form-control"
                                               v-model="ruleForm.dakajiluTiwen" readonly>
                                    </div>


                                    <div class="form-group col-md-6">
                                        <label>打卡地点</label>
                                        <input id="dakajiluDidian" name="dakajiluDidian" class="form-control"
                                               v-model="ruleForm.dakajiluDidian" readonly>
                                    </div>


                                <div class="form-group col-md-6">
                                    <label>一月内是否接触过确诊病例</label>
                                    <input id="quezhenValue" name="quezhenValue" class="form-control"
                                           v-model="ruleForm.quezhenValue" readonly>
                                </div>


                                <div class="form-group col-md-6">
                                    <label>一月内是否接触过疑似病例</label>
                                    <input id="yishiValue" name="yishiValue" class="form-control"
                                           v-model="ruleForm.yishiValue" readonly>
                                </div>


                                <div class="form-group col-md-6">
                                    <label>一月内是否去过中高风险地区</label>
                                    <input id="gaofengxianValue" name="gaofengxianValue" class="form-control"
                                           v-model="ruleForm.gaofengxianValue" readonly>
                                </div>


                                <div class="form-group col-md-6">
                                    <label>以上内容是否属实</label>
                                    <input id="shifouValue" name="shifouValue" class="form-control"
                                           v-model="ruleForm.shifouValue" readonly>
                                </div>

                                <div class="form-group col-md-12 mb-3">
                                    <button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->
    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>

<script>
    <%@ include file="../../utils/menu.jsp"%>
            <%@ include file="../../static/setMenu.js"%>
            <%@ include file="../../utils/baseUrl.jsp"%>

    var tableName = "dakajilu";
    var pageType = "add-or-update";
    var updateId = "";

    var quezhenTypesOptions = [];
    var yishiTypesOptions = [];
    var gaofengxianTypesOptions = [];
    var shifouTypesOptions = [];

    var ruleForm = {};
    var vm = new Vue({
        el: '#addOrUpdateForm',
        data: {
            ruleForm: {},
        },
        beforeCreate: function () {
            var id = window.sessionStorage.getItem("updateId");
            if (id != null && id != "" && id != "null") {
                $.ajax({
                    type: "GET",
                    url: baseUrl + "dakajilu/info/" + id,
                    beforeSend: function (xhr) {
                        xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));
                    },
                    success: function (res) {
                        if (res.code == 0) {
                            vm.ruleForm = res.data;
                            ruleForm = res.data;
                            showImg();
                            setContent();
                        } else if (res.code == 401) {
                        <%@ include file="../../static/toLogin.jsp"%>
                        } else {
                            alert(res.msg)
                        }
                    },
                });
            }
        },
        methods: {}
    });


    // 填充富文本框
    function setContent() {

    }


    //图片显示
    function showImg() {
        $("#yonghuPhotoImg").attr("src", ruleForm.yonghuPhoto);
    }

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('adddakajilu');
        window.location.href = "list.jsp";
    }

    // 下载
    function download(fileName) {
        var url = baseUrl+'file/download?fileName='+fileName;
        window.open(url);
    }

    //设置下载
    function setDownloadBtn() {

    }

    $(document).ready(function () {
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            exit();
        });


    <%@ include file="../../static/myInfo.js"%>
    });
    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>
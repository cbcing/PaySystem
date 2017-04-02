<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s"%>

<%
    String flag = (String) session.getAttribute("flag");
    if (flag == null || flag.equals("false")){
        response.sendRedirect("/login.jsp");
    }

%>
<html lang="en-US">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>员工管理</title>
    <!--[if lt IE 9]>
    <!--	<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script> -->
    <script src="Javascript/Flot/excanvas.js"></script>
    <![endif]-->
    <!-- The Fonts -->
    <link href="http://fonts.useso.com/css?family=Oswald|Droid+Sans:400,700" rel="stylesheet" />
    <!-- The Main CSS File -->
    <link rel="stylesheet" href="CSS/style.css" />
    <!-- jQuery -->
    <script src="Javascript/jQuery/jquery-1.7.2.min.js"></script>
    <!-- Flot -->
    <script src="Javascript/Flot/jquery.flot.js"></script>
    <script src="Javascript/Flot/jquery.flot.resize.js"></script>
    <script src="Javascript/Flot/jquery.flot.pie.js"></script>
    <!-- DataTables -->
    <script src="Javascript/DataTables/jquery.dataTables.min.js"></script>
    <!-- ColResizable -->
    <script src="Javascript/ColResizable/colResizable-1.3.js"></script>
    <!-- jQuryUI -->
    <script src="Javascript/jQueryUI/jquery-ui-1.8.21.min.js"></script>
    <!-- Uniform -->
    <script src="Javascript/Uniform/jquery.uniform.js"></script>
    <!-- Tipsy -->
    <script src="Javascript/Tipsy/jquery.tipsy.js"></script>
    <!-- Elastic -->
    <script src="Javascript/Elastic/jquery.elastic.js"></script>
    <!-- ColorPicker -->
    <script src="Javascript/ColorPicker/colorpicker.js"></script>
    <!-- SuperTextarea -->
    <script src="Javascript/SuperTextarea/jquery.supertextarea.min.js"></script>
    <!-- UISpinner -->
    <script src="Javascript/UISpinner/ui.spinner.js"></script>
    <!-- MaskedInput -->
    <script src="Javascript/MaskedInput/jquery.maskedinput-1.3.js"></script>
    <!-- ClEditor -->
    <script src="Javascript/ClEditor/jquery.cleditor.js"></script>
    <!-- Full Calendar -->
    <script src="Javascript/FullCalendar/fullcalendar.js"></script>
    <!-- Color Box -->
    <script src="Javascript/ColorBox/jquery.colorbox.js"></script>
    <!-- Kanrisha Script -->
    <script src="Javascript/kanrisha.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>

<!-- Top Panel -->
<div class="top_panel">
    <div class="wrapper">
        <div class="user">
            <img src="Images/user_avatar.png" alt="user_avatar" class="user_avatar" />
            <span class="label"><s:property value="#session.adminName"></s:property></span>
            <!-- Top Tooltip -->
            <div class="top_tooltip">
                <div>
                    <ul class="user_options">
                        <li class="i_16_profile"><a href="#" title="Profile"></a></li>
                        <li class="i_16_tasks"><a href="#" title="Tasks"></a></li>
                        <li class="i_16_notes"><a href="#" title="Notes"></a></li>
                        <li class="i_16_options"><a href="#" title="Options"></a></li>
                        <li class="i_16_logout"><a href="#" title="Log-Out"></a></li>
                    </ul>
                </div>
            </div>
        </div>

    </div>
</div>
<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>
<header class="main_header">
    <div class="wrapper">
        <div class="logo">
            <a href="#" title="Kanrisha Home">
                <img src="Images/kanrisha_logo.png" alt="kanrisha_logo" />
            </a>
        </div>
    </div>
</header>

<div class="wrapper small_menu">
    <ul class="menu_small_buttons">
        <li><a title="General Info" class="i_22_dashboard smActive" href="index.jsp"></a></li>
        <li><a title="Your Messages" class="i_22_inbox" href="inbox.html"></a></li>
        <li><a title="Visual Data" class="i_22_charts" href="charts.html"></a></li>
        <li><a title="Kit elements" class="i_22_ui" href="ui.html"></a></li>
        <li><a title="Some Rows" class="i_22_tables" href="tables.html"></a></li>
        <li><a title="Some Fields" class="i_22_forms" href="forms.html"></a></li>
    </ul>
</div>

<div class="wrapper contents_wrapper">

    <aside class="sidebar">
        <ul class="tab_nav">
            <li class="i_32_dashboard">
                <a href="index.jsp" title="General Info">
                    <span class="tab_label">主页</span>
                    <span class="tab_info">缴费系统</span>
                </a>
            </li>
            <li class="i_32_forms">
                <a href="jumpToPayJsp.action" title="充值缴费">
                    <span class="tab_label">充值缴费</span>
                    <span class="tab_info">充值缴费</span>
                </a>
            </li>
            <li class="i_32_charts">
                <a href="account.jsp" title="数据统计">
                    <span class="tab_label">数据统计</span>
                    <span class="tab_info">数据统计</span>
                </a>
            </li>
            <li class="i_32_ui active_tab">
                <a href="getAdmins.action" title="员工管理">
                    <span class="tab_label">员工管理</span>
                    <span class="tab_info">员工管理</span>
                </a>
            </li>
            <li class="i_32_ui">
                <a href="getUsers.action" title="用户管理">
                    <span class="tab_label">用户管理</span>
                    <span class="tab_info">用户管理</span>
                </a>
            </li>
            <li class="i_32_dashboard">
                <a href="exitSystem.action" title="退出系统">
                    <span class="tab_label">退出系统</span>
                    <span class="tab_info">安全退出</span>
                </a>
            </li>
        </ul>
    </aside>

    <div class="contents">
        <div class="grid_wrapper">

            <div class="g_12">
                <div class="widget_header">
                    <h4 class="widget_header_title wwIcon i_16_resize">增加/修改员工信息</h4>
                </div>
                <div class="widget_contents noPadding">
                    <table class="tables resizeable_tables">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>姓名</th>
                            <th>密码</th>
                            <th>性别</th>
                            <th>电话</th>
                            <th>地址</th>
                            <th>等级</th>
                            <th>状态</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <td><input type="text" name="id" value="" size="8"></td>
                        <td><input type="text" name="name" value="" size="8"></td>
                        <td><input type="text" name="password" value="" size="8"></td>
                        <td><input type="text" name="sex" value="" size="8"></td>
                        <td><input type="text" name="tele" value="" size="8"></td>
                        <td><input type="text" name="addr" value="" size="8"></td>
                        <td><input type="text" name="grande" value="" size="8"></td>
                        <td><input type="text" name="fire" value="" size="8"></td>
                        <td><input type="submit" value="提交"></td>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="g_12 separator"><span></span></div>

            <div class="g_12">
                <div class="widget_header wwOptions">
                    <h4 class="widget_header_title wwIcon i_16_data">用户信息</h4>
                    <div class="w_Options i_16_settings">
                        <!-- Drop Menu -->
                        <ul class="drop_menu menu_with_icons right_direction">
                            <li>
                                <a class="i_16_add" href="#" title="New Flie">
                                    <span class="label">New File</span>
                                </a>
                            </li>
                            <li>
                                <a class="i_16_progress" href="#" title="2 Files Left">
                                    <span class="label">Files Left</span>
                                    <span class="small_count">2</span>
                                </a>
                            </li>
                            <li>
                                <a class="i_16_files" href="#" title="Browse Files">
                                    <span class="label">Browse Files</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="widget_contents noPadding">
                    <table class="datatable tables">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>姓名</th>
                            <th>密码</th>
                            <th>性别</th>
                            <th>电话</th>
                            <th>地址</th>
                            <th>等级</th>
                            <th>状态</th>
                        </tr>
                        </thead>
                        <tbody>
                        <s:iterator value="#session.admins" id="admin" status="st">
                            <tr>
                                <td><s:property value="#admin.id"></s:property></td>
                                <td><s:property value="#admin.name"></s:property></td>
                                <td><s:property value="#admin.password"></s:property></td>
                                <td><s:property value="#admin.sex"></s:property></td>
                                <td><s:property value="#admin.tele"></s:property></td>
                                <td><s:property value="#admin.addr"></s:property></td>
                                <td><s:property value="#admin.grade"></s:property></td>
                                <td><s:property value="#admin.fire"></s:property></td>
                            </tr>
                        </s:iterator>
                        </tbody>
                    </table>
                </div>
            </div>

        </div>
    </div>

</div>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>
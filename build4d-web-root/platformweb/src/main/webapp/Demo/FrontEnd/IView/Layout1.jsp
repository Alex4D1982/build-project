<%--
  Created by IntelliJ IDEA.
  User: zhuibobo
  Date: 2018/4/15
  Time: 20:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/Views/TagLibs/TagLib.jsp" %>
<html style="height: 100%">
<head>
	<title>Title</title>
	<%@ include file="/WEB-INF/Views/TagLibs/GeneralLib.jsp" %>
	<%@ include file="/WEB-INF/Views/TagLibs/IViewLib.jsp" %>
	<style>
		#app{
			/*padding: 32px;*/
		}
		.layout{
			border: 1px solid #d7dde4;
			background: #f5f7f9;
			position: relative;
			border-radius: 4px;
			overflow:auto;
		}
		.layout-logo{
			width: 200px;
			height: 40px;
			background: #5b6270;
			border-radius: 3px;
			float: left;
			position: relative;
			top: 10px;
			left: 20px;
			color:#ffffff;
			font-size: 20px;
			line-height: 40px;
			padding-left: 20px;
		}
		.layout-nav{
			width: 1100px;
			margin: 0 auto;
			margin-right: 0px;
		}
	</style>
</head>
<body style="height: 100%">
	<div id="app">
		<div class="layout">
			<layout>
				<i-header>
					<i-menu mode="horizontal" theme="dark" active-name="1">
						<div class="layout-logo">Java应用构建套件</div>
						<div class="layout-nav">
							<menu-item name="1">
								<icon type="ios-navigate"></icon>
								工作平台
							</menu-item>
							<menu-item name="2">
								<icon type="ios-keypad"></icon>
								工程跟踪管理
							</menu-item>
							<menu-item name="3">
								<icon type="ios-analytics"></icon>
								信息管理
							</menu-item>
							<menu-item name="4">
								<icon type="ios-paper"></icon>
								工程跟踪动态统计
							</menu-item>
							<menu-item name="4">
								<icon type="ios-analytics"></icon>
								档案员管理
							</menu-item>
							<menu-item name="4">
								<icon type="ios-keypad"></icon>
								档案查询
							</menu-item>
							<menu-item name="4">
								<icon type="ios-navigate"></icon>
								档案统计
							</menu-item>
							<menu-item name="4">
								<icon type="ios-paper"></icon>
								系统管理
							</menu-item>
						</div>
					</i-menu>
				</i-header>
				<layout>
					<sider hide-trigger :style="{background: '#fff',height:'800px',overflow:'auto'}">
						<i-menu active-name="1-2" theme="light" width="auto" :open-names="['1']" @on-select="menu_click">
                            <submenu name="1">
                                <template slot="title">
                                    <icon type="ios-analytics"></icon>
                                    系统管理
                                </template>
								<menu-item name="1-1">
									<icon type="document-text"></icon>
									Option 1
								</menu-item>
								<menu-item name="1-2">Option 2</menu-item>
								<menu-item name="1-3">Option 3</menu-item>
								<menu-item name="1-4">Option 4</menu-item>
                            </submenu>
                            <submenu name="2">
                                <template slot="title">
                                    <icon type="ios-filing"></icon>
                                    Navigation Two
                                </template>
                                <menu-item name="2-1">Option 5</menu-item>
                                <menu-item name="2-2">Option 6</menu-item>
                                <submenu name="3">
                                    <template slot="title">Submenu</template>
                                    <menu-item name="3-1">Option 7</menu-item>
                                    <menu-item name="3-2">Option 8</menu-item>
                                </submenu>
                            </submenu>
                            <submenu name="4">
                                <template slot="title">
                                    <icon type="ios-gear"></icon>
                                    Navigation Three
                                </template>
                                <menu-item name="4-1">Option 9</menu-item>
                                <menu-item name="4-2">Option 10</menu-item>
                                <menu-item name="4-3">Option 11</menu-item>
                                <menu-item name="4-4">Option 12</menu-item>
                            </submenu>
						</i-menu>
					</sider>
					<layout :style="{padding: '0 24px 24px'}">
						<breadcrumb :style="{margin: '24px 0'}">
							<breadcrumb-item>Home</breadcrumb-item>
							<breadcrumb-item>Components</breadcrumb-item>
							<breadcrumb-item>Layout</breadcrumb-item>
						</breadcrumb>
						<i-content :style="{padding: '24px', minHeight: '480px', background: '#fff'}">
							Content
						</i-content>
					</layout>
				</layout>
			</layout>
		</div>
	</div>
	<script>
        var Main = {
            methods:{
                menu_click:function (name) {
					alert(name);
                }
			}
        };
        var Component = Vue.extend(Main);
        new Component().$mount('#app');
	</script>
</body>
</html>

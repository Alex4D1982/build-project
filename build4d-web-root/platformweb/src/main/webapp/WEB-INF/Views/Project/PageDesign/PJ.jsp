<%--
  Created by IntelliJ IDEA.
  User: zhuibobo
  Date: 2018/5/12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/Views/TagLibs/TagLib.jsp" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="${ctxpath}/PageDesign/PJ/css/css.css" />
</head>
<body class="dengluye">

<div class="dengluyehei"> </div>
<div class="biaodan">
    <div class="dingbu">
        <div class="dingbubiaoti">在线业务指导系统—报建登记</div>
        <div class="guanbi"></div>
    </div>
    <p class="biaoti">建设单位信息</p>
    <div class="tianxiang">
        <div class="xiangming">单位名称：</div>
        <div class="hongxing">*</div>
        <input name="textfield" type="text" id="textfield" size="1" style=" width:50%; height:20px; display:inline-block; float: right;    " />
    </div>

    <div class="tianxiang">
        <div class="xiangming">单位地址：</div>
        <div class="hongxing">*</div>
        <input name="textfield" type="text" id="textfield" size="1" style=" width:50%; height:20px; display:inline-block; float:right;   " />

    </div>

    <div class="tianxiang">
        <div class="xiangming">组织机构代码：</div>
        <div class="hongxing">*</div>
        <input name="textfield" type="text" id="textfield" size="1" style=" width:50%; height:20px; display:inline-block; float:right;   " />
    </div>

    <div class="tianxiang">
        <div class="xiangming">单位联系人：</div><div class="hongxing">*</div>
        <input name="textfield" type="text" id="textfield" size="1" style=" width:50%; height:20px; display:inline-block; float:right;   " />

    </div>

    <div class="tianxiang">
        <div class="xiangming">Email：</div><div class="hongxing">*</div>
        <input name="textfield" type="text" id="textfield" size="1" style=" width:50%; height:20px; display:inline-block; float:right;   " />

    </div>

    <div class="tianxiang">
        <div class="xiangming">联系电话：</div> <div class="hongxing">*</div>
        <input name="textfield" type="text" id="textfield" size="1" style=" width:50%; height:20px; display:inline-block; float:right;   " />

    </div>

    <p class="biaoti">工程信息</p>
    <div class="tianxiang">
        <div class="xiangming">工程类别：</div><div class="hongxing">*</div>
        <select name="select" id="select"  style="width:50%; height:25px; display:inline-block; float:right; margin-right:1.5%; ">
            <option>aaaaaaaaaaaaaaaaa</option>
            <option>22222222222222222</option>
            <option>11111111111111111111</option>
        </select>
    </div>

    <div class="tianxiang">
        <div class="xiangming">接收机构：</div><div class="hongxing">*</div>
        <select name="select" id="select"  style="width:50%; height:25px; display:inline-block; float:right; margin-right:1.5%; ">
            <option>aaaaaaaaaaaaaaaaa</option>
            <option>22222222222222222</option>
            <option>11111111111111111111</option>
        </select>
    </div>

    <div class="tianxiang">
        <div class="xiangming">项目名称：</div><div class="hongxing">*</div>
        <input name="textfield" type="text" id="textfield" size="1" style=" width:50%; height:20px; display:inline-block; float:right;   " />

    </div>

    <div class="tianxiang">
        <div class="xiangming">工程地点：</div><div class="hongxing">*</div>
        <select name="select" id="select"  style="width:50%; height:25px; display:inline-block; float:right; margin-right:1.5%; ">
            <option>aaaaaaaaaaaaaaaaa</option>
            <option>22222222222222222</option>
            <option>11111111111111111111</option>
        </select>

    </div>

    <div class="tianxiang">
        <div class="xiangming">起始时间：</div><div class="hongxing">*</div>
        <input name="textfield" type="text" id="textfield" size="1" style=" width:22%; height:20px; display:inline-block; float:right;   " />
        <div class="zhongxian"></div>
        <input name="textfield" type="text" id="textfield" size="1" style=" width:22.3%; height:20px; display:inline-block; float:right;   " />

    </div>

    <div class="tianxiang">
        <div class="xiangming">规划许可证号：</div><div class="hongxing">*</div>
        <input name="textfield" type="text" id="textfield" size="1" style=" width:50%; height:20px; display:inline-block; float:right;   " />

    </div>
    <div class="tianxiang">
        <div class="xiangming">施工许可证号：</div><div class="hongxing">*</div>
        <input name="textfield" type="text" id="textfield" size="1" style=" width:50%; height:20px; display:inline-block; float:right;   " />

    </div>
    <div class="tianxiang">
        <div class="xiangming">其他证件：</div><div class="hongxing">*</div>
        <input name="textfield" type="text" id="textfield" size="1" style=" width:50%; height:20px; display:inline-block; float:right;   " />

    </div>

    <p class="biaoti">建设单位登录账号</p>
    <div class="tianxiang">
        <div class="xiangming">登录账号：</div>
        <input name="textfield" type="text" id="textfield" size="1" style=" width:50%; height:20px; display:inline-block; float:right; margin-right:15%;   " />
        <div class="hongxing"></div>
    </div>

    <div class="tianxiang">
        <div class="xiangming">登录密码：</div>
        <input name="textfield" type="text" id="textfield" size="1" style=" width:50%; height:20px; display:inline-block; float:right; margin-right:15%;  " />
        <div class="hongxing"></div>
    </div>

    <div class="tianxiang">
        <div class="xiangming">确认密码：</div>
        <input name="textfield" type="text" id="textfield" size="1" style=" width:50%; height:20px; display:inline-block; float:right;  margin-right:15%; " />
        <div class="hongxing"></div>
    </div>

    <div class="tianxiang">
        <div class="xiangming">单位名称：</div>
        <input name="textfield" type="text" id="textfield" size="1" style=" width:50%; height:20px; display:inline-block; float:right; margin-right:15%;  " />
        <div class="hongxing"></div>
    </div>

    <div class="mianzhe">
        <div class="xuanzhe"><input name="tongyi" type="checkbox" value="1"></div>
        <div class="mianzhezi">同意<a>《免责声明》</a></div>
    </div>

    <div class="anniu">
        <div class="baochun" >保存并打印责任书</div>
        <div class="fanhui">返回</div>
    </div>
</div>
</div>




</body>
</html>

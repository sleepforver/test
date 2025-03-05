<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <script language="JavaScript" type="text/javascript">
        var cities = new Array(4);//联级
        cities[0] = new Array("中山市", "广州市", "深圳市", "湛江市", "茂名市");
        cities[1] = new Array("武汉市", "黄冈市", "襄阳市", "荆州市");
        cities[2] = new Array("长沙市", "郴州市", "株洲市", "岳阳市");
        cities[3] = new Array("石家庄市", "邯郸市", "廊坊市", "保定市");
        cities[4] = new Array("郑州市", "洛阳市", "开封市", "安阳市");

        function changeCity(val) {
            var cityEle = document.getElementById("city");
            cityEle.options.length = 0;
            for (var i = 0; i < cities.length; i++) {
                if (val == i) {
                    for (var j = 0; j < cities[i].length; j++) {
                        var textNode = document.createTextNode(cities[i][j]);
                        var opEle = document.createElement("option");
                        opEle.appendChild(textNode);
                        cityEle.appendChild(opEle);
                    }
                }
            }
        }

        function custCheck() {
            if (!test_name(one) || !test_pass(two) || !test_confirm(three) || !test_email(four))
                return false;

        }

        function test_name(one) {//用户名
            var custName = document.getElementById("custName");
            var one1 = custName.value.charAt(0);
            if (one1 < 56 || one1 > 90 && one1 < 96 || one1 > 121) {
                document.getElementById("one").style.display = "block";
                document.getElementById("one").innerHTML = "X错误：用户名要字母开头!";
                document.getElementById('one').style.color = 'red';
                return false;
            } else {
                document.getElementById("one").style.display = "block";
                document.getElementById("one").innerHTML = "√";
                document.getElementById('one').style.color = 'green';
                return true;
            }
        }

        function test_pass(two) {//密码长度
            var psw1 = document.getElementById("psw1");
            if (psw1.value.length < 6 || psw1.value.length > 8) {
                document.getElementById("two").style.display = "block";
                document.getElementById("two").innerHTML = "X错误：密码要求6到8位数!";
                document.getElementById("two").style.color = 'red';
                return false;
            } else {
                document.getElementById("two").style.display = "block";
                document.getElementById("two").innerHTML = "√";
                document.getElementById("two").style.color = 'green';
                return true;
            }
        }

        function test_confirm(three) {//密码确定
            var psw2 = document.getElementById("psw2");
            if (psw1.value != psw2.value) {
                document.getElementById("three").style.display = "block";
                document.getElementById("three").innerHTML = "X错误：两次密码不一致!";
                document.getElementById("three").style.color = 'red';
                return false;
            } else if (psw2.value == "") {
                document.getElementById("three").style.display = "block";
                document.getElementById("three").innerHTML = "X错误：两次密码为空!";
                document.getElementById("three").style.color = 'red';
                return false;
            } else {
                document.getElementById("three").style.display = "block";
                document.getElementById("three").innerHTML = "√";
                document.getElementById("three").style.color = 'green';
                return true;
            }
        }

        function test_email(four) {//邮箱验证
            var email = document.getElementById("email");
            reg = /^([a-zA-Z0-9]+[_|\-|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\-|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/gi;
            if (email.value == "") {
                document.getElementById("four").style.display = "block";
                document.getElementById("four").innerHTML = "X错误：请输入电子邮件!!";
                document.getElementById("four").style.color = 'red';
                return false;
            }
            //格式验证
            else if (!reg.test(email.value)) {
                document.getElementById("four").style.display = "block";
                document.getElementById("four").innerHTML = "X错误：电子邮件格式不对!（****@***.***）";
                document.getElementById("four").style.color = 'red';
                return false;
            } else {
                document.getElementById("four").style.display = "block";
                document.getElementById("four").innerHTML = "√";
                document.getElementById("four").style.color = 'green';
                return true;
            }
        }

    </script>
</head>
<title>用户注册</title>
<style type="text/css">
    *, input {
        font-size: 11pt;
        color: black
    }
</style>
</head >
<body>
<script>
</script>
<form action="UserInfo.jsp"
      method="post" onSubmit="return custCheck( )" accept-charset="UTF-8">
    用户注册:
    <table>

        <tr>
            <td>用户名:</td>
            <td><input type="text" name="custName" id="custName" onblur="test_name(one)">
            </td>
            <td><span id="one" style="display:none"></span></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input type="password" name="psw1" id="psw1" onblur="test_pass(two)"></td>
            <td><span id="two" style="display:none"></span></td>
        </tr>
        <tr>
            <td>确定密码：</td>
            <td><input type="password" name="psw2" id="psw2" onblur="test_confirm(three)"></td>
            <td><span id="three" style="display:none"></span></td>
        </tr>
        <tr>
            <td>性别</td>
            <td><input type="radio" value="女" name="sex">女
                <input type="radio" value="男" name="sex">男
            </td>
        </tr>
        <tr>
            <td>爱好</td>
            <td><input type=checkbox value="read" name="interest">读书
                <input type=checkbox value="swim" name="interest">游泳
                <input type=checkbox value="game" name="interest">游戏
                <input type=checkbox value="travel" name="interest">旅行
            </td>
        <tr>
            <td>来自：</td>
            <td><select name="province" onchange="changeCity(this.value)">
                <option>--省或直辖市--</option>
                <option value="0">广东</option>
                <option value="1">湖北</option>
                <option value="2">湖南</option>
                <option value="3">河北</option>
                <option value="4">河南</option>
            </select>
                <select id="city" name="city">
                    <option>--城市--</option>
                </select>
            </td>
        </tr>
        </tr>
        <tr>
            <td> 邮箱:</td>
            <td><input type="mail" name="email" id="email" onblur="test_email(four)"></td>
            <td><span id="four" style="display:none"></span></td>
        </tr>
        <td>相片:</td>
        <td><input type="file" name="img" multiple="multiple"/></td>
        </tr>
        <tr>
            <td><input type="submit" value="确定"><input type="reset" value="重置"></td>
        </tr>
    </table>
</form>
</body>
</html>

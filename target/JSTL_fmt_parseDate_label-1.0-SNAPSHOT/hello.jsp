<%--
  Created by IntelliJ IDEA.
  Project name(项目名称)：JSTL_fmt_parseDate_label
  Author(作者）: mao
  Author QQ：1296193245
  GitHub：https://github.com/maomao124/
  Date(创建日期)： 2022/1/4
  Time(创建时间)： 13:17
  Description(描述)：
  JSTL <fmt:parseDate> 标签用于把字符串类型的日期转换成日期数据类型。
JSP <fmt:parseDate> 标签的语法如下：
<fmt:parseDate
   value="parseDateValue"
   [dateStyle="default|short|medium|long|full"]
   [parseLocale="parseLocale"]
   [pattern="customPattern"]
   [scope="page|request|session|application"]
   [timeStyle="default|short|medium|long|full"]
   [timeZone="timeZone"]
   [type="time|date|both"]
   [var="varname"] />
其中，[ ]中的内容为可选项，以上参数说明如下表所示：
参数	        说明
value	要显示的日期
type	设置输出的类别，如 time、date 和 both
dateStyle	设定日期输出的格式
pattern	自定义格式的模式
timeStyle	设定日期的输出风格
timeZone	设定日期的时区
var	代表格式化后的数字，若设定了该参数，需要利用 <c:out> 标签输出
scope	设定参数 var 的有效范围，默认为 page
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:set var="date" value="11-07-2021   15:12:32" />
<fmt:parseDate value="${date}" var="parsedDate" pattern="dd-MM-yyyy   HH:mm:ss" />
<p>
    <c:out value="${parsedDate}" />
</p>
</body>
</html>

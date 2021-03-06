<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>寄件信息</title>
</head>
<body>
<form:form id="inputForm" modelAttribute="express" action="${ctx}/express/view" method="post" cssClass="sui-form form-horizontal sui-validate">
    <form:hidden path="id"/>
    <div class="main-con">
        <br/>
        <sys:message content="${message}"/>
        <c:if test="${not empty express.code}">
            <div class="control-group">
                <div class="controls">支付金额：<fmt:formatNumber value="${express.price}" pattern="0.00"/>元</div>
            </div>
            <div class="control-group">
                <div class="controls">快递单号：${express.code}</div>
            </div>
            <div class="control-group">
                <div class="controls">寄件时间：<fmt:formatDate value="${express.orderTime}" pattern="yyyy-MM-dd HH:mm:ss"/></div>
            </div>
        </c:if>
        <div class="control-group">
            <div class="controls">发件人姓名：${express.senderName}</div>
        </div>
        <div class="control-group">
            <div class="controls">联系方式：${express.senderMobile}</div>
        </div>
        <div class="control-group">
            <div class="controls">详细地址：${express.senderAddress}</div>
        </div>
        <div class="control-group">
            <div class="controls">收件人姓名：${express.consigneeName}</div>
        </div>
        <div class="control-group">
            <div class="controls">联系方式：${express.consigneeMobile}</div>
        </div>
        <div class="control-group">
            <div class="controls">详细地址：${express.consigneeAddress}</div>
        </div>
        <div class="control-group">
            <div class="controls">物品名称：${express.goodsName}</div>
        </div>
        <div class="control-group">
            <div class="controls">物品重量：${express.goodsWeight}KG</div>
        </div>
        <div class="control-group">
            <div class="controls">备注信息：${express.goodsRemarks}</div>
        </div>
        <hr/>
        <div class="control-group">
            <div class="controls">
                1、以上时效为预计到达时间，仅供参考，精准时效以运单追踪中的“签收时间”为准<br/>
                2、以上价格仅供参考，具体以寄件地市场价格为准，到付件价格请咨询当地网点<br/>
                3、快件限重20KG，超重快件会影响派送时效
            </div>
        </div>
    </div>
    <div class="express-code">
        <strong class="express-title" style="background: url(https://www.zto.com/imgs/express/code_icon.png) left center no-repeat;">单号订阅</strong>
        <div class="code-cont">
            <p>想要实时追踪此运单状态？扫码订阅，仅需一步!</p>
            <img src="${ctx}/image/sys/code.png" alt>
            <p>打开微信或支付宝扫描上方二维码即可订阅成功</p>
        </div>
    </div>
</form:form>
</body>
</html>

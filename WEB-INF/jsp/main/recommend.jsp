<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<h2>
	编辑推荐
</h2>
<div id="bianjituijian/danpin">
	<div class=second_c_02>
	
	<s:iterator value="books">
		<div class=second_c_02_b1>
			<div class=second_c_02_b1_1>
				<a href="http://localhost:8080/dangdang/main/book_view?id=${id }" ><img src="${pageContext.request.contextPath}/productImages/${product_pic }" width=70 border=0 /> </a>
			</div>
			<div class=second_c_02_b1_2>
				<h3>
					<a href="http://localhost:8080/dangdang/main/book_view?id=${id }" title='${product_name }'>书名:${product_name }</a>
				</h3>
				<h4>
					作者：${author } 著
					<br />
					出版社：${publishing }&nbsp;&nbsp;&nbsp;&nbsp;出版时间：${publish_dt }
				</h4>
				<h5>
					简介:${description }
				</h5>
				<h6>
					定价：￥${fixed_price }&nbsp;&nbsp;当当价：￥${dang_price }
				</h6>
				<div class=line_xx></div>
			</div>
		</div>
		</s:iterator>
		
	</div>
</div>

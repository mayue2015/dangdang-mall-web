<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="c1" uri="http://www.hynu.com.cn/mytag" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>当当图书 – 全球最大的中文网上书店</title>
		<script type="text/javascript" src="../js/prototype-1.6.0.3.js">
		</script>
		<link href="${pageContext.request.contextPath}/css/book.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/css/second.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/css/secBook_Show.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/css/list.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/book.list.js"></script>
	</head>
	<body>
		&nbsp;
		<!-- 头部开始 -->
		<%@include file="/common/head.jsp"%>
		<!-- 头部结束 -->
		<div style="width: 962px; margin: auto;">
			<a href="#"><img src="${pageContext.request.contextPath}/images/default/book_banner_081203.jpg" border="0" /> </a>
		</div>
		<div class='your_position'>
			您现在的位置:&nbsp;
			<a href="${pageContext.request.contextPath}/main/mainAction">当当图书</a> &gt;&gt;
			<font style='color: #cc3300'><strong></strong> </font>
		</div>
		<div class="book">
			<!--左栏开始-->
			<div id="left" class="book_left">
				<div id="__fenleiliulan">
					<div class=second_l_border2>
						<h2>
							分类浏览
						</h2>
						<ul>
							<li>
								<div>
									<div class=second_fenlei>
										&middot;全部&nbsp;(${totalPnum })
									</div>
								</div>
							</li>
							<div class="clear"></div>
							<!--2级分类开始-->
							<s:iterator value="cats" var="c">
							<li>
								<div>
									<div class=second_fenlei>
										&middot;
									</div>
									<s:if test="c2==#c.id">
									<div class=second_fenlei3>
										<a>${c.name }&nbsp;(${c.pnum })</a>
									</div>
									</s:if>
									<s:else>
									<div class=second_fenlei>
										<a href="booklistAction?c1=${c1 }&c2=${c.id}">${c.name }&nbsp;(${c.pnum })</a>
									</div>
									</s:else>
								</div>
							</li>
						    <div class="clear"></div>
						    </s:iterator>
							<!--2级分类结束-->
							<li>
								<div></div>
							</li>
						</ul>
					</div>
				</div>
			</div>

			<!--左栏结束-->
			<!--中栏开始-->
			<div class="book_center">
				<!--图书列表开始-->
				<div id="divRight" class="list_right">
					<div id="book_list" class="list_r_title">
						<div class="list_r_title_text">
							排序方式
						</div>
						<select onchange='' name='select_order' size='1'
							class='list_r_title_ml'>
							<option value="">
								按上架时间 降序
							</option>
						</select>
						<div id="divTopPageNavi" class="list_r_title_text3">
							<!--分页导航开始-->
							<s:if test="page>1">
							<div class='list_r_title_text3a'>
								<a name=link_page_next
									href="booklist.action?c1=${c1 }&c2=${c2}&page=${page-1}">
								<img src='${pageContext.request.contextPath}/images/page_up.gif' /> </a>
							</div>
							</s:if>
							<s:else>
							<div class='list_r_title_text3a'>
								<img src='${pageContext.request.contextPath}/images/page_up_gray.gif' />
							</div>
							</s:else>
							<div class='list_r_title_text3b'>
								第${page }页/共${maxPage }页
							</div>
							<s:if test="page < maxPage">
							<div class='list_r_title_text3a'>
								<a name=link_page_next
									href="booklistAction?c1=${c1 }&c2=${c2}&page=${page+1}">
									<img src='${pageContext.request.contextPath}/images/page_down.gif' /> </a>
							</div>
							</s:if>
							<s:else>
							<div class='list_r_title_text3a'>
								<img src='${pageContext.request.contextPath}/images/page_down_gray.gif' />
							</div>
							</s:else>
							<!--分页导航结束-->
						</div>
					</div>
					
					<!--商品条目开始-->
						<div class="list_r_line"></div>
						<s:iterator value="books" var="b">
						<div class="clear"></div>
						<div class="list_r_list">
							<span class="list_r_list_book"><a name="link_prd_img" href='book_view?id=${b.id }'>
								<img src="${pageContext.request.contextPath}/productImages/${b.product_pic }" /> </a> </span>
							<h2>
								<a name="link_prd_name" href='book_view?id=${b.id }'>${b.product_name }</a>
							</h2>
							<h3>
								顾客评分：100
							</h3>
							<h4 class="list_r_list_h4">
								作 者:
								<a href='#' name='作者'>${b.author }</a>
							</h4>
							<h4>
								出版社：
								<a href='#' name='出版社'>${b.publishing }</a>
							</h4>
							<h4>
								出版时间：${b.publish_dt }
							</h4>
							<h5>
									${b.description }
							</h5>
							<div class="clear"></div>
							<h6>
								<span class="del">￥${b.fixed_price}</span>
								<span class="red">￥${b.dang_price}</span>
								节省：￥<c1:retainTwo/>
							</h6>
							<span class="list_r_list_button"> 
							<a href="<%=request.getContextPath() %>/cart/cartBuy?id=${b.id }"> 
							<img src='${pageContext.request.contextPath}/images/buttom_goumai.gif' /> </a></span>
							<span id="cartinfo" class="mycartinfo"></span>
						</div>
						<div class="clear"></div>
						</s:iterator>
						<!--商品条目结束-->
					<div class="clear"></div>
					<div id="divBottomPageNavi" class="fanye_bottom">
					</div>

				</div>
				<!--图书列表结束-->
			</div>
			<!--中栏结束-->
			<div class="clear"></div>
		</div>
		<!--页尾开始 -->
		<%@include file="/common/foot.jsp"%>
		<!--页尾结束 -->
	</body>
</html>

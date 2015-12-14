<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="c1" uri="http://www.hynu.com.cn/mytag" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<HTML>
	<HEAD>
		<TITLE>图书 - 当当网</TITLE>
		<META http-equiv=Content-Type content="text/html; charset=utf-8">
		<LINK href="${pageContext.request.contextPath}/product_files/dangdang.css" type=text/css
			rel=Stylesheet>
		<LINK href="${pageContext.request.contextPath}/product_files/book1.css" type=text/css rel=stylesheet>
		<link href="${pageContext.request.contextPath}/css/book1.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/css/comm_answer.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/book.list.js"></script>

	</HEAD>
	<BODY>
		<%@include file="/common/head.jsp"%>
		
		<DIV id="tag_box" style="DISPLAY: none; Z-INDEX: 10; POSITION: absolute"></DIV>
		<DIV id="div_shield"></DIV>
		<DIV id="main">
			<DIV class=mainsearch></DIV>
			<DIV class=wrap>
				<!--left start-->
				<!--left end-->
				<DIV class=right>
					<DIV class=right_wai>
						<DIV class=shuming>
							<DIV class=shuming_left>
							
								<SPAN class=black000><A name=top_bk></A>${book.product_name
									}</SPAN>
							</DIV>
							<DIV class=book_case>
								<SPAN class=seriesname>丛书名： ${book.product_name }</SPAN>
							</DIV>
							<DIV class=empty_box></DIV>
						</DIV>
						<DIV class=book_left>
							<DIV class=book_pic>
								<IMG id=img_show_prd
										src="../productImages/${book.product_pic }">
								</A>
							</DIV>
							<INPUT id="hid_largepictureurl" type="hidden">
						</DIV>
						<DIV class="book_right">
							<DIV id="author_">
								作 者： ${book.author }
							</DIV>
							<DIV id="publisher_">
								出 版 社： ${book.publishing }
							</DIV>
							<UL>
								<LI>
									出版时间： ${book.publish_dt }
								</LI>
								<LI>
									字 数： ${book.word_number }
								</LI>
								<LI>
									版 次： ${book.which_edtion }
								</LI>
								<LI>
									页 数： ${book.total_page }
								</LI>
								<LI>
									印刷时间： ${book.print_dt }
								</LI>
								<LI>
									开 本： 16开
								</LI>
								<LI>
									印 次： ${book.print_number }
								</LI>
								<LI>
									纸 张： 胶版纸
								</LI>
								<LI>
									I S B N ： ${book.isbn }
								</LI>
								<LI>
									包 装： 平装
								</LI>
							</UL>

							<DIV class=jiage>
								<SPAN class=gray87>定价：<SPAN class=del id="originalPriceTag">￥${book.fixed_price
										}</SPAN>
								</SPAN>
								<SPAN class=redc30>当当价：￥<B>${book.dang_price }</B>
								</SPAN> 节省：￥<c1:retainTwo/>
								<DIV class=pd_buy_num>
									<DIV class=clear></DIV>
								</DIV>
								<DIV class=goumai>
									<span class="list_r_list_button"> 
							<a href="<%=request.getContextPath() %>/cart/cartBuy?id= ${book.id }"> 
							<img src='${pageContext.request.contextPath}/images/buttom_goumai.gif' /> </a></span>
							<span id="cartinfo" class="mycartinfo"></span>
								</DIV>
							</DIV>
						</DIV>
						<DIV id="dvTPUrls"></DIV>
						<DIV id="__zhinengbiaozhu_bk">
							<DIV class=dashed></DIV>
							<H2 class=black14>
								
							
							<DIV class=dashed></DIV>
							<H2 class=black14>
							
								内容简介
							</H2>
							<DIV class=zhengwen>
								${book.description }
							</DIV>
							<DIV class=dashed></DIV>
							<H2 class=black14>
								
								作者简介
							</H2>
							<DIV class=zhengwen>
								${book.author} ${book.author_summary }
							</DIV>
							<DIV class=dashed></DIV>
							<H2 class=black14>
								
								目录
							</H2>
							<DIV class=zhengwen>
								${book.catalogue }
							</DIV>
							<DIV class=dashed></DIV>
							<H2 class=black14>
								
								媒体评论
							</H2>
							<DIV class=zhengwen>
								好，非常畅销!难得的一本好书
							</DIV>
							<DIV class=dashed></DIV>
							<H2 class=black14>
							
								书摘插图
							</H2>
							<DIV class=zhengwen>
								第2章 对教育方法的历史回顾
								<BR>
								儿童之家使用的教育体系实际上已经向前迈出了一大步。假如人们认为我和正常儿童相处所得的经验相对短暂，那么此经验建立在以往对非正常儿童的教育经验基础之上，因此也代表着一段相当长期的思想。
								<BR>
								假如我们想开发出科学的教育体系，就必须开辟出一条前所未有的新路。教师们必须接受专业培训，同时而学校也必须进行转变。假如教师们都接受了观察与实验的培训，那他们必须在学校里执行这些活动。
								<BR>
								因此，科学教育体系的基本需求是有一个能允许儿童自由发展个性的学校。如果某种教育体系是基于对学生个体的研究，那么其研究方式应该是对行动自由的儿童进行观察和研究，而不是对一个受压制的学生进行观察和研究。
								<BR>
								在人类学和实验心理学的帮助下，在一个人应试教育为主的学校里，开发新型教育方法，是最愚蠢的想法。
								<BR>
								每个领域的实验科学，都是由使用自己独特的方法中发展而来。细菌学起源于分离并培育微生物。犯罪学、医学和教育学也都分别在不同类型的个体上使用过最初的人体测量方法，如在罪犯上、精神病人、医院里的临床病人、学生身上等。实验心理学在开始阶段就要指出执行实验的精确技术。
								<BR>
								……
							</DIV>
						</DIV>
						<A name=review_point></A>
					</DIV>
				</DIV>
				<DIV id="tag_box"
					style="DISPLAY: none; Z-INDEX: 2; POSITION: absolute"></DIV>
				<DIV id="tag_box_pay"
					style="DISPLAY: none; Z-INDEX: 2; POSITION: absolute"></DIV>
				<DIV id="div_shield"></DIV>
				<!--页尾 开始 -->
				<DIV class=public_footer_add_s></DIV>
				<!--09.3.10new-->
				<!--页尾 end -->
				<!--页尾开始 -->
				<%@include file="/common/foot.jsp"%>
				<!--页尾结束 -->
	</BODY>
</HTML>

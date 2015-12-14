<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<div class="book_l_border1" id="__FenLeiLiuLan">
	<div class="book_sort_tushu">
		<h2>
			分类浏览
		</h2>
		<s:iterator value="cats" var="c1">
		<!--1级分类开始-->
			<div class="bg_old" onmouseover="this.className = 'bg_white';"
				onmouseout="this.className = 'bg_old';">
				<h3>
					[<a href='#'>${c1.name }</a>]
				</h3>
				<ul class="ul_left_list">

					<s:iterator value="#c1.subCats" var="c2">
						<!--2级分类开始-->
						<li>
							<a href='${pageContext.request.contextPath}/main/booklistAction?c1=${c1.id }&c2=${c2.id }'>${c2.name}</a>
						</li>
						<!--2级分类结束-->
					</s:iterator>

				</ul>
				
				<div class="empty_left">
				</div>
			</div>

			<div class="more2">
			</div>
			<!--1级分类结束-->
		</s:iterator>

		<div class="bg_old">
			<h3>
				&nbsp;
			</h3>
		</div>
	</div>
</div>

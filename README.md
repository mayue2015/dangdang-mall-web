# dangdang-mall-web
仿照当当网的前端web练习项目(Jsp/Css/Js/Jquery/html)

1.项目需求:模拟当当网开发一套电子商务系统.
 
--模拟产品浏览,购物车,订单,用户管理等功能.
  
1)用户管理模块user
  	
  用户登录,用户注册,邮箱的验证
  
2)产品浏览模块main
   
  产品主界面,分类浏览界面
 
3)购物车模块cart
  
  购买,删除,恢复,更新数量等
 
4)订单模块order
   
  订单确认,填写送货地址,订单生成

2.技术架构
  
主要采用Ajax+Struts2+JDBC开发技术.
 
 基于MVC模式分层设计.
 
 表现层:JSP,Ajax,jQuery
 
 控制层:Struts2  Filter控制器+ Action
  
 业务层:Sevice组件(业务复杂)
  
 数据访问层:DAO组件,基于JDBC技术

3.页面,CSS,JS等文件
    
/WebRoot/css
   
/WebRoot/js
   
/WebRoot/images 系统页面图片
    
/WebRoot/productImages 图书图片
   
/WebRoot/user/用户模块页面
    
/WebRoot/cart/购物车页面
   
/WebRoot/order/订单模块页面
    
/WebRoot/main/产品浏览模块页面
   
/WebRoot/common/共通页面,页眉和页脚

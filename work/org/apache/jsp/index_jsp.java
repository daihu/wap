package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.HashMap;
import com.zhazh.wap.BizInvoker;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\r\n");
      out.write("   \r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//WAPFORUM//DTD XHTML Mobile 1.0//EN\" \"http://www.wapforum.org/DTD/xhtml-mobile10.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n");
      out.write("<title>Zhazh手机报名</title>\r\n");
      out.write("<link href=\"css/wap.css\" rel=\"stylesheet\" type=\"text/css\" /></head>\r\n");
      out.write("<body>\r\n");
      out.write("<div class=\"top\">\r\n");
      out.write("\t<img src=\"img/logo.gif\" alt=\"\" width=\"132\" height=\"29\" hspace=\"0\" vspace=\"0\" border=\"0\" />\r\n");
      out.write("<div align=\"center\"><img src=\"img/jmgj_banner.jpg\" width=\"978\" height=\"254\" hspace=\"0\" vspace=\"0\" border=\"0\" />\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"center\">\r\n");
      out.write("<p>\r\n");
      out.write("\r\n");
      out.write("<strong>【活动介绍】</strong><br/>\r\n");
      out.write("小找：#京贸国际公寓-找啊找跳蚤市场#\r\n");
      out.write("你是不是还在为宝宝长大了，闲置的童车玩具无处堆放、扔了又可惜而烦恼；你是不是还在为换了IPHONE4，原来的宝贝诺基亚躺在角落落满灰尘而惋惜；你是不是还在为买了新田园沙发，原来的欧式家具无法处理而头大；快来京贸国际公寓-找啊找跳蚤市场练摊吧，这里都是你的好邻居们，他们也有你需要的好东东，他们也特别需要你的诺基亚和欧式沙发，或许他们还有个即将出生的小宝宝正在为选购第二辆折叠童车而头大。每个人心里都有一个练摊的小梦想，工作繁忙事务繁多，让大家忽略了那份童真。和熟识的好友一起练练摊，比比谁的嗓门更大，比比谁的招牌更显眼，比比谁的东东更受欢迎，在夏末秋初的日子里，给自己一个放飞心情、找回童真的理由。\r\n");
      out.write("找啊找跳蚤市场由经验丰富的专业团队组织，专业布展公司布展。所有人都是免费参与，给大家免费提供特别铺设的地摊，还给想来练练摊的你免费赠送折叠小板凳，呵护你的小体格。如果你只是想来逛逛，找啊找跳蚤市场为所有人提供了小礼品，还有丰富的抽奖机会哦，当然如果你是摊主，还能竞争最拉风摊主奖、最人气摊主奖、最会吆喝奖等等丰富奖项。摊位只有50个，先到先得，赶紧来抢占你的地盘吧。\r\n");
      out.write("此次跳蚤市场由找啊找与京贸国际公寓天旭物业、京贸国际公寓居委会倾力合作，众多媒体关注。时间：2011年8月20日下午4：00-6：00，地点：京贸国际公寓后花园<br />\r\n");
      out.write("\r\n");
      out.write("</p>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"foot\">\r\n");
      out.write("<p>www.zhazh.com</p>\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

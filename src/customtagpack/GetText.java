package customtagpack;

import java.io.IOException;
import java.util.Locale;
import java.util.ResourceBundle;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

@SuppressWarnings("serial")
public class GetText extends TagSupport {

	String key;

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	@Override
	public int doEndTag() throws JspException {

		JspWriter write = pageContext.getOut();
		ResourceBundle rb;
		try {
			if (pageContext.getSession().getAttribute("langselected") == null) {
				rb = ResourceBundle.getBundle("dictionary", new Locale("en"));

				pageContext.getSession().setAttribute("langselected", rb);
			}

			rb = (ResourceBundle) pageContext.getSession().getAttribute(
					"langselected");

			write.println(rb.getString(key));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return super.doEndTag();
	}
}

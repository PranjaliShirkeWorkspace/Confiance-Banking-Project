package com.bank.ctrl;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bank.bean.PaymentBean;
import com.bank.entity.Cards;
import com.bank.service.CardService;
/**
 * @author Ratan Boddu Version 1.0
 */
@Controller
public class PaymentController {
	@Autowired
	CardService service;

	@RequestMapping(value = "process.bank", method = RequestMethod.POST)
	public String processPayment(PaymentBean bean, Map model, HttpServletRequest request) {
System.out.println(bean.getCardNo());
System.out.println(bean.getPin());
System.out.println(bean.getUpi());
System.out.println(bean.getAmount());
		model.put("Pay", bean);
		String referer = request.getHeader("referer");
		String addr = request.getRemoteAddr();

		int lisl = referer.lastIndexOf("/");
		String trimmed = referer.substring(0, lisl + 1);
		String target = trimmed.replace("localhost", addr);

		Cards cards = new Cards();
		cards = service.checkCardInfo(bean);
		if (cards != null) {
			String kyahua = service.doTransaction(cards, bean);
			String status = kyahua;
			model.put("CardNo", bean.getCardNo());
			model.put("Amount", bean.getAmount());
			model.put("Info", status);
			model.put("Value", status);
		} else {
			model.put("Info", "invalid");
			model.put("Value", "invalid");
		}
		model.put("Target", target);

		return "confirmtest";
	}
}

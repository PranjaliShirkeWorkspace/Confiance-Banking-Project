package com.bank.repo;

import java.util.Date;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.bank.bean.PaymentBean;
import com.bank.entity.Accounts;
import com.bank.entity.Cards;
import com.bank.entity.Transactions;

/**
 * @author Ratan Boddu
 * Version 1.0
 */
@Repository
public class CardRepoImpl implements CardRepo {

	@Autowired
	private SessionFactory sessionFactory;

	@Transactional(propagation = Propagation.REQUIRED)
	@Override
	public void add(Cards card) {
		Session session = sessionFactory.getCurrentSession();
		session.save(card);

	}

	@Transactional(propagation = Propagation.REQUIRED)
	@Override
	public Accounts account(String accno) {
		Session session = sessionFactory.getCurrentSession();
		Accounts acc = (Accounts) session.load(Accounts.class, accno);
		return acc;
	}

	@Transactional(propagation = Propagation.REQUIRED)
	@Override
	public Cards checkCardsInfo(PaymentBean bean) {
		Session session = sessionFactory.getCurrentSession();
		System.out.println(bean.getPin());
		Query hql = session.createQuery("from Cards where card_no=:cardno and pin=:pin");
		hql.setParameter("cardno", bean.getCardNo());
		hql.setParameter("pin", bean.getPin());
		return (Cards) hql.uniqueResult();
	}

	@Transactional(propagation = Propagation.REQUIRED)
	@Override
	public String doTransaction(Cards cards, PaymentBean bean) {
		
		Session session = sessionFactory.getCurrentSession();
		
		Query hqlUser = session.createQuery("from Accounts where accountNo=:accno");
		hqlUser.setParameter("accno", cards.getAccounts().getAccountNo());
		Accounts userCardAccountDetails=(Accounts) hqlUser.uniqueResult();
		
		Query hqlVendor = session.createQuery("from Accounts where accountNo=:accnoVendor");
		hqlVendor.setParameter("accnoVendor", bean.getUpi());
		Accounts vendorCardAccountDetails=(Accounts) hqlVendor.uniqueResult();
		
		if(userCardAccountDetails.getBalance()<bean.getAmount()) {
			return "insufficient";
		}
		else {
			
			
			double userAccount;
			double vendorAccount;
			userAccount=userCardAccountDetails.getBalance()-bean.getAmount();
			vendorAccount=vendorCardAccountDetails.getBalance()+bean.getAmount();
			
			SQLQuery sqlQueryUser = session.createSQLQuery("UPDATE accounts SET balance = '"+
					userAccount +"' WHERE account_no = '"+ userCardAccountDetails.getAccountNo() + "'");
			sqlQueryUser.executeUpdate();
			
			SQLQuery sqlQueryVendor = session.createSQLQuery("UPDATE accounts SET balance = '"+
					vendorAccount +"' WHERE account_no = '"+ vendorCardAccountDetails.getAccountNo() + "'");
			sqlQueryVendor.executeUpdate();
			
			
			Query hqlUserTransact = session.createQuery("from Accounts where account_no=:accno");
			hqlUserTransact.setParameter("accno", cards.getAccounts());
			Accounts userCardAccountDetailsTransact=(Accounts) hqlUserTransact.uniqueResult();
			
			Query hqlVendorTransact = session.createQuery("from Accounts where account_no=:accnoVendor");
			hqlVendorTransact.setParameter("accnoVendor", bean.getUpi());
			Accounts vendorCardAccountDetailsTransact=(Accounts) hqlVendorTransact.uniqueResult();
			
			
			long millis=System.currentTimeMillis();
			Date endDate=new java.sql.Date(millis);
		
			
			Transactions txnUser= new Transactions();
			txnUser.setAccounts(cards.getAccounts());
			txnUser.setTransactionType("DB");
			txnUser.setAmount(bean.getAmount());
			txnUser.setTimestamp(endDate);
			txnUser.setBalance(userAccount);
			txnUser.setMessage("Via Payment Gateway");
			session.save(txnUser);
			
			Accounts accVendor=new Accounts();
			accVendor.setAccountNo(bean.getUpi());
			
			Transactions txnVendor= new Transactions();
			txnVendor.setAccounts(accVendor);
			txnVendor.setTransactionType("CR");
			txnVendor.setAmount(bean.getAmount());
			txnVendor.setTimestamp(endDate);
			txnVendor.setBalance(vendorAccount);
			txnVendor.setMessage("Via Payment Gateway");
			session.save(txnVendor);
						
			return "success";		
			
		}
		
	}
	
	@Transactional(propagation = Propagation.REQUIRED)
	@Override
	public Cards checkCard(String accountNo) {
		Session session = sessionFactory.getCurrentSession();
		Query hql = session.createQuery("from Cards where account_no=:accno");
		hql.setParameter("accno", accountNo);
		return (Cards) hql.uniqueResult();
	}

	@Transactional(propagation = Propagation.REQUIRED)
	@Override
	public Cards fetchDetails(String accNo) {
		Session session = sessionFactory.getCurrentSession();
		Query hql = session.createQuery("from Cards where account_no=:accno");
		hql.setParameter("accno", accNo);
		return (Cards) hql.uniqueResult();
		
	}

	
	
}

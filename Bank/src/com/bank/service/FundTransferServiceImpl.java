package com.bank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bank.bean.RegisterPayeeBean;
import com.bank.bean.UpiBean;
import com.bank.entity.Accounts;
import com.bank.entity.Payee;
import com.bank.repo.FundTransferRepo;

@Service
public class FundTransferServiceImpl implements FundTransferService {

	public FundTransferServiceImpl() {
	}

	@Autowired
	private FundTransferRepo repo;

	@Override
	public boolean transferPayee(String payer, int payeeSrNo, double amount, String message) {

		if (repo.transferPayee(payer, payeeSrNo, amount, message)) {
			return true;
		} else {
			return false;
		}

	}

	@Override
	public boolean transferUpi(UpiBean upiBean) {

		if (repo.transferUpi(upiBean)) {
			return true;
		} else {
			return false;

		}

	}

	@Override
	public boolean registerPayee(RegisterPayeeBean registerPayeeBean) {

		if (repo.registerPayee(registerPayeeBean)) {
			return true;
		} else {
			return false;
		}

	}

	@Override
	public Accounts getUpiHolder(UpiBean upiBean) {

		if (repo.getUpiHolder(upiBean) != null) {
			return repo.getUpiHolder(upiBean);
		} else {

			return null;
		}

	}

	@Override
	public List<Payee> getRegisteredPayee(Accounts user) {

		if (repo.getRegisteredPayee(user) != null) {
			List<Payee> payee = repo.getRegisteredPayee(user);
			for (Payee payee2 : payee) {
			}

			return payee;
		} else {
			return null;
		}

	}

	@Override
	public Accounts checkIfPayeeExists(RegisterPayeeBean registerPayeeBean) {
		return repo.checkIfPayeeExists(registerPayeeBean);
	}

	@Override
	public Accounts getNewAccountInfo(String payerAccountNumber) {
		return repo.getNewAccountInfo(payerAccountNumber);
	}

	@Override
	public Accounts getNewAccountInfoUpi(String payerUpi) {
		return repo.getNewAccountInfoUpi(payerUpi);
	}

}

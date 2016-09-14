package com.vernaillen.liferay.service;

import java.util.List;

import com.vernaillen.liferay.model.Contact;

public interface ContactService {
	public void addContact(Contact contact);
	public List<Contact> listContact();
	public void removeContact(Integer id);
}

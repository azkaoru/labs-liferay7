package com.vernaillen.liferay.service;


import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.concurrent.atomic.AtomicInteger;

import org.springframework.stereotype.Service;

import com.vernaillen.liferay.model.Contact;

@Service
public class ContactServiceImpl implements ContactService {

	private static List<Contact> contactList = new ArrayList<>();
	
	public static AtomicInteger counter = new AtomicInteger(0);

	public void addContact(Contact contact) {
		contact.setId(counter.getAndIncrement());
		contactList.add(contact);
	}

	public List<Contact> listContact() {
		return contactList;
	}

	public void removeContact(Integer id) {
		Optional<Contact> findFirst = contactList.stream().filter(contact -> contact.getId().compareTo(id) == 0).findFirst();
		findFirst.ifPresent(target -> contactList.remove(target));
	}
}

package com.infidata.services;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.infidata.modal.Office;
import com.infidata.repository.OfficeRepository;

@Service
@Transactional
public class OfficeService {

private final OfficeRepository officeRepository;
	
	public OfficeService(OfficeRepository officeRepository) {
		this.officeRepository=officeRepository;
	}
	
	public void saveMyOffice(Office office ) {
		officeRepository.save(office);
	}
}

package com.lemon.jee.modules.common.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.lemon.jee.modules.common.model.SysItemDetails;

@Repository
public interface SysItemDetailsRepository extends JpaRepository<SysItemDetails, Long> {

	Page<SysItemDetails> findByItemsId(Long itemsId, Pageable pageable);
	
}
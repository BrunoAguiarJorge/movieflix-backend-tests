package com.devsuperior.movieflix.services;

import java.util.Optional;

import javax.persistence.EntityNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.devsuperior.movieflix.dto.GenreDTO;
import com.devsuperior.movieflix.entities.Genre;
import com.devsuperior.movieflix.repositories.GenreRepository;
import com.devsuperior.movieflix.services.exceptions.DataBaseException;
import com.devsuperior.movieflix.services.exceptions.ResourceNotFoundException;

@Service
public class GenreService {

	// connect this service class to the categoryRepository class to fetch
	// information from repository class
	@Autowired
	private GenreRepository repository;

	@Transactional(readOnly = true)
	public Page<GenreDTO> findAllPaged(PageRequest pageRequest) {
		Page<Genre> list = repository.findAll(pageRequest);
		return list.map(x -> new GenreDTO(x));

	}

	@Transactional(readOnly = true)
	public GenreDTO findById(Long id) {
		Optional<Genre> obj = repository.findById(id);
		Genre entity = obj.orElseThrow(() -> new ResourceNotFoundException("Entity Not Found"));
		return new GenreDTO(entity);

	}

	@Transactional
	public GenreDTO insert(GenreDTO dto) {
		Genre entity = new Genre();
		entity.setName(dto.getName());
		entity = repository.save(entity);
		return new GenreDTO(entity);
	}

	@Transactional
	public GenreDTO update(Long id, GenreDTO dto) {
		try {
			Genre entity = repository.getOne(id);
			entity.setName(dto.getName());
			entity = repository.save(entity);
			return new GenreDTO(entity);
		} catch (EntityNotFoundException e) {
			throw new ResourceNotFoundException("Id not found " + id);
		}
	}

	public void delete(Long id) {
		try {
			repository.deleteById(id);
		} catch (EmptyResultDataAccessException e) {
			throw new ResourceNotFoundException("Id not found " + id);
		} catch (DataIntegrityViolationException e) {
			throw new DataBaseException("Integrity violation");
		}

	}
}

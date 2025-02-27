package com.devsuperior.movieflix.resources.exceptions;

import java.time.Instant;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import com.devsuperior.movieflix.services.exceptions.DataBaseException;
import com.devsuperior.movieflix.services.exceptions.ResourceNotFoundException;

@ControllerAdvice
public class ResourceExceptionHandler {

	@ExceptionHandler(ResourceNotFoundException.class)
	public ResponseEntity<StandardError> entityNotFound(ResourceNotFoundException e, HttpServletRequest request) {
		HttpStatus status = HttpStatus.NOT_FOUND;
		StandardError err = new StandardError();
		err.setTimestamp(Instant.now());
		err.setStatus(status.value());
		err.setError("Resouce Not Found");
		err.setMessage(e.getMessage());
		err.setPath(request.getRequestURI());
		return ResponseEntity.status(status).body(err);

	}

	@ExceptionHandler(DataBaseException.class)
	public ResponseEntity<StandardError> database(ResourceNotFoundException e, HttpServletRequest request) {
		HttpStatus status = HttpStatus.BAD_REQUEST;
		StandardError err = new StandardError();
		err.setTimestamp(Instant.now());
		err.setStatus(status.value());
		err.setError("Database Exception");
		err.setMessage(e.getMessage());
		err.setPath(request.getRequestURI());
		return ResponseEntity.status(status).body(err);

	}

	@ExceptionHandler(MethodArgumentNotValidException.class)
	public ResponseEntity<ValidationError> validation(MethodArgumentNotValidException e, HttpServletRequest request) {
		HttpStatus status = HttpStatus.UNPROCESSABLE_ENTITY;
		ValidationError err = new ValidationError();
		err.setTimestamp(Instant.now());
		err.setStatus(status.value());
		err.setError("Validation Exception");
		err.setMessage(e.getMessage());
		err.setPath(request.getRequestURI());

		for (FieldError f : e.getBindingResult().getFieldErrors()) {
			err.addError(f.getField(), f.getDefaultMessage());
		}
		return ResponseEntity.status(status).body(err);

	}

//	@ExceptionHandler(AmazonServiceException.class)
//	public ResponseEntity<StandardError> amazonService(AmazonServiceException e, HttpServletRequest request) {
//		HttpStatus status = HttpStatus.BAD_REQUEST;
//		StandardError err = new StandardError();
//		err.setTimestamp(Instant.now());
//		err.setStatus(status.value());
//		err.setError("AWS Exception");
//		err.setMessage(e.getMessage());
//		err.setPath(request.getRequestURI());
//		return ResponseEntity.status(status).body(err);
//
//	}
//
//	@ExceptionHandler(AmazonClientException.class)
//	public ResponseEntity<StandardError> amazonClient(AmazonClientException e, HttpServletRequest request) {
//		HttpStatus status = HttpStatus.BAD_REQUEST;
//		StandardError err = new StandardError();
//		err.setTimestamp(Instant.now());
//		err.setStatus(status.value());
//		err.setError("AWS Exception");
//		err.setMessage(e.getMessage());
//		err.setPath(request.getRequestURI());
//		return ResponseEntity.status(status).body(err);
//
//	}

	@ExceptionHandler(IllegalArgumentException.class)
	public ResponseEntity<StandardError> illegalArgument(IllegalArgumentException e, HttpServletRequest request) {
		HttpStatus status = HttpStatus.BAD_REQUEST;
		StandardError err = new StandardError();
		err.setTimestamp(Instant.now());
		err.setStatus(status.value());
		err.setError("Bad Request");
		err.setMessage(e.getMessage());
		err.setPath(request.getRequestURI());
		return ResponseEntity.status(status).body(err);

	}

}
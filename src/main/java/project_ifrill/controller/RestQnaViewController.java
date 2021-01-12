package project_ifrill.controller;

import java.net.URI;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import project_ifrill.dto.QnA;
import project_ifrill.exception.DuplicateException;
import project_ifrill.service.QnAService;

@RestController
@RequestMapping("/api")
public class RestQnaViewController {

	@Autowired
	private QnAService service;
	
	@GetMapping("/listAllQnA")
	public ResponseEntity<Object> listAllQnA(){
		System.out.println("listAllQnA()");
		return ResponseEntity.ok(service.listAllQnA());
	}
	
	@GetMapping("/getQnA/{no}")
	public ResponseEntity<Object> getQnA(@PathVariable Integer no){
		System.out.println("getQnA()" + no);
		QnA qnA = service.getQnA(no);
		if(qnA == null) {
			return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
		}
		return ResponseEntity.ok(service.getQnA(no));
	}
	
	@PostMapping("/insertQnA/")
	public ResponseEntity<Object> insertQnA(@RequestBody QnA qnA){
		System.out.println("insertQnA() --> " + qnA);
		try {
			service.insertQnA(qnA);
			URI uri = URI.create("/api/insertQnA/" + qnA.getNo());
			return ResponseEntity.created(uri).body(qnA.getNo());
		}catch(DuplicateException e) {
			return ResponseEntity.status(HttpStatus.CONFLICT).build();
		}
	}
	
//	@GetMapping("/getQnaLists")
//	public ResponseEntity<Object> getQnaLists(@RequestBody QnA qnA){
//		System.out.println("getQnaLists() Qna --> " + qnA);
//		ArrayList<QnA> qnaList = service.listAllQnA();
//		
//		if(qnaList == null) {
//			return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
//		}
//		return ResponseEntity.ok(qnaList);
//	}
}

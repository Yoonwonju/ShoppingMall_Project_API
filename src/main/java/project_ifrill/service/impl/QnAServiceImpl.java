package project_ifrill.service.impl;

import java.util.ArrayList;

import org.apache.ibatis.logging.Log;
import org.apache.ibatis.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project_ifrill.dto.QnA;
import project_ifrill.mapper.QnAMapper;
import project_ifrill.service.QnAService;

@Service
public class QnAServiceImpl implements QnAService {
	protected static final Log log = LogFactory.getLog(QnAServiceImpl.class);
	
	@Autowired
	private QnAMapper mapper;

	@Override
	public ArrayList<QnA> listAllQnA() {
		ArrayList<QnA> list = mapper.listAllQnA();
		log.debug("service - listAllQnA >> ");
		return list;
	}

	@Override
	public QnA getQnA(int no) {
		QnA qnA = mapper.getQnA(no);
		log.debug("service - getQnA no >> " + no);
		return qnA;
	}

	@Override
	public int insertQnA(QnA qna) {
		log.debug("service - insertQnA() qna >> " + qna);
		return mapper.insertQnA(qna);
	}

	@Override
	public int updateQnA(QnA qna) {
		log.debug("service - updateQnA qna >> " + qna);
		return mapper.updateQnA(qna);
	}

	@Override
	public ArrayList<QnA> listQna(String id) {
		ArrayList<QnA> list = mapper.listQna(id);
		log.debug("service - listQna() id >> " + id);
		return list;
	}
}

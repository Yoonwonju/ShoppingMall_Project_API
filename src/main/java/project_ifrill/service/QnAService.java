package project_ifrill.service;

import java.util.ArrayList;

import project_ifrill.dto.QnA;

public interface QnAService {
	public ArrayList<QnA> listAllQnA();

	public QnA getQnA(int no);

	public int insertQnA(QnA qna);

	public int updateQnA(QnA qna);

	public ArrayList<QnA> listQna(String id);

}

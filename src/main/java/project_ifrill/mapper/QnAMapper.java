package project_ifrill.mapper;

import java.util.ArrayList;

import project_ifrill.dto.QnA;

public interface QnAMapper {
	ArrayList<QnA> listAllQnA();
    QnA getQnA(int no);                
    int insertQnA(QnA qna);
    
    //관리자 모드
    int updateQnA(QnA qna);
    ArrayList<QnA> listQna(String id);  
//    int deleteQnA(int id);
}

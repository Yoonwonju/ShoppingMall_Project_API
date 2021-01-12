package project_ifrill.service;

import java.util.ArrayList;

import project_ifrill.dto.Address;
import project_ifrill.dto.Member;

public interface MemberService {
	
	ArrayList<Address> showAddressByDong(String dong);
	
	// 회원 가입
	int joinMember(Member member);
	// 회원 수정
	int updateMember(Member member);
	// 비밀번호 변경
	int changePass1(Member member);
	// 회원 탈퇴
	int leaveMember(Member member);
	// 관리자 회원 탈퇴
	int deleteMember(Member member);
	// ID 중복 체크
	int confirmId(String userId);
	
	Member getMember(String id);
	
	//관리자모드
	ArrayList<Member> getMemberList(String memberName);
}

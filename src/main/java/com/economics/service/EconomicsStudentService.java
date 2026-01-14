package com.economics.service;

import org.springframework.stereotype.Service;

@Service
public class EconomicsStudentService {

	public String checkEligibility(String studentRollNo) {

		int attendance = 0;

		if (studentRollNo.equals("23ECO101")) {
			attendance = 87;
		} else if (studentRollNo.equals("23ECO102")) {
			attendance = 57;
		} else if (studentRollNo.equals("23ECO103")) {
			attendance = 90;
		} else if (studentRollNo.equals("23ECO104")) {
			attendance = 82;
		} else if (studentRollNo.equals("23ECO105")) {
			attendance = 47;
		} else if (studentRollNo.equals("23ECO106")) {
			attendance = 50;
		} else if (studentRollNo.equals("23ECO107")) {
			attendance = 77;
		} else if (studentRollNo.equals("23ECO108")) {
			attendance = 75;
		} else if (studentRollNo.equals("23ECO109")) {
			attendance = 36;
		} else if (studentRollNo.equals("23ECO110")) {
			attendance = 80;
		} else if (studentRollNo.equals("23ECO111")) {
			attendance = 77;
		} else if (studentRollNo.equals("23ECO112")) {
			attendance = 87;
		} else if (studentRollNo.equals("23ECO113")) {
			attendance = 0;
		} else if (studentRollNo.equals("23ECO114")) {
			attendance = 0;
		} else if (studentRollNo.equals("23ECO115")) {
			attendance = 66;
		} else if (studentRollNo.equals("23ECO116")) {
			attendance = 75;
		} else if (studentRollNo.equals("23ECO117")) {
			attendance = 72;
		} else if (studentRollNo.equals("23ECO118")) {
			attendance = 89;
		} else if (studentRollNo.equals("23ECO119")) {
			attendance = 76;
		} else if (studentRollNo.equals("23ECO120")) {
			attendance = 95;
		}

		if (attendance >= 75) {
			return "Eligible for Final Examination";
		} else {
			return "Not Eligible for Final Examination";
		}
	}
}

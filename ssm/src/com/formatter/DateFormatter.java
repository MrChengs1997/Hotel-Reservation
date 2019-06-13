package com.formatter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.format.Formatter;

public class DateFormatter implements Formatter<Date>{

	 SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
	@Override
	public String print(Date arg0, Locale arg1) {
		// TODO Auto-generated method stub
		return simpleDateFormat.format(arg0);
	}

	@Override
	public Date parse(String arg0, Locale arg1) throws ParseException {
		// TODO Auto-generated method stub
		return simpleDateFormat.parse(arg0);
	}



}

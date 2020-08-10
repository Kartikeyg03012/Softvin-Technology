package com.Model;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.SplittableRandom;

public class SendOtpSms {
	public static String genrateOtp(int length) {
		SplittableRandom sr = new SplittableRandom();
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < length; i++) {
			sb.append(sr.nextInt(0, 10));

		}
		return sb.toString();
	}

	public static void main(String[] args) {
		try {
			// Construct data
			String apiKey = "apikey=" + URLEncoder.encode("NVDRjm7ss0g-hazWLDIYgocG4XT91d6pneQin3lnPs", "UTF-8");
			String message = "&message=" + URLEncoder
					.encode("Thank you for Register in our Company \n Your 6 digit OTP(One Time Password) is:"
							+ SendOtpSms.genrateOtp(6) + " Please do not share with anyone.", "UTF-8");
			String sender = "&sender=" + URLEncoder.encode("TXTLCL", "UTF-8");
			String numbers = "&numbers=" + URLEncoder.encode("917566437956", "UTF-8");

			// Send data
			String data = "https://api.textlocal.in/send/?" + apiKey + numbers + message + sender;
			URL url = new URL(data);
			URLConnection conn = url.openConnection();
			conn.setDoOutput(true);

			// Get the response
			BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line;
			String sResult = "";
			while ((line = rd.readLine()) != null) {
				// Process line...
				sResult = sResult + line + " ";
			}
			rd.close();

			System.out.println(sResult);
		} catch (Exception e) {
			System.out.println("Error SMS " + e);
			System.out.println("Error " + e);
		}
	}
}
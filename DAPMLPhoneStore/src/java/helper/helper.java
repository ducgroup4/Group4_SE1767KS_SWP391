/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package helper;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Currency;
import java.util.Date;
import java.util.Locale;
import java.util.Random;
import org.mindrot.jbcrypt.BCrypt;

public class helper {
//    public static void main(String[] args) {
//        int amount = 123456789; // Replace with your integer value
//        String formattedAmount = convertToVietnameseDong(amount);
//        System.out.println(formattedAmount);
//    }

    public static String convertToVietnameseDong(int amount) {
        Locale locale = new Locale("vi", "VN");
        NumberFormat currencyFormatter = NumberFormat.getCurrencyInstance(locale);
        Currency vietnameseDong = Currency.getInstance("VND");
        currencyFormatter.setCurrency(vietnameseDong);
        return currencyFormatter.format(amount);
    }

    public static String convertVNDtoUSD(double priceVND) {
        DecimalFormat decimalFormat = new DecimalFormat("#.00");
        double priceUSD = priceVND / 23000;
        String roundedValue = decimalFormat.format(priceUSD);
        return roundedValue;
    }

    public static String convertToVietnameseDong(double amount) {
        Locale locale = new Locale("vi", "VN");
        NumberFormat currencyFormatter = NumberFormat.getCurrencyInstance(locale);
        Currency vietnameseDong = Currency.getInstance("VND");
        currencyFormatter.setCurrency(vietnameseDong);
        return currencyFormatter.format(amount);
    }

    public static String convertToVietnameseDong(String amount) {
        Locale locale = new Locale("vi", "VN");
        NumberFormat currencyFormatter = NumberFormat.getCurrencyInstance(locale);
        Currency vietnameseDong = Currency.getInstance("VND");
        currencyFormatter.setCurrency(vietnameseDong);
        return currencyFormatter.format(amount);
    }

//    public static String generateRandomString() {
//        int length = 6;
//        String characters = "0123456789";
//        StringBuilder sb = new StringBuilder();
//
//        Random random = new Random();
//        for (int i = 0; i < length; i++) {
//            int index = random.nextInt(characters.length());
//            char randomChar = characters.charAt(index);
//            sb.append(randomChar);
//        }
//
//        return sb.toString();
//    }
    public static String convertDateToString(Date date) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        return dateFormat.format(date);
    }

    public static String getCurrentDateAsString() {
        LocalDate currentDate = LocalDate.now();
        DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        return currentDate.format(dateFormatter);
    }

    public static int convertToInteger(String dongString) {
        String numericString = dongString.replaceAll("[^\\d.-]", "");
        int dongAmount = Integer.parseInt(numericString);
        return dongAmount;
    }

    public static double convertVndToDouble(String vndString) {
        // Remove decimal point and currency symbol
        String cleanedString = vndString.replaceAll("\\.", "").replaceAll("đ", "");

        // Convert to double
        double result = Double.parseDouble(cleanedString);

        return result;
    }

    public static double convertToDouble(String dongString) {
        String numericString = dongString.replaceAll("[^\\d.]", "");
        double dongAmount = Double.parseDouble(numericString);
        return dongAmount * 1000;
    }

    public static String encodePassword(String password) {
        try {
            // Generate a random salt
            SecureRandom secureRandom = new SecureRandom();
            byte[] salt = new byte[16];
            secureRandom.nextBytes(salt);

            // Create the message digest and update with the salt and password bytes
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(salt);
            byte[] passwordBytes = password.getBytes();
            byte[] hashedBytes = messageDigest.digest(passwordBytes);

            // Combine the salt and hashed password bytes into a single byte array
            byte[] combinedBytes = new byte[salt.length + hashedBytes.length];
            System.arraycopy(salt, 0, combinedBytes, 0, salt.length);
            System.arraycopy(hashedBytes, 0, combinedBytes, salt.length, hashedBytes.length);

            // Convert the combined bytes to a hexadecimal string
            StringBuilder stringBuilder = new StringBuilder();
            for (byte b : combinedBytes) {
                stringBuilder.append(String.format("%02x", b));
            }

            return stringBuilder.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String generateRandomString() {
        String symbols = "!@#$%^&*";
        String numbers = "0123456789";
        String uppercaseLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        String lowercaseLetters = "abcdefghijklmnopqrstuvwxyz";

        StringBuilder randomString = new StringBuilder();

        // Generate a random symbol, number, and uppercase letter
        Random random = new Random();
        randomString.append(symbols.charAt(random.nextInt(symbols.length())));
        randomString.append(numbers.charAt(random.nextInt(numbers.length())));
        randomString.append(uppercaseLetters.charAt(random.nextInt(uppercaseLetters.length())));

        // Generate three random lowercase letters
        for (int i = 0; i < 3; i++) {
            randomString.append(lowercaseLetters.charAt(random.nextInt(lowercaseLetters.length())));
        }

        // Shuffle the string to make it random
        char[] charArray = randomString.toString().toCharArray();
        for (int i = charArray.length - 1; i > 0; i--) {
            int j = random.nextInt(i + 1);
            char temp = charArray[i];
            charArray[i] = charArray[j];
            charArray[j] = temp;
        }

        return new String(charArray);
    }

    public static String hashPassword(String password) {
        String salt = BCrypt.gensalt(); // Generate a random salt
        String hashedPassword = BCrypt.hashpw(password, salt);
        return hashedPassword;
    }

    public static boolean verifyPassword(String password, String hashedPassword) {
        return BCrypt.checkpw(password, hashedPassword);
    }

    public static String encryptSHA256(String password) {
        try {
            // Create an instance of the SHA-256 algorithm
            MessageDigest digest = MessageDigest.getInstance("SHA-256");

            // Convert the password string to bytes
            byte[] encodedHash = digest.digest(password.getBytes(StandardCharsets.UTF_8));

            // Convert the byte array to a hexadecimal string
            StringBuilder hexString = new StringBuilder();
            for (byte b : encodedHash) {
                String hex = Integer.toHexString(0xff & b);
                if (hex.length() == 1) {
                    hexString.append('0');
                }
                hexString.append(hex);
            }

            return hexString.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }

        return null;
    }

    public static void main(String[] args) {
        String password = "123456";
        String encryptedPassword = encryptSHA256(password);
        System.out.println("Encrypted Password: " + encryptedPassword);
    }

//    public static void main(String[] args) {
//        System.out.println("Converted value: " + hashPassword("Cunplong115@"));
//        System.out.println("Converted value: " + encodePassword("$2a$10$jtspKMn9eDU.yI1PX3MoV.vcEXxNAGkxFxuP02cEUdrDXa/2u9H2C"));
//        System.out.println("Boolean: " + verifyPassword("Cunplong115@", "$2a$10$fJfkxX2TypY0Xu93aIolwOh2.444vbovdbbuiT4YlS9yiGodNYNj."));
//    }

}

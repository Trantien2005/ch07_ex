package murach.util;

import javax.servlet.http.Cookie;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;

public class CookieUtil {

    public static String getCookieValue(Cookie[] cookies, String cookieName) {
        if (cookies == null || cookieName == null) {
            return "";
        }

        for (Cookie cookie : cookies) {
            if (cookieName.equals(cookie.getName())) {
                try {
                    // Giải mã UTF-8 để lấy giá trị gốc
                    return URLDecoder.decode(cookie.getValue(), StandardCharsets.UTF_8);
                } catch (Exception e) {
                    // fallback nếu decode lỗi
                    return cookie.getValue();
                }
            }
        }

        return "";
    }
}

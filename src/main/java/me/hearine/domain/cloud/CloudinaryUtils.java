package me.hearine.domain.cloud;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class CloudinaryUtils {



    private static Cloudinary setCloudinary() {
        HashMap config = new HashMap();
        config.put("cloud_name", "hearine");
        config.put("api_key", "371689331281971");
        config.put("api_secret", "j9_Hfisjv9dLPsqKwIeqnlzDfqk");
        return new Cloudinary(config);
    }

     public static String uploadFileToCloud(MultipartFile file, String name) throws IOException {

         byte [] byteArr=file.getBytes();

        Cloudinary cloudinary = setCloudinary();

        Map response = cloudinary.uploader().upload(byteArr, //fixme
                ObjectUtils.asMap("resource_type", "video",
                        "public_id", "hearine_songs_data/" + name));
        return  (String) response.get("url");
    }
}

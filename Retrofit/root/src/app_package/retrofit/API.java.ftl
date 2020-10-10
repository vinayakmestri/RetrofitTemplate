package ${packageName}.retrofit;

import retrofit.Call;
import retrofit.http.Field;
import retrofit.http.FormUrlEncoded;
import retrofit.http.POST;


public interface API {

    @FormUrlEncoded
    @POST("/identity.php")
    Call<String> getList(@Field("q") String q);

}

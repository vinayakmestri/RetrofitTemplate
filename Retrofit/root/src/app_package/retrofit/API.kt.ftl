package ${packageName}.retrofit;

import retrofit.Call;
import retrofit.http.Field;
import retrofit.http.FormUrlEncoded;
import retrofit.http.POST;

interface API {

    @FormUrlEncoded
    @POST("/identity.php")
    fun getList(@Field("q") q:String): Call<String>

}
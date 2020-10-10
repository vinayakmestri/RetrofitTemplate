package ${packageName}.retrofit;

import retrofit.GsonConverterFactory
import retrofit.Retrofit

object RestClient {
    private var REST_CLIENT: API? = null
    private const val ROOT = ""
    fun get(): API? {
        return REST_CLIENT
    }

    private fun setupRestClient() {
        val retrofit: Retrofit = Retrofit.Builder()
            .baseUrl(ROOT).addConverterFactory(GsonConverterFactory.create())
            .build()
        //.setClient(new OkClient(new OkHttpClient()))
//.builder.setLogLevel(RestAdapter.LogLevel.FULL);
//RestAdapter restAdapter = builder.build();
        REST_CLIENT = retrofit.create(API::class.java)
    }

    init {
        setupRestClient()
    }
}
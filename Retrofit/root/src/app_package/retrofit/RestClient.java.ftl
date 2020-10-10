package ${packageName}.retrofit;

import retrofit.GsonConverterFactory;
import retrofit.Retrofit;

public class RestClient {

  private static API REST_CLIENT;
  private static String ROOT = "";

  static {
    setupRestClient();
  }

  private RestClient() {}

  public static API get() {
    return REST_CLIENT;
  }

  private static void setupRestClient() {
    Retrofit retrofit = new Retrofit.Builder()
            .baseUrl(ROOT).addConverterFactory(GsonConverterFactory.create())
            .build();
     //.setClient(new OkClient(new OkHttpClient()))
     //.builder.setLogLevel(RestAdapter.LogLevel.FULL);
        
     //RestAdapter restAdapter = builder.build();
     REST_CLIENT = retrofit.create(API.class);

  }
}
package ${packageName}.${modelName};

import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/**
 * Created by abdymalikmulky on 9/5/17.
 */

public class ${modelName}Remote implements ${modelName}DataSource {

    ${modelName}Api ${modelName?lower_case}Api;

    public ${modelName}Remote() {
        ${modelName?lower_case}Api = ApiHelper.client().create(${modelName}Api.class);
    }


    @Override
    public void load(final LoadCallback callback) {
        Call<List<${modelName}>> call = ${modelName?lower_case}Api.getAll();
        call.enqueue(new Callback<List<${modelName}>>() {
            @Override
            public void onResponse(Call<List<${modelName}>> call, Response<List<${modelName}>> response) {
                if(response.isSuccessful()) {
                    List<${modelName}> ${modelName?lower_case}s = response.body();
                    callback.onLoaded(${modelName?lower_case}s);
                } else {
                    callback.onFailed(response.message());
                }
            }

            @Override
            public void onFailure(Call<List<${modelName}>> call, Throwable t) {
                callback.onFailed(t.getLocalizedMessage());
            }
        });
    }
}

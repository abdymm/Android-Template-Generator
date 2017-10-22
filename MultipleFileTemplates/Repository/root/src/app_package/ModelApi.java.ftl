package ${packageName}.${modelName};

import com.abdymalikmulky.lpsesultra.util.EndpointUtil;

import java.util.List;

import retrofit2.Call;
import retrofit2.http.GET;

/**
 * Bismillahirrahmanirrahim
 * Created by abdymalikmulky on 5/2/17.
 */

public interface ${modelName}Api {

    @GET(EndpointUtil.GET_${modelName}_ALL)
    public Call<List<${modelName}>> getAll();


}

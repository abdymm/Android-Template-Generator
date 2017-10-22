package ${packageName}.${modelName};

import android.content.Context;

import com.abdymalikmulky.lpsesultra.MyApplication;
import com.abdymalikmulky.lpsesultra.util.NetworkUtil;

import java.util.List;

/**
 * Created by abdymalikmulky on 9/5/17.
 */

public class ${modelName}Repo implements ${modelName}DataSource {

    private ${modelName}Local ${modelName?lower_case}Local;
    private ${modelName}Remote ${modelName?lower_case}Remote;

    private Context context;

    public ${modelName}Repo(Context context, ${modelName}Local ${modelName?lower_case}Local, ${modelName}Remote ${modelName?lower_case}Remote) {
        this.context = context;

        this.${modelName?lower_case}Local = ${modelName?lower_case}Local;
        this.${modelName?lower_case}Remote = ${modelName?lower_case}Remote;
    }

    @Override
    public void load(final LoadCallback callback) {
        //Check if network is available
        if(NetworkUtil.isNetworkAvailable(context)) {
            ${modelName?lower_case}Remote.load(new LoadCallback() {
                @Override
                public void onLoaded(List<${modelName}> ${modelName?lower_case}s) {
                    saveOnLocal(${modelName?lower_case}s);
                    callback.onLoaded(${modelName?lower_case}s);
                }

                @Override
                public void onFailed(String errorMessage) {
                    callback.onFailed(errorMessage);
                }
            });
        } else {
            ${modelName?lower_case}Local.load(new LoadCallback() {
                @Override
                public void onLoaded(List<${modelName}> ${modelName?lower_case}s) {
                    callback.onLoaded(${modelName?lower_case}s);
                }

                @Override
                public void onFailed(String errorMessage) {
                    callback.onFailed(errorMessage);
                }
            });
        }
    }
    private void saveOnLocal(List<${modelName}> ${modelName?lower_case}s) {
        for (${modelName} ${modelName?lower_case} : ${modelName?lower_case}s) {
            //if exist on db local, dont save
            if(!${modelName?lower_case}Local.isExist(${modelName?lower_case}.getId())) {
                ${modelName?lower_case}Local.save(${modelName?lower_case});
            }
        }
    }
}

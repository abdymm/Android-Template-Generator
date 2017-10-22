package ${packageName}.${modelName};

import java.util.List;

/**
 * Created by abdymalikmulky on 9/5/17.
 */

public interface ${modelName}DataSource {

    interface LoadCallback {
        void onLoaded(List<${modelName}> ${modelName?lower_case}s);
        void onFailed(String msg);
    }

    void load(LoadCallback callback);
}

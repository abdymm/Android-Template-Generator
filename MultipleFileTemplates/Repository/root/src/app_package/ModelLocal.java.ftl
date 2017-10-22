package ${packageName}.${modelName};

import com.raizlabs.android.dbflow.sql.language.SQLite;
import java.util.List;

/**
 * Created by abdymalikmulky on 9/5/17.
 */

public class ${modelName}Local implements ${modelName}DataSource {

    @Override
    public void load(LoadCallback callback) {
        List<${modelName}> ${modelName}s = SQLite.select()
                .from(${modelName}.class).queryList();

        callback.onLoaded(${modelName}s);
    }

    public boolean save(${modelName} ${modelName?lower_case}){
        return (${modelName?lower_case}.insert() > 0) ? true : false;
    }

    public boolean isExist(String id){
        long rowCount = SQLite.select()
                .from(${modelName}.class)
                .where(${modelName}.id.eq(id))
                .count();
        return (rowCount > 0) ? true : false;
    }

    public void delete(){
        SQLite.delete(${modelName}.class)
                .execute();
    }
}

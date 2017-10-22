package ${packageName}.${className};

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

public class ${className}Activity extends AppCompatActivity implements ${className}Contract.View {
	
	${className}Contract.Presenter presenter;

	@Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_xxx);
        
        
    }

	/**
     * Set Presenter on View
     * @param presenter
     */
    @Override
    public void setPresenter(${className}Contract.Presenter presenter) {
 		this.presenter = presenter;
    }
}
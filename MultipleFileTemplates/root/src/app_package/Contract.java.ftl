package ${packageName}.${className};

import ${packageName}.BaseView;
import ${packageName}.BasePresenter;

public interface ${className}Contract{
	
	interface View extends BaseView<Presenter> {
	
	}

	interface Presenter extends BasePresenter {

	}
}
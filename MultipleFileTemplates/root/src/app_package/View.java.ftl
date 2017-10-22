package ${packageName}.${className};

public class ${className}Activity implements ${className}Contract.View {
	
	${className}Contract.Presenter presenter;

	/**
     * Set Presenter on View
     * @param presenter
     */
    @Override
    public void setPresenter(${className}Contract.Presenter presenter) {
 		this.presenter = presenter;
    }
}
package ${packageName};


public interface BaseView<T> {

    void setPresenter(T presenter);
    
	void showError(String message);
}
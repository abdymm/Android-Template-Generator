#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME};#end
#parse("File Header.java")
public class ${NAME}Contract {
    interface View extends BaseView<Presenter>{
        //view methods
    }
    interface Presenter extends BasePresenter{
        //presenter methods
    }
}

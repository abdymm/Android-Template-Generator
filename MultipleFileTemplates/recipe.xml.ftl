<?xml version="1.0"?>
<recipe>

	<!-- BASE VIEW & PRESENTER -->
	<instantiate from="src/app_package/base/BasePresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/BasePresenter.java" />
	<instantiate from="src/app_package/base/BaseView.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/BaseView.java" />


	<instantiate from="src/app_package/Contract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}/${className}Contract.java" />
	<instantiate from="src/app_package/View.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}/${className}Activity.java" />
	<instantiate from="src/app_package/Presenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}/${className}Presenter.java" />

	
	<open file="${srcOut}/${className}/${className}Presenter.java"/>
</recipe>
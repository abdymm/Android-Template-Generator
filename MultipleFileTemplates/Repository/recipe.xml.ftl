<?xml version="1.0"?>
<recipe>

	<instantiate from="src/app_package/Model.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${modelName}/${modelName}.java" />
	<instantiate from="src/app_package/ModelApi.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${modelName}/${modelName}Api.java" />
	<instantiate from="src/app_package/ModelDataSource.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${modelName}/${modelName}DataSource.java" />
	<instantiate from="src/app_package/ModelLocal.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${modelName}/${modelName}Local.java" />
	<instantiate from="src/app_package/ModelRemote.java.ftl"
	                   to="${escapeXmlAttribute(srcOut)}/${modelName}/${modelName}Remote.java" />
	<instantiate from="src/app_package/ModelRepo.java.ftl"
	                   to="${escapeXmlAttribute(srcOut)}/${modelName}/${modelName}Repo.java" />

	
	<open file="${srcOut}/${modelName}/${modelName}Repo.java"/>
</recipe>
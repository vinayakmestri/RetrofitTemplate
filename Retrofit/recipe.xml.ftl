<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <#if !(hasDependency('com.squareup.retrofit:retrofit'))>
    <dependency mavenUrl="com.squareup.retrofit:retrofit:2.0.0-beta2"/>
	</#if>
	<#if !(hasDependency('com.squareup.retrofit:converter-gson'))>
	<dependency mavenUrl="com.squareup.retrofit:converter-gson:2.0.0-beta2"/>
	</#if>
	<#if !(hasDependency('com.squareup.okio:okio'))>
	<dependency mavenUrl="com.squareup.okio:okio:1.17.2"/>
	</#if>

	<@kt.addAllKotlinDependencies />
    <instantiate from="root/src/app_package/retrofit/API.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/retrofit/API.${ktOrJavaExt}" />
    <instantiate from="root/src/app_package/retrofit/RestClient.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/retrofit/RestClient.${ktOrJavaExt}" />
	<open file="${escapeXmlAttribute(srcOut)}/RestClient.${ktOrJavaExt}" />
</recipe>

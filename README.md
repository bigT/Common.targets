# Common.props


Introduces a Common.targets file at a solution level. Adding this package to multiple projects in the solution allows sharing of 
common targets across projects. Adding 'BeforeBuild and 'AfterBuild' targets can be done in one place and shared between multiple 
projects.

Tedious task of manually editing individual project files is now replaced by package installation. Changes made to the 
Common.targets take immediate effect. 

Here is a sample solution level targets file that would add common 'BeforeBuild' and 'AfterBuild' targets to a project. Using 
conditions on targets tasks a fine grained control can be achieved over what is executed based on the context of individual 
projects:

	<?xml version="1.0" encoding="utf-8"?>
	<Project ToolsVersion="4.0" xmlns="http://schemas.microsoft.com/developer/msbuild/2003">
	  <PropertyGroup>
	    <!--
	         Define common solution properties. The properties will be add to all
	         projects that have installed 'Install-Package Solution.prop' package.

	         E.g.
	         <Target Name="BeforeBuild">
                   <Error Text="Web.config is not allowed in a Sitecore web project. Consider merging into web.transform.config or remove it." ..
                          Condition="Exists( '$(MSBuildProjectDirectory)\web.config' )" />
                 </Target>
	    -->
	  </PropertyGroup>
	</Project>

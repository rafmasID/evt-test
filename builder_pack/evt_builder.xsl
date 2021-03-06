<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    xmlns:eg="http://www.tei-c.org/ns/Examples"
    xmlns:xd="http://www.pnp-software.com/XSLTdoc" 
    xmlns:fn="http://www.w3.org/2005/xpath-functions"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="#all">
  	
	<!--<xsl:import href="modules/xml-to-string.xsl"/>-->
	
	<xd:doc type="stylesheet">
		<xd:author>RafMas</xd:author>
		<xd:short>
			EN: Transformation from TEI P5 to HTML5
			IT: Strumento di trasformazione da TEI P5 ad HTML5
		</xd:short>
		  <xd:detail>
			EN: This is the main file to perform the transformation, it is used to include all other evt_builder-*.xsl modules		
			IT: Questo è il file principale per effettuare la trasformazione, serve per includere tutti gli altri moduli evt_builder-*.xsl		
		  </xd:detail>
	</xd:doc>

	<!-- Basic -->
	<xsl:include href="modules/evt_builder-conf.xsl"/>
	<xsl:include href="modules/evt_builder-copy_and_call_main.xsl"/>
	<xsl:include href="modules/evt_builder-main.xsl"/>
	
	<xsl:include href="modules/html_build/evt_builder-callhtml.xsl"/>
	<xsl:include href="modules/html_build/evt_builder-function.xsl"/>
		
	<!-- Image-text link -->
	<xsl:include href="modules/evt_builder-image_text_link.xsl"/>
	
	<!-- Elements -->	
	<!-- Elements for facsimile version-->
	<xsl:include href="modules/elements/evt_builder-facs-core.xsl"/>
	<xsl:include href="modules/elements/evt_builder-facs-multi_module.xsl"/>
	<!--<xsl:include href="modules/elements/evt_builder-facs-textstructure.xsl"/>-->
	<!-- Elements for diplomatic version-->
	<xsl:include href="modules/elements/evt_builder-dipl-core.xsl"/>
	<xsl:include href="modules/elements/evt_builder-dipl-multi_module.xsl"/>
	<!--<xsl:include href="modules/elements/evt_builder-dipl-textstructure.xsl"/>-->

	<!-- Extra -->
	<xsl:include href="modules/extra/functx-1.0.xsl"/>
	
</xsl:stylesheet>

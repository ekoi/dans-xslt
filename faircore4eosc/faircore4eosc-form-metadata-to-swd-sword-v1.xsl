<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs math" version="3.0">
    <xsl:output indent="yes" omit-xml-declaration="no"/>

    <xsl:template match="data">
        <!-- create a new root tag -->

        <!-- apply the xml structure generated from JSON -->
        <xsl:apply-templates select="json-to-xml(.)"/>

    </xsl:template>

    <!-- template for the first tag -->
    <xsl:template match="/map" xpath-default-namespace="http://www.w3.org/2005/xpath-functions"> 
        <entry xmlns="http://www.w3.org/2005/Atom"
       xmlns:codemeta="https://doi.org/10.5063/SCHEMA/CODEMETA-2.0"
       xmlns:swh="https://www.softwareheritage.org/schema/2018/deposit">
          <title><xsl:value-of select="//array[@key='metadata']/map/string[@key='id' and text()='citation_metadata']/following-sibling::array[@key='fields']/map/string[@key='name' and text()='title']/following-sibling::string[@key='value']/."/> | Datavere PID: <xsl:value-of select="//array[@key='metadata']/map/map[@key='data']/string/."/></title>
  <id>belenios-01243065</id>
          <codemeta:url><xsl:value-of select="//array[@key='metadata']/map/string[@key='id' and text()='citation_metadata']/following-sibling::array[@key='fields']/map/string[@key='name' and text()='repository_url']/following-sibling::string[@key='value']/."/></codemeta:url>
  <codemeta:applicationCategory>test</codemeta:applicationCategory>
  <codemeta:keywords>Online voting</codemeta:keywords>
  <codemeta:description>Verifiable online voting system</codemeta:description>
  <codemeta:version>1.12</codemeta:version>
  <codemeta:runtimePlatform>opam</codemeta:runtimePlatform>
  <codemeta:referencePublication>
    <codemeta:identifier><xsl:value-of select="//array[@key='metadata']/map/map[@key='data']/string/."/></codemeta:identifier></codemeta:referencePublication>      
  <codemeta:developmentStatus>stable</codemeta:developmentStatus>
  <codemeta:programmingLanguage>ocaml</codemeta:programmingLanguage>
  <codemeta:license>
    <codemeta:name>GNU Affero General Public License</codemeta:name>
  </codemeta:license>
  <author>
    <name><xsl:value-of select="//array[@key='metadata']/map/string[@key='id' and text()='citation_metadata']/following-sibling::array[@key='fields']/map/string[@key='name' and text()='author']/following-sibling::string[@key='value']"/></name>
    <email><xsl:value-of select="//array[@key='metadata']/map/string[@key='id' and text()='citation_metadata']/following-sibling::array[@key='fields']/map/string[@key='name' and text()='contact_email']/following-sibling::string[@key='value']"/></email>
  </author>
  <codemeta:author>
    <codemeta:name><xsl:value-of select="//array[@key='metadata']/map/string[@key='id' and text()='citation_metadata']/following-sibling::array[@key='fields']/map/string[@key='name' and text()='author']/following-sibling::string[@key='value']"/></codemeta:name>
  </codemeta:author>
  <swh:deposit>
    <swh:create_origin>
      <swh:origin url="https://dans.knaw.nl/" />
    </swh:create_origin>
  </swh:deposit>
</entry>
      
      

       
    </xsl:template>

    <!-- template to output a number value -->


</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="../AccountToARMS.wsdl"/>
      <rootElement name="wsReply" namespace="http://kpei.co.id/MDwsReply.xsd"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../AccountResponseQueue_JMS.wsdl"/>
      <rootElement name="wsReply" namespace="http://kpei.co.id/MDwsReply.xsd"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.2.0(build 091103.1205.1216) AT [FRI APR 23 12:56:03 ICT 2010]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:xpath20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/jms/OR03-ARMSAccount/OR03-ARMSAccount/AccountResponseQueue_JMS"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:client="http://xmlns.oracle.com/OR03_ARMSAccount_jws/OR03_ARMSAccount/AccountToARMS"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ns1="http://www.kpei.co.id/middleware"
                xmlns:ns2="http://kpei.co.id/MDwsReply.xsd"
                xmlns="http://kpei.co.id/MDwsReply.xsd"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl client plnk xsd wsdl ns1 ns2 tns xpath20 bpws mhdr oraext dvm hwf med ids xdk xref ora socket ldap">
  <xsl:template match="/">
    <wsReply>
      <receiveDateTime>
        <xsl:value-of select="/ns2:wsReply/ns2:receiveDateTime"/>
      </receiveDateTime>
      <status>
        <xsl:value-of select="/ns2:wsReply/ns2:status"/>
      </status>
      <description>
        <xsl:value-of select="/ns2:wsReply/ns2:description"/>
      </description>
    </wsReply>
  </xsl:template>
</xsl:stylesheet>

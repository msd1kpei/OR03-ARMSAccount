<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xpath20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:tns="http://oracle.com/sca/soapservice/OR03-ARMSAccount/OR03-ARMSAccount/OR03_ARMSAccount" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:inp1="http://www.kpei.co.id/middleware" xmlns:out1="http://kpei.co.id/MDwsReply.xsd" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl tns xsd wsdl inp1 out1 xpath20 bpws mhdr oraext dvm hwf med ids xdk xref ora socket ldap">
   <xsl:template match="/">
      <inp1:AccountInsert>
         <inp1:header>
            <xsl:attribute name="id">
               <xsl:value-of select="/inp1:AccountInsert/inp1:header/@id"/>
            </xsl:attribute>
            <inp1:asAt>
               <xsl:value-of select="/inp1:AccountInsert/inp1:header/inp1:asAt"/>
            </inp1:asAt>
            <inp1:source>
               <xsl:value-of select="/inp1:AccountInsert/inp1:header/inp1:source"/>
            </inp1:source>
         </inp1:header>
         <inp1:body>
            <xsl:for-each select="/inp1:AccountInsert/inp1:body/inp1:Account">
               <inp1:Account>
                  <xsl:attribute name="id">
                     <xsl:value-of select="@id"/>
                  </xsl:attribute>
                  <inp1:AccountType>
                     <xsl:value-of select="inp1:AccountType"/>
                  </inp1:AccountType>
                  <inp1:Description>
                     <xsl:value-of select="inp1:Description"/>
                  </inp1:Description>
                  <inp1:MemberID>
                     <xsl:value-of select="inp1:MemberID"/>
                  </inp1:MemberID>
               </inp1:Account>
            </xsl:for-each>
         </inp1:body>
      </inp1:AccountInsert>
   </xsl:template>
</xsl:stylesheet>

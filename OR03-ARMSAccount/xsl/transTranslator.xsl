<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel2="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:out1="http://kpei.co.id/MDwsReply.xsd" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:tns="http://oracle.com/sca/soapservice/OR03-ARMSAccount/OR03-ARMSAccount/OR03_ARMSAccount" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns2="http://www.kpei.co.id/Transformation" xmlns:ns1="http://schemas.oracle.com/bpel/extension" xmlns:ns0="http://www.kpei.co.id/GE06-Translator" xmlns:inp1="http://www.kpei.co.id/schema/Account.001" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl wsdl out1 tns xsd ns2 ns1 ns0 inp1 xp20 bpws bpel2 bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:param name="translatorWS_getTranslator_OutputVariable.payload"/>
   <xsl:template match="/">
      <inp1:AccountInsert>
         <inp1:header>
            <xsl:if test="/inp1:AccountInsert/inp1:header/@id">
               <xsl:attribute name="id">
                  <xsl:value-of select="/inp1:AccountInsert/inp1:header/@id"/>
               </xsl:attribute>
            </xsl:if>
            <inp1:asAt>
               <xsl:value-of select="/inp1:AccountInsert/inp1:header/inp1:asAt"/>
            </inp1:asAt>
            <inp1:source>
               <xsl:value-of select="/inp1:AccountInsert/inp1:header/inp1:source"/>
            </inp1:source>
         </inp1:header>
         <inp1:body>
            <xsl:for-each select="/inp1:AccountInsert/inp1:body/inp1:Account">
               <xsl:variable name="pos" select="position()"/>
               <inp1:Account>
                  <xsl:attribute name="id">
                     <xsl:value-of select="@id"/>
                  </xsl:attribute>
                  <xsl:for-each select="$translatorWS_getTranslator_OutputVariable.payload/ns0:outTranslator/ns0:rec">
                     <xsl:variable name="accType" select="/inp1:AccountInsert/inp1:body/inp1:Account[number($pos)]/inp1:AccountType"/>
                     <xsl:variable name="bool" select="oraext:compare-ignore-case(oraext:right-trim(oraext:left-trim(string(ns0:source))),oraext:right-trim(oraext:left-trim(string($accType)))) = 0.0"/>
                     <xsl:if test="$bool = 'true'">
                        <inp1:AccountType>
                           <xsl:value-of select="ns0:target"/>
                        </inp1:AccountType>
                     </xsl:if>
                  </xsl:for-each>
                  <inp1:Description>
                     <xsl:value-of select="/inp1:AccountInsert/inp1:body/inp1:Account/inp1:Description"/>
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

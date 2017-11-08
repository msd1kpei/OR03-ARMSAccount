<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:client="http://xmlns.oracle.com/ARIS_KPEI_PROJECT/OR03_ARMSAccount/PrepareAccountAck" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:imp1="http://www.kpei.co.id/schema/Account.001" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/jms/ARIS-KPEI-PROJECT/OR03-ARMSAccount/Inbound_AccountQueue" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns2="http://www.kpei.co.id/ResponseMessage" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:bpmn="http://schemas.oracle.com/bpm/xpath" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl pc plt wsdl imp1 tns jca xsd client ns2 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref bpmn ldap">
   <xsl:template match="/">
      <imp1:AccountToARMS>
         <imp1:header>
            <xsl:if test="/imp1:AccountToARMS/imp1:header/@id">
               <xsl:attribute name="id">
                  <xsl:value-of select="/imp1:AccountToARMS/imp1:header/@id"/>
               </xsl:attribute>
            </xsl:if>
            <imp1:asAt>
               <xsl:value-of select="/imp1:AccountToARMS/imp1:header/imp1:asAt"/>
            </imp1:asAt>
            <imp1:source>
               <xsl:value-of select="/imp1:AccountToARMS/imp1:header/imp1:source"/>
            </imp1:source>
         </imp1:header>
         <imp1:body>
            <xsl:for-each select="/imp1:AccountToARMS/imp1:body/imp1:e-CLEARSAccount">
               <imp1:e-CLEARSAccount>
                  <imp1:AccountID>
                     <xsl:value-of select="imp1:AccountID"/>
                  </imp1:AccountID>
                  <imp1:AccountType>
                     <xsl:value-of select="imp1:AccountType"/>
                  </imp1:AccountType>
                  <imp1:Description>
                     <xsl:value-of select="imp1:Description"/>
                  </imp1:Description>
                  <imp1:MemberID>
                     <xsl:value-of select="imp1:MemberID"/>
                  </imp1:MemberID>
               </imp1:e-CLEARSAccount>
            </xsl:for-each>
         </imp1:body>
         <imp1:ext>
            <xsl:if test="/imp1:AccountToARMS/imp1:ext/imp1:value">
               <xsl:for-each select="/imp1:AccountToARMS/imp1:ext/imp1:value">
                  <imp1:value>
                     <xsl:if test="@id">
                        <xsl:attribute name="id">
                           <xsl:value-of select="@id"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="."/>
                  </imp1:value>
               </xsl:for-each>
            </xsl:if>
         </imp1:ext>
      </imp1:AccountToARMS>
   </xsl:template>
</xsl:stylesheet>

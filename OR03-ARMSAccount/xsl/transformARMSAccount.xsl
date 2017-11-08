<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:ns2="http://www.kpei.co.id/ARMSOfflineCollateralRequest" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpel2="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns3="http://www.kpei.co.id/RMOLNetPositionRequest" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns4="http://xmlns.oracle.com/pcbpel/adapter/db/top/ARMSAccountDB" xmlns:ns1="http://www.kpei.co.id/DataFeedNettedTradeRequest" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns0="http://www.kpei.co.id/schema/Account.001" xmlns:xml="http://www.w3.org/XML/1998/namespace" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns2 ns3 xsd ns1 ns0 xml ns4 bpws xp20 mhdr bpel2 oraext dvm hwf med ids bpm xdk xref ora socket ldap">
   <xsl:template match="/">
      <ns4:AccountCollection>
         <xsl:for-each select="/ns0:AccountToARMS/ns0:body/ns0:e-CLEARSAccount">
            <ns4:Account>
               <ns4:accountid>
                  <xsl:value-of select="ns0:AccountID"/>
               </ns4:accountid>
               <ns4:accounttype>
                  <xsl:value-of select="ns0:AccountType"/>
               </ns4:accounttype>
               <ns4:memberid>
                  <xsl:value-of select="ns0:MemberID"/>
               </ns4:memberid>
               <ns4:createby>
                  <xsl:text disable-output-escaping="no">KPEIMID</xsl:text>
               </ns4:createby>
               <ns4:description>
                  <xsl:value-of select="ns0:Description"/>
               </ns4:description>
            </ns4:Account>
         </xsl:for-each>
      </ns4:AccountCollection>
   </xsl:template>
</xsl:stylesheet>

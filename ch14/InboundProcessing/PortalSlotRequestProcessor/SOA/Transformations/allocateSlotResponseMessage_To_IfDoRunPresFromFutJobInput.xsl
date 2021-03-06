<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/top/PortalSlotRequestPoller"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:tns="http://xmlns.oracle.com/InboundProcessing/PortalSlotRequestProcessor/IfDoRunPresFromFutJob"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns0="saibot.airport/services/slot"
                exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns1 ns0 tns oraxsl xp20 xref mhdr oraext dvm socket"
                xmlns:ns4="http://xmlns.oracle.com/pcbpel/adapter/db/InboundProcessing/PortalSlotRequestProcessor/PortalSlotRequestPoller"
                xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:reference="saibot.airport/datareference"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/"
                xmlns:WL5G3N0="http://schemas.xmlsoap.org/wsdl/" xmlns:ns2="saibot.airport/data/reference"
                xmlns:ns3="saibot.airport/data/common" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype">
    <oracle-xsl-mapper:schema>
        <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
        <oracle-xsl-mapper:mapSources>
            <oracle-xsl-mapper:source type="WSDL">
                <oracle-xsl-mapper:schema location="../WSDLs/SlotService.wsdl"/>
                <oracle-xsl-mapper:rootElement name="allocateSlotResponseMessage"
                                               namespace="saibot.airport/services/slot"/>
            </oracle-xsl-mapper:source>
            <oracle-xsl-mapper:source type="WSDL">
                <oracle-xsl-mapper:schema location="../WSDLs/PortalSlotRequestPoller.wsdl"/>
                <oracle-xsl-mapper:rootElement name="PortalSlotAllocationsCollection"
                                               namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/PortalSlotRequestPoller"/>
                <oracle-xsl-mapper:param name="initial.PortalSlotAllocationsCollection"/>
            </oracle-xsl-mapper:source>
        </oracle-xsl-mapper:mapSources>
        <oracle-xsl-mapper:mapTargets>
            <oracle-xsl-mapper:target type="WSDL">
                <oracle-xsl-mapper:schema location="../WSDLs/IfDoRunPresFromFutJob.wsdl"/>
                <oracle-xsl-mapper:rootElement name="process"
                                               namespace="http://xmlns.oracle.com/InboundProcessing/PortalSlotRequestProcessor/IfDoRunPresFromFutJob"/>
            </oracle-xsl-mapper:target>
        </oracle-xsl-mapper:mapTargets>
        <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [MON AUG 25 07:29:57 CEST 2014].-->
    </oracle-xsl-mapper:schema>
    <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
    <xsl:param name="initial.PortalSlotAllocationsCollection"/>
    <xsl:template match="/">
        <tns:process>
            <tns:slotStartDate>
                <xsl:value-of select="$initial.PortalSlotAllocationsCollection/ns1:PortalSlotAllocationsCollection/ns1:PortalSlotAllocations/ns1:startDateForSlot"/>
            </tns:slotStartDate>
        </tns:process>
    </xsl:template>
</xsl:stylesheet>

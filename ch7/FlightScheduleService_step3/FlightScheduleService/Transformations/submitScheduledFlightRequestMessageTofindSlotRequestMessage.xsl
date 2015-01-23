<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:DVMFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:BasicCredentialsUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.BasicCredentialsUserFunction"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:UUIDUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.UUIDUserFunction"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns0="saibot.airport/services/flightschedule"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:IsUserInRoleFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInRoleFunction"
                xmlns:tns="saibot.airport/services/slot"
                xmlns:IsUserInGroupFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInGroupFunction"
                xmlns:XrefFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.xref.XrefFunctions"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns0 tns oraxsl DVMFunctions BasicCredentialsUserFunction UUIDUserFunction IsUserInRoleFunction IsUserInGroupFunction XrefFunctions"
                xmlns:reference="saibot.airport/data/reference" xmlns:common="saibot.airport/data/common"
                xmlns:flight="saibot.airport/data/flight">
    <oracle-xsl-mapper:schema>
        <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
        <oracle-xsl-mapper:mapSources>
            <oracle-xsl-mapper:source type="XSD">
                <oracle-xsl-mapper:schema location="../Schemas/FlightScheduleService.xsd"/>
                <oracle-xsl-mapper:rootElement name="submitScheduledFlightRequestMessage"
                                               namespace="saibot.airport/services/flightschedule"/>
            </oracle-xsl-mapper:source>
        </oracle-xsl-mapper:mapSources>
        <oracle-xsl-mapper:mapTargets>
            <oracle-xsl-mapper:target type="XSD">
                <oracle-xsl-mapper:schema location="../Schemas/SlotService.xsd"/>
                <oracle-xsl-mapper:rootElement name="findSlotRequestMessage" namespace="saibot.airport/services/slot"/>
            </oracle-xsl-mapper:target>
        </oracle-xsl-mapper:mapTargets>
        <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140119.0846.5239) AT [WED MAR 12 08:30:49 CET 2014].-->
    </oracle-xsl-mapper:schema>
    <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
    <xsl:template match="/">
        <tns:findSlotRequestMessage>
            <tns:Carrier>
                <xsl:value-of select="/ns0:submitScheduledFlightRequestMessage/ns0:Carrier"/>
            </tns:Carrier>
            <tns:TimePlanningUnit>
                <reference:startDate>
                    <xsl:value-of select="/ns0:submitScheduledFlightRequestMessage/ns0:TimePlanningUnit/reference:startDate"/>
                </reference:startDate>
                <xsl:if test="/ns0:submitScheduledFlightRequestMessage/ns0:TimePlanningUnit/reference:endDate">
                    <reference:endDate>
                        <xsl:if test="/ns0:submitScheduledFlightRequestMessage/ns0:TimePlanningUnit/reference:endDate/@xsi:nil">
                            <xsl:attribute name="nil" namespace="http://www.w3.org/2001/XMLSchema-instance">
                                <xsl:value-of select="/ns0:submitScheduledFlightRequestMessage/ns0:TimePlanningUnit/reference:endDate/@xsi:nil"/>
                            </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="/ns0:submitScheduledFlightRequestMessage/ns0:TimePlanningUnit/reference:endDate"/>
                    </reference:endDate>
                </xsl:if>
                <xsl:if test="/ns0:submitScheduledFlightRequestMessage/ns0:TimePlanningUnit/reference:DaysOfWeek">
                    <reference:DaysOfWeek>
                        <xsl:for-each select="/ns0:submitScheduledFlightRequestMessage/ns0:TimePlanningUnit/reference:DaysOfWeek/reference:day">
                            <reference:day>
                                <xsl:value-of select="."/>
                            </reference:day>
                        </xsl:for-each>
                    </reference:DaysOfWeek>
                </xsl:if>
                <xsl:if test="/ns0:submitScheduledFlightRequestMessage/ns0:TimePlanningUnit/reference:HourOfDay">
                    <reference:HourOfDay>
                        <xsl:value-of select="/ns0:submitScheduledFlightRequestMessage/ns0:TimePlanningUnit/reference:HourOfDay"/>
                    </reference:HourOfDay>
                </xsl:if>
                <xsl:if test="/ns0:submitScheduledFlightRequestMessage/ns0:TimePlanningUnit/reference:FiveMinuteBlock">
                    <reference:FiveMinuteBlock>
                        <xsl:value-of select="/ns0:submitScheduledFlightRequestMessage/ns0:TimePlanningUnit/reference:FiveMinuteBlock"/>
                    </reference:FiveMinuteBlock>
                </xsl:if>
            </tns:TimePlanningUnit>
            <tns:AircraftModel>
                <xsl:value-of select="/ns0:submitScheduledFlightRequestMessage/ns0:AircraftModel"/>
            </tns:AircraftModel>
        </tns:findSlotRequestMessage>
    </xsl:template>
</xsl:stylesheet>

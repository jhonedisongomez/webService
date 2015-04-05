<!--- Invoke the web service as a dude. --->
<cfinvoke
    webservice="http://www.webservicex.net/globalweather.asmx?WSDL"
    method="GetWeather"
    returnvariable="clima">
    <cfinvokeargument name="CountryName" value="United States">
        <cfinvokeargument name="CityName" value="Kansas">
</cfinvoke>

<cfset weatherXml = XmlParse(clima)>

<cfset weather = #weatherXml.CurrentWeather#>


<cfprocessingdirective suppresswhitespace="yes">
    <cfcontent type="text/xml" reset="yes">
        <cfoutput>#weather#</cfoutput>


    </cfcontent>
</cfprocessingdirective>
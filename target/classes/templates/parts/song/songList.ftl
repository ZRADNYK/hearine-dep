<#include "../security.ftl">

<table>
    <thead>
    <tr>
        <th>Name</th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <#list songs as song>
        <tr>
            <td>${song.publicName}</td>
            <td></td>
        </tr>
    </#list>
    </tbody>
</table>


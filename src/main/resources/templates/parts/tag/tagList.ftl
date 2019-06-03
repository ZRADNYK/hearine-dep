<#include "../security.ftl">

<div class="card-columns">
    <#list tags as tag>
            <div class="m-2">
                <i>Id: ${tag.id}</i><br/>
                <i>Name: ${tag.name}</i><br/>
            </div>
        </div>
    <#else>
        No bands
    </#list>
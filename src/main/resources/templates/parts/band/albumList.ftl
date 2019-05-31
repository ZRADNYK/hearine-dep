<#include "../security.ftl">

<#import "../common.ftl" as c>
<@c.name>
<div class="card-columns">
    <#list band.albums as album>
        <div class="card my-3">
            <div class="m-2">
                <#if album.avatar??>
                    <img src="/img/${album.avatar}" class="card-img-top">
                </#if>
                <i>Name: ${album.name}</i><br/>
                <i>Genres: <#list album.genres as genre>${genre}</#list><br/>
                    <i>Artists: <#list album.bands as band>${band}</i></#list><br/>
                    <i>Tags: <#list album.tags as tag>${tag}</i></#list><br/>
                    <span>Desc: ${album.dsc}</span><br/>
            </div>
            <div class="card-footer text-muted">
                <a href="/album/${album.id}/songList">Song list</a>
                <a href="/album/${album.id}/availableSongs">Add songs</a>
            </div>
        </div>
    <#else>
        No albums
    </#list>
</div>
</@c.name>
<#import "../common.ftl" as c>
<#include "../security.ftl">
<@c.page>
    <h3>${userChannel.username}</h3>
    <#if !isCurrentUser>
        <#if !isSubscriber>
            <a class="btn btn-info" href="/user/subscribe/${userChannel.id}">Subscribe</a>
        </#if>
        <#if isSubscriber>
            <a class="btn btn-info" href="/user/unsubscribe/${userChannel.id}">Unsubscribe</a>
        </#if>
    </#if>
    <#if isCurrentUser>
        <a class="btn btn-info" href="/user/${userChannel.id}/settings">Settings</a>
    </#if>
    <div class="container my-3">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-body">
                        <div class="card-title">Subscriptions</div>
                        <h3 class="card-text">
                            <a href="/user/subscriptions/${userChannel.id}/list">${subscriptionsCount}</a>
                        </h3>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card">
                    <div class="card-body">
                        <div class="card-title">Subscribers</div>
                        <h3 class="card-text">
                            <a href="/user/subscribers/${userChannel.id}/list">${subscribersCount}</a>
                        </h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <#if user??>
        <#include "../playlist/playlistList.ftl" />
    </#if>

</@c.page>
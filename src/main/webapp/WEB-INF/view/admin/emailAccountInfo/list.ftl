<#include "/macro/base.ftl" /> 
<@header/> 
<@menu activeId="email"/>
<div class="content-wrapper">
	<div class="row">
		<div class="col-md-12">
			<div class="box">
            <div class="box-header with-border">
              <h3 class="box-title">账号列表</h3>
              <div class="box-tools pull-right">
				<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal">添加</button>
			  </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table class="table table-bordered">
              	<thead>
					<tr>
						<th>序号</th>
						<th>账号</th>
						<th>host</th>
						<th>备注</th>
						<th>创建时间</th>
						<th>操作</th>
					</tr>
				</thead>
                <tbody>
                	<#list page.list as bean>
	                	<tr>
	                		<td>${bean_index+1}</td>
	                		<td>${bean.fromUser}</td>
	                		<td>${bean.host}</td>
	                		<td>${bean.remark}</td>
	                		<td>${bean.createTime?string('yyyy-MM-dd HH:mm:ss')}</td>
	                		<td>
	                			<a class="btn btn-primary btn-xs" href="${ctx}/admin/emailAccountInfo/view?id=${bean.id}">查看</a>
								<a class="btn btn-info btn-xs" href="${ctx}/admin/emailAccountInfo/edit?id=${bean.id}">修改</a>
								<a class="btn btn-danger btn-xs" onClick="delcfm('${ctx}/admin/emailAccountInfo/delete?id=${bean.id}')">删除</a>
	                		</td>
	                	</tr>
                	</#list>
              	</tbody>
              </table>
            </div>
            <!-- /.box-body -->
            <div class="box-footer clearfix">
              <ul class="pagination pagination-sm no-margin pull-right">
                <#if page.pageCurrent ==1>
              		<li><a href="javascript:volid(0);">首页</a></li>
              	<#else>
                	<li><a href="${ctx}/admin/emailAccountInfo/list?pageCurrent=1">首页</a></li>
              	</#if>
                <#list 1..page.totalPage as index>
                	<#if index == page.pageCurrent>
	                	<li class="active"><a href="javascript:volid(0);">${index}</a></li>
	                <#else>
	                	<li><a href="${ctx}/admin/emailAccountInfo/list?pageCurrent=${index}">${index}</a></li>
	                </#if>
                </#list>
                <#if page.pageCurrent ==page.totalPage>
                	<li><a href="javascript:volid(0);">尾页</a></li>
                <#else>
                	<li><a href="${ctx}/admin/emailAccountInfo/list?pageCurrent=${page.totalPage}">尾页</a></li>
                </#if>
              </ul>
            </div>
          </div>
		</div>
	</div>
</div>
<#include "add.ftl" />
<@wrapper/>
<@deleteHint/>
<@footer/>

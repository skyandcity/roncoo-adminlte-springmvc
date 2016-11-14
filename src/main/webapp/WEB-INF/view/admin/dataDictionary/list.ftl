<#include "/macro/base.ftl" />
<@header/>
<@menu activeId="dictionary"/>
<div class="content-wrapper">
	<div class="row">
		<div class="col-md-12">
			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title">数据字典表</h3>
					<div class="box-tools pull-right">
						<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal">添加</button>
					</div>
				</div>
				<div class="box-body">
					<table id="example4" class="table table-bordered" >
						<thead>
							<tr>
								<th>序号</th>
								<th>字段名</th>
								<th>排序</th>
								<th>备注</th>
								<th>创建时间</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<#list page.list as bean>
								<td>${bean_index+1}</td>
								<td>${bean.fieldName}</td>
								<td>${bean.sort}</td>
								<td>${bean.remark}</td>
								<td>${bean.createTime?string('yyyy-MM-dd HH:mm:ss')}</td>
								<td>
									<a class="btn btn-primary btn-xs" href="${ctx}/admin/dataDictionary/view?id=${bean.id}">查看</a>
									<a class="btn btn-primary btn-xs" href="${ctx}/admin/dataDictionaryList/list?id=${bean.id}&fieldCode=${bean.fieldCode}">查看明细</a>
									<a class="btn btn-info btn-xs" href="${ctx}/admin/dataDictionary/edit?id=${bean.id}">修改</a>
									<a class="btn btn-danger btn-xs" onClick="delcfm('${ctx}/admin/dataDictionary/delete?id=${bean.id}&fieldCode=${bean.fieldCode}')">删除</a>
								</td>
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
							<li><a href="${ctx}/admin/dataDictionary/list?pageCurrent=1">首页</a></li>
						</#if>
						<#list 1..page.totalPage as index>
							<#if index == page.pageCurrent>
								<li class="active"><a href="javascript:volid(0);">${index}</a></li>
							<#else>
								<li><a href="${ctx}/admin/dataDictionary/list?pageCurrent=${index}">${index}</a></li>
							</#if>
						</#list>
						<#if page.pageCurrent ==page.totalPage>
							<li><a href="javascript:volid(0);">尾页</a></li>
						<#else>
							<li><a href="${ctx}/admin/dataDictionary/list?pageCurrent=${page.totalPage}">尾页</a></li>
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

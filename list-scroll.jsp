<%@include file="/apps/apus/includes/global.jsp" %>
<%@taglib prefix="apus" uri="http://apus.edu/publicweb/aem/tags" %>

<c:set var="title" value="${properties.title}"/>

<div class="adv_section">
	<h3 class="adv_section_banner">${title}</h3>
	<div class="adv_scroll">
		<ul class="noindent">
        	<c:forEach items="${apus:parseJSONString(properties.quickLinks)}" varStatus="loopStatus" var="item">
        		<c:set var="text" value="${item.text}"/>
        		<c:set var="path" value="${item.linkPath}"/>
				<li>
					<a title="${text}" href="${path}">${text}</a>
				</li>
			</c:forEach>
		</ul>
	</div>
</div>

<style type="text/css">
	.list-scroll .adv_section {
		box-shadow: 0 1px 2px rgba(0, 0, 0, 0.3);
		font-size: 1em;
		padding: 0 0 0 20px;
	}
	.list-scroll .adv_section h3 {
    	color: #464646;
    	font-size: 16px;
    	text-transform: none;
    }
    .list-scroll .adv_section_banner {
    	background-color: #8DB5CB;
    	color: #FFFFFF;
    	font-size: 1.5em;
    	margin: 0 0 0 -20px;
    	padding: 7px 20px;
	}
	.list-scroll .adv_scroll {
    	height: 250px;
    	overflow: auto;
    	padding-bottom: 20px;
    	padding-right: 20px;
	}
	.list-scroll .adv_section ul {
	    list-style-image: none;
	    list-style-type: disc;
	    padding-left: 0px;
	    margin-left: 15px;
	    margin-top: 15px
	}
	.list-scroll .adv_section ul li {
    	padding: 0 0 15px;
	}

</style>
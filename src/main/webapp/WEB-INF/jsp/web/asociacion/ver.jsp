<%-- 
    Document   : ver
    Created on : 27-feb-2012, 15:44:25
    Author     : gibrandemetrioo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <title><s:message code="asociacion.ver.label" /></title>
    </head>
    <body>
        <nav class="navbar navbar-fixed-top" role="navigation">
            <ul class="nav">
                <li class="active"><a href="<s:url value='../'/>" ><s:message code="asociacion.label" /></a></li>

            </ul>
        </nav>

        <div id="ver-asociacion" class="content scaffold-list" role="main">
            <h1><s:message code="asociacion.ver.label" /></h1>

            <p class="well">
                <a class="btn btn-primary" href="<s:url value='../'/>"><i class="icon-list icon-white"></i> <s:message code='asociacion.lista.label' /></a>
                <a class="btn btn-primary" href="<s:url value='web/asociacion/nueva'/>"><i class="icon-user icon-white"></i> <s:message code='asociacion.nuevo.label' /></a>
            </p>
            <c:if test="${not empty message}">
                <div class="alert alert-block alert-success fade in" role="status">
                    <a class="close" data-dismiss="alert">×</a>
                    <s:message code="${message}" arguments="${messageAttrs}" />
                </div>
            </c:if>

            <c:url var="eliminaUrl" value="/web/asociacion/elimina" />
            <form:form commandName="asociacion" action="${eliminaUrl}" >
                <form:errors path="*" cssClass="alert alert-error" element="ul" />

                <div class="row-fluid" style="padding-bottom: 10px;">
                    <div class="span1"><s:message code="nombre.label" /></div>
                    <div class="span11">${asociacion.nombre}</div>
                </div>
                <div class="row-fluid" style="padding-bottom: 10px;">
                    <div class="span1"><s:message code="status.label" /></div>
                    <div class="span11">${asociacion.status}</div>
                </div>

                <p class="well">
                    <a href="<c:url value='/web/asociacion/edita/${asociacion.id}' />" class="btn btn-primary"><i class="icon-edit icon-white"></i> <s:message code="editar.button" /></a>
                <form:hidden path="id" />
                <input type="submit" name="elimina" value="<s:message code='eliminar.button'/>" class="btn btn-danger icon-remove" style="margin-bottom: 2px;" onclick="return confirm('<s:message code="confirma.elimina.message" />');" />
                </p>
            </form:form>
        </div>
    </body>
</html>
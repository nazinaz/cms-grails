<%@ page import="com.chefkoochooloo.dao.Country" %>



<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="country.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${countryInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'cover_url', 'error')} required">
	<label for="cover_url">
		<g:message code="country.cover_url.label" default="Coverurl" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="cover_url" cols="40" rows="5" maxlength="500" required="" value="${countryInstance?.cover_url}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'flag_url', 'error')} required">
	<label for="flag_url">
		<g:message code="country.flag_url.label" default="Flagurl" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="flag_url" cols="40" rows="5" maxlength="500" required="" value="${countryInstance?.flag_url}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'capital', 'error')} required">
	<label for="capital">
		<g:message code="country.capital.label" default="Capital" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="capital" required="" value="${countryInstance?.capital}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'charities', 'error')} ">
	<label for="charities">
		<g:message code="country.charities.label" default="Charities" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${countryInstance?.charities?}" var="c">
    <li><g:link controller="countryCharity" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="countryCharity" action="create" params="['country.id': countryInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'countryCharity.label', default: 'CountryCharity')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="country.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="code" required="" value="${countryInstance?.code}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'facts', 'error')} ">
	<label for="facts">
		<g:message code="country.facts.label" default="Facts" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${countryInstance?.facts?}" var="f">
    <li><g:link controller="countryFact" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="countryFact" action="create" params="['country.id': countryInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'countryFact.label', default: 'CountryFact')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'language', 'error')} required">
	<label for="language">
		<g:message code="country.language.label" default="Language" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="language" required="" value="${countryInstance?.language}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'population', 'error')} required">
	<label for="population">
		<g:message code="country.population.label" default="Population" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="population" type="number" value="${countryInstance.population}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'recipes', 'error')} ">
	<label for="recipes">
		<g:message code="country.recipes.label" default="Recipes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${countryInstance?.recipes?}" var="r">
    <li><g:link controller="recipe" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="recipe" action="create" params="['country.id': countryInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'recipe.label', default: 'Recipe')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'wish', 'error')} required">
	<label for="wish">
		<g:message code="country.wish.label" default="Wish" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="wish" required="" value="${countryInstance?.wish}"/>

</div>


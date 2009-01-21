<div>

<div id="nxthemesStyleManager" class="nxthemesScreen">

<h1 class="nxthemesEditor">Styles</h1>

<h2 class="nxthemesEditor">Unidentified presets</h2>

<#list theme_names as theme_name>
<#assign preset_names=This.getUnidentifiedPresetNames(theme_name)>

<#if preset_names>
<form style="padding: 9px "class="unidentifiedPresets" action="javascript:void(0)" submit="return false">

<table cellpadding="0" cellspacing="0" border="0">
<tr>
<th style="width: 10%">Theme</th>
<th style="width: 15%">Preset name</th>
<th style="width: 15%">Category</th>
<th style="width: 30%">Value</th>
<th style="width: 30%">Action</th>
</tr>
<#assign row = 1 /> 

<#list preset_names as name>

  <#if row % 2 == 1>
    <tr class="odd">
  <#else>
    <tr class="even">
  </#if>
  <#assign row = row + 1/>

  <td>${theme_name}<input type="hidden" name="theme_name" value="${theme_name}" /></td>
  <td>${name} <input type="hidden" name="preset_name" value="${name}" /></td>
  <td><select name="preset_category">
        <option value="color">color</option>
        <option value="background">background</option>
        <option value="border">border</option>
        <option value="font">font</option>
        <option value="image">image</option>
      </select>
  </td>
  <td><input size="40" type="string" name="preset_value" value="" /></td>
  <td>
    <button type="submit">
      <img src="${skinPath}/img/add-preset.png" width="16" height="16" />
      Add
    </button>
  </td>
  </form>
</tr>
</#list>


</table>
</form>

</#if>
</#list>

</div>

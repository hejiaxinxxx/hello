var Hot=function(){var d,o=function(){Handsontable.hooks.add("afterListen",e,d),Handsontable.hooks.add("afterDeselect",n,d),Handsontable.hooks.add("afterUnlisten",t,d),Handsontable.hooks.add("afterSelection",a,d),Handsontable.hooks.add("afterSelectionByProp",l,d),Handsontable.hooks.add("afterSelectionEnd",s,d),Handsontable.hooks.add("afterSelectionEndByProp",r,d),Handsontable.hooks.add("afterCreateRow",u,d),Handsontable.hooks.add("afterCreateCol",c,d),Handsontable.hooks.add("afterRemoveRow",f,d),Handsontable.hooks.add("beforeRemoveRow",h,d),Handsontable.hooks.add("afterRemoveCol",i,d),Handsontable.hooks.add("beforeRemoveCol",b,d),Handsontable.hooks.add("beforeOnCellMouseOver",g,d),Handsontable.hooks.add("afterOnCellMouseOver",C,d),Handsontable.hooks.add("beforeOnCellMouseOut",k,d),Handsontable.hooks.add("afterOnCellMouseOut",m,d),Handsontable.hooks.add("beforeOnCellMouseDown",H,d),Handsontable.hooks.add("afterOnCellMouseDown",R,d),Handsontable.hooks.add("afterBeginEditing",w,d),Handsontable.hooks.add("afterSetDataAtCell",M,d),Handsontable.hooks.add("beforeChange",S,d),Handsontable.hooks.add("beforeChangeRender",p,d),Handsontable.hooks.add("afterChange",y,d),Handsontable.hooks.add("beforeContextMenuShow",v,d),Handsontable.hooks.add("afterContextMenuShow",D,d),Handsontable.hooks.add("afterContextMenuHide",P,d),Handsontable.hooks.add("beforeUndo",z,d),Handsontable.hooks.add("beforeRedo",z,d),Handsontable.hooks.add("afterSetDataAtRowProp",A,d),Handsontable.hooks.add("afterRedo",U,d),Handsontable.hooks.add("afterUndo",E,d),Handsontable.hooks.add("afterSetCellMeta",x,d),Handsontable.hooks.add("beforeCopy",B,d),Handsontable.hooks.add("afterCopy",I,d),Handsontable.hooks.add("beforeCut",_,d),Handsontable.hooks.add("afterCut",K,d),Handsontable.hooks.add("beforePaste",W,d),Handsontable.hooks.add("afterPaste",L,d),Handsontable.hooks.add("beforeMergeCells",V,d),Handsontable.hooks.add("afterMergeCells",j,d),Handsontable.hooks.add("beforeUnmergeCells",F,d),Handsontable.hooks.add("afterUnmergeCells",Z,d),Handsontable.hooks.add("beforeRenderer",q,d),Handsontable.hooks.add("afterRenderer",G,d),Handsontable.hooks.add("beforeKeyDown",J,d),Handsontable.hooks.add("afterDocumentKeyDown",N,d),Handsontable.hooks.add("beforeUndo",z,d),Handsontable.hooks.add("beforeRedo",O,d),Handsontable.hooks.add("afterUndo",E,d),Handsontable.hooks.add("afterRedo",U,d),Handsontable.hooks.add("beforeColumnResize",Q,d),Handsontable.hooks.add("beforeRowResize",T,d),Handsontable.hooks.add("afterColumnResize",X,d),Handsontable.hooks.add("afterRowResize",Y,d)},e=function(e,o,n,t,a,l){},n=function(e,o,n,t,a,l){},t=function(e,o,n,t,a,l){},a=function(e,o,n,t,a,l){hotafterSelection(e,o,n,t,a,l)},l=function(e,o,n,t,a,l){},s=function(e,o,n,t,a,l){},r=function(e,o,n,t,a,l){},u=function(e,o,n){hotafterCreateRow(e,o,n)},c=function(e,o,n){hotafterCreateCol(e,o,n)},f=function(e,o){hotafterRemoveRow(e,o)},i=function(e,o){hotafterRemoveCol(e,o)},h=function(e,o){hotBeforeRemoveRow(e,o)},b=function(e,o){hotBeforeRemoveCol(e,o)},g=function(e,o,n,t,a,l){},C=function(e,o,n){dragFlagForSets&&($(n).addClass("over"),setCoords(o))},k=function(e,o,n,t,a,l){},m=function(e,o,n){$(n).removeClass("over")},H=function(e,o,n,t,a,l){},R=function(e,o,n,t,a,l){},w=function(e,o,n,t,a,l){},M=function(e,o,n,t,a,l){},S=function(e,o){},p=function(e,o){},y=function(e,o){if("edit"==o){for(var n=0;n<e.length;n++)d.setCellMeta(e[n][0],e[n][1],"value",e[n][3]);e[0][2]!=e[0][3]&&cPush(o)}else"CopyPaste.paste"==o&&(pasteSetValue(e),cPush(o))},v=function(e,o,n,t,a,l){},D=function(e,o,n,t,a,l){},P=function(e,o,n,t,a,l){},z=function(e,o,n,t,a,l){},O=function(e,o,n,t,a,l){},A=function(e,o,n,t,a,l){},U=function(e,o,n,t,a,l){},E=function(e,o,n,t,a,l){},x=function(e,o,n,t,a,l){},B=function(e,o,n,t,a,l){},I=function(e,o,n,t,a,l){},_=function(e,o,n,t,a,l){},K=function(e,o,n,t,a,l){},W=function(e,o,n,t,a,l){},L=function(e,o,n,t,a,l){},V=function(e,o){},j=function(e,o,n){mergeCells(e,!0,o)},F=function(e,o){},Z=function(e,o){mergeCells(e,!1)},q=function(e,o,n,t,a,l){hotbeforeRenderer(e,o,n,t,a,l)},G=function(e,o,n,t,a,l){hotafterRenderer(e,o,n,t,a,l)},J=function(e){46==e.keyCode&&loadcharts.beforeKeyDown.del()},N=function(e){90==e.keyCode&&e.ctrlKey?cUndo():89==e.keyCode&&e.ctrlKey?cRedo():46==e.keyCode&&delImage()},Q=(z=function(e){console.log("beforeUndo")},O=function(e){console.log("beforeRedo")},E=function(e){console.log("afterUndo")},U=function(e){console.log("afterRedo")},function(e,o,n){}),T=function(e,o,n){},X=function(e,o,n){hotafterColumnResize(e,o,n)},Y=function(e,o,n){hotafterRowResize(e,o,n)},ee=function(e){return d.getPlugin(e)};return{init:function(){var e=document.getElementById("showtable");d=new Handsontable(e,{width:"100%",height:"100%",allowEmpty:!0,colWidths:100,rowHeights:23,rowHeaders:!0,colHeaders:!0,allowInsertColumn:!0,allowInsertRow:!0,undo:!1,contextMenu:!0,copyPaste:!0,manualRowResize:!0,manualColumnResize:!0,language:"ZH",defaultColumnWidth:1,minCols:50,minRows:30,outsideClickDeselects:!1,manualColumnMove:!0,mergeCells:!0,customBorders:!1,comments:!1,selectionMode:"range",contextMenu:{callback:function(e,o){try{contextMenuCallback(e,o)}catch(e){console.log(e),console.error("contextMenuCallback函数不存在")}},items:{hot:{name:"配置",submenu:{items:[{key:"hot:removeDataDic",name:"清除字典项"},{key:"hot:link",name:"配置超链接"},{key:"hot:removelink",name:"取消超链接"},{key:"hot:subreport",name:"配置子报表"},{key:"hot:removesubreport",name:"取消子报表"},{key:"hot:overlapping",name:"交叉表头"},{key:"hot:clearoverlapping",name:"清除交叉表头"},{key:"hot:addImage",name:"插入图片"},{key:"hot:addcharts",name:"插入图表"}]}},hsep3:"---------",row_above:{},row_below:{},hsep1:"---------",col_left:{},col_right:{},hsep2:"---------",remove_row:{},remove_col:{},hsep4:"---------",alignment:{},hsep6:"---------",copy:{},cut:{},hsep8:"---------",mergeCells:{},hsep9:"---------",copyStyle:{name:"复制单元格样式"},pasteStyle:{name:"粘贴单元格样式"}}}}),o()},getHot:function(){return d},Methods:{countEmptyRows:function(e){return d.countEmptyRows(e)},countEmptyCols:function(e){return d.countEmptyCols(e)},countSourceCols:function(){return d.countSourceCols()},countSourceRows:function(){return d.countSourceRows()},countCols:function(){return d.countCols()},countRows:function(){return d.countRows()},getSelected:function(){return d.getSelected()},getData:function(e,o,n,t){return d.getData(e,o,n,t)},getValue:function(){return d.getValue()},getCellMeta:function(e,o){return d.getCellMeta(e,o)},getSourceDataAtCell:function(e,o){return d.getSourceDataAtCell(e,o)},getSourceData:function(e,o,n,t){return d.getSourceData(e,o,n,t)},getCell:function(e,o,n){return d.getCell(e,o,n)},getSelectedRange:function(){return d.getSelectedRange()},getSelectedRangeLast:function(){return d.getSelectedRangeLast()},getDataAtCell:function(e,o){return d.getDataAtCell(e,o)},setDataAtCell:function(e,o,n,t){return d.setDataAtCell(e,o,n,t)},setCellMeta:function(e,o,n,t){return d.setCellMeta(e,o,n,t)},setCellMetaObject:function(e,o,n){return d.setCellMetaObject(e,o,n)},loadData:function(e){return d.loadData(e)},render:function(){return d.render()},updateSettings:function(e){return d.updateSettings(e)},getSettings:function(){return d.getSettings()},mergeSelection:function(){ee("MergeCells").mergeSelection()},unmergeSelection:function(){ee("MergeCells").unmergeSelection()},getInstance:function(){return d.getInstance()},alert:function(e,o,n,t,a){d.alter(e,o,n,t,a)},getColWidth:function(e){return d.getColWidth(e)},getRowHeight:function(e){return d.getRowHeight(e)},disablePlugin:function(){var e=ee("ManualColumnResize"),o=ee("ManualRowResize");e.disablePlugin(),o.disablePlugin()},enablePlugin:function(){var e=ee("ManualColumnResize"),o=ee("ManualRowResize");e.enablePlugin(),o.enablePlugin()},updatePlugin:function(){var e=ee("ManualColumnResize"),o=ee("ManualRowResize");e.updatePlugin(),o.updatePlugin()},getCellMetaAtRow:function(e){return d.getCellMetaAtRow(e)},deselectCell:function(){return d.deselectCell()},selectCell:function(e,o,n,t,a,l){return d.selectCell(e,o,n,t,a,l)},getPlugin:ee}}};
<div class="coderunner" ng-controller="CoderunnerControl as coderunnerCtrl">

   <div class="control-area">
	
      <div class="loading" ng-model="coderunnerCtrl.jsrepl_loaded" ng-hide="coderunnerCtrl.jsrepl_loaded">
	 <div ng-hide="coderunnerCtrl.error_message">
            <em>Loading {{coderunnerCtrl.language}}...</em>
            <img class="style: float:left" src="spinner.gif" ></img>
         </div>
         <div ng-show="coderunnerCtrl.error_message" class="alert-danger">
            {{ coderunnerCtrl.error_message }}
         </div>
      </div>

      <div ng-show="coderunnerCtrl.jsrepl_loaded" ng-model="coderunnerCtrl.jsrepl_loaded" >
         <a class="btn btn-primary" ng-click="coderunnerCtrl.toggleMode()">{{ coderunnerCtrl.control_button_label }}</a>
         <a class="btn btn-primary">Gist it</a>
      </div>	
	
   </div>

   <div class="display-area">	

      <div class="editor" ng-show="coderunnerCtrl.mode === 'editor'" ng-transclude></div>

      <div class="output" ng-show="coderunnerCtrl.mode === 'output'"></div>
 
   </div>
  


</div>
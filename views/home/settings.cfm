<cfoutput>
<div class="row">
    <div class="col-md-12">
        <h1 class="h1"><i class="fa fa-flask fa-lg"></i> Google reCaptcha</h1>
    </div>
</div>

<div class="row">
    
    <div class="col-md-12">
        
        #getInstance( "messagebox@cbMessagebox" ).renderIt()#

        <div class="panel panel-default">
            
            <div class="panel-body">
                
                <div class="alert alert-info">
                    Please enter your reCaptcha credentials in the form below. You can retrieve your credentials from the <a href="https://www.google.com/recaptcha/admin">reCaptcha admin panel</a>.
                </div>
               
                #html.startForm(
                    name="commentSettingsForm", 
                    action=prc.xehSave, 
                    class="form-vertical"
                )#	
                    #html.textField(
                        name="publickey",
                        label="Public Key",
                        value=rc.publickey,
                        class="form-control",
                        size="60",
                        wrapper="div class=controls",
                        labelClass="control-label",
                        groupWrapper="div class=form-group"
                    )#
                    #html.textField(
                        name="privatekey",
                        label="Private Key",
                        value=rc.privatekey,
                        class="form-control",
                        size="60",
                        wrapper="div class=controls",
                        labelClass="control-label",
                        groupWrapper="div class=form-group"
                    )#  
                    #html.textField(
                        name="activateForIds",
                        label="Active Repcatcha only if form field input id is on focus (optional). Enter comma separated without space.",
                        value=event.getValue('activateForIds',''),
                        class="form-control",
                        size="60",
                        wrapper="div class=controls",
                        labelClass="control-label",
                        groupWrapper="div class=form-group"
                    )#
                    <div class="alert alert-info">
                        For activation on input field ids <a href="https://dev.to/uf4no/improve-page-performance-lazy-loading-recaptcha-442o">see here</a>.
                    </div>                       
                    <!--- End Tab Content --->
                    <div class="form-actions">
                        #html.button(type="submit", value="Save Settings", class="btn btn-danger" )#
                    </div>  
                #html.endForm()#         	         	
			</div>
		</div>
	</div>
</div>
</cfoutput>
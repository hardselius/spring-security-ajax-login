<div id="form">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h3>Modal header</h3>
    </div>
    <p>Please enter your login credentials</p>

    <form>
        <div class="message" style="display: none;">&nbsp;</div>
        <div class="error" style="display: none;">&nbsp;</div>
        <div>
            <label for="j_username">User:</label>
            <input type='text' id="j_username" name='j_username'/>
        </div>
        <div style="clear: both;"></div>
        <div>
            <label for="j_password">Password:</label>
            <input type="password" id="j_password" name="j_password"/>
        </div>
        <div style="clear: both;"></div>
        <div id="rememberMe">
            <input type="checkbox" name="_spring_security_remember_me" id="_spring_security_remember_me"/>
            <label for="_spring_security_remember_me">Don't ask for my password for two weeks</label>
        </div>
        <div style="clear: both;"></div>
        <button id="app-login" type="button" class="btn btn-primary">Login</button>
    </form>
</div>

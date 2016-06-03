<cfoutput>				
<footer id="footer">
	 <!--- contentboxEvent --->
	 #cb.event( "cbui_footer" )#
	<div id="copyright">
		<div class="container">
			<div class="col-md-6">
				<p class="text-muted">Copyright &copy; #cb.siteName()#.  All rights reserved.</p>
				<p class="text-muted">Powered by ContentBox v#cb.getContentBoxVersion()#</p>
			</div>
			<div class="col-md-6">
				<div class="social">
					<cfif cb.themeSetting( 'socialFB', '' ) is not "">
					<span class="fa-stack fa-1x">
						<a href="#cb.themeSetting( 'socialFB' )#">
							<span class="sr-only">Visit our Facebook page</span>
							<span class="fa fa-circle fa-stack-2x"></span>
							<span class="fa fa-facebook fa-stack-1x textWhite"></span>
						</a>
					</span>
				</cfif>
				<cfif cb.themeSetting( 'socialT', '' ) is not "">
					<span class="fa-stack fa-1x">
						<a href="#cb.themeSetting( 'socialT' )#">
							<span class="sr-only">Twitter</span>
							<span class="fa fa-circle fa-stack-2x"></span>
							<span class="fa fa-twitter fa-stack-1x textWhite"></span>
						</a>
					</span>
				</cfif>
				<cfif cb.themeSetting( 'socialGP', '' ) is not "">
					<span class="fa-stack fa-1x">
						<a href="#cb.themeSetting( 'socialGP' )#">
							<span class="sr-only">Google+</span>
							<span class="fa fa-circle fa-stack-2x"></span>
							<span class="fa fa-google-plus fa-stack-1x textWhite"></span>
						</a>
					</span>
				</cfif>
				<cfif cb.themeSetting( 'socialIG', '' ) is not "">
					<span class="fa-stack fa-1x">
						<a href="#cb.themeSetting( 'socialIG' )#">
							<span class="sr-only">Instagram</span>
							<span class="fa fa-circle fa-stack-2x"></span>
							<span class="fa fa-instagram fa-stack-1x textWhite"></span>
						</a>					
					</span>
				</cfif>
				<cfif cb.themeSetting( 'socialYT', '' ) is not "">
					<span class="fa-stack fa-1x">
						<a href="#cb.themeSetting( 'socialYT' )#">
							<span class="sr-only">YouTube</span>
							<span class="fa fa-circle fa-stack-2x"></span>
							<span class="fa fa-youtube fa-stack-1x textWhite"></span>
						</a>					
					</span>
				</cfif>
				</div>
			</div>
		</div>
	</div>
</footer>
</cfoutput>
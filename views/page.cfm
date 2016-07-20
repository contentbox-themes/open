<cfoutput>
<!--- View Arguments --->
<cfparam name="args.print" 		default="false">
<cfparam name="args.sidebar" 	default="true">

<cfset prc.sliderCategory = html.slugify( cb.themeSetting( 'sliderCategory', 'none' ) )>
<cfset prc.entriesCategory = html.slugify( cb.themeSetting( 'entriesCategory', 'none' ) )>
<cfset prc.singleEntryCategory = html.slugify( cb.themeSetting( 'singleEntryCategory', 'none' ) )>

<!--- If homepage, present homepage jumbotron --->
<cfif cb.isHomePage()>
	<!--- Slider --->
	<cfif prc.sliderCategory is not "none">
		<div id="home-slider">
			#cb.widget( name='ContentStoreSlider',args={max=3,category=prc.sliderCategory} )#
		</div>
	</cfif>
<cfelse>
	<div id="body-header" style="background-image:url( #prc.page.getFeaturedImageURL()#)">
		<!--- Title --->
		<div class="container title-container">
			<h1>#prc.page.getTitle()#</h1>
			<div class="text-divider5">
				#prc.page.getExcerpt()#
			</div>
		</div>
	</div>
</cfif>

<cfif cb.isHomePage()>
	<div class="container-fluid">
		<div class="col-md-9">
			<!--- Section 1 --->
			<cfif prc.entriesCategory is not "none">					
				<section id="section-1">
					<div class="row">
						#cb.widget( name='RecentEntries',args={category=prc.singleEntryCategory,max=1,titleLevel=1,showDate=false,widgetTemplate='onecol'} )#
					</div>
					<cfif cb.themeSetting( 'singleEntryLinkURL','' ) is not ''>
						<div class="row">
							<div class="col-md-12">
								<a href="#cb.themeSetting( 'singleEntryLinkURL','' )#" class="more-link">#cb.themeSetting( 'singleEntryLinkText','More' )#</a>
							</div>
						</div>
					</cfif>
				</section>
			</cfif>
			<!--- end section 1 --->
			
			<!--- Section 2 --->
			<cfif prc.entriesCategory is not "none">					
				<section id="section-2">
					<div class="row">
						#cb.widget( name='RecentEntries',args={category=prc.entriesCategory,titleLevel=1,widgetTemplate='twocol'} )#
					</div>
					<cfif cb.themeSetting( 'entriesLinkURL','' ) is not ''>
						<div class="row">
							<div class="col-md-12">
								<a href="#cb.themeSetting( 'entriesLinkURL','' )#" class="more-link">#cb.themeSetting( 'entriesLinkText','More' )#</a>
							</div>
						</div>
					</cfif>
				</section>
			</cfif>
			<!--- end section 2 --->
		</div>
		<div id="col-hp-right" class="col-md-3">
			<div class="panel">
				<div class="panel-heading">
					<h2>FOLLOW US</h2>
				</div>
				<div class="panel-body">
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
			</div><!--- end social panel --->
			<div class="panel article">
				<cfif cb.themeSetting( 'hpArticleText','' ) is not "">
					<div class="panel-heading">
						<h2>#cb.themeSetting( 'hpArticleTitle','' )#</h2>
					</div>
					<div class="panel-body article-content">
						<cfif cb.themeSetting( 'hpArticleImg','' ) is not ''>
							<img class="img-responsive article-img" src="#cb.themeSetting( 'hpArticleImg','' )#" alt="#cb.themeSetting( 'hpArticleTitle','' )#">
						</cfif>
						<div class="article-text">#cb.themeSetting( 'hpArticleText','' )#</div>
						<cfif cb.themeSetting( 'hpArticleBtnURL','' ) is not ''>
							<a class="more-link" herf="#cb.themeSetting( 'hpArticleBtnURL','' )#">#cb.themeSetting( 'hpArticleBtnText','More' )#</a>
						</cfif>
					</div>
				</cfif>
			</div>
			<div class="panel">
				<div class="panel-heading">
					<h2>Recent Entries</h2>
				</div>
				<div class="panel-body">
					#cb.widget( name='RecentEntries',args={showExcerpt=false,widgetTemplate='medialist'} )#
				</div>
			</div><!--- end recent entries panel --->
			<div class="panel">
				<div class="panel-heading">
					<h2>Categories</h2>
				</div>
				<!---
				Display Categories using ContentBox collection template rendering
				the default convention for the template is "category.cfm" you can change it via the quickCategories() 'template' argument.
				--->
				<div class="panel-body">
					<ul class="cat-list">
						#cb.quickCategories()#		
					</ul>
				</div>
			</div><!--- end categories panel --->
		</div><!--- end right column --->
	</div>
<cfelse>
	<!--- ContentBoxEvent --->
	#cb.event( "cbui_prePageDisplay" )#
	
	<!--- Body Main --->
	<section id="body-main">
		<div class="container">
	
			<!--- Export and Breadcrumbs Symbols --->
			<cfif !args.print AND !isNull( "prc.page" ) AND prc.page.getSlug() neq cb.getHomePage()>
				<!--- Exports --->
				<div class="btn-group pull-right">
					<button type="button" class="btn btn-success btn-sm dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" title="Export Page...">
						<i class="fa fa-print"></i> <span class="caret"></span>
					</button>
					<ul class="dropdown-menu">
						<li><a href="#cb.linkPage( cb.getCurrentPage() )#.print" target="_blank">Print Format</a></li>
						<li><a href="#cb.linkPage( cb.getCurrentPage() )#.pdf" target="_blank">PDF</a></li>
					</ul>
				</div>
	
				<!--- BreadCrumbs --->
				<div id="body-breadcrumbs" class="col-sm-12">
					<i class="fa fa-home"></i> #cb.breadCrumbs( separator="<i class='fa fa-angle-right'></i> " )#
				</div>
			</cfif>
	
			<!--- Determine span length due to sidebar or homepage --->
			<cfif cb.isHomePage() OR !args.sidebar>
				<cfset variables.span = 12>
			<cfelse>
				<cfset variables.span = 9>
			</cfif>
			<div class="col-sm-#variables.span#">
				
				<!--- Render Content --->
				#prc.page.renderContent()#
	
				<!--- Comments Bar --->
				<cfif cb.isCommentsEnabled( prc.page )>
				<section id="comments">
					#html.anchor( name="comments" )#
					<div class="post-comments">
						<div class="infoBar">
							<p>
								<button class="button2" onclick="toggleCommentForm()"> <i class="icon-comments"></i> Add Comment (#prc.page.getNumberOfApprovedComments()#)</button>						
							</p>
						</div>
						<br/>
					</div>
	
					<!--- Separator --->
					<div class="separator"></div>
	
					<!--- Comment Form: I can build it or I can quick it? --->
					<div id="commentFormShell">
						<div class="row">
							<div class="col-sm-12">
								#cb.quickCommentForm(prc.entry)#
							</div>
						</div>
					</div>
	
					<!--- clear --->
					<div class="clr"></div>
	
					<!--- Display Comments --->
					<div id="comments">
						#cb.quickComments()#
					</div>
				</section>
				</cfif>
	    	</div>
	
	    	<!--- Sidebar --->
	    	<cfif args.sidebar and !cb.isHomePage()>
				<div class="col-sm-3 sidenav">
					#cb.quickView( view='_pagesidebar' )#
				</div>
	    	</cfif>
		</div>
	</section>
</cfif>

<!--- ContentBoxEvent --->
#cb.event("cbui_postPageDisplay")#

<!--- Custom JS --->
<!---<script type="text/javascript">
	$(document).ready(function() {
		<cfif cb.isCommentFormError()>
			toggleCommentForm();
		</cfif>
	});
	function toggleCommentForm(){
		$("##commentForm").slideToggle();
	}
</script>--->
</cfoutput>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
							 </div><!--/row-->  
								<div class="row" id="footer">    
								  <div class="col-sm-6">
									
								  </div>
								  <div class="col-sm-6">
									<p>
									<a href="#" class="pull-right">©Mens Ubiqua 2017</a>
									</p>
								  </div>
								</div>
							  
							  <hr>
								
							  <hr>
								
							  
							</div><!-- /col-9 -->
						</div><!-- /padding -->
					</div>
					<!-- /main -->
				  
				</div>
			</div>
		</div>


		<!--post modal-->
		<div id="postModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
		  <div class="modal-dialog">
			  <div class="modal-content">
				  <div class="modal-header">
					  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
						Nueva publicación
				  </div>
				  <form role="form" class="form center-block" action="${var.url}/user/publicar" method="post">
					  <div class="modal-body">
						  
						
						  <textarea  rows="10" cols="80" id="texto" name="texto"  autofocus="" placeholder="Escribe aqui tu publicación"></textarea>
						</div>
						  
					  <div class="modal-footer">
				        <div class="col-xs-5 selectContainer">
				            <select class="form-control" name="privacidad" id="texto">
				                <option value="publica">Publica</option>
				                <option value="privada">Privada</option>
				            </select>
				        </div>
						<button type="submit" name="submit" value="submit" class="btn btn-primary btn-sm">Aceptar</button>
					  </div>
				  </form>	
				</div>
		  </div>
		</div>
        <script type="text/javascript" src="${var.url}/resources/js/jquery-1.11.1.min.js"></script>
        <script type="text/javascript" src="${var.url}/resources/js/bootstrap.js"></script>
        
        
        <script type="text/javascript">
        $(document).ready(function() {
			$('[data-toggle=offcanvas]').click(function() {
				$(this).toggleClass('visible-xs text-center');
				$(this).find('i').toggleClass('glyphicon-chevron-right glyphicon-chevron-left');
				$('.row-offcanvas').toggleClass('active');
				$('#lg-menu').toggleClass('hidden-xs').toggleClass('visible-xs');
				$('#xs-menu').toggleClass('visible-xs').toggleClass('hidden-xs');
				$('#btnShow').toggle();
			});
        });
        
        $(function () {
            CKEDITOR.replace('texto');
        });
        </script>
        
        <script type="text/javascript" src="${var.url}/resources/js/jquery.dataTables.min.js"></script>
 		<script type="text/javascript" src="${var.url}/resources/js/dataTables.bootstrap.min.js"></script>
 		
  
	 <script>
	 	$(document).ready(function() {
		    $('#usuarios').DataTable();
		} );
	 </script>
</body></html>
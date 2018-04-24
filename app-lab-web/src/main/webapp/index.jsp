<!DOCTYPE html>
<html lang = "pt-br">
   <head>
       <title>Cálculo do IMC !</title>
        <meta charset = "utf-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <%@ page contentType="text/html; charset=UTF-8" %>
        <link rel="stylesheet" 
        href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
        integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" 
        crossorigin="anonymous">
    </head>
    <body>
        <form class="form-horizontal">
            <fieldset>
            
            <!-- Form Name -->
           <center><legend>Caculadora de IMC</legend></center>
            
            <!-- Text input-->
            <div class="form-group">
              <label class="col-md-4 control-label" for = "altura">Altura</label>  
              <div class="col-md-4">
              <input id="altura" name = "altura" 
                    type="text" 
                    placeholder="#.## m"
                    class="form-control input-md">
                
              </div>
            </div>
            
            <!-- Text input-->
            <div class="form-group">
              <label class="col-md-4 control-label" for = "peso">Peso</label>  
                 <div class="col-md-4">
                    <input id="peso" 
                         name="peso" 
                         type="text"
                         placeholder="###.## kg"
                         class="form-control input-md">
                
              </div>
            </div>
                <%
                     float imcAltura = parseFloat(request.getParameter("altura"));
                     float imcPeso = parseFloat(request.getParameter("peso"));
                %>
                <%
                     public static float calculaIMC(void x){
                          float imcTotal = (peso/(altura*altura));
                          return imcTotal;
                     }
                 %>
            <!-- Button -->
             <div class="form-group">
                 <label class="col-md-4 control-label" for=""></label>
                     <div class="col-md-4">
                         <type = "button" class="btn btn-primary" 
                             id = "resultadoIMC" 
                             onclick = "calculaIMC()">Calcular IMC</button>
                       </div>
               </div>
            <!-- Text input-->
            <div class="form-group">
                 <label class="col-md-4 control-label" for="imc">IMC</label> 
                     <div class="col-md-4">
                         <input id="imc1" 
                         type = "text"
                         class="form-control input-md"><br>
                    </div>
            </div><br>  
            <!-- Tabela -->
               <!-- Container -->
                   <div class="container">
                        <div class="row Tabela IMC">
                                 <div class="col-md-offset-4 col-md-4"></div>
                <table class = "table table-condensed table-bordered table-hover" 
                    id = "tabelaIMC">
                    <thead>
                        <tr>
                             <th>Classificação</th> 
                             <th>IMC</th>         
                             <th>Peso</th>
                        </tr>
                    </thead>
                    <tbody>   
                        <tr class = "default" id = "magreza">
                              <td>Magreza</td>
                              <td>< 18.5</td>      
                              <td>< 55.4 Kg</td>
                        </tr>
                        <tr class = "default" id = "normal">
                              <td>Normal</td>	     
                              <td>18.5 a 24.9</td> 
                              <td>55.4 a 74.5 Kg</td>
                        </tr>
                        <tr class = "default" id = "sobrepeso">
                            <td>Sobrepeso</td>  	 
                            <td>24.9 a 30</td>	  
                            <td>74.5 a 89.8 Kg</td>
                        </tr>
                        <tr class = "default" id = "obesidade">
                            <td>Obesidade</td>	 
                            <td> 30</td>	      
                            <td> 89.8 Kg</td>
                        </tr>
                    </tbody>
                </table>
             </div>
            </div>
            </fieldset>
            </form>
      
            
        </body>
        </html>

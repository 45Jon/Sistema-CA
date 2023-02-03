<!--PHP PARA AGREGAR EMPLEADOS-->

<?php
//se mandan a llamar lo que nesecitamos
include("head.php");
include("leftmenu.php");
include("agregar.php");
?>

<div class="container ">
  <div>
    <h1 class="h4 mb-4 mt-5" align="center"><b>Datos del Docente&raquo; Agregar datos</b></h1>
    <hr class="bg-dark" style="height:2px; width:100%; border-width:0; color:#343a40; background-color:#343a40">
  </div>
  <div class="container mt-5">
    <form class=" row d-flex flex-column " action="" method="post">
      <div class="container mb-3 col-12 col-sm-12 col-md-12 col-lg-10 col-xl-8 col-xxl-6 ">
        <input type="text" name="codigo" class="form-control" placeholder="Código del docente" required>  
      </div>
      <div class="container mb-3 col-12 col-sm-12 col-md-12 col-lg-10 col-xl-8 col-xxl-6 ">
        <input type="text" name="nombres" class="form-control" placeholder="Nombre completo" required> 
      </div>
      <div class="container mb-3 col-12 col-sm-12 col-md-12 col-lg-10 col-xl-8 col-xxl-6 ">
        <div class="row">
          <div class="col-6">
            <input type="text" name="dui" class="form-control" placeholder="Cédula" required> 
          </div>
          <div class="col-6">
            <input type="text" name="telefono" class="form-control" placeholder="Teléfono" required>  
          </div>
        </div>
      </div>
      <div class="container mb-3 col-12 col-sm-12 col-md-12 col-lg-10 col-xl-8 col-xxl-6 ">
        <textarea name="direccion" class="form-control" placeholder="Dirección" required></textarea>  
      </div>
      <div class="container mb-3 col-12 col-sm-12 col-md-12 col-lg-10 col-xl-8 col-xxl-6 ">
        <input type="text" name="puesto" class="form-control" placeholder="Asignatura" required>
      </div>
      <div class="container mb-3 col-12 col-sm-12 col-md-12 col-lg-10 col-xl-8 col-xxl-6 ">
          <label class="control-label">Tipo de usuario:</label>
          <select name="tipo" class="form-select form-select-sm" aria-label=".form-select-sm example">
            <option value="2">Docente</option>
            <option value="1">Administrador</option>
          </select>
      </div>
      <div class="container mb-3 col-12 col-sm-12 col-md-12 col-lg-10 col-xl-8 col-xxl-6 ">
        <input type="password" id="contra" name="pass" class="form-control" placeholder="Contraseña" required>
      </div>
      <div class="container mb-3 col-12 col-sm-12 col-md-12 col-lg-10 col-xl-8 col-xxl-6 ">
        <input type="submit" name="add" class="btn btn-sm btn-primary" value="Guardar datos">
        <a href="admin_ventana.php" class="btn btn-sm btn-danger">Cancelar</a>      
      </div>
    </form>
  </div>    
</div>

<?php include_once ("foot.php");?>
<script>
  $(document).ready(function () {
    $("#contra").hide();
    $("#contra").removeAttr("required");
    $(".form-select").change(function () {
      if ($(this).val() == "1" and "2") {
        $("#contra").show();
        $("#contra").prop("required", true);
      } else {
        $("#contra").hide();
        $("#contra").removeAttr("required");
      }
    });
  });
</script>
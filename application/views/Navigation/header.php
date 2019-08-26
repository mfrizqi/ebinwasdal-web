<?php if ($this->session->Pk_MsGroupMenu_Id == 1) { ?>
<li>
<a href="#"><i class="fa  fa-user fa-gear"></i><span>Pengaturan User</span>
  <span class="pull-right-container">
    <i class="fa fa-angle-left pull-right"></i>
  </span>
  </a>
  <ul class="treeview-menu">
    <li><a href="<?php echo site_url('User') ?>"><i class="fa fa-user"></i><span> User</span></a></li>
    <li><a href="<?php echo site_url('GroupMenu') ?>"><i class="fa fa-group"></i><span> Group Menu</span></a></li>
  </ul>
</li>
<li>
<a href="#"><i class=" fa fa-get-pocket"></i><span>Binwasdal </span>
  <span class="pull-right-container">
    <i class="fa fa-angle-left pull-right"></i>
  </span>
  </a>
  <ul class="treeview-menu">
    <li><a href="<?php echo site_url('binwasdal/Dalamgedung') ?>"><i class="fa fa-cubes"></i><span>Dalam Gedung</span></a></li>
    <li><a href="<?php echo site_url('binwasdal/Luargedung') ?>"><i class="fa fa-cubes"></i><span>Luar Gedung</span></a></li>
  </ul>
</li>
<li>
<a href="#"><i class=" fa fa-get-pocket"></i><span>Monev SPM </span>
  <span class="pull-right-container">
    <i class="fa fa-angle-left pull-right"></i>
  </span>
  </a>
  <ul class="treeview-menu">
    <li><a href="<?php echo site_url('monevspm/Monevspm') ?>"><i class="fa fa-cubes"></i><span>Input SPM</span></a></li>
  </ul>
</li>
<li>
<a href="#"><i class=" fa fa-get-pocket"></i><span>Rekomendasi </span>
  <span class="pull-right-container">
    <i class="fa fa-angle-left pull-right"></i>
  </span>
  </a>
  <ul class="treeview-menu">
    <li><a href="<?php echo site_url('rekomendasi/Tu') ?>"><i class="fa fa-cubes"></i><span>Input TU</span></a></li>
    <li><a href="<?php echo site_url('rekomendasi/Sdk') ?>"><i class="fa fa-cubes"></i><span>Input SDK</span></a></li>
    <li><a href="<?php echo site_url('rekomendasi/Yankes') ?>"><i class="fa fa-cubes"></i><span>Input Yankes</span></a></li>
    <li><a href="<?php echo site_url('rekomendasi/Kesmas') ?>"><i class="fa fa-cubes"></i><span>Input Kesmas</span></a></li>
  </ul>
</li>
<?php } else { ?>

<li>
<a href="#"><i class=" fa fa-get-pocket"></i><span>Binwasdal </span>
  <span class="pull-right-container">
    <i class="fa fa-angle-left pull-right"></i>
  </span>
  </a>
  <ul class="treeview-menu">
    <li><a href="<?php echo site_url('binwasdal/Dalamgedung') ?>"><i class="fa fa-cubes"></i><span>Dalam Gedung</span></a></li>
    <li><a href="<?php echo site_url('binwasdal/Luargedung') ?>"><i class="fa fa-cubes"></i><span>Luar Gedung</span></a></li>
  </ul>
</li>
<li>
<a href="#"><i class=" fa fa-get-pocket"></i><span>Monev SPM </span>
  <span class="pull-right-container">
    <i class="fa fa-angle-left pull-right"></i>
  </span>
  </a>
  <ul class="treeview-menu">
    <li><a href="<?php echo site_url('monevspm/Monevspm') ?>"><i class="fa fa-cubes"></i><span>Input SPM</span></a></li>
  </ul>
</li>
<li>
<a href="#"><i class=" fa fa-get-pocket"></i><span>Rekomendasi </span>
  <span class="pull-right-container">
    <i class="fa fa-angle-left pull-right"></i>
  </span>
  </a>
  <ul class="treeview-menu">
    <li><a href="<?php echo site_url('rekomendasi/Tu') ?>"><i class="fa fa-cubes"></i><span>Input TU</span></a></li>
    <li><a href="<?php echo site_url('rekomendasi/Sdk') ?>"><i class="fa fa-cubes"></i><span>Input SDK</span></a></li>
    <li><a href="<?php echo site_url('rekomendasi/Yankes') ?>"><i class="fa fa-cubes"></i><span>Input Yankes</span></a></li>
    <li><a href="<?php echo site_url('rekomendasi/Kesmas') ?>"><i class="fa fa-cubes"></i><span>Input Kesmas</span></a></li>
  </ul>
</li>
</ul>
</li>
<?php } ?>

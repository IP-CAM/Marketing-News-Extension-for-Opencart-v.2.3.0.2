<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row">  	<?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>    <?php $class = 'col-sm-6'; ?>    <?php } elseif ($column_left || $column_right) { ?>    <?php $class = 'col-sm-9'; ?>    <?php } else { ?>    <?php $class = 'col-sm-12'; ?>    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">		  <?php echo $content_top; ?>		      <h1><?php echo $heading_title; ?></h1>	  <?php foreach ($all_news as $news) { ?>	  <div class="row">		<div class="col-sm-4">		<?php if ($news['image']) { ?>			<img src="<?php echo $news['image']; ?>" alt="<?php echo $news['title']; ?>" />		<?php } ?>		</div>		<div class="col-sm-8">			<a href="<?php echo $news['view']; ?>"><h2><?php echo $news['title']; ?></h2></a>			<span><?php echo $news['date_added']; ?></span>			<br/><br/>			<p><?php echo $news['description']; ?></p>			<a href="<?php echo $news['view']; ?>"><?php echo $text_view; ?></a>		</div>	  </div>	  <?php } ?>	  <div class="row">        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>        <div class="col-sm-6 text-right"><?php echo $results; ?></div>      </div>
	  <?php echo $content_bottom; ?>	</div>
    <?php echo $column_right; ?>		</div>
</div>
<?php echo $footer; ?> 
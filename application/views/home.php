	<div class="text-center">
		<label class="py-2">Ordenar por:</label>
		<br>
		<button type="button" class="btn btn-secondary btn-md me-0">Nome do produto</button>
		<button type="button" class="btn btn-secondary btn-md ms-0">Favoritos</button>
	</div>

	<div class="mt-5 row">
		<?php foreach($produtos as $prod): ?>
		<a href="<?= $u . 'produto/' . $prod['id']?>" class="text-decoration-none m-1 col-3 produto borda-cinza text-center">
			<div class="favorito float-end">
				<img src="<?=$u?>assets\images\favorite-star-svgrepo-com.svg" height="50" width="50" class="" alt="Favorito">
			</div>				
			<img src="<?=$prod['imagem']?>" class="produto-imagem img-fluid mt-3">
			<h3><?=$prod['nome']?></h3>
			<h2>R$ <?=$prod['valor']?></h2>
		</a>
		<?php endforeach; ?>
	</div>

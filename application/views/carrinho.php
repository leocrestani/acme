<div>
<table class="table">
  <thead>
    <tr>
      <th scope="col">Imagem</th>
      <th scope="col">Nome</th>
      <th scope="col">Descricao</th>
      <th scope="col">Valor</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach($produtos as $prod): ?>
    <tr>
      <td><img src="<?=$prod['imagem']?>" height="200" width="200" class="produto-imagem"></td>
      <td><?=$prod['nome']?></td>
      <td><?=$prod['descricao']?></td>
      <td>R$ <?=$prod['valor']?></td>
    </tr>
    <?php endforeach; ?>
  </tbody>
</table>    
</div>
<br>
<a href="<?=$u?>carrinho/finalizar" class="btn btn-success btn-lg">Finalizar compra</a>
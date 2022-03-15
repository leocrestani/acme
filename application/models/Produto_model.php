<?php

class Produto_model extends CI_Model{

    //Retorna todos os produtos por ordem alfabética
    public function getAllByName(){
        $this->db->select('*');
        $this->db->from('produto');
        $this->db->order_by('nome', 'asc');
        $data = $this->db->get();
        return $data->result_array();
    }

    //Retorna todos os produtos por ordem alfabética priorizando os favoritos
    public function getAllFavoritos(){
        $this->db->select('*');
        $this->db->from('produto');
        $this->db->order_by('favorito', 'desc');
        $this->db->order_by('nome', 'desc');
        $data = $this->db->get();
        return $data->result_array();
    }

    public function getById($id){
        $this->db->select('*');
        $this->db->from('produto');
        $this->db->where('id', $id);
        $data = $this->db->get();
        return $data->row_array();
    }

    //Verifica se nao existe um produto com o mesmo nome
    public function checkName($nome){
        $this->db->select('*');
        $this->db->from('produto');
        $this->db->order_by('nome', 'desc');
        $data = $this->db->get();
        return $data->result_array();
    }

    //Cria um produto e adiciona na base
    public function criarProduto(){
        $verbo = array("Armário", "Navio", "Mala", "Base", "Hidroavião", "Revista", "Carretel", "Minissaia", "Tamborim",
        "Andador", "Geladeira", "Estátua", "Rolo", "Crachá", "Peneira", "Bafômetro", "Desentupidor",
        "Guarda-chuva", "Espanador", "Escudo", "Raquete", "Vaso sanitário", "Lancheira", "Cofre",
        "Helióstato", "Medalha", "Foguete", "Lata", "Sintetizador", "Grampo", "Bucha", "Catraca",
        "Alfinete", "Caneca", "Fita", "Moeda", "Gel", "Maquete", "Interfone", "Gaveta", "Helicóptero",
        "Vela de cera", "Quimono", "Necessaire", "Machado", "Tecido", "Vareta de freio", "Obra de arte",
        "Canga");

        $adjetivos = array("prepotente", "valioso", "legítimo", "desleixado", "Natural", "inteligente", "disciplinado",
        "louvável", "amargurado", "honesto", "odioso", "vergonhoso", "horroroso", "magnífico", "gordo",
        "romântico", "sublime", "mesquinho", "injusto", "medroso", "otário", "quente", "intenso", "Sábio",
        "zeloso", "desapegado", "faceiro", "companheiro", "empenhado", "espantoso", "traidor",
        "perfeccionista", "Qualificado", "feio", "tolerante", "orgulhoso", "ignorante", "lutador", "desejado",
        "exigente", "nostálgico", "próspero", "compreensivo", "excelente", "estourado", "malvado",
        "windsurfista", "falso", "melhor", "terno");

        do{            
            $nome = $verbo[array_rand($verbo, 1)] . ' ' . $adjetivos[array_rand($adjetivos, 1)];
        }while (empty($this->checkName($nome)));
        $descricao = file_get_contents('http://loripsum.net/api/1/short/prude/plaintext');
        if (strlen($descricao) > 500){
            $descricao = substr($descricao, 0, 499);
        }
        $data = array(
            'nome' => $nome,
            'descricao' => $descricao,
            'valor' => round((10 + strlen($nome) * ((500 - strlen($descricao)) / (30 - strlen($nome)))), 2),
            'imagem' => 'https://picsum.photos/seed/'. rand(0,100000000) . '/800'
        );
        $this->db->insert('produto', $data);
    }
}
<?php

class Cursos
{

    private $mysql;

    public function __construct(mysqli $mysql)
    {
        $this->mysql = $mysql;
    }
    public function exibirTodos(): array
    {
        $resultado = $this->mysql->query("SELECT id_curso, titulo, descricao FROM cursos");
        $cursos = $resultado->fetch_all(MYSQLI_ASSOC);
        return $cursos;
    }

    public function encontrarPorId(string $id): array
    {
        $selecionaCurso = $this->mysql->prepare("SELECT id_curso, titulo, descricao FROM cursos WHERE id_curso = ?");
        $selecionaCurso->bind_param('s', $id);
        $selecionaCurso->execute();
        $curso = $selecionaCurso->get_result()->fetch_assoc();
        return $curso;
    }
    public function encontrarPorTitulo(string $titulo): array
    {
        $result = mysqli_query($this->mysql,"SELECT * FROM cursos WHERE titulo like '".$titulo."%'"); 
        $cont=mysqli_num_rows($result);
        for($i=0;$i<$cont;$i++){     
            $cursos[$i]=mysqli_fetch_assoc($result);
        }
        return $cursos;
    }
}
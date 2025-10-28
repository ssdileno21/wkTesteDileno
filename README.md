# wkTesteDileno

# Teste Técnico - Desenvolvedor Delphi

Este projeto foi desenvolvido como **teste técnico** para a vaga de **Desenvolvedor Delphi**.

## Sobre o Projeto

O sistema consiste em uma aplicação Delphi que importa dados de pessoas a partir de arquivos `.CSV`, 
armazena em banco de dados PostgreSQL, e utiliza integração com o serviço público **ViaCEP** 
para enriquecimento dos endereços.                         |

### Conexão com PostgreSQL
A conexão é realizada diretamente no `TDMConnection`, configurando o driver FireDAC `PG` com os parâmetros locais:

FDConn.Params.DriverID := 'PG';
FDConn.Params.Add('Server=localhost');
FDConn.Params.Add('Port=5432');
FDConn.Params.Database := 'wkTesteDileno';
FDConn.Params.UserName := 'postgres';
FDConn.Params.Password := '123';


Foi utilizada a versão Delphi 13.


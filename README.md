wkTesteDileno
Teste Técnico - Desenvolvedor Delphi
Este projeto foi desenvolvido como teste técnico para a vaga do Desenvolvedor Delphi .

Sobre o Projeto
O sistema consiste em uma aplicação Delphi que importa dados de pessoas de arquivos .CSV, armazena em banco de dados PostgreSQL, e utiliza integração com o serviço público ViaCEP para enriquecimento dos endereços. |

Conexão com PostgreSQL
A conexão é realizada diretamente no TDMConnection, configurando o driver FireDAC PGcom as configurações locais:

FDConn.Params.DriverID := 'PG'; FDConn.Params.Add('Servidor=localhost'); FDConn.Params.Add('Porta=5432'); FDConn.Params.Database := 'wkTesteDileno'; FDConn.Params.UserName := 'postgres'; FDConn.Params.Password := '123';

Foi utilizado a versão Delphi 13.

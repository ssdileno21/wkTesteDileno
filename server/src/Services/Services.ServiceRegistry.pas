unit Services.ServiceRegistry;

interface

uses
  Services.EnderecoService,
  Infra.Repositories.EnderecoRepository;

type
  TServiceRegistry = class
  strict private
    class var FEnderecoService: TEnderecoService;
  public
    class function GetEnderecoService: TEnderecoService;
  end;

implementation

{ TServiceRegistry }

class function TServiceRegistry.GetEnderecoService: TEnderecoService;
begin
  if FEnderecoService = nil then
  begin
    FEnderecoService := TEnderecoService.Create(TEnderecoRepository.Create);
  end;
  Result := FEnderecoService;
end;

end.

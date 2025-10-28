unit Controllers.EnderecoController;

interface

uses
  Infra.Api.EnderecoApi;

type
  TEnderecoController = class
  private
    FApi: TEnderecoApi;
  public
    constructor Create;
    destructor Destroy; override;

    procedure DispararViaCEP;

    function EstaDisparandoViaCEP: Boolean;
    function GetViaCEPStatus : string;
    function GetViaCepProcessados : Integer;
    function GetViaCepTotal : Integer;

    property ViaCEPStatus: string read GetViaCEPStatus;
    property ViaCepProcessados: Integer read GetViaCepProcessados;
    property ViaCepTotal: Integer read GetViaCepTotal;

  end;

implementation

uses System.SyncObjs, System.SysUtils;

{ TEnderecoController }

constructor TEnderecoController.Create;
begin
  inherited Create;
  FApi := TEnderecoApi.Create;
end;

destructor TEnderecoController.Destroy;
begin
  FApi.Free;
  inherited;
end;

procedure TEnderecoController.DispararViaCEP;
begin
  FApi.DispararViaCEP;
end;

function TEnderecoController.GetViaCEPStatus: string;
begin
  try
    Result := FApi.StatusViaCEP;
  except
    on E: Exception do
    begin
      Result := 'Erro ao consultar status: ' + E.Message;
    end;
  end;
end;

function TEnderecoController.GetViaCepProcessados: Integer;
begin
  Result := FApi.ViaCEP_Processados;
end;

function TEnderecoController.GetViaCepTotal: Integer;
begin
  Result := FApi.ViaCEP_Total;
end;

function TEnderecoController.EstaDisparandoViaCEP: Boolean;
begin
  Result := FApi.EstaDisparandoViaCEP;
end;

end.


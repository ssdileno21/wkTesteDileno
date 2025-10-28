unit Common.DTOs.EnderecoDTO;

interface

type
  TEnderecoDTO = class
  private
    FIdendereco : Int64;
    FIdpessoa : Int64;
    FDscep : string;
  public
    property IdEndereco: Int64 read FIdendereco write FIdEndereco;
    property IdPessoa: Int64 read FIdpessoa write FIdpessoa;
    property DsCep: string read FDscep write FDscep;
  end;

implementation

end.

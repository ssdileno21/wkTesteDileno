object ClientModule1: TClientModule1
  Height = 271
  Width = 415
  object DSRestConnection1: TDSRestConnection
    Host = 'localhost'
    Port = 8080
    LoginPrompt = False
    ProxyScheme = 'http'
    Left = 48
    Top = 40
    UniqueId = '{9B50288F-7B68-4EBA-94CB-5EE3F6E39881}'
  end
  object DSProxyGenerator1: TDSProxyGenerator
    MetaDataProvider = DSRestMetaDataProvider1
    TargetUnitName = 'ClientClassesUnit1'
    TargetDirectory = '.\src\'
    Writer = 'Object Pascal REST'
    Left = 136
    Top = 160
  end
  object DSRestMetaDataProvider1: TDSRestMetaDataProvider
    RestConnection = DSRestConnection1
    Left = 208
    Top = 72
  end
end

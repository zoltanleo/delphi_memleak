program Project1;

uses
  DUnitX.MemoryLeakMonitor.Default,
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1};

{$R *.res}

begin
//  {$ifdef debug}
//  System.ReportMemoryLeaksOnShutdown:= True;
//  {$endif}
  Application.Initialize;
  {$ifdef debug}
  System.ReportMemoryLeaksOnShutdown:= True;
  {$endif}
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

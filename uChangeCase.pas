unit uChangeCase;

interface

type
  TChangeCase = (tccAllUpper,tccAllLower,tccSentence,tccTitle,tccToggle);

const
  TChangeCaseUpper : String = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  TChangeCaseLower : String = 'abcdefghijklmnopqrstuvwxyz';

  function ChangeCase(source : String; mode : TChangeCase):String;

implementation

function ChangeCase_UPPER(source : String):String;
var
  i : Integer;
  r : String;
begin
  r := '';
  for i := 1 to Length(source) do
  begin
    if Pos(Source[i],TChangeCaseLower)>0 then
      r := r + TChangeCaseUpper[Pos(source[i],TChangeCaseLower)]
    else
      r := r + source[i];
  end;
  Result := r;
end;

function ChangeCase_LOWER(source : String):String;
var
  i : Integer;
  r : String;
begin

  r := '';
  for i := 1 to Length(source) do
  begin
    if Pos(Source[i],TChangeCaseUpper)>0 then
      r := r + TChangeCaseLower[Pos(Source[i],TChangeCaseUpper)]
    else
      r := r + source[i];
  end;
  Result := r;
end;

function ChangeCase_SENTENCE(source : String):String;
const
  TReadLetters : String = '.!?';
var
  i : Integer;
  r : String;
begin

  r := ChangeCase_LOWER(source);
  for i := 1 to Length(source) do
  begin
    if (i=1) and (Pos(r[i],TChangeCaseLower)>0) then
      r[i] := TChangeCaseUpper[Pos(r[i],TChangeCaseLower)];
    if (i>1) and (Pos(r[i-1],TReadLetters)>0) and (Pos(r[i],TChangeCaseLower)>0) then
      r[i] := TChangeCaseUpper[Pos(r[i],TChangeCaseLower)];
    if (i>2) and (r[i-1]=' ') and (Pos(r[i-2],TReadLetters)>0) and (Pos(r[i],TChangeCaseLower)>0) then
      r[i] := TChangeCaseUpper[Pos(r[i],TChangeCaseLower)];
  end;
  Result := r;
end;

function ChangeCase_TITLE(Source : String):String;
const
  TReadLetters : String = '.!?';
var
  i : Integer;
  r : String;
begin

  r := ChangeCase_LOWER(source);
  for i := 1 to Length(source) do
  begin
    if (i=1) and (Pos(r[i],TChangeCaseLower)>0) then
      r[i] := TChangeCaseUpper[Pos(r[i],TChangeCaseLower)];
    if (i>1) and (r[i-1]=' ') and (Pos(r[i],TChangeCaseLower)>0) then
      r[i] := TChangeCaseUpper[Pos(r[i],TChangeCaseLower)];
    if (i>2) and (Pos(r[i-1],TReadLetters)>0) and (r[i]<>' ') and (Pos(r[i],TChangeCaseLower)>0) then
      r[i] := TChangeCaseUpper[Pos(r[i],TChangeCaseLower)];

  end;
  Result := r;
end;

function ChangeCase_TOGGLE(Source : String):String;
const
  TReadLetters : String = '.!?';
var
  i : Integer;
  r : String;
begin

  r := ChangeCase_UPPER(source);

  for i := 1 to Length(source) do
  begin
    if (i=1) and (Pos(r[i],TChangeCaseUpper)>0) then
      r[i] := TChangeCaseLower[Pos(r[i],TChangeCaseUpper)];
    if (i>1) and (source[i-1]=' ') and (Pos(r[i],TChangeCaseUpper)>0) then
      r[i] := TChangeCaseLower[Pos(r[i],TChangeCaseUpper)];
    if (i>2) and (Pos(r[i-1],TReadLetters)>0) and (Pos(r[i],TChangeCaseUpper)>0) then
      r[i] := TChangeCaseLower[Pos(r[i],TChangeCaseUpper)];
  end;
  Result := r;
end;

function ChangeCase(source : String; mode : TChangeCase):String;
begin

  if Source = '' then
    Result := '';

  case(mode) of
    tccAllUpper : begin Result := ChangeCase_UPPER(source); end;
    tccAllLower : begin Result := ChangeCase_LOWER(source); end;
    tccSentence : begin Result := ChangeCase_SENTENCE(source); end;
    tccTitle    : begin Result := ChangeCase_TITLE(source); end;
    tccToggle   : begin Result := ChangeCase_TOGGLE(source); end;
  end;
end;

end.
 
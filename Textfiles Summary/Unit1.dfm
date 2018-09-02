object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'TextFile Summary'
  ClientHeight = 500
  ClientWidth = 609
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 17
  object btnRead1: TButton
    Left = 10
    Top = 10
    Width = 263
    Height = 33
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Read and Display (Simple)'
    TabOrder = 0
    OnClick = btnRead1Click
  end
  object btnRead2: TButton
    Left = 10
    Top = 51
    Width = 263
    Height = 33
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Read and Display (Advanced)'
    TabOrder = 1
    OnClick = btnRead2Click
  end
  object btnNewTFile1: TButton
    Left = 10
    Top = 92
    Width = 263
    Height = 32
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Create NEW Textfile (Simple)'
    TabOrder = 2
    OnClick = btnNewTFile1Click
  end
  object btnNewTFile2: TButton
    Left = 10
    Top = 132
    Width = 263
    Height = 33
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Create NEW Textfile (Advanced)'
    TabOrder = 3
    OnClick = btnNewTFile2Click
  end
  object btnEdit: TButton
    Left = 10
    Top = 173
    Width = 263
    Height = 32
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'EDIT an existing Textfile'
    TabOrder = 4
    OnClick = btnEditClick
  end
  object btnDelete: TButton
    Left = 10
    Top = 213
    Width = 263
    Height = 33
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'DELETE from Textfile'
    TabOrder = 5
    OnClick = btnDeleteClick
  end
  object redOutput: TRichEdit
    Left = 314
    Top = 10
    Width = 285
    Height = 473
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object btnAdd: TButton
    Left = 10
    Top = 254
    Width = 263
    Height = 32
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'ADD to existing Textfile'
    TabOrder = 7
    OnClick = btnAddClick
  end
  object OpenDialog1: TOpenDialog
    Left = 104
    Top = 328
  end
  object SaveDialog1: TSaveDialog
    Left = 176
    Top = 328
  end
end

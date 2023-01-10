VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Sheet7"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True
Sub Homework()
'declare variables for the output new columns
For Each ws In Worksheets
    Dim ticker As String
    Dim YearlyChange As Double
    Dim PercentChange As Double
    Dim grPInc As Double
    Dim grPDec As Double
    Dim TotalStockVolume As Double
    Dim LR As Double
    Dim Row As Long
    Dim iR As Integer
    Dim openPrice As Double
    Dim closePrice As Double
    Dim VolG As Double
    Dim grTVol As Double
    Dim grPIncTicker As String
    Dim grPDecTicker As String
    Dim grTVolTicker As String

    
'determine the headers for the output requested
    ws.Cells(1, 9).Value = "Ticker"
    ws.Cells(1, 10).Value = "Yearly Change"
    ws.Cells(1, 11).Value = "Percent Change"
    ws.Cells(1, 12).Value = "Total Stock Volume"
    
   'formula to find the last row (LR) in each spreasheet
    LR = ws.Cells(Rows.Count, 1).End(xlUp).Row
    
    'to place all variables to be used in the mathematical formulas to zero
    VolG = 0
    TotalStockVolume = 0
    grTVol = 0
    grPInc = 0
    grPDec = 0
    
    'to tell computer what row to start
    iR = 2
    
    
 'get stock price before entering the loop
    ticker = ws.Cells(2, 1).Value
    openPrice = ws.Cells(2, 3).Value


 'do the calculations to populate the output table using loops
 

 For Row = 2 To LR
    
 'add volume for each row
    VolG = ws.Cells(iR, 7).Value
    TotalStockVolume = TotalStockVolume + VolG
    
 
    'if the subsequent row is not equivalent to the current one, then calculate closing values for current stock
    If ws.Cells(Row + 1, 1).Value <> ws.Cells(Row, 1).Value Then
        closePrice = ws.Cells(Row, 6).Value
    
    'include the output values in the summary spreadsheet
        ws.Cells(iR, 9).Value = ticker
        ws.Cells(iR, 10).Value = closePrice - openPrice
    
    'do colorization based on the negative or positive output results
        If (closePrice - openPrice > 0) Then
            ws.Cells(iR, 10).Interior.ColorIndex = 4
        ElseIf (closePrice - openPrice < 0) Then
            ws.Cells(iR, 10).Interior.ColorIndex = 3
        End If
    
    'calculate the percentage change output now
        PercentChange = (closePrice - openPrice) / openPrice
        ws.Cells(iR, 11).Value = PercentChange
        ws.Cells(iR, 11).NumberFormat = "0.00%"
    
    'calculate what percentChange is greatest
        If (PercentChange > grPInc) Then
            grPIncTicker = ticker
        End If
    
    'calculate what percentChange is the least
        If (PercentChange < grPDec) Then
            grPDecTicker = ticker
        End If
    
    'determine the output stock volume
        ws.Cells(iR, 12).Value = TotalStockVolume
    
    
    'calculate what volume is the highest
        If (TotalStockVolume > grTVol) Then
            grTVol = TotalStockVolume
            grTVolTicker = ticker
        End If
    
    'start again with volume to 0 before going to next group
        VolG = 0
        grTVol = 0
    
    'to get the next group of stock ticker
        ticker = ws.Cells(iR + 1, 1).Value
    
    'to get new opening price before going back to the loop
        openPrice = ws.Cells(iR + 1, 3).Value
    
        iR = iR + 1

        End If
 Next Row

'determine the headers for the new output generated
    
    ws.Cells(2, 15).Value = "Greatest % Increase"
    ws.Cells(3, 15).Value = "Greatest % Decrease"
    ws.Cells(4, 15).Value = "Greatest Total Volume"
    ws.Cells(1, 16).Value = "Ticker"
    ws.Cells(1, 17).Value = "Value"
    ws.Cells(2, 16).Value = grPIncTicker
    ws.Cells(3, 16).Value = grPDecTicker
    ws.Cells(4, 16).Value = grTVolTicker
    ws.Cells(4, 17).Value = grTVol
    ws.Cells(2, 17).Value = grPInc
    ws.Cells(3, 17).Value = grPDec
    
    

  
Next ws
   

End Sub


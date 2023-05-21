# Difference  
2022_univ_cell:  
此版本為IC競賽繳交版本  
cycle = 595120  
area = 6229.458079  
note:須注意此版本之reset signal(RST)為同步，另外執行ncverilog時須注意JAM.v前面須加上-v，因為變數sequence在system verilog已經定義  
2022_univ_cell_version1:  
此版本為第一次修正後版本  
cycle = 553115  
area = 6046.138870  
變化:相較於上一版本，此版本將find state由3個壓縮到剩一個，但比較器由3個增加到7個  
note:須注意此版本之reset signal(RST)為同步  
2022_univ_cell_version2:  
此版本為第二次修正後版本  
cycle = 362884  
area = 7512.692390  
變化:  
相較於上一版本，此版本將取值與字典序演算法同步進行因此增加了一個8層的array，一個做為運算字典序演算法、另一個則為取值，同時取消掉load_compute、compare兩種state，但增加了idle state以同步字典序演算法及取值兩種工作  
note:須注意此版本之reset signal(RST)為非同步，因為此版本使用同步reset在MatchCount的DFF的RST會背布林化減掉  
2022_univ_cell_version3:  
此版本為第三次修正後版本  
cycle = 362884  
area = 7512.692390  
變化:  
相較於上一版本，此版本的reset部分之coding style更好  
2022_univ_cell_version4:  
此版本為第三次修正後版本  
cycle = 322565  
area = 7884.423026  
變化:  
相較於上一版本，此版本調整閒置state的順序，減少了一個字典續演算法之sequence，並且合併了change與inverse兩個state變成一個change state，此版本尚未製作碩士版本  
2022_univ_cell_version5:  
此版本為第四次修正後版本  
變化:  
相較於上一版本，此版本調整排列change_point的輸入方式改用case，此版本尚未製作碩士版本

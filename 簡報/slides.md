
## 系統描述
有圖形介面計算convolution的軟體
--
## 設計方法

### Pseudo code -> MATLAB code
* Get X[] input from user ->fopen(uigetfile,'r');
* Get h[] input from user ->fopen(uigetfile,'r');
* Compute the convolution -> conv(x,h);
* Output result -> bar(y);
--
## 系統流程圖
* 開始
* 使用者input X[ ]
* 顯示 X[ ] 的圖表
* 使用者input h[ ]
* 顯示 h[ ] 的圖表
* 使用者按下計算
* 顯示 Y[ ]的圖表
--
## 系統環境
--
### 開發環境
* Windows 10
* MATLAB R2014b
--
### 使用的程式語言
MATLAB
--
## 系統測試
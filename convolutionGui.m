function varargout = convolutionGui(varargin)
% CONVOLUTIONGUI MATLAB code for convolutionGui.fig
%      CONVOLUTIONGUI, by itself, creates a new CONVOLUTIONGUI or raises the existing
%      singleton*.
%
%      H = CONVOLUTIONGUI returns the handle to a new CONVOLUTIONGUI or the handle to
%      the existing singleton*.
%
%      CONVOLUTIONGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CONVOLUTIONGUI.M with the given input arguments.
%
%      CONVOLUTIONGUI('Property','Value',...) creates a new CONVOLUTIONGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before convolutionGui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to convolutionGui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help convolutionGui

% Last Modified by GUIDE v2.5 05-Apr-2018 13:54:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @convolutionGui_OpeningFcn, ...
                   'gui_OutputFcn',  @convolutionGui_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before convolutionGui is made visible.
function convolutionGui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to convolutionGui (see VARARGIN)

% Choose default command line output for convolutionGui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes convolutionGui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = convolutionGui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

xFileId=fopen(uigetfile,'r');
x=fscanf(xFileId,'%d',100);
handles.x=x;
guidata(hObject,handles);

axes(handles.axes2);
bar(x);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

hFileId=fopen(uigetfile,'r');
h=fscanf(hFileId,'%d',100);
handles.h=h;
guidata(hObject,handles);

axes(handles.axes3);
bar(h);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x=handles.x;
h=handles.h;

y=conv(x,h);
axes(handles.axes4);
bar(y);

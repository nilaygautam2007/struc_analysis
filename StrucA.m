function varargout = StrucA(varargin)
% STRUCA MATLAB code for StrucA.fig
%      STRUCA, by itself, creates a new STRUCA or raises the existing
%      singleton*.
%
%      H = STRUCA returns the handle to a new STRUCA or the handle to
%      the existing singleton*.
%
%      STRUCA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in STRUCA.M with the given input arguments.
%
%      STRUCA('Property','Value',...) creates a new STRUCA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before StrucA_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to StrucA_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help StrucA

% Last Modified by GUIDE v2.5 02-May-2018 15:08:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @StrucA_OpeningFcn, ...
                   'gui_OutputFcn',  @StrucA_OutputFcn, ...
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


% --- Executes just before StrucA is made visible.
function StrucA_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to StrucA (see VARARGIN)

% Choose default command line output for StrucA
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes StrucA wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = StrucA_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function n_Callback(hObject, eventdata, handles)
clc;
global uu;
global ur;
global numberofnodes;
global nodeposntype;
ax = gca;
stype=get(handles.popupmenu4,'Value');
if(stype == 2)
    set(handles.edit27,'Visible','on');
    set(handles.jl,'Visible','on');
    set(handles.E,'Visible','on');
    set(handles.text22,'Visible','on')
end
%plot([1 5],[5 5]);

disp(ax);
uu=0;
ur=0;
num = str2num(get(hObject,'String'));
numberofnodes = num;
nodeposntype=zeros(1,3,numberofnodes);
labels=zeros(numberofnodes,3);
X = cell2mat( textscan( get(hObject,'string'), '%d' ) );
disp(X);
c=1;
%while num ~= c
    a=1:num;
    set(handles.popupmenu1,'String',a,'Value',1);  
    %c = c+1;
%end
%set(handles.text3, 'Visible');

    

% hObject    handle to n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% Hints: get(hObject,'String') returns contents of n as text
%        str2double(get(hObject,'String')) returns contents of n as a double


% --- Executes during object creation, after setting all properties.
function n_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function i1_Callback(hObject, eventdata, handles)
% hObject    handle to i1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of i1 as text
%        str2double(get(hObject,'String')) returns contents of i1 as a double


% --- Executes during object creation, after setting all properties.
function i1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function i2_Callback(hObject, eventdata, handles)
% hObject    handle to i2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of i2 as text
%        str2double(get(hObject,'String')) returns contents of i2 as a double


% --- Executes during object creation, after setting all properties.
function i2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function i3_Callback(hObject, eventdata, handles)
% hObject    handle to i3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of i3 as text
%        str2double(get(hObject,'String')) returns contents of i3 as a double


% --- Executes during object creation, after setting all properties.
function i3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function i4_Callback(hObject, eventdata, handles)
% hObject    handle to i4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of i4 as text
%        str2double(get(hObject,'String')) returns contents of i4 as a double


% --- Executes during object creation, after setting all properties.
function i4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function i5_Callback(hObject, eventdata, handles)
% hObject    handle to i5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of i5 as text
%        str2double(get(hObject,'String')) returns contents of i5 as a double


% --- Executes during object creation, after setting all properties.
function i5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function i6_Callback(hObject, eventdata, handles)
% hObject    handle to i6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of i6 as text
%        str2double(get(hObject,'String')) returns contents of i6 as a double


% --- Executes during object creation, after setting all properties.
function i6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l1_Callback(hObject, eventdata, handles)
% hObject    handle to l1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l1 as text
%        str2double(get(hObject,'String')) returns contents of l1 as a double


% --- Executes during object creation, after setting all properties.
function l1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l2_Callback(hObject, eventdata, handles)
% hObject    handle to l2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l2 as text
%        str2double(get(hObject,'String')) returns contents of l2 as a double


% --- Executes during object creation, after setting all properties.
function l2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l3_Callback(hObject, eventdata, handles)
% hObject    handle to l3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l3 as text
%        str2double(get(hObject,'String')) returns contents of l3 as a double


% --- Executes dzuring object creation, after setting all properties.
function l3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l4_Callback(hObject, eventdata, handles)
% hObject    handle to l4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l4 as text
%        str2double(get(hObject,'String')) returns contents of l4 as a double


% --- Executes during object creation, after setting all properties.
function l4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l5_Callback(hObject, eventdata, handles)
% hObject    handle to l5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l5 as text
%        str2double(get(hObject,'String')) returns contents of l5 as a double


% --- Executes during object creation, after setting all properties.
function l5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l6_Callback(hObject, eventdata, handles)
% hObject    handle to l6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l6 as text
%        str2double(get(hObject,'String')) returns contents of l6 as a double


% --- Executes during object creation, after setting all properties.
function l6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rdofl_Callback(hObject, eventdata, handles)
% hObject    handle to rdofl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rdofl as text
%        str2double(get(hObject,'String')) returns contents of rdofl as a double


% --- Executes during object creation, after setting all properties.
function rdofl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rdofl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function urdofl_Callback(hObject, eventdata, handles)
% hObject    handle to urdofl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of urdofl as text
%        str2double(get(hObject,'String')) returns contents of urdofl as a double


% --- Executes during object creation, after setting all properties.
function urdofl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to urdofl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function members_Callback(hObject, eventdata, handles)
global nofmem;
nofmem = str2num(get(hObject,'String'));
global members;
global fem;
global structuretype;
structuretype=get(handles.popupmenu4,'Value');
if(structuretype ~= 2)
    members=zeros(1,6,nofmem);
    fem = zeros(4,1,nofmem);
end
if(structuretype == 2)
    members=zeros(1,7,nofmem);
    fem = zeros(6,1,nofmem);
end
disp("Members will be displayed");
disp(members);


c=0;
%while nofmem ~= c
    a=1:nofmem;
    set(handles.popupmenu2,'String',a,'Value',1); 
  %  c = c+1;
%end
% hObject    handle to members (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of members as text
%        str2double(get(hObject,'String')) returns contents of members as a double


% --- Executes during object creation, after setting all properties.
function members_CreateFcn(hObject, eventdata, handles)
% hObject    handle to members (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
svalue = get(handles.popupmenu1,'Value');
set(handles.popupmenu1, 'UserData', svalue);
%To get selected value in other functions S = get(handles.popupmenu, 'UserData');

% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function node_x_Callback(hObject, eventdata, handles)
% hObject    handle to node_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of node_x as text
%        str2double(get(hObject,'String')) returns contents of node_x as a double


% --- Executes during object creation, after setting all properties.
function node_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to node_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function node_y_Callback(hObject, eventdata, handles)
% hObject    handle to node_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of node_y as text
%        str2double(get(hObject,'String')) returns contents of node_y as a double


% --- Executes during object creation, after setting all properties.
function node_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to node_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function I_Callback(hObject, eventdata, handles)
% hObject    handle to I (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of I as text
%        str2double(get(hObject,'String')) returns contents of I as a double


% --- Executes during object creation, after setting all properties.
function I_CreateFcn(hObject, eventdata, handles)
% hObject    handle to I (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A_Callback(hObject, eventdata, handles)
% hObject    handle to A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A as text
%        str2double(get(hObject,'String')) returns contents of A as a double


% --- Executes during object creation, after setting all properties.
function A_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit22_Callback(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit22 as text
%        str2double(get(hObject,'String')) returns contents of edit22 as a double


% --- Executes during object creation, after setting all properties.
function edit22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function node_start_Callback(hObject, eventdata, handles)
% hObject    handle to node_start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of node_start as text
%        str2double(get(hObject,'String')) returns contents of node_start as a double


% --- Executes during object creation, after setting all properties.
function node_start_CreateFcn(hObject, eventdata, handles)
% hObject    handle to node_start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function node_end_Callback(hObject, eventdata, handles)
% hObject    handle to node_end (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of node_end as text
%        str2double(get(hObject,'String')) returns contents of node_end as a double


% --- Executes during object creation, after setting all properties.
function node_end_CreateFcn(hObject, eventdata, handles)
% hObject    handle to node_end (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
global nodeposntype;
n = get(handles.popupmenu1,'Value');
%ntotal = str2num(get(handles.n,'String'));
x = str2num(get(handles.node_x, 'String'));
y = str2num(get(handles.node_y, 'String'));
type = get(handles.popupmenu3,'Value');
nodeposntype(:,:,n)=[x,y,type];
disp(nodeposntype);
%disp(nodeposntype(1,1,1));
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
global nodeposntype;
global uu;
global ur;
global members;
global fem;
global structuretype;
global nofmem;
xvar = nodeposntype(1,1,nofmem) + 10;
yvar = nodeposntype(1,2,nofmem) + 10
xlim([0 xvar]);
ylim([0 yvar]);
hold on;
c=1;
membersno = str2num(get(handles.members,'String'));
n = get(handles.popupmenu2,'Value');
snode = str2num(get(handles.node_start, 'String'));
enode = str2num(get(handles.node_end, 'String'));
moi = str2num(get(handles.I, 'String'));
area = str2num(get(handles.A, 'String'));
len = sqrt((nodeposntype(1,1, snode)-nodeposntype(1,1, enode)).^2 + (nodeposntype(1,2, snode)-nodeposntype(1,2, enode)).^2) ;
theta = atand((nodeposntype(1,2, enode)-nodeposntype(1,2, snode))/(nodeposntype(1,1, enode)-nodeposntype(1,1, snode))) ;
%theta = 30;
if(structuretype == 2)
    E = str2num(get(handles.E, 'String'));
end
plot([nodeposntype(:,1,snode) nodeposntype(:,1,enode)],[nodeposntype(:,2,snode) nodeposntype(:,2,enode)]);
txt2 = '\o';
text(nodeposntype(:,1,snode),nodeposntype(:,2,snode),txt2);
text(nodeposntype(:,1,enode),nodeposntype(:,2,enode),txt2);
hold on;
tempfem = cell2mat(textscan(get(handles.fem, 'String'), '%d'));%column matrix
fem(:,:,n) = tempfem' ;
disp("FEM");
disp(fem);
if(structuretype ~= 2)
    members(:, :, n) = [snode,enode,len,moi,area,theta];
end
if(structuretype == 2)
    members(:, :, n) = [snode,enode,len,moi,area,theta,E];
end
disp(members);



% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function fem_Callback(hObject, eventdata, handles)
% hObject    handle to fem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fem as text
%        str2double(get(hObject,'String')) returns contents of fem as a double


% --- Executes during object creation, after setting all properties.
function fem_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calculate.
function calculate_Callback(hObject, eventdata, handles)
global nodeposntype;
global uu;
global ur;
global members;
global fem;
global nofmem;
global numberofnodes;
global labels;
global structuretype;
labels=zeros(numberofnodes,3);
if(structuretype == 1)
    labelsofmember = zeros(nofmem,4);%In case of non-orthogonal it will be 6
    dofcount=1;
    for i=1:numberofnodes
        %For theta unrestrained value
        if nodeposntype(1,3,i) == 1
            if(labels(i,1) == 0 )
                labels(i,1) = dofcount;
                dofcount = dofcount + 1;
                uu = uu + 1;
            end
        end
        if nodeposntype(1,3,i) == 2
            if(labels(i,1) == 0 )
                labels(i,1) = dofcount;
                dofcount = dofcount + 1;
                uu = uu + 1;
            end
        end
        if nodeposntype(1,3,i) == 3
            if(labels(i,1) == 0 )
                labels(i,1) = dofcount;
                dofcount = dofcount + 1;
                uu = uu + 1;
            end 
        end
    end        

for i=1:numberofnodes
%For delta y unrestrained value
    if nodeposntype(1,3,i) == 1
        if(labels(i,2) == 0 )
            labels(i,2) = dofcount;
            dofcount = dofcount + 1;
            uu = uu + 1;
        end
    end
end
    %For delta x unrestrained value
    %add code here
    
for i=1:numberofnodes
    %For theta restrained
    if nodeposntype(1,3,i) == 4
        if(labels(i,1) == 0 )
            labels(i,1) = dofcount;
            dofcount = dofcount + 1;
            ur = ur + 1;
        end
    end
end
for i=1:numberofnodes
    %For delta y restrained 
    if nodeposntype(1,3,i) == 2
        if(labels(i,2) == 0 )
            labels(i,2) = dofcount;
            dofcount = dofcount + 1;
            ur = ur + 1;
        end
    end
    if nodeposntype(1,3,i) == 3
        if(labels(i,2) == 0 )
            labels(i,2) = dofcount;
            dofcount = dofcount + 1;
            ur = ur + 1;
        end
    end
    if nodeposntype(1,3,i) == 4
       if(labels(i,2) == 0 )
            labels(i,2) = dofcount;
            dofcount = dofcount + 1;
            ur = ur + 1;
        end 
    end
end
    %For delta x restrained
    %add code here
    disp("Here labels of orthogonal");
    disp(labels);
    

for i=1:nofmem
    c=1;
    %For first theta values 
    for j=1:numberofnodes
        if(members(1,1,i) == j)
            labelsofmember(i,c) = labels(j,1);
            c=c+1;
        end
    end
    %Now second theta values are stored
    for j=1:numberofnodes
        if(members(1,2,i) == j)
            labelsofmember(i,c) = labels(j,1);
            c=c+1;
        end
    end
    %Now first y values are stored
    for j=1:numberofnodes
        if(members(1,1,i) == j)
            labelsofmember(i,c) = labels(j,2);
            c=c+1;
        end
    end
     %Now second y values are stored
    for j=1:numberofnodes
        if(members(1,2,i) == j)
            labelsofmember(i,c) = labels(j,2);
            c=c+1;
        end
    end
   
end
disp(labelsofmember);
jointload = zeros(uu+ur,1);
%for i=1:numberofnodes
    for i=1:nofmem
        for j=1:4
            jointload(labelsofmember(i,j),1) = jointload(labelsofmember(i,j),1) + fem(j,:,i);
        end  
    end
    jointload = -jointload;
   disp("Jointload display");
   disp(jointload);
   
end

%For non-orthogonal
%Code is here
if(structuretype == 2)
    labelsofmember = zeros(nofmem,6);%In case of non-orthogonal it will be 6
    dofcount=1;
    for i=1:numberofnodes
        %For theta unrestrained value
        if nodeposntype(1,3,i) == 1
            if(labels(i,1) == 0 )
                labels(i,1) = dofcount;
                dofcount = dofcount + 1;
                uu = uu + 1;
            end
        end
        if nodeposntype(1,3,i) == 2
            if(labels(i,1) == 0 )
                labels(i,1) = dofcount;
                dofcount = dofcount + 1;
                uu = uu + 1;
            end
        end
        if nodeposntype(1,3,i) == 3
            if(labels(i,1) == 0 )
                labels(i,1) = dofcount;
                dofcount = dofcount + 1;
                uu = uu + 1;
            end 
        end
    end        

for i=1:numberofnodes
%For delta y+x unrestrained value
    if nodeposntype(1,3,i) == 1
        if(labels(i,2) == 0 )
            labels(i,2) = dofcount;
            dofcount = dofcount + 1;
            uu = uu + 1;
        end
        if(labels(i,3) == 0 )
            labels(i,3) = dofcount;
            dofcount = dofcount + 1;
            uu = uu + 1;
        end
    end
end

    
    %For theta+x+y restrained
    %Anything wrong happens to label from here
for i=1:numberofnodes
    if nodeposntype(1,3,i) == 4
        if(labels(i,1) == 0 )
            labels(i,1) = dofcount;
            dofcount = dofcount + 1;
            ur = ur + 1;
        end
        if(labels(i,2) == 0 )
            labels(i,2) = dofcount;
            dofcount = dofcount + 1;
            ur = ur + 1;
        end
        if(labels(i,3) == 0 )
            labels(i,3) = dofcount;
            dofcount = dofcount + 1;
            ur = ur + 1;
        end
    end
end


    %add code here
    disp("Here labels of orthogonal");
    disp(labels);
    

for i=1:nofmem
    c=1;
    %For first theta values 
    for j=1:numberofnodes
        if(members(1,1,i) == j)
            labelsofmember(i,c) = labels(j,1);
            c=c+1;
        end
    end
    %Now second theta values are stored
    for j=1:numberofnodes
        if(members(1,2,i) == j)
            labelsofmember(i,c) = labels(j,1);
            c=c+1;
        end
    end
    %Now first y values are stored
    for j=1:numberofnodes
        if(members(1,1,i) == j)
            labelsofmember(i,c) = labels(j,2);
            c=c+1;
        end
    end
     %Now second y values are stored
    for j=1:numberofnodes
        if(members(1,2,i) == j)
            labelsofmember(i,c) = labels(j,2);
            c=c+1;
        end
    end
    %Now first x values are stored
    for j=1:numberofnodes
        if(members(1,1,i) == j)
            labelsofmember(i,c) = labels(j,3);
            c=c+1;
        end
    end
     %Now second x values are stored
    for j=1:numberofnodes
        if(members(1,2,i) == j)
            labelsofmember(i,c) = labels(j,3);
            c=c+1;
        end
    end
    
   
end
disp(labelsofmember);
jointload = zeros(uu+ur,1);
%for i=1:numberofnodes
    for i=1:nofmem
        for j=1:6
            jointload(labelsofmember(i,j),1) = jointload(labelsofmember(i,j),1) + fem(j,:,i);
        end  
    end
    jointload = -jointload;
   disp("Jointload display");
   disp(jointload);
   
end
%Code ends Here


theta1=squeeze(members(1,6,:));
%for i=1:nofmem
   %if theta1 == 0
       
%end


if(structuretype == 1)
%% Stiffness matrix method
n=nofmem;   % Number of members
I=squeeze(members(1,4,:));   %Moment of inertia in m4
I=I';
L=squeeze(members(1,3,:));   %length in m
L=L';
m=1:nofmem;   %Member in number 
dof=uu+ur;   %Degree of freedom
uul=1:uu;   %Global labels of unrestrained degree of freedom
url=uu:ur;   %Global labels of restrained degree of freedom
l=labelsofmember;
Ktotal=zeros(dof);
kall=zeros(4,4,n);
%% Rotation co-efficient for each member
rc1=4.*I./L;
rc2=2.*I./L;

%% Stiffness matrix 4 by 4 (Axial deformation neglected)
for i=1:n
    Knew=zeros(dof);
    k1=[rc1(i);rc2(i);(rc1(i)+rc2(i))/L(i); (-(rc1(i)+rc2(i))/L(i))];
    k2=[rc2(i);rc1(i);(rc1(i)+rc2(i))/L(i);(-(rc1(i)+rc2(i))/L(i))];
    k3=[(rc1(i)+rc2(i))/L(i);(rc1(i)+rc2(i))/L(i); (2*(rc1(i)+rc2(i))/(L(i)^2));(-2*(rc1(i)+rc2(i))/(L(i)^2))];
    k4=-k3;
    K=[k1,k2,k3,k4];
    fprintf('Member Number=');
    disp(i);
    fprintf('Local Stiffness matrix of member, [K]=');
    disp(K);
        for p=1:4
            for q=1:4
            Knew((l(i,p)),(l(i,q)))=K(p,q);
         end
    end
    Ktotal=Ktotal + Knew;
    kall(:, :, i)=K;
end
fprintf('Stiffness matrix of complete structure,[Ktotal]=\n');
disp(Ktotal);
Kunr=zeros(uu);
for x=1:uu
    for y=1:uu
        Kunr(x,y)=Ktotal(x,y);
    end
end
fprintf('unrestrained stiffness sub-matrix,[kuu]=\n');
disp(Kunr);
KuuInv=inv(Kunr);
fprintf('Inverse of unrestrained stiffness sub-matrix,[kuuInverse]=\n');
disp(KuuInv);

%% Creation of joint load vector

jl=jointload;
jlu=jointload(1:uu,1);
delu=KuuInv*jlu;
fprintf('Joint Load Vector,[jl]=\n');
disp(jl);
delr=[0;0;0;0;0;0;0;0];
del=zeros(dof,1);
del=[delu;delr];
deli=zeros(4,1);
for i=1:n
    for p=1:4
        deli(p,1)=del((l(i,p)),1);
    end
    mbar1=(kall(:,:,i) * deli)+fem(:,:,i);
    tx2='\downarrow';
    a=['M= ',num2str(mbar1(1,1)),' R=',num2str(mbar1(3,1))];
    sxvalue = nodeposntype(1,1,members(1,1,i));
    syvalue = nodeposntype(1,2,members(1,1,i));
    exvalue = nodeposntype(1,1,members(1,2,i));
    eyvalue = nodeposntype(1,2,members(1,2,i));
    text(sxvalue,syvalue,a,'VerticalAlignment','top');
    text(exvalue,eyvalue,a,'VerticalAlignment','bottom');
    %text(nodeposntype(1,1,i),nodeposntype(1,2,i),3,'VerticalAlignment','top');
    hold on;
    %if i==1  
        delbar1=deli;
        %mbar1=(Kg1 * delbar1)+fem1';
        fprintf('Member Number=');
        disp(i);
        fprintf('Global displacement matrix [DeltaBar]=\n');
        disp(delbar1)
         fprintf('Global End moment matrix [MBar]=\n');
         disp(mbar1);

end
end

%if(non-orthogonal)
%% PLANER NON-ORTHOGONAL PROBLEMS
if(structuretype == 2)

% Input
n=nofmem;   % Number of members
I=squeeze(members(1,4,:));   %Moment of inertia in m4
I=I';
L=squeeze(members(1,3,:));   %length in m
L=L';
A=squeeze(members(1,5,:));
A=A';
theta=squeeze(members(1,6,:));
theta=theta';
m=1:nofmem;   %Member in number 
dof=uu+ur;   %Degree of freedom
uul=1:uu;   %Global labels of unrestrained degree of freedom
url=uu:ur;   %Global labels of restrained degree of freedom
l=labelsofmember;

Ktotal=zeros(dof);
Tt1=zeros(6,6,n);

kall=zeros(6,6,n);
Ttall=zeros(6,6,n);
fembar=zeros(6,1,n);

%% Rotation co-efficient for each member
rc1=4.*I./L;
rc2=2.*I./L;
rc3=A./L;
cx=cosd(theta);
cy=sind(theta);

%% Stiffness matrix 4 by 4 (Axial deformation neglected)
for i=1:n
    Knew=zeros(dof);
    k1=[rc1(i);rc2(i);(rc1(i)+rc2(i))/L(i); (-(rc1(i)+rc2(i))/L(i));0;0];
    k2=[rc2(i);rc1(i);(rc1(i)+rc2(i))/L(i);(-(rc1(i)+rc2(i))/L(i));0;0];
    k3=[(rc1(i)+rc2(i))/L(i);(rc1(i)+rc2(i))/L(i); (2*(rc1(i)+rc2(i))/(L(i)^2));(-2*(rc1(i)+rc2(i))/(L(i)^2));0;0];
    k4=-k3;
    k5=[0;0;0;0;rc3(i);-rc3(i)];
    k6=[0;0;0;0;-rc3(i);rc3(i)];
    K=[k1,k2,k3,k4,k5,k6];
    fprintf('Member Number=');
    disp(i);
    fprintf('Local Stiffness matrix of member, [K]=');
    disp(K);
   T1=[1;0;0;0;0;0];
   T2=[0;1;0;0;0;0];
   T3=[0;0;cx(i);0;cy(i);0];
   T4=[0;0;0;cx(i);0;cy(i)];
   T5=[0;0;-cy(i);0;cx(i);0];
   T6=[0;0;0;-cy(i);0;cx(i)];
   T=[T1,T2,T3,T4,T5,T6];
   fprintf('Transformation matrix of member, [T]=\n');
    disp(T);
    Ttr=T';
    fprintf('Transformation matrix Transpose, [T]=\n');
    disp(Ttr);
    Kg=Ttr*K*T;
    fprintf('Global Matrix, [K global]=\n');
    disp(Kg);
   
        for p=1:6
            for q=1:6
            Knew((l(i,p)),(l(i,q)))=Kg(p,q);
         end
        end
    Tt1(:,:,i)=T;
    Ktotal=Ktotal + Knew;
    kall(:, :, i)=Kg;
    Ttall(:, :, i)=T;
    fembar(:, :, i)=Tt1(:,:,i)'*fem(:,:,i);
  
end
fprintf('Stiffness matrix of complete structure,[Ktotal]=\n');
disp(Ktotal);
Kunr=zeros(uu);
for x=1:uu
    for y=1:uu
        Kunr(x,y)=Ktotal(x,y);
    end
end
fprintf('unrestrained stiffness sub-matrix,[Kuu]=\n');
disp(Kunr);
KuuInv=inv(Kunr);
fprintf('Inverse of unrestrained stiffness sub-matrix,[KuuInverse]=\n');
disp(KuuInv);

%% Creation of joint load vector
%jl=[0; 0; 50; 0; 0; -100; 0; 0; 0;0;0;0];   %Values given in kN or kNm
jl = cell2mat(textscan(get(handles.edit27, 'String'), '%d'));%column matrix
jlu = squeeze(jl(uu,1));
%jlu=[0; 0; 50;0;0;0];   %Load vector in unrestrained dof
delu=KuuInv*jlu;
fprintf('Joint Load Vector,[jl]=\n');
disp(jl);
fprintf('Unrestrained displacement,[DelU]=\n');
disp(delu);
delr=[0;0;0;0;0;0;0];
del=zeros(dof,1);
del=[delu;delr];
deli=zeros(6,1);
for i=1:n
    for p=1:6
        deli(p,1)=del((l(i,p)),1);
    end
    mbar1=(kall(:,:,i) * deli)+fembar(:,:,i);
    
        delbar1=deli;
        fprintf('Member Number=');
        disp(i);
        fprintf('Global displacement matrix [DeltaBar]=\n');
        disp(delbar1)
         fprintf('Global End moment matrix [MBar]=\n');
         disp(mbar1);
         
 
end
end



% hObject    handle to calculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)


% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4


% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function E_Callback(hObject, eventdata, handles)

% hObject    handle to E (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of E as text
%        str2double(get(hObject,'String')) returns contents of E as a double


% --- Executes during object creation, after setting all properties.
function E_CreateFcn(hObject, eventdata, handles)
% hObject    handle to E (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit27_Callback(hObject, eventdata, handles)
% hObject    handle to edit27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit27 as text
%        str2double(get(hObject,'String')) returns contents of edit27 as a double


% --- Executes during object creation, after setting all properties.
function edit27_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function varargout = v1(varargin)
% V1 MATLAB code for v1.fig
%      V1, by itself, creates a new V1 or raises the existing
%      singleton*.
%
%      H = V1 returns the handle to a new V1 or the handle to
%      the existing singleton*.
%
%      V1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in V1.M with the given input arguments.
%
%      V1('Property','Value',...) creates a new V1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before v1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to v1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help v1

% Last Modified by GUIDE v2.5 16-Dec-2022 03:18:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @v1_OpeningFcn, ...
                   'gui_OutputFcn',  @v1_OutputFcn, ...
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


% --- Executes just before v1 is made visible.
function v1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to v1 (see VARARGIN)

% Choose default command line output for v1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes v1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = v1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function equationEdit_Callback(hObject, eventdata, handles)
% hObject    handle to equationEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of equationEdit as text
%        str2double(get(hObject,'String')) returns contents of equationEdit as a double


% --- Executes during object creation, after setting all properties.
function equationEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to equationEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in sinButton.
function sinButton_Callback(hObject, eventdata, handles)
% hObject    handle to sinButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(isempty(get(handles.equationEdit,'String')))
    set(handles.equationEdit, 'String', 'sin(x)');
else
    set(handles.equationEdit, 'String', strcat(get(handles.equationEdit,'String'), 'sin(x)'));
end


% --- Executes on button press in tanButton.
function tanButton_Callback(hObject, eventdata, handles)
% hObject    handle to tanButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(isempty(get(handles.equationEdit,'String')))
    set(handles.equationEdit, 'String', 'tan(x)');
else
    set(handles.equationEdit, 'String', strcat(get(handles.equationEdit,'String'), 'tan(x)'));
end


% --- Executes on button press in cosButton.
function cosButton_Callback(hObject, eventdata, handles)
% hObject    handle to cosButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(isempty(get(handles.equationEdit,'String')))
    set(handles.equationEdit, 'String', 'cos(x)');
else
    set(handles.equationEdit, 'String', strcat(get(handles.equationEdit,'String'), 'cos(x)'));
end


% --- Executes on button press in sqrtButton.
function sqrtButton_Callback(hObject, eventdata, handles)
% hObject    handle to sqrtButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(isempty(get(handles.equationEdit,'String')))
    set(handles.equationEdit, 'String', 'sqrt(x)');
else
    set(handles.equationEdit, 'String', strcat(get(handles.equationEdit,'String'), 'sqrt(x)'));
end


% --- Executes on button press in expButton.
function expButton_Callback(hObject, eventdata, handles)
% hObject    handle to expButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(isempty(get(handles.equationEdit,'String')))
    set(handles.equationEdit, 'String', 'exp(x)');
else
    set(handles.equationEdit, 'String', strcat(get(handles.equationEdit,'String'), 'exp(x)'));
end


% --- Executes on button press in powButton.
function powButton_Callback(hObject, eventdata, handles)

% hObject    handle to powButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(isempty(get(handles.equationEdit,'String')))
    set(handles.equationEdit, 'String', '(x)^()');
else
    set(handles.equationEdit, 'String', strcat(get(handles.equationEdit,'String'), '(x)^()'));
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
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



function xa_Callback(hObject, eventdata, handles)
% hObject    handle to xa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xa as text
%        str2double(get(hObject,'String')) returns contents of xa as a double


% --- Executes during object creation, after setting all properties.
function xa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xb_Callback(hObject, eventdata, handles)
% hObject    handle to xb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xb as text
%        str2double(get(hObject,'String')) returns contents of xb as a double


% --- Executes during object creation, after setting all properties.
function xb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in readButton.
function readButton_Callback(hObject, eventdata, handles)
[filename pathname] = uigetfile({'*.txt'},'File Selector');
if(filename==0)
    set(handles.equationEdit, 'String','');
else
    set(handles.equationEdit, 'String',fileread(strcat(pathname,filename)));
end
% hObject    handle to readButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function maxIter_Callback(hObject, eventdata, handles)
% hObject    handle to maxIter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of maxIter as text
%        str2double(get(hObject,'String')) returns contents of maxIter as a double


% --- Executes during object creation, after setting all properties.
function maxIter_CreateFcn(hObject, eventdata, handles)
% hObject    handle to maxIter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function precInput_Callback(hObject, eventdata, handles)
% hObject    handle to precInput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of precInput as text
%        str2double(get(hObject,'String')) returns contents of precInput as a double


% --- Executes during object creation, after setting all properties.
function precInput_CreateFcn(hObject, eventdata, handles)
% hObject    handle to precInput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.results,'Data',{});
set(handles.root,'String','');
set(handles.execTime,'String','');
set(handles.iterDisplay,'String','');
set(handles.precDisplay,'String','');
set(handles.thbound,'String','');
get(handles.axes1);
cla;

% --- Executes on button press in submit.
function submit_Callback(hObject, eventdata, handles)
% hObject    handle to submit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
syms x %set symbol x to be variable of equations
if(isempty(get(handles.equationEdit,'String'))) %check if user has entered and equation
    errordlg('Enter the equation','Error');
else
    equation = get(handles.equationEdit,'String');
    equ = str2sym(equation); %convert string equation to symbolic equation
    val=get(handles.popupmenu1,'value'); %get value of chosen method
    
    %check empy and invalid parameters (numeric ones)
    if (isempty(get(handles.maxIter,'String')) || isempty(get(handles.precInput,'String')))
        set(handles.maxIter,'String','50');
        set(handles.precInput,'String','0.00001');
    end
    
    if(isempty(get(handles.xa,'String')) || isempty(get(handles.maxIter,'String')) || isempty(get(handles.precInput,'String')))
        errordlg('Missing Parameters','Error');
    elseif ((val ~= 3 && val ~= 4) && (isempty(get(handles.xb,'String'))))
        errordlg('Missing Parameters','Error');
    elseif (isnan(str2double(get(handles.xa,'String'))) || isnan(str2double(get(handles.maxIter,'String'))) || isnan(str2double(get(handles.precInput,'String'))))
        errordlg('Invalid Parameters','Error');
    else   %converting strings to numerical 
        xa = str2double(get(handles.xa,'String'));
        xb = str2double(get(handles.xb,'String'));
        maxIter = str2double(get(handles.maxIter,'String'));
        precInput = str2double(get(handles.precInput,'String'));
        
        
       
        tech = techniques; %create instance of class techniques
     
        global trueval %set it as global variable
        trueval = vpa(solve(equ, x, 'Real',true)); %solve equation exactly
        true_value = trueval; 
        
        format longg; %for higher precision in display (more decimal places)
        
        switch val
            case 1 %bisection
                tic
                res = tech.bisection(xa, xb, precInput, maxIter, equ); % returns array with all iterations details
                exec_time = toc;
                if (res == -1)
                        errordlg('Input Values Do not Bracket','Error');
                else
                    xr = res(end,2);
                    count_iter = res(end,1)+1;
                    prec = res(end,3); %precision (error)
                end
            case 2 %false position
                tic
                res = tech.false_position(xa, xb, precInput, maxIter, equ);  % returns array with all iterations details
                exec_time = toc;
                if (res == -1)
                        errordlg('Input Values Do not Bracket','Error');
                else
                    xr = res(end,2);
                    count_iter = res(end,1)+1;
                    prec = res(end,3); %precision (error)
                end
            case 3 %fixed point
                tic
                res = tech.fixed_point(xa, precInput, maxIter, equ);
                exec_time = toc; 
                if (res == -1)
                        errordlg('Method Diverges','Error');
                else
                    xr = res(end,2);
                    count_iter = res(end,1);
                    prec = res(end,3); %precision (error)               
                end
            case 4 %newton raphson
                tic
                res = tech.newton(xa, precInput, maxIter, equ);
                exec_time = toc; 
                xr = res(end,2);
                count_iter = res(end,1);
                prec = res(end,3); %precision (error)
            case 5 %secant
                tic
                res = tech.secant(xa,xb, precInput, maxIter, equ);
                exec_time = toc; 
                xr = res(end,2);
                count_iter = res(end,1);
                prec = res(end,3); %precision (error)
        end
        
        %get single-step mode checkbox value
        singleStepCheck = get(handles.singlestepcheck,'value');
        global results
        results = res;
        if(singleStepCheck == 0)
            if (res ~= -1)
                set(handles.results,'Data',res);
                set(handles.root,'String',xr);
                set(handles.execTime,'String',exec_time);
                set(handles.iterDisplay,'String',count_iter);
                set(handles.precDisplay,'String',prec);
                
                %in case of fixed point, conv g(x) to f(x) by subtracting x
                if (val == 3)
                    trueval = vpa(solve(equ-x, x, 'Real',true)); %solve equation exactly
                    true_value = trueval; 
                end
                
                %calculating theoretical bound
                min=1000000000000000
                for i =1:1:length(true_value)
                    diff = abs(true_value(i) - xr)
                    if(diff < min)
                        ret = true_value(i)
                        min = diff;
                    end
                end
                calc = single(abs((ret - xr)/ret));
                theortical_bound = round(calc,20);
                set(handles.thbound,'String',theortical_bound);
            end
        end  
        if(res ~= -1)
            x = (res(:,1)).';
            y = (res(:,3)).';
            axes(handles.axes1);
            plot(x,y);
            xlabel('Iterations')
            ylabel('Relative error')
        end
    end
end





% --- Executes on button press in singlestepcheck.
function singlestepcheck_Callback(hObject, eventdata, handles)
% hObject    handle to singlestepcheck (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

        
% Hint: get(hObject,'Value') returns toggle state of singlestepcheck


% --- Executes on button press in single_step_button.
function single_step_button_Callback(hObject, eventdata, handles)
% hObject    handle to single_step_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global results
res = results;
global trueval
true_value = trueval;
singleStepCheck = get(handles.singlestepcheck,'value');
if(singleStepCheck == 1)
    if (results ~= -1)
        
        oldRes = get(handles.results,'Data');
        oldCount = size(oldRes,1);
        
        if (oldCount ~= length(res))
            if (oldCount == 0)
                oldRes = [res(oldCount+1,:)] ;
            else
                oldRes = [oldRes ;res(oldCount+1,:)] ;
            end
            set(handles.results,'Data',oldRes);
        else
            xr = res(end,2);
            count_iter = oldCount;
            prec = res(end,3); %precision (error)
            set(handles.root,'String',xr);
            set(handles.iterDisplay,'String',count_iter);
            set(handles.precDisplay,'String',prec);
            
           
            %in case of fixed point, conv g(x) to f(x) by subtracting x
            val=get(handles.popupmenu1,'value');
            if (val == 3)
                trueval = vpa(solve(equ-x, x, 'Real',true)); %solve equation exactly
                %vpa converts it to double precision
                true_value = trueval; 
            end
            %calculating theoretical bound
            min=1000000000000000;
            for i =1:1:length(true_value)
                diff = abs(true_value(i) - xr);
                if(diff < min)
                    ret = true_value(i);
                    min = diff;
                end
            end
            calc = single(abs((ret - xr)/ret));
            theortical_bound = round(calc,20);
            set(handles.thbound,'String',theortical_bound);
        end 
        
    end
end

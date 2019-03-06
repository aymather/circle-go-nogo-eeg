%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                         %
%   University of Iowa, September 2018                                    %  
%   Program written by Alec Mather                                        %  
%                                                                         %
%   Psychtoolbox 3.0.12 / Matlab 2015a                                    %
%                                                                         %
%                                                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
     
% CLEAR
clear;clc     

% MacOS Specific        
% Screen('Preference', 'SkipSyncTests', 1);   
    
% GET PATH
addpath(genpath(fileparts(which('CGNGEEG.m')))); 

% COLLECT DATA
data = CGNGEEG_data;     
      
% DATA COLUMNS
id = CGNGEEG_columns(data);        

% SETTINGS          
settings = CGNGEEG_init(data);
  
% Go Through Trials
trialseq = CGNGEEG_backend(settings,data,id);       
 
Screen('CloseAll');

  

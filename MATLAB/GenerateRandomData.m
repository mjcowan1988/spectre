%% 
% File:    Generate Random Data
% Version: 1.0.0
% Date:    12-24-18
% Author:  mjcowan
% Email:   mjcMicroDevel@hotmail.com
%
%
% File Description:  This file generates 1 GB of data in random bytes.  
% This file will be used as a common data set that can be sent through
% all transmit / receivers developed as a way of having similar inputs
% to compare the systems with eachother.

% Flush Variables
clear;

%% Open File
fileID = fopen('RandomData_1GB.dat', 'w');


size = (1E9)/8;  % 1 Real GB


t = rand([1, size], 'double');


fwrite(fileID, t, 'double', 'ieee-be');


fclose(fileID);


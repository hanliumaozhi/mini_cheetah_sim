% Copyright 2019 Song Liu

% Get project root location
projectRoot = fileparts(mfilename('fullpath'));
restoredefaultpath;
% Construct paths to cache and code folders
myCacheFolder = fullfile(projectRoot, 'Build', 'Cache');
myCodeFolder = fullfile(projectRoot, 'Build', 'Code');

% Set the file generation folder paths
Simulink.fileGenControl('set',...
    'CacheFolder', myCacheFolder,...
    'CodeGenFolder', myCodeFolder,...
    'createDir', true);

root_dir = pwd;
% Add all subfolders to MATLAB path
addpath(genpath('./'));
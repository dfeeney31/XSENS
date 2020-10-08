%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%% Script to process golf IMU data %%%%%%%%%%%%%%%%%%%%%%
%%% The preprocessing currently requires each file be run through     %%%%%
%%% main_mvn.m to extract a tree for each file. Then, the Trees saved by
%%% file name into the directory. This Script will run through thee trees%%
%%% The end result will be stored in 'dat' and the order of dat will be
%%% alphabetical based on the files in the directory. %%%%%%%%%%%%%%%%%%%%%
%%% As of 3/6, this works in a small directory with 2 files MattMar5. Will
%%% update this to include an update to the kinematics we want to obtain
%%% from each file next. 
clear
files = dir('*.mat');

dat = struct();
counter = 1;
Config = 'test';

for file = files'
    
    clear pks locs
    load(file.name);
    extractAngle(tree) %Use this line to generate the angular data into approximately JSON format
    
    figure(counter)
    findpeaks(-1* angles.R_shoulder(1,10:end), 'minpeakdistance', 1100, 'MinPeakProminence',30, 'MinPeakHeight',25);
    [pks,locs] = findpeaks(-1* angles.R_shoulder(1,10:end), 'minpeakdistance', 1100, 'MinPeakProminence',30, 'MinPeakHeight',25);
    locs = locs - 75; %-75 steps back 75 frames to what should be approximately the start of the swing. 

    if locs(end) + 150 > length(angles.R_shoulder)
       locs(end) = []; 
    end
    %genAverages(angularVelocity, locs,150, Config);
    genAverageAngles(angles,locs,150,Config);
    genAvgVel(velocity,locs,150,Config);
    
    dat(counter).angles = angles;
    dat(counter).velocity = velocity;
    dat(counter).locs = locs;
    dat(counter).angles_proc = angles_test_proc;
    dat(counter).velocity_proc = velocity_test_proc;
    
%     num_rows = length(locs); %Find the size of the output or initialize it
%     if counter == 1
%        current_row = 1;
%     else
%         current_row = size(output,1);
%     end
        
    %output(current_row:current_row+num_rows,:) = 
    dat(counter).metrics = horzcat(max(angles_test_proc.lAnkle.AB,[],2),min(angles_test_proc.lAnkle.AB,[],2),max(angles_test_proc.lAnkle.DORSI,[],2),min(angles_test_proc.lAnkle.DORSI,[],2),...
    max(angles_test_proc.lAnkle.INT,[],2),min(angles_test_proc.lAnkle.INT,[],2),max(angles_test_proc.rAnkle.AB,[],2),min(angles_test_proc.rAnkle.AB,[],2),max(angles_test_proc.rAnkle.DORSI,[],2),...
    min(angles_test_proc.rAnkle.DORSI,[],2),max(angles_test_proc.rAnkle.INT,[],2),min(angles_test_proc.rAnkle.INT,[],2), max(angles_test_proc.lKnee.AB,[],2),...
    min(angles_test_proc.lKnee.AB,[],2),max(angles_test_proc.lKnee.FLEX,[],2),min(angles_test_proc.lKnee.FLEX,[],2),max(angles_test_proc.lKnee.INT,[],2),...
    min(angles_test_proc.lKnee.INT,[],2),max(angles_test_proc.rKnee.AB,[],2),min(angles_test_proc.rKnee.AB,[],2),max(angles_test_proc.rKnee.FLEX,[],2),...
    min(angles_test_proc.rKnee.FLEX,[],2),max(angles_test_proc.rKnee.INT,[],2),min(angles_test_proc.rKnee.INT,[],2), max(angles_test_proc.lHip.AB,[],2),...
    min(angles_test_proc.lHip.AB,[],2),max(angles_test_proc.lHip.FLEX,[],2),min(angles_test_proc.lHip.FLEX,[],2),max(angles_test_proc.lHip.INT,[],2),...
    min(angles_test_proc.lHip.INT,[],2),max(angles_test_proc.rHip.AB,[],2),min(angles_test_proc.rHip.AB,[],2),max(angles_test_proc.rHip.FLEX,[],2),...
    min(angles_test_proc.rHip.FLEX,[],2),max(angles_test_proc.rHip.INT,[],2),min(angles_test_proc.rHip.INT,[],2), max(velocity_test_proc.pelvis.X,[],2),...
    min(velocity_test_proc.pelvis.Y,[],2), max(velocity_test_proc.pelvis.Z,[],2));
    
    counter = counter + 1;

end    

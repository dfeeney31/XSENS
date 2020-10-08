%%% Radians per second, convert to degree/s if desired with 180/pi scaling factor %%% 
%%% This will take two sets of data in and plot them side by side
%% load in two datasets %%
clear
load('angles_proSLlace_proc.mat')
load('angles_proSLBoa_proc.mat')
load('angles_tourSLace_proc.mat')
load('angles_tourSBoa_proc.mat')
load('angles_freeLace_proc.mat')
load('angles_proSLlace_2_proc.mat')
load('angles_TourSBoa2_proc.mat')
load('angles_free2_proc.mat')
load('angles_ProBoa2_proc.mat')
load('angles_tourLace2_proc.mat')
load('angles_freeBoa2_proc.mat')

load('angularVelocity_proSLBoa_proc.mat')
load('angularVelocity_proSLlace_proc.mat')
load('angularVelocity_tourSLace_proc.mat')
load('angularVelocity_tourSBoa_proc.mat')
load('angularVelocity_freeLace.mat')
load('angularVelocity_proSLlace_2_proc.mat')
load('angularVelocity_TourSBoa2_proc.mat')
load('angularVelocity_free2_proc.mat')
load('angularVelocity_ProBoa2_proc.mat')
load('angularVelocity_tourLace2_proc.mat')
load('angularVelocity_freeBoa2_proc.mat')


angularVelocity_mat = angularVelocity_freeBoa2_proc;
angularVelocity_mat2 = angularVelocity_tourLace2_proc;

angles_mat = angles_DD_Masun;
angles_mat2 = angles_Lace_Masun;

%% plotting
figure(1)
subplot(3,2,1)
title('Left Shoulder Angular Velocity (X)')
shadedErrorBar(1:length(angularVelocity_mat.lShoulderV.X),angularVelocity_mat.lShoulderV.X * (180/pi),{@mean,@std},'lineprops','-b');
hold on
shadedErrorBar(1:length(angularVelocity_mat2.lShoulderV.X),angularVelocity_mat2.lShoulderV.X * (180/pi),{@mean,@std},'lineprops','-r');
subplot(3,2,2)
title('Right Shoulder Angular Velocity (X)')
shadedErrorBar(1:length(angularVelocity_mat.rShoulderV.X),angularVelocity_mat.rShoulderV.X * (180/pi),{@mean,@std},'lineprops','-b');
hold on
shadedErrorBar(1:length(angularVelocity_mat2.rShoulderV.X),angularVelocity_mat2.rShoulderV.X * (180/pi),{@mean,@std},'lineprops','-r');
subplot(3,2,3)
title('Left Shoulder Angular Velocity (Y)')
shadedErrorBar(1:length(angularVelocity_mat.lShoulderV.Y),angularVelocity_mat.lShoulderV.Y * (180/pi),{@mean,@std},'lineprops','-b');
hold on
shadedErrorBar(1:length(angularVelocity_mat2.lShoulderV.Y),angularVelocity_mat2.lShoulderV.Y * (180/pi),{@mean,@std},'lineprops','-r');
subplot(3,2,4)
title('Right Shoulder Angular Velocity (Y)')
shadedErrorBar(1:length(angularVelocity_mat.rShoulderV.Y),angularVelocity_mat.rShoulderV.Y * (180/pi),{@mean,@std},'lineprops','-b');
hold on
shadedErrorBar(1:length(angularVelocity_mat2.rShoulderV.Y),angularVelocity_mat2.rShoulderV.Y * (180/pi),{@mean,@std},'lineprops','-r');
subplot(3,2,5)
title('Left Shoulder Angular Velocity (Z)')
shadedErrorBar(1:length(angularVelocity_mat.lShoulderV.Z),angularVelocity_mat.lShoulderV.Z * (180/pi),{@mean,@std},'lineprops','-b');
hold on
shadedErrorBar(1:length(angularVelocity_mat2.lShoulderV.Z),angularVelocity_mat2.lShoulderV.Z * (180/pi),{@mean,@std},'lineprops','-r');
subplot(3,2,6)
title('Right Shoulder Angular Velocity (Z)')
shadedErrorBar(1:length(angularVelocity_mat.rShoulderV.Z),angularVelocity_mat.rShoulderV.Z * (180/pi),{@mean,@std},'lineprops','-b');
hold on
shadedErrorBar(1:length(angularVelocity_mat2.rShoulderV.Z),angularVelocity_mat2.rShoulderV.Z * (180/pi),{@mean,@std},'lineprops','-r');

%%% upper arm %%%
figure(2)
subplot(3,2,1)
title('Left Upper Arm Angular Velocity (X)')
shadedErrorBar(1:length(angularVelocity_mat.lupperArmV.X),angularVelocity_mat.lupperArmV.X * (180/pi),{@mean,@std},'lineprops','-b');
hold on
shadedErrorBar(1:length(angularVelocity_mat2.lupperArmV.X),angularVelocity_mat2.lupperArmV.X * (180/pi),{@mean,@std},'lineprops','-r');
subplot(3,2,2)
title('Right Upper Arm Angular Velocity (X)')
shadedErrorBar(1:length(angularVelocity_mat.lupperArmV.X),angularVelocity_mat.lupperArmV.X * (180/pi),{@mean,@std},'lineprops','-b');
hold on
shadedErrorBar(1:length(angularVelocity_mat2.lupperArmV.X),angularVelocity_mat2.lupperArmV.X * (180/pi),{@mean,@std},'lineprops','-r');
subplot(3,2,3)
title('Left Upper Arm Angular Velocity (Y)')
shadedErrorBar(1:length(angularVelocity_mat.lupperArmV.Y),angularVelocity_mat.lupperArmV.Y * (180/pi),{@mean,@std},'lineprops','-b');
shadedErrorBar(1:length(angularVelocity_mat2.lupperArmV.Y),angularVelocity_mat2.lupperArmV.Y * (180/pi),{@mean,@std},'lineprops','-r');
subplot(3,2,4)
title('Right Upper Arm Angular Velocity (Y)')
shadedErrorBar(1:length(angularVelocity_mat.rupperArmV.Y),angularVelocity_mat.lupperArmV.Y * (180/pi),{@mean,@std},'lineprops','-b');
hold on
shadedErrorBar(1:length(angularVelocity_mat2.rupperArmV.Y),angularVelocity_mat2.lupperArmV.Y * (180/pi),{@mean,@std},'lineprops','-r');
subplot(3,2,5)
title('Left Upper Arm Angular Velocity (Z)')
shadedErrorBar(1:length(angularVelocity_mat.lupperArmV.Z),angularVelocity_mat.lupperArmV.Z * (180/pi),{@mean,@std},'lineprops','-b');
hold on
shadedErrorBar(1:length(angularVelocity_mat2.lupperArmV.Z),angularVelocity_mat2.lupperArmV.Z * (180/pi),{@mean,@std},'lineprops','-r');
subplot(3,2,6)
title('Right Upper Arm Angular Velocity (Z)')
shadedErrorBar(1:length(angularVelocity_mat.lupperArmV.Z),angularVelocity_mat.lupperArmV.Z * (180/pi),{@mean,@std},'lineprops','-b');
hold on
shadedErrorBar(1:length(angularVelocity_mat2.lupperArmV.Z),angularVelocity_mat2.lupperArmV.Z * (180/pi),{@mean,@std},'lineprops','-r');

%%% forearm %%%
figure(3)
subplot(3,2,1)
title('Left Forearm Angular Velocity (X)')
shadedErrorBar(1:length(angularVelocity_mat.lforeArmV.X),angularVelocity_mat.lforeArmV.X * (180/pi),{@mean,@std},'lineprops','-b');
hold on
shadedErrorBar(1:length(angularVelocity_mat2.lforeArmV.X),angularVelocity_mat2.lforeArmV.X * (180/pi),{@mean,@std},'lineprops','-r');
subplot(3,2,2)
title('Right Forearm Angular Velocity (X)')
shadedErrorBar(1:length(angularVelocity_mat.lforeArmV.X),angularVelocity_mat.lforeArmV.X * (180/pi),{@mean,@std},'lineprops','-b');
hold on
shadedErrorBar(1:length(angularVelocity_mat2.lforeArmV.X),angularVelocity_mat2.lforeArmV.X * (180/pi),{@mean,@std},'lineprops','-r');
subplot(3,2,3)
title('Left Forearm Angular Velocity (Y)')
shadedErrorBar(1:length(angularVelocity_mat.lforeArmV.Y),angularVelocity_mat.lforeArmV.Y * (180/pi),{@mean,@std},'lineprops','-b');
hold on
shadedErrorBar(1:length(angularVelocity_mat2.lforeArmV.Y),angularVelocity_mat2.lforeArmV.Y * (180/pi),{@mean,@std},'lineprops','-r');
subplot(3,2,4)
title('Right Forearm Angular Velocity (Y)')
shadedErrorBar(1:length(angularVelocity_mat.lforeArmV.Y),angularVelocity_mat.lforeArmV.Y * (180/pi),{@mean,@std},'lineprops','-b');
hold on
shadedErrorBar(1:length(angularVelocity_mat2.lforeArmV.Y),angularVelocity_mat2.lforeArmV.Y * (180/pi),{@mean,@std},'lineprops','-r');
subplot(3,2,5)
title('Forearm Angular Velocity (Z)')
shadedErrorBar(1:length(angularVelocity_mat.lforeArmV.Z),angularVelocity_mat.lforeArmV.Z * (180/pi),{@mean,@std},'lineprops','-b');
hold on
shadedErrorBar(1:length(angularVelocity_mat2.lforeArmV.Z),angularVelocity_mat2.lforeArmV.Z * (180/pi),{@mean,@std},'lineprops','-r');
subplot(3,2,6)
title('Forearm Angular Velocity (Z)')
shadedErrorBar(1:length(angularVelocity_mat.lforeArmV.Z),angularVelocity_mat.lforeArmV.Z * (180/pi),{@mean,@std},'lineprops','-b');
hold on
shadedErrorBar(1:length(angularVelocity_mat2.lforeArmV.Z),angularVelocity_mat2.lforeArmV.Z * (180/pi),{@mean,@std},'lineprops','-r');


%%% Joint angle plots. Data stored in nested cell arrays (JSON format) %%%
figure(4)
subplot(3,2,1)
title('L Ankle Ab/Adduction')
shadedErrorBar(1:length(angles_mat.lAnkle.AB), angles_mat.lAnkle.AB, {@mean,@std}, 'lineprops','-b');
hold on
shadedErrorBar(1:length(angles_mat2.lAnkle.AB), angles_mat2.lAnkle.AB, {@mean,@std}, 'lineprops','-r');
subplot(3,2,2)
title('R Ankle Ab/Adduction')
shadedErrorBar(1:length(angles_mat.rAnkle.AB), angles_mat.rAnkle.AB, {@mean,@std}, 'lineprops','-b');
hold on
shadedErrorBar(1:length(angles_mat2.rAnkle.AB), angles_mat2.rAnkle.AB, {@mean,@std}, 'lineprops','-r');
subplot(3,2,3)
title('L Ankle Dorsi/Plantarflexion')
shadedErrorBar(1:length(angles_mat.lAnkle.DORSI), angles_mat.lAnkle.DORSI, {@mean,@std}, 'lineprops','-b');
hold on
shadedErrorBar(1:length(angles_mat2.lAnkle.DORSI), angles_mat2.lAnkle.DORSI, {@mean,@std}, 'lineprops','-r');
subplot(3,2,4)
title('R Ankle Dorsi/Plantarflexion')
shadedErrorBar(1:length(angles_mat.rAnkle.DORSI), angles_mat.rAnkle.DORSI, {@mean,@std}, 'lineprops','-b');
hold on
shadedErrorBar(1:length(angles_mat2.rAnkle.DORSI), angles_mat2.rAnkle.DORSI, {@mean,@std}, 'lineprops','-r');
subplot(3,2,5)
title('L Ankle Internal/External rotation')
shadedErrorBar(1:length(angles_mat.lAnkle.INT), angles_mat.lAnkle.INT, {@mean,@std}, 'lineprops','-b');
hold on
shadedErrorBar(1:length(angles_mat2.lAnkle.INT), angles_mat2.lAnkle.INT, {@mean,@std}, 'lineprops','-r');
subplot(3,2,6)
title('R Ankle Internal/External rotation')
shadedErrorBar(1:length(angles_mat.rAnkle.INT), angles_mat.rAnkle.INT, {@mean,@std}, 'lineprops','-b');
hold on
shadedErrorBar(1:length(angles_mat2.rAnkle.INT), angles_mat2.rAnkle.INT, {@mean,@std}, 'lineprops','-r');

%%% Knee plots %%%
figure(5)
subplot(3,2,1)
title('L Knee Ab/Adduction')
shadedErrorBar(1:length(angles_mat.lKnee.AB), angles_mat.lKnee.AB, {@mean,@std}, 'lineprops','-b');
hold on
shadedErrorBar(1:length(angles_mat2.lKnee.AB), angles_mat2.lKnee.AB, {@mean,@std}, 'lineprops','-r');
subplot(3,2,2)
title('R Knee Ab/Adduction')
shadedErrorBar(1:length(angles_mat.rKnee.AB), angles_mat.rKnee.AB, {@mean,@std}, 'lineprops','-b');
hold on
shadedErrorBar(1:length(angles_mat2.rKnee.AB), angles_mat2.rKnee.AB, {@mean,@std}, 'lineprops','-r');
subplot(3,2,3)
title('L Knee Flexion/Extension')
shadedErrorBar(1:length(angles_mat.lKnee.FLEX), angles_mat.lKnee.FLEX, {@mean,@std}, 'lineprops','-b');
hold on
shadedErrorBar(1:length(angles_mat2.lKnee.FLEX), angles_mat2.lKnee.FLEX, {@mean,@std}, 'lineprops','-r');
subplot(3,2,4)
title('R Knee Flexion/Extension')
shadedErrorBar(1:length(angles_mat.rKnee.FLEX), angles_mat.rKnee.FLEX, {@mean,@std}, 'lineprops','-b');
hold on
shadedErrorBar(1:length(angles_mat2.rKnee.FLEX), angles_mat2.rKnee.FLEX, {@mean,@std}, 'lineprops','-r');
subplot(3,2,5)
title('L Knee Internal/External rotation')
shadedErrorBar(1:length(angles_mat.lKnee.INT), angles_mat.lKnee.INT, {@mean,@std}, 'lineprops','-b');
hold on
shadedErrorBar(1:length(angles_mat2.lKnee.INT), angles_mat2.lKnee.INT, {@mean,@std}, 'lineprops','-r');
subplot(3,2,6)
title('R Knee Internal/External rotation')
shadedErrorBar(1:length(angles_mat.rKnee.INT), angles_mat.rKnee.INT, {@mean,@std}, 'lineprops','-b');
hold on
shadedErrorBar(1:length(angles_mat2.rKnee.INT), angles_mat2.rKnee.INT, {@mean,@std}, 'lineprops','-r');

%%% Hip plots %%%
figure(6)
subplot(3,2,1)
title('L Hip Ab/Adduction')
shadedErrorBar(1:length(angles_mat.lHip.AB), angles_mat.lHip.AB, {@mean,@std}, 'lineprops','-b');
hold on
shadedErrorBar(1:length(angles_mat2.lHip.AB), angles_mat2.lHip.AB, {@mean,@std}, 'lineprops','-r');
subplot(3,2,2)
title('R Hip Ab/Adduction')
shadedErrorBar(1:length(angles_mat.rHip.AB), angles_mat.rHip.AB, {@mean,@std}, 'lineprops','-b');
hold on
shadedErrorBar(1:length(angles_mat2.rHip.AB), angles_mat2.rHip.AB, {@mean,@std}, 'lineprops','-r');
subplot(3,2,3)
title('L Hip Flexion/Extension')
shadedErrorBar(1:length(angles_mat.lHip.FLEX), angles_mat.lHip.FLEX, {@mean,@std}, 'lineprops','-b');
hold on
shadedErrorBar(1:length(angles_mat2.lHip.FLEX), angles_mat2.lHip.FLEX, {@mean,@std}, 'lineprops','-r');
subplot(3,2,4)
title('R Hip Flexion/Extension')
shadedErrorBar(1:length(angles_mat.rHip.FLEX), angles_mat.rHip.FLEX, {@mean,@std}, 'lineprops','-b');
hold on
shadedErrorBar(1:length(angles_mat2.rHip.FLEX), angles_mat2.rHip.FLEX, {@mean,@std}, 'lineprops','-r');
subplot(3,2,5)
title('L Hip Internal/External rotation')
shadedErrorBar(1:length(angles_mat.lHip.INT), angles_mat.lHip.INT, {@mean,@std}, 'lineprops','-b');
hold on
shadedErrorBar(1:length(angles_mat2.lHip.INT), angles_mat2.lHip.INT, {@mean,@std}, 'lineprops','-r');
subplot(3,2,6)
title('R Hip Internal/External rotation')
shadedErrorBar(1:length(angles_mat.rHip.INT), angles_mat.rHip.INT, {@mean,@std}, 'lineprops','-b');
hold on
shadedErrorBar(1:length(angles_mat2.rHip.INT), angles_mat2.rHip.INT, {@mean,@std}, 'lineprops','-r');

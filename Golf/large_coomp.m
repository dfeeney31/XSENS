%% Concatenate all Boa and all laced trials
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

%Ankles
angles_mat.lAnkle.AB = [angles_freeBoa2_proc.lAnkle.AB; angles_ProBoa2_proc.lAnkle.AB; angles_TourSBoa2_proc.lAnkle.AB];
angles_mat.lAnkle.INT = [angles_freeBoa2_proc.lAnkle.INT; angles_ProBoa2_proc.lAnkle.INT; angles_TourSBoa2_proc.lAnkle.INT];
angles_mat.lAnkle.DORSI = [angles_freeBoa2_proc.lAnkle.DORSI; angles_ProBoa2_proc.lAnkle.DORSI; angles_TourSBoa2_proc.lAnkle.DORSI];
angles_mat.rAnkle.AB = [angles_freeBoa2_proc.rAnkle.AB; angles_ProBoa2_proc.rAnkle.AB; angles_TourSBoa2_proc.rAnkle.AB];
angles_mat.rAnkle.INT = [angles_freeBoa2_proc.rAnkle.INT; angles_ProBoa2_proc.rAnkle.INT; angles_TourSBoa2_proc.rAnkle.INT];
angles_mat.rAnkle.DORSI = [angles_freeBoa2_proc.rAnkle.DORSI; angles_ProBoa2_proc.rAnkle.DORSI; angles_TourSBoa2_proc.rAnkle.DORSI];
%Knees
angles_mat.lKnee.AB = [angles_freeBoa2_proc.lKnee.AB; angles_ProBoa2_proc.lKnee.AB; angles_TourSBoa2_proc.lKnee.AB];
angles_mat.lKnee.INT = [angles_freeBoa2_proc.lKnee.INT; angles_ProBoa2_proc.lKnee.INT; angles_TourSBoa2_proc.lKnee.INT];
angles_mat.lKnee.FLEX = [angles_freeBoa2_proc.lKnee.FLEX; angles_ProBoa2_proc.lKnee.FLEX; angles_TourSBoa2_proc.lKnee.FLEX];
angles_mat.rKnee.AB = [angles_freeBoa2_proc.rKnee.AB; angles_ProBoa2_proc.rKnee.AB; angles_TourSBoa2_proc.rKnee.AB];
angles_mat.rKnee.INT = [angles_freeBoa2_proc.rKnee.INT; angles_ProBoa2_proc.rKnee.INT; angles_TourSBoa2_proc.rKnee.INT];
angles_mat.rKnee.FLEX = [angles_freeBoa2_proc.rKnee.FLEX; angles_ProBoa2_proc.rKnee.FLEX; angles_TourSBoa2_proc.rKnee.FLEX];
%Hips
angles_mat.lHip.AB = [angles_freeBoa2_proc.lHip.AB; angles_ProBoa2_proc.lHip.AB; angles_TourSBoa2_proc.lHip.AB];
angles_mat.lHip.INT = [angles_freeBoa2_proc.lHip.INT; angles_ProBoa2_proc.lHip.INT; angles_TourSBoa2_proc.lHip.INT];
angles_mat.lHip.FLEX = [angles_freeBoa2_proc.lHip.FLEX; angles_ProBoa2_proc.lHip.FLEX; angles_TourSBoa2_proc.lHip.FLEX];
angles_mat.rHip.AB = [angles_freeBoa2_proc.rHip.AB; angles_ProBoa2_proc.rHip.AB; angles_TourSBoa2_proc.rHip.AB];
angles_mat.rHip.INT = [angles_freeBoa2_proc.rHip.INT; angles_ProBoa2_proc.rHip.INT; angles_TourSBoa2_proc.rHip.INT];
angles_mat.rHip.FLEX = [angles_freeBoa2_proc.rHip.FLEX; angles_ProBoa2_proc.rHip.FLEX; angles_TourSBoa2_proc.rHip.FLEX];

%Ankles2
angles_mat2.lAnkle.AB = [angles_free2_proc.lAnkle.AB; angles_proSLlace_2_proc.lAnkle.AB; angles_tourLace2_proc.lAnkle.AB];
angles_mat2.lAnkle.INT = [angles_free2_proc.lAnkle.INT; angles_proSLlace_2_proc.lAnkle.INT; angles_tourLace2_proc.lAnkle.INT];
angles_mat2.lAnkle.DORSI = [angles_free2_proc.lAnkle.DORSI; angles_proSLlace_2_proc.lAnkle.DORSI; angles_tourLace2_proc.lAnkle.DORSI];
angles_mat2.rAnkle.AB = [angles_free2_proc.rAnkle.AB; angles_proSLlace_2_proc.rAnkle.AB; angles_tourLace2_proc.rAnkle.AB];
angles_mat2.rAnkle.INT = [angles_free2_proc.rAnkle.INT; angles_proSLlace_2_proc.rAnkle.INT; angles_tourLace2_proc.rAnkle.INT];
angles_mat2.rAnkle.DORSI = [angles_free2_proc.rAnkle.DORSI; angles_proSLlace_2_proc.rAnkle.DORSI; angles_tourLace2_proc.rAnkle.DORSI];
%Knees2
angles_mat2.lKnee.AB = [angles_free2_proc.lKnee.AB; angles_proSLlace_2_proc.lKnee.AB; angles_tourLace2_proc.lKnee.AB];
angles_mat2.lKnee.INT = [angles_free2_proc.lKnee.INT; angles_proSLlace_2_proc.lKnee.INT; angles_tourLace2_proc.lKnee.INT];
angles_mat2.lKnee.FLEX = [angles_free2_proc.lKnee.FLEX; angles_proSLlace_2_proc.lKnee.FLEX; angles_tourLace2_proc.lKnee.FLEX];
angles_mat2.rKnee.AB = [angles_free2_proc.rKnee.AB; angles_proSLlace_2_proc.rKnee.AB; angles_tourLace2_proc.rKnee.AB];
angles_mat2.rKnee.INT = [angles_free2_proc.rKnee.INT; angles_proSLlace_2_proc.rKnee.INT; angles_tourLace2_proc.rKnee.INT];
angles_mat2.rKnee.FLEX = [angles_free2_proc.rKnee.FLEX; angles_proSLlace_2_proc.rKnee.FLEX; angles_tourLace2_proc.rKnee.FLEX];
%Hips2
angles_mat2.lHip.AB = [angles_free2_proc.lHip.AB; angles_proSLlace_2_proc.lHip.AB; angles_tourLace2_proc.lHip.AB];
angles_mat2.lHip.INT = [angles_free2_proc.lHip.INT; angles_proSLlace_2_proc.lHip.INT; angles_tourLace2_proc.lHip.INT];
angles_mat2.lHip.FLEX = [angles_free2_proc.lHip.FLEX; angles_proSLlace_2_proc.lHip.FLEX; angles_tourLace2_proc.lHip.FLEX];
angles_mat2.rHip.AB = [angles_free2_proc.rHip.AB; angles_proSLlace_2_proc.rHip.AB; angles_tourLace2_proc.rHip.AB];
angles_mat2.rHip.INT = [angles_free2_proc.rHip.INT; angles_proSLlace_2_proc.rHip.INT; angles_tourLace2_proc.rHip.INT];
angles_mat2.rHip.FLEX = [angles_free2_proc.rHip.FLEX; angles_proSLlace_2_proc.rHip.FLEX; angles_tourLace2_proc.rHip.FLEX];


%%% Joint angle plots. Data stored in nested cell arrays (JSON format) %%%
figure(1)
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
figure(2)
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
figure(3)
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
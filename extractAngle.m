function angles = extractAngle(data)
% -----------------------------------------------------------------------
% Function to extract joint angles from Xsens mvnx export into a usable set
% of arrays
% -----------------------------------------------------------------------
% data: xsens file (usually tree.subject.frames.frame)
% coord: column designating the joint and XYZ coordinate
% ------------------------------------------------------------------------
% Outputs are joint angles for each joint in X,Y,Z. This is ab/adduction,
% internal/external rotation, flexion/extension, respectively.
% -----------------------------------------------------------------------
% This Matlab code written by Dan Feeney 09/14/18
% -----------------------------------------------------------------------
tree = data;
%preallocation for angles%
L5S1 = zeros(3,length(tree.subject.frames.frame)-4);
L4L3 = zeros(3,length(tree.subject.frames.frame)-4);
L1T12 = zeros(3,length(tree.subject.frames.frame)-4);
T9T8 = zeros(3,length(tree.subject.frames.frame)-4);
T1C7 = zeros(3,length(tree.subject.frames.frame)-4);
C1head = zeros(3,length(tree.subject.frames.frame)-4);
R_C7_shoulder = zeros(3,length(tree.subject.frames.frame)-4);
R_shoulder = zeros(3,length(tree.subject.frames.frame)-4);
R_elbow = zeros(3,length(tree.subject.frames.frame)-4);
R_wrist = zeros(3,length(tree.subject.frames.frame)-4);
L_C7_shoulder = zeros(3,length(tree.subject.frames.frame)-4);
L_shoulder = zeros(3,length(tree.subject.frames.frame)-4);
L_elbow = zeros(3,length(tree.subject.frames.frame)-4);
L_wrist = zeros(3,length(tree.subject.frames.frame)-4);
R_hip = zeros(3,length(tree.subject.frames.frame)-4);
R_knee = zeros(3,length(tree.subject.frames.frame)-4);
R_ankle = zeros(3,length(tree.subject.frames.frame)-4);
R_ball_foot = zeros(3,length(tree.subject.frames.frame)-4);
L_hip = zeros(3,length(tree.subject.frames.frame)-4);
L_knee = zeros(3,length(tree.subject.frames.frame)-4);
L_ankle = zeros(3,length(tree.subject.frames.frame)-4);
L_ball_foot = zeros(3,length(tree.subject.frames.frame)-4);

%Preallocate velocities%
pelvis_velocity = zeros(3,length(tree.subject.frames.frame)-4);
L5_velocity = zeros(3,length(tree.subject.frames.frame)-4);
L3_velocity = zeros(3,length(tree.subject.frames.frame)-4);
T12_velocity = zeros(3,length(tree.subject.frames.frame)-4);
T8_velocity = zeros(3,length(tree.subject.frames.frame)-4);
neck_velocity = zeros(3,length(tree.subject.frames.frame)-4);
head_velocity = zeros(3,length(tree.subject.frames.frame)-4);
R_shoulder_velocity = zeros(3,length(tree.subject.frames.frame)-4);
R_upperArm_velocity = zeros(3,length(tree.subject.frames.frame)-4);
R_forearm_velocity = zeros(3,length(tree.subject.frames.frame)-4);
R_hand_velocity = zeros(3,length(tree.subject.frames.frame)-4);
L_shoulder_velocity = zeros(3,length(tree.subject.frames.frame)-4);
L_upperArm_velocity = zeros(3,length(tree.subject.frames.frame)-4);
L_forearm_velocity = zeros(3,length(tree.subject.frames.frame)-4);
L_hand_velocity = zeros(3,length(tree.subject.frames.frame)-4);
R_upperLeg_velocity = zeros(3,length(tree.subject.frames.frame)-4);
R_lowerLeg_velocity = zeros(3,length(tree.subject.frames.frame)-4);
R_foot_velocity = zeros(3,length(tree.subject.frames.frame)-4);
R_toe_velocity = zeros(3,length(tree.subject.frames.frame)-4);
L_upperLeg_velocity = zeros(3,length(tree.subject.frames.frame)-4);
L_lowerLeg_velocity = zeros(3,length(tree.subject.frames.frame)-4);
L_foot_velocity = zeros(3,length(tree.subject.frames.frame)-4);
L_toe_velocity = zeros(3,length(tree.subject.frames.frame)-4);

%%%%%%% fill in, X,Y,Z columns 1,2,3 angles, then velicities %%%%%%

for i = 4:length(tree.subject.frames.frame)
    L5S1(1,i) =  tree.subject.frames.frame(i).jointAngle(1,1);
    L5S1(2,i) =  tree.subject.frames.frame(i).jointAngle(1,2);
    L5S1(3,i) =  tree.subject.frames.frame(i).jointAngle(1,3);
    L4L3(1,i) =  tree.subject.frames.frame(i).jointAngle(1,4);
    L4L3(2,i) =  tree.subject.frames.frame(i).jointAngle(1,5);
    L4L3(3,i) =  tree.subject.frames.frame(i).jointAngle(1,6);
    L1T12(1,i) = tree.subject.frames.frame(i).jointAngle(1,7);
    L1T12(2,i) = tree.subject.frames.frame(i).jointAngle(1,8);
    L1T12(3,i) = tree.subject.frames.frame(i).jointAngle(1,9);
    T9T8(1,i) = tree.subject.frames.frame(i).jointAngle(1,10);
    T9T8(2,i) = tree.subject.frames.frame(i).jointAngle(1,11);
    T9T8(3,i) = tree.subject.frames.frame(i).jointAngle(1,12);
    T1C7(1,i) = tree.subject.frames.frame(i).jointAngle(1,13);
    T1C7(2,i) = tree.subject.frames.frame(i).jointAngle(1,14);
    T1C7(3,i) = tree.subject.frames.frame(i).jointAngle(1,15);
    C1head(1,i) = tree.subject.frames.frame(i).jointAngle(1,16);
    C1head(2,i) = tree.subject.frames.frame(i).jointAngle(1,17);
    C1head(3,i) = tree.subject.frames.frame(i).jointAngle(1,18);
    R_C7_shoulder(1,i) = tree.subject.frames.frame(i).jointAngle(1,19);
    R_C7_shoulder(2,i) = tree.subject.frames.frame(i).jointAngle(1,20);
    R_C7_shoulder(3,i) = tree.subject.frames.frame(i).jointAngle(1,21);
    R_shoulder(1,i) = tree.subject.frames.frame(i).jointAngle(1,22);
    R_shoulder(2,i) = tree.subject.frames.frame(i).jointAngle(1,23);
    R_shoulder(3,i) = tree.subject.frames.frame(i).jointAngle(1,24);
    R_elbow(1,i) = tree.subject.frames.frame(i).jointAngle(1,25);
    R_elbow(2,i) = tree.subject.frames.frame(i).jointAngle(1,26);
    R_elbow(3,i) = tree.subject.frames.frame(i).jointAngle(1,27);
    R_wrist(1,i) = tree.subject.frames.frame(i).jointAngle(1,28);
    R_wrist(2,i) = tree.subject.frames.frame(i).jointAngle(1,29);
    R_wrist(3,i) = tree.subject.frames.frame(i).jointAngle(1,30);
    L_C7_shoulder(1,i) = tree.subject.frames.frame(i).jointAngle(1,31);
    L_C7_shoulder(2,i) = tree.subject.frames.frame(i).jointAngle(1,32);
    L_C7_shoulder(3,i) = tree.subject.frames.frame(i).jointAngle(1,33);
    L_shoulder(1,i) = tree.subject.frames.frame(i).jointAngle(1,34);
    L_shoulder(2,i) = tree.subject.frames.frame(i).jointAngle(1,35);
    L_shoulder(3,i) = tree.subject.frames.frame(i).jointAngle(1,36);
    L_elbow(1,i) = tree.subject.frames.frame(i).jointAngle(1,37);
    L_elbow(2,i) = tree.subject.frames.frame(i).jointAngle(1,38);
    L_elbow(3,i) = tree.subject.frames.frame(i).jointAngle(1,39);
    L_wrist(1,i) = tree.subject.frames.frame(i).jointAngle(1,40);
    L_wrist(2,i) = tree.subject.frames.frame(i).jointAngle(1,41);
    L_wrist(3,i) = tree.subject.frames.frame(i).jointAngle(1,42);
    R_hip(1,i) = tree.subject.frames.frame(i).jointAngle(1,43);
    R_hip(2,i) = tree.subject.frames.frame(i).jointAngle(1,44);
    R_hip(3,i) = tree.subject.frames.frame(i).jointAngle(1,45);
    R_knee(1,i) = tree.subject.frames.frame(i).jointAngle(1,46);
    R_knee(2,i) = tree.subject.frames.frame(i).jointAngle(1,47);
    R_knee(3,i) = tree.subject.frames.frame(i).jointAngle(1,48);
    R_ankle(1,i) = tree.subject.frames.frame(i).jointAngle(1,49);
    R_ankle(2,i) = tree.subject.frames.frame(i).jointAngle(1,50);
    R_ankle(3,i) = tree.subject.frames.frame(i).jointAngle(1,51);
    R_ball_foot(1,i) = tree.subject.frames.frame(i).jointAngle(1,52);
    R_ball_foot(2,i) = tree.subject.frames.frame(i).jointAngle(1,53);
    R_ball_foot(3,i) = tree.subject.frames.frame(i).jointAngle(1,54);
    L_hip(1,i) = tree.subject.frames.frame(i).jointAngle(1,55);
    L_hip(2,i) = tree.subject.frames.frame(i).jointAngle(1,56);
    L_hip(3,i) = tree.subject.frames.frame(i).jointAngle(1,57);
    L_knee(1,i) = tree.subject.frames.frame(i).jointAngle(1,58);
    L_knee(2,i) = tree.subject.frames.frame(i).jointAngle(1,59);
    L_knee(3,i) = tree.subject.frames.frame(i).jointAngle(1,60);
    L_ankle(1,i) = tree.subject.frames.frame(i).jointAngle(1,61);
    L_ankle(2,i) = tree.subject.frames.frame(i).jointAngle(1,62);
    L_ankle(3,i) = tree.subject.frames.frame(i).jointAngle(1,63);
    L_ball_foot(1,i) = tree.subject.frames.frame(i).jointAngle(1,64);
    L_ball_foot(2,i) = tree.subject.frames.frame(i).jointAngle(1,65);
    L_ball_foot(3,i) = tree.subject.frames.frame(i).jointAngle(1,66);
    
    
    %velocities below. Velocity has 23 segments in XYZ
    pelvis_velocity(1,i) =  tree.subject.frames.frame(i).velocity(1,1);
    pelvis_velocity(2,i) =  tree.subject.frames.frame(i).velocity(1,2);
    pelvis_velocity(3,i) =  tree.subject.frames.frame(i).velocity(1,3);
    L5_velocity(1,i) =  tree.subject.frames.frame(i).velocity(1,4);
    L5_velocity(2,i) =  tree.subject.frames.frame(i).velocity(1,5);
    L5_velocity(3,i) =  tree.subject.frames.frame(i).velocity(1,6);
    L3_velocity(1,i) = tree.subject.frames.frame(i).velocity(1,7);
    L3_velocity(2,i) = tree.subject.frames.frame(i).velocity(1,8);
    L3_velocity(3,i) = tree.subject.frames.frame(i).velocity(1,9);
    T12_velocity(1,i) = tree.subject.frames.frame(i).velocity(1,10);
    T12_velocity(2,i) = tree.subject.frames.frame(i).velocity(1,11);
    T12_velocity(3,i) = tree.subject.frames.frame(i).velocity(1,12);
    T8_velocity(1,i) = tree.subject.frames.frame(i).velocity(1,13);
    T8_velocity(2,i) = tree.subject.frames.frame(i).velocity(1,14);
    T8_velocity(3,i) = tree.subject.frames.frame(i).velocity(1,15);
    neck_velocity(1,i) = tree.subject.frames.frame(i).velocity(1,16);
    neck_velocity(2,i) = tree.subject.frames.frame(i).velocity(1,17);
    neck_velocity(3,i) = tree.subject.frames.frame(i).velocity(1,18);
    head_velocity(1,i) = tree.subject.frames.frame(i).velocity(1,19);
    head_velocity(2,i) = tree.subject.frames.frame(i).velocity(1,20);
    head_velocity(3,i) = tree.subject.frames.frame(i).velocity(1,21);
    R_shoulder_velocity(1,i) = tree.subject.frames.frame(i).velocity(1,22);
    R_shoulder_velocity(2,i) = tree.subject.frames.frame(i).velocity(1,23);
    R_shoulder_velocity(3,i) = tree.subject.frames.frame(i).velocity(1,24);
    R_upperArm_velocity(1,i) = tree.subject.frames.frame(i).velocity(1,25);
    R_upperArm_velocity(2,i) = tree.subject.frames.frame(i).velocity(1,26);
    R_upperArm_velocity(3,i) = tree.subject.frames.frame(i).velocity(1,27);
    R_forearm_velocity(1,i) = tree.subject.frames.frame(i).velocity(1,28);
    R_forearm_velocity(2,i) = tree.subject.frames.frame(i).velocity(1,29);
    R_forearm_velocity(3,i) = tree.subject.frames.frame(i).velocity(1,30);
    R_hand_velocity(1,i) = tree.subject.frames.frame(i).velocity(1,31);
    R_hand_velocity(2,i) = tree.subject.frames.frame(i).velocity(1,32);
    R_hand_velocity(3,i) = tree.subject.frames.frame(i).velocity(1,33);
    L_shoulder_velocity(1,i) = tree.subject.frames.frame(i).velocity(1,34);
    L_shoulder_velocity(2,i) = tree.subject.frames.frame(i).velocity(1,35);
    L_shoulder_velocity(3,i) = tree.subject.frames.frame(i).velocity(1,36);
    L_upperArm_velocity(1,i) = tree.subject.frames.frame(i).velocity(1,37);
    L_upperArm_velocity(2,i) = tree.subject.frames.frame(i).velocity(1,38);
    L_upperArm_velocity(3,i) = tree.subject.frames.frame(i).velocity(1,39);
    L_forearm_velocity(1,i) = tree.subject.frames.frame(i).velocity(1,40);
    L_forearm_velocity(2,i) = tree.subject.frames.frame(i).velocity(1,41);
    L_forearm_velocity(3,i) = tree.subject.frames.frame(i).velocity(1,42);
    L_hand_velocity(1,i) = tree.subject.frames.frame(i).velocity(1,43);
    L_hand_velocity(2,i) = tree.subject.frames.frame(i).velocity(1,44);
    L_hand_velocity(3,i) = tree.subject.frames.frame(i).velocity(1,45);
    R_upperLeg_velocity(1,i) = tree.subject.frames.frame(i).velocity(1,46);
    R_upperLeg_velocity(2,i) = tree.subject.frames.frame(i).velocity(1,47);
    R_upperLeg_velocity(3,i) = tree.subject.frames.frame(i).velocity(1,48);
    R_lowerLeg_velocity(1,i) = tree.subject.frames.frame(i).velocity(1,49);
    R_lowerLeg_velocity(2,i) = tree.subject.frames.frame(i).velocity(1,50);
    R_lowerLeg_velocity(3,i) = tree.subject.frames.frame(i).velocity(1,51);
    R_foot_velocity(1,i) = tree.subject.frames.frame(i).velocity(1,52);
    R_foot_velocity(2,i) = tree.subject.frames.frame(i).velocity(1,53);
    R_foot_velocity(3,i) = tree.subject.frames.frame(i).velocity(1,54);
    R_toe_velocity(1,i) = tree.subject.frames.frame(i).velocity(1,55);
    R_toe_velocity(2,i) = tree.subject.frames.frame(i).velocity(1,56);
    R_toe_velocity(3,i) = tree.subject.frames.frame(i).velocity(1,57);
    L_upperLeg_velocity(1,i) = tree.subject.frames.frame(i).velocity(1,58);
    L_upperLeg_velocity(2,i) = tree.subject.frames.frame(i).velocity(1,59);
    L_upperLeg_velocity(3,i) = tree.subject.frames.frame(i).velocity(1,60);
    L_lowerLeg_velocity(1,i) = tree.subject.frames.frame(i).velocity(1,61);
    L_lowerLeg_velocity(2,i) = tree.subject.frames.frame(i).velocity(1,62);
    L_lowerLeg_velocity(3,i) = tree.subject.frames.frame(i).velocity(1,63);
    L_foot_velocity(1,i) = tree.subject.frames.frame(i).velocity(1,64);
    L_foot_velocity(2,i) = tree.subject.frames.frame(i).velocity(1,65);
    L_foot_velocity(3,i) = tree.subject.frames.frame(i).velocity(1,66);
    L_toe_velocity(1,i) = tree.subject.frames.frame(i).velocity(1,67);
    L_toe_velocity(2,i) = tree.subject.frames.frame(i).velocity(1,68);
    L_toe_velocity(3,i) = tree.subject.frames.frame(i).velocity(1,69);
end

%assign angle structure below
angles.L1T12 = L1T12;
angles.L4L3 = L4L3;
angles.L5S1 = L5S1;
angles.L_ankle = L_ankle;
angles.L_ball_foot = L_ball_foot;
angles.L_C7_shoulder = L_C7_shoulder;
angles.L_elbow = L_elbow;
angles.L_knee = L_knee;
angles.L_hip = L_hip;
angles.L_wrist = L_wrist;
angles.R_ankle = R_ankle;
angles.R_ball_foot = R_ball_foot;
angles.R_C7_shoulder = R_C7_shoulder;
angles.R_elbow = R_elbow;
angles.R_hip = R_hip;
angles.R_knee = R_knee;
angles.R_shoulder = R_shoulder;
angles.R_wrist = R_wrist;
angles.T1C7 = T1C7;
angles.T9T8 = T9T8;

%velocity structure below
velocity.pelvis = pelvis_velocity;
velocity.L3 = L3_velocity;
velocity.L5 = L5_velocity;
velocity.T12 = T12_velocity;
velocity.T8 = T8_velocity;
velocity.next = neck_velocity;
velocity.head = head_velocity;
velocity.R_shoulder = R_shoulder_velocity;
velocity.R_upperArm = R_upperArm_velocity;
velocity.R_forearm = R_forearm_velocity;
velocity.R_hand = R_hand_velocity;
velocity.L_shoulder = L_shoulder_velocity;
velocity.L_upperArm = L_upperArm_velocity;
velocity.L_forearm = L_forearm_velocity;
velocity.L_hand = L_hand_velocity;
velocity.R_upperLeg = R_upperLeg_velocity;
velocity.R_lowerLeg = R_lowerLeg_velocity;
velocity.R_foot = R_foot_velocity;
velocity.R_toe = R_toe_velocity;
velocity.L_upperLeg = L_upperLeg_velocity;
velocity.L_lowerLeg = L_lowerLeg_velocity;
velocity.L_foot = L_foot_velocity;
velocity.L_toe = L_toe_velocity;


% Assign variables to global work space

assignin('base','angles',angles);
assignin('base','velocity',velocity);


end
function [aFeatures, strDescription] = selectFeatures_relational()
% [aFeatures, strDescription] = selectFeatures_relational;
% 
% this function is called by selectFeatures(strFeatures, iWhich)
%

% Feature set 
selectSome = {...
        'feature_AK_real_handLeftMoveApartRelRoot'; ...             F16 F12
        'feature_AK_real_handRightMoveApartRelRoot'; ...            F16 F12
        ... 'feature_AK_real_handLeftToTopRelSpine'; ...   %            F16
        ... 'feature_AK_real_handRightToTopRelSpine'; ...  %            F16
        'feature_AK_real_handLeftToFrontRelTorso'; ...              F16 F12 F10
        'feature_AK_real_handRightToFrontRelTorso'; ...             F16 F12 F10
        'feature_AK_real_handLeftHighVel'; ...                      F16 F12 F10
        'feature_AK_real_handRightHighVel'; ...                     F16 F12 F10
        ... 'feature_AK_real_footLeftSidewaysRelHips'; ... %             F16
        ... 'feature_AK_real_footRightSidewaysRelHips'; ...%             F16
        'feature_AK_real_footLeftBackRelLegRight'; ... %walk        F16 F12 F10
        'feature_AK_real_footRightBackRelLegLeft'; ... %walk        F16 F12 F10
        'feature_AK_real_footLeftHighVel'; ...                      F16 F12 F10
        'feature_AK_real_footRightHighVel'; ...                     F16 F12 F10
        'feature_AK_real_footLeftRaisedRelYBodyMin';... %jog, jump  F16 F12 F10
        'feature_AK_real_footRightRaisedRelYBodyMin';... %jog, jump F16 F12 F10
     };
description = {...
        '(11/12) lhand moving away from root\\\hline'; ...
        '(11/12) rhand moving away from root\\\hline'; ...
        ... %'lhand to top'; ...
        ... %'rhand to top'; ...
        '(1/2) lhand moving forwards \\\hline'; ...
        '(1/2) rhand moving forwards \\\hline'; ...
        '(13/14) Geschwindigkeit von \joint{lhand} \\\hline'; ...
        '(13/14) Geschwindigkeit von \joint{rhand} \\\hline\hline'; ...
        ... %'lfoot sideways'; ...
        ... %'rfoot sideways'; ...
        '(15/16) lfoot behind rleg \\\hline'; ...
        '(15/16) rfoot behind lleg \\\hline'; ...
        '(25/26) Geschwindigkeit von \joint{lfoot} \\\hline'; ...
        '(25/26) Geschwindigkeit von \joint{rfoot}  \\\hline'; ...
        '(17/18) Abstand von \joint{lfoot} zum Boden\footnote{eigentlich} \\\hline'; ...
        '(17/18) Abstand von \joint{rfoot} zum Boden\\\hline'; ...
    };

aFeatures = selectSome;
strDescription = description;
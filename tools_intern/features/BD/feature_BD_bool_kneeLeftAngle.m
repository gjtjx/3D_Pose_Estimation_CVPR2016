function bool = feature_BD_bool_kneeLeftAngle(mot, varargin)

input_params = { 'threshold_angle1' , 'threshold_angle2' };

if( ~(nargin == 1 || nargin == 3) ) error('Wrong number of arguments.'); end


threshold_angle1 = 0;
threshold_angle2 = 110;
for i = 1:length(varargin);
    if(~isempty(varargin{i})) 
        eval([input_params{i} ' = varargin{i};']) ;
    end 
end 
bool =  threshold_angle1 < feature_BD_angleJoint( mot, 'lhip', 'lankle', 'lknee' ) & feature_BD_angleJoint( mot, 'lhip', 'lankle', 'lknee' ) < threshold_angle2;
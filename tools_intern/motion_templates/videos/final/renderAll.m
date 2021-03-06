global VARS_GLOBAL_ANIM
if (isempty(who('VARS_GLOBAL_ANIM'))||isempty(VARS_GLOBAL_ANIM))
    VARS_GLOBAL_ANIM = emptyVarsGlobalAnimStruct;
end
VARS_GLOBAL_ANIM.video_compression = 'PNG1';

concatVideosSmooth_temporal(...
    {...
        'render/video_slide_title.avi',...
        '../01_introduction/render/01_introduction.avi',...
        'render/video_slide_features.avi',...
        '../02_features/render/02_features.avi',...
        'render/video_slide_WMTs.avi',...
        '../03_WMTs/render/03_WMTs.avi',...
        'render/video_slide_retrieval.avi',...
        '../04_retrieval/render/04_retrieval.avi',...
        'render/video_slide_acknowledgements_review.avi',...
    },...
    'render/06_MuRo_SIGGRAPH_video2.avi',...
    {...
       'render/emptyGray640x480.tif',...        
       'render/emptyGray640x480.tif',...        
       'render/emptyGray640x480.tif',...        
       'render/emptyGray640x480.tif',...        
       'render/emptyGray640x480.tif',...        
       'render/emptyGray640x480.tif',...        
       'render/emptyGray640x480.tif',...        
       'render/emptyGray640x480.tif',...     
       'render/emptyGray640x480.tif',...     
    },...
    [...
        NaN,...
        0.25,...
        0.25,...
        0.25,...
        0.25,...
        0.25,...
        0.25,...
        0.25,...
        0.25,...
    ],...
    [...
        0 0;...
        0 0;...
        0 0;...
        0 0;...
        0 0;...
        0 0;...
        0 0;...
        0 0;...
        0 0;...
    ]...
    );

%'render/emptyGray640x480.tif',...        
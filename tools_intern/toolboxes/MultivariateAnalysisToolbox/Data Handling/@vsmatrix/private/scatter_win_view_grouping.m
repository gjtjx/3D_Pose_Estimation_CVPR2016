function scatter_win_view_grouping(ud)

% SCATTER_WIN_VIEW_GROUPING chooses a group that underlies viewing.
% -----------------------------
% scatter_win_view_grouping(ud)
% -----------------------------
% Description: chooses a variable that underlies viewing.
% Input:       {ud} userdata of parent window.

% � Liran Carmel
% Classification: Visualization
% Last revision date: 10-Jan-2005

% extract relevant parameters from {ud}
vsm = ud.data;

% open window
fig = figure('menubar','none','position',[300 300 250 350],...
    'numbertitle','off','name','Choose a Group and Hierarchy to Underlie Viewing');

% choose group listbox
uicontrol(fig,'style','text','string','Choose Grouping:',...
    'units','normalized','position',[0.05 0.9 0.4 0.05],...
    'background',[0.8 0.8 0.8],'horizontal','left');
list = [];
for ii = 1:length(vsm.groupings)
    list = [list {vsm.groupings(ii).name}];
end
h_lb = uicontrol(fig,'style','listbox','string',list,...
    'units','normalized','position',[0.05 0.27 0.9 0.63],...
    'callback','scatter(vsmatrix,201)');

% choose hierarchy
uicontrol(fig,'style','text','string','Hierarchy for coloring:',...
    'units','normalized','position',[0.05 0.19 0.5 0.06],...
    'background',[0.8 0.8 0.8],'horizontal','left');
h_ed(1) = uicontrol(fig,'style','edit','string',1,...
    'units','normalized','position',[0.55 0.19 0.2 0.06],...
    'background',[0.8 0.8 0.8],'horizontal','left');
h_txt(1) = uicontrol(fig,'style','text',...
    'string',sprintf('(of %d)',vsm.groupings(1).no_hierarchies),...
    'units','normalized','position',[0.75 0.19 0.22 0.06],...
    'background',[0.8 0.8 0.8],'horizontal','left');
uicontrol(fig,'style','text','string','Hierarchy for centroids:',...
    'units','normalized','position',[0.05 0.13 0.5 0.06],...
    'background',[0.8 0.8 0.8],'horizontal','left');
h_ed(2) = uicontrol(fig,'style','edit','string',1,...
    'units','normalized','position',[0.55 0.13 0.2 0.06],...
    'background',[0.8 0.8 0.8],'horizontal','left');
h_txt(2) = uicontrol(fig,'style','text',...
    'string',sprintf('(of %d)',vsm.groupings(1).no_hierarchies),...
    'units','normalized','position',[0.75 0.13 0.22 0.06],...
    'background',[0.8 0.8 0.8],'horizontal','left');

% define OK and Cancel buttons
uicontrol(fig,'style','push','string','O.K.',...
    'units','normalized','position',[0.125 0.02 0.3 0.07],...
    'callback','scatter(vsmatrix,202)');
uicontrol(fig,'style','push','string','Cancel',...
    'units','normalized','position',[0.575 0.02 0.3 0.07],...
    'callback','close(gcf)');

% initialize window to previos selection
set(h_lb,'value',ud.grp);
set(h_ed(1),'string',num2str(ud.h_col));
set(h_ed(2),'string',num2str(ud.h_cent));

% define userdata
ud = struct('h_ed',h_ed,'h_lb',h_lb,'h_txt',h_txt,'main_fig',ud.main_fig);
set(gcf,'userdata',ud);
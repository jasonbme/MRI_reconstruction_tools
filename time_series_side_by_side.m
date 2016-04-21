function time_series_side_by_side(time_series, varargin)
% function time_series_side_by_side(time_series, varargin)
arg.yoffset = 2*max(abs(col(time_series)));
arg.t = [];
arg = vararg_pair(arg, varargin);

[N1, N2] = size(time_series);
offsets = ones(N1, 1) * arg.yoffset*col(0:-1:-(N2 - 1))';
if isempty(arg.t)
        plot(offsets + time_series)
else
        plot(arg.t, offsets + time_series)
end
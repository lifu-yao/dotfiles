
-- shift + cmd + l -> screensaver
hs.hotkey.bind({'shift', 'cmd'}, 'l', function() hs.caffeinate.startScreensaver() end)

-- half of screen
hs.hotkey.bind({'ctrl','alt', 'cmd'}, 'left', function() hs.window.focusedWindow():moveToUnit({0, 0, 0.5, 1}) end)
hs.hotkey.bind({'ctrl','alt', 'cmd'}, 'right', function() hs.window.focusedWindow():moveToUnit({0.5, 0, 0.5, 1}) end)
hs.hotkey.bind({'ctrl','alt', 'cmd'}, 'up', function() hs.window.focusedWindow():moveToUnit({0, 0, 1, 0.5}) end)
hs.hotkey.bind({'ctrl','alt', 'cmd'}, 'down', function() hs.window.focusedWindow():moveToUnit({0, 0.5, 1, 0.5}) end)


-- full screen
hs.hotkey.bind({'ctrl', 'alt', 'cmd'}, 'f', function() hs.window.focusedWindow():moveToUnit({0, 0, 1, 1}) end)

-- center screen
hs.hotkey.bind({'ctrl', 'alt', 'cmd'}, 'c', function() hs.window.focusedWindow():centerOnScreen() end)

-- move between displays
-- hs.hotkey.bind({'ctrl', 'alt', 'cmd'}, 'right', function()
--	local win = hs.window.focusedWindow()
--	local next = win:screen():toEast()
--	if next then
--		win:moveToScreen(next, true)
--	end
-- end)
-- hs.hotkey.bind({'ctrl', 'alt', 'cmd'}, 'left', function()
--	local win = hs.window.focusedWindow()
--	local next = win:screen():toWest()
--	if next then
--		win:moveToScreen(next, true)
--	end
-- end)

-- window hints
hs.hotkey.bind({'ctrl', 'alt', 'cmd'}, 'h', hs.hints.windowHints)

-- grid gui
hs.grid.setMargins({w = 0, h = 0})
hs.hotkey.bind({'ctrl', 'alt', 'cmd'}, 'g', hs.grid.show)

-- open windows
local u = hs.geometry.unitrect

local MACBOOK_MONITOR = "Color LCD"
local LG_MONITOR = "LG HDR WQHD"
local windowLayoutMonitor = {
	{'iTerm2',nil,LG_MONITOR, u(0,0,1/3,1), nil, nil},
	{'Notion',nil, LG_MONITOR, u(0,0,1/3,1), nil, nil},
	{'Google Chrome', nil, LG_MONITOR, u(1/3,0,1/3,1), nil, nil},
	{'Kindle', nil, LG_MONITOR, u(1/3,0,1/3,1), nil, nil},
	{'WeChat',nil, LG_MONITOR, u(2/3,0,1/3,1), nil, nil},
	{'Mail',nil, LG_MONITOR, u(2/3,0,1/3,1), nil, nil},
}

hs.hotkey.bind({'cmd', 'alt', 'ctrl'}, 'E', function() hs.layout.apply(windowLayoutMonitor) end)


local windowLayoutFull = {
	{'iTerm2',nil,LG_MONITOR, u(0,0,1,1), nil, nil},
	{'Notion',nil, LG_MONITOR, u(0,0,1,1), nil, nil},
	{'Google Chrome', nil, LG_MONITOR, u(0,0,1,1), nil, nil},
	{'Kindle', nil, LG_MONITOR, u(0,0,1,1), nil, nil},
	{'WeChat',nil, LG_MONITOR, u(0,0,1,1), nil, nil},
	{'Mail',nil, LG_MONITOR, u(0,0,1,1), nil, nil},
}

hs.hotkey.bind({'cmd', 'alt', 'ctrl'}, 'J', function() hs.layout.apply(windowLayoutFull) end)















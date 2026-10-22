Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_video?download=true
inline.NumInlined: 254
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SDL_AtomicInt = type { i32 }
%struct.VideoBootStrap = type { ptr, ptr, ptr, ptr, i8 }
%struct.SDL_Rect = type { i32, i32, i32, i32 }
%struct.SDL_VideoDisplay = type { i32, ptr, i32, i32, ptr, %struct.SDL_DisplayMode, ptr, i32, i32, float, %struct.SDL_HDROutputProperties, i8, ptr, ptr, i32, ptr }
%struct.SDL_DisplayMode = type { i32, i32, i32, i32, float, float, i32, i32, ptr }
%struct.SDL_HDROutputProperties = type { float, float }
%struct.SDL_Point = type { i32, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%union.SDL_Event = type { %struct.SDL_MouseWheelEvent, [72 x i8] }
%struct.SDL_MouseWheelEvent = type { i32, i32, i64, i32, i32, float, float, i32, float, float, i32, i32 }
%struct.SDL_MessageBoxData = type { i32, ptr, ptr, ptr, i32, ptr, ptr }
%struct.SDL_MessageBoxButtonData = type { i32, i32, ptr }

@.str = private unnamed_addr constant [32 x i8] c"SDL.internal.window.texturedata\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Video subsystem has not been initialized\00", align 1
@SDL_GetNumVideoDrivers_REAL.num_drivers = internal unnamed_addr global i32 -1, align 4
@bootstrap = internal unnamed_addr constant [8 x ptr] [ptr @Wayland_preferred_bootstrap, ptr @X11_bootstrap, ptr @Wayland_bootstrap, ptr @KMSDRM_bootstrap, ptr @OFFSCREEN_bootstrap, ptr @DUMMY_bootstrap, ptr @DUMMY_evdev_bootstrap, ptr null], align 16
@deduped_bootstrap = internal unnamed_addr global [7 x ptr] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [26 x i8] c"Parameter '%s' is invalid\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@_this = internal unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"SDL_VIDEO_DRIVER\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"video\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"%s not available\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"No available video device\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"The video driver did not add any displays\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"SDL_VIDEO_SYNC_WINDOW_OPERATIONS\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"SDL_VIDEO_ALLOW_SCREENSAVER\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"SDL.display.HDR_enabled\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"Invalid display\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"rect\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"SDL.window.HDR_headroom\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"SDL.window.SDR_white_level\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"SDL.window.HDR_enabled\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"closest\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"Couldn't find any matching video modes\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"x11\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"point\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"Invalid window\00", align 1
@.str.22 = private unnamed_addr constant [48 x i8] c"sdl2-compat.window.preferred_fullscreen_display\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"Operation invalid on popup windows\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"Invalid fullscreen display mode\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"That operation is not supported\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"SDL.window.create.title\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"SDL.window.create.x\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"SDL.window.create.y\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"SDL.window.create.width\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"SDL.window.create.height\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"SDL.window.create.parent\00", align 1
@.str.32 = private unnamed_addr constant [44 x i8] c"SDL.window.create.external_graphics_context\00", align 1
@.str.33 = private unnamed_addr constant [43 x i8] c"Modal windows must specify a parent window\00", align 1
@.str.34 = private unnamed_addr constant [60 x i8] c"Tooltip and popup menu windows must specify a parent window\00", align 1
@.str.35 = private unnamed_addr constant [48 x i8] c"Conflicting window type flags specified: 0x%.8x\00", align 1
@.str.36 = private unnamed_addr constant [52 x i8] c"Conflicting window graphics flags specified: 0x%.8x\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"OpenGL\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"Vulkan\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"Metal\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"SDL.window.create.constrain_popup\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"SDL.window.create.flags\00", align 1
@.str.43 = private unnamed_addr constant [95 x i8] c"Popup windows must specify either the 'SDL_WINDOW_TOOLTIP' or the 'SDL_WINDOW_POPUP_MENU' flag\00", align 1
@.str.44 = private unnamed_addr constant [35 x i8] c"Conflicting window flags specified\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"Invalid window ID\00", align 1
@.str.46 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"icon\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"min_w\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"min_h\00", align 1
@.str.52 = private unnamed_addr constant [79 x i8] c"SDL_SetWindowMinimumSize(): Tried to set minimum size larger than maximum size\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"max_w\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"max_h\00", align 1
@.str.55 = private unnamed_addr constant [80 x i8] c"SDL_SetWindowMaximumSize(): Tried to set maximum size smaller than minimum size\00", align 1
@.str.56 = private unnamed_addr constant [68 x i8] c"A window without the 'SDL_WINDOW_RESIZABLE' flag can't be maximized\00", align 1
@.str.57 = private unnamed_addr constant [83 x i8] c"Window surface is invalid, please call SDL_GetWindowSurface() to get a new surface\00", align 1
@.str.58 = private unnamed_addr constant [45 x i8] c"Cannot set the parent of a window to itself.\00", align 1
@.str.59 = private unnamed_addr constant [92 x i8] c"Modal windows cannot change parents; call SDL_SetWindowModal() to clear modal status first.\00", align 1
@.str.60 = private unnamed_addr constant [104 x i8] c"Window must have a parent to enable the modal state; use SDL_SetWindowParent() to set the parent first.\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.62 = private unnamed_addr constant [39 x i8] c"SDL_VIDEO_MATCH_EXCLUSIVE_MODE_ON_MOVE\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"SDL.window.shape\00", align 1
@.str.64 = private unnamed_addr constant [30 x i8] c"OpenGL library already loaded\00", align 1
@.str.65 = private unnamed_addr constant [29 x i8] c"No GL driver has been loaded\00", align 1
@.str.66 = private unnamed_addr constant [55 x i8] c"No dynamic GL support in current SDL video driver (%s)\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"No EGL library has been loaded\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"glGetString\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"glGetStringi\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"glGetIntegerv\00", align 1
@.str.71 = private unnamed_addr constant [27 x i8] c"GL_ARB_ES3_2_compatibility\00", align 1
@.str.72 = private unnamed_addr constant [27 x i8] c"GL_ARB_ES3_1_compatibility\00", align 1
@.str.73 = private unnamed_addr constant [25 x i8] c"GL_ARB_ES3_compatibility\00", align 1
@.str.74 = private unnamed_addr constant [31 x i8] c"Unknown OpenGL context flag %d\00", align 1
@.str.75 = private unnamed_addr constant [34 x i8] c"Unknown OpenGL context profile %d\00", align 1
@.str.76 = private unnamed_addr constant [25 x i8] c"Unknown OpenGL attribute\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.78 = private unnamed_addr constant [18 x i8] c"glBindFramebuffer\00", align 1
@.str.79 = private unnamed_addr constant [38 x i8] c"glGetFramebufferAttachmentParameteriv\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"glGetError\00", align 1
@.str.81 = private unnamed_addr constant [30 x i8] c"OpenGL error: GL_INVALID_ENUM\00", align 1
@.str.82 = private unnamed_addr constant [31 x i8] c"OpenGL error: GL_INVALID_VALUE\00", align 1
@.str.83 = private unnamed_addr constant [19 x i8] c"OpenGL error: %08X\00", align 1
@.str.84 = private unnamed_addr constant [44 x i8] c"The specified window isn't an OpenGL window\00", align 1
@.str.85 = private unnamed_addr constant [34 x i8] c"SDL_OPENGL_FORCE_SRGB_FRAMEBUFFER\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"glEnable\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"glDisable\00", align 1
@.str.88 = private unnamed_addr constant [26 x i8] c"GL_EXT_sRGB_write_control\00", align 1
@.str.89 = private unnamed_addr constant [24 x i8] c"GL_EXT_framebuffer_sRGB\00", align 1
@.str.90 = private unnamed_addr constant [24 x i8] c"GL_ARB_framebuffer_sRGB\00", align 1
@.str.91 = private unnamed_addr constant [65 x i8] c"Use of OpenGL without a window is not supported on this platform\00", align 1
@.str.92 = private unnamed_addr constant [32 x i8] c"There is no current EGL display\00", align 1
@.str.93 = private unnamed_addr constant [40 x i8] c"No OpenGL context has been made current\00", align 1
@.str.94 = private unnamed_addr constant [43 x i8] c"Setting the swap interval is not supported\00", align 1
@.str.95 = private unnamed_addr constant [9 x i8] c"interval\00", align 1
@.str.96 = private unnamed_addr constant [16 x i8] c"no video driver\00", align 1
@.str.97 = private unnamed_addr constant [19 x i8] c"no current context\00", align 1
@.str.98 = private unnamed_addr constant [16 x i8] c"not implemented\00", align 1
@.str.99 = private unnamed_addr constant [47 x i8] c"The specified window has not been made current\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.101 = private unnamed_addr constant [19 x i8] c"SDL.textinput.type\00", align 1
@.str.102 = private unnamed_addr constant [29 x i8] c"SDL.textinput.capitalization\00", align 1
@.str.103 = private unnamed_addr constant [26 x i8] c"SDL.textinput.autocorrect\00", align 1
@.str.104 = private unnamed_addr constant [24 x i8] c"SDL.textinput.multiline\00", align 1
@.str.105 = private unnamed_addr constant [25 x i8] c"SDL_RETURN_KEY_HIDES_IME\00", align 1
@SDL_messagebox_count = internal global %struct.SDL_AtomicInt zeroinitializer, align 4
@.str.106 = private unnamed_addr constant [15 x i8] c"messageboxdata\00", align 1
@.str.107 = private unnamed_addr constant [26 x i8] c"Invalid number of buttons\00", align 1
@.str.108 = private unnamed_addr constant [28 x i8] c"No message system available\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.110 = private unnamed_addr constant [25 x i8] c"SDL_WINDOW_ALLOW_TOPMOST\00", align 1
@.str.111 = private unnamed_addr constant [51 x i8] c"Window must be created with SDL_WINDOW_TRANSPARENT\00", align 1
@.str.112 = private unnamed_addr constant [37 x i8] c"Vulkan loader library already loaded\00", align 1
@.str.113 = private unnamed_addr constant [33 x i8] c"No Vulkan loader has been loaded\00", align 1
@.str.114 = private unnamed_addr constant [9 x i8] c"instance\00", align 1
@.str.115 = private unnamed_addr constant [8 x i8] c"surface\00", align 1
@.str.116 = private unnamed_addr constant [30 x i8] c"failed to load Vulkan library\00", align 1
@.str.117 = private unnamed_addr constant [15 x i8] c"physicalDevice\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c"view\00", align 1
@.str.119 = private unnamed_addr constant [24 x i8] c"Metal is not supported.\00", align 1
@.str.120 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.122 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"crosshair\00", align 1
@.str.124 = private unnamed_addr constant [9 x i8] c"progress\00", align 1
@.str.125 = private unnamed_addr constant [10 x i8] c"nw-resize\00", align 1
@.str.126 = private unnamed_addr constant [12 x i8] c"nwse-resize\00", align 1
@.str.127 = private unnamed_addr constant [10 x i8] c"ne-resize\00", align 1
@.str.128 = private unnamed_addr constant [12 x i8] c"nesw-resize\00", align 1
@.str.129 = private unnamed_addr constant [11 x i8] c"col-resize\00", align 1
@.str.130 = private unnamed_addr constant [10 x i8] c"ew-resize\00", align 1
@.str.131 = private unnamed_addr constant [11 x i8] c"row-resize\00", align 1
@.str.132 = private unnamed_addr constant [10 x i8] c"ns-resize\00", align 1
@.str.133 = private unnamed_addr constant [11 x i8] c"all-scroll\00", align 1
@.str.134 = private unnamed_addr constant [12 x i8] c"not-allowed\00", align 1
@.str.135 = private unnamed_addr constant [8 x i8] c"pointer\00", align 1
@.str.136 = private unnamed_addr constant [9 x i8] c"n-resize\00", align 1
@.str.137 = private unnamed_addr constant [9 x i8] c"e-resize\00", align 1
@.str.138 = private unnamed_addr constant [10 x i8] c"se-resize\00", align 1
@.str.139 = private unnamed_addr constant [9 x i8] c"s-resize\00", align 1
@.str.140 = private unnamed_addr constant [10 x i8] c"sw-resize\00", align 1
@.str.141 = private unnamed_addr constant [9 x i8] c"w-resize\00", align 1
@Wayland_preferred_bootstrap = external global %struct.VideoBootStrap, align 8
@X11_bootstrap = external global %struct.VideoBootStrap, align 8
@Wayland_bootstrap = external global %struct.VideoBootStrap, align 8
@KMSDRM_bootstrap = external global %struct.VideoBootStrap, align 8
@OFFSCREEN_bootstrap = external global %struct.VideoBootStrap, align 8
@DUMMY_bootstrap = external global %struct.VideoBootStrap, align 8
@DUMMY_evdev_bootstrap = external global %struct.VideoBootStrap, align 8
@syncHint = internal unnamed_addr global i8 0, align 1
@.str.142 = private unnamed_addr constant [26 x i8] c"SDL_DISPLAY_USABLE_BOUNDS\00", align 1
@.str.143 = private unnamed_addr constant [12 x i8] c"%d,%d,%d,%d\00", align 1
@.str.144 = private unnamed_addr constant [27 x i8] c"Couldn't find any displays\00", align 1
@SDL_object_validation = external local_unnamed_addr global i8, align 1
@.str.145 = private unnamed_addr constant [32 x i8] c"SDL.window.create.always_on_top\00", align 1
@.str.146 = private unnamed_addr constant [29 x i8] c"SDL.window.create.borderless\00", align 1
@.str.147 = private unnamed_addr constant [28 x i8] c"SDL.window.create.focusable\00", align 1
@.str.148 = private unnamed_addr constant [29 x i8] c"SDL.window.create.fullscreen\00", align 1
@.str.149 = private unnamed_addr constant [25 x i8] c"SDL.window.create.hidden\00", align 1
@.str.150 = private unnamed_addr constant [37 x i8] c"SDL.window.create.high_pixel_density\00", align 1
@.str.151 = private unnamed_addr constant [28 x i8] c"SDL.window.create.maximized\00", align 1
@.str.152 = private unnamed_addr constant [23 x i8] c"SDL.window.create.menu\00", align 1
@.str.153 = private unnamed_addr constant [24 x i8] c"SDL.window.create.metal\00", align 1
@.str.154 = private unnamed_addr constant [28 x i8] c"SDL.window.create.minimized\00", align 1
@.str.155 = private unnamed_addr constant [24 x i8] c"SDL.window.create.modal\00", align 1
@.str.156 = private unnamed_addr constant [32 x i8] c"SDL.window.create.mouse_grabbed\00", align 1
@.str.157 = private unnamed_addr constant [25 x i8] c"SDL.window.create.opengl\00", align 1
@.str.158 = private unnamed_addr constant [28 x i8] c"SDL.window.create.resizable\00", align 1
@.str.159 = private unnamed_addr constant [30 x i8] c"SDL.window.create.transparent\00", align 1
@.str.160 = private unnamed_addr constant [26 x i8] c"SDL.window.create.tooltip\00", align 1
@.str.161 = private unnamed_addr constant [26 x i8] c"SDL.window.create.utility\00", align 1
@.str.162 = private unnamed_addr constant [25 x i8] c"SDL.window.create.vulkan\00", align 1
@SDL_WindowFlagProperties = internal unnamed_addr constant [18 x { ptr, i64, i8, [7 x i8] }] [{ ptr, i64, i8, [7 x i8] } { ptr @.str.145, i64 65536, i8 0, [7 x i8] zeroinitializer }, { ptr, i64, i8, [7 x i8] } { ptr @.str.146, i64 16, i8 0, [7 x i8] zeroinitializer }, { ptr, i64, i8, [7 x i8] } { ptr @.str.147, i64 2147483648, i8 1, [7 x i8] zeroinitializer }, { ptr, i64, i8, [7 x i8] } { ptr @.str.148, i64 1, i8 0, [7 x i8] zeroinitializer }, { ptr, i64, i8, [7 x i8] } { ptr @.str.149, i64 8, i8 0, [7 x i8] zeroinitializer }, { ptr, i64, i8, [7 x i8] } { ptr @.str.150, i64 8192, i8 0, [7 x i8] zeroinitializer }, { ptr, i64, i8, [7 x i8] } { ptr @.str.151, i64 128, i8 0, [7 x i8] zeroinitializer }, { ptr, i64, i8, [7 x i8] } { ptr @.str.152, i64 524288, i8 0, [7 x i8] zeroinitializer }, { ptr, i64, i8, [7 x i8] } { ptr @.str.153, i64 536870912, i8 0, [7 x i8] zeroinitializer }, { ptr, i64, i8, [7 x i8] } { ptr @.str.154, i64 64, i8 0, [7 x i8] zeroinitializer }, { ptr, i64, i8, [7 x i8] } { ptr @.str.155, i64 4096, i8 0, [7 x i8] zeroinitializer }, { ptr, i64, i8, [7 x i8] } { ptr @.str.156, i64 256, i8 0, [7 x i8] zeroinitializer }, { ptr, i64, i8, [7 x i8] } { ptr @.str.157, i64 2, i8 0, [7 x i8] zeroinitializer }, { ptr, i64, i8, [7 x i8] } { ptr @.str.158, i64 32, i8 0, [7 x i8] zeroinitializer }, { ptr, i64, i8, [7 x i8] } { ptr @.str.159, i64 1073741824, i8 0, [7 x i8] zeroinitializer }, { ptr, i64, i8, [7 x i8] } { ptr @.str.160, i64 262144, i8 0, [7 x i8] zeroinitializer }, { ptr, i64, i8, [7 x i8] } { ptr @.str.161, i64 131072, i8 0, [7 x i8] zeroinitializer }, { ptr, i64, i8, [7 x i8] } { ptr @.str.162, i64 268435456, i8 0, [7 x i8] zeroinitializer }], align 16
@.str.164 = private unnamed_addr constant [105 x i8] c"%s support is either not configured in SDL or not available in current SDL video driver (%s) or platform\00", align 1
@.str.165 = private unnamed_addr constant [41 x i8] c"Window framebuffer support not available\00", align 1
@.str.166 = private unnamed_addr constant [29 x i8] c"SDL_FRAMEBUFFER_ACCELERATION\00", align 1
@.str.167 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.168 = private unnamed_addr constant [9 x i8] c"software\00", align 1
@.str.169 = private unnamed_addr constant [36 x i8] c"/proc/sys/fs/binfmt_misc/WSLInterop\00", align 1
@.str.170 = private unnamed_addr constant [9 x i8] c"/run/WSL\00", align 1
@.str.171 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.172 = private unnamed_addr constant [18 x i8] c"SDL_RENDER_DRIVER\00", align 1
@.str.173 = private unnamed_addr constant [44 x i8] c"No hardware accelerated renderers available\00", align 1
@.str.174 = private unnamed_addr constant [29 x i8] c"SDL.renderer.texture_formats\00", align 1
@.str.175 = private unnamed_addr constant [23 x i8] c"No window texture data\00", align 1
@.str.176 = private unnamed_addr constant [33 x i8] c"SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS\00", align 1
@.str.177 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.178 = private unnamed_addr constant [55 x i8] c"No dynamic %s support in current SDL video driver (%s)\00", align 1
@.str.179 = private unnamed_addr constant [27 x i8] c"SDL_ENABLE_SCREEN_KEYBOARD\00", align 1
@.str.180 = private unnamed_addr constant [33 x i8] c"SDL_ENABLE_STEAM_SCREEN_KEYBOARD\00", align 1

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SetWindowTextureVSync(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %SDL_GetWindowProperties_REAL.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %SDL_ObjectValid.exit.thread5.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit.i, label %SDL_ObjectValid.exit.thread.i

SDL_ObjectValid.exit.i:                           ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %1, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.thread.i, label %SDL_ObjectValid.exit.thread5.i

SDL_ObjectValid.exit.thread5.i:                   ; preds = %SDL_ObjectValid.exit.i, %bb.c
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %SDL_GetWindowProperties_REAL.exit

SDL_ObjectValid.exit.thread.i:                    ; preds = %SDL_ObjectValid.exit.i, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %SDL_GetWindowProperties_REAL.exit

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread.i
  %i.j = tail call i32 @SDL_CreateProperties_REAL() #19 ; 2 uses
  store i32 %i.j, ptr %i.g, align 8
  br label %SDL_GetWindowProperties_REAL.exit

SDL_GetWindowProperties_REAL.exit:                ; preds = %bb.b, %SDL_ObjectValid.exit.thread5.i, %SDL_ObjectValid.exit.thread.i, %bb.e
  %.0.i = phi i32 [ 0, %bb.b ], [ 0, %SDL_ObjectValid.exit.thread5.i ], [ %i.j, %bb.e ], [ %i.h, %SDL_ObjectValid.exit.thread.i ]
  %i.k = tail call ptr @SDL_GetPointerProperty_REAL(i32 noundef %.0.i, ptr noundef nonnull @.str, ptr noundef null) #19 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %SDL_GetWindowProperties_REAL.exit
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not7 = icmp eq ptr %i.l, null
  br i1 %.not7, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call zeroext i1 @SDL_SetRenderVSync_REAL(ptr noundef nonnull %i.l, i32 noundef %2) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %SDL_GetWindowProperties_REAL.exit, %bb.g
  %.0 = phi i1 [ %i.m, %bb.g ], [ false, %SDL_GetWindowProperties_REAL.exit ], [ false, %bb.f ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @SDL_GetPointerProperty_REAL(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @SDL_GetWindowProperties_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread5, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread5

SDL_ObjectValid.exit.thread5:                     ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.f

SDL_ObjectValid.exit.thread:                      ; preds = %bb.d, %SDL_ObjectValid.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.j = tail call i32 @SDL_CreateProperties_REAL() #19 ; 2 uses
  store i32 %i.j, ptr %i.g, align 8
  br label %bb.f

bb.f:                                             ; preds = %SDL_ObjectValid.exit.thread, %bb.e, %SDL_ObjectValid.exit.thread5, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %SDL_ObjectValid.exit.thread5 ], [ %i.j, %bb.e ], [ %i.h, %SDL_ObjectValid.exit.thread ]
  ret i32 %.0
}

declare zeroext i1 @SDL_SetRenderVSync_REAL(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_UninitializedVideo() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19
  ret i1 %i.a
}

declare zeroext i1 @SDL_SetError_REAL(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 -2147483647, -2147483648) i32 @SDL_GetNumVideoDrivers_REAL() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @SDL_GetNumVideoDrivers_REAL.num_drivers, align 4 ; 2 uses
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %.loopexit.6, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.a
  store i32 1, ptr @SDL_GetNumVideoDrivers_REAL.num_drivers, align 4
  store ptr @Wayland_preferred_bootstrap, ptr @deduped_bootstrap, align 16
  %i.c = load ptr, ptr @X11_bootstrap, align 8
  %i.d = load ptr, ptr @Wayland_preferred_bootstrap, align 8
  %i.e = tail call i32 @SDL_strcmp_REAL(ptr noundef %i.c, ptr noundef %i.d) #19
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.2, label %.critedge.1

.critedge.1:                                      ; preds = %.lr.ph.1
  %.pre = load i32, ptr @SDL_GetNumVideoDrivers_REAL.num_drivers, align 4 ; 2 uses
  %i.g = add nsw i32 %.pre, 1
  store i32 %i.g, ptr @SDL_GetNumVideoDrivers_REAL.num_drivers, align 4
  %i.h = sext i32 %.pre to i64
  %i.i = getelementptr inbounds [8 x i8], ptr @deduped_bootstrap, i64 %i.h
  store ptr @X11_bootstrap, ptr %i.i, align 8
  br label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.critedge.1, %.lr.ph.1
  %i.j = load ptr, ptr @Wayland_bootstrap, align 8
  %i.k = load ptr, ptr @Wayland_preferred_bootstrap, align 8
  %i.l = tail call i32 @SDL_strcmp_REAL(ptr noundef %i.j, ptr noundef %i.k) #19
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.3, label %bb.b

bb.b:                                             ; preds = %.lr.ph.2
  %i.n = load ptr, ptr @Wayland_bootstrap, align 8
  %i.o = load ptr, ptr @X11_bootstrap, align 8
  %i.p = tail call i32 @SDL_strcmp_REAL(ptr noundef %i.n, ptr noundef %i.o) #19
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.3, label %.critedge.2

.critedge.2:                                      ; preds = %bb.b
  %i.r = load i32, ptr @SDL_GetNumVideoDrivers_REAL.num_drivers, align 4 ; 2 uses
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr @SDL_GetNumVideoDrivers_REAL.num_drivers, align 4
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds [8 x i8], ptr @deduped_bootstrap, i64 %i.t
  store ptr @Wayland_bootstrap, ptr %i.u, align 8
  br label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.critedge.2, %bb.b, %.lr.ph.2
  %i.v = load ptr, ptr @KMSDRM_bootstrap, align 8
  %i.w = load ptr, ptr @Wayland_preferred_bootstrap, align 8
  %i.x = tail call i32 @SDL_strcmp_REAL(ptr noundef %i.v, ptr noundef %i.w) #19
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %.lr.ph.4, label %bb.c

bb.c:                                             ; preds = %.lr.ph.3
  %i.z = load ptr, ptr @KMSDRM_bootstrap, align 8
  %i.aa = load ptr, ptr @X11_bootstrap, align 8
  %i.ab = tail call i32 @SDL_strcmp_REAL(ptr noundef %i.z, ptr noundef %i.aa) #19
  %i.ac = icmp eq i32 %i.ab, 0
end_hunk_0
begin_hunk_1_@SDL_GetWindowPixelFormat_REAL:bb.a
  br label %bb.h

SDL_ObjectValid.exit.thread:                      ; preds = %bb.d, %SDL_ObjectValid.exit
  %i.g = tail call i32 @SDL_GetDisplayForWindow_REAL(ptr noundef nonnull %0)
  %i.h = load ptr, ptr @_this, align 8            ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %SDL_GetCurrentDisplayMode_REAL.exit.thread, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %SDL_ObjectValid.exit.thread
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 808
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.i.i.i, label %SDL_GetCurrentDisplayMode_REAL.exit.thread

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 816
  %i.m = load ptr, ptr %i.l, align 8
  %wide.trip.count.i.i.i = zext nneg i32 %i.j to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.f ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i.i.i
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = load i32, ptr %i.o, align 8
  %i.q = icmp eq i32 %i.g, %i.p
  br i1 %i.q, label %SDL_GetCurrentDisplayMode_REAL.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %SDL_GetCurrentDisplayMode_REAL.exit.thread, label %bb.e, !llvm.loop !1

SDL_GetCurrentDisplayMode_REAL.exit.thread:       ; preds = %bb.f, %SDL_ObjectValid.exit.thread, %.preheader.i.i.i
  %.str.12.sink.i.i = phi ptr [ @.str.1, %SDL_ObjectValid.exit.thread ], [ @.str.12, %.preheader.i.i.i ], [ @.str.12, %bb.f ]
  %i.r = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull %.str.12.sink.i.i) #19 ; 0 uses
  br label %bb.h

SDL_GetCurrentDisplayMode_REAL.exit:              ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not6 = icmp eq ptr %i.t, null
  br i1 %.not6, label %bb.h, label %bb.g

bb.g:                                             ; preds = %SDL_GetCurrentDisplayMode_REAL.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4
  br label %bb.h

bb.h:                                             ; preds = %SDL_GetCurrentDisplayMode_REAL.exit.thread, %SDL_GetCurrentDisplayMode_REAL.exit, %bb.g, %SDL_ObjectValid.exit.thread9, %bb.b
  %.0 = phi i32 [ %i.v, %bb.g ], [ 0, %bb.b ], [ 0, %SDL_ObjectValid.exit.thread9 ], [ 0, %SDL_GetCurrentDisplayMode_REAL.exit ], [ 0, %SDL_GetCurrentDisplayMode_REAL.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_ToggleDragAndDropSupport() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8            ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  %i.c = load ptr, ptr %i.b, align 8
  %.not4 = icmp eq ptr %i.c, null
  br i1 %.not4, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call zeroext i1 @SDL_EventEnabled_REAL(i32 noundef 4096) #19
  br i1 %i.d, label %IsAcceptingDragAndDrop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call zeroext i1 @SDL_EventEnabled_REAL(i32 noundef 4097) #19
  br label %IsAcceptingDragAndDrop.exit

IsAcceptingDragAndDrop.exit:                      ; preds = %bb.c, %bb.d
  %.0.i = phi i1 [ true, %bb.c ], [ %i.e, %bb.d ]
  %i.f = load ptr, ptr @_this, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 840
  %.06 = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not57 = icmp eq ptr %.06, null
  br i1 %.not57, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %IsAcceptingDragAndDrop.exit, %.lr.ph
  %.08 = phi ptr [ %.0, %.lr.ph ], [ %.06, %IsAcceptingDragAndDrop.exit ] ; 2 uses
  %i.h = load ptr, ptr @_this, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 768
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull %.08, i1 noundef zeroext %.0.i) #19
  %i.k = getelementptr inbounds nuw i8, ptr %.08, i64 416
  %.0 = load ptr, ptr %i.k, align 8               ; 2 uses
  %.not5 = icmp eq ptr %.0, null
  br i1 %.not5, label %.loopexit, label %.lr.ph, !llvm.loop !47

.loopexit:                                        ; preds = %.lr.ph, %IsAcceptingDragAndDrop.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @SDL_GetWindows_REAL(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = load ptr, ptr @_this, align 8            ; 2 uses
  %.not31 = icmp eq ptr %i.a, null
  br i1 %.not31, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 840
  %.02135 = load ptr, ptr %i.c, align 8           ; 2 uses
  %.not3236 = icmp eq ptr %.02135, null
  br i1 %.not3236, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.02138 = phi ptr [ %.021, %.lr.ph ], [ %.02135, %bb.e ]
  %.037 = phi i32 [ %i.d, %.lr.ph ], [ 0, %bb.e ]
  %i.d = add nuw nsw i32 %.037, 1                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.02138, i64 416
  %.021 = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not32 = icmp eq ptr %.021, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !48

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.0.lcssa = phi i32 [ 0, %bb.e ], [ %i.d, %.lr.ph ] ; 5 uses
  %i.f = add nuw nsw i32 %.0.lcssa, 1
  %i.g = zext nneg i32 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 3
  %i.i = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.h) #19 ; 6 uses
  %.not33 = icmp eq ptr %i.i, null
  br i1 %.not33, label %bb.h, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.j = load ptr, ptr @_this, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 840
  %.12239 = load ptr, ptr %i.k, align 8           ; 3 uses
  %.not3440 = icmp eq ptr %.12239, null
  br i1 %.not3440, label %._crit_edge45, label %.lr.ph44.preheader

.lr.ph44.preheader:                               ; preds = %bb.f
  %i.l = zext i32 %.0.lcssa to i64
  store ptr %.12239, ptr %i.i, align 8
  %i.m = icmp eq i32 %.0.lcssa, 1
  br i1 %i.m, label %._crit_edge45, label %.lr.ph59

.lr.ph59:                                         ; preds = %.lr.ph44.preheader, %.lr.ph44
  %indvars.iv.next58 = phi i64 [ %indvars.iv.next, %.lr.ph44 ], [ 1, %.lr.ph44.preheader ] ; 3 uses
  %.1224257 = phi ptr [ %.122, %.lr.ph44 ], [ %.12239, %.lr.ph44.preheader ]
  %i.n = getelementptr inbounds nuw i8, ptr %.1224257, i64 416
  %.122 = load ptr, ptr %i.n, align 8             ; 3 uses
  %.not34 = icmp eq ptr %.122, null
  br i1 %.not34, label %._crit_edge45.loopexit.split.loop.exit54, label %.lr.ph44, !llvm.loop !49

.lr.ph44:                                         ; preds = %.lr.ph59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next58, 1 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next58
  store ptr %.122, ptr %i.o, align 8
  %i.p = icmp eq i64 %indvars.iv.next, %i.l
  br i1 %i.p, label %._crit_edge45, label %.lr.ph59, !llvm.loop !49

._crit_edge45.loopexit.split.loop.exit54:         ; preds = %.lr.ph59
  %i.q = trunc nuw nsw i64 %indvars.iv.next58 to i32
  br label %._crit_edge45

._crit_edge45:                                    ; preds = %.lr.ph44, %.lr.ph44.preheader, %._crit_edge45.loopexit.split.loop.exit54, %bb.f
  %.1 = phi i32 [ 0, %bb.f ], [ %i.q, %._crit_edge45.loopexit.split.loop.exit54 ], [ %.0.lcssa, %.lr.ph44.preheader ], [ %.0.lcssa, %.lr.ph44 ] ; 2 uses
  %i.r = sext i32 %.1 to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.r
  store ptr null, ptr %i.s, align 8
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge45
  store i32 %.1, ptr %0, align 4
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g, %._crit_edge45, %bb.d
  %.124 = phi ptr [ null, %bb.d ], [ null, %._crit_edge ], [ %i.i, %bb.g ], [ %i.i, %._crit_edge45 ]
  ret ptr %.124
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @SDL_CreateWindowWithProperties_REAL(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.SDL_Rect, align 4           ; 10 uses
  %2 = alloca %struct.SDL_Rect, align 16          ; 4 uses
  %i.a = tail call ptr @SDL_GetStringProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.26, ptr noundef null) #19 ; 2 uses
  %i.b = tail call i64 @SDL_GetNumberProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.27, i64 noundef 536805376) #19
  %i.c = tail call i64 @SDL_GetNumberProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.28, i64 noundef 536805376) #19
  %i.d = tail call i64 @SDL_GetNumberProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.29, i64 noundef 0) #19
  %i.e = tail call i64 @SDL_GetNumberProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.30, i64 noundef 0) #19
  %i.f = tail call ptr @SDL_GetPointerProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.31, ptr noundef null) #19 ; 5 uses
  %i.g = tail call i64 @SDL_GetNumberProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.42, i64 noundef 0) #19
  br label %3

3:                                                ; preds = %16, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %16 ] ; 2 uses
  %.016.i = phi i64 [ %i.g, %bb.a ], [ %.1.i, %16 ] ; 3 uses
  %4 = getelementptr inbounds nuw [24 x i8], ptr @SDL_WindowFlagProperties, i64 %indvars.iv.i ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %6 = load i8, ptr %5, align 8, !range !10, !noundef !11
  %7 = trunc nuw i8 %6 to i1
  %8 = load ptr, ptr %4, align 8                  ; 2 uses
  br i1 %7, label %9, label %11

9:                                                ; preds = %3
  %10 = tail call zeroext i1 @SDL_GetBooleanProperty_REAL(i32 noundef %0, ptr noundef %8, i1 noundef zeroext true) #19
  br i1 %10, label %16, label %.sink.split.i

11:                                               ; preds = %3
  %12 = tail call zeroext i1 @SDL_GetBooleanProperty_REAL(i32 noundef %0, ptr noundef %8, i1 noundef zeroext false) #19
  br i1 %12, label %.sink.split.i, label %16

.sink.split.i:                                    ; preds = %11, %9
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %14 = load i64, ptr %13, align 8
  %15 = or i64 %14, %.016.i
  br label %16

16:                                               ; preds = %.sink.split.i, %11, %9
  %.1.i = phi i64 [ %.016.i, %9 ], [ %.016.i, %11 ], [ %15, %.sink.split.i ] ; 5 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 18
  br i1 %exitcond.not.i, label %SDL_GetWindowFlagProperties.exit, label %3, !llvm.loop !50

SDL_GetWindowFlagProperties.exit:                 ; preds = %16
  %.fr = freeze i64 %i.b
  %17 = trunc i64 %.fr to i32                     ; 4 uses
  %18 = trunc i64 %i.c to i32                     ; 6 uses
  %19 = trunc i64 %i.d to i32
  %20 = trunc i64 %i.e to i32
  %21 = tail call zeroext i1 @SDL_GetBooleanProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.32, i1 noundef zeroext false) #19
  %22 = zext i1 %21 to i8
  %23 = load ptr, ptr @_this, align 8
  %.not = icmp eq ptr %23, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %SDL_GetWindowFlagProperties.exit
  %i.h = tail call zeroext i1 @SDL_Init_REAL(i32 noundef 32) #19
  %i.i = load ptr, ptr @_this, align 8
  %.not155 = icmp ne ptr %i.i, null
  %or.cond185.not = select i1 %i.h, i1 %.not155, i1 false
  br i1 %or.cond185.not, label %bb.c, label %SDL_GL_LoadLibrary_REAL.exit.thread

bb.c:                                             ; preds = %bb.b, %SDL_GetWindowFlagProperties.exit
  %i.j = and i64 %.1.i, 4096
  %.not156 = icmp eq i64 %i.j, 0
  br i1 %.not156, label %SDL_ObjectValid.exit188.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i186 = icmp eq ptr %i.f, null
  br i1 %.not.i186, label %SDL_ObjectValid.exit188.thread197, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %SDL_ObjectValid.exit188, label %SDL_ObjectValid.exit188.thread

SDL_ObjectValid.exit188:                          ; preds = %bb.e
  %i.m = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %i.f, i32 noundef 1) #19
  br i1 %i.m, label %SDL_ObjectValid.exit188.thread, label %SDL_ObjectValid.exit188.thread197

SDL_ObjectValid.exit188.thread197:                ; preds = %bb.d, %SDL_ObjectValid.exit188
  %i.n = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.33) #19 ; 0 uses
  br label %SDL_GL_LoadLibrary_REAL.exit.thread

SDL_ObjectValid.exit188.thread:                   ; preds = %bb.e, %SDL_ObjectValid.exit188, %bb.c
  %i.o = and i64 %.1.i, 786432
  %.not157 = icmp eq i64 %i.o, 0
  br i1 %.not157, label %bb.j, label %bb.f

bb.f:                                             ; preds = %SDL_ObjectValid.exit188.thread
  %i.p = load ptr, ptr @_this, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 916
  %i.r = load i32, ptr %i.q, align 4
  %i.s = and i32 %i.r, 2
  %.not158 = icmp eq i32 %i.s, 0
  br i1 %.not158, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.25) #19 ; 0 uses
  br label %SDL_GL_LoadLibrary_REAL.exit.thread

bb.h:                                             ; preds = %bb.f
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread200, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.i
  %i.w = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %i.f, i32 noundef 1) #19
  br i1 %i.w, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread200

SDL_ObjectValid.exit.thread200:                   ; preds = %bb.h, %SDL_ObjectValid.exit
  %i.x = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.34) #19 ; 0 uses
  br label %SDL_GL_LoadLibrary_REAL.exit.thread

SDL_ObjectValid.exit.thread:                      ; preds = %bb.i, %SDL_ObjectValid.exit
  %i.y = and i64 %.1.i, -210
  br label %bb.j

bb.j:                                             ; preds = %SDL_ObjectValid.exit.thread, %SDL_ObjectValid.exit188.thread
  %.0134 = phi i64 [ %i.y, %SDL_ObjectValid.exit.thread ], [ %.1.i, %SDL_ObjectValid.exit188.thread ] ; 8 uses
  %i.z = and i64 %.0134, 921600                   ; 2 uses
  %i.aa = tail call range(i64 0, 5) i64 @llvm.ctpop.i64(i64 %i.z)
  %.not159 = icmp samesign ult i64 %i.aa, 2
  br i1 %.not159, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = trunc nuw nsw i64 %i.z to i32
  %i.ac = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.35, i32 noundef %i.ab) #19 ; 0 uses
  br label %SDL_GL_LoadLibrary_REAL.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr @_this, align 8           ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not160 = icmp eq ptr %i.af, null
  br i1 %.not160, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void %i.af(ptr noundef nonnull %i.ad) #19
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %19, i32 1) ; 5 uses
  %spec.store.select2 = tail call i32 @llvm.smax.i32(i32 %20, i32 1) ; 5 uses
  %i.ag = and i32 %17, -65536                     ; 4 uses
  %i.ah = icmp eq i32 %i.ag, 536805376
  switch i32 %i.ag, label %switch.early.test [
    i32 805240832, label %.sink.split
    i32 536805376, label %.sink.split
  ]

switch.early.test:                                ; preds = %bb.n
  %i.ai = and i32 %18, -65536
  switch i32 %i.ai, label %bb.ad [
    i32 805240832, label %bb.o
    i32 536805376, label %bb.o
  ]

bb.o:                                             ; preds = %switch.early.test, %switch.early.test
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  switch i32 %i.ag, label %bb.q [
    i32 805240832, label %bb.p
    i32 536805376, label %bb.p
  ]

.sink.split:                                      ; preds = %bb.n, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.o, %bb.o
  %i.aj = and i32 %17, 65535                      ; 2 uses
  %.not161 = icmp eq i32 %i.aj, 0
  br i1 %.not161, label %bb.q, label %.thread203

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.ak = and i32 %18, -65536
  switch i32 %i.ak, label %.thread [
    i32 536805376, label %bb.r
    i32 805240832, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q
  %i.al = and i32 %18, 65535                      ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.thread, label %.thread203

.thread203:                                       ; preds = %bb.p, %bb.r
  %.0131205 = phi i32 [ %i.al, %bb.r ], [ %i.aj, %bb.p ] ; 2 uses
  %i.an = load ptr, ptr @_this, align 8           ; 3 uses
  %.not.i189 = icmp eq ptr %i.an, null
  br i1 %.not.i189, label %.thread.sink.split, label %.preheader.i

.preheader.i:                                     ; preds = %.thread203
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 808
  %i.ap = load i32, ptr %i.ao, align 8            ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.lr.ph.i, label %.thread.sink.split

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 816
  %i.as = load ptr, ptr %i.ar, align 8
  %wide.trip.count.i = zext nneg i32 %i.ap to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %.lr.ph.i
  %indvars.iv.i190 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i191, %bb.t ] ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i190
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = icmp eq i32 %.0131205, %i.av
  br i1 %i.aw, label %SDL_GetPrimaryDisplay_REAL.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next.i191 = add nuw nsw i64 %indvars.iv.i190, 1 ; 2 uses
  %exitcond.not.i192 = icmp eq i64 %indvars.iv.next.i191, %wide.trip.count.i
  br i1 %exitcond.not.i192, label %.thread.sink.split, label %bb.s, !llvm.loop !1

.thread.sink.split:                               ; preds = %bb.t, %.preheader.i, %.thread203
  %.str.12.sink = phi ptr [ @.str.1, %.thread203 ], [ @.str.12, %.preheader.i ], [ @.str.12, %bb.t ]
  %i.ax = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull %.str.12.sink) #19 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.q, %bb.r
  %i.ay = load ptr, ptr @_this, align 8           ; 3 uses
  %.not.i193 = icmp eq ptr %i.ay, null
  br i1 %.not.i193, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 808
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %.thread
  %i.bc = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %SDL_GetPrimaryDisplay_REAL.exit

bb.w:                                             ; preds = %bb.u
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 816
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = load i32, ptr %i.bf, align 8
  br label %SDL_GetPrimaryDisplay_REAL.exit

SDL_GetPrimaryDisplay_REAL.exit:                  ; preds = %bb.s, %bb.w, %bb.v
  %.1132 = phi i32 [ %i.bg, %bb.w ], [ 0, %bb.v ], [ %.0131205, %bb.s ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.bh = call zeroext i1 @SDL_GetDisplayUsableBounds_REAL(i32 noundef %.1132, ptr noundef nonnull %1) ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = icmp sgt i32 %spec.store.select, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = icmp sgt i32 %spec.store.select2, %i.bm
  %or.cond183 = select i1 %i.bk, i1 true, i1 %i.bn
  br i1 %or.cond183, label %bb.x, label %bb.y

bb.x:                                             ; preds = %SDL_GetPrimaryDisplay_REAL.exit
  %i.bo = call zeroext i1 @SDL_GetDisplayBounds_REAL(i32 noundef %.1132, ptr noundef nonnull %1) ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %SDL_GetPrimaryDisplay_REAL.exit, %bb.x
  switch i32 %i.ag, label %bb.aa [
    i32 805240832, label %bb.z
    i32 536805376, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %i.bp = load i32, ptr %1, align 4
  %i.bq = load i32, ptr %i.bi, align 4
  %i.br = sub nsw i32 %i.bq, %spec.store.select
  %i.bs = sdiv i32 %i.br, 2
  %i.bt = add nsw i32 %i.bs, %i.bp
  %i.bu = zext i1 %i.ah to i8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %.0139 = phi i32 [ %i.bt, %bb.z ], [ %17, %bb.y ]
  %.1129 = phi i8 [ %i.bu, %bb.z ], [ 0, %bb.y ]
  %i.bv = and i32 %18, -65536                     ; 2 uses
  switch i32 %i.bv, label %bb.ac [
    i32 805240832, label %bb.ab
    i32 536805376, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  %i.bw = icmp eq i32 %i.bv, 536805376
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = load i32, ptr %i.bl, align 4
  %i.ca = sub nsw i32 %i.bz, %spec.store.select2
  %i.cb = sdiv i32 %i.ca, 2
  %i.cc = add nsw i32 %i.cb, %i.by
  %i.cd = zext i1 %i.bw to i8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %.0137 = phi i32 [ %i.cc, %bb.ab ], [ %18, %bb.aa ]
  %.1127 = phi i8 [ %i.cd, %bb.ab ], [ 0, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.ad

bb.ad:                                            ; preds = %switch.early.test, %bb.ac
  %.1140 = phi i32 [ %.0139, %bb.ac ], [ %17, %switch.early.test ] ; 3 uses
  %.1138 = phi i32 [ %.0137, %bb.ac ], [ %18, %switch.early.test ] ; 3 uses
  %.2133 = phi i32 [ %.1132, %bb.ac ], [ 0, %switch.early.test ]
  %.2130 = phi i8 [ %.1129, %bb.ac ], [ 0, %switch.early.test ]
  %.2 = phi i8 [ %.1127, %bb.ac ], [ 0, %switch.early.test ]
  %i.ce = and i64 %.0134, 805306370               ; 2 uses
  %i.cf = call range(i64 0, 4) i64 @llvm.ctpop.i64(i64 %i.ce)
  %.not163 = icmp samesign ult i64 %i.cf, 2
  br i1 %.not163, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cg = trunc nuw nsw i64 %i.ce to i32
  %i.ch = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.36, i32 noundef %i.cg) #19 ; 0 uses
  br label %SDL_GL_LoadLibrary_REAL.exit.thread

bb.af:                                            ; preds = %bb.ad
  %i.ci = and i64 %.0134, 2
  %.not164 = icmp eq i64 %i.ci, 0
  br i1 %.not164, label %bb.an, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cj = load ptr, ptr @_this, align 8           ; 7 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 440
  %i.cl = load ptr, ptr %i.ck, align 8
  %.not165 = icmp eq ptr %i.cl, null
  br i1 %.not165, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cm = load ptr, ptr %i.cj, align 8
  %i.cn = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.37, ptr noundef %i.cm) #19 ; 0 uses
  br label %SDL_GL_LoadLibrary_REAL.exit.thread

bb.ai:                                            ; preds = %bb.ag
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 1040
  %i.cp = load i32, ptr %i.co, align 8            ; 2 uses
  %.not10.i = icmp eq i32 %i.cp, 0
  br i1 %.not10.i, label %bb.aj, label %SDL_GL_LoadLibrary_REAL.exit.thread208

bb.aj:                                            ; preds = %bb.ai
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 416
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  %.not11.i = icmp eq ptr %i.cr, null
  br i1 %.not11.i, label %SDL_GL_LoadLibrary_REAL.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cs = call zeroext i1 %i.cr(ptr noundef nonnull %i.cj, ptr noundef null) #19, !inline_history !15
  %.pre17.i = load ptr, ptr @_this, align 8       ; 4 uses
  br i1 %i.cs, label %.SDL_GL_LoadLibrary_REAL.exit.thread208_crit_edge, label %bb.al

.SDL_GL_LoadLibrary_REAL.exit.thread208_crit_edge: ; preds = %bb.ak
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre17.i, i64 1040
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %SDL_GL_LoadLibrary_REAL.exit.thread208

SDL_GL_LoadLibrary_REAL.exit.thread208:           ; preds = %.SDL_GL_LoadLibrary_REAL.exit.thread208_crit_edge, %bb.ai
  %i.ct = phi i32 [ %.pre, %.SDL_GL_LoadLibrary_REAL.exit.thread208_crit_edge ], [ %i.cp, %bb.ai ]
  %i.cu = phi ptr [ %.pre17.i, %.SDL_GL_LoadLibrary_REAL.exit.thread208_crit_edge ], [ %i.cj, %bb.ai ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 1040
  %i.cw = add nsw i32 %i.ct, 1
  store i32 %i.cw, ptr %i.cv, align 8
  br label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.cx = getelementptr inbounds nuw i8, ptr %.pre17.i, i64 432
  %i.cy = load ptr, ptr %i.cx, align 8            ; 2 uses
  %.not14.i = icmp eq ptr %i.cy, null
  br i1 %.not14.i, label %SDL_GL_LoadLibrary_REAL.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void %i.cy(ptr noundef nonnull %.pre17.i) #19, !inline_history !15
  br label %SDL_GL_LoadLibrary_REAL.exit.thread

SDL_GL_LoadLibrary_REAL.exit:                     ; preds = %bb.aj
  %i.cz = load ptr, ptr %i.cj, align 8
  %i.da = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.37, ptr noundef %i.cz) #19
  br i1 %i.da, label %bb.an, label %SDL_GL_LoadLibrary_REAL.exit.thread

bb.an:                                            ; preds = %SDL_GL_LoadLibrary_REAL.exit.thread208, %SDL_GL_LoadLibrary_REAL.exit, %bb.af
  %i.db = and i64 %.0134, 268435456
  %.not166 = icmp eq i64 %i.db, 0
  br i1 %.not166, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dc = load ptr, ptr @_this, align 8           ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 528
  %i.de = load ptr, ptr %i.dd, align 8
  %.not167 = icmp eq ptr %i.de, null
  br i1 %.not167, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.df = load ptr, ptr %i.dc, align 8
  %i.dg = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.38, ptr noundef %i.df) #19 ; 0 uses
  br label %SDL_GL_LoadLibrary_REAL.exit.thread

bb.aq:                                            ; preds = %bb.ao
  %i.dh = call zeroext i1 @SDL_Vulkan_LoadLibrary_REAL(ptr noundef null)
  br i1 %i.dh, label %bb.ar, label %SDL_GL_LoadLibrary_REAL.exit.thread

bb.ar:                                            ; preds = %bb.aq, %bb.an
  %i.di = and i64 %.0134, 536870912
  %.not168 = icmp eq i64 %i.di, 0
  br i1 %.not168, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dj = load ptr, ptr @_this, align 8           ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 552
  %i.dl = load ptr, ptr %i.dk, align 8
  %.not169 = icmp eq ptr %i.dl, null
  br i1 %.not169, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.dm = load ptr, ptr %i.dj, align 8
  %i.dn = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.39, ptr noundef %i.dm) #19 ; 0 uses
  br label %SDL_GL_LoadLibrary_REAL.exit.thread

bb.au:                                            ; preds = %bb.as, %bb.ar
  %i.do = call noalias dereferenceable_or_null(456) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 456) #21 ; 39 uses
  %.not170 = icmp eq ptr %i.do, null
  br i1 %.not170, label %SDL_GL_LoadLibrary_REAL.exit.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @SDL_SetObjectValid(ptr noundef nonnull %i.do, i32 noundef 1, i1 noundef zeroext true) #19
  %i.dp = call i32 @SDL_GetNextObjectID() #19
  store i32 %i.dp, ptr %i.do, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 24 ; 2 uses
  store i32 %.1140, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 108
  store i32 %.1140, ptr %i.dr, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 124
  store i32 %.1140, ptr %i.ds, align 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 28
  store i32 %.1138, ptr %i.dt, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 112
  store i32 %.1138, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 128
  store i32 %.1138, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  store i32 %spec.store.select, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.do, i64 116
  store i32 %spec.store.select, ptr %i.dx, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 132
  store i32 %spec.store.select, ptr %i.dy, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.do, i64 36
  store i32 %spec.store.select2, ptr %i.dz, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.do, i64 120
  store i32 %spec.store.select2, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.do, i64 136
  store i32 %spec.store.select2, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.do, i64 157
  store i8 %.2130, ptr %i.ec, align 1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.do, i64 158
  store i8 %.2, ptr %i.ed, align 2
  %i.ee = getelementptr inbounds nuw i8, ptr %i.do, i64 104
  store i32 %.2133, ptr %i.ee, align 8
  %i.ef = call ptr @SDL_GetVideoDisplayForWindow(ptr noundef nonnull %i.do) ; 3 uses
  %.not171 = icmp eq ptr %i.ef, null              ; 2 uses
  br i1 %.not171, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 92
  call void @SDL_SetWindowHDRProperties(ptr noundef nonnull %i.do, ptr noundef nonnull %i.eg, i1 noundef zeroext false)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.eh = and i64 %.0134, 1
  %.not172 = icmp eq i64 %i.eh, 0
  br i1 %.not172, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ei = load ptr, ptr @_this, align 8           ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 916
  %.val = load i32, ptr %i.ej, align 4
  %i.ek = and i32 %.val, 8
  %.not211 = icmp eq i32 %i.ek, 0
  br i1 %.not211, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  br i1 %.not171, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.el = load i32, ptr %i.ef, align 8
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.em = call i32 @SDL_GetPrimaryDisplay_REAL()
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.en = phi i32 [ %i.el, %bb.ba ], [ %i.em, %bb.bb ]
  %i.eo = call zeroext i1 @SDL_GetDisplayBounds_REAL(i32 noundef %i.en, ptr noundef nonnull %2) ; 0 uses
  %i.ep = load <4 x i32>, ptr %2, align 16
  store <4 x i32> %i.ep, ptr %i.dq, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.do, i64 80 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8
  %i.es = or i64 %i.er, 1
  store i64 %i.es, ptr %i.eq, align 8
  %i.et = or i64 %.0134, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %.pre212 = load ptr, ptr @_this, align 8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ay
  %i.eu = phi ptr [ %.pre212, %bb.bc ], [ %i.ei, %bb.ay ]
  %.2136 = phi i64 [ %i.et, %bb.bc ], [ %.0134, %bb.ay ] ; 2 uses
  %i.ev = and i64 %.2136, 4029620338
  %i.ew = or disjoint i64 %i.ev, 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.do, i64 72 ; 5 uses
  store i64 %i.ew, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.do, i64 88
  store float 1.000000e+00, ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.do, i64 248
  store float 1.000000e+00, ptr %i.ez, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 840
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.do, i64 416
  store ptr %i.fb, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.do, i64 271
  store i8 0, ptr %i.fd, align 1
  %i.fe = call i32 @SDL_GetDisplayForWindow_REAL(ptr noundef nonnull %i.do)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.do, i64 100
  store i32 %i.fe, ptr %i.ff, align 4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.do, i64 92
  store i8 %22, ptr %i.fg, align 4
  %i.fh = call zeroext i1 @SDL_GetBooleanProperty_REAL(i32 noundef %0, ptr noundef nonnull @.str.40, i1 noundef zeroext true) #19
  %i.fi = getelementptr inbounds nuw i8, ptr %i.do, i64 270
  %i.fj = zext i1 %i.fh to i8
  store i8 %i.fj, ptr %i.fi, align 2
  %i.fk = load ptr, ptr @_this, align 8           ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 392
  %i.fm = load ptr, ptr %i.fl, align 8
  %.not173 = icmp eq ptr %i.fm, null
  br i1 %.not173, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.fn = load i64, ptr %i.ex, align 8
  %i.fo = and i64 %i.fn, -2097153
  store i64 %i.fo, ptr %i.ex, align 8
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 840 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8            ; 2 uses
  %.not174 = icmp eq ptr %i.fq, null
  br i1 %.not174, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 408
  store ptr %i.do, ptr %i.fr, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  store ptr %i.do, ptr %i.fp, align 8
  call fastcc void @SDL_UpdateWindowHierarchy(ptr noundef nonnull %i.do, ptr noundef %i.f)
  %i.fs = load ptr, ptr @_this, align 8           ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 72
  %i.fu = load ptr, ptr %i.ft, align 8            ; 2 uses
  %.not175 = icmp eq ptr %i.fu, null
  br i1 %.not175, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fv = call zeroext i1 %i.fu(ptr noundef nonnull %i.fs, ptr noundef nonnull %i.do, i32 noundef %0) #19
  br i1 %i.fv, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fw = call ptr @SDL_GetError_REAL() #19
  %i.fx = call noalias ptr @SDL_strdup_REAL(ptr noundef %i.fw) #19 ; 2 uses
  call void @SDL_DestroyWindow_REAL(ptr noundef nonnull %i.do)
  %i.fy = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.41, ptr noundef %i.fx) #19 ; 0 uses
  call void @SDL_free_REAL(ptr noundef %i.fx) #19
  br label %SDL_GL_LoadLibrary_REAL.exit.thread

bb.bk:                                            ; preds = %bb.bi, %bb.bh
  %i.fz = load i64, ptr %i.ex, align 8            ; 2 uses
  %i.ga = and i64 %i.fz, 64
  %.not176 = icmp eq i64 %i.ga, 0
  br i1 %.not176, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gb = and i64 %i.fz, -65
  store i64 %i.gb, ptr %i.ex, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.not177 = icmp eq ptr %i.a, null
  br i1 %.not177, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gc = call zeroext i1 @SDL_SetWindowTitle_REAL(ptr noundef nonnull %i.do, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  call fastcc void @SDL_FinishWindowCreation(ptr noundef nonnull %i.do, i64 noundef %.2136)
  call void @SDL_CheckWindowPixelSizeChanged(ptr noundef nonnull %i.do)
  %i.gd = call zeroext i1 @SDL_ClearError_REAL() #19 ; 0 uses
  br label %SDL_GL_LoadLibrary_REAL.exit.thread

SDL_GL_LoadLibrary_REAL.exit.thread:              ; preds = %bb.al, %bb.am, %bb.bj, %bb.bo, %bb.au, %bb.aq, %SDL_GL_LoadLibrary_REAL.exit, %bb.b, %bb.at, %bb.ap, %bb.ah, %bb.ae, %bb.k, %SDL_ObjectValid.exit.thread200, %bb.g, %SDL_ObjectValid.exit188.thread197
  %.1 = phi ptr [ null, %bb.k ], [ null, %bb.ae ], [ null, %bb.au ], [ null, %bb.aq ], [ null, %bb.at ], [ null, %SDL_GL_LoadLibrary_REAL.exit ], [ null, %bb.ap ], [ null, %bb.bj ], [ null, %bb.ah ], [ null, %SDL_ObjectValid.exit.thread200 ], [ null, %bb.g ], [ null, %SDL_ObjectValid.exit188.thread197 ], [ null, %bb.b ], [ %i.do, %bb.bo ], [ null, %bb.am ], [ null, %bb.al ]
  ret ptr %.1
}

declare ptr @SDL_GetStringProperty_REAL(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @SDL_GetNumberProperty_REAL(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_GetBooleanProperty_REAL(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare zeroext i1 @SDL_Init_REAL(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_GL_LoadLibrary_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8            ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1040
  %i.d = load i32, ptr %i.c, align 8
  %.not10 = icmp eq i32 %i.d, 0
  br i1 %.not10, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not12 = icmp eq ptr %0, null
  br i1 %.not12, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1048
  %i.f = tail call i32 @SDL_strcmp_REAL(ptr noundef nonnull %0, ptr noundef nonnull %i.e) #19
  %.not13 = icmp eq i32 %i.f, 0
  br i1 %.not13, label %..thread_crit_edge, label %bb.f

..thread_crit_edge:                               ; preds = %bb.e
  %.pre = load ptr, ptr @_this, align 8
  br label %.thread

bb.f:                                             ; preds = %bb.e
  %i.g = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.64) #19
  br label %bb.l

bb.g:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not11 = icmp eq ptr %i.i, null
  br i1 %.not11, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.37, ptr noundef %i.j) #19
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.l = tail call zeroext i1 %i.i(ptr noundef nonnull %i.a, ptr noundef %0) #19
  %.pre17 = load ptr, ptr @_this, align 8         ; 3 uses
  br i1 %i.l, label %.thread, label %bb.j

.thread:                                          ; preds = %..thread_crit_edge, %bb.d, %bb.i
  %i.m = phi ptr [ %.pre, %..thread_crit_edge ], [ %i.a, %bb.d ], [ %.pre17, %bb.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1040 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 8
  br label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %.pre17, i64 432
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not14 = icmp eq ptr %i.r, null
  br i1 %.not14, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void %i.r(ptr noundef nonnull %.pre17) #19
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k, %bb.j, %bb.h, %bb.f, %bb.b
  %.05 = phi i1 [ %i.g, %bb.f ], [ %i.b, %bb.b ], [ %i.k, %bb.h ], [ false, %bb.j ], [ false, %bb.k ], [ true, %.thread ]
  ret i1 %.05
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_Vulkan_LoadLibrary_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8            ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1392
  %i.d = load i32, ptr %i.c, align 8
  %.not9 = icmp eq i32 %i.d, 0
  br i1 %.not9, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not11 = icmp eq ptr %0, null
  br i1 %.not11, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1396
  %i.f = tail call i32 @SDL_strcmp_REAL(ptr noundef nonnull %0, ptr noundef nonnull %i.e) #19
  %.not12 = icmp eq i32 %i.f, 0
  br i1 %.not12, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.112) #19
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 504
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.i, null
  br i1 %.not10, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.38, ptr noundef %i.j) #19
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.l = tail call zeroext i1 %i.i(ptr noundef nonnull %i.a, ptr noundef %0) #19
  br i1 %i.l, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.d, %bb.e, %bb.i
  %i.m = load ptr, ptr @_this, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1392 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread, %bb.h, %bb.f, %bb.b
  %.05 = phi i1 [ %i.g, %bb.f ], [ %i.b, %bb.b ], [ %i.k, %bb.h ], [ true, %.thread ], [ false, %bb.i ]
  ret i1 %.05
}

; Function Attrs: allocsize(0,1)
declare noalias ptr @SDL_calloc_REAL(i64 noundef, i64 noundef) local_unnamed_addr #9

declare void @SDL_SetObjectValid(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @SDL_UpdateWindowHierarchy(ptr noundef %0, ptr noundef %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not23 = icmp eq ptr %i.d, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 440
  %.pre = load ptr, ptr %.phi.trans.insert, align 8 ; 3 uses
  br i1 %.not23, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 440
  store ptr %.pre, ptr %i.e, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.c
  %.not24 = icmp eq ptr %.pre, null
  %i.f = load ptr, ptr %i.c, align 8              ; 2 uses
  br i1 %.not24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.g = getelementptr inbounds nuw i8, ptr %.pre, i64 448
  store ptr %i.f, ptr %i.g, align 8
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 432
  store ptr %i.f, ptr %i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %.not25 = icmp eq ptr %1, null
  br i1 %.not25, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %1, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr %i.k, ptr %i.l, align 8
  %.not26 = icmp eq ptr %i.k, null
  br i1 %.not26, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 440
  store ptr %0, ptr %i.m, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr %0, ptr %i.j, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  ret void
}

declare ptr @SDL_GetError_REAL() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @SDL_DestroyWindow_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.be

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread73, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread73

SDL_ObjectValid.exit.thread73:                    ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.be

SDL_ObjectValid.exit.thread:                      ; preds = %bb.d, %SDL_ObjectValid.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 271
  store i8 1, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not5375 = icmp eq ptr %i.i, null
  br i1 %.not5375, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %SDL_ObjectValid.exit.thread, %.lr.ph
  %i.j = phi ptr [ %i.k, %.lr.ph ], [ %i.i, %SDL_ObjectValid.exit.thread ]
  tail call void @SDL_DestroyWindow_REAL(ptr noundef nonnull %i.j)
  %i.k = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not53 = icmp eq ptr %i.k, null
  br i1 %.not53, label %._crit_edge, label %.lr.ph, !llvm.loop !51

._crit_edge:                                      ; preds = %.lr.ph, %SDL_ObjectValid.exit.thread
  %i.l = tail call zeroext i1 @SDL_SendWindowEvent(ptr noundef nonnull %0, i32 noundef 537, i32 noundef 0, i32 noundef 0) #19 ; 0 uses
  %i.m = load ptr, ptr @_this, align 8
  %.not.i65 = icmp eq ptr %i.m, null
  br i1 %.not.i65, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.n = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %SDL_DestroyWindowSurface_REAL.exit

bb.f:                                             ; preds = %._crit_edge
  %i.o = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %SDL_ObjectValid.exit.i, label %SDL_ObjectValid.exit.thread.i

SDL_ObjectValid.exit.i:                           ; preds = %bb.f
  %i.q = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.q, label %SDL_ObjectValid.exit.thread.i, label %SDL_ObjectValid.exit.thread13.i

SDL_ObjectValid.exit.thread13.i:                  ; preds = %SDL_ObjectValid.exit.i
  %i.r = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %SDL_DestroyWindowSurface_REAL.exit

SDL_ObjectValid.exit.thread.i:                    ; preds = %SDL_ObjectValid.exit.i, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not10.i = icmp eq ptr %i.t, null
  br i1 %.not10.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %SDL_ObjectValid.exit.thread.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = and i32 %i.v, -2
  store i32 %i.w, ptr %i.u, align 8
  %i.x = load ptr, ptr %i.s, align 8
  tail call void @SDL_DestroySurface_REAL(ptr noundef %i.x) #19
  store ptr null, ptr %i.s, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 0, ptr %i.y, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %SDL_ObjectValid.exit.thread.i
  %i.z = load ptr, ptr @_this, align 8            ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 792
  %i.ab = load i8, ptr %i.aa, align 8, !range !10, !noundef !11
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.i, label %SDL_DestroyWindowSurface_REAL.exit

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 344
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not11.i = icmp eq ptr %i.ae, null
  br i1 %.not11.i, label %SDL_DestroyWindowSurface_REAL.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void %i.ae(ptr noundef nonnull %i.z, ptr noundef nonnull %0) #19, !inline_history !16
  br label %SDL_DestroyWindowSurface_REAL.exit

SDL_DestroyWindowSurface_REAL.exit:               ; preds = %bb.e, %SDL_ObjectValid.exit.thread13.i, %bb.h, %bb.i, %bb.j
  %i.af = tail call ptr @SDL_GetRenderer_REAL(ptr noundef nonnull %0) #19 ; 2 uses
  %.not54 = icmp eq ptr %i.af, null
  br i1 %.not54, label %bb.l, label %bb.k

bb.k:                                             ; preds = %SDL_DestroyWindowSurface_REAL.exit
  tail call void @SDL_DestroyRendererWithoutFreeing(ptr noundef nonnull %i.af) #19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %SDL_DestroyWindowSurface_REAL.exit
  %i.ag = tail call zeroext i1 @SDL_UpdateFullscreenMode(ptr noundef nonnull %0, i32 noundef 0, i1 noundef zeroext true) ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = and i64 %i.ai, 2048
  %.not55 = icmp eq i64 %i.aj, 0
  br i1 %.not55, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ak = tail call zeroext i1 @SDL_HideWindow_REAL(ptr noundef nonnull %0) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.am = load i32, ptr %i.al, align 4
  tail call void @SDL_DestroyProperties_REAL(i32 noundef %i.am) #19
  tail call void @SDL_DestroyWindowTexture(ptr poison, ptr noundef nonnull %0)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ao = load i32, ptr %i.an, align 8
  tail call void @SDL_DestroyProperties_REAL(i32 noundef %i.ao) #19
  %i.ap = load ptr, ptr @_this, align 8           ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 176
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not56 = icmp eq ptr %i.ar, null
  br i1 %.not56, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = load i64, ptr %i.ah, align 8
  %i.at = and i64 %i.as, 4096
  %.not57 = icmp eq i64 %i.at, 0
  br i1 %.not57, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = tail call zeroext i1 %i.ar(ptr noundef nonnull %i.ap, ptr noundef nonnull %0, i1 noundef zeroext false) #19 ; 0 uses
  %.pre = load ptr, ptr @_this, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.av = phi ptr [ %.pre, %bb.p ], [ %i.ap, %bb.o ], [ %i.ap, %bb.n ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 808 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8            ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph78, label %._crit_edge79

.lr.ph78:                                         ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 816 ; 2 uses
  %.pre82 = load ptr, ptr %i.az, align 8
  br label %bb.r

._crit_edge79:                                    ; preds = %bb.t, %bb.q
  %i.ba = tail call ptr @SDL_GetKeyboardFocus_REAL() #19
  %i.bb = icmp eq ptr %i.ba, %0
  br i1 %i.bb, label %bb.u, label %bb.v

bb.r:                                             ; preds = %.lr.ph78, %bb.t
  %i.bc = phi i32 [ %i.ax, %.lr.ph78 ], [ %i.bj, %bb.t ]
  %i.bd = phi ptr [ %.pre82, %.lr.ph78 ], [ %i.bk, %bb.t ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph78 ], [ %indvars.iv.next, %bb.t ] ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 104 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = icmp eq ptr %i.bh, %0
  br i1 %i.bi, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store ptr null, ptr %i.bg, align 8
  %.pre81 = load ptr, ptr %i.az, align 8
  %.pre83 = load i32, ptr %i.aw, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.bj = phi i32 [ %i.bc, %bb.r ], [ %.pre83, %bb.s ] ; 2 uses
  %i.bk = phi ptr [ %i.bd, %bb.r ], [ %.pre81, %bb.s ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bl = sext i32 %i.bj to i64
  %i.bm = icmp slt i64 %indvars.iv.next, %i.bl
  br i1 %i.bm, label %bb.r, label %._crit_edge79, !llvm.loop !52

bb.u:                                             ; preds = %._crit_edge79
  %i.bn = tail call zeroext i1 @SDL_SetKeyboardFocus(ptr noundef null) #19 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge79
  %i.bo = load i64, ptr %i.ah, align 8
  %i.bp = and i64 %i.bo, 16384
  %.not58 = icmp eq i64 %i.bp, 0
  br i1 %.not58, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = tail call zeroext i1 @SDL_UpdateMouseCapture(i1 noundef zeroext true) #19 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.br = tail call ptr @SDL_GetMouseFocus_REAL() #19
  %i.bs = icmp eq ptr %i.br, %0
  br i1 %i.bs, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void @SDL_SetMouseFocus(ptr noundef null) #19
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bt = load i64, ptr %i.ah, align 8
  %i.bu = and i64 %i.bt, 2
  %.not59 = icmp eq i64 %i.bu, 0
  %.pre85 = load ptr, ptr @_this, align 8         ; 3 uses
  br i1 %.not59, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bv = getelementptr inbounds nuw i8, ptr %.pre85, i64 1344
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = icmp eq ptr %i.bw, %0
  br i1 %i.bx, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.by = tail call zeroext i1 @SDL_GL_MakeCurrent_REAL(ptr noundef nonnull %0, ptr noundef null) ; 0 uses
  %.pre84 = load ptr, ptr @_this, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.z
  %i.bz = phi ptr [ %.pre85, %bb.aa ], [ %.pre84, %bb.ab ], [ %.pre85, %bb.z ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 304
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %.not60 = icmp eq ptr %i.cb, null
  br i1 %.not60, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void %i.cb(ptr noundef nonnull %i.bz, ptr noundef nonnull %0) #19
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cc = load i64, ptr %i.ah, align 8
  %i.cd = and i64 %i.cc, 2
  %.not61 = icmp eq i64 %i.cd, 0
  br i1 %.not61, label %SDL_GL_UnloadLibrary_REAL.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ce = load ptr, ptr @_this, align 8           ; 4 uses
  %.not.i67 = icmp eq ptr %i.ce, null
  br i1 %.not.i67, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cf = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %SDL_GL_UnloadLibrary_REAL.exit

bb.ah:                                            ; preds = %bb.af
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 1040 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8            ; 3 uses
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %bb.ai, label %SDL_GL_UnloadLibrary_REAL.exit

bb.ai:                                            ; preds = %bb.ah
  %i.cj = add nsw i32 %i.ch, -1
  store i32 %i.cj, ptr %i.cg, align 8
  %.not3.i = icmp eq i32 %i.ch, 1
  br i1 %.not3.i, label %bb.aj, label %SDL_GL_UnloadLibrary_REAL.exit

bb.aj:                                            ; preds = %bb.ai
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 432
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %.not4.i = icmp eq ptr %i.cl, null
  br i1 %.not4.i, label %SDL_GL_UnloadLibrary_REAL.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void %i.cl(ptr noundef nonnull %i.ce) #19, !inline_history !17
  br label %SDL_GL_UnloadLibrary_REAL.exit

SDL_GL_UnloadLibrary_REAL.exit:                   ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.ae
  %i.cm = load i64, ptr %i.ah, align 8
  %i.cn = and i64 %i.cm, 268435456
  %.not62 = icmp eq i64 %i.cn, 0
  br i1 %.not62, label %SDL_Vulkan_UnloadLibrary_REAL.exit, label %bb.al

bb.al:                                            ; preds = %SDL_GL_UnloadLibrary_REAL.exit
  %i.co = load ptr, ptr @_this, align 8           ; 4 uses
  %.not.i68 = icmp eq ptr %i.co, null
  br i1 %.not.i68, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.cp = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %SDL_Vulkan_UnloadLibrary_REAL.exit

bb.an:                                            ; preds = %bb.al
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 1392 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8            ; 3 uses
  %i.cs = icmp sgt i32 %i.cr, 0
  br i1 %i.cs, label %bb.ao, label %SDL_Vulkan_UnloadLibrary_REAL.exit

bb.ao:                                            ; preds = %bb.an
  %i.ct = add nsw i32 %i.cr, -1
  store i32 %i.ct, ptr %i.cq, align 8
  %.not3.i69 = icmp eq i32 %i.cr, 1
  br i1 %.not3.i69, label %bb.ap, label %SDL_Vulkan_UnloadLibrary_REAL.exit

bb.ap:                                            ; preds = %bb.ao
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 512
  %i.cv = load ptr, ptr %i.cu, align 8            ; 2 uses
  %.not4.i70 = icmp eq ptr %i.cv, null
  br i1 %.not4.i70, label %SDL_Vulkan_UnloadLibrary_REAL.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void %i.cv(ptr noundef nonnull %i.co) #19, !inline_history !18
  br label %SDL_Vulkan_UnloadLibrary_REAL.exit

SDL_Vulkan_UnloadLibrary_REAL.exit:               ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %SDL_GL_UnloadLibrary_REAL.exit
  %i.cw = load ptr, ptr @_this, align 8           ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 848 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = icmp eq ptr %i.cy, %0
  br i1 %i.cz, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %SDL_Vulkan_UnloadLibrary_REAL.exit
  store ptr null, ptr %i.cx, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %SDL_Vulkan_UnloadLibrary_REAL.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 1344 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = icmp eq ptr %i.db, %0
  br i1 %i.dc, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store ptr null, ptr %i.da, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 800
  %i.de = tail call zeroext i1 @SDL_CompareAndSwapAtomicPointer_REAL(ptr noundef nonnull %i.dd, ptr noundef nonnull %0, ptr noundef null) #19 ; 0 uses
  tail call void @SDL_SetObjectValid(ptr noundef nonnull %0, i32 noundef 1, i1 noundef zeroext false) #19
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.dg) #19
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  tail call void @SDL_DestroySurface_REAL(ptr noundef %i.di) #19
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.dk = load ptr, ptr %i.dj, align 8
  %.not.i71 = icmp eq ptr %i.dk, null
  br i1 %.not.i71, label %SDL_UpdateWindowHierarchy.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8            ; 2 uses
  %.not23.i = icmp eq ptr %i.dm, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 440
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8 ; 3 uses
  br i1 %.not23.i, label %._crit_edge.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 440
  store ptr %.pre.i, ptr %i.dn, align 8
  %.pre86 = load ptr, ptr %i.dl, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.aw, %bb.av
  %i.do = phi ptr [ %.pre86, %bb.aw ], [ null, %bb.av ] ; 2 uses
  %.not24.i = icmp eq ptr %.pre.i, null
  br i1 %.not24.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.pre.i, i64 448
  store ptr %i.do, ptr %i.dp, align 8
  br label %bb.az

bb.ay:                                            ; preds = %._crit_edge.i
  %i.dq = load ptr, ptr %i.dj, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 432
  store ptr %i.do, ptr %i.dr, align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  store ptr null, ptr %i.dj, align 8
  br label %SDL_UpdateWindowHierarchy.exit

SDL_UpdateWindowHierarchy.exit:                   ; preds = %bb.au, %bb.az
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8            ; 2 uses
  %.not63 = icmp eq ptr %i.dt, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 408
  %.pre87 = load ptr, ptr %.phi.trans.insert, align 8 ; 3 uses
  br i1 %.not63, label %SDL_UpdateWindowHierarchy.exit._crit_edge, label %bb.ba

bb.ba:                                            ; preds = %SDL_UpdateWindowHierarchy.exit
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 408
  store ptr %.pre87, ptr %i.du, align 8
  br label %SDL_UpdateWindowHierarchy.exit._crit_edge

SDL_UpdateWindowHierarchy.exit._crit_edge:        ; preds = %SDL_UpdateWindowHierarchy.exit, %bb.ba
  %.not64 = icmp eq ptr %.pre87, null
  %i.dv = load ptr, ptr %i.ds, align 8            ; 2 uses
  br i1 %.not64, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %SDL_UpdateWindowHierarchy.exit._crit_edge
  %i.dw = getelementptr inbounds nuw i8, ptr %.pre87, i64 416
  store ptr %i.dv, ptr %i.dw, align 8
  br label %bb.bd

bb.bc:                                            ; preds = %SDL_UpdateWindowHierarchy.exit._crit_edge
  %i.dx = load ptr, ptr @_this, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 840
  store ptr %i.dv, ptr %i.dy, align 8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ea = load ptr, ptr %i.dz, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.ea) #19
  tail call void @SDL_free_REAL(ptr noundef nonnull %0) #19
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %SDL_ObjectValid.exit.thread73, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_SetWindowTitle_REAL(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread21, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread21

SDL_ObjectValid.exit.thread21:                    ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.k

SDL_ObjectValid.exit.thread:                      ; preds = %bb.d, %SDL_ObjectValid.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 786432
  %.not16 = icmp eq i64 %i.i, 0
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.j = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.23) #19 ; 0 uses
  br label %bb.k

bb.f:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp eq ptr %1, %i.l
  br i1 %i.m, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not17 = icmp eq ptr %1, null
  %spec.store.select = select i1 %.not17, ptr @.str.46, ptr %1 ; 2 uses
  %.not18 = icmp eq ptr %i.l, null
  br i1 %.not18, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call i32 @SDL_strcmp_REAL(ptr noundef nonnull %spec.store.select, ptr noundef nonnull %i.l) #19
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.k, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %.pre = load ptr, ptr %i.k, align 8
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.g
  %i.p = phi ptr [ %.pre, %._crit_edge ], [ null, %bb.g ]
  tail call void @SDL_free_REAL(ptr noundef %i.p) #19
  %i.q = tail call noalias ptr @SDL_strdup_REAL(ptr noundef nonnull %spec.store.select) #19
  store ptr %i.q, ptr %i.k, align 8
  %i.r = load ptr, ptr @_this, align 8            ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not19 = icmp eq ptr %i.t, null
  br i1 %.not19, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void %i.t(ptr noundef nonnull %i.r, ptr noundef nonnull %0) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h, %bb.f, %bb.e, %SDL_ObjectValid.exit.thread21, %bb.b
  %.0 = phi i1 [ false, %bb.e ], [ false, %bb.b ], [ true, %bb.f ], [ true, %bb.h ], [ false, %SDL_ObjectValid.exit.thread21 ], [ true, %bb.j ], [ true, %bb.i ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @SDL_FinishWindowCreation(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %PrepareDragAndDropSupport.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 @SDL_EventEnabled_REAL(i32 noundef 4096) #19
  br i1 %i.d, label %IsAcceptingDragAndDrop.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call zeroext i1 @SDL_EventEnabled_REAL(i32 noundef 4097) #19
  br label %IsAcceptingDragAndDrop.exit.i

IsAcceptingDragAndDrop.exit.i:                    ; preds = %bb.c, %bb.b
  %.0.i.i = phi i1 [ true, %bb.b ], [ %i.e, %bb.c ]
  tail call void %i.c(ptr noundef %0, i1 noundef zeroext %.0.i.i) #19, !inline_history !53
  br label %PrepareDragAndDropSupport.exit

PrepareDragAndDropSupport.exit:                   ; preds = %bb.a, %IsAcceptingDragAndDrop.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, 2048
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %PrepareDragAndDropSupport.exit
  tail call fastcc void @ApplyWindowFlags(ptr noundef nonnull %0, i64 noundef %1)
  %i.i = and i64 %1, 8
  %.not8 = icmp eq i64 %i.i, 0
  br i1 %.not8, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call zeroext i1 @SDL_ShowWindow_REAL(ptr noundef nonnull %0) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %PrepareDragAndDropSupport.exit
  %i.k = load i64, ptr %i.f, align 8              ; 2 uses
  %i.l = and i64 %i.k, 786432
  %.not9 = icmp eq i64 %i.l, 0
  br i1 %.not9, label %bb.g, label %SDL_SetWindowProgressValue_REAL.exit

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr @_this, align 8
  %.not.i10 = icmp eq ptr %i.m, null
  br i1 %.not.i10, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %SDL_SetWindowProgressState_REAL.exit

bb.i:                                             ; preds = %bb.g
  %i.o = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %SDL_ObjectValid.exit.i, label %SDL_ObjectValid.exit.thread.i

SDL_ObjectValid.exit.i:                           ; preds = %bb.i
  %i.q = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.q, label %SDL_ObjectValid.exit.i.SDL_ObjectValid.exit.thread.i_crit_edge, label %SDL_ObjectValid.exit.thread13.i

SDL_ObjectValid.exit.i.SDL_ObjectValid.exit.thread.i_crit_edge: ; preds = %SDL_ObjectValid.exit.i
  %.pre = load i64, ptr %i.f, align 8
  br label %SDL_ObjectValid.exit.thread.i

SDL_ObjectValid.exit.thread13.i:                  ; preds = %SDL_ObjectValid.exit.i
  %i.r = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %SDL_SetWindowProgressState_REAL.exit

SDL_ObjectValid.exit.thread.i:                    ; preds = %SDL_ObjectValid.exit.i.SDL_ObjectValid.exit.thread.i_crit_edge, %bb.i
  %i.s = phi i64 [ %.pre, %SDL_ObjectValid.exit.i.SDL_ObjectValid.exit.thread.i_crit_edge ], [ %i.k, %bb.i ]
  %i.t = and i64 %i.s, 786432
  %.not10.i = icmp eq i64 %i.t, 0
  br i1 %.not10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %SDL_ObjectValid.exit.thread.i
  %i.u = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.23) #19 ; 0 uses
  br label %SDL_SetWindowProgressState_REAL.exit

bb.k:                                             ; preds = %SDL_ObjectValid.exit.thread.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i32 0, ptr %i.v, align 8
  %i.w = load ptr, ptr @_this, align 8            ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 376
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not11.i = icmp eq ptr %i.y, null
  br i1 %.not11.i, label %SDL_SetWindowProgressState_REAL.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = tail call zeroext i1 %i.y(ptr noundef nonnull %i.w, ptr noundef nonnull %0) #19, !inline_history !54 ; 0 uses
  br label %SDL_SetWindowProgressState_REAL.exit

SDL_SetWindowProgressState_REAL.exit:             ; preds = %bb.h, %SDL_ObjectValid.exit.thread13.i, %bb.j, %bb.l
  %.pr = load ptr, ptr @_this, align 8
  %.not.i11 = icmp eq ptr %.pr, null
  br i1 %.not.i11, label %bb.m, label %SDL_SetWindowProgressState_REAL.exit.thread

bb.m:                                             ; preds = %SDL_SetWindowProgressState_REAL.exit
  %i.aa = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %SDL_SetWindowProgressValue_REAL.exit

SDL_SetWindowProgressState_REAL.exit.thread:      ; preds = %bb.k, %SDL_SetWindowProgressState_REAL.exit
  %i.ab = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %SDL_ObjectValid.exit.i16, label %SDL_ObjectValid.exit.thread.i13

SDL_ObjectValid.exit.i16:                         ; preds = %SDL_SetWindowProgressState_REAL.exit.thread
  %i.ad = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.ad, label %SDL_ObjectValid.exit.thread.i13, label %SDL_ObjectValid.exit.thread14.i

SDL_ObjectValid.exit.thread14.i:                  ; preds = %SDL_ObjectValid.exit.i16
  %i.ae = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %SDL_SetWindowProgressValue_REAL.exit

SDL_ObjectValid.exit.thread.i13:                  ; preds = %SDL_ObjectValid.exit.i16, %SDL_SetWindowProgressState_REAL.exit.thread
  %i.af = load i64, ptr %i.f, align 8
  %i.ag = and i64 %i.af, 786432
  %.not11.i14 = icmp eq i64 %i.ag, 0
  br i1 %.not11.i14, label %bb.o, label %bb.n

bb.n:                                             ; preds = %SDL_ObjectValid.exit.thread.i13
  %i.ah = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.23) #19 ; 0 uses
  br label %SDL_SetWindowProgressValue_REAL.exit

bb.o:                                             ; preds = %SDL_ObjectValid.exit.thread.i13
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 372
  store float 0.000000e+00, ptr %i.ai, align 4
  %i.aj = load ptr, ptr @_this, align 8           ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 376
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not12.i = icmp eq ptr %i.al, null
  br i1 %.not12.i, label %SDL_SetWindowProgressValue_REAL.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = tail call zeroext i1 %i.al(ptr noundef nonnull %i.aj, ptr noundef nonnull %0) #19, !inline_history !55 ; 0 uses
  br label %SDL_SetWindowProgressValue_REAL.exit

SDL_SetWindowProgressValue_REAL.exit:             ; preds = %bb.p, %bb.n, %SDL_ObjectValid.exit.thread14.i, %bb.m, %bb.o, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_CheckWindowPixelSizeChanged(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 0, ptr %i.b, align 4
  %i.c = call zeroext i1 @SDL_GetWindowSizeInPixels_REAL(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.d = load i32, ptr %i.a, align 4
  %i.e = load i32, ptr %i.b, align 4
  %i.f = call zeroext i1 @SDL_SendWindowEvent(ptr noundef %0, i32 noundef 519, i32 noundef %i.d, i32 noundef %i.e) #19 ; 0 uses
  %i.g = load ptr, ptr @_this, align 8            ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call float %i.i(ptr noundef nonnull %i.g, ptr noundef %0) #19, !inline_history !3
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.k = call float @SDL_GetWindowPixelDensity_REAL(ptr noundef %0)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.m = load i32, ptr %i.l, align 4
  %i.n = load ptr, ptr @_this, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %SDL_GetVideoDisplay.exit.thread.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 808
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %SDL_GetVideoDisplay.exit.thread.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 816
  %i.s = load ptr, ptr %i.r, align 8
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.p to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i.i.i.i
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = icmp eq i32 %i.m, %i.v
  br i1 %i.w, label %SDL_GetVideoDisplay.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %SDL_GetVideoDisplay.exit.thread.i.i, label %bb.d, !llvm.loop !1

SDL_GetVideoDisplay.exit.thread.i.i:              ; preds = %bb.e, %.preheader.i.i.i.i, %bb.c
  %.str.12.sink.i.i.i = phi ptr [ @.str.1, %bb.c ], [ @.str.12, %.preheader.i.i.i.i ], [ @.str.12, %bb.e ]
  %i.x = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull %.str.12.sink.i.i.i) #19 ; 0 uses
  br label %SDL_GetDisplayContentScale_REAL.exit.i

SDL_GetVideoDisplay.exit.i.i:                     ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.z = load float, ptr %i.y, align 8
  br label %SDL_GetDisplayContentScale_REAL.exit.i

SDL_GetDisplayContentScale_REAL.exit.i:           ; preds = %SDL_GetVideoDisplay.exit.i.i, %SDL_GetVideoDisplay.exit.thread.i.i
  %.0.i.i = phi float [ %i.z, %SDL_GetVideoDisplay.exit.i.i ], [ 0.000000e+00, %SDL_GetVideoDisplay.exit.thread.i.i ]
  %i.aa = fmul float %i.k, %.0.i.i
  br label %bb.f

bb.f:                                             ; preds = %SDL_GetDisplayContentScale_REAL.exit.i, %bb.b
  %.0.i = phi float [ %i.j, %bb.b ], [ %i.aa, %SDL_GetDisplayContentScale_REAL.exit.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ac = load float, ptr %i.ab, align 8
  %i.ad = fcmp une float %.0.i, %i.ac
  br i1 %i.ad, label %bb.g, label %SDL_CheckWindowDisplayScaleChanged.exit

bb.g:                                             ; preds = %bb.f
  store float %.0.i, ptr %i.ab, align 8
  %i.ae = call zeroext i1 @SDL_SendWindowEvent(ptr noundef nonnull %0, i32 noundef 532, i32 noundef 0, i32 noundef 0) #19 ; 0 uses
  br label %SDL_CheckWindowDisplayScaleChanged.exit

SDL_CheckWindowDisplayScaleChanged.exit:          ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

declare zeroext i1 @SDL_ClearError_REAL() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden noundef ptr @SDL_CreateWindow_REAL(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @SDL_CreateProperties_REAL() #19 ; 6 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1
  %.not12 = icmp eq i8 %i.b, 0
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @SDL_SetStringProperty_REAL(i32 noundef %i.a, ptr noundef nonnull @.str.26, ptr noundef nonnull %0) #19 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.d = sext i32 %1 to i64
  %i.e = tail call zeroext i1 @SDL_SetNumberProperty_REAL(i32 noundef %i.a, ptr noundef nonnull @.str.29, i64 noundef %i.d) #19 ; 0 uses
  %i.f = sext i32 %2 to i64
  %i.g = tail call zeroext i1 @SDL_SetNumberProperty_REAL(i32 noundef %i.a, ptr noundef nonnull @.str.30, i64 noundef %i.f) #19 ; 0 uses
  %i.h = tail call zeroext i1 @SDL_SetNumberProperty_REAL(i32 noundef %i.a, ptr noundef nonnull @.str.42, i64 noundef %3) #19 ; 0 uses
  %i.i = tail call ptr @SDL_CreateWindowWithProperties_REAL(i32 noundef %i.a)
  tail call void @SDL_DestroyProperties_REAL(i32 noundef %i.a) #19
  ret ptr %i.i
}

declare zeroext i1 @SDL_SetStringProperty_REAL(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden noundef ptr @SDL_CreatePopupWindow_REAL(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @SDL_CreateProperties_REAL() #19 ; 8 uses
  %i.b = and i64 %5, 786432
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.43) #19 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 @SDL_SetPointerProperty_REAL(i32 noundef %i.a, ptr noundef nonnull @.str.31, ptr noundef %0) #19 ; 0 uses
  %i.e = sext i32 %1 to i64
  %i.f = tail call zeroext i1 @SDL_SetNumberProperty_REAL(i32 noundef %i.a, ptr noundef nonnull @.str.27, i64 noundef %i.e) #19 ; 0 uses
  %i.g = sext i32 %2 to i64
  %i.h = tail call zeroext i1 @SDL_SetNumberProperty_REAL(i32 noundef %i.a, ptr noundef nonnull @.str.28, i64 noundef %i.g) #19 ; 0 uses
  %i.i = sext i32 %3 to i64
  %i.j = tail call zeroext i1 @SDL_SetNumberProperty_REAL(i32 noundef %i.a, ptr noundef nonnull @.str.29, i64 noundef %i.i) #19 ; 0 uses
  %i.k = sext i32 %4 to i64
  %i.l = tail call zeroext i1 @SDL_SetNumberProperty_REAL(i32 noundef %i.a, ptr noundef nonnull @.str.30, i64 noundef %i.k) #19 ; 0 uses
  %i.m = tail call zeroext i1 @SDL_SetNumberProperty_REAL(i32 noundef %i.a, ptr noundef nonnull @.str.42, i64 noundef %5) #19 ; 0 uses
  %i.n = tail call ptr @SDL_CreateWindowWithProperties_REAL(i32 noundef %i.a)
  tail call void @SDL_DestroyProperties_REAL(i32 noundef %i.a) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.n, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

declare zeroext i1 @SDL_SetPointerProperty_REAL(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_RecreateWindow(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i64 %1, 805306370
  %i.b = tail call range(i64 0, 4) i64 @llvm.ctpop.i64(i64 %i.a)
  %.not = icmp samesign ult i64 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.44) #19
  br label %SDL_GL_LoadLibrary_REAL.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.d = and i64 %1, 2                            ; 2 uses
  %.not87 = icmp eq i64 %i.d, 0                   ; 3 uses
  br i1 %.not87, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @_this, align 8            ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 440
  %i.g = load ptr, ptr %i.f, align 8
  %.not88 = icmp eq ptr %i.g, null
  br i1 %.not88, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.37, ptr noundef %i.h) #19
  br label %SDL_GL_LoadLibrary_REAL.exit.thread

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.j = and i64 %1, 268435456                    ; 2 uses
  %.not89 = icmp eq i64 %i.j, 0                   ; 3 uses
  br i1 %.not89, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = load ptr, ptr @_this, align 8            ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 528
  %i.m = load ptr, ptr %i.l, align 8
  %.not90 = icmp eq ptr %i.m, null
  br i1 %.not90, label %bb.h, label %bb.i
end_hunk_1
begin_hunk_2_@SDL_RecreateWindow:bb.a

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bm
  %i.ez = phi ptr [ %.pre152, %bb.bp ], [ %i.es, %bb.bo ], [ %i.es, %bb.bm ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 128
  %i.fb = load ptr, ptr %i.fa, align 8            ; 2 uses
  %.not117 = icmp eq ptr %i.fb, null
  br i1 %.not117, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fd = load float, ptr %i.fc, align 8
  %i.fe = fcmp ogt float %i.fd, 0.000000e+00
  br i1 %i.fe, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.fg = load float, ptr %i.ff, align 4
  %i.fh = fcmp ogt float %i.fg, 0.000000e+00
  br i1 %i.fh, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs, %bb.br
  tail call void %i.fb(ptr noundef nonnull %i.ez, ptr noundef nonnull %0) #19
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.bq
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.fj = load ptr, ptr %i.fi, align 8
  %.not118 = icmp eq ptr %i.fj, null
  br i1 %.not118, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.fk = load ptr, ptr @_this, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 760
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = tail call zeroext i1 %i.fm(ptr noundef nonnull %0, i1 noundef zeroext true) #19 ; 0 uses
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  tail call fastcc void @SDL_FinishWindowCreation(ptr noundef nonnull %0, i64 noundef %.078)
  br label %SDL_GL_LoadLibrary_REAL.exit.thread

SDL_GL_LoadLibrary_REAL.exit.thread:              ; preds = %bb.au, %bb.ap, %bb.ao, %.split143, %.split, %bb.az, %bb.ba, %SDL_Vulkan_LoadLibrary_REAL.exit, %SDL_GL_LoadLibrary_REAL.exit, %bb.bw, %bb.k, %bb.h, %bb.e, %bb.b
  %.0 = phi i1 [ %i.c, %bb.b ], [ true, %bb.bw ], [ false, %SDL_Vulkan_LoadLibrary_REAL.exit ], [ false, %SDL_GL_LoadLibrary_REAL.exit ], [ %i.i, %bb.e ], [ %i.u, %bb.k ], [ %i.o, %bb.h ], [ false, %bb.ba ], [ false, %bb.az ], [ false, %.split143 ], [ false, %.split ], [ false, %bb.ap ], [ false, %bb.ao ], [ false, %bb.au ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SetWindowModal_REAL(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread16, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread16

SDL_ObjectValid.exit.thread16:                    ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.p

SDL_ObjectValid.exit.thread:                      ; preds = %bb.d, %SDL_ObjectValid.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8              ; 4 uses
  %i.i = and i64 %i.h, 786432
  %.not10 = icmp eq i64 %i.i, 0
  br i1 %.not10, label %bb.f, label %bb.e

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.j = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.23) #19 ; 0 uses
  br label %bb.p

bb.f:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.k = load ptr, ptr @_this, align 8            ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 176 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %.not11 = icmp eq ptr %i.m, null
  br i1 %.not11, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.25) #19
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  br i1 %1, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.p = load ptr, ptr %i.o, align 8
  %.not13 = icmp eq ptr %i.p, null
  br i1 %.not13, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.q = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.60) #19
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.r = or i64 %i.h, 4096
  br label %bb.n

bb.l:                                             ; preds = %bb.h
  %i.s = and i64 %i.h, 4096
  %.not12 = icmp eq i64 %i.s, 0
  br i1 %.not12, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = and i64 %i.h, -790529
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %storemerge = phi i64 [ %i.t, %bb.m ], [ %i.r, %bb.k ] ; 2 uses
  store i64 %storemerge, ptr %i.g, align 8
  %i.u = and i64 %storemerge, 8
  %.not14 = icmp eq i64 %i.u, 0
  br i1 %.not14, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.v = load ptr, ptr %i.l, align 8
  %i.w = tail call zeroext i1 %i.v(ptr noundef nonnull %i.k, ptr noundef nonnull %0, i1 noundef zeroext %1) #19
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.l, %bb.o, %bb.j, %bb.g, %bb.e, %SDL_ObjectValid.exit.thread16, %bb.b
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.l ], [ %i.w, %bb.o ], [ %i.q, %bb.j ], [ false, %bb.b ], [ %i.n, %bb.g ], [ false, %SDL_ObjectValid.exit.thread16 ], [ true, %bb.n ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_HideWindow_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread23, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread23

SDL_ObjectValid.exit.thread23:                    ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.k

SDL_ObjectValid.exit.thread:                      ; preds = %bb.d, %SDL_ObjectValid.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = and i64 %i.h, 8
  %.not18 = icmp eq i64 %i.i, 0
  br i1 %.not18, label %bb.f, label %bb.e

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 266
  store i8 0, ptr %i.j, align 2
  br label %bb.k

bb.f:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 432
  %.025 = load ptr, ptr %i.k, align 8             ; 2 uses
  %.not1926 = icmp eq ptr %.025, null
  br i1 %.not1926, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.027 = phi ptr [ %.0, %bb.g ], [ %.025, %bb.f ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.027, i64 72
  %i.m = load i64, ptr %i.l, align 8
  %i.n = and i64 %i.m, 8
  %.not20 = icmp eq i64 %i.n, 0
  br i1 %.not20, label %bb.g, label %._crit_edge.loopexit

bb.g:                                             ; preds = %.lr.ph
  %i.o = tail call zeroext i1 @SDL_HideWindow_REAL(ptr noundef nonnull %.027) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.027, i64 266
  store i8 1, ptr %i.p, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %.027, i64 448
  %.0 = load ptr, ptr %i.q, align 8               ; 2 uses
  %.not19 = icmp eq ptr %.0, null
  br i1 %.not19, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !56

._crit_edge.loopexit:                             ; preds = %.lr.ph, %bb.g
  %.pre = load i64, ptr %i.g, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %i.r = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.h, %bb.f ]
  %i.s = and i64 %i.r, 1049025
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 265 ; 2 uses
  store i8 1, ptr %i.u, align 1
  %i.v = load ptr, ptr @_this, align 8            ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 192
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not21 = icmp eq ptr %i.x, null
  br i1 %.not21, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  tail call void %i.x(ptr noundef nonnull %i.v, ptr noundef nonnull %0) #19
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge
  tail call void @SDL_SetMouseFocus(ptr noundef null) #19
  %i.y = tail call zeroext i1 @SDL_SetKeyboardFocus(ptr noundef null) #19 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 0, ptr %i.u, align 1
  %i.z = tail call zeroext i1 @SDL_SendWindowEvent(ptr noundef nonnull %0, i32 noundef 515, i32 noundef 0, i32 noundef 0) #19 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e, %SDL_ObjectValid.exit.thread23, %bb.b
  %.016 = phi i1 [ true, %bb.e ], [ true, %bb.j ], [ false, %SDL_ObjectValid.exit.thread23 ], [ false, %bb.b ]
  ret i1 %.016
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_DestroyWindowSurface_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread13, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread13

SDL_ObjectValid.exit.thread13:                    ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.i

SDL_ObjectValid.exit.thread:                      ; preds = %bb.d, %SDL_ObjectValid.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.h, null
  br i1 %.not10, label %bb.f, label %bb.e

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = and i32 %i.j, -2
  store i32 %i.k, ptr %i.i, align 8
  %i.l = load ptr, ptr %i.g, align 8
  tail call void @SDL_DestroySurface_REAL(ptr noundef %i.l) #19
  store ptr null, ptr %i.g, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 0, ptr %i.m, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %SDL_ObjectValid.exit.thread
  %i.n = load ptr, ptr @_this, align 8            ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 792
  %i.p = load i8, ptr %i.o, align 8, !range !10, !noundef !11
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 344
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not11 = icmp eq ptr %i.s, null
  br i1 %.not11, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void %i.s(ptr noundef nonnull %i.n, ptr noundef nonnull %0) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g, %SDL_ObjectValid.exit.thread13, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ false, %SDL_ObjectValid.exit.thread13 ], [ true, %bb.g ], [ true, %bb.h ], [ true, %bb.f ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_GL_UnloadLibrary_REAL() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8            ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1040 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %i.c, align 8
  %.not3 = icmp eq i32 %i.d, 1
  br i1 %.not3, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not4 = icmp eq ptr %i.h, null
  br i1 %.not4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void %i.h(ptr noundef nonnull %i.a) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_Vulkan_UnloadLibrary_REAL() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8            ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1392 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %i.c, align 8
  %.not3 = icmp eq i32 %i.d, 1
  br i1 %.not3, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not4 = icmp eq ptr %i.h, null
  br i1 %.not4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void %i.h(ptr noundef nonnull %i.a) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_ReconfigureWindow(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8            ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  %i.c = load ptr, ptr %i.b, align 8
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %SDL_ReconfigureWindowInternal.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 805306370
  %.not20.i = icmp eq i64 %i.f, 0
  br i1 %.not20.i, label %bb.c, label %SDL_ReconfigureWindowInternal.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = and i64 %1, 805306370                    ; 4 uses
  %i.h = tail call range(i64 0, 4) i64 @llvm.ctpop.i64(i64 %i.g)
  %.not21.i = icmp samesign ult i64 %i.h, 2
  br i1 %.not21.i, label %bb.d, label %.split8

.split8:                                          ; preds = %bb.c
  %i.i = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.44) #19
  br i1 %i.i, label %bb.aa, label %SDL_ReconfigureWindowInternal.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.j = and i64 %1, 2
  %.not22.not.i = icmp eq i64 %i.j, 0             ; 3 uses
  br i1 %.not22.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  %i.l = load ptr, ptr %i.k, align 8
  %.not23.i = icmp eq ptr %i.l, null
  br i1 %.not23.i, label %.split, label %bb.f

.split:                                           ; preds = %bb.e
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.37, ptr noundef %i.m) #19
  br i1 %i.n, label %bb.aa, label %SDL_ReconfigureWindowInternal.exit.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = and i64 %1, 268435456
  %.not24.i = icmp eq i64 %i.o, 0                 ; 2 uses
  br i1 %.not24.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  %i.q = load ptr, ptr %i.p, align 8
  %.not25.i = icmp eq ptr %i.q, null
  br i1 %.not25.i, label %SDL_ReconfigureWindowInternal.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = and i64 %1, 536870912
  %.not26.i = icmp eq i64 %i.r, 0
  br i1 %.not26.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  %i.t = load ptr, ptr %i.s, align 8
  %.not27.i = icmp eq ptr %i.t, null
  br i1 %.not27.i, label %.split7, label %bb.j

.split7:                                          ; preds = %bb.i
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.39, ptr noundef %i.u) #19
  br i1 %i.v, label %bb.aa, label %SDL_ReconfigureWindowInternal.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.w = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %SDL_ObjectValid.exit.i.i, label %SDL_ObjectValid.exit.thread.i.i

SDL_ObjectValid.exit.i.i:                         ; preds = %bb.j
  %i.y = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.y, label %SDL_ObjectValid.exit.thread.i.i, label %SDL_ObjectValid.exit.thread13.i.i

SDL_ObjectValid.exit.thread13.i.i:                ; preds = %SDL_ObjectValid.exit.i.i
  %i.z = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %SDL_DestroyWindowSurface_REAL.exit.i

SDL_ObjectValid.exit.thread.i.i:                  ; preds = %SDL_ObjectValid.exit.i.i, %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not10.i.i = icmp eq ptr %i.ab, null
  br i1 %.not10.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %SDL_ObjectValid.exit.thread.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = and i32 %i.ad, -2
  store i32 %i.ae, ptr %i.ac, align 8
  %i.af = load ptr, ptr %i.aa, align 8
  tail call void @SDL_DestroySurface_REAL(ptr noundef %i.af) #19
  store ptr null, ptr %i.aa, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 0, ptr %i.ag, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %SDL_ObjectValid.exit.thread.i.i
  %i.ah = load ptr, ptr @_this, align 8           ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 792
  %i.aj = load i8, ptr %i.ai, align 8, !range !10, !noundef !11
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.m, label %SDL_DestroyWindowSurface_REAL.exit.i

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 344
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not11.i.i = icmp eq ptr %i.am, null
  br i1 %.not11.i.i, label %SDL_DestroyWindowSurface_REAL.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void %i.am(ptr noundef nonnull %i.ah, ptr noundef nonnull %0) #19, !inline_history !57
  br label %SDL_DestroyWindowSurface_REAL.exit.i

SDL_DestroyWindowSurface_REAL.exit.i:             ; preds = %bb.n, %bb.m, %bb.l, %SDL_ObjectValid.exit.thread13.i.i
  br i1 %.not22.not.i, label %bb.u, label %bb.o

bb.o:                                             ; preds = %SDL_DestroyWindowSurface_REAL.exit.i
  %i.an = load ptr, ptr @_this, align 8           ; 6 uses
  %.not.i30.i = icmp eq ptr %i.an, null
  br i1 %.not.i30.i, label %SDL_GL_LoadLibrary_REAL.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1040
  %i.ap = load i32, ptr %i.ao, align 8            ; 2 uses
  %.not10.i31.i = icmp eq i32 %i.ap, 0
  br i1 %.not10.i31.i, label %bb.q, label %.thread.i

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 416
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not11.i32.i = icmp eq ptr %i.ar, null
  br i1 %.not11.i32.i, label %.split.i, label %bb.r

.split.i:                                         ; preds = %bb.q
  %i.as = load ptr, ptr %i.an, align 8
  %i.at = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.37, ptr noundef %i.as) #19
  br i1 %i.at, label %bb.w, label %SDL_ReconfigureWindowInternal.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.au = tail call zeroext i1 %i.ar(ptr noundef nonnull %i.an, ptr noundef null) #19, !inline_history !58
  %.pre17.i.i = load ptr, ptr @_this, align 8     ; 4 uses
  br i1 %i.au, label %..thread_crit_edge.i, label %bb.s

..thread_crit_edge.i:                             ; preds = %bb.r
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre17.i.i, i64 1040
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8
  br label %.thread.i

bb.s:                                             ; preds = %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr %.pre17.i.i, i64 432
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %.not14.i.i = icmp eq ptr %i.aw, null
  br i1 %.not14.i.i, label %SDL_ReconfigureWindowInternal.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void %i.aw(ptr noundef nonnull %.pre17.i.i) #19, !inline_history !58
  br label %SDL_ReconfigureWindowInternal.exit.thread

SDL_GL_LoadLibrary_REAL.exit.i:                   ; preds = %bb.o
  %i.ax = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19
  br i1 %i.ax, label %bb.w, label %SDL_ReconfigureWindowInternal.exit.thread

bb.u:                                             ; preds = %SDL_DestroyWindowSurface_REAL.exit.i
  br i1 %.not24.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ay = tail call zeroext i1 @SDL_Vulkan_LoadLibrary_REAL(ptr noundef null)
  br i1 %i.ay, label %bb.w, label %SDL_ReconfigureWindowInternal.exit.thread

bb.w:                                             ; preds = %bb.v, %bb.u, %SDL_GL_LoadLibrary_REAL.exit.i, %.split.i
  %.0.i = phi i1 [ false, %SDL_GL_LoadLibrary_REAL.exit.i ], [ true, %bb.v ], [ false, %bb.u ], [ false, %.split.i ] ; 2 uses
  %i.az = load ptr, ptr @_this, align 8           ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 408
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = tail call zeroext i1 %i.bb(ptr noundef %i.az, ptr noundef nonnull %0, i64 noundef %i.g) #19, !inline_history !59
  br i1 %i.bc, label %SDL_ReconfigureWindowInternal.exit.thread5, label %bb.x

.thread.i:                                        ; preds = %..thread_crit_edge.i, %bb.p
  %i.bd = phi i32 [ %.pre.i, %..thread_crit_edge.i ], [ %i.ap, %bb.p ]
  %i.be = phi ptr [ %.pre17.i.i, %..thread_crit_edge.i ], [ %i.an, %bb.p ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1040
  %i.bg = add nsw i32 %i.bd, 1
  store i32 %i.bg, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 408
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call zeroext i1 %i.bi(ptr noundef nonnull %i.be, ptr noundef nonnull %0, i64 noundef %i.g) #19, !inline_history !59
  br i1 %i.bj, label %SDL_ReconfigureWindowInternal.exit.thread5, label %.split45.thread.i

.split45.thread.i:                                ; preds = %.thread.i
  tail call void @SDL_GL_UnloadLibrary_REAL()
  br label %SDL_ReconfigureWindowInternal.exit.thread

bb.x:                                             ; preds = %bb.w
  br i1 %.not22.not.i, label %bb.y, label %.split45.i

.split45.i:                                       ; preds = %bb.x
  tail call void @SDL_GL_UnloadLibrary_REAL()
  br i1 %.0.i, label %bb.z, label %SDL_ReconfigureWindowInternal.exit.thread

bb.y:                                             ; preds = %bb.x
  br i1 %.0.i, label %bb.z, label %SDL_ReconfigureWindowInternal.exit.thread

bb.z:                                             ; preds = %bb.y, %.split45.i
  tail call void @SDL_Vulkan_UnloadLibrary_REAL()
  br label %SDL_ReconfigureWindowInternal.exit.thread

SDL_ReconfigureWindowInternal.exit.thread5:       ; preds = %bb.w, %.thread.i
  %i.bk = load i64, ptr %i.d, align 8
  %i.bl = or i64 %i.bk, %i.g
  store i64 %i.bl, ptr %i.d, align 8
  br label %bb.aa

SDL_ReconfigureWindowInternal.exit:               ; preds = %bb.g
  %i.bm = load ptr, ptr %i.a, align 8
  %i.bn = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.38, ptr noundef %i.bm) #19
  br i1 %i.bn, label %bb.aa, label %SDL_ReconfigureWindowInternal.exit.thread

SDL_ReconfigureWindowInternal.exit.thread:        ; preds = %.split45.thread.i, %bb.t, %bb.s, %.split.i, %.split45.i, %bb.y, %bb.z, %SDL_GL_LoadLibrary_REAL.exit.i, %bb.v, %bb.b, %bb.a, %.split8, %.split7, %.split, %SDL_ReconfigureWindowInternal.exit
  %i.bo = tail call zeroext i1 @SDL_RecreateWindow(ptr noundef %0, i64 noundef %1)
  br label %bb.aa

bb.aa:                                            ; preds = %.split8, %.split7, %.split, %SDL_ReconfigureWindowInternal.exit.thread5, %SDL_ReconfigureWindowInternal.exit, %SDL_ReconfigureWindowInternal.exit.thread
  %.0 = phi i1 [ %i.bo, %SDL_ReconfigureWindowInternal.exit.thread ], [ true, %SDL_ReconfigureWindowInternal.exit ], [ true, %SDL_ReconfigureWindowInternal.exit.thread5 ], [ true, %.split ], [ true, %.split7 ], [ true, %.split8 ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @SDL_HasWindows() local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8            ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 840
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp ne ptr %i.c, null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i1 [ false, %bb.a ], [ %i.d, %bb.b ]
  ret i1 %i.e
}

; Function Attrs: nounwind uwtable
define hidden i32 @SDL_GetWindowID_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread3, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread3

SDL_ObjectValid.exit.thread3:                     ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.e

SDL_ObjectValid.exit.thread:                      ; preds = %bb.d, %SDL_ObjectValid.exit
  %i.g = load i32, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread, %SDL_ObjectValid.exit.thread3, %bb.b
  %.0 = phi i32 [ %i.g, %SDL_ObjectValid.exit.thread ], [ 0, %SDL_ObjectValid.exit.thread3 ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @SDL_GetWindowFromID_REAL(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8            ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit11.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not9 = icmp eq i32 %0, 0
  br i1 %.not9, label %.loopexit11.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 840
  %.013 = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not1014 = icmp eq ptr %.013, null
  br i1 %.not1014, label %.loopexit11.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.015 = phi ptr [ %.0, %bb.d ], [ %.013, %bb.c ] ; 3 uses
  %i.c = load i32, ptr %.015, align 8
  %i.d = icmp eq i32 %i.c, %0
  br i1 %i.d, label %.loopexit11, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.015, i64 416
  %.0 = load ptr, ptr %i.e, align 8               ; 2 uses
  %.not10 = icmp eq ptr %.0, null
  br i1 %.not10, label %.loopexit11.sink.split, label %.lr.ph, !llvm.loop !60

.loopexit11.sink.split:                           ; preds = %bb.d, %bb.b, %bb.c, %bb.a
  %.str.45.sink = phi ptr [ @.str.1, %bb.a ], [ @.str.45, %bb.b ], [ @.str.45, %bb.c ], [ @.str.45, %bb.d ]
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull %.str.45.sink) #19 ; 0 uses
  br label %.loopexit11

.loopexit11:                                      ; preds = %.lr.ph, %.loopexit11.sink.split
  %.06 = phi ptr [ null, %.loopexit11.sink.split ], [ %.015, %.lr.ph ]
  ret ptr %.06
}

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_GetWindowParent_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread4, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread4

SDL_ObjectValid.exit.thread4:                     ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.e

SDL_ObjectValid.exit.thread:                      ; preds = %bb.d, %SDL_ObjectValid.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.h = load ptr, ptr %i.g, align 8
  br label %bb.e

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread, %SDL_ObjectValid.exit.thread4, %bb.b
  %.0 = phi ptr [ %i.h, %SDL_ObjectValid.exit.thread ], [ null, %SDL_ObjectValid.exit.thread4 ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden i64 @SDL_GetWindowFlags_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread4, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread4

SDL_ObjectValid.exit.thread4:                     ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.e

SDL_ObjectValid.exit.thread:                      ; preds = %bb.d, %SDL_ObjectValid.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load i64, ptr %i.i, align 8
  %i.k = or i64 %i.j, %i.h
  br label %bb.e

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread, %SDL_ObjectValid.exit.thread4, %bb.b
  %.0 = phi i64 [ %i.k, %SDL_ObjectValid.exit.thread ], [ 0, %SDL_ObjectValid.exit.thread4 ], [ 0, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define hidden nonnull ptr @SDL_GetWindowTitle_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread7, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread7

SDL_ObjectValid.exit.thread7:                     ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.e

SDL_ObjectValid.exit.thread:                      ; preds = %bb.d, %SDL_ObjectValid.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not5 = icmp eq ptr %i.h, null
  %spec.select = select i1 %.not5, ptr @.str.46, ptr %i.h
  br label %bb.e

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread, %SDL_ObjectValid.exit.thread7, %bb.b
  %.0 = phi ptr [ %spec.select, %SDL_ObjectValid.exit.thread ], [ @.str.46, %SDL_ObjectValid.exit.thread7 ], [ @.str.46, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SetWindowIcon_REAL(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread16, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread16

SDL_ObjectValid.exit.thread16:                    ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.j

SDL_ObjectValid.exit.thread:                      ; preds = %bb.d, %SDL_ObjectValid.exit
  %.not12 = icmp eq ptr %1, null
  br i1 %.not12, label %bb.e, label %bb.f

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.g = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.47) #19
  br label %bb.j

bb.f:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  tail call void @SDL_DestroySurface_REAL(ptr noundef %i.i) #19
  %i.j = tail call ptr @SDL_ConvertSurface_REAL(ptr noundef nonnull %1, i32 noundef 372645892) #19 ; 3 uses
  store ptr %i.j, ptr %i.h, align 8
  %.not13 = icmp eq ptr %i.j, null
  br i1 %.not13, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = load ptr, ptr @_this, align 8            ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not14 = icmp eq ptr %i.m, null
  br i1 %.not14, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.25) #19
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.o = tail call zeroext i1 %i.m(ptr noundef nonnull %i.k, ptr noundef nonnull %0, ptr noundef nonnull %i.j) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i, %bb.h, %bb.e, %SDL_ObjectValid.exit.thread16, %bb.b
  %.0 = phi i1 [ %i.o, %bb.i ], [ %i.n, %bb.h ], [ false, %bb.b ], [ %i.g, %bb.e ], [ false, %SDL_ObjectValid.exit.thread16 ], [ false, %bb.f ]
  ret i1 %.0
}

declare void @SDL_DestroySurface_REAL(ptr noundef) local_unnamed_addr #2

declare ptr @SDL_ConvertSurface_REAL(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
end_hunk_2
begin_hunk_3_@SDL_SetWindowMaximumSize_REAL:bb.a
  %i.l = load i32, ptr %i.k, align 8
  %i.m = icmp slt i32 %1, %i.l
  br i1 %i.m, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not27 = icmp eq i32 %2, 0
  br i1 %.not27, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp slt i32 %2, %i.o
  br i1 %i.p, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.q = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.55) #19
  br label %bb.p

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %2, ptr %i.s, align 4
  %i.t = load ptr, ptr @_this, align 8            ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not28 = icmp eq ptr %i.v, null
  br i1 %.not28, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void %i.v(ptr noundef nonnull %i.t, ptr noundef nonnull %0) #19
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.x = load i8, ptr %i.w, align 4, !range !10, !noundef !11
  %i.y = trunc nuw i8 %i.x to i1                  ; 2 uses
  %.in.v = select i1 %i.y, i64 148, i64 132
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.z = load i32, ptr %.in, align 4
  %.in29.v = select i1 %i.y, i64 152, i64 136
  %.in29 = getelementptr inbounds nuw i8, ptr %0, i64 %.in29.v
  %i.aa = load i32, ptr %.in29, align 4
  %i.ab = tail call zeroext i1 @SDL_SetWindowSize_REAL(ptr noundef nonnull %0, i32 noundef %i.z, i32 noundef %i.aa)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l, %bb.g, %bb.e, %SDL_ObjectValid.exit.thread31, %bb.b
  %.0 = phi i1 [ %i.h, %bb.e ], [ %i.j, %bb.g ], [ %i.q, %bb.l ], [ %i.ab, %bb.o ], [ false, %SDL_ObjectValid.exit.thread31 ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_GetWindowMaximumSize_REAL(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread13, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread13

SDL_ObjectValid.exit.thread13:                    ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.h

SDL_ObjectValid.exit.thread:                      ; preds = %bb.d, %SDL_ObjectValid.exit
  %.not10 = icmp eq ptr %1, null
  br i1 %.not10, label %bb.f, label %bb.e

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i32, ptr %i.g, align 8
  store i32 %i.h, ptr %1, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %SDL_ObjectValid.exit.thread
  %.not11 = icmp eq ptr %2, null
  br i1 %.not11, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.j = load i32, ptr %i.i, align 4
  store i32 %i.j, ptr %2, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %SDL_ObjectValid.exit.thread13, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ false, %SDL_ObjectValid.exit.thread13 ], [ true, %bb.g ], [ true, %bb.f ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_ShowWindow_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread27, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread27

SDL_ObjectValid.exit.thread27:                    ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %.loopexit

SDL_ObjectValid.exit.thread:                      ; preds = %bb.d, %SDL_ObjectValid.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 8
  %.not20 = icmp eq i64 %i.i, 0
  br i1 %.not20, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not21 = icmp eq ptr %i.k, null
  br i1 %.not21, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load i64, ptr %i.l, align 8
  %i.n = and i64 %i.m, 8
  %.not22 = icmp eq i64 %i.n, 0
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 266
  store i8 1, ptr %i.o, align 2
  br label %.loopexit

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.p = load ptr, ptr @_this, align 8            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 184
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not23 = icmp eq ptr %i.r, null
  br i1 %.not23, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void %i.r(ptr noundef nonnull %i.p, ptr noundef nonnull %0) #19
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  tail call void @SDL_SetMouseFocus(ptr noundef nonnull %0) #19
  %i.s = tail call zeroext i1 @SDL_SetKeyboardFocus(ptr noundef nonnull %0) #19 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.t = tail call zeroext i1 @SDL_SendWindowEvent(ptr noundef nonnull %0, i32 noundef 514, i32 noundef 0, i32 noundef 0) #19 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 432
  %.029 = load ptr, ptr %i.u, align 8             ; 2 uses
  %.not2430 = icmp eq ptr %.029, null
  br i1 %.not2430, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.m
  %.031 = phi ptr [ %.0, %bb.m ], [ %.029, %bb.k ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.031, i64 266 ; 2 uses
  %i.w = load i8, ptr %i.v, align 2, !range !10, !noundef !11
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.031, i64 72
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = and i64 %i.z, 8
  %.not25 = icmp eq i64 %i.aa, 0
  br i1 %.not25, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l, %.lr.ph
  %i.ab = tail call zeroext i1 @SDL_ShowWindow_REAL(ptr noundef nonnull %.031) ; 0 uses
  store i8 0, ptr %i.v, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %.031, i64 448
  %.0 = load ptr, ptr %i.ac, align 8              ; 2 uses
  %.not24 = icmp eq ptr %.0, null
  br i1 %.not24, label %.loopexit, label %.lr.ph, !llvm.loop !61

.loopexit:                                        ; preds = %bb.l, %bb.m, %bb.k, %SDL_ObjectValid.exit.thread, %bb.g, %SDL_ObjectValid.exit.thread27, %bb.b
  %.017 = phi i1 [ true, %bb.g ], [ true, %SDL_ObjectValid.exit.thread ], [ false, %bb.b ], [ false, %SDL_ObjectValid.exit.thread27 ], [ true, %bb.k ], [ true, %bb.m ], [ true, %bb.l ]
  ret i1 %.017
}

declare void @SDL_SetMouseFocus(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_SetKeyboardFocus(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_RaiseWindow_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread8, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread8

SDL_ObjectValid.exit.thread8:                     ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.g

SDL_ObjectValid.exit.thread:                      ; preds = %bb.d, %SDL_ObjectValid.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 8
  %.not5 = icmp eq i64 %i.i, 0
  br i1 %.not5, label %bb.e, label %bb.g

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.j = load ptr, ptr @_this, align 8            ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 200
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not6 = icmp eq ptr %i.l, null
  br i1 %.not6, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void %i.l(ptr noundef nonnull %i.j, ptr noundef nonnull %0) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %SDL_ObjectValid.exit.thread, %SDL_ObjectValid.exit.thread8, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ true, %SDL_ObjectValid.exit.thread ], [ false, %SDL_ObjectValid.exit.thread8 ], [ true, %bb.f ], [ true, %bb.e ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_MaximizeWindow_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread14, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread14

SDL_ObjectValid.exit.thread14:                    ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.m

SDL_ObjectValid.exit.thread:                      ; preds = %bb.d, %SDL_ObjectValid.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  %i.i = and i64 %i.h, 786432
  %.not9 = icmp eq i64 %i.i, 0
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.j = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.23) #19 ; 0 uses
  br label %bb.m

bb.f:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.k = load ptr, ptr @_this, align 8            ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.m, null
  br i1 %.not10, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.25) #19
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.o = and i64 %i.h, 32
  %.not11 = icmp eq i64 %i.o, 0
  br i1 %.not11, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.56) #19
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = and i64 %i.h, 8
  %.not12 = icmp eq i64 %i.q, 0
  br i1 %.not12, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = or i64 %i.s, 128
  store i64 %i.t, ptr %i.r, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  tail call void %i.m(ptr noundef nonnull %i.k, ptr noundef nonnull %0) #19
  tail call fastcc void @SDL_SyncIfRequired(ptr noundef nonnull %0)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.e, %SDL_ObjectValid.exit.thread14, %bb.b
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.k ], [ true, %bb.l ], [ %i.p, %bb.i ], [ %i.n, %bb.g ], [ false, %SDL_ObjectValid.exit.thread14 ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_RestoreWindow_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %SDL_SyncIfRequired.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread12, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread12

SDL_ObjectValid.exit.thread12:                    ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %SDL_SyncIfRequired.exit

SDL_ObjectValid.exit.thread:                      ; preds = %bb.d, %SDL_ObjectValid.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = and i64 %i.h, 786432
  %.not8 = icmp eq i64 %i.i, 0
  br i1 %.not8, label %bb.f, label %bb.e

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.j = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.23) #19 ; 0 uses
  br label %SDL_SyncIfRequired.exit

bb.f:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.k = load ptr, ptr @_this, align 8            ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 224
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.m, null
  br i1 %.not9, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.25) #19
  br label %SDL_SyncIfRequired.exit

bb.h:                                             ; preds = %bb.f
  %i.o = and i64 %i.h, 8
  %.not10 = icmp eq i64 %i.o, 0
  br i1 %.not10, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
end_hunk_3
begin_hunk_4_@SDL_WindowHasSurface_REAL:bb.a
bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread4

SDL_ObjectValid.exit.thread4:                     ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.e

SDL_ObjectValid.exit.thread:                      ; preds = %bb.d, %SDL_ObjectValid.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp ne ptr %i.h, null
  br label %bb.e

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread, %SDL_ObjectValid.exit.thread4, %bb.b
  %.0 = phi i1 [ %i.i, %SDL_ObjectValid.exit.thread ], [ false, %SDL_ObjectValid.exit.thread4 ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_GetWindowSurface_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 5 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = load ptr, ptr @_this, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread18, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.j = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.j, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread18

SDL_ObjectValid.exit.thread18:                    ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.k = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.v

SDL_ObjectValid.exit.thread:                      ; preds = %bb.d, %SDL_ObjectValid.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !range !10, !noundef !11
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.u, label %bb.e

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 7 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not14 = icmp eq ptr %i.p, null
  br i1 %.not14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = and i32 %i.r, -2
  store i32 %i.s, ptr %i.q, align 8
  %i.t = load ptr, ptr %i.o, align 8
  tail call void @SDL_DestroySurface_REAL(ptr noundef %i.t) #19
  store ptr null, ptr %i.o, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.u = call zeroext i1 @SDL_GetWindowSizeInPixels_REAL(ptr noundef nonnull %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) ; 0 uses
  %i.v = load ptr, ptr @_this, align 8            ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 792
  %i.x = load i8, ptr %i.w, align 8, !range !10, !noundef !11
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 793
  %i.aa = load i8, ptr %i.z, align 1, !range !10, !noundef !11
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %ShouldAttemptTextureFramebuffer.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = call ptr @SDL_GetHint_REAL(ptr noundef nonnull @.str.166) #19 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load i8, ptr %i.ac, align 1
  switch i8 %i.ad, label %bb.k [
    i8 0, label %bb.l
    i8 48, label %ShouldAttemptTextureFramebuffer.exit.thread.i
  ]

bb.k:                                             ; preds = %bb.j
  %i.ae = call i32 @SDL_strcasecmp_REAL(ptr noundef nonnull %i.ac, ptr noundef nonnull @.str.167) #19
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %ShouldAttemptTextureFramebuffer.exit.thread.i, label %.split.i

.split.i:                                         ; preds = %bb.k
  %i.ag = call i32 @SDL_strcasecmp_REAL(ptr noundef nonnull %i.ac, ptr noundef nonnull @.str.168) #19
  %.not19.i = icmp eq i32 %i.ag, 0
  br i1 %.not19.i, label %ShouldAttemptTextureFramebuffer.exit.thread.i, label %ShouldAttemptTextureFramebuffer.exit.thread15.i

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.ah = load ptr, ptr @_this, align 8           ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 312
  %i.aj = load ptr, ptr %i.ai, align 8
  %.not10.i.i = icmp eq ptr %i.aj, null
  br i1 %.not10.i.i, label %ShouldAttemptTextureFramebuffer.exit.thread15.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = load ptr, ptr %i.ah, align 8
  %i.al = call i32 @SDL_strcmp_REAL(ptr noundef %i.ak, ptr noundef nonnull @.str.19) #19
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.n, label %ShouldAttemptTextureFramebuffer.exit.thread15.i

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.an = call i32 @stat(ptr noundef nonnull @.str.169, ptr noundef nonnull %1) #19
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %ShouldAttemptTextureFramebuffer.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = call i32 @stat(ptr noundef nonnull @.str.170, ptr noundef nonnull %1) #19
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %ShouldAttemptTextureFramebuffer.exit.i, label %ShouldAttemptTextureFramebuffer.exit.thread17.i

ShouldAttemptTextureFramebuffer.exit.thread17.i:  ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %ShouldAttemptTextureFramebuffer.exit.thread15.i

ShouldAttemptTextureFramebuffer.exit.i:           ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %ShouldAttemptTextureFramebuffer.exit.thread.i

ShouldAttemptTextureFramebuffer.exit.thread15.i:  ; preds = %ShouldAttemptTextureFramebuffer.exit.thread17.i, %bb.m, %bb.l, %.split.i
  %i.ar = call zeroext i1 @SDL_CreateWindowTexture(ptr poison, ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  br i1 %i.ar, label %.critedge12.i, label %ShouldAttemptTextureFramebuffer.exit.thread.i

.critedge12.i:                                    ; preds = %ShouldAttemptTextureFramebuffer.exit.thread15.i
  %i.as = load ptr, ptr @_this, align 8           ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 312
  store ptr @SDL_CreateWindowTexture, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 320
  store ptr @SDL_SetWindowTextureVSync, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 328
  store ptr @SDL_GetWindowTextureVSync, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 336
  store ptr @SDL_UpdateWindowTexture, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 344
  store ptr @SDL_DestroyWindowTexture, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 792
  store i8 1, ptr %i.ay, align 8
  br label %bb.s

ShouldAttemptTextureFramebuffer.exit.thread.i:    ; preds = %ShouldAttemptTextureFramebuffer.exit.thread15.i, %ShouldAttemptTextureFramebuffer.exit.i, %.split.i, %bb.k, %bb.j, %bb.h
  %i.az = load ptr, ptr @_this, align 8           ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 792
  store i8 1, ptr %i.ba, align 8
  br label %.critedge.i

.critedge.i:                                      ; preds = %ShouldAttemptTextureFramebuffer.exit.thread.i, %bb.g
  %i.bb = phi ptr [ %i.v, %bb.g ], [ %i.az, %ShouldAttemptTextureFramebuffer.exit.thread.i ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 312
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i16 = icmp eq ptr %i.bd, null
  br i1 %.not.i16, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.critedge.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 336
  %i.bf = load ptr, ptr %i.be, align 8
  %.not9.i = icmp eq ptr %i.bf, null
  br i1 %.not9.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %.critedge.i
  %i.bg = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.165) #19 ; 0 uses
  br label %SDL_CreateWindowFramebuffer.exit.thread

bb.r:                                             ; preds = %bb.p
  %i.bh = call zeroext i1 %i.bd(ptr noundef nonnull %i.bb, ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #19, !inline_history !62
  br i1 %i.bh, label %bb.s, label %SDL_CreateWindowFramebuffer.exit.thread

bb.s:                                             ; preds = %bb.r, %.critedge12.i
  %i.bi = load ptr, ptr %i.o, align 8             ; 3 uses
  %.not10.i = icmp eq ptr %i.bi, null
  br i1 %.not10.i, label %SDL_CreateWindowFramebuffer.exit, label %SDL_CreateWindowFramebuffer.exit.thread22

SDL_CreateWindowFramebuffer.exit.thread22:        ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  store ptr %i.bi, ptr %i.o, align 8
  br label %bb.t

SDL_CreateWindowFramebuffer.exit.thread:          ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.o, align 8
  br label %bb.u

SDL_CreateWindowFramebuffer.exit:                 ; preds = %bb.s
  %i.bj = load i32, ptr %i.d, align 4
  %i.bk = load i32, ptr %i.e, align 4
  %i.bl = load i32, ptr %i.a, align 4
  %i.bm = load ptr, ptr %i.b, align 8
  %i.bn = load i32, ptr %i.c, align 4
  %i.bo = call ptr @SDL_CreateSurfaceFrom_REAL(i32 noundef %i.bj, i32 noundef %i.bk, i32 noundef %i.bl, ptr noundef %i.bm, i32 noundef %i.bn) #19 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  store ptr %i.bo, ptr %i.o, align 8
  %.not15 = icmp eq ptr %i.bo, null
  br i1 %.not15, label %bb.u, label %bb.t

bb.t:                                             ; preds = %SDL_CreateWindowFramebuffer.exit.thread22, %SDL_CreateWindowFramebuffer.exit
  %.06.i25 = phi ptr [ %i.bi, %SDL_CreateWindowFramebuffer.exit.thread22 ], [ %i.bo, %SDL_CreateWindowFramebuffer.exit ]
  store i8 1, ptr %i.l, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i25, i64 48 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = or i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 8
  br label %bb.u

bb.u:                                             ; preds = %SDL_CreateWindowFramebuffer.exit.thread, %SDL_CreateWindowFramebuffer.exit, %bb.t, %SDL_ObjectValid.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bt = load ptr, ptr %i.bs, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %SDL_ObjectValid.exit.thread18, %bb.b
  %.0 = phi ptr [ %i.bt, %bb.u ], [ null, %SDL_ObjectValid.exit.thread18 ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SetWindowSurfaceVSync_REAL(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8            ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread6, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.SDL_ObjectValid.exit.thread_crit_edge, label %SDL_ObjectValid.exit.thread6

SDL_ObjectValid.exit.SDL_ObjectValid.exit.thread_crit_edge: ; preds = %SDL_ObjectValid.exit
  %.pre = load ptr, ptr @_this, align 8
  br label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit.thread6:                     ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.g

SDL_ObjectValid.exit.thread:                      ; preds = %SDL_ObjectValid.exit.SDL_ObjectValid.exit.thread_crit_edge, %bb.d
  %i.g = phi ptr [ %.pre, %SDL_ObjectValid.exit.SDL_ObjectValid.exit.thread_crit_edge ], [ %i.a, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not4 = icmp eq ptr %i.i, null
  br i1 %.not4, label %bb.e, label %bb.f

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.j = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.25) #19
  br label %bb.g

bb.f:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.k = tail call zeroext i1 %i.i(ptr noundef nonnull %i.g, ptr noundef nonnull %0, i32 noundef %1) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %SDL_ObjectValid.exit.thread6, %bb.b
  %.0 = phi i1 [ %i.k, %bb.f ], [ %i.j, %bb.e ], [ false, %SDL_ObjectValid.exit.thread6 ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_GetWindowSurfaceVSync_REAL(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8            ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread7, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.SDL_ObjectValid.exit.thread_crit_edge, label %SDL_ObjectValid.exit.thread7

SDL_ObjectValid.exit.SDL_ObjectValid.exit.thread_crit_edge: ; preds = %SDL_ObjectValid.exit
  %.pre = load ptr, ptr @_this, align 8
  br label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit.thread7:                     ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.g

SDL_ObjectValid.exit.thread:                      ; preds = %SDL_ObjectValid.exit.SDL_ObjectValid.exit.thread_crit_edge, %bb.d
  %i.g = phi ptr [ %.pre, %SDL_ObjectValid.exit.SDL_ObjectValid.exit.thread_crit_edge ], [ %i.a, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not5 = icmp eq ptr %i.i, null
  br i1 %.not5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.j = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.25) #19
  br label %bb.g

bb.f:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.k = tail call zeroext i1 %i.i(ptr noundef nonnull %i.g, ptr noundef nonnull %0, ptr noundef %1) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %SDL_ObjectValid.exit.thread7, %bb.b
  %.0 = phi i1 [ %i.k, %bb.f ], [ %i.j, %bb.e ], [ false, %SDL_ObjectValid.exit.thread7 ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_UpdateWindowSurface_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.SDL_Rect, align 4           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.a = load ptr, ptr @_this, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %SDL_UpdateWindowSurfaceRects_REAL.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread7, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread7

SDL_ObjectValid.exit.thread7:                     ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %SDL_UpdateWindowSurfaceRects_REAL.exit

SDL_ObjectValid.exit.thread:                      ; preds = %bb.d, %SDL_ObjectValid.exit
  store i32 0, ptr %1, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = call zeroext i1 @SDL_GetWindowSizeInPixels_REAL(ptr noundef nonnull %0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) ; 0 uses
  %i.k = load ptr, ptr @_this, align 8
  %.not.i4 = icmp eq ptr %i.k, null
  br i1 %.not.i4, label %bb.e, label %bb.f

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.l = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %SDL_UpdateWindowSurfaceRects_REAL.exit

bb.f:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.m = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %SDL_ObjectValid.exit.i, label %SDL_ObjectValid.exit.thread.i

SDL_ObjectValid.exit.i:                           ; preds = %bb.f
  %i.o = call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.o, label %SDL_ObjectValid.exit.thread.i, label %SDL_ObjectValid.exit.thread6.i

SDL_ObjectValid.exit.thread6.i:                   ; preds = %SDL_ObjectValid.exit.i
  %i.p = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %SDL_UpdateWindowSurfaceRects_REAL.exit

SDL_ObjectValid.exit.thread.i:                    ; preds = %SDL_ObjectValid.exit.i, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.r = load i8, ptr %i.q, align 8, !range !10, !noundef !11
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %SDL_ObjectValid.exit.thread.i
  %i.t = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.57) #19
  br label %SDL_UpdateWindowSurfaceRects_REAL.exit

bb.h:                                             ; preds = %SDL_ObjectValid.exit.thread.i
  %i.u = load ptr, ptr @_this, align 8            ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 336
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call zeroext i1 %i.w(ptr noundef %i.u, ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1) #19, !inline_history !63
  br label %SDL_UpdateWindowSurfaceRects_REAL.exit

SDL_UpdateWindowSurfaceRects_REAL.exit:           ; preds = %bb.h, %bb.g, %SDL_ObjectValid.exit.thread6.i, %bb.e, %SDL_ObjectValid.exit.thread7, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ false, %SDL_ObjectValid.exit.thread7 ], [ %i.x, %bb.h ], [ %i.t, %bb.g ], [ false, %SDL_ObjectValid.exit.thread6.i ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_UpdateWindowSurfaceRects_REAL(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread6, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread6

SDL_ObjectValid.exit.thread6:                     ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.g

SDL_ObjectValid.exit.thread:                      ; preds = %bb.d, %SDL_ObjectValid.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.h = load i8, ptr %i.g, align 8, !range !10, !noundef !11
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.j = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.57) #19
  br label %bb.g

bb.f:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.k = load ptr, ptr @_this, align 8            ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 336
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call zeroext i1 %i.m(ptr noundef %i.k, ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %SDL_ObjectValid.exit.thread6, %bb.b
  %.0 = phi i1 [ %i.n, %bb.f ], [ %i.j, %bb.e ], [ false, %SDL_ObjectValid.exit.thread6 ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SetWindowOpacity_REAL(ptr noundef %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8            ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread13, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.SDL_ObjectValid.exit.thread_crit_edge, label %SDL_ObjectValid.exit.thread13

SDL_ObjectValid.exit.SDL_ObjectValid.exit.thread_crit_edge: ; preds = %SDL_ObjectValid.exit
  %.pre = load ptr, ptr @_this, align 8
  br label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit.thread13:                    ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.h

SDL_ObjectValid.exit.thread:                      ; preds = %SDL_ObjectValid.exit.SDL_ObjectValid.exit.thread_crit_edge, %bb.d
  %i.g = phi ptr [ %.pre, %SDL_ObjectValid.exit.SDL_ObjectValid.exit.thread_crit_edge ], [ %i.a, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not11 = icmp eq ptr %i.i, null
  br i1 %.not11, label %bb.e, label %bb.f

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.j = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.25) #19
  br label %bb.h

bb.f:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.k = fcmp olt float %1, 0.000000e+00
  %i.l = fcmp ogt float %1, 1.000000e+00
  %spec.store.select = select i1 %i.l, float 1.000000e+00, float %1
  %.0 = select i1 %i.k, float 0.000000e+00, float %spec.store.select ; 2 uses
  %i.m = tail call zeroext i1 %i.i(ptr noundef nonnull %i.g, ptr noundef nonnull %0, float noundef %.0) #19
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 248
  store float %.0, ptr %i.n, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e, %SDL_ObjectValid.exit.thread13, %bb.b
  %.09 = phi i1 [ false, %bb.b ], [ %i.j, %bb.e ], [ false, %SDL_ObjectValid.exit.thread13 ], [ true, %bb.g ], [ false, %bb.f ]
  ret i1 %.09
}

; Function Attrs: nounwind uwtable
define hidden float @SDL_GetWindowOpacity_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread4, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread4

SDL_ObjectValid.exit.thread4:                     ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.e

SDL_ObjectValid.exit.thread:                      ; preds = %bb.d, %SDL_ObjectValid.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.h = load float, ptr %i.g, align 8
  br label %bb.e

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread, %SDL_ObjectValid.exit.thread4, %bb.b
  %.0 = phi float [ %i.h, %SDL_ObjectValid.exit.thread ], [ -1.000000e+00, %SDL_ObjectValid.exit.thread4 ], [ -1.000000e+00, %bb.b ]
  ret float %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SetWindowParent_REAL(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %.not.i25 = icmp eq ptr %0, null
  br i1 %.not.i25, label %SDL_ObjectValid.exit27.thread29, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit27, label %SDL_ObjectValid.exit27.thread

SDL_ObjectValid.exit27:                           ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit27.thread, label %SDL_ObjectValid.exit27.thread29

SDL_ObjectValid.exit27.thread29:                  ; preds = %bb.c, %SDL_ObjectValid.exit27
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.t

SDL_ObjectValid.exit27.thread:                    ; preds = %bb.d, %SDL_ObjectValid.exit27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 786432
  %.not19 = icmp eq i64 %i.i, 0
  br i1 %.not19, label %bb.f, label %bb.e

bb.e:                                             ; preds = %SDL_ObjectValid.exit27.thread
  %i.j = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.23) #19 ; 0 uses
  br label %bb.t

bb.f:                                             ; preds = %SDL_ObjectValid.exit27.thread
  %.not20 = icmp eq ptr %1, null
  br i1 %.not20, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = load ptr, ptr @_this, align 8
  %.not21 = icmp eq ptr %i.k, null
  br i1 %.not21, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.l = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.t

bb.i:                                             ; preds = %bb.g
  %i.m = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.i
  %i.o = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %1, i32 noundef 1) #19
  br i1 %i.o, label %SDL_ObjectValid.exit.thread, label %bb.j

bb.j:                                             ; preds = %SDL_ObjectValid.exit
  %i.p = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.t

SDL_ObjectValid.exit.thread:                      ; preds = %bb.i, %SDL_ObjectValid.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.r = load i64, ptr %i.q, align 8
  %i.s = and i64 %i.r, 786432
  %.not22 = icmp eq i64 %i.s, 0
  br i1 %.not22, label %bb.l, label %bb.k

bb.k:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.t = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.23) #19 ; 0 uses
  br label %bb.t

bb.l:                                             ; preds = %SDL_ObjectValid.exit.thread, %bb.f
  %i.u = icmp eq ptr %0, %1
  br i1 %i.u, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.v = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.58) #19
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.w = load ptr, ptr @_this, align 8            ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 168
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not23 = icmp eq ptr %i.y, null
  br i1 %.not23, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.z = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.25) #19
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  %i.aa = load i64, ptr %i.g, align 8
  %i.ab = and i64 %i.aa, 4096
  %.not24 = icmp eq i64 %i.ab, 0
  br i1 %.not24, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.59) #19
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = icmp eq ptr %i.ae, %1
  br i1 %i.af, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ag = tail call zeroext i1 %i.y(ptr noundef nonnull %i.w, ptr noundef nonnull %0, ptr noundef %1) #19 ; 2 uses
  %i.ah = select i1 %i.ag, ptr %1, ptr null
  tail call fastcc void @SDL_UpdateWindowHierarchy(ptr noundef nonnull %0, ptr noundef %i.ah)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.j, %bb.h, %bb.e, %SDL_ObjectValid.exit27.thread29, %bb.b
  %.0 = phi i1 [ false, %bb.e ], [ false, %bb.k ], [ %i.v, %bb.m ], [ %i.ac, %bb.q ], [ false, %bb.b ], [ %i.ag, %bb.s ], [ %i.z, %bb.o ], [ false, %bb.j ], [ false, %bb.h ], [ false, %SDL_ObjectValid.exit27.thread29 ], [ true, %bb.r ]
  ret i1 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @SDL_ShouldRelinquishPopupFocus(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i64, ptr %i.c, align 8
  %i.e = lshr i64 %i.d, 9
  %i.f = trunc i64 %i.e to i8                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = and i64 %i.h, 786432
  %.not15 = icmp eq i64 %i.i, 0
  br i1 %.not15, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.critedge2
  %i.j = phi i64 [ %.pre, %.critedge2 ], [ %i.h, %bb.a ]
  %.017 = phi i8 [ %.1, %.critedge2 ], [ %i.f, %bb.a ] ; 2 uses
  %.01316 = phi ptr [ %i.s, %.critedge2 ], [ %i.b, %bb.a ] ; 4 uses
  %i.k = and i64 %i.j, 2147483648
  %.not14 = icmp eq i64 %i.k, 0
  br i1 %.not14, label %bb.b, label %.critedge2

bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.01316, i64 265
  %i.m = load i8, ptr %i.l, align 1, !range !10, !noundef !11
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.critedge2, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.01316, i64 271
  %i.p = load i8, ptr %i.o, align 1, !range !10, !noundef !11
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %.critedge2, label %.critedge

.critedge2:                                       ; preds = %bb.b, %.lr.ph, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.01316, i64 424
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %i.t = trunc i8 %.017 to i1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %.pre = load i64, ptr %.phi.trans.insert, align 8 ; 3 uses
  %i.u = lshr i64 %.pre, 9
  %i.v = trunc i64 %i.u to i8
  %.1 = select i1 %i.t, i8 1, i8 %i.v             ; 2 uses
  %i.w = and i64 %.pre, 786432
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !64

.critedge:                                        ; preds = %bb.c, %.critedge2, %bb.a
  %.013.lcssa = phi ptr [ %i.b, %bb.a ], [ %i.s, %.critedge2 ], [ %.01316, %bb.c ]
  %.0.lcssa = phi i8 [ %i.f, %bb.a ], [ %.1, %.critedge2 ], [ %.017, %bb.c ]
  store ptr %.013.lcssa, ptr %1, align 8
  %i.x = trunc i8 %.0.lcssa to i1
  ret i1 %i.x
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @SDL_ShouldFocusPopup(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #11 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.pn = phi ptr [ %0, %bb.a ], [ %.013, %bb.b ]
  %.013.in = getelementptr inbounds nuw i8, ptr %.pn, i64 424
  %.013 = load ptr, ptr %.013.in, align 8         ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.013, i64 72
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 786432
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !65

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.013, i64 400
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0.in = phi ptr [ %i.d, %bb.c ], [ %i.f, %bb.d ]
  %.0 = load ptr, ptr %.0.in, align 8             ; 3 uses
  %.not14.not = icmp eq ptr %.0, %.013            ; 2 uses
  %i.e = icmp eq ptr %.0, %0
  %or.cond = or i1 %.not14.not, %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %.0, i64 424
  br i1 %or.cond, label %bb.e, label %bb.d, !llvm.loop !66

bb.e:                                             ; preds = %bb.d
  ret i1 %.not14.not
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_SetWindowFocusable_REAL(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread14, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread14

SDL_ObjectValid.exit.thread14:                    ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.h

SDL_ObjectValid.exit.thread:                      ; preds = %bb.d, %SDL_ObjectValid.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = and i64 %i.h, 2147483648
  %i.j = icmp ne i64 %i.i, 0
  %.not11 = xor i1 %1, %i.j
  br i1 %.not11, label %bb.g, label %bb.e

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.k = load ptr, ptr @_this, align 8            ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 384 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %.not12 = icmp eq ptr %i.m, null
  br i1 %.not12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = and i64 %i.h, -2147483649
  %masksel = select i1 %1, i64 0, i64 2147483648
  %storemerge = or disjoint i64 %i.n, %masksel
  store i64 %storemerge, ptr %i.g, align 8
  %i.o = load ptr, ptr %i.l, align 8
  %i.p = tail call zeroext i1 %i.o(ptr noundef nonnull %i.k, ptr noundef nonnull %0, i1 noundef zeroext %1) #19
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e, %SDL_ObjectValid.exit.thread
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %SDL_ObjectValid.exit.thread14, %bb.b
  %.1 = phi i1 [ false, %bb.b ], [ false, %SDL_ObjectValid.exit.thread14 ], [ true, %bb.g ], [ false, %bb.f ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_SetWindowFillDocument_REAL(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread14, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread14

SDL_ObjectValid.exit.thread14:                    ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.j

SDL_ObjectValid.exit.thread:                      ; preds = %bb.d, %SDL_ObjectValid.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 2097152
  %i.j = icmp eq i64 %i.i, 0
  %.not11 = xor i1 %1, %i.j
  br i1 %.not11, label %bb.j, label %bb.e

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.k = load ptr, ptr @_this, align 8            ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 392
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not12 = icmp eq ptr %i.m, null
  br i1 %.not12, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call zeroext i1 %i.m(ptr noundef nonnull %i.k, ptr noundef nonnull %0, i1 noundef zeroext %1) #19
  br i1 %i.n, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.o = load i64, ptr %i.g, align 8              ; 2 uses
  br i1 %1, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = or i64 %i.o, 2097152
  store i64 %i.p, ptr %i.g, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.q = and i64 %i.o, -2097153
  store i64 %i.q, ptr %i.g, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i, %bb.h, %bb.e, %SDL_ObjectValid.exit.thread, %SDL_ObjectValid.exit.thread14, %bb.b
  %.1 = phi i1 [ false, %bb.b ], [ false, %SDL_ObjectValid.exit.thread14 ], [ false, %bb.f ], [ true, %bb.i ], [ true, %bb.h ], [ true, %bb.e ], [ true, %SDL_ObjectValid.exit.thread ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_UpdateWindowGrab(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 512
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @SDL_GetMouse() #19
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 193
  %i.f = load i8, ptr %i.e, align 1, !range !10, !noundef !11
  %i.g = trunc nuw i8 %i.f to i1
  %.pre = load i64, ptr %i.a, align 8             ; 2 uses
  %i.h = and i64 %.pre, 256
  %.not21 = icmp ne i64 %i.h, 0
  %.0 = select i1 %i.g, i1 true, i1 %.not21
  %i.i = and i64 %.pre, 1048576
  %.not22 = icmp ne i64 %i.i, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.014 = phi i1 [ %.not22, %bb.b ], [ false, %bb.a ] ; 2 uses
  %.1 = phi i1 [ %.0, %bb.b ], [ false, %bb.a ]   ; 2 uses
  %or.cond = or i1 %.014, %.1
  %i.j = load ptr, ptr @_this, align 8            ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 848 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 4 uses
  br i1 %or.cond, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %.not23 = icmp eq ptr %i.l, null
  %.not24 = icmp eq ptr %i.l, %0
  %or.cond31 = or i1 %.not23, %.not24
  br i1 %or.cond31, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, -1048833
  store i64 %i.o, ptr %i.m, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 288
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not25 = icmp eq ptr %i.q, null
  br i1 %.not25, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.k, align 8
  %i.s = tail call zeroext i1 %i.q(ptr noundef nonnull %i.j, ptr noundef %i.r, i1 noundef zeroext false) #19 ; 0 uses
  %.pre32 = load ptr, ptr @_this, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = phi ptr [ %.pre32, %bb.f ], [ %i.j, %bb.e ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 296
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not26 = icmp eq ptr %i.v, null
  br i1 %.not26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 848
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call zeroext i1 %i.v(ptr noundef nonnull %i.t, ptr noundef %i.x, i1 noundef zeroext false) #19 ; 0 uses
  %.pre33 = load ptr, ptr @_this, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d
  %i.z = phi ptr [ %i.t, %bb.g ], [ %.pre33, %bb.h ], [ %i.j, %bb.d ] ; 2 uses
end_hunk_4
begin_hunk_5_@SDL_GetWindowSafeArea_REAL:bb.a
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.f
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread16

SDL_ObjectValid.exit.thread16:                    ; preds = %bb.e, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.i

SDL_ObjectValid.exit.thread:                      ; preds = %bb.f, %SDL_ObjectValid.exit
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %SDL_RectEmpty.exit.thread, label %SDL_RectEmpty.exit

SDL_RectEmpty.exit:                               ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %SDL_RectEmpty.exit.thread, label %bb.h

SDL_RectEmpty.exit.thread:                        ; preds = %bb.g, %SDL_RectEmpty.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i32, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.o, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.r = load i32, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.r, ptr %i.s, align 4
  br label %bb.i

bb.h:                                             ; preds = %SDL_RectEmpty.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %SDL_ObjectValid.exit.thread, %bb.h, %SDL_RectEmpty.exit.thread, %SDL_ObjectValid.exit.thread16, %bb.d
  %.0 = phi i1 [ false, %bb.d ], [ false, %SDL_ObjectValid.exit.thread16 ], [ true, %SDL_RectEmpty.exit.thread ], [ true, %bb.h ], [ true, %SDL_ObjectValid.exit.thread ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_OnWindowMinimized(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 1
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 @SDL_UpdateFullscreenMode(ptr noundef nonnull %0, i32 noundef 0, i1 noundef zeroext false) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @SDL_OnWindowMaximized(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #13 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_OnWindowRestored(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 1
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 @SDL_UpdateFullscreenMode(ptr noundef nonnull %0, i32 noundef 1, i1 noundef zeroext false) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_OnWindowEnter(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8            ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.c(ptr noundef nonnull %i.a, ptr noundef %0) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @SDL_OnWindowLeave(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #13 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_OnWindowFocusGained(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @SDL_GetMouse() #19        ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 193
  %i.c = load i8, ptr %i.b, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @SDL_SetMouseFocus(ptr noundef %0) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  tail call void @SDL_UpdateWindowGrab(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_OnWindowFocusLost(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @SDL_UpdateWindowGrab(ptr noundef %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %SDL_ShouldMinimizeOnFocusLoss.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 271
  %i.e = load i8, ptr %i.d, align 1, !range !10, !noundef !11
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %SDL_ShouldMinimizeOnFocusLoss.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @SDL_GetHint_REAL(ptr noundef nonnull @.str.176) #19 ; 3 uses
  %.not8.i = icmp eq ptr %i.g, null
  br i1 %.not8.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %i.g, align 1
  %.not9.i = icmp eq i8 %i.h, 0
  br i1 %.not9.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @SDL_strcasecmp_REAL(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.177) #19
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %SDL_ShouldMinimizeOnFocusLoss.exit

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 93
  %i.l = load i8, ptr %i.k, align 1, !range !10, !noundef !11
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.g, label %SDL_ShouldMinimizeOnFocusLoss.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr @_this, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 916
  %.val.i = load i32, ptr %i.o, align 4
  %.not.i.i = trunc i32 %.val.i to i1
  br i1 %.not.i.i, label %SDL_ShouldMinimizeOnFocusLoss.exit.thread, label %SDL_ShouldMinimizeOnFocusLoss.exit.thread4

SDL_ShouldMinimizeOnFocusLoss.exit:               ; preds = %bb.e
  %i.p = tail call zeroext i1 @SDL_GetHintBoolean_REAL(ptr noundef nonnull @.str.176, i1 noundef zeroext false) #19
  br i1 %i.p, label %SDL_ShouldMinimizeOnFocusLoss.exit.thread4, label %SDL_ShouldMinimizeOnFocusLoss.exit.thread

SDL_ShouldMinimizeOnFocusLoss.exit.thread4:       ; preds = %bb.g, %SDL_ShouldMinimizeOnFocusLoss.exit
  %i.q = tail call zeroext i1 @SDL_MinimizeWindow_REAL(ptr noundef nonnull %0) ; 0 uses
  br label %SDL_ShouldMinimizeOnFocusLoss.exit.thread

SDL_ShouldMinimizeOnFocusLoss.exit.thread:        ; preds = %bb.f, %bb.g, %bb.b, %bb.a, %SDL_ShouldMinimizeOnFocusLoss.exit.thread4, %SDL_ShouldMinimizeOnFocusLoss.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_GetToplevelForKeyboardFocus() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @SDL_GetKeyboardFocus_REAL() #19 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0 = phi ptr [ %i.c, %.preheader ], [ %i.a, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0, i64 424
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not7 = icmp eq ptr %i.c, null
  br i1 %.not7, label %.loopexit, label %.preheader, !llvm.loop !67

.loopexit:                                        ; preds = %.preheader, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %.0, %.preheader ]
  ret ptr %.1
}

declare ptr @SDL_GetKeyboardFocus_REAL() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_AddWindowRenderer(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = add nsw i32 %i.d, 1
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 3
  %i.h = tail call ptr @SDL_realloc_REAL(ptr noundef %i.b, i64 noundef %i.g) #20 ; 3 uses
  %.not = icmp ne ptr %i.h, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.h, ptr %i.a, align 8
  %i.i = load i32, ptr %i.c, align 4              ; 2 uses
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.c, align 4
  %i.k = sext i32 %i.i to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.k
  store ptr %1, ptr %i.l, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %.not
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @SDL_RemoveWindowRenderer(ptr nofree noundef captures(none) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4              ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %i.g, %1
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.j = add nsw i32 %i.b, -1                     ; 2 uses
  %i.k = icmp sgt i32 %i.j, %i.i
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = xor i32 %i.i, -1
  %i.o = add nsw i32 %i.b, %i.n
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.m, i64 %i.q, i1 false)
  %.pre = load i32, ptr %i.a, align 4
  %.pre25 = add nsw i32 %.pre, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre-phi = phi i32 [ %.pre25, %bb.d ], [ %i.j, %bb.c ]
  store i32 %.pre-phi, ptr %i.a, align 4
  br label %.loopexit

bb.f:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !68

.loopexit:                                        ; preds = %bb.f, %bb.a, %bb.e
  ret void
}

declare ptr @SDL_GetRenderer_REAL(ptr noundef) local_unnamed_addr #2

declare void @SDL_DestroyRendererWithoutFreeing(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @SDL_DestroyWindowTexture(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %SDL_GetWindowProperties_REAL.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %SDL_ObjectValid.exit.thread5.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit.i, label %SDL_ObjectValid.exit.thread.i

SDL_ObjectValid.exit.i:                           ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %1, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.thread.i, label %SDL_ObjectValid.exit.thread5.i

SDL_ObjectValid.exit.thread5.i:                   ; preds = %SDL_ObjectValid.exit.i, %bb.c
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %SDL_GetWindowProperties_REAL.exit

SDL_ObjectValid.exit.thread.i:                    ; preds = %SDL_ObjectValid.exit.i, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %SDL_GetWindowProperties_REAL.exit

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread.i
  %i.j = tail call i32 @SDL_CreateProperties_REAL() #19 ; 2 uses
  store i32 %i.j, ptr %i.g, align 8
  br label %SDL_GetWindowProperties_REAL.exit

SDL_GetWindowProperties_REAL.exit:                ; preds = %bb.b, %SDL_ObjectValid.exit.thread5.i, %SDL_ObjectValid.exit.thread.i, %bb.e
  %.0.i = phi i32 [ 0, %bb.b ], [ 0, %SDL_ObjectValid.exit.thread5.i ], [ %i.j, %bb.e ], [ %i.h, %SDL_ObjectValid.exit.thread.i ] ; 3 uses
  %i.k = tail call zeroext i1 @SDL_HasProperty_REAL(i32 noundef %.0.i, ptr noundef nonnull @.str) #19
  br i1 %i.k, label %bb.f, label %bb.k

bb.f:                                             ; preds = %SDL_GetWindowProperties_REAL.exit
  %i.l = tail call ptr @SDL_GetPointerProperty_REAL(i32 noundef %.0.i, ptr noundef nonnull @.str, ptr noundef null) #19 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @SDL_DestroyTexture_REAL(ptr noundef nonnull %i.n) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.o, null
  br i1 %.not10, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @SDL_DestroyRenderer_REAL(ptr noundef nonnull %i.o) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.q) #19
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.l) #19
  %i.r = tail call zeroext i1 @SDL_ClearProperty_REAL(i32 noundef %.0.i, ptr noundef nonnull @.str) #19 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %SDL_GetWindowProperties_REAL.exit
  ret void
}

declare zeroext i1 @SDL_UpdateMouseCapture(i1 noundef zeroext) local_unnamed_addr #2

declare ptr @SDL_GetMouseFocus_REAL() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_GL_MakeCurrent_REAL(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8            ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %SDL_GL_GetCurrentWindow_REAL.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19
  br label %bb.q

SDL_GL_GetCurrentWindow_REAL.exit:                ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1360
  %i.d = tail call ptr @SDL_GetTLS_REAL(ptr noundef nonnull %i.c) #19
  %i.e = icmp eq ptr %0, %i.d
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %SDL_GL_GetCurrentWindow_REAL.exit
  %i.f = load ptr, ptr @_this, align 8            ; 2 uses
  %.not.i22 = icmp eq ptr %i.f, null
  br i1 %.not.i22, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %SDL_GL_GetCurrentContext_REAL.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 1364
  %i.i = tail call ptr @SDL_GetTLS_REAL(ptr noundef nonnull %i.h) #19
  br label %SDL_GL_GetCurrentContext_REAL.exit

SDL_GL_GetCurrentContext_REAL.exit:               ; preds = %bb.d, %bb.e
  %.0.i23 = phi ptr [ %i.i, %bb.e ], [ null, %bb.d ]
  %i.j = icmp eq ptr %1, %.0.i23
  br i1 %i.j, label %bb.q, label %bb.f

bb.f:                                             ; preds = %SDL_GL_GetCurrentContext_REAL.exit, %SDL_GL_GetCurrentWindow_REAL.exit
  %.not16 = icmp eq ptr %1, null
  br i1 %.not16, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not17 = icmp eq ptr %0, null
  %i.k = load ptr, ptr @_this, align 8            ; 2 uses
  br i1 %.not17, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not18 = icmp eq ptr %i.k, null
  br i1 %.not18, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.l = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.q

bb.j:                                             ; preds = %bb.h
  %i.m = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.j
  %i.o = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.o, label %SDL_ObjectValid.exit.thread, label %bb.k

bb.k:                                             ; preds = %SDL_ObjectValid.exit
  %i.p = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.q

SDL_ObjectValid.exit.thread:                      ; preds = %bb.j, %SDL_ObjectValid.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load i64, ptr %i.q, align 8
  %i.s = and i64 %i.r, 2
  %.not19 = icmp eq i64 %i.s, 0
  br i1 %.not19, label %bb.l, label %bb.o

bb.l:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.t = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.84) #19
  br label %bb.q

bb.m:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 1368
  %i.v = load i8, ptr %i.u, align 8, !range !10, !noundef !11
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.91) #19
  br label %bb.q

bb.o:                                             ; preds = %bb.f, %SDL_ObjectValid.exit.thread, %bb.m
  %.014 = phi ptr [ %0, %SDL_ObjectValid.exit.thread ], [ null, %bb.m ], [ null, %bb.f ] ; 3 uses
  %i.y = load ptr, ptr @_this, align 8            ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 448
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call zeroext i1 %i.aa(ptr noundef %i.y, ptr noundef %.014, ptr noundef %1) #19
  br i1 %i.ab, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ac = load ptr, ptr @_this, align 8           ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1344
  store ptr %.014, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 1352
  store ptr %1, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 1360
  %i.ag = tail call zeroext i1 @SDL_SetTLS_REAL(ptr noundef nonnull %i.af, ptr noundef %.014, ptr noundef null) #19 ; 0 uses
  %i.ah = load ptr, ptr @_this, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1364
  %i.aj = tail call zeroext i1 @SDL_SetTLS_REAL(ptr noundef nonnull %i.ai, ptr noundef %1, ptr noundef null) #19 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %SDL_GL_GetCurrentContext_REAL.exit, %bb.n, %bb.l, %bb.k, %bb.i, %bb.b
  %.0 = phi i1 [ %i.b, %bb.b ], [ true, %SDL_GL_GetCurrentContext_REAL.exit ], [ %i.t, %bb.l ], [ false, %bb.k ], [ false, %bb.i ], [ %i.x, %bb.n ], [ true, %bb.p ], [ false, %bb.o ]
  ret i1 %.0
end_hunk_5
begin_hunk_6_@SDL_GL_GetProcAddress_REAL:bb.a
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.h = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.65) #19 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.66, ptr noundef %i.i) #19 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  %.03 = phi ptr [ null, %bb.b ], [ %i.g, %bb.e ], [ null, %bb.f ], [ null, %bb.g ]
  ret ptr %.03
}

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_EGL_GetProcAddress_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8            ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1680
  %i.d = load ptr, ptr %i.c, align 8
  %.not5 = icmp eq ptr %i.d, null
  br i1 %.not5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @SDL_EGL_GetProcAddressInternal(ptr noundef nonnull %i.a, ptr noundef %0) #19
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.67) #19 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.03 = phi ptr [ null, %bb.b ], [ %i.e, %bb.d ], [ null, %bb.e ]
  ret ptr %.03
}

declare ptr @SDL_EGL_GetProcAddressInternal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_GL_ExtensionSupported_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = tail call ptr @SDL_strchr_REAL(ptr noundef %0, i32 noundef 32) #19
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %SDL_GL_GetProcAddress_REAL.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %SDL_GL_GetProcAddress_REAL.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @SDL_GetHint_REAL(ptr noundef nonnull %0) #19 ; 2 uses
  %.not43 = icmp eq ptr %i.e, null
  br i1 %.not43, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp eq i8 %i.f, 48
  br i1 %i.g, label %SDL_GL_GetProcAddress_REAL.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = load ptr, ptr @_this, align 8            ; 5 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %SDL_GL_GetProcAddress_REAL.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 424
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not6.i = icmp eq ptr %i.k, null
  br i1 %.not6.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 1040
  %i.m = load i32, ptr %i.l, align 8
  %.not7.i = icmp eq i32 %i.m, 0
  br i1 %.not7.i, label %bb.i, label %SDL_GL_GetProcAddress_REAL.exit

bb.i:                                             ; preds = %bb.h
  %i.n = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.65) #19 ; 0 uses
  br label %SDL_GL_GetProcAddress_REAL.exit.thread

bb.j:                                             ; preds = %bb.g
  %i.o = load ptr, ptr %i.h, align 8
  %i.p = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.66, ptr noundef %i.o) #19 ; 0 uses
  br label %SDL_GL_GetProcAddress_REAL.exit.thread

SDL_GL_GetProcAddress_REAL.exit:                  ; preds = %bb.h
  %i.q = tail call ptr %i.k(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.68) #19, !inline_history !20 ; 3 uses
  %.not44 = icmp eq ptr %i.q, null
  br i1 %.not44, label %SDL_GL_GetProcAddress_REAL.exit.thread, label %bb.k

bb.k:                                             ; preds = %SDL_GL_GetProcAddress_REAL.exit
  %i.r = tail call ptr %i.q(i32 noundef 7938) #19 ; 2 uses
  %.not.i48 = icmp eq ptr %i.r, null
  br i1 %.not.i48, label %isAtLeastGL3.exit.thread, label %isAtLeastGL3.exit

isAtLeastGL3.exit:                                ; preds = %bb.k
  %i.s = tail call i32 @SDL_atoi_REAL(ptr noundef nonnull %i.r) #19
  %i.t = icmp sgt i32 %i.s, 2
  br i1 %i.t, label %bb.l, label %isAtLeastGL3.exit.thread

bb.l:                                             ; preds = %isAtLeastGL3.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4
  %i.u = load ptr, ptr @_this, align 8            ; 5 uses
  %.not.i49 = icmp eq ptr %i.u, null
  br i1 %.not.i49, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.v = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %SDL_GL_GetProcAddress_REAL.exit53

bb.n:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 424
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not6.i50 = icmp eq ptr %i.x, null
  br i1 %.not6.i50, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 1040
  %i.z = load i32, ptr %i.y, align 8
  %.not7.i51 = icmp eq i32 %i.z, 0
  br i1 %.not7.i51, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = tail call ptr %i.x(ptr noundef nonnull %i.u, ptr noundef nonnull @.str.69) #19, !inline_history !20
  br label %SDL_GL_GetProcAddress_REAL.exit53

bb.q:                                             ; preds = %bb.o
  %i.ab = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.65) #19 ; 0 uses
  br label %SDL_GL_GetProcAddress_REAL.exit53

bb.r:                                             ; preds = %bb.n
  %i.ac = load ptr, ptr %i.u, align 8
  %i.ad = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.66, ptr noundef %i.ac) #19 ; 0 uses
  br label %SDL_GL_GetProcAddress_REAL.exit53

SDL_GL_GetProcAddress_REAL.exit53:                ; preds = %bb.m, %bb.p, %bb.q, %bb.r
  %.03.i52 = phi ptr [ null, %bb.m ], [ %i.aa, %bb.p ], [ null, %bb.q ], [ null, %bb.r ] ; 2 uses
  %i.ae = load ptr, ptr @_this, align 8           ; 5 uses
  %.not.i54 = icmp eq ptr %i.ae, null
  br i1 %.not.i54, label %bb.s, label %bb.t

bb.s:                                             ; preds = %SDL_GL_GetProcAddress_REAL.exit53
  %i.af = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %SDL_GL_GetProcAddress_REAL.exit58.thread

bb.t:                                             ; preds = %SDL_GL_GetProcAddress_REAL.exit53
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 424
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not6.i55 = icmp eq ptr %i.ah, null
  br i1 %.not6.i55, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 1040
  %i.aj = load i32, ptr %i.ai, align 8
  %.not7.i56 = icmp eq i32 %i.aj, 0
  br i1 %.not7.i56, label %bb.v, label %SDL_GL_GetProcAddress_REAL.exit58

bb.v:                                             ; preds = %bb.u
  %i.ak = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.65) #19 ; 0 uses
  br label %SDL_GL_GetProcAddress_REAL.exit58.thread

bb.w:                                             ; preds = %bb.t
  %i.al = load ptr, ptr %i.ae, align 8
  %i.am = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.66, ptr noundef %i.al) #19 ; 0 uses
  br label %SDL_GL_GetProcAddress_REAL.exit58.thread

SDL_GL_GetProcAddress_REAL.exit58:                ; preds = %bb.u
  %i.an = tail call ptr %i.ah(ptr noundef nonnull %i.ae, ptr noundef nonnull @.str.70) #19, !inline_history !20 ; 2 uses
  %i.ao = icmp ne ptr %.03.i52, null
  %i.ap = icmp ne ptr %i.an, null
  %or.cond = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond, label %bb.x, label %SDL_GL_GetProcAddress_REAL.exit58.thread

bb.x:                                             ; preds = %SDL_GL_GetProcAddress_REAL.exit58
  call void %i.an(i32 noundef 33309, ptr noundef nonnull %i.a) #19
  %i.aq = load i32, ptr %i.a, align 4
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph, label %SDL_GL_GetProcAddress_REAL.exit58.thread

bb.y:                                             ; preds = %.lr.ph
  %i.as = add nuw nsw i32 %.063, 1                ; 2 uses
  %i.at = load i32, ptr %i.a, align 4
  %i.au = icmp slt i32 %i.as, %i.at
  br i1 %i.au, label %.lr.ph, label %SDL_GL_GetProcAddress_REAL.exit58.thread, !llvm.loop !69

.lr.ph:                                           ; preds = %bb.x, %bb.y
  %.063 = phi i32 [ %i.as, %bb.y ], [ 0, %bb.x ]  ; 2 uses
  %i.av = call ptr %.03.i52(i32 noundef 7939, i32 noundef %.063) #19
  %i.aw = call i32 @SDL_strcmp_REAL(ptr noundef %i.av, ptr noundef nonnull %0) #19
  %.not47 = icmp eq i32 %i.aw, 0                  ; 3 uses
  br i1 %.not47, label %SDL_GL_GetProcAddress_REAL.exit58.thread, label %bb.y

SDL_GL_GetProcAddress_REAL.exit58.thread:         ; preds = %.lr.ph, %bb.y, %bb.x, %bb.w, %bb.v, %bb.s, %SDL_GL_GetProcAddress_REAL.exit58
  %.2 = phi i1 [ false, %bb.v ], [ false, %SDL_GL_GetProcAddress_REAL.exit58 ], [ false, %bb.w ], [ false, %bb.s ], [ false, %bb.x ], [ %.not47, %bb.y ], [ %.not47, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %SDL_GL_GetProcAddress_REAL.exit.thread

isAtLeastGL3.exit.thread:                         ; preds = %bb.k, %isAtLeastGL3.exit
  %i.ax = tail call ptr %i.q(i32 noundef 7939) #19 ; 3 uses
  %.not45 = icmp eq ptr %i.ax, null
  br i1 %.not45, label %SDL_GL_GetProcAddress_REAL.exit.thread, label %.preheader

.preheader:                                       ; preds = %isAtLeastGL3.exit.thread
  %i.ay = tail call ptr @SDL_strstr_REAL(ptr noundef nonnull %i.ax, ptr noundef nonnull %0) #19 ; 2 uses
  %.not4666 = icmp eq ptr %i.ay, null
  br i1 %.not4666, label %SDL_GL_GetProcAddress_REAL.exit.thread, label %.lr.ph67

.lr.ph67:                                         ; preds = %.preheader, %bb.ab
  %i.az = phi ptr [ %i.bh, %bb.ab ], [ %i.ay, %.preheader ] ; 3 uses
  %i.ba = tail call i64 @SDL_strlen_REAL(ptr noundef nonnull %0) #19
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ba ; 2 uses
  %i.bc = icmp eq ptr %i.az, %i.ax
  br i1 %i.bc, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph67
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 -1
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = icmp eq i8 %i.be, 32
  br i1 %i.bf, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z, %.lr.ph67
  %i.bg = load i8, ptr %i.bb, align 1
  switch i8 %i.bg, label %bb.ab [
    i8 32, label %SDL_GL_GetProcAddress_REAL.exit.thread
    i8 0, label %SDL_GL_GetProcAddress_REAL.exit.thread
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bh = tail call ptr @SDL_strstr_REAL(ptr noundef nonnull %i.bb, ptr noundef nonnull %0) #19 ; 2 uses
  %.not46 = icmp eq ptr %i.bh, null
  br i1 %.not46, label %SDL_GL_GetProcAddress_REAL.exit.thread, label %.lr.ph67

SDL_GL_GetProcAddress_REAL.exit.thread:           ; preds = %bb.aa, %bb.aa, %bb.ab, %.preheader, %bb.j, %bb.i, %bb.f, %isAtLeastGL3.exit.thread, %SDL_GL_GetProcAddress_REAL.exit, %bb.d, %bb.a, %bb.b, %SDL_GL_GetProcAddress_REAL.exit58.thread
  %.3 = phi i1 [ false, %bb.d ], [ false, %bb.a ], [ %.2, %SDL_GL_GetProcAddress_REAL.exit58.thread ], [ false, %isAtLeastGL3.exit.thread ], [ false, %bb.f ], [ false, %SDL_GL_GetProcAddress_REAL.exit ], [ false, %bb.b ], [ false, %bb.i ], [ false, %bb.j ], [ false, %.preheader ], [ true, %bb.aa ], [ true, %bb.aa ], [ false, %bb.ab ]
  ret i1 %.3
}

declare ptr @SDL_strstr_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @SDL_GL_DeduceMaxSupportedESProfile(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @SDL_GL_ExtensionSupported_REAL(ptr noundef nonnull @.str.71)
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @SDL_GL_ExtensionSupported_REAL(ptr noundef nonnull @.str.72)
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @SDL_GL_ExtensionSupported_REAL(ptr noundef nonnull @.str.73)
  %. = select i1 %i.c, i32 3, i32 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sink8 = phi i32 [ 3, %bb.a ], [ 3, %bb.b ], [ %., %bb.c ]
  %.sink = phi i32 [ 2, %bb.a ], [ 1, %bb.b ], [ 0, %bb.c ]
  store i32 %.sink8, ptr %0, align 4
  store i32 %.sink, ptr %1, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @SDL_EGL_SetAttributeCallbacks_REAL(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #15 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8            ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1312
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1320
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1328
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1336
  store ptr %3, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_GL_SetAttribute_REAL(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8            ; 29 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19
  br label %bb.ak

bb.c:                                             ; preds = %bb.a
  switch i32 %0, label %bb.aj [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 5, label %bb.h
    i32 4, label %bb.i
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 8, label %bb.l
    i32 9, label %bb.m
    i32 10, label %bb.n
    i32 11, label %bb.o
    i32 12, label %bb.p
    i32 13, label %bb.q
    i32 14, label %bb.r
    i32 26, label %bb.s
    i32 15, label %bb.t
    i32 16, label %bb.u
    i32 17, label %bb.v
    i32 18, label %bb.w
    i32 19, label %bb.x
    i32 20, label %bb.aa
    i32 21, label %bb.ad
    i32 22, label %bb.ae
    i32 23, label %bb.af
    i32 24, label %bb.ag
    i32 25, label %bb.ah
    i32 27, label %bb.ai
  ]

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 928
  store i32 %1, ptr %i.c, align 8
  br label %bb.ak

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 932
  store i32 %1, ptr %i.d, align 4
  br label %bb.ak

bb.f:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 936
  store i32 %1, ptr %i.e, align 8
  br label %bb.ak

bb.g:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 940
  store i32 %1, ptr %i.f, align 4
  br label %bb.ak

bb.h:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 956
  store i32 %1, ptr %i.g, align 4
  br label %bb.ak

bb.i:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 948
  store i32 %1, ptr %i.h, align 4
  br label %bb.ak

bb.j:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 944
  store i32 %1, ptr %i.i, align 8
  br label %bb.ak

bb.k:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 952
  store i32 %1, ptr %i.j, align 8
  br label %bb.ak

bb.l:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 960
  store i32 %1, ptr %i.k, align 8
  br label %bb.ak

bb.m:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 964
  store i32 %1, ptr %i.l, align 4
  br label %bb.ak

bb.n:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 968
  store i32 %1, ptr %i.m, align 8
  br label %bb.ak

bb.o:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 972
end_hunk_6
begin_hunk_7_@SDL_ShowMessageBox_REAL:bb.a
bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @KMSDRM_bootstrap, i64 24), align 8
  %.not125.3 = icmp eq ptr %i.bu, null
  br i1 %.not125.3, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bv = load ptr, ptr @KMSDRM_bootstrap, align 8
  %i.bw = call i64 @SDL_strlen_REAL(ptr noundef %i.bv) #19
  %i.bx = icmp eq i64 %i.av, %i.bw
  br i1 %i.bx, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.by = load ptr, ptr @KMSDRM_bootstrap, align 8
  %i.bz = call i32 @SDL_strncasecmp_REAL(ptr noundef %i.by, ptr noundef nonnull %.076149, i64 noundef %i.av) #19
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.y, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.cb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @OFFSCREEN_bootstrap, i64 24), align 8
  %.not125.4 = icmp eq ptr %i.cb, null
  br i1 %.not125.4, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cc = load ptr, ptr @OFFSCREEN_bootstrap, align 8
  %i.cd = call i64 @SDL_strlen_REAL(ptr noundef %i.cc) #19
  %i.ce = icmp eq i64 %i.av, %i.cd
  br i1 %i.ce, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.cf = load ptr, ptr @OFFSCREEN_bootstrap, align 8
  %i.cg = call i32 @SDL_strncasecmp_REAL(ptr noundef %i.cf, ptr noundef nonnull %.076149, i64 noundef %i.av) #19
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.y, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @DUMMY_bootstrap, i64 24), align 8
  %.not125.5 = icmp eq ptr %i.ci, null
  br i1 %.not125.5, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cj = load ptr, ptr @DUMMY_bootstrap, align 8
  %i.ck = call i64 @SDL_strlen_REAL(ptr noundef %i.cj) #19
  %i.cl = icmp eq i64 %i.av, %i.ck
  br i1 %i.cl, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.cm = load ptr, ptr @DUMMY_bootstrap, align 8
  %i.cn = call i32 @SDL_strncasecmp_REAL(ptr noundef %i.cm, ptr noundef nonnull %.076149, i64 noundef %i.av) #19
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.y, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %i.cp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @DUMMY_evdev_bootstrap, i64 24), align 8
  %.not125.6 = icmp eq ptr %i.cp, null
  br i1 %.not125.6, label %select.unfold, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cq = load ptr, ptr @DUMMY_evdev_bootstrap, align 8
  %i.cr = call i64 @SDL_strlen_REAL(ptr noundef %i.cq) #19
  %i.cs = icmp eq i64 %i.av, %i.cr
  br i1 %i.cs, label %bb.aq, label %select.unfold

bb.aq:                                            ; preds = %bb.ap
  %i.ct = load ptr, ptr @DUMMY_evdev_bootstrap, align 8
  %i.cu = call i32 @SDL_strncasecmp_REAL(ptr noundef %i.ct, ptr noundef nonnull %.076149, i64 noundef %i.av) #19
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.y, label %select.unfold

select.unfold:                                    ; preds = %bb.ao, %bb.ap, %bb.aq, %bb.y
  %.2 = phi i8 [ %spec.select130, %bb.y ], [ 0, %bb.aq ], [ 0, %bb.ap ], [ 0, %bb.ao ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  br i1 %.not123, label %select.unfold._crit_edge, label %select.unfold.preheader

select.unfold._crit_edge:                         ; preds = %select.unfold
  %.pre = trunc nuw i8 %.2 to i1
  br i1 %.pre, label %.thread141, label %.thread143

bb.ar:                                            ; preds = %bb.r, %bb.q
  %i.cx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @Wayland_preferred_bootstrap, i64 24), align 8 ; 2 uses
  %.not120 = icmp eq ptr %i.cx, null
  br i1 %.not120, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cy = call zeroext i1 %i.cx(ptr noundef nonnull %2, ptr noundef nonnull %spec.store.select) #19
  br i1 %i.cy, label %.thread141, label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @X11_bootstrap, i64 24), align 8 ; 2 uses
  %.not120.1 = icmp eq ptr %i.cz, null
  br i1 %.not120.1, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.da = call zeroext i1 %i.cz(ptr noundef nonnull %2, ptr noundef nonnull %spec.store.select) #19
  br i1 %i.da, label %.thread141, label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @Wayland_bootstrap, i64 24), align 8 ; 2 uses
  %.not120.2 = icmp eq ptr %i.db, null
  br i1 %.not120.2, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dc = call zeroext i1 %i.db(ptr noundef nonnull %2, ptr noundef nonnull %spec.store.select) #19
  br i1 %i.dc, label %.thread141, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @KMSDRM_bootstrap, i64 24), align 8 ; 2 uses
  %.not120.3 = icmp eq ptr %i.dd, null
  br i1 %.not120.3, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.de = call zeroext i1 %i.dd(ptr noundef nonnull %2, ptr noundef nonnull %spec.store.select) #19
  br i1 %i.de, label %.thread141, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @OFFSCREEN_bootstrap, i64 24), align 8 ; 2 uses
  %.not120.4 = icmp eq ptr %i.df, null
  br i1 %.not120.4, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dg = call zeroext i1 %i.df(ptr noundef nonnull %2, ptr noundef nonnull %spec.store.select) #19
  br i1 %i.dg, label %.thread141, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @DUMMY_bootstrap, i64 24), align 8 ; 2 uses
  %.not120.5 = icmp eq ptr %i.dh, null
  br i1 %.not120.5, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.di = call zeroext i1 %i.dh(ptr noundef nonnull %2, ptr noundef nonnull %spec.store.select) #19
  br i1 %i.di, label %.thread141, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.dj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @DUMMY_evdev_bootstrap, i64 24), align 8 ; 2 uses
  %.not120.6 = icmp eq ptr %i.dj, null
  br i1 %.not120.6, label %.thread143, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dk = call zeroext i1 %i.dj(ptr noundef nonnull %2, ptr noundef nonnull %spec.store.select) #19
  br i1 %i.dk, label %.thread141, label %.thread143

split:                                            ; preds = %select.unfold.preheader
  br i1 %i.ap, label %.thread141, label %.thread143

.thread143:                                       ; preds = %select.unfold._crit_edge, %bb.bd, %bb.be, %.split, %split
  %i.dl = call ptr @SDL_GetError_REAL() #19
  %i.dm = load i8, ptr %i.dl, align 1
  %.not126 = icmp eq i8 %i.dm, 0
  br i1 %.not126, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.thread143
  %i.dn = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.108) #19 ; 0 uses
  br label %bb.bg

.thread141:                                       ; preds = %bb.as, %bb.au, %bb.aw, %bb.ay, %bb.ba, %bb.bc, %bb.be, %select.unfold._crit_edge, %.split, %split
  %i.do = call zeroext i1 @SDL_ClearError_REAL() #19 ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %.thread143, %bb.bf, %.thread141
  %.5138 = phi i1 [ false, %.thread143 ], [ false, %bb.bf ], [ true, %.thread141 ] ; 2 uses
  %i.dp = call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull @SDL_messagebox_count, i32 noundef -1) #19 ; 0 uses
  %.not127 = icmp eq ptr %i.z, null
  br i1 %.not127, label %SDL_RaiseWindow_REAL.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.dq = load ptr, ptr @_this, align 8
  %.not.i = icmp eq ptr %i.dq, null
  br i1 %.not.i, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.dr = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %SDL_RaiseWindow_REAL.exit

bb.bj:                                            ; preds = %bb.bh
  %i.ds = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %SDL_ObjectValid.exit.i, label %SDL_ObjectValid.exit.thread.i

SDL_ObjectValid.exit.i:                           ; preds = %bb.bj
  %i.du = call zeroext i1 @SDL_FindObject(ptr noundef nonnull %i.z, i32 noundef 1) #19
  br i1 %i.du, label %SDL_ObjectValid.exit.thread.i, label %SDL_ObjectValid.exit.thread8.i

SDL_ObjectValid.exit.thread8.i:                   ; preds = %SDL_ObjectValid.exit.i
  %i.dv = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %SDL_RaiseWindow_REAL.exit

SDL_ObjectValid.exit.thread.i:                    ; preds = %SDL_ObjectValid.exit.i, %bb.bj
  %i.dw = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.dx = load i64, ptr %i.dw, align 8
  %i.dy = and i64 %i.dx, 8
  %.not5.i = icmp eq i64 %i.dy, 0
  br i1 %.not5.i, label %bb.bk, label %SDL_RaiseWindow_REAL.exit

bb.bk:                                            ; preds = %SDL_ObjectValid.exit.thread.i
  %i.dz = load ptr, ptr @_this, align 8           ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 200
  %i.eb = load ptr, ptr %i.ea, align 8            ; 2 uses
  %.not6.i = icmp eq ptr %i.eb, null
  br i1 %.not6.i, label %SDL_RaiseWindow_REAL.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void %i.eb(ptr noundef nonnull %i.dz, ptr noundef nonnull %i.z) #19, !inline_history !70
  br label %SDL_RaiseWindow_REAL.exit

SDL_RaiseWindow_REAL.exit:                        ; preds = %bb.bl, %bb.bk, %SDL_ObjectValid.exit.thread.i, %SDL_ObjectValid.exit.thread8.i, %bb.bi, %bb.bg
  br i1 %i.ac, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %SDL_RaiseWindow_REAL.exit
  %i.ec = call zeroext i1 @SDL_HideCursor_REAL() #19 ; 0 uses
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %SDL_RaiseWindow_REAL.exit
  %i.ed = call zeroext i1 @SDL_UpdateRelativeMouseMode() #19 ; 0 uses
  %i.ee = call zeroext i1 @SDL_UpdateMouseCapture(i1 noundef zeroext false) #19 ; 0 uses
  br i1 %.079, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @SDL_free_REAL(ptr noundef %.077) #19
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  br i1 %.080, label %.critedge129, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @SDL_free_REAL(ptr noundef %.078) #19
  br label %.critedge129

.critedge129:                                     ; preds = %bb.l, %bb.m, %bb.bp, %bb.bq, %bb.g, %bb.d, %bb.b
  %.488 = phi i1 [ %i.f, %bb.d ], [ %i.b, %bb.b ], [ %.5138, %bb.bq ], [ %.5138, %bb.bp ], [ false, %bb.g ], [ false, %bb.m ], [ false, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i1 %.488
}

declare i32 @SDL_AddAtomicInt_REAL(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_SetRelativeMouseMode(i1 noundef zeroext) local_unnamed_addr #2

declare zeroext i1 @SDL_CursorVisible_REAL() local_unnamed_addr #2

declare zeroext i1 @SDL_ShowCursor_REAL() local_unnamed_addr #2

declare void @SDL_ResetKeyboard_REAL() local_unnamed_addr #2

declare zeroext i1 @SDL_HideCursor_REAL() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_ShowSimpleMessageBox_REAL(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.SDL_MessageBoxData, align 8 ; 10 uses
  %5 = alloca %struct.SDL_MessageBoxButtonData, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  store i32 %0, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %5, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.e, align 8
  store i64 0, ptr %5, align 8
  store i32 3, ptr %5, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.109, ptr %i.f, align 8
  %i.g = call zeroext i1 @SDL_ShowMessageBox_REAL(ptr noundef nonnull %4, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret i1 %i.g
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_ShouldAllowTopmost() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @SDL_GetHintBoolean_REAL(ptr noundef nonnull @.str.110, i1 noundef zeroext true) #19
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_ShowWindowSystemMenu_REAL(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread9, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread9

SDL_ObjectValid.exit.thread9:                     ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.i

SDL_ObjectValid.exit.thread:                      ; preds = %bb.d, %SDL_ObjectValid.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 786432
  %.not6 = icmp eq i64 %i.i, 0
  br i1 %.not6, label %bb.f, label %bb.e

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.j = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.23) #19 ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.k = load ptr, ptr @_this, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 776
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not7 = icmp eq ptr %i.m, null
  br i1 %.not7, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void %i.m(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) #19
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.n = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.25) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %SDL_ObjectValid.exit.thread9, %bb.b
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.g ], [ %i.n, %bb.h ], [ false, %SDL_ObjectValid.exit.thread9 ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SetWindowHitTest_REAL(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8            ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread10, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.SDL_ObjectValid.exit.thread_crit_edge, label %SDL_ObjectValid.exit.thread10

SDL_ObjectValid.exit.SDL_ObjectValid.exit.thread_crit_edge: ; preds = %SDL_ObjectValid.exit
  %.pre = load ptr, ptr @_this, align 8
  br label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit.thread10:                    ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.g

SDL_ObjectValid.exit.thread:                      ; preds = %SDL_ObjectValid.exit.SDL_ObjectValid.exit.thread_crit_edge, %bb.d
  %i.g = phi ptr [ %.pre, %SDL_ObjectValid.exit.SDL_ObjectValid.exit.thread_crit_edge ], [ %i.a, %bb.d ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 760 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %.not8 = icmp eq ptr %i.i, null
  br i1 %.not8, label %bb.e, label %bb.f

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.j = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.25) #19
  br label %bb.g

bb.f:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr %1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %2, ptr %i.l, align 8
  %i.m = load ptr, ptr %i.h, align 8
  %i.n = icmp ne ptr %1, null
  %i.o = tail call zeroext i1 %i.m(ptr noundef nonnull %0, i1 noundef zeroext %i.n) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %SDL_ObjectValid.exit.thread10, %bb.b
  %.0 = phi i1 [ %i.o, %bb.f ], [ %i.j, %bb.e ], [ false, %SDL_ObjectValid.exit.thread10 ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SetWindowShape_REAL(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %SDL_GetWindowProperties_REAL.exit.thread

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread24, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread24

SDL_ObjectValid.exit.thread24:                    ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %SDL_GetWindowProperties_REAL.exit.thread

SDL_ObjectValid.exit.thread:                      ; preds = %bb.d, %SDL_ObjectValid.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 1073741824
  %.not16 = icmp eq i64 %i.i, 0
  br i1 %.not16, label %bb.e, label %bb.f

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.j = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.111) #19
  br label %SDL_GetWindowProperties_REAL.exit.thread

bb.f:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.k = load ptr, ptr @_this, align 8
  %.not.i21 = icmp eq ptr %i.k, null
  br i1 %.not.i21, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %SDL_GetWindowProperties_REAL.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.m = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %SDL_ObjectValid.exit.i, label %SDL_ObjectValid.exit.thread.i

SDL_ObjectValid.exit.i:                           ; preds = %bb.h
  %i.o = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.o, label %SDL_ObjectValid.exit.thread.i, label %SDL_ObjectValid.exit.thread5.i

SDL_ObjectValid.exit.thread5.i:                   ; preds = %SDL_ObjectValid.exit.i
  %i.p = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %SDL_GetWindowProperties_REAL.exit.thread

SDL_ObjectValid.exit.thread.i:                    ; preds = %SDL_ObjectValid.exit.i, %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %SDL_GetWindowProperties_REAL.exit, label %SDL_GetWindowProperties_REAL.exit.thread28

SDL_GetWindowProperties_REAL.exit:                ; preds = %SDL_ObjectValid.exit.thread.i
  %i.t = tail call i32 @SDL_CreateProperties_REAL() #19 ; 3 uses
  store i32 %i.t, ptr %i.q, align 8
  %.not17 = icmp eq i32 %i.t, 0
  br i1 %.not17, label %SDL_GetWindowProperties_REAL.exit.thread, label %SDL_GetWindowProperties_REAL.exit.thread28

SDL_GetWindowProperties_REAL.exit.thread28:       ; preds = %SDL_ObjectValid.exit.thread.i, %SDL_GetWindowProperties_REAL.exit
  %.0.i2231 = phi i32 [ %i.t, %SDL_GetWindowProperties_REAL.exit ], [ %i.r, %SDL_ObjectValid.exit.thread.i ]
  %.not18 = icmp eq ptr %1, null
  br i1 %.not18, label %bb.j, label %bb.i

bb.i:                                             ; preds = %SDL_GetWindowProperties_REAL.exit.thread28
  %i.u = tail call ptr @SDL_ConvertSurface_REAL(ptr noundef nonnull %1, i32 noundef 377888772) #19 ; 2 uses
  %.not19 = icmp eq ptr %i.u, null
  br i1 %.not19, label %SDL_GetWindowProperties_REAL.exit.thread, label %bb.j

bb.j:                                             ; preds = %SDL_GetWindowProperties_REAL.exit.thread28, %bb.i
  %.0 = phi ptr [ %i.u, %bb.i ], [ null, %SDL_GetWindowProperties_REAL.exit.thread28 ] ; 2 uses
  %i.v = tail call zeroext i1 @SDL_SetSurfaceProperty(i32 noundef %.0.i2231, ptr noundef nonnull @.str.63, ptr noundef %.0) #19
  br i1 %i.v, label %bb.k, label %SDL_GetWindowProperties_REAL.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.w = load ptr, ptr @_this, align 8            ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 360
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not20 = icmp eq ptr %i.y, null
  br i1 %.not20, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = tail call zeroext i1 %i.y(ptr noundef nonnull %i.w, ptr noundef nonnull %0, ptr noundef %.0) #19
  br i1 %i.z, label %bb.m, label %SDL_GetWindowProperties_REAL.exit.thread

bb.m:                                             ; preds = %bb.l, %bb.k
  br label %SDL_GetWindowProperties_REAL.exit.thread

SDL_GetWindowProperties_REAL.exit.thread:         ; preds = %SDL_ObjectValid.exit.thread5.i, %bb.g, %bb.l, %bb.j, %bb.i, %SDL_GetWindowProperties_REAL.exit, %bb.m, %bb.e, %SDL_ObjectValid.exit.thread24, %bb.b
  %.011 = phi i1 [ true, %bb.m ], [ false, %bb.j ], [ false, %bb.i ], [ false, %SDL_GetWindowProperties_REAL.exit ], [ false, %bb.b ], [ %i.j, %bb.e ], [ false, %SDL_ObjectValid.exit.thread24 ], [ false, %bb.l ], [ false, %bb.g ], [ false, %SDL_ObjectValid.exit.thread5.i ]
  ret i1 %.011
}

declare zeroext i1 @SDL_SetSurfaceProperty(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @SDL_OnApplicationWillTerminate_REAL() local_unnamed_addr #0 {
bb.a:
  tail call void @SDL_SendAppEvent(i32 noundef 257) #19
  ret void
}

declare void @SDL_SendAppEvent(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @SDL_OnApplicationDidReceiveMemoryWarning_REAL() local_unnamed_addr #0 {
bb.a:
  tail call void @SDL_SendAppEvent(i32 noundef 258) #19
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_OnApplicationWillEnterBackground_REAL() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8            ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 840
  %.05 = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not46 = icmp eq ptr %.05, null
  br i1 %.not46, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.07 = phi ptr [ %.0, %.lr.ph ], [ %.05, %bb.b ] ; 2 uses
  %i.c = tail call zeroext i1 @SDL_SendWindowEvent(ptr noundef nonnull %.07, i32 noundef 521, i32 noundef 0, i32 noundef 0) #19 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.07, i64 416
  %.0 = load ptr, ptr %i.d, align 8               ; 2 uses
  %.not4 = icmp eq ptr %.0, null
  br i1 %.not4, label %._crit_edge, label %.lr.ph, !llvm.loop !71

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.e = tail call zeroext i1 @SDL_SetKeyboardFocus(ptr noundef null) #19 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  tail call void @SDL_SendAppEvent(i32 noundef 259) #19
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_OnApplicationDidEnterBackground_REAL() local_unnamed_addr #0 {
bb.a:
  tail call void @SDL_SendAppEvent(i32 noundef 260) #19
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_OnApplicationWillEnterForeground_REAL() local_unnamed_addr #0 {
bb.a:
  tail call void @SDL_SendAppEvent(i32 noundef 261) #19
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_OnApplicationDidEnterForeground_REAL() local_unnamed_addr #0 {
bb.a:
  tail call void @SDL_SendAppEvent(i32 noundef 262) #19
  %i.a = load ptr, ptr @_this, align 8            ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 840
  %.06 = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not57 = icmp eq ptr %.06, null
  br i1 %.not57, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.08 = phi ptr [ %.0, %.lr.ph ], [ %.06, %bb.b ] ; 3 uses
  %i.c = tail call zeroext i1 @SDL_SetKeyboardFocus(ptr noundef nonnull %.08) #19 ; 0 uses
  %i.d = tail call zeroext i1 @SDL_SendWindowEvent(ptr noundef nonnull %.08, i32 noundef 523, i32 noundef 0, i32 noundef 0) #19 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.08, i64 416
  %.0 = load ptr, ptr %i.e, align 8               ; 2 uses
  %.not5 = icmp eq ptr %.0, null
  br i1 %.not5, label %.loopexit, label %.lr.ph, !llvm.loop !72

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_Vulkan_GetVkGetInstanceProcAddr_REAL() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8            ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1392
  %i.d = load i32, ptr %i.c, align 8
  %.not2 = icmp eq i32 %i.d, 0
  br i1 %.not2, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.113) #19 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1376
  %i.g = load ptr, ptr %i.f, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ %i.g, %bb.e ], [ null, %bb.d ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_Vulkan_GetInstanceExtensions_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8            ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 520
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr %i.c(ptr noundef %i.a, ptr noundef %0) #19
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_Vulkan_CreateSurface_REAL(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8            ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread24, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.SDL_ObjectValid.exit.thread_crit_edge, label %SDL_ObjectValid.exit.thread24

SDL_ObjectValid.exit.SDL_ObjectValid.exit.thread_crit_edge: ; preds = %SDL_ObjectValid.exit
  %.pre = load ptr, ptr @_this, align 8
  br label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit.thread24:                    ; preds = %bb.c, %SDL_ObjectValid.exit
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %bb.u

SDL_ObjectValid.exit.thread:                      ; preds = %SDL_ObjectValid.exit.SDL_ObjectValid.exit.thread_crit_edge, %bb.d
  %i.g = phi ptr [ %.pre, %SDL_ObjectValid.exit.SDL_ObjectValid.exit.thread_crit_edge ], [ %i.a, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 528
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not16 = icmp eq ptr %i.i, null
  br i1 %.not16, label %bb.e, label %bb.f

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.j = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.25) #19 ; 0 uses
  br label %bb.u

bb.f:                                             ; preds = %SDL_ObjectValid.exit.thread
  %.not17 = icmp eq ptr %1, null
  br i1 %.not17, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.114) #19
  br label %bb.u

bb.h:                                             ; preds = %bb.f
  %.not18 = icmp eq ptr %3, null
  br i1 %.not18, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.l = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.115) #19
  br label %bb.u

bb.j:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.n = load i64, ptr %i.m, align 8              ; 4 uses
  %i.o = and i64 %i.n, 268435456
  %.not19 = icmp eq i64 %i.o, 0
  br i1 %.not19, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.p = and i64 %i.n, 2
  %.not20 = icmp eq i64 %i.p, 0
  br i1 %.not20, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = and i64 %i.n, -268435459
  store i64 %i.q, ptr %i.m, align 8
  tail call void @SDL_GL_UnloadLibrary_REAL()
  %.pre29 = load i64, ptr %i.m, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.r = phi i64 [ %.pre29, %bb.l ], [ %i.n, %bb.k ] ; 2 uses
  %i.s = and i64 %i.r, 536870912
  %.not21 = icmp eq i64 %i.s, 0
  br i1 %.not21, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.t = and i64 %i.r, -536870913
  store i64 %i.t, ptr %i.m, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.u = load ptr, ptr @_this, align 8            ; 6 uses
  %.not.i22 = icmp eq ptr %i.u, null
  br i1 %.not.i22, label %SDL_Vulkan_LoadLibrary_REAL.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1392
  %i.w = load i32, ptr %i.v, align 8              ; 2 uses
  %.not9.i = icmp eq i32 %i.w, 0
  br i1 %.not9.i, label %bb.q, label %SDL_Vulkan_LoadLibrary_REAL.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 504
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not10.i = icmp eq ptr %i.y, null
  br i1 %.not10.i, label %.split, label %bb.r

.split:                                           ; preds = %bb.q
  %i.z = load ptr, ptr %i.u, align 8
  %i.aa = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.38, ptr noundef %i.z) #19
  br i1 %i.aa, label %bb.s, label %SDL_Vulkan_LoadLibrary_REAL.exit.thread27

bb.r:                                             ; preds = %bb.q
  %i.ab = tail call zeroext i1 %i.y(ptr noundef nonnull %i.u, ptr noundef null) #19, !inline_history !19
  br i1 %i.ab, label %.SDL_Vulkan_LoadLibrary_REAL.exit.thread_crit_edge, label %SDL_Vulkan_LoadLibrary_REAL.exit.thread27

.SDL_Vulkan_LoadLibrary_REAL.exit.thread_crit_edge: ; preds = %bb.r
  %.pre30 = load ptr, ptr @_this, align 8         ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre30, i64 1392
  %.pre31 = load i32, ptr %.phi.trans.insert, align 8
  br label %SDL_Vulkan_LoadLibrary_REAL.exit.thread

SDL_Vulkan_LoadLibrary_REAL.exit.thread:          ; preds = %.SDL_Vulkan_LoadLibrary_REAL.exit.thread_crit_edge, %bb.p
  %i.ac = phi i32 [ %.pre31, %.SDL_Vulkan_LoadLibrary_REAL.exit.thread_crit_edge ], [ %i.w, %bb.p ]
  %i.ad = phi ptr [ %.pre30, %.SDL_Vulkan_LoadLibrary_REAL.exit.thread_crit_edge ], [ %i.u, %bb.p ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1392
  %i.af = add nsw i32 %i.ac, 1
  store i32 %i.af, ptr %i.ae, align 8
  br label %bb.s

SDL_Vulkan_LoadLibrary_REAL.exit:                 ; preds = %bb.o
  %i.ag = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19
  br i1 %i.ag, label %bb.s, label %SDL_Vulkan_LoadLibrary_REAL.exit.thread27

bb.s:                                             ; preds = %.split, %SDL_Vulkan_LoadLibrary_REAL.exit.thread, %SDL_Vulkan_LoadLibrary_REAL.exit
  %i.ah = load i64, ptr %i.m, align 8
  %i.ai = or i64 %i.ah, 268435456
  store i64 %i.ai, ptr %i.m, align 8
  %.pre32 = load ptr, ptr @_this, align 8         ; 2 uses
  %.phi.trans.insert33 = getelementptr inbounds nuw i8, ptr %.pre32, i64 528
  %.pre34 = load ptr, ptr %.phi.trans.insert33, align 8
  br label %bb.t

SDL_Vulkan_LoadLibrary_REAL.exit.thread27:        ; preds = %bb.r, %.split, %SDL_Vulkan_LoadLibrary_REAL.exit
  %i.aj = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.116) #19
  br label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.j
  %i.ak = phi ptr [ %.pre34, %bb.s ], [ %i.i, %bb.j ]
  %i.al = phi ptr [ %.pre32, %bb.s ], [ %i.g, %bb.j ]
  %i.am = tail call zeroext i1 %i.ak(ptr noundef nonnull %i.al, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3) #19
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %SDL_Vulkan_LoadLibrary_REAL.exit.thread27, %bb.i, %bb.g, %bb.e, %SDL_ObjectValid.exit.thread24, %bb.b
  %.0 = phi i1 [ %i.am, %bb.t ], [ %i.aj, %SDL_Vulkan_LoadLibrary_REAL.exit.thread27 ], [ %i.l, %bb.i ], [ %i.k, %bb.g ], [ false, %bb.e ], [ false, %SDL_ObjectValid.exit.thread24 ], [ false, %bb.b ]
end_hunk_7
begin_hunk_8_@SDL_GetCSSCursorName:bb.a
bb.i:                                             ; preds = %bb.a
  %.not10 = icmp eq ptr %1, null
  br i1 %.not10, label %bb.y, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr @.str.129, ptr %1, align 8
  br label %bb.y

bb.k:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.y, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr @.str.131, ptr %1, align 8
  br label %bb.y

bb.m:                                             ; preds = %bb.a
  br label %bb.y

bb.n:                                             ; preds = %bb.a
  br label %bb.y

bb.o:                                             ; preds = %bb.a
  br label %bb.y

bb.p:                                             ; preds = %bb.a
  br label %bb.y

bb.q:                                             ; preds = %bb.a
  br label %bb.y

bb.r:                                             ; preds = %bb.a
  br label %bb.y

bb.s:                                             ; preds = %bb.a
  br label %bb.y

bb.t:                                             ; preds = %bb.a
  br label %bb.y

bb.u:                                             ; preds = %bb.a
  br label %bb.y

bb.v:                                             ; preds = %bb.a
  br label %bb.y

bb.w:                                             ; preds = %bb.a
  br label %bb.y

bb.x:                                             ; preds = %bb.a
  br label %bb.y

bb.y:                                             ; preds = %bb.k, %bb.l, %bb.i, %bb.j, %bb.g, %bb.h, %bb.e, %bb.f, %bb.a, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ @.str.120, %bb.x ], [ @.str.141, %bb.w ], [ @.str.140, %bb.v ], [ @.str.122, %bb.b ], [ @.str.123, %bb.c ], [ @.str.124, %bb.d ], [ @.str.121, %bb.a ], [ @.str.126, %bb.e ], [ @.str.128, %bb.g ], [ @.str.130, %bb.i ], [ @.str.133, %bb.m ], [ @.str.134, %bb.n ], [ @.str.135, %bb.o ], [ @.str.125, %bb.p ], [ @.str.136, %bb.q ], [ @.str.127, %bb.r ], [ @.str.137, %bb.s ], [ @.str.138, %bb.t ], [ @.str.139, %bb.u ], [ @.str.126, %bb.f ], [ @.str.128, %bb.h ], [ @.str.130, %bb.j ], [ @.str.132, %bb.l ], [ @.str.132, %bb.k ]
  ret ptr %.0
}

declare void @SDL_CalculateFraction(float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SDL_sscanf_REAL(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare zeroext i1 @SDL_GetRectEnclosingPoints_REAL(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_FindObject(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_GetRectIntersection_REAL(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @SDL_CreateWindowTexture(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = load ptr, ptr @_this, align 8
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %SDL_GetWindowProperties_REAL.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %SDL_ObjectValid.exit.thread5.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %SDL_ObjectValid.exit.i, label %SDL_ObjectValid.exit.thread.i

SDL_ObjectValid.exit.i:                           ; preds = %bb.d
  %i.g = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %1, i32 noundef 1) #19
  br i1 %i.g, label %SDL_ObjectValid.exit.thread.i, label %SDL_ObjectValid.exit.thread5.i

SDL_ObjectValid.exit.thread5.i:                   ; preds = %SDL_ObjectValid.exit.i, %bb.c
  %i.h = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %SDL_GetWindowProperties_REAL.exit

SDL_ObjectValid.exit.thread.i:                    ; preds = %SDL_ObjectValid.exit.i, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %SDL_GetWindowProperties_REAL.exit

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread.i
  %i.l = tail call i32 @SDL_CreateProperties_REAL() #19 ; 2 uses
  store i32 %i.l, ptr %i.i, align 8
  br label %SDL_GetWindowProperties_REAL.exit

SDL_GetWindowProperties_REAL.exit:                ; preds = %bb.b, %SDL_ObjectValid.exit.thread5.i, %SDL_ObjectValid.exit.thread.i, %bb.e
  %.0.i = phi i32 [ 0, %bb.b ], [ 0, %SDL_ObjectValid.exit.thread5.i ], [ %i.l, %bb.e ], [ %i.j, %SDL_ObjectValid.exit.thread.i ] ; 2 uses
  %i.m = tail call ptr @SDL_GetPointerProperty_REAL(i32 noundef %.0.i, ptr noundef nonnull @.str, ptr noundef null) #19 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = load i64, ptr %i.n, align 8
  %.fr290 = freeze i64 %i.o
  %i.p = and i64 %.fr290, 1073741824
  %.not = icmp eq i64 %i.p, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.q = call zeroext i1 @SDL_GetWindowSizeInPixels_REAL(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %.not187 = icmp eq ptr %i.m, null
  br i1 %.not187, label %bb.f, label %SDL_GetWindowProperties_REAL.exit._crit_edge

SDL_GetWindowProperties_REAL.exit._crit_edge:     ; preds = %SDL_GetWindowProperties_REAL.exit
  %.pre = load ptr, ptr %i.m, align 8
  br label %bb.w

bb.f:                                             ; preds = %SDL_GetWindowProperties_REAL.exit
  %i.r = call ptr @SDL_GetHint_REAL(ptr noundef nonnull @.str.166) #19 ; 6 uses
  %.not188 = icmp eq ptr %i.r, null
  br i1 %.not188, label %select.unfold, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.r, align 1
  %i.t = and i8 %i.s, -2
  %switch = icmp eq i8 %i.t, 48
  br i1 %switch, label %select.unfold, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = call i32 @SDL_strcasecmp_REAL(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.171) #19
  %.not191 = icmp eq i32 %i.u, 0
  br i1 %.not191, label %select.unfold, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = call i32 @SDL_strcasecmp_REAL(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.167) #19
  %.not192 = icmp eq i32 %i.v, 0
  br i1 %.not192, label %select.unfold, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = call i32 @SDL_strcasecmp_REAL(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.168) #19
  %.not193 = icmp eq i32 %i.w, 0
  br i1 %.not193, label %select.unfold, label %.thread230

select.unfold:                                    ; preds = %bb.j, %bb.h, %bb.i, %bb.g, %bb.f
  %i.x = call ptr @SDL_GetHint_REAL(ptr noundef nonnull @.str.172) #19 ; 2 uses
  %.not195 = icmp eq ptr %i.x, null
  br i1 %.not195, label %.thread240, label %.thread230

.thread230:                                       ; preds = %bb.j, %select.unfold
  %.1146233 = phi ptr [ %i.x, %select.unfold ], [ %i.r, %bb.j ] ; 4 uses
  %i.y = call i32 @SDL_strcasecmp_REAL(ptr noundef nonnull %.1146233, ptr noundef nonnull @.str.168) #19
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.thread240, label %bb.k

bb.k:                                             ; preds = %.thread230
  %i.aa = load i8, ptr %.1146233, align 1
  %.not197 = icmp eq i8 %i.aa, 0
  br i1 %.not197, label %.thread244, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = call noalias ptr @SDL_strdup_REAL(ptr noundef nonnull %.1146233) #19 ; 8 uses
  %.not198 = icmp eq ptr %i.ab, null
  br i1 %.not198, label %.thread240, label %.preheader

.preheader:                                       ; preds = %bb.l
  %i.ac = call ptr @SDL_strchr_REAL(ptr noundef nonnull %i.ab, i32 noundef 44) #19 ; 2 uses
  %.not199279 = icmp eq ptr %i.ac, null
  br i1 %.not199279, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.o
  %i.ad = phi ptr [ %i.ai, %bb.o ], [ %i.ac, %.preheader ] ; 3 uses
  %.0140280 = phi ptr [ %.1141, %bb.o ], [ %i.ab, %.preheader ] ; 3 uses
  store i8 0, ptr %i.ad, align 1
  %i.ae = call i32 @SDL_strcasecmp_REAL(ptr noundef %.0140280, ptr noundef nonnull @.str.168) #19
  %i.af = icmp eq i32 %i.ae, 0
  store i8 44, ptr %i.ad, align 1
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.ag = call i64 @SDL_strlen_REAL(ptr noundef nonnull @.str.168) #19
  call void @llvm.memset.p0.i64(ptr align 1 %.0140280, i8 120, i64 %i.ag, i1 false)
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1141 = phi ptr [ %.0140280, %bb.m ], [ %i.ah, %bb.n ] ; 3 uses
  %i.ai = call ptr @SDL_strchr_REAL(ptr noundef %.1141, i32 noundef 44) #19 ; 2 uses
  %.not199 = icmp eq ptr %i.ai, null
  br i1 %.not199, label %._crit_edge, label %.lr.ph, !llvm.loop !73

._crit_edge:                                      ; preds = %bb.o, %.preheader
  %.0140.lcssa = phi ptr [ %i.ab, %.preheader ], [ %.1141, %bb.o ] ; 2 uses
  %i.aj = call i32 @SDL_strcasecmp_REAL(ptr noundef %.0140.lcssa, ptr noundef nonnull @.str.168) #19
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.p, label %.thread244

bb.p:                                             ; preds = %._crit_edge
  %i.al = call i64 @SDL_strlen_REAL(ptr noundef nonnull @.str.168) #19
  call void @llvm.memset.p0.i64(ptr align 1 %.0140.lcssa, i8 120, i64 %i.al, i1 false)
  br label %.thread244

.thread244:                                       ; preds = %bb.p, %._crit_edge, %bb.k
  %.0144249 = phi ptr [ null, %bb.k ], [ %i.ab, %._crit_edge ], [ %i.ab, %bb.p ]
  %.3148248 = phi ptr [ %.1146233, %bb.k ], [ %i.ab, %._crit_edge ], [ %i.ab, %bb.p ]
  %i.am = call ptr @SDL_CreateRenderer_REAL(ptr noundef %1, ptr noundef nonnull %.3148248) #19 ; 2 uses
  call void @SDL_free_REAL(ptr noundef %.0144249) #19
  %.not205 = icmp eq ptr %i.am, null
  br i1 %.not205, label %.thread267, label %.thread262

.thread240:                                       ; preds = %.thread230, %select.unfold, %bb.l
  %i.an = call i32 @SDL_GetNumRenderDrivers_REAL() #19 ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph282, label %._crit_edge283

.lr.ph282:                                        ; preds = %.thread240, %select.unfold250
  %.0154281 = phi i32 [ %i.as, %select.unfold250 ], [ 0, %.thread240 ] ; 2 uses
  %i.ap = call ptr @SDL_GetRenderDriver_REAL(i32 noundef %.0154281) #19 ; 3 uses
  %.not201 = icmp eq ptr %i.ap, null
  br i1 %.not201, label %select.unfold250, label %bb.q

bb.q:                                             ; preds = %.lr.ph282
  %i.aq = call i32 @SDL_strcmp_REAL(ptr noundef nonnull %i.ap, ptr noundef nonnull @.str.168) #19
  %.not202 = icmp eq i32 %i.aq, 0
  br i1 %.not202, label %select.unfold250, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = call ptr @SDL_CreateRenderer_REAL(ptr noundef %1, ptr noundef nonnull %i.ap) #19 ; 2 uses
  %.not203 = icmp eq ptr %i.ar, null
  br i1 %.not203, label %select.unfold250, label %.thread262

select.unfold250:                                 ; preds = %bb.r, %bb.q, %.lr.ph282
  %i.as = add nuw nsw i32 %.0154281, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.as, %i.an
  br i1 %exitcond.not, label %._crit_edge283, label %.lr.ph282, !llvm.loop !74

._crit_edge283:                                   ; preds = %select.unfold250, %.thread240
  %i.at = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.173) #19
  br label %.thread267

.thread262:                                       ; preds = %bb.r, %.thread244
  %.4153 = phi ptr [ %i.am, %.thread244 ], [ %i.ar, %bb.r ] ; 4 uses
  %i.au = call noalias dereferenceable_or_null(32) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 32) #21 ; 4 uses
  %.not206 = icmp eq ptr %i.au, null
  br i1 %.not206, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread262
  call void @SDL_DestroyRenderer_REAL(ptr noundef nonnull %.4153) #19
  br label %.thread267

bb.t:                                             ; preds = %.thread262
  %i.av = call zeroext i1 @SDL_SetPointerProperty_REAL(i32 noundef %.0.i, ptr noundef nonnull @.str, ptr noundef nonnull %i.au) #19
  br i1 %i.av, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @SDL_DestroyRenderer_REAL(ptr noundef nonnull %.4153) #19
  br label %.thread267

bb.v:                                             ; preds = %bb.t
  store ptr %.4153, ptr %i.au, align 8
  br label %bb.w

bb.w:                                             ; preds = %SDL_GetWindowProperties_REAL.exit._crit_edge, %bb.v
  %i.aw = phi ptr [ %.pre, %SDL_GetWindowProperties_REAL.exit._crit_edge ], [ %.4153, %bb.v ]
  %.1157 = phi ptr [ %i.m, %SDL_GetWindowProperties_REAL.exit._crit_edge ], [ %i.au, %bb.v ] ; 6 uses
  %i.ax = call i32 @SDL_GetRendererProperties_REAL(ptr noundef %i.aw) #19
  %i.ay = call ptr @SDL_GetPointerProperty_REAL(i32 noundef %i.ax, ptr noundef nonnull @.str.174, ptr noundef null) #19 ; 4 uses
  %.not207 = icmp eq ptr %i.ay, null
  br i1 %.not207, label %.thread267, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.az = getelementptr inbounds nuw i8, ptr %.1157, i64 8 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %.not208 = icmp eq ptr %i.ba, null
  br i1 %.not208, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @SDL_DestroyTexture_REAL(ptr noundef nonnull %i.ba) #19
  store ptr null, ptr %i.az, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bb = getelementptr inbounds nuw i8, ptr %.1157, i64 16 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8
  call void @SDL_free_REAL(ptr noundef %i.bc) #19
  store ptr null, ptr %i.bb, align 8
  %i.bd = load i32, ptr %i.ay, align 4            ; 6 uses
  store i32 %i.bd, ptr %2, align 4
  %.not209284 = icmp eq i32 %i.bd, 0
  br i1 %.not209284, label %.loopexit, label %.lr.ph287

.lr.ph287:                                        ; preds = %bb.z
  br i1 %.not, label %.lr.ph287.split.us, label %.lr.ph287.split

.lr.ph287.split.us:                               ; preds = %.lr.ph287, %.thread271.us
  %indvars.iv298 = phi i64 [ %indvars.iv.next299, %.thread271.us ], [ 0, %.lr.ph287 ]
  %i.be = phi i32 [ %i.bk, %.thread271.us ], [ %i.bd, %.lr.ph287 ] ; 5 uses
  %.mask.us = and i32 %i.be, -268435456
  %.not210.us = icmp ne i32 %.mask.us, 268435456
  %i.bf = and i32 %i.be, 252641280
  %or.cond.us = icmp eq i32 %i.bf, 101122048
  %or.cond277.us = or i1 %.not210.us, %or.cond.us
  %i.bg = and i32 %i.be, 234881024
  %switch223.us = icmp eq i32 %i.bg, 167772160
  %or.cond328 = or i1 %or.cond277.us, %switch223.us
  br i1 %or.cond328, label %.thread271.us, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph287.split.us
  %i.bh = lshr i32 %i.be, 24
  %i.bi = and i32 %i.bh, 15
  switch i32 %i.bi, label %.split.us [
    i32 1, label %.thread271.us
    i32 12, label %.thread271.us
    i32 2, label %.thread271.us
    i32 3, label %.thread271.us
  ]

.thread271.us:                                    ; preds = %bb.aa, %bb.aa, %bb.aa, %bb.aa, %.lr.ph287.split.us
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next299
  %i.bk = load i32, ptr %i.bj, align 4            ; 2 uses
  %.not209.us = icmp eq i32 %i.bk, 0
  br i1 %.not209.us, label %.loopexit, label %.lr.ph287.split.us, !llvm.loop !75

.lr.ph287.split:                                  ; preds = %.lr.ph287, %.thread271
  %indvars.iv = phi i64 [ %indvars.iv.next, %.thread271 ], [ 0, %.lr.ph287 ]
  %i.bl = phi i32 [ %i.bv, %.thread271 ], [ %i.bd, %.lr.ph287 ] ; 14 uses
  %.mask = and i32 %i.bl, -268435456
  %.not210 = icmp ne i32 %.mask, 268435456
  %i.bm = and i32 %i.bl, 252641280
  %or.cond = icmp eq i32 %i.bm, 101122048
  %or.cond277 = or i1 %.not210, %or.cond
  br i1 %or.cond277, label %.thread271, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph287.split
  %i.bn = lshr i32 %i.bl, 24
  %i.bo = and i32 %i.bn, 15                       ; 3 uses
  %i.bp = and i32 %i.bl, 234881024
  %switch223 = icmp eq i32 %i.bp, 167772160
  br i1 %switch223, label %.thread271, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  switch i32 %i.bo, label %bb.ad [
    i32 1, label %.thread271
    i32 12, label %.thread271
    i32 2, label %.thread271
    i32 3, label %.thread271
  ]

bb.ad:                                            ; preds = %bb.ac
  %.off224 = add nsw i32 %i.bo, -4
  %switch225 = icmp ult i32 %.off224, 3
  br i1 %switch225, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bq = lshr i32 %i.bl, 20
  %i.br = and i32 %i.bq, 15
  switch i32 %i.br, label %.thread271 [
    i32 3, label %.split.us
    i32 4, label %.split.us
    i32 7, label %.split.us
    i32 8, label %.split.us
  ]

bb.af:                                            ; preds = %bb.ad
  %.off226 = add nsw i32 %i.bo, -7
  %switch227 = icmp ult i32 %.off226, 5
  br i1 %switch227, label %bb.ag, label %.thread271

bb.ag:                                            ; preds = %bb.af
  %i.bs = lshr i32 %i.bl, 20
  %i.bt = and i32 %i.bs, 15
  switch i32 %i.bt, label %.thread271 [
    i32 3, label %.split.us
    i32 2, label %.split.us
    i32 6, label %.split.us
    i32 5, label %.split.us
  ]

.split.us:                                        ; preds = %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ae, %bb.ae, %bb.ae, %bb.ae, %bb.aa
  %.us-phi = phi i32 [ %i.be, %bb.aa ], [ %i.bl, %bb.ae ], [ %i.bl, %bb.ae ], [ %i.bl, %bb.ae ], [ %i.bl, %bb.ae ], [ %i.bl, %bb.ag ], [ %i.bl, %bb.ag ], [ %i.bl, %bb.ag ], [ %i.bl, %bb.ag ] ; 2 uses
  store i32 %.us-phi, ptr %2, align 4
  br label %.loopexit

.thread271:                                       ; preds = %bb.ae, %bb.ag, %bb.af, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %.lr.ph287.split, %bb.ab
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next
  %i.bv = load i32, ptr %i.bu, align 4            ; 2 uses
  %.not209 = icmp eq i32 %i.bv, 0
  br i1 %.not209, label %.loopexit, label %.lr.ph287.split, !llvm.loop !75

.loopexit:                                        ; preds = %.thread271, %.thread271.us, %bb.z, %.split.us
  %i.bw = phi i32 [ %i.bd, %.thread271.us ], [ %.us-phi, %.split.us ], [ 0, %bb.z ], [ %i.bd, %.thread271 ]
  %i.bx = load ptr, ptr %.1157, align 8
  %i.by = load i32, ptr %i.a, align 4
  %i.bz = load i32, ptr %i.b, align 4
  %i.ca = call ptr @SDL_CreateTexture_REAL(ptr noundef %i.bx, i32 noundef %i.bw, i32 noundef 1, i32 noundef %i.by, i32 noundef %i.bz) #19 ; 3 uses
  store ptr %i.ca, ptr %i.az, align 8
  %.not211 = icmp eq ptr %i.ca, null
  br i1 %.not211, label %.thread267, label %bb.ah

bb.ah:                                            ; preds = %.loopexit
  %i.cb = call zeroext i1 @SDL_SetTextureBlendMode_REAL(ptr noundef nonnull %i.ca, i32 noundef 0) #19 ; 0 uses
  %i.cc = load i32, ptr %2, align 4               ; 4 uses
  %.not212 = icmp eq i32 %i.cc, 0
  %.mask214 = and i32 %i.cc, -268435456
  %.not213 = icmp eq i32 %.mask214, 268435456
  %or.cond219 = or i1 %.not212, %.not213
  br i1 %or.cond219, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  switch i32 %i.cc, label %bb.aj [
    i32 844715353, label %switch.edge
    i32 1498831189, label %switch.edge
    i32 1431918169, label %switch.edge
    i32 808530000, label %switch.edge
  ]

bb.aj:                                            ; preds = %bb.ai
  br label %switch.edge

bb.ak:                                            ; preds = %bb.ah
  %i.cd = and i32 %i.cc, 255
  br label %switch.edge

switch.edge:                                      ; preds = %bb.ai, %bb.aj, %bb.ai, %bb.ai, %bb.ai, %bb.ak
  %i.ce = phi i32 [ %i.cd, %bb.ak ], [ 2, %bb.ai ], [ 2, %bb.ai ], [ 2, %bb.ai ], [ 1, %bb.aj ], [ 2, %bb.ai ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.1157, i64 28
  store i32 %i.ce, ptr %i.cf, align 4
  %i.cg = load i32, ptr %i.a, align 4
  %i.ch = mul nsw i32 %i.cg, %i.ce
  %i.ci = add nsw i32 %i.ch, 3
  %i.cj = and i32 %i.ci, -4                       ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.1157, i64 24 ; 2 uses
  store i32 %i.cj, ptr %i.ck, align 8
  %i.cl = load i32, ptr %i.b, align 4
  %i.cm = sext i32 %i.cl to i64
  %i.cn = sext i32 %i.cj to i64
  %i.co = mul nsw i64 %i.cn, %i.cm
  %i.cp = call i64 @llvm.umax.i64(i64 %i.co, i64 1)
  %i.cq = call noalias ptr @SDL_malloc_REAL(i64 noundef %i.cp) #19 ; 3 uses
  store ptr %i.cq, ptr %i.bb, align 8
  %.not216.not = icmp eq ptr %i.cq, null
  br i1 %.not216.not, label %.thread267, label %bb.al

bb.al:                                            ; preds = %switch.edge
  store ptr %i.cq, ptr %3, align 8
  %i.cr = load i32, ptr %i.ck, align 8
  store i32 %i.cr, ptr %4, align 4
  %i.cs = load ptr, ptr %.1157, align 8
  %i.ct = call zeroext i1 @SDL_SetRenderViewport_REAL(ptr noundef %i.cs, ptr noundef null) #19 ; 0 uses
  br label %.thread267

.thread267:                                       ; preds = %.thread244, %._crit_edge283, %bb.s, %bb.u, %.loopexit, %bb.w, %switch.edge, %bb.al
  %.5 = phi i1 [ true, %bb.al ], [ false, %switch.edge ], [ false, %bb.w ], [ false, %.loopexit ], [ false, %.thread244 ], [ %i.at, %._crit_edge283 ], [ false, %bb.s ], [ false, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i1 %.5
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @SDL_GetWindowTextureVSync(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %SDL_GetWindowProperties_REAL.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %SDL_ObjectValid.exit.thread5.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %SDL_ObjectValid.exit.i, label %SDL_ObjectValid.exit.thread.i

SDL_ObjectValid.exit.i:                           ; preds = %bb.d
  %i.e = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %1, i32 noundef 1) #19
  br i1 %i.e, label %SDL_ObjectValid.exit.thread.i, label %SDL_ObjectValid.exit.thread5.i

SDL_ObjectValid.exit.thread5.i:                   ; preds = %SDL_ObjectValid.exit.i, %bb.c
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %SDL_GetWindowProperties_REAL.exit

SDL_ObjectValid.exit.thread.i:                    ; preds = %SDL_ObjectValid.exit.i, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %SDL_GetWindowProperties_REAL.exit

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread.i
  %i.j = tail call i32 @SDL_CreateProperties_REAL() #19 ; 2 uses
  store i32 %i.j, ptr %i.g, align 8
  br label %SDL_GetWindowProperties_REAL.exit

SDL_GetWindowProperties_REAL.exit:                ; preds = %bb.b, %SDL_ObjectValid.exit.thread5.i, %SDL_ObjectValid.exit.thread.i, %bb.e
  %.0.i = phi i32 [ 0, %bb.b ], [ 0, %SDL_ObjectValid.exit.thread5.i ], [ %i.j, %bb.e ], [ %i.h, %SDL_ObjectValid.exit.thread.i ]
  %i.k = tail call ptr @SDL_GetPointerProperty_REAL(i32 noundef %.0.i, ptr noundef nonnull @.str, ptr noundef null) #19 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %SDL_GetWindowProperties_REAL.exit
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not8 = icmp eq ptr %i.l, null
  br i1 %.not8, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call zeroext i1 @SDL_GetRenderVSync_REAL(ptr noundef nonnull %i.l, ptr noundef %2) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %SDL_GetWindowProperties_REAL.exit, %bb.g
  %.0 = phi i1 [ %i.m, %bb.g ], [ false, %SDL_GetWindowProperties_REAL.exit ], [ false, %bb.f ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @SDL_UpdateWindowTexture(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %4 = alloca %struct.SDL_Rect, align 4           ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.c = call zeroext i1 @SDL_GetWindowSizeInPixels_REAL(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.d = load ptr, ptr @_this, align 8
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.1) #19 ; 0 uses
  br label %SDL_GetWindowProperties_REAL.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %SDL_ObjectValid.exit.thread5.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i8, ptr @SDL_object_validation, align 1, !range !10, !noundef !11
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %SDL_ObjectValid.exit.i, label %SDL_ObjectValid.exit.thread.i

SDL_ObjectValid.exit.i:                           ; preds = %bb.d
  %i.h = call zeroext i1 @SDL_FindObject(ptr noundef nonnull %1, i32 noundef 1) #19
  br i1 %i.h, label %SDL_ObjectValid.exit.thread.i, label %SDL_ObjectValid.exit.thread5.i

SDL_ObjectValid.exit.thread5.i:                   ; preds = %SDL_ObjectValid.exit.i, %bb.c
  %i.i = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #19 ; 0 uses
  br label %SDL_GetWindowProperties_REAL.exit

SDL_ObjectValid.exit.thread.i:                    ; preds = %SDL_ObjectValid.exit.i, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %SDL_GetWindowProperties_REAL.exit

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread.i
  %i.m = call i32 @SDL_CreateProperties_REAL() #19 ; 2 uses
  store i32 %i.m, ptr %i.j, align 8
  br label %SDL_GetWindowProperties_REAL.exit

SDL_GetWindowProperties_REAL.exit:                ; preds = %bb.b, %SDL_ObjectValid.exit.thread5.i, %SDL_ObjectValid.exit.thread.i, %bb.e
  %.0.i = phi i32 [ 0, %bb.b ], [ 0, %SDL_ObjectValid.exit.thread5.i ], [ %i.m, %bb.e ], [ %i.k, %SDL_ObjectValid.exit.thread.i ]
  %i.n = call ptr @SDL_GetPointerProperty_REAL(i32 noundef %.0.i, ptr noundef nonnull @.str, ptr noundef null) #19 ; 7 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %SDL_GetWindowProperties_REAL.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8
  %.not16 = icmp eq ptr %i.p, null
  br i1 %.not16, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %SDL_GetWindowProperties_REAL.exit
  %i.q = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.175) #19
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.a, align 4
  %i.s = load i32, ptr %i.b, align 4
  %i.t = call zeroext i1 @SDL_GetSpanEnclosingRect(i32 noundef %i.r, i32 noundef %i.s, i32 noundef %3, ptr noundef %2, ptr noundef nonnull %4) #19
  br i1 %i.t, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.x = load i32, ptr %i.w, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.z = load i32, ptr %i.y, align 8              ; 2 uses
  %i.aa = mul nsw i32 %i.z, %i.x
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %i.v, i64 %i.ab
  %i.ad = load i32, ptr %4, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = mul nsw i32 %i.af, %i.ad
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds i8, ptr %i.ac, i64 %i.ah
  %i.aj = load ptr, ptr %i.o, align 8
  %i.ak = call zeroext i1 @SDL_UpdateTexture_REAL(ptr noundef %i.aj, ptr noundef nonnull %4, ptr noundef %i.ai, i32 noundef %i.z) #19
  br i1 %i.ak, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %i.n, align 8
  %i.am = load ptr, ptr %i.o, align 8
  %i.an = call zeroext i1 @SDL_RenderTexture_REAL(ptr noundef %i.al, ptr noundef %i.am, ptr noundef null, ptr noundef null) #19
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ao = load ptr, ptr %i.n, align 8
  %i.ap = call zeroext i1 @SDL_RenderPresent_REAL(ptr noundef %i.ao) #19 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.i, %bb.g
  %.0 = phi i1 [ false, %bb.j ], [ false, %bb.i ], [ %i.q, %bb.g ], [ true, %bb.k ], [ true, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret i1 %.0
}

declare ptr @SDL_CreateSurfaceFrom_REAL(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SDL_strcasecmp_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #16

declare ptr @SDL_CreateRenderer_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SDL_GetNumRenderDrivers_REAL() local_unnamed_addr #2

declare ptr @SDL_GetRenderDriver_REAL(i32 noundef) local_unnamed_addr #2

declare void @SDL_DestroyRenderer_REAL(ptr noundef) local_unnamed_addr #2

declare i32 @SDL_GetRendererProperties_REAL(ptr noundef) local_unnamed_addr #2

declare void @SDL_DestroyTexture_REAL(ptr noundef) local_unnamed_addr #2

declare ptr @SDL_CreateTexture_REAL(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_SetTextureBlendMode_REAL(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_SetRenderViewport_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_GetRenderVSync_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_GetSpanEnclosingRect(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_UpdateTexture_REAL(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_RenderTexture_REAL(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_RenderPresent_REAL(ptr noundef) local_unnamed_addr #2

declare i32 @SDL_atoi_REAL(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_HasKeyboard_REAL() local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #17

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { nounwind allocsize(1) }
attributes #21 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}

!0 = distinct !{!0, !12}
!1 = distinct !{!1, !12}
!2 = distinct !{!2, !12}
!3 = distinct !{null}
!4 = distinct !{null}
!5 = distinct !{!5, !12}
!6 = distinct !{!6, !12}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{ptr @SDL_SyncIfRequired, ptr @SDL_SyncWindow_REAL}
!15 = !{ptr @SDL_GL_LoadLibrary_REAL}
!16 = !{ptr @SDL_DestroyWindowSurface_REAL}
!17 = !{ptr @SDL_GL_UnloadLibrary_REAL}
!18 = !{ptr @SDL_Vulkan_UnloadLibrary_REAL}
!19 = !{ptr @SDL_Vulkan_LoadLibrary_REAL}
!20 = !{ptr @SDL_GL_GetProcAddress_REAL}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = !{ptr @SDL_EnableScreenSaver_REAL}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !12, !26}
!26 = !{!"llvm.loop.peeled.count", i32 1}
!27 = distinct !{!27, !13}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12, !37, !38}
!36 = distinct !{!36, !12, !38, !37}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
!39 = distinct !{!39, !12}
!40 = distinct !{!40, !12}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12}
!43 = distinct !{!43, !12}
!44 = distinct !{!44, !12}
!45 = distinct !{!45, !12}
!46 = !{ptr @SDL_SyncWindow_REAL}
!47 = distinct !{!47, !12}
!48 = distinct !{!48, !12}
!49 = distinct !{!49, !12}
!50 = distinct !{!50, !12}
!51 = distinct !{!51, !12}
!52 = distinct !{!52, !12}
!53 = distinct !{null}
!54 = !{ptr @SDL_SetWindowProgressState_REAL}
!55 = !{ptr @SDL_SetWindowProgressValue_REAL}
!56 = distinct !{!56, !12}
!57 = distinct !{null, ptr @SDL_DestroyWindowSurface_REAL}
!58 = distinct !{null, ptr @SDL_GL_LoadLibrary_REAL}
!59 = distinct !{null}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{null}
!63 = !{ptr @SDL_UpdateWindowSurfaceRects_REAL}
!64 = distinct !{!64, !12}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !12}
!68 = distinct !{!68, !12}
!69 = distinct !{!69, !12}
!70 = !{ptr @SDL_RaiseWindow_REAL}
!71 = distinct !{!71, !12}
!72 = distinct !{!72, !12}
!73 = distinct !{!73, !12}
!74 = distinct !{!74, !12}
!75 = distinct !{!75, !12}
end_hunk_8

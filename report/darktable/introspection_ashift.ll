Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_ashift?download=true
inline.NumInlined: 378
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 78
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.darktable_t = type { %struct.dt_codepath_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [64 x %struct.dt_pthread_mutex_t], %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dt_lua_state_t, ptr, double, ptr, i32, [49 x i32], i32, i32, ptr, ptr, %struct.dt_sys_resources_t, %struct.dt_backthumb_t, %struct.dt_gimp_t, %struct.dt_splash_t, i32 }
%struct.dt_codepath_t = type { i8, [3 x i8] }
%struct.dt_pthread_mutex_t = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.dt_lua_state_t = type { ptr, %struct.dt_pthread_mutex_t, %union.pthread_cond_t, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%struct.dt_sys_resources_t = type { i64, i64, ptr, ptr, i32 }
%struct.dt_backthumb_t = type { double, double, i32, i32 }
%struct.dt_gimp_t = type { i32, ptr, ptr, i32, i32 }
%struct.dt_splash_t = type { ptr, ptr, ptr, ptr, i32 }
%struct.dt_action_def_t = type { ptr, ptr, ptr, ptr, i32 }
%struct.dt_introspection_t = type { i32, i32, ptr, i64, ptr, i64, i64 }
%struct._PangoRectangle = type { i32, i32, i32, i32 }
%struct.dt_iop_ashift_cropfit_params_t = type { i32, i32, float, float, float, [44 x i8], [3 x [3 x float]], [28 x i8], [4 x [3 x float]], [16 x i8] }
%struct.dt_iop_ashift_fit_params_t = type { i32, i32, i32, ptr, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.rect = type { double, double, double, double, double, double, double, double, double, double, double, double }

@inv = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [23 x i8] c"rotate and perspective\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"rotation|keystone|distortion|crop|reframe\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"rotate or distort perspective\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"corrective or creative\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"linear, RGB, scene-referred\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"geometric, RGB\00", align 1
@darktable = external local_unnamed_addr global %struct.darktable_t, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"insane data\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [99 x i8] c"module '%s' has insane data so it is bypassed for now. you should disable it or change parameters\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%.2f\C2\B0\00", align 1
@__const.gui_post_expose.line_colors = private unnamed_addr constant [5 x [4 x float]] [[4 x float] [float 3.000000e-01, float 3.000000e-01, float 3.000000e-01, float 8.000000e-01], [4 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 8.000000e-01], [4 x float] [float 8.000000e-01, float 0.000000e+00, float 0.000000e+00, float 8.000000e-01], [4 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 8.000000e-01], [4 x float] [float 8.000000e-01, float 8.000000e-01, float 0.000000e+00, float 8.000000e-01]], align 16
@.str.11 = private unnamed_addr constant [10 x i8] c"crosshair\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"pointer\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"plugins/darkroom/ashift/near_delta_draw\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"plugins/darkroom/ashift/near_delta\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"only %d lines can be saved in parameters\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"not-allowed\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"cell\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"rotation adjusted by %3.2f\C2\B0 to %3.2f\C2\B0\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"plugins/darkroom/ashift/autocrop_value\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"lens shift (%s)\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"horizontal\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"vertical\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"rotation\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"\C2\B0\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"cropmode\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.32 = private unnamed_addr constant [38 x i8] c"plugins/darkroom/ashift/expand_values\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"manual perspective\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"lensshift_v\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"lensshift_h\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"shear\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.38 = private unnamed_addr constant [53 x i8] c"/opt-bench/work/darktable/darktable/src/iop/ashift.c\00", align 1
@__FUNCTION__.gui_init = private unnamed_addr constant [9 x i8] c"gui_init\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"f_length\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c" mm\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"crop_factor\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"orthocorr\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"aspect\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"section\04perspective\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"structure\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"fit\00", align 1
@.str.48 = private unnamed_addr constant [98 x i8] c"rotate image\0Aright-click and drag to define a horizontal or vertical line by drawing on the image\00", align 1
@.str.49 = private unnamed_addr constant [45 x i8] c"apply lens shift correction in one direction\00", align 1
@.str.50 = private unnamed_addr constant [35 x i8] c"shear the image along one diagonal\00", align 1
@.str.51 = private unnamed_addr constant [40 x i8] c"automatically crop to avoid black edges\00", align 1
@.str.52 = private unnamed_addr constant [83 x i8] c"lens model of the perspective correction: generic or according to the focal length\00", align 1
@.str.53 = private unnamed_addr constant [72 x i8] c"focal length of the lens, default value set from EXIF data if available\00", align 1
@.str.54 = private unnamed_addr constant [114 x i8] c"crop factor of the camera sensor, default value set from EXIF data if available, manual setting is often required\00", align 1
@.str.55 = private unnamed_addr constant [114 x i8] c"the level of lens dependent correction, set to maximum for full lens dependency, set to zero for the generic case\00", align 1
@.str.56 = private unnamed_addr constant [64 x i8] c"adjust aspect ratio of image by horizontal and vertical scaling\00", align 1
@.str.57 = private unnamed_addr constant [125 x i8] c"automatically correct for vertical perspective distortion\0Actrl+click to only fit rotation\0Ashift+click to only fit lens shift\00", align 1
@.str.58 = private unnamed_addr constant [127 x i8] c"automatically correct for horizontal perspective distortion\0Actrl+click to only fit rotation\0Ashift+click to only fit lens shift\00", align 1
@.str.59 = private unnamed_addr constant [254 x i8] c"automatically correct for vertical and horizontal perspective distortions, fitting rotation, lens shift in both directions, and shear\0Actrl+click to only fit rotation\0Ashift+click to only fit lens shift\0Actrl+shift+click to only fit rotation and lens shift\00", align 1
@.str.60 = private unnamed_addr constant [192 x i8] c"automatically analyse line structure in image\0Actrl+click for an additional edge enhancement\0Ashift+click for an additional detail enhancement\0Actrl+shift+click for a combination of both methods\00", align 1
@.str.61 = private unnamed_addr constant [38 x i8] c"manually define perspective rectangle\00", align 1
@.str.62 = private unnamed_addr constant [30 x i8] c"manually draw structure lines\00", align 1
@.str.63 = private unnamed_addr constant [19 x i8] c"button-press-event\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"draw\00", align 1
@dt_action_def_button = external constant %struct.dt_action_def_t, align 8
@.str.65 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"rectangle\00", align 1
@dt_action_def_toggle = external constant %struct.dt_action_def_t, align 8
@.str.67 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.69 = private unnamed_addr constant [52 x i8] c"[signal] connect    %s to %s; %s:%d, function: %s()\00", align 1
@.str.70 = private unnamed_addr constant [38 x i8] c"_event_process_after_preview_callback\00", align 1
@.str.71 = private unnamed_addr constant [40 x i8] c"DT_SIGNAL_DEVELOP_PREVIEW_PIPE_FINISHED\00", align 1
@.str.72 = private unnamed_addr constant [27 x i8] c"[%s] define/rotate horizon\00", align 1
@.str.73 = private unnamed_addr constant [31 x i8] c"[%s on segment] select segment\00", align 1
@.str.74 = private unnamed_addr constant [33 x i8] c"[%s on segment] unselect segment\00", align 1
@.str.75 = private unnamed_addr constant [35 x i8] c"[%s] select all segments from zone\00", align 1
@.str.76 = private unnamed_addr constant [37 x i8] c"[%s] unselect all segments from zone\00", align 1
@introspection = internal global %struct.dt_introspection_t { i32 8, i32 5, ptr @.str.202, i64 892, ptr getelementptr (i8, ptr @introspection_linear, i64 1672), i64 1120, i64 688 }, align 8
@introspection_init.f8 = internal global [3 x { ptr, i32, [4 x i8], ptr }] [{ ptr, i32, [4 x i8], ptr } { ptr @.str.77, i32 0, [4 x i8] zeroinitializer, ptr @.str.78 }, { ptr, i32, [4 x i8], ptr } { ptr @.str.79, i32 1, [4 x i8] zeroinitializer, ptr @.str.80 }, { ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.77 = private unnamed_addr constant [20 x i8] c"ASHIFT_MODE_GENERIC\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"generic\00", align 1
@.str.79 = private unnamed_addr constant [21 x i8] c"ASHIFT_MODE_SPECIFIC\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"specific\00", align 1
@introspection_init.f9 = internal global [4 x { ptr, i32, [4 x i8], ptr }] [{ ptr, i32, [4 x i8], ptr } { ptr @.str.81, i32 0, [4 x i8] zeroinitializer, ptr @.str.82 }, { ptr, i32, [4 x i8], ptr } { ptr @.str.83, i32 1, [4 x i8] zeroinitializer, ptr @.str.84 }, { ptr, i32, [4 x i8], ptr } { ptr @.str.85, i32 2, [4 x i8] zeroinitializer, ptr @.str.86 }, { ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.81 = private unnamed_addr constant [16 x i8] c"ASHIFT_CROP_OFF\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.83 = private unnamed_addr constant [20 x i8] c"ASHIFT_CROP_LARGEST\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"largest area\00", align 1
@.str.85 = private unnamed_addr constant [19 x i8] c"ASHIFT_CROP_ASPECT\00", align 1
@.str.86 = private unnamed_addr constant [16 x i8] c"original format\00", align 1
@introspection_init.f19 = internal global [18 x ptr] [ptr @introspection_linear, ptr getelementptr (i8, ptr @introspection_linear, i64 88), ptr getelementptr (i8, ptr @introspection_linear, i64 176), ptr getelementptr (i8, ptr @introspection_linear, i64 264), ptr getelementptr (i8, ptr @introspection_linear, i64 352), ptr getelementptr (i8, ptr @introspection_linear, i64 440), ptr getelementptr (i8, ptr @introspection_linear, i64 528), ptr getelementptr (i8, ptr @introspection_linear, i64 616), ptr getelementptr (i8, ptr @introspection_linear, i64 704), ptr getelementptr (i8, ptr @introspection_linear, i64 792), ptr getelementptr (i8, ptr @introspection_linear, i64 880), ptr getelementptr (i8, ptr @introspection_linear, i64 968), ptr getelementptr (i8, ptr @introspection_linear, i64 1056), ptr getelementptr (i8, ptr @introspection_linear, i64 1144), ptr getelementptr (i8, ptr @introspection_linear, i64 1320), ptr getelementptr (i8, ptr @introspection_linear, i64 1408), ptr getelementptr (i8, ptr @introspection_linear, i64 1584), ptr null], align 16
@.str.87 = private unnamed_addr constant [3 x i8] c"cl\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"cr\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"ct\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"cb\00", align 1
@.str.91 = private unnamed_addr constant [20 x i8] c"last_drawn_lines[0]\00", align 1
@.str.92 = private unnamed_addr constant [17 x i8] c"last_drawn_lines\00", align 1
@.str.93 = private unnamed_addr constant [23 x i8] c"last_drawn_lines_count\00", align 1
@.str.94 = private unnamed_addr constant [19 x i8] c"last_quad_lines[0]\00", align 1
@.str.95 = private unnamed_addr constant [16 x i8] c"last_quad_lines\00", align 1
@.str.96 = private unnamed_addr constant [107 x i8] c"margins after crop adjustment: x=%.3f y=%.3f angle=%.3f crop area (%.3f %.3f %.3f %.3f) width=%i height=%i\00", align 1
@dt_modifier_shortcuts = external local_unnamed_addr global i32, align 4
@.str.97 = private unnamed_addr constant [105 x i8] c"margins after crop fitting: iter=%d x=%.4f y=%.4f angle=%.4f crop area (%.4f %.4f %.4f %.4f) wd=%i ht=%i\00", align 1
@.str.98 = private unnamed_addr constant [26 x i8] c"automatic cropping failed\00", align 1
@.str.99 = private unnamed_addr constant [17 x i8] c"dt_section_label\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"halign\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"xalign\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"ellipsize\00", align 1
@.str.103 = private unnamed_addr constant [90 x i8] c"not enough structure for automatic correction\0Aminimum %d lines in each relevant direction\00", align 1
@.str.104 = private unnamed_addr constant [53 x i8] c"automatic correction failed, please correct manually\00", align 1
@.str.105 = private unnamed_addr constant [29 x i8] c"data pending - please repeat\00", align 1
@.str.106 = private unnamed_addr constant [42 x i8] c"could not detect structural data in image\00", align 1
@.str.107 = private unnamed_addr constant [30 x i8] c"could not run outlier removal\00", align 1
@.str.108 = private unnamed_addr constant [21 x i8] c"invalid image input.\00", align 1
@.str.115 = private unnamed_addr constant [19 x i8] c"not enough memory!\00", align 1
@.str.118 = private unnamed_addr constant [38 x i8] c"too many detections to fit in an INT.\00", align 1
@.str.120 = private unnamed_addr constant [19 x i8] c"not enough memory.\00", align 1
@.str.121 = private unnamed_addr constant [14 x i8] c"LSD Error: %s\00", align 1
@.str.127 = private unnamed_addr constant [66 x i8] c"gaussian_sampler: the output image size exceeds the handled size.\00", align 1
@.str.128 = private unnamed_addr constant [38 x i8] c"new_image_double: invalid image size.\00", align 1
@.str.131 = private unnamed_addr constant [38 x i8] c"enlarge_ntuple_list: invalid n-tuple.\00", align 1
@.str.133 = private unnamed_addr constant [25 x i8] c"ll_angle: invalid image.\00", align 1
@.str.139 = private unnamed_addr constant [40 x i8] c"free_image_double: invalid input image.\00", align 1
@.str.142 = private unnamed_addr constant [36 x i8] c"new_image_char: invalid image size.\00", align 1
@.str.143 = private unnamed_addr constant [37 x i8] c"region_grow: (x,y) out of the image.\00", align 1
@.str.144 = private unnamed_addr constant [37 x i8] c"region_grow: invalid image 'angles'.\00", align 1
@.str.145 = private unnamed_addr constant [28 x i8] c"region_grow: invalid 'reg'.\00", align 1
@.str.148 = private unnamed_addr constant [35 x i8] c"region_grow: invalid image 'used'.\00", align 1
@.str.149 = private unnamed_addr constant [35 x i8] c"isaligned: invalid image 'angles'.\00", align 1
@.str.150 = private unnamed_addr constant [35 x i8] c"isaligned: (x,y) out of the image.\00", align 1
@.str.151 = private unnamed_addr constant [36 x i8] c"isaligned: 'prec' must be positive.\00", align 1
@.str.152 = private unnamed_addr constant [29 x i8] c"region2rect: invalid region.\00", align 1
@.str.153 = private unnamed_addr constant [31 x i8] c"region2rect: region size <= 1.\00", align 1
@.str.154 = private unnamed_addr constant [38 x i8] c"region2rect: invalid image 'modgrad'.\00", align 1
@.str.156 = private unnamed_addr constant [40 x i8] c"region2rect: weights sum equal to zero.\00", align 1
@.str.161 = private unnamed_addr constant [32 x i8] c"get_theta: null inertia matrix.\00", align 1
@.str.175 = private unnamed_addr constant [28 x i8] c"rect_nfa: invalid 'angles'.\00", align 1
@.str.177 = private unnamed_addr constant [27 x i8] c"ri_ini: Not enough memory.\00", align 1
@.str.179 = private unnamed_addr constant [23 x i8] c"ri_inc: NULL iterator.\00", align 1
@.str.180 = private unnamed_addr constant [58 x i8] c"inter_low: unsuitable input, 'x1>x2' or 'x<x1' or 'x>x2'.\00", align 1
@.str.181 = private unnamed_addr constant [57 x i8] c"inter_hi: unsuitable input, 'x1>x2' or 'x<x1' or 'x>x2'.\00", align 1
@.str.183 = private unnamed_addr constant [29 x i8] c"nfa: wrong n, k or p values.\00", align 1
@.str.185 = private unnamed_addr constant [35 x i8] c"add_7tuple: invalid n-tuple input.\00", align 1
@.str.186 = private unnamed_addr constant [43 x i8] c"add_7tuple: the n-tuple must be a 7-tuple.\00", align 1
@.str.188 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.189 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.190 = private unnamed_addr constant [22 x i8] c"lens shift (vertical)\00", align 1
@.str.191 = private unnamed_addr constant [24 x i8] c"lens shift (horizontal)\00", align 1
@.str.192 = private unnamed_addr constant [13 x i8] c"focal length\00", align 1
@.str.193 = private unnamed_addr constant [12 x i8] c"crop factor\00", align 1
@.str.194 = private unnamed_addr constant [16 x i8] c"lens dependence\00", align 1
@.str.195 = private unnamed_addr constant [14 x i8] c"aspect adjust\00", align 1
@.str.196 = private unnamed_addr constant [21 x i8] c"dt_iop_ashift_mode_t\00", align 1
@.str.197 = private unnamed_addr constant [11 x i8] c"lens model\00", align 1
@.str.198 = private unnamed_addr constant [21 x i8] c"dt_iop_ashift_crop_t\00", align 1
@.str.199 = private unnamed_addr constant [19 x i8] c"automatic cropping\00", align 1
@.str.200 = private unnamed_addr constant [8 x i8] c"float[]\00", align 1
@.str.201 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.202 = private unnamed_addr constant [23 x i8] c"dt_iop_ashift_params_t\00", align 1
@introspection_linear = internal global <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } }> <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.188, ptr @.str.28, ptr @.str.28, ptr @.str.189, i64 4, i64 0, ptr null }, float -1.800000e+02, float 1.800000e+02, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.188, ptr @.str.34, ptr @.str.34, ptr @.str.190, i64 4, i64 4, ptr null }, float -2.000000e+00, float 2.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.188, ptr @.str.35, ptr @.str.35, ptr @.str.191, i64 4, i64 8, ptr null }, float -2.000000e+00, float 2.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.188, ptr @.str.36, ptr @.str.36, ptr @.str.36, i64 4, i64 12, ptr null }, float -5.000000e-01, float 5.000000e-01, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.188, ptr @.str.39, ptr @.str.39, ptr @.str.192, i64 4, i64 16, ptr null }, float 1.000000e+00, float 2.000000e+03, float 2.800000e+01, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.188, ptr @.str.41, ptr @.str.41, ptr @.str.193, i64 4, i64 20, ptr null }, float 5.000000e-01, float 1.000000e+01, float 1.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.188, ptr @.str.42, ptr @.str.42, ptr @.str.194, i64 4, i64 24, ptr null }, float 0.000000e+00, float 1.000000e+02, float 1.000000e+02, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.188, ptr @.str.44, ptr @.str.44, ptr @.str.195, i64 4, i64 28, ptr null }, float 5.000000e-01, float 2.000000e+00, float 1.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.196, ptr @.str.37, ptr @.str.37, ptr @.str.197, i64 4, i64 32, ptr null }, i64 2, ptr null, i32 0, [4 x i8] zeroinitializer } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.198, ptr @.str.30, ptr @.str.30, ptr @.str.199, i64 4, i64 36, ptr null }, i64 3, ptr null, i32 1, [4 x i8] zeroinitializer } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.188, ptr @.str.87, ptr @.str.87, ptr @.str.189, i64 4, i64 40, ptr null }, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.188, ptr @.str.88, ptr @.str.88, ptr @.str.189, i64 4, i64 44, ptr null }, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.188, ptr @.str.89, ptr @.str.89, ptr @.str.189, i64 4, i64 48, ptr null }, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.188, ptr @.str.90, ptr @.str.90, ptr @.str.189, i64 4, i64 52, ptr null }, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.188, ptr @.str.91, ptr @.str.91, ptr @.str.189, i64 4, i64 56, ptr null }, float f0xFF7FFFFF, float f0x7F7FFFFF, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.200, ptr @.str.92, ptr @.str.92, ptr @.str.189, i64 800, i64 56, ptr null }, i64 200, i32 2, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @introspection_linear, i64 1232) } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.201, ptr @.str.93, ptr @.str.93, ptr @.str.189, i64 4, i64 856, ptr null }, i32 -2147483648, i32 2147483647, i32 0, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.188, ptr @.str.94, ptr @.str.94, ptr @.str.189, i64 4, i64 860, ptr null }, float f0xFF7FFFFF, float f0x7F7FFFFF, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.200, ptr @.str.95, ptr @.str.95, ptr @.str.189, i64 32, i64 860, ptr null }, i64 8, i32 2, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @introspection_linear, i64 1496) } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.202, ptr @.str.189, ptr @.str.189, ptr @.str.189, i64 892, i64 0, ptr null }, i64 17, ptr null }, [8 x i8] zeroinitializer }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } zeroinitializer }>, align 16
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @invConstructor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @invDestructor, ptr null }]

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable
define internal void @invConstructor() #0 {
bb.a:
  %i.a = load ptr, ptr @inv, align 8, !tbaa !13
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(800000) ptr @malloc(i64 noundef 800000) #33
  store ptr %i.b, ptr @inv, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal void @invDestructor() #2 {
bb.a:
  %i.a = load ptr, ptr @inv, align 8, !tbaa !13
  tail call void @free(ptr noundef %i.a) #34
  store ptr null, ptr @inv, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_dt_version() local_unnamed_addr #4 {
bb.a:
  ret i32 25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_mod_version() local_unnamed_addr #4 {
bb.a:
  ret i32 5
}

; Function Attrs: nounwind uwtable
define ptr @name() local_unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #34
  ret ptr %i.a
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define ptr @aliases() local_unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #34
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @description(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #34
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #34
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #34
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #34
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #34
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) #34
  ret ptr %i.f
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #4 {
bb.a:
  ret i32 53456
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #4 {
bb.a:
  ret i32 40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @operation_tags() local_unnamed_addr #4 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @operation_tags_filter() local_unnamed_addr #4 {
bb.a:
  ret i32 6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #4 {
bb.a:
  ret i32 2
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @legacy_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #8 {
bb.a:
  switch i32 %2, label %bb.b [
    i32 1, label %.preheader
    i32 2, label %.preheader163
    i32 3, label %.preheader164
    i32 4, label %.preheader165
  ]

.preheader:                                       ; preds = %bb.a
  %i.a = tail call noalias dereferenceable_or_null(892) ptr @malloc(i64 noundef 892) #33 ; 9 uses
  %i.b = load <2 x float>, ptr %1, align 4, !tbaa !15
  store <2 x float> %i.b, ptr %i.a, align 4, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !317
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %i.d, ptr %i.e, align 4, !tbaa !319
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store <4 x float> <float 0.000000e+00, float 2.800000e+01, float 1.000000e+00, float 1.000000e+02>, ptr %i.f, align 4, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store float 1.000000e+00, ptr %i.g, align 4, !tbaa !320
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 0, ptr %i.h, align 4, !tbaa !321
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 0, ptr %i.i, align 4, !tbaa !322
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.j, align 4, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store float 0.000000e+00, ptr %i.k, align 4, !tbaa !323
  br label %.sink.split

.preheader163:                                    ; preds = %bb.a
  %i.l = tail call noalias dereferenceable_or_null(892) ptr @malloc(i64 noundef 892) #33 ; 9 uses
  %i.m = load <2 x float>, ptr %1, align 4, !tbaa !15
  store <2 x float> %i.m, ptr %i.l, align 4, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !325
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store float %i.o, ptr %i.p, align 4, !tbaa !319
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store float 0.000000e+00, ptr %i.q, align 4, !tbaa !326
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.t = load <4 x float>, ptr %i.r, align 4, !tbaa !15
  store <4 x float> %i.t, ptr %i.s, align 4, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.v = load i32, ptr %i.u, align 4, !tbaa !327
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i32 %i.v, ptr %i.w, align 4, !tbaa !321
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  store i32 0, ptr %i.x, align 4, !tbaa !322
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.y, align 4, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store float 0.000000e+00, ptr %i.z, align 4, !tbaa !323
  br label %.sink.split

.preheader164:                                    ; preds = %bb.a
  %i.aa = tail call noalias dereferenceable_or_null(892) ptr @malloc(i64 noundef 892) #33 ; 9 uses
  %i.ab = load <2 x float>, ptr %1, align 4, !tbaa !15
  store <2 x float> %i.ab, ptr %i.aa, align 4, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !329
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store float %i.ad, ptr %i.ae, align 4, !tbaa !319
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store float 0.000000e+00, ptr %i.af, align 4, !tbaa !326
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 12
end_hunk_0
begin_hunk_1_@_do_get_structure_auto:bb.a
  br i1 %.not.i192.i.i, label %rgb2grey256.exit.i.i, label %.lr.ph.i193.i.i.preheader

.lr.ph.i193.i.i.preheader:                        ; preds = %bb.u
  %min.iters.check156 = icmp ult i64 %i.jh, 5
  br i1 %min.iters.check156, label %.lr.ph.i193.i.i.preheader241, label %vector.ph157

vector.ph157:                                     ; preds = %.lr.ph.i193.i.i.preheader
  %i.ji = and i64 %i.jh, 3                        ; 2 uses
  %i.jj = icmp eq i64 %i.ji, 0
  %i.jk = select i1 %i.jj, i64 4, i64 %i.ji
  %n.vec158 = sub i64 %i.jh, %i.jk                ; 2 uses
  br label %vector.body159

vector.body159:                                   ; preds = %vector.body159, %vector.ph157
  %index160 = phi i64 [ 0, %vector.ph157 ], [ %index.next165, %vector.body159 ] ; 3 uses
  %i.jl = shl i64 %index160, 4
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.jl
  %wide.vec161 = load <16 x float>, ptr %i.jm, align 64, !tbaa !15 ; 3 uses
  %strided.vec162.a = shufflevector <16 x float> %wide.vec161, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec163.a = shufflevector <16 x float> %wide.vec161, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec164 = shufflevector <16 x float> %wide.vec161, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.jn = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec162.a, splat (float 3.000000e-01)
  %i.jo = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec163.a, splat (float 5.900000e-01)
  %i.jp = fadd reassoc nsz arcp contract afn <4 x float> %i.jo, %i.jn
  %i.jq = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec164, splat (float 1.100000e-01)
  %i.jr = fadd reassoc nsz arcp contract afn <4 x float> %i.jp, %i.jq
  %i.js = fpext reassoc nsz arcp contract afn <4 x float> %i.jr to <4 x double>
  %i.jt = fmul reassoc nsz arcp contract afn <4 x double> %i.js, splat (double 2.560000e+02)
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %index160
  store <4 x double> %i.jt, ptr %i.ju, align 8, !tbaa !166
  %index.next165 = add nuw i64 %index160, 4       ; 2 uses
  %i.jv = icmp eq i64 %index.next165, %n.vec158
  br i1 %i.jv, label %.lr.ph.i193.i.i.preheader241, label %vector.body159, !llvm.loop !538

.lr.ph.i193.i.i.preheader241:                     ; preds = %vector.body159, %.lr.ph.i193.i.i.preheader
  %.012.i.i.i.ph = phi i64 [ 0, %.lr.ph.i193.i.i.preheader ], [ %n.vec158, %vector.body159 ]
  br label %.lr.ph.i193.i.i

.lr.ph.i193.i.i:                                  ; preds = %.lr.ph.i193.i.i.preheader241, %.lr.ph.i193.i.i
  %.012.i.i.i = phi i64 [ %i.kj, %.lr.ph.i193.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i193.i.i.preheader241 ] ; 3 uses
  %.idx.i.i.i = shl i64 %.012.i.i.i, 4
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i.i.i ; 2 uses
  %i.jx = load float, ptr %i.jw, align 16, !tbaa !15
  %i.jy = fmul reassoc nsz arcp contract afn float %i.jx, 3.000000e-01
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 4
  %i.ka = load <2 x float>, ptr %i.jz, align 4, !tbaa !15
  %i.kb = fmul reassoc nsz arcp contract afn <2 x float> %i.ka, <float 5.900000e-01, float 1.100000e-01> ; 2 uses
  %i.kc = extractelement <2 x float> %i.kb, i64 0
  %i.kd = fadd reassoc nsz arcp contract afn float %i.kc, %i.jy
  %i.ke = extractelement <2 x float> %i.kb, i64 1
  %i.kf = fadd reassoc nsz arcp contract afn float %i.kd, %i.ke
  %i.kg = fpext reassoc nsz arcp contract afn float %i.kf to double
  %i.kh = fmul reassoc nsz arcp contract afn double %i.kg, 2.560000e+02
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %.012.i.i.i
  store double %i.kh, ptr %i.ki, align 8, !tbaa !166
  %i.kj = add nuw i64 %.012.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.kj, %i.jh
  br i1 %exitcond.not.i.i.i, label %rgb2grey256.exit.i.i, label %.lr.ph.i193.i.i, !llvm.loop !539

rgb2grey256.exit.i.i:                             ; preds = %.lr.ph.i193.i.i, %bb.u
  %i.kk = and i32 %1, 1
  %.not186.i.i = icmp eq i32 %i.kk, 0
  br i1 %.not186.i.i, label %edge_enhance.exit.i.i, label %bb.v

bb.v:                                             ; preds = %rgb2grey256.exit.i.i
  %i.kl = tail call noalias ptr @malloc(i64 noundef %i.je) #33 ; 6 uses
  %cond.i.i.i = icmp eq ptr %i.kl, null
  br i1 %cond.i.i.i, label %edge_enhance.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.km = tail call noalias ptr @malloc(i64 noundef %i.je) #33 ; 5 uses
  %i.kn = icmp eq ptr %i.km, null
  br i1 %i.kn, label %.sink.split.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @edge_enhance_1d(ptr noundef nonnull readonly %i.jf, ptr noundef %i.kl, i32 noundef %i.aa, i32 noundef %i.z, i32 noundef 256)
  tail call fastcc void @edge_enhance_1d(ptr noundef nonnull readonly %i.jf, ptr noundef %i.km, i32 noundef %i.aa, i32 noundef %i.z, i32 noundef 512)
  br i1 %.not.i192.i.i, label %._crit_edge.i198.i.i, label %.lr.ph.i196.i.i.preheader

.lr.ph.i196.i.i.preheader:                        ; preds = %bb.x
  %min.iters.check169 = icmp ult i64 %i.jh, 4
  br i1 %min.iters.check169, label %.lr.ph.i196.i.i.preheader240, label %vector.ph170

vector.ph170:                                     ; preds = %.lr.ph.i196.i.i.preheader
  %n.vec171 = and i64 %i.jh, -4                   ; 3 uses
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph170
  %index173 = phi i64 [ 0, %vector.ph170 ], [ %index.next175, %vector.body172 ] ; 4 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %index173
  %wide.load = load <4 x double>, ptr %i.ko, align 8, !tbaa !166 ; 2 uses
  %i.kp = fmul reassoc nsz arcp contract afn <4 x double> %wide.load, %wide.load
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %index173
  %wide.load174 = load <4 x double>, ptr %i.kq, align 8, !tbaa !166 ; 2 uses
  %i.kr = fmul reassoc nsz arcp contract afn <4 x double> %wide.load174, %wide.load174
  %i.ks = fadd reassoc nsz arcp contract afn <4 x double> %i.kr, %i.kp
  %i.kt = tail call reassoc nsz arcp contract afn <4 x double> @llvm.sqrt.v4f64(<4 x double> %i.ks)
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %index173
  store <4 x double> %i.kt, ptr %i.ku, align 8, !tbaa !166
  %index.next175 = add nuw i64 %index173, 4       ; 2 uses
  %i.kv = icmp eq i64 %index.next175, %n.vec171
  br i1 %i.kv, label %middle.block176, label %vector.body172, !llvm.loop !540

middle.block176:                                  ; preds = %vector.body172
  %cmp.n = icmp eq i64 %i.jh, %n.vec171
  br i1 %cmp.n, label %._crit_edge.i198.i.i, label %.lr.ph.i196.i.i.preheader240

.lr.ph.i196.i.i.preheader240:                     ; preds = %.lr.ph.i196.i.i.preheader, %middle.block176
  %.039.i.i.i.ph = phi i64 [ 0, %.lr.ph.i196.i.i.preheader ], [ %n.vec171, %middle.block176 ]
  br label %.lr.ph.i196.i.i

._crit_edge.i198.i.i:                             ; preds = %.lr.ph.i196.i.i, %middle.block176, %bb.x
  tail call void @free(ptr noundef nonnull %i.kl) #34
  br label %.sink.split.i.i.i

.lr.ph.i196.i.i:                                  ; preds = %.lr.ph.i196.i.i.preheader240, %.lr.ph.i196.i.i
  %.039.i.i.i = phi i64 [ %i.lf, %.lr.ph.i196.i.i ], [ %.039.i.i.i.ph, %.lr.ph.i196.i.i.preheader240 ] ; 4 uses
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %.039.i.i.i
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !166 ; 2 uses
  %i.ky = fmul reassoc nsz arcp contract afn double %i.kx, %i.kx
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %.039.i.i.i
  %i.la = load double, ptr %i.kz, align 8, !tbaa !166 ; 2 uses
  %i.lb = fmul reassoc nsz arcp contract afn double %i.la, %i.la
  %i.lc = fadd reassoc nsz arcp contract afn double %i.lb, %i.ky
  %i.ld = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.lc)
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %.039.i.i.i
  store double %i.ld, ptr %i.le, align 8, !tbaa !166
  %i.lf = add nuw i64 %.039.i.i.i, 1              ; 2 uses
  %exitcond.not.i197.i.i = icmp eq i64 %i.lf, %i.jh
  br i1 %exitcond.not.i197.i.i, label %._crit_edge.i198.i.i, label %.lr.ph.i196.i.i, !llvm.loop !541

.sink.split.i.i.i:                                ; preds = %._crit_edge.i198.i.i, %bb.w
  %.sink.i.i.i = phi ptr [ %i.km, %._crit_edge.i198.i.i ], [ %i.kl, %bb.w ]
  tail call void @free(ptr noundef nonnull %.sink.i.i.i) #34
  br label %edge_enhance.exit.i.i

edge_enhance.exit.i.i:                            ; preds = %.sink.split.i.i.i, %bb.v, %rgb2grey256.exit.i.i
  %i.lg = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #33 ; 9 uses
  %i.lh = icmp eq ptr %i.lg, null
  br i1 %i.lh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %edge_enhance.exit.i.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.120) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.z:                                             ; preds = %edge_enhance.exit.i.i
  store i32 0, ptr %i.lg, align 8, !tbaa !554
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 4 ; 3 uses
  store i32 1, ptr %i.li, align 4, !tbaa !555
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 8 ; 2 uses
  store i32 7, ptr %i.lj, align 8, !tbaa !556
  %i.lk = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #33 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lg, i64 16 ; 4 uses
  store ptr %i.lk, ptr %i.ll, align 8, !tbaa !557
  %i.lm = icmp eq ptr %i.lk, null
  br i1 %i.lm, label %bb.aa, label %new_ntuple_list.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.120) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

new_ntuple_list.exit.i.i.i:                       ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.ln = icmp slt i32 %i.aa, 1
  %i.lo = icmp slt i32 %i.z, 1
  %or.cond3.i.i.i = or i1 %i.ln, %i.lo
  br i1 %or.cond3.i.i.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %new_ntuple_list.exit.i.i.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.108) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.ac:                                            ; preds = %new_ntuple_list.exit.i.i.i
  %i.lp = uitofp reassoc nsz arcp contract afn nneg i32 %i.aa to double
  %i.lq = fmul reassoc nnan nsz arcp contract afn double %i.lp, f0x3FEFAE147AE147AE ; 2 uses
  %i.lr = fcmp reassoc nsz arcp contract afn ogt double %i.lq, f0x41EFFFFFFFE00000
  br i1 %i.lr, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ls = uitofp reassoc nsz arcp contract afn nneg i32 %i.z to double
  %i.lt = fmul reassoc nnan nsz arcp contract afn double %i.ls, f0x3FEFAE147AE147AE ; 2 uses
  %i.lu = fcmp reassoc nsz arcp contract afn ogt double %i.lt, f0x41EFFFFFFFE00000
  br i1 %i.lu, label %bb.ae, label %new_ntuple_list.exit.i.i.i.i

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.127) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

new_ntuple_list.exit.i.i.i.i:                     ; preds = %bb.ad
  %i.lv = tail call reassoc nsz arcp contract afn double @llvm.ceil.f64(double %i.lq)
  %i.lw = fptoui double %i.lv to i32              ; 2 uses
  %i.lx = tail call reassoc nsz arcp contract afn double @llvm.ceil.f64(double %i.lt)
  %i.ly = fptoui double %i.lx to i32
  %i.lz = tail call fastcc ptr @new_image_double(i32 noundef %i.lw, i32 noundef %i.z) ; 6 uses
  %i.ma = tail call fastcc ptr @new_image_double(i32 noundef %i.lw, i32 noundef %i.ly) ; 6 uses
  %i.mb = shl nuw i32 %i.aa, 1                    ; 27 uses
  %i.mc = shl nuw i32 %i.z, 1                     ; 27 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.me = load i32, ptr %i.md, align 8, !tbaa !289 ; 10 uses
  %.not.i.i.i.i = icmp eq i32 %i.me, 0
  br i1 %.not.i.i.i.i, label %.preheader135.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %new_ntuple_list.exit.i.i.i.i
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lz, i64 12
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !290 ; 2 uses
  %.not153.i.i.i.i = icmp eq i32 %i.mg, 0
  %wide.trip.count165.i.i.i.i = zext i32 %i.mg to i64
  br label %.lr.ph.i164.i.i.i

.preheader135.i.i.i.i:                            ; preds = %._crit_edge141.i.i.i.i, %new_ntuple_list.exit.i.i.i.i
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ma, i64 12
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !290 ; 9 uses
  %.not155.i.i.i.i = icmp eq i32 %i.mi, 0         ; 2 uses
  br i1 %.not155.i.i.i.i, label %free_ntuple_list.exit.i.i.i.i, label %.lr.ph152.i.i.i.i

.lr.ph152.i.i.i.i:                                ; preds = %.preheader135.i.i.i.i
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mk = load i32, ptr %i.mj, align 8, !tbaa !289 ; 3 uses
  %.not156.i.i.i.i = icmp eq i32 %i.mk, 0
  %wide.trip.count180.i.i.i.i = zext i32 %i.mk to i64
  br label %.lr.ph.i157.i.i.i

.lr.ph.i164.i.i.i:                                ; preds = %._crit_edge141.i.i.i.i, %.lr.ph.i.i.i.i
  %.0122142.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i ], [ %i.ra, %._crit_edge141.i.i.i.i ] ; 3 uses
  %i.ml = uitofp reassoc nsz arcp contract afn i32 %.0122142.i.i.i.i to double
  %i.mm = fmul reassoc nnan nsz arcp contract afn double %i.ml, f0x3FF0295FAD40A57F ; 2 uses
  %i.mn = fadd reassoc nsz arcp contract afn double %i.mm, 5.000000e-01
  %i.mo = tail call reassoc nsz arcp contract afn double @llvm.floor.f64(double %i.mn)
  %i.mp = fptosi double %i.mo to i32              ; 8 uses
  %i.mq = uitofp nsz nneg i32 %i.mp to double
  %.neg11.i.i.i = fsub reassoc nsz arcp contract afn double -3.000000e+00, %i.mm
  %i.mr = fadd reassoc nsz arcp contract afn double %.neg11.i.i.i, %i.mq ; 4 uses
  %i.ms = fmul reassoc nsz arcp contract afn double %i.mr, %i.mr
  %i.mt = fmul reassoc nsz arcp contract afn double %i.ms, f0xBFF5C7AE147AE147
  %i.mu = tail call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.mt) ; 3 uses
  %i.mv = insertelement <2 x double> poison, double %i.mr, i64 0
  %i.mw = shufflevector <2 x double> %i.mv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mx = fadd reassoc nsz arcp contract afn <2 x double> %i.mw, <double 6.000000e+00, double 1.000000e+00> ; 2 uses
  %i.my = fmul reassoc nsz arcp contract afn <2 x double> %i.mx, %i.mx
  %i.mz = fmul reassoc nsz arcp contract afn <2 x double> %i.my, splat (double f0xBFF5C7AE147AE147)
  %i.na = tail call reassoc nsz arcp contract afn <2 x double> @llvm.exp.v2f64(<2 x double> %i.mz) ; 4 uses
  %i.nb = extractelement <2 x double> %i.na, i64 1
  %i.nc = insertelement <4 x double> poison, double %i.mr, i64 0
  %i.nd = shufflevector <4 x double> %i.nc, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ne = fadd reassoc nsz arcp contract afn <4 x double> %i.nd, <double 2.000000e+00, double 3.000000e+00, double 4.000000e+00, double 5.000000e+00> ; 2 uses
  %i.nf = fmul reassoc nsz arcp contract afn <4 x double> %i.ne, %i.ne
  %i.ng = fmul reassoc nsz arcp contract afn <4 x double> %i.nf, splat (double f0xBFF5C7AE147AE147)
  %i.nh = tail call reassoc nsz arcp contract afn <4 x double> @llvm.exp.v4f64(<4 x double> %i.ng) ; 3 uses
  %i.ni = extractelement <2 x double> %i.na, i64 0
  %op.rdx226.a = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double %i.nb, <4 x double> %i.nh)
  %op.rdx227.a = fadd reassoc nsz arcp contract afn double %i.ni, %i.mu
  %op.rdx228 = fadd reassoc nsz arcp contract afn double %op.rdx226.a, %op.rdx227.a ; 4 uses
  %i.nj = fcmp reassoc nsz arcp contract afn ult double %op.rdx228, 0.000000e+00
  br i1 %i.nj, label %gaussian_kernel.exit176.i.i.i, label %.lr.ph31.i171.preheader.i.i.i

.lr.ph31.i171.preheader.i.i.i:                    ; preds = %.lr.ph.i164.i.i.i
  %i.nk = fdiv reassoc nsz arcp contract afn double %i.mu, %op.rdx228
  %i.nl = insertelement <4 x double> poison, double %op.rdx228, i64 0
  %i.nm = shufflevector <4 x double> %i.nl, <4 x double> poison, <4 x i32> zeroinitializer
  %i.nn = fdiv reassoc nsz arcp contract afn <4 x double> %i.nh, %i.nm
  %i.no = insertelement <2 x double> poison, double %op.rdx228, i64 0
  %i.np = shufflevector <2 x double> %i.no, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nq = fdiv reassoc nsz arcp contract afn <2 x double> %i.na, %i.np
  br label %gaussian_kernel.exit176.i.i.i

gaussian_kernel.exit176.i.i.i:                    ; preds = %.lr.ph31.i171.preheader.i.i.i, %.lr.ph.i164.i.i.i
  %i.nr = phi double [ %i.nk, %.lr.ph31.i171.preheader.i.i.i ], [ %i.mu, %.lr.ph.i164.i.i.i ]
  %i.ns = phi <4 x double> [ %i.nn, %.lr.ph31.i171.preheader.i.i.i ], [ %i.nh, %.lr.ph.i164.i.i.i ]
  %i.nt = phi <2 x double> [ %i.nq, %.lr.ph31.i171.preheader.i.i.i ], [ %i.na, %.lr.ph.i164.i.i.i ] ; 2 uses
  br i1 %.not153.i.i.i.i, label %._crit_edge141.i.i.i.i, label %.preheader137.lr.ph.split.us.i.i.i.i

.preheader137.lr.ph.split.us.i.i.i.i:             ; preds = %gaussian_kernel.exit176.i.i.i
  %i.nu = add nsw i32 %i.mp, -3
  %i.nv = load ptr, ptr %i.lz, align 8, !tbaa !291
  %i.nw = add nsw i32 %i.mp, -2
  %i.nx = add nsw i32 %i.mp, -1
  %i.ny = add nuw i32 %i.mp, 1
  %i.nz = add nuw i32 %i.mp, 2
  %i.oa = add nuw i32 %i.mp, 3
  %i.ob = extractelement <2 x double> %i.nt, i64 0
  %i.oc = extractelement <2 x double> %i.nt, i64 1
  br label %.preheader137.us.i.i.i.i

.preheader137.us.i.i.i.i:                         ; preds = %._crit_edge.us.i.i.i.i, %.preheader137.lr.ph.split.us.i.i.i.i
  %indvars.iv162.i.i.i.i = phi i64 [ %indvars.iv.next163.i.i.i.i, %._crit_edge.us.i.i.i.i ], [ 0, %.preheader137.lr.ph.split.us.i.i.i.i ] ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.preheader137.us.i.i.i.i
  %.0116.us.i.i.i.i = phi i32 [ %i.nu, %.preheader137.us.i.i.i.i ], [ %i.oe, %bb.af ] ; 3 uses
  %i.od = icmp slt i32 %.0116.us.i.i.i.i, 0
  %i.oe = add nsw i32 %.0116.us.i.i.i.i, %i.mb
  br i1 %i.od, label %bb.af, label %.preheader136.us.i.i.i.i

.preheader136.us.i.i.i.i:                         ; preds = %bb.af, %.preheader136.us.i.i.i.i
  %.1117.us.i.i.i.i = phi i32 [ %i.of, %.preheader136.us.i.i.i.i ], [ %.0116.us.i.i.i.i, %bb.af ] ; 5 uses
  %.not130.us.i.i.i.i = icmp slt i32 %.1117.us.i.i.i.i, %i.mb
  %i.of = sub nsw i32 %.1117.us.i.i.i.i, %i.mb
  br i1 %.not130.us.i.i.i.i, label %bb.ag, label %.preheader136.us.i.i.i.i

bb.ag:                                            ; preds = %.preheader136.us.i.i.i.i
  %i.og = trunc nuw i64 %indvars.iv162.i.i.i.i to i32 ; 2 uses
  %i.oh = mul i32 %i.aa, %i.og                    ; 7 uses
  %.not131.us.i.i.i.i = icmp slt i32 %.1117.us.i.i.i.i, %i.aa
  %i.oi = xor i32 %.1117.us.i.i.i.i, -1
  %i.oj = add i32 %i.mb, %i.oi
  %.2.us.i.i.i.i = select i1 %.not131.us.i.i.i.i, i32 %.1117.us.i.i.i.i, i32 %i.oj
  %i.ok = add i32 %.2.us.i.i.i.i, %i.oh
  %i.ol = zext i32 %i.ok to i64
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.ol
  %i.on = load double, ptr %i.om, align 8, !tbaa !166
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %.0116.us.i.1.i.i.i = phi i32 [ %i.nw, %bb.ag ], [ %i.op, %bb.ah ] ; 3 uses
  %i.oo = icmp slt i32 %.0116.us.i.1.i.i.i, 0
  %i.op = add nsw i32 %.0116.us.i.1.i.i.i, %i.mb
  br i1 %i.oo, label %bb.ah, label %.preheader136.us.i.1.i.i.i

.preheader136.us.i.1.i.i.i:                       ; preds = %bb.ah, %.preheader136.us.i.1.i.i.i
  %.1117.us.i.1.i.i.i = phi i32 [ %i.oq, %.preheader136.us.i.1.i.i.i ], [ %.0116.us.i.1.i.i.i, %bb.ah ] ; 5 uses
  %.not130.us.i.1.i.i.i = icmp slt i32 %.1117.us.i.1.i.i.i, %i.mb
  %i.oq = sub nsw i32 %.1117.us.i.1.i.i.i, %i.mb
  br i1 %.not130.us.i.1.i.i.i, label %bb.ai, label %.preheader136.us.i.1.i.i.i

bb.ai:                                            ; preds = %.preheader136.us.i.1.i.i.i
  %.not131.us.i.1.i.i.i = icmp slt i32 %.1117.us.i.1.i.i.i, %i.aa
  %i.or = xor i32 %.1117.us.i.1.i.i.i, -1
  %i.os = add i32 %i.mb, %i.or
  %.2.us.i.1.i.i.i = select i1 %.not131.us.i.1.i.i.i, i32 %.1117.us.i.1.i.i.i, i32 %i.os
  %i.ot = add i32 %.2.us.i.1.i.i.i, %i.oh
  %i.ou = zext i32 %i.ot to i64
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.ou
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !166
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %.0116.us.i.2.i.i.i = phi i32 [ %i.nx, %bb.ai ], [ %i.oy, %bb.aj ] ; 3 uses
  %i.ox = icmp slt i32 %.0116.us.i.2.i.i.i, 0
  %i.oy = add nsw i32 %.0116.us.i.2.i.i.i, %i.mb
  br i1 %i.ox, label %bb.aj, label %.preheader136.us.i.2.i.i.i

.preheader136.us.i.2.i.i.i:                       ; preds = %bb.aj, %.preheader136.us.i.2.i.i.i
  %.1117.us.i.2.i.i.i = phi i32 [ %i.oz, %.preheader136.us.i.2.i.i.i ], [ %.0116.us.i.2.i.i.i, %bb.aj ] ; 5 uses
  %.not130.us.i.2.i.i.i = icmp slt i32 %.1117.us.i.2.i.i.i, %i.mb
  %i.oz = sub nsw i32 %.1117.us.i.2.i.i.i, %i.mb
  br i1 %.not130.us.i.2.i.i.i, label %.preheader136.us.i.preheader.3.i.i.i, label %.preheader136.us.i.2.i.i.i

.preheader136.us.i.preheader.3.i.i.i:             ; preds = %.preheader136.us.i.2.i.i.i
  %.not131.us.i.2.i.i.i = icmp slt i32 %.1117.us.i.2.i.i.i, %i.aa
  %i.pa = xor i32 %.1117.us.i.2.i.i.i, -1
  %i.pb = add i32 %i.mb, %i.pa
  %.2.us.i.2.i.i.i = select i1 %.not131.us.i.2.i.i.i, i32 %.1117.us.i.2.i.i.i, i32 %i.pb
  %i.pc = add i32 %.2.us.i.2.i.i.i, %i.oh
  %i.pd = zext i32 %i.pc to i64
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.pd
  %i.pf = load double, ptr %i.pe, align 8, !tbaa !166
  br label %.preheader136.us.i.3.i.i.i

.preheader136.us.i.3.i.i.i:                       ; preds = %.preheader136.us.i.3.i.i.i, %.preheader136.us.i.preheader.3.i.i.i
  %.1117.us.i.3.i.i.i = phi i32 [ %i.pg, %.preheader136.us.i.3.i.i.i ], [ %i.mp, %.preheader136.us.i.preheader.3.i.i.i ] ; 5 uses
  %.not130.us.i.3.i.i.i = icmp slt i32 %.1117.us.i.3.i.i.i, %i.mb
  %i.pg = sub nsw i32 %.1117.us.i.3.i.i.i, %i.mb
  br i1 %.not130.us.i.3.i.i.i, label %bb.ak, label %.preheader136.us.i.3.i.i.i

bb.ak:                                            ; preds = %.preheader136.us.i.3.i.i.i
  %.not131.us.i.3.i.i.i = icmp slt i32 %.1117.us.i.3.i.i.i, %i.aa
  %i.ph = xor i32 %.1117.us.i.3.i.i.i, -1
  %i.pi = add i32 %i.mb, %i.ph
  %.2.us.i.3.i.i.i = select i1 %.not131.us.i.3.i.i.i, i32 %.1117.us.i.3.i.i.i, i32 %i.pi
  %i.pj = add i32 %.2.us.i.3.i.i.i, %i.oh
  %i.pk = zext i32 %i.pj to i64
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.pk
  %i.pm = load double, ptr %i.pl, align 8, !tbaa !166
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %bb.ak
  %.0116.us.i.4.i.i.i = phi i32 [ %i.ny, %bb.ak ], [ %i.po, %bb.al ] ; 3 uses
  %i.pn = icmp slt i32 %.0116.us.i.4.i.i.i, 0
  %i.po = add nsw i32 %.0116.us.i.4.i.i.i, %i.mb
  br i1 %i.pn, label %bb.al, label %.preheader136.us.i.4.i.i.i

.preheader136.us.i.4.i.i.i:                       ; preds = %bb.al, %.preheader136.us.i.4.i.i.i
  %.1117.us.i.4.i.i.i = phi i32 [ %i.pp, %.preheader136.us.i.4.i.i.i ], [ %.0116.us.i.4.i.i.i, %bb.al ] ; 5 uses
  %.not130.us.i.4.i.i.i = icmp slt i32 %.1117.us.i.4.i.i.i, %i.mb
  %i.pp = sub nsw i32 %.1117.us.i.4.i.i.i, %i.mb
  br i1 %.not130.us.i.4.i.i.i, label %bb.am, label %.preheader136.us.i.4.i.i.i

bb.am:                                            ; preds = %.preheader136.us.i.4.i.i.i
  %.not131.us.i.4.i.i.i = icmp slt i32 %.1117.us.i.4.i.i.i, %i.aa
  %i.pq = xor i32 %.1117.us.i.4.i.i.i, -1
  %i.pr = add i32 %i.mb, %i.pq
  %.2.us.i.4.i.i.i = select i1 %.not131.us.i.4.i.i.i, i32 %.1117.us.i.4.i.i.i, i32 %i.pr
  %i.ps = add i32 %.2.us.i.4.i.i.i, %i.oh
  %i.pt = zext i32 %i.ps to i64
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.pt
  %i.pv = load double, ptr %i.pu, align 8, !tbaa !166
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %bb.am
  %.0116.us.i.5.i.i.i = phi i32 [ %i.nz, %bb.am ], [ %i.px, %bb.an ] ; 3 uses
  %i.pw = icmp slt i32 %.0116.us.i.5.i.i.i, 0
  %i.px = add nsw i32 %.0116.us.i.5.i.i.i, %i.mb
  br i1 %i.pw, label %bb.an, label %.preheader136.us.i.5.i.i.i

.preheader136.us.i.5.i.i.i:                       ; preds = %bb.an, %.preheader136.us.i.5.i.i.i
  %.1117.us.i.5.i.i.i = phi i32 [ %i.py, %.preheader136.us.i.5.i.i.i ], [ %.0116.us.i.5.i.i.i, %bb.an ] ; 5 uses
  %.not130.us.i.5.i.i.i = icmp slt i32 %.1117.us.i.5.i.i.i, %i.mb
  %i.py = sub nsw i32 %.1117.us.i.5.i.i.i, %i.mb
  br i1 %.not130.us.i.5.i.i.i, label %bb.ao, label %.preheader136.us.i.5.i.i.i

bb.ao:                                            ; preds = %.preheader136.us.i.5.i.i.i
  %.not131.us.i.5.i.i.i = icmp slt i32 %.1117.us.i.5.i.i.i, %i.aa
  %i.pz = xor i32 %.1117.us.i.5.i.i.i, -1
end_hunk_1
begin_hunk_2_@_do_get_structure_auto:bb.a
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %.preheader134.us.i.i.i.i
  %.3.us.i.i.i.i = phi i32 [ %i.sk, %.preheader134.us.i.i.i.i ], [ %i.sw, %bb.aq ] ; 3 uses
  %i.sv = icmp slt i32 %.3.us.i.i.i.i, 0
  %i.sw = add nsw i32 %.3.us.i.i.i.i, %i.mc
  br i1 %i.sv, label %bb.aq, label %.preheader.us.i.i.i.i

.preheader.us.i.i.i.i:                            ; preds = %bb.aq, %.preheader.us.i.i.i.i
  %.4.us.i.i.i.i = phi i32 [ %i.sx, %.preheader.us.i.i.i.i ], [ %.3.us.i.i.i.i, %bb.aq ] ; 5 uses
  %.not.us.i.i.i.i = icmp slt i32 %.4.us.i.i.i.i, %i.mc
  %i.sx = sub nsw i32 %.4.us.i.i.i.i, %i.mc
  br i1 %.not.us.i.i.i.i, label %bb.ar, label %.preheader.us.i.i.i.i

bb.ar:                                            ; preds = %.preheader.us.i.i.i.i
  %i.sy = trunc nuw i64 %indvars.iv177.i.i.i.i to i32 ; 8 uses
  %.not129.us.i.i.i.i = icmp slt i32 %.4.us.i.i.i.i, %i.z
  %i.sz = xor i32 %.4.us.i.i.i.i, -1
  %i.ta = add i32 %i.mc, %i.sz
  %.5.us.i.i.i.i = select i1 %.not129.us.i.i.i.i, i32 %.4.us.i.i.i.i, i32 %i.ta
  %i.tb = mul i32 %.5.us.i.i.i.i, %i.me
  %i.tc = add i32 %i.tb, %i.sy
  %i.td = zext i32 %i.tc to i64
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.sn, i64 %i.td
  %i.tf = load double, ptr %i.te, align 8, !tbaa !166
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %bb.ar
  %.3.us.i.1.i.i.i = phi i32 [ %i.so, %bb.ar ], [ %i.th, %bb.as ] ; 3 uses
  %i.tg = icmp slt i32 %.3.us.i.1.i.i.i, 0
  %i.th = add nsw i32 %.3.us.i.1.i.i.i, %i.mc
  br i1 %i.tg, label %bb.as, label %.preheader.us.i.1.i.i.i

.preheader.us.i.1.i.i.i:                          ; preds = %bb.as, %.preheader.us.i.1.i.i.i
  %.4.us.i.1.i.i.i = phi i32 [ %i.ti, %.preheader.us.i.1.i.i.i ], [ %.3.us.i.1.i.i.i, %bb.as ] ; 5 uses
  %.not.us.i.1.i.i.i = icmp slt i32 %.4.us.i.1.i.i.i, %i.mc
  %i.ti = sub nsw i32 %.4.us.i.1.i.i.i, %i.mc
  br i1 %.not.us.i.1.i.i.i, label %bb.at, label %.preheader.us.i.1.i.i.i

bb.at:                                            ; preds = %.preheader.us.i.1.i.i.i
  %.not129.us.i.1.i.i.i = icmp slt i32 %.4.us.i.1.i.i.i, %i.z
  %i.tj = xor i32 %.4.us.i.1.i.i.i, -1
  %i.tk = add i32 %i.mc, %i.tj
  %.5.us.i.1.i.i.i = select i1 %.not129.us.i.1.i.i.i, i32 %.4.us.i.1.i.i.i, i32 %i.tk
  %i.tl = mul i32 %.5.us.i.1.i.i.i, %i.me
  %i.tm = add i32 %i.tl, %i.sy
  %i.tn = zext i32 %i.tm to i64
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.sn, i64 %i.tn
  %i.tp = load double, ptr %i.to, align 8, !tbaa !166
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %bb.at
  %.3.us.i.2.i.i.i = phi i32 [ %i.sp, %bb.at ], [ %i.tr, %bb.au ] ; 3 uses
  %i.tq = icmp slt i32 %.3.us.i.2.i.i.i, 0
  %i.tr = add nsw i32 %.3.us.i.2.i.i.i, %i.mc
  br i1 %i.tq, label %bb.au, label %.preheader.us.i.2.i.i.i

.preheader.us.i.2.i.i.i:                          ; preds = %bb.au, %.preheader.us.i.2.i.i.i
  %.4.us.i.2.i.i.i = phi i32 [ %i.ts, %.preheader.us.i.2.i.i.i ], [ %.3.us.i.2.i.i.i, %bb.au ] ; 5 uses
  %.not.us.i.2.i.i.i = icmp slt i32 %.4.us.i.2.i.i.i, %i.mc
  %i.ts = sub nsw i32 %.4.us.i.2.i.i.i, %i.mc
  br i1 %.not.us.i.2.i.i.i, label %.preheader.us.i.preheader.3.i.i.i, label %.preheader.us.i.2.i.i.i

.preheader.us.i.preheader.3.i.i.i:                ; preds = %.preheader.us.i.2.i.i.i
  %.not129.us.i.2.i.i.i = icmp slt i32 %.4.us.i.2.i.i.i, %i.z
  %i.tt = xor i32 %.4.us.i.2.i.i.i, -1
  %i.tu = add i32 %i.mc, %i.tt
  %.5.us.i.2.i.i.i = select i1 %.not129.us.i.2.i.i.i, i32 %.4.us.i.2.i.i.i, i32 %i.tu
  %i.tv = mul i32 %.5.us.i.2.i.i.i, %i.me
  %i.tw = add i32 %i.tv, %i.sy
  %i.tx = zext i32 %i.tw to i64
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.sn, i64 %i.tx
  %i.tz = load double, ptr %i.ty, align 8, !tbaa !166
  br label %.preheader.us.i.3.i.i.i

.preheader.us.i.3.i.i.i:                          ; preds = %.preheader.us.i.3.i.i.i, %.preheader.us.i.preheader.3.i.i.i
  %.4.us.i.3.i.i.i = phi i32 [ %i.ua, %.preheader.us.i.3.i.i.i ], [ %i.rf, %.preheader.us.i.preheader.3.i.i.i ] ; 5 uses
  %.not.us.i.3.i.i.i = icmp slt i32 %.4.us.i.3.i.i.i, %i.mc
  %i.ua = sub nsw i32 %.4.us.i.3.i.i.i, %i.mc
  br i1 %.not.us.i.3.i.i.i, label %bb.av, label %.preheader.us.i.3.i.i.i

bb.av:                                            ; preds = %.preheader.us.i.3.i.i.i
  %.not129.us.i.3.i.i.i = icmp slt i32 %.4.us.i.3.i.i.i, %i.z
  %i.ub = xor i32 %.4.us.i.3.i.i.i, -1
  %i.uc = add i32 %i.mc, %i.ub
  %.5.us.i.3.i.i.i = select i1 %.not129.us.i.3.i.i.i, i32 %.4.us.i.3.i.i.i, i32 %i.uc
  %i.ud = mul i32 %.5.us.i.3.i.i.i, %i.me
  %i.ue = add i32 %i.ud, %i.sy
  %i.uf = zext i32 %i.ue to i64
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.sn, i64 %i.uf
  %i.uh = load double, ptr %i.ug, align 8, !tbaa !166
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %bb.av
  %.3.us.i.4.i.i.i = phi i32 [ %i.sq, %bb.av ], [ %i.uj, %bb.aw ] ; 3 uses
  %i.ui = icmp slt i32 %.3.us.i.4.i.i.i, 0
  %i.uj = add nsw i32 %.3.us.i.4.i.i.i, %i.mc
  br i1 %i.ui, label %bb.aw, label %.preheader.us.i.4.i.i.i

.preheader.us.i.4.i.i.i:                          ; preds = %bb.aw, %.preheader.us.i.4.i.i.i
  %.4.us.i.4.i.i.i = phi i32 [ %i.uk, %.preheader.us.i.4.i.i.i ], [ %.3.us.i.4.i.i.i, %bb.aw ] ; 5 uses
  %.not.us.i.4.i.i.i = icmp slt i32 %.4.us.i.4.i.i.i, %i.mc
  %i.uk = sub nsw i32 %.4.us.i.4.i.i.i, %i.mc
  br i1 %.not.us.i.4.i.i.i, label %bb.ax, label %.preheader.us.i.4.i.i.i

bb.ax:                                            ; preds = %.preheader.us.i.4.i.i.i
  %.not129.us.i.4.i.i.i = icmp slt i32 %.4.us.i.4.i.i.i, %i.z
  %i.ul = xor i32 %.4.us.i.4.i.i.i, -1
  %i.um = add i32 %i.mc, %i.ul
  %.5.us.i.4.i.i.i = select i1 %.not129.us.i.4.i.i.i, i32 %.4.us.i.4.i.i.i, i32 %i.um
  %i.un = mul i32 %.5.us.i.4.i.i.i, %i.me
  %i.uo = add i32 %i.un, %i.sy
  %i.up = zext i32 %i.uo to i64
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.sn, i64 %i.up
  %i.ur = load double, ptr %i.uq, align 8, !tbaa !166
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %bb.ax
  %.3.us.i.5.i.i.i = phi i32 [ %i.sr, %bb.ax ], [ %i.ut, %bb.ay ] ; 3 uses
  %i.us = icmp slt i32 %.3.us.i.5.i.i.i, 0
  %i.ut = add nsw i32 %.3.us.i.5.i.i.i, %i.mc
  br i1 %i.us, label %bb.ay, label %.preheader.us.i.5.i.i.i

.preheader.us.i.5.i.i.i:                          ; preds = %bb.ay, %.preheader.us.i.5.i.i.i
  %.4.us.i.5.i.i.i = phi i32 [ %i.uu, %.preheader.us.i.5.i.i.i ], [ %.3.us.i.5.i.i.i, %bb.ay ] ; 5 uses
  %.not.us.i.5.i.i.i = icmp slt i32 %.4.us.i.5.i.i.i, %i.mc
  %i.uu = sub nsw i32 %.4.us.i.5.i.i.i, %i.mc
  br i1 %.not.us.i.5.i.i.i, label %bb.az, label %.preheader.us.i.5.i.i.i

bb.az:                                            ; preds = %.preheader.us.i.5.i.i.i
  %.not129.us.i.5.i.i.i = icmp slt i32 %.4.us.i.5.i.i.i, %i.z
  %i.uv = xor i32 %.4.us.i.5.i.i.i, -1
  %i.uw = add i32 %i.mc, %i.uv
  %.5.us.i.5.i.i.i = select i1 %.not129.us.i.5.i.i.i, i32 %.4.us.i.5.i.i.i, i32 %i.uw
  %i.ux = mul i32 %.5.us.i.5.i.i.i, %i.me
  %i.uy = add i32 %i.ux, %i.sy
  %i.uz = zext i32 %i.uy to i64
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %i.sn, i64 %i.uz
  %i.vb = load double, ptr %i.va, align 8, !tbaa !166
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %bb.az
  %.3.us.i.6.i.i.i = phi i32 [ %i.ss, %bb.az ], [ %i.vd, %bb.ba ] ; 3 uses
  %i.vc = icmp slt i32 %.3.us.i.6.i.i.i, 0
  %i.vd = add nsw i32 %.3.us.i.6.i.i.i, %i.mc
  br i1 %i.vc, label %bb.ba, label %.preheader.us.i.6.i.i.i

.preheader.us.i.6.i.i.i:                          ; preds = %bb.ba, %.preheader.us.i.6.i.i.i
  %.4.us.i.6.i.i.i = phi i32 [ %i.ve, %.preheader.us.i.6.i.i.i ], [ %.3.us.i.6.i.i.i, %bb.ba ] ; 5 uses
  %.not.us.i.6.i.i.i = icmp slt i32 %.4.us.i.6.i.i.i, %i.mc
  %i.ve = sub nsw i32 %.4.us.i.6.i.i.i, %i.mc
  br i1 %.not.us.i.6.i.i.i, label %._crit_edge.us150.i.i.i.i, label %.preheader.us.i.6.i.i.i

._crit_edge.us150.i.i.i.i:                        ; preds = %.preheader.us.i.6.i.i.i
  %i.vf = fmul reassoc nsz arcp contract afn double %i.tf, %i.sh
  %i.vg = fmul reassoc nsz arcp contract afn double %i.tp, %i.su
  %i.vh = insertelement <4 x double> poison, double %i.tz, i64 0
  %i.vi = insertelement <4 x double> %i.vh, double %i.uh, i64 1
  %i.vj = insertelement <4 x double> %i.vi, double %i.ur, i64 2
  %i.vk = insertelement <4 x double> %i.vj, double %i.vb, i64 3
  %i.vl = fmul reassoc nsz arcp contract afn <4 x double> %i.vk, %i.si
  %.not129.us.i.6.i.i.i = icmp slt i32 %.4.us.i.6.i.i.i, %i.z
  %i.vm = xor i32 %.4.us.i.6.i.i.i, -1
  %i.vn = add i32 %i.mc, %i.vm
  %.5.us.i.6.i.i.i = select i1 %.not129.us.i.6.i.i.i, i32 %.4.us.i.6.i.i.i, i32 %i.vn
  %i.vo = mul i32 %.5.us.i.6.i.i.i, %i.me
  %i.vp = add i32 %i.vo, %i.sy
  %i.vq = zext i32 %i.vp to i64
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %i.sn, i64 %i.vq
  %i.vs = load double, ptr %i.vr, align 8, !tbaa !166
  %i.vt = fmul reassoc nsz arcp contract afn double %i.vs, %i.st
  %op.rdx = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double %i.vg, <4 x double> %i.vl)
  %op.rdx218.a = fadd reassoc nsz arcp contract afn double %i.vf, %i.vt
  %op.rdx219 = fadd reassoc nsz arcp contract afn double %op.rdx, %op.rdx218.a
  %i.vu = add i32 %i.sm, %i.sy
  %i.vv = zext i32 %i.vu to i64
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %i.sl, i64 %i.vv
  store double %op.rdx219, ptr %i.vw, align 8, !tbaa !166
  %indvars.iv.next178.i.i.i.i = add nuw nsw i64 %indvars.iv177.i.i.i.i, 1 ; 2 uses
  %exitcond181.not.i.i.i.i = icmp eq i64 %indvars.iv.next178.i.i.i.i, %wide.trip.count180.i.i.i.i
  br i1 %exitcond181.not.i.i.i.i, label %._crit_edge149.i.i.i.i, label %.preheader134.us.i.i.i.i

._crit_edge149.i.i.i.i:                           ; preds = %._crit_edge.us150.i.i.i.i, %gaussian_kernel.exit.i.i.i
  %i.vx = add nuw i32 %.1121151.i.i.i.i, 1        ; 2 uses
  %exitcond42.not.i.i.i = icmp eq i32 %i.vx, %i.mi
  br i1 %exitcond42.not.i.i.i, label %free_ntuple_list.exit.i.i.i.i, label %.lr.ph.i157.i.i.i

free_ntuple_list.exit.i.i.i.i:                    ; preds = %._crit_edge149.i.i.i.i, %.preheader135.i.i.i.i
  %i.vy = load ptr, ptr %i.lz, align 8, !tbaa !291 ; 2 uses
  %i.vz = icmp eq ptr %i.vy, null
  br i1 %i.vz, label %bb.bb, label %gaussian_sampler.exit.i.i.i

bb.bb:                                            ; preds = %free_ntuple_list.exit.i.i.i.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.139) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

gaussian_sampler.exit.i.i.i:                      ; preds = %free_ntuple_list.exit.i.i.i.i
  tail call void @free(ptr noundef nonnull %i.vy) #34
  tail call void @free(ptr noundef nonnull %i.lz) #34
  %i.wa = load ptr, ptr %i.ma, align 8, !tbaa !291 ; 6 uses
  %i.wb = icmp eq ptr %i.wa, null
  br i1 %i.wb, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %gaussian_sampler.exit.i.i.i
  %i.wc = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.wd = load i32, ptr %i.wc, align 8, !tbaa !289 ; 22 uses
  %i.we = icmp eq i32 %i.wd, 0
  %brmerge.i.i.i = or i1 %.not155.i.i.i.i, %i.we
  br i1 %brmerge.i.i.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc, %gaussian_sampler.exit.i.i.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.133) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.wf = tail call fastcc ptr @new_image_double(i32 noundef %i.wd, i32 noundef %i.mi) ; 32 uses
  %i.wg = tail call fastcc ptr @new_image_double(i32 noundef %i.wd, i32 noundef %i.mi) ; 6 uses
  %i.wh = mul i32 %i.wd, %i.mi
  %i.wi = zext i32 %i.wh to i64
  %i.wj = tail call noalias ptr @calloc(i64 noundef %i.wi, i64 noundef 16) #36 ; 4 uses
  %i.wk = tail call noalias dereferenceable_or_null(8192) ptr @calloc(i64 noundef 1024, i64 noundef 8) #36 ; 21 uses
  %i.wl = tail call noalias dereferenceable_or_null(8192) ptr @calloc(i64 noundef 1024, i64 noundef 8) #36 ; 10 uses
  %i.wm = icmp eq ptr %i.wj, null
  %i.wn = icmp eq ptr %i.wk, null
  %or.cond.i136.i.i.i = or i1 %i.wm, %i.wn
  %i.wo = icmp eq ptr %i.wl, null
  %or.cond3.i.i.i.i = or i1 %or.cond.i136.i.i.i, %i.wo
  br i1 %or.cond3.i.i.i.i, label %bb.bf, label %iter.check

iter.check:                                       ; preds = %bb.be
  %i.wp = load ptr, ptr %i.wf, align 8, !tbaa !291 ; 28 uses
  %i.wq = add i32 %i.mi, -1                       ; 3 uses
  %i.wr = mul i32 %i.wd, %i.wq                    ; 12 uses
  %wide.trip.count.i137.i.i.i = zext i32 %i.wd to i64 ; 9 uses
  %min.iters.check179.a = icmp ult i32 %i.wd, 4
  br i1 %min.iters.check179.a, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ws = add nsw i64 %wide.trip.count.i137.i.i.i, -1 ; 2 uses
  %i.wt = trunc i64 %i.ws to i32
  %i.wu = xor i32 %i.wr, -1
  %i.wv = icmp ult i32 %i.wu, %i.wt
  %i.ww = icmp ugt i64 %i.ws, 4294967295
  %i.wx = or i1 %i.wv, %i.ww
  br i1 %i.wx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check180 = icmp ult i32 %i.wd, 16
  br i1 %min.iters.check180, label %vec.epilog.ph, label %vector.ph181

vector.ph181:                                     ; preds = %vector.main.loop.iter.check
  %i.wy = and i64 %wide.trip.count.i137.i.i.i, 12
  %n.vec182 = and i64 %wide.trip.count.i137.i.i.i, 4294967280 ; 4 uses
  br label %vector.body183

vector.body183:                                   ; preds = %vector.ph181, %vector.body183
  %index184 = phi i64 [ 0, %vector.ph181 ], [ %index.next185, %vector.body183 ] ; 2 uses
  %i.wz = trunc nuw i64 %index184 to i32
  %i.xa = add i32 %i.wr, %i.wz
  %i.xb = zext i32 %i.xa to i64
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.xb ; 4 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 32
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xc, i64 64
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xc, i64 96
  store <4 x double> splat (double -1.024000e+03), ptr %i.xc, align 8, !tbaa !166
  store <4 x double> splat (double -1.024000e+03), ptr %i.xd, align 8, !tbaa !166
  store <4 x double> splat (double -1.024000e+03), ptr %i.xe, align 8, !tbaa !166
  store <4 x double> splat (double -1.024000e+03), ptr %i.xf, align 8, !tbaa !166
  %index.next185 = add nuw i64 %index184, 16      ; 2 uses
  %i.xg = icmp eq i64 %index.next185, %n.vec182
  br i1 %i.xg, label %middle.block186, label %vector.body183, !llvm.loop !542

middle.block186:                                  ; preds = %vector.body183
  %cmp.n187 = icmp eq i64 %n.vec182, %wide.trip.count.i137.i.i.i
  br i1 %cmp.n187, label %iter.check206, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block186
  %min.epilog.iters.check = icmp eq i64 %i.wy, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !269

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec182, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec188 = and i64 %wide.trip.count.i137.i.i.i, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index189 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next190, %vec.epilog.vector.body ] ; 2 uses
  %i.xh = trunc nuw i64 %index189 to i32
  %i.xi = add i32 %i.wr, %i.xh
  %i.xj = zext i32 %i.xi to i64
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.xj
  store <4 x double> splat (double -1.024000e+03), ptr %i.xk, align 8, !tbaa !166
  %index.next190 = add nuw i64 %index189, 4       ; 2 uses
  %i.xl = icmp eq i64 %index.next190, %n.vec188
  br i1 %i.xl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !543

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n191 = icmp eq i64 %n.vec188, %wide.trip.count.i137.i.i.i
  br i1 %cmp.n191, label %iter.check206, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i138.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %n.vec182, %vec.epilog.iter.check ], [ %n.vec188, %vec.epilog.middle.block ] ; 4 uses
  %i.xm = sub nsw i64 %wide.trip.count.i137.i.i.i, %indvars.iv.i138.i.i.i.ph
  %xtraiter244 = and i64 %i.xm, 7                 ; 2 uses
  %lcmp.mod245.not = icmp eq i64 %xtraiter244, 0
  br i1 %lcmp.mod245.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i138.i.i.i.prol = phi i64 [ %indvars.iv.next.i139.i.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i138.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.xn = trunc nuw i64 %indvars.iv.i138.i.i.i.prol to i32
  %i.xo = add i32 %i.wr, %i.xn
  %i.xp = zext i32 %i.xo to i64
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.xp
  store double -1.024000e+03, ptr %i.xq, align 8, !tbaa !166
  %indvars.iv.next.i139.i.i.i.prol = add nuw nsw i64 %indvars.iv.i138.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter244
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !544

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i138.i.i.i.unr = phi i64 [ %indvars.iv.i138.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i139.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.xr = sub nsw i64 %indvars.iv.i138.i.i.i.ph, %wide.trip.count.i137.i.i.i
  %i.xs = icmp ugt i64 %i.xr, -8
  br i1 %i.xs, label %iter.check206, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op = add i32 1, %i.wr
  %invariant.op285 = add i32 2, %i.wr
  %invariant.op287 = add i32 3, %i.wr
  %invariant.op289 = add i32 4, %i.wr
  %invariant.op291 = add i32 5, %i.wr
  %invariant.op293 = add i32 6, %i.wr
  %invariant.op295 = add i32 7, %i.wr
  br label %vec.epilog.scalar.ph

bb.bf:                                            ; preds = %bb.be
  tail call void @free(ptr noundef %i.wj) #34
  tail call void @free(ptr noundef %i.wk) #34
  tail call void @free(ptr noundef %i.wl) #34
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.120) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

iter.check206:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block186
  %wide.trip.count226.i.i.i.i = zext i32 %i.mi to i64 ; 8 uses
  %min.iters.check195 = icmp ugt i32 %i.mi, 3
  %ident.check.not = icmp eq i32 %i.wd, 1
  %or.cond = and i1 %min.iters.check195, %ident.check.not
  br i1 %or.cond, label %vector.main.loop.iter.check196, label %vec.epilog.scalar.ph207.preheader

vector.main.loop.iter.check196:                   ; preds = %iter.check206
  %min.iters.check197 = icmp ult i32 %i.mi, 16
  br i1 %min.iters.check197, label %vec.epilog.ph210, label %vector.ph198

vector.ph198:                                     ; preds = %vector.main.loop.iter.check196
  %i.xt = and i64 %wide.trip.count226.i.i.i.i, 12
  %n.vec199 = and i64 %wide.trip.count226.i.i.i.i, 4294967280 ; 4 uses
  br label %vector.body200

vector.body200:                                   ; preds = %vector.ph198, %vector.body200
  %index201 = phi i64 [ 0, %vector.ph198 ], [ %index.next202, %vector.body200 ] ; 2 uses
  %i.xu = and i64 %index201, 4294967280
  %i.xv = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.xu ; 4 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 32
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xv, i64 64
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xv, i64 96
  store <4 x double> splat (double -1.024000e+03), ptr %i.xv, align 8, !tbaa !166
  store <4 x double> splat (double -1.024000e+03), ptr %i.xw, align 8, !tbaa !166
  store <4 x double> splat (double -1.024000e+03), ptr %i.xx, align 8, !tbaa !166
  store <4 x double> splat (double -1.024000e+03), ptr %i.xy, align 8, !tbaa !166
  %index.next202 = add nuw i64 %index201, 16      ; 2 uses
  %i.xz = icmp eq i64 %index.next202, %n.vec199
  br i1 %i.xz, label %middle.block203, label %vector.body200, !llvm.loop !545

middle.block203:                                  ; preds = %vector.body200
  %cmp.n204 = icmp eq i64 %n.vec199, %wide.trip.count226.i.i.i.i
  br i1 %cmp.n204, label %.preheader194.i.i.i.i, label %vec.epilog.iter.check208

vec.epilog.iter.check208:                         ; preds = %middle.block203
  %min.epilog.iters.check209 = icmp eq i64 %i.xt, 0
  br i1 %min.epilog.iters.check209, label %vec.epilog.scalar.ph207.preheader, label %vec.epilog.ph210, !prof !269

vec.epilog.ph210:                                 ; preds = %vector.main.loop.iter.check196, %vec.epilog.iter.check208
  %vec.epilog.resume.val205 = phi i64 [ %n.vec199, %vec.epilog.iter.check208 ], [ 0, %vector.main.loop.iter.check196 ]
  %n.vec211 = and i64 %wide.trip.count226.i.i.i.i, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body212

vec.epilog.vector.body212:                        ; preds = %vec.epilog.vector.body212, %vec.epilog.ph210
  %index213 = phi i64 [ %vec.epilog.resume.val205, %vec.epilog.ph210 ], [ %index.next214, %vec.epilog.vector.body212 ] ; 2 uses
  %i.ya = and i64 %index213, 4294967292
  %i.yb = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.ya
  store <4 x double> splat (double -1.024000e+03), ptr %i.yb, align 8, !tbaa !166
  %index.next214 = add nuw i64 %index213, 4       ; 2 uses
  %i.yc = icmp eq i64 %index.next214, %n.vec211
  br i1 %i.yc, label %vec.epilog.middle.block215, label %vec.epilog.vector.body212, !llvm.loop !546

vec.epilog.middle.block215:                       ; preds = %vec.epilog.vector.body212
  %cmp.n216 = icmp eq i64 %n.vec211, %wide.trip.count226.i.i.i.i
  br i1 %cmp.n216, label %.preheader194.i.i.i.i, label %vec.epilog.scalar.ph207.preheader

vec.epilog.scalar.ph207.preheader:                ; preds = %iter.check206, %vec.epilog.iter.check208, %vec.epilog.middle.block215
  %indvars.iv223.i.i.i.i.ph = phi i64 [ 0, %iter.check206 ], [ %n.vec199, %vec.epilog.iter.check208 ], [ %n.vec211, %vec.epilog.middle.block215 ] ; 4 uses
  %i.yd = sub nsw i64 %wide.trip.count226.i.i.i.i, %indvars.iv223.i.i.i.i.ph
  %xtraiter246 = and i64 %i.yd, 7                 ; 2 uses
  %lcmp.mod247.not = icmp eq i64 %xtraiter246, 0
  br i1 %lcmp.mod247.not, label %vec.epilog.scalar.ph207.prol.loopexit, label %vec.epilog.scalar.ph207.prol

vec.epilog.scalar.ph207.prol:                     ; preds = %vec.epilog.scalar.ph207.preheader, %vec.epilog.scalar.ph207.prol
  %indvars.iv223.i.i.i.i.prol = phi i64 [ %indvars.iv.next224.i.i.i.i.prol, %vec.epilog.scalar.ph207.prol ], [ %indvars.iv223.i.i.i.i.ph, %vec.epilog.scalar.ph207.preheader ]
  %prol.iter248 = phi i64 [ %prol.iter248.next, %vec.epilog.scalar.ph207.prol ], [ 0, %vec.epilog.scalar.ph207.preheader ]
  %indvars.iv.next224.i.i.i.i.prol = add nuw nsw i64 %indvars.iv223.i.i.i.i.prol, 1 ; 3 uses
  %i.ye = trunc nuw i64 %indvars.iv.next224.i.i.i.i.prol to i32
  %i.yf = mul i32 %i.wd, %i.ye
  %i.yg = add i32 %i.yf, -1
  %i.yh = zext i32 %i.yg to i64
  %i.yi = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.yh
  store double -1.024000e+03, ptr %i.yi, align 8, !tbaa !166
  %prol.iter248.next = add i64 %prol.iter248, 1   ; 2 uses
  %prol.iter248.cmp.not = icmp eq i64 %prol.iter248.next, %xtraiter246
  br i1 %prol.iter248.cmp.not, label %vec.epilog.scalar.ph207.prol.loopexit, label %vec.epilog.scalar.ph207.prol, !llvm.loop !547

vec.epilog.scalar.ph207.prol.loopexit:            ; preds = %vec.epilog.scalar.ph207.prol, %vec.epilog.scalar.ph207.preheader
  %indvars.iv223.i.i.i.i.unr = phi i64 [ %indvars.iv223.i.i.i.i.ph, %vec.epilog.scalar.ph207.preheader ], [ %indvars.iv.next224.i.i.i.i.prol, %vec.epilog.scalar.ph207.prol ]
  %i.yj = sub nsw i64 %indvars.iv223.i.i.i.i.ph, %wide.trip.count226.i.i.i.i
  %i.yk = icmp ugt i64 %i.yj, -8
  br i1 %i.yk, label %.preheader194.i.i.i.i, label %vec.epilog.scalar.ph207

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %indvars.iv.i138.i.i.i = phi i64 [ %indvars.iv.i138.i.i.i.unr, %vec.epilog.scalar.ph.preheader.new ], [ %indvars.iv.next.i139.i.i.i.7, %vec.epilog.scalar.ph ] ; 9 uses
  %i.yl = trunc nuw i64 %indvars.iv.i138.i.i.i to i32
  %i.ym = add i32 %i.wr, %i.yl
  %i.yn = zext i32 %i.ym to i64
  %i.yo = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.yn
  store double -1.024000e+03, ptr %i.yo, align 8, !tbaa !166
  %i.yp = trunc i64 %indvars.iv.i138.i.i.i to i32
  %.reass = add i32 %i.yp, %invariant.op
  %i.yq = zext i32 %.reass to i64
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.yq
  store double -1.024000e+03, ptr %i.yr, align 8, !tbaa !166
  %i.ys = trunc i64 %indvars.iv.i138.i.i.i to i32
  %.reass286 = add i32 %i.ys, %invariant.op285
  %i.yt = zext i32 %.reass286 to i64
  %i.yu = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.yt
  store double -1.024000e+03, ptr %i.yu, align 8, !tbaa !166
  %i.yv = trunc i64 %indvars.iv.i138.i.i.i to i32
  %.reass288 = add i32 %i.yv, %invariant.op287
  %i.yw = zext i32 %.reass288 to i64
  %i.yx = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.yw
  store double -1.024000e+03, ptr %i.yx, align 8, !tbaa !166
  %i.yy = trunc i64 %indvars.iv.i138.i.i.i to i32
  %.reass290 = add i32 %i.yy, %invariant.op289
  %i.yz = zext i32 %.reass290 to i64
  %i.za = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.yz
  store double -1.024000e+03, ptr %i.za, align 8, !tbaa !166
  %i.zb = trunc i64 %indvars.iv.i138.i.i.i to i32
  %.reass292 = add i32 %i.zb, %invariant.op291
  %i.zc = zext i32 %.reass292 to i64
  %i.zd = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.zc
  store double -1.024000e+03, ptr %i.zd, align 8, !tbaa !166
  %i.ze = trunc i64 %indvars.iv.i138.i.i.i to i32
  %.reass294 = add i32 %i.ze, %invariant.op293
  %i.zf = zext i32 %.reass294 to i64
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.zf
  store double -1.024000e+03, ptr %i.zg, align 8, !tbaa !166
  %i.zh = trunc i64 %indvars.iv.i138.i.i.i to i32
  %.reass296 = add i32 %i.zh, %invariant.op295
  %i.zi = zext i32 %.reass296 to i64
  %i.zj = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.zi
  store double -1.024000e+03, ptr %i.zj, align 8, !tbaa !166
  %indvars.iv.next.i139.i.i.i.7 = add nuw nsw i64 %indvars.iv.i138.i.i.i, 8 ; 2 uses
  %exitcond.not.i140.i.i.i.7 = icmp eq i64 %indvars.iv.next.i139.i.i.i.7, %wide.trip.count.i137.i.i.i
  br i1 %exitcond.not.i140.i.i.i.7, label %iter.check206, label %vec.epilog.scalar.ph, !llvm.loop !548

.preheader194.i.i.i.i:                            ; preds = %vec.epilog.scalar.ph207.prol.loopexit, %vec.epilog.scalar.ph207, %vec.epilog.middle.block215, %middle.block203
  %i.zk = add i32 %i.wd, -1                       ; 3 uses
  %.not215.i.i.i.i = icmp eq i32 %i.zk, 0
  %.not216.i.i.i.i = icmp eq i32 %i.wq, 0
  %or.cond272.i.i.i.i = or i1 %.not216.i.i.i.i, %.not215.i.i.i.i
  br i1 %or.cond272.i.i.i.i, label %.preheader190.i.i.i.i.preheader, label %.preheader193.lr.ph.split.us.i.i.i.i

.preheader190.i.i.i.i.preheader:                  ; preds = %._crit_edge.i143.i.i.i, %.preheader194.i.i.i.i
  br label %.preheader190.i.i.i.i

.preheader193.lr.ph.split.us.i.i.i.i:             ; preds = %.preheader194.i.i.i.i
  %i.zl = load ptr, ptr %i.wg, align 8, !tbaa !291 ; 2 uses
  %wide.trip.count231.i.i.i.i = zext i32 %i.wq to i64 ; 2 uses
  br label %.preheader193.us.i.i.i.i

.preheader193.us.i.i.i.i:                         ; preds = %._crit_edge.us.i142.i.i.i, %.preheader193.lr.ph.split.us.i.i.i.i
  %.0205.us.i.i.i.i = phi double [ 0.000000e+00, %.preheader193.lr.ph.split.us.i.i.i.i ], [ %.2.us.i141.i.i.i, %._crit_edge.us.i142.i.i.i ]
  %.1172204.us.i.i.i.i = phi i32 [ 0, %.preheader193.lr.ph.split.us.i.i.i.i ], [ %i.aat, %._crit_edge.us.i142.i.i.i ] ; 2 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bi, %.preheader193.us.i.i.i.i
  %indvars.iv228.i.i.i.i = phi i64 [ 0, %.preheader193.us.i.i.i.i ], [ %indvars.iv.next229.i.i.i.i, %bb.bi ] ; 2 uses
  %.1203.us.i.i.i.i = phi double [ %.0205.us.i.i.i.i, %.preheader193.us.i.i.i.i ], [ %.2.us.i141.i.i.i, %bb.bi ] ; 3 uses
  %i.zm = trunc nuw i64 %indvars.iv228.i.i.i.i to i32
  %i.zn = mul i32 %i.wd, %i.zm
  %i.zo = add i32 %i.zn, %.1172204.us.i.i.i.i     ; 3 uses
  %i.zp = add i32 %i.zo, %i.wd                    ; 2 uses
  %i.zq = add i32 %i.zp, 1
  %i.zr = zext i32 %i.zq to i64
  %i.zs = getelementptr inbounds nuw [8 x i8], ptr %i.wa, i64 %i.zr
  %i.zt = load double, ptr %i.zs, align 8, !tbaa !166
  %i.zu = zext i32 %i.zo to i64                   ; 3 uses
  %i.zv = getelementptr inbounds nuw [8 x i8], ptr %i.wa, i64 %i.zu
  %i.zw = load double, ptr %i.zv, align 8, !tbaa !166
  %i.zx = fsub reassoc nsz arcp contract afn double %i.zt, %i.zw ; 2 uses
  %i.zy = add i32 %i.zo, 1
  %i.zz = zext i32 %i.zy to i64
  %i.aaa = getelementptr inbounds nuw [8 x i8], ptr %i.wa, i64 %i.zz
  %i.aab = load double, ptr %i.aaa, align 8, !tbaa !166
  %i.aac = zext i32 %i.zp to i64
  %i.aad = getelementptr inbounds nuw [8 x i8], ptr %i.wa, i64 %i.aac
  %i.aae = load double, ptr %i.aad, align 8, !tbaa !166
  %i.aaf = fsub reassoc nsz arcp contract afn double %i.aab, %i.aae ; 2 uses
  %i.aag = fadd reassoc nsz arcp contract afn double %i.aaf, %i.zx ; 3 uses
  %i.aah = fsub reassoc nsz arcp contract afn double %i.zx, %i.aaf ; 3 uses
  %i.aai = fmul reassoc nsz arcp contract afn double %i.aag, %i.aag
  %i.aaj = fmul reassoc nsz arcp contract afn double %i.aah, %i.aah
  %i.aak = fadd reassoc nsz arcp contract afn double %i.aai, %i.aaj
  %i.aal = fmul reassoc nsz arcp contract afn double %i.aak, 2.500000e-01
  %i.aam = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.aal) ; 4 uses
  %i.aan = getelementptr inbounds nuw [8 x i8], ptr %i.zl, i64 %i.zu
  store double %i.aam, ptr %i.aan, align 8, !tbaa !166
  %i.aao = fcmp reassoc nsz arcp contract afn ugt double %i.aam, f0x4014E7AE9144F0FC
  br i1 %i.aao, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.aap = fneg reassoc nsz arcp contract afn double %i.aah
  %i.aaq = tail call reassoc nsz arcp contract afn double @llvm.atan2.f64(double %i.aag, double %i.aap)
  %i.aar = fcmp reassoc nsz arcp contract afn ogt double %i.aam, %.1203.us.i.i.i.i
  %spec.select.us.i.i.i.i = select nsz i1 %i.aar, double %i.aam, double %.1203.us.i.i.i.i
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.sink.i200.i.i = phi double [ %i.aaq, %bb.bh ], [ -1.024000e+03, %bb.bg ]
  %.2.us.i141.i.i.i = phi nsz double [ %spec.select.us.i.i.i.i, %bb.bh ], [ %.1203.us.i.i.i.i, %bb.bg ] ; 3 uses
  %i.aas = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.zu
  store double %.sink.i200.i.i, ptr %i.aas, align 8, !tbaa !166
  %indvars.iv.next229.i.i.i.i = add nuw nsw i64 %indvars.iv228.i.i.i.i, 1 ; 2 uses
  %exitcond232.not.i.i.i.i = icmp eq i64 %indvars.iv.next229.i.i.i.i, %wide.trip.count231.i.i.i.i
  br i1 %exitcond232.not.i.i.i.i, label %._crit_edge.us.i142.i.i.i, label %bb.bg

._crit_edge.us.i142.i.i.i:                        ; preds = %bb.bi
  %i.aat = add nuw i32 %.1172204.us.i.i.i.i, 1    ; 2 uses
  %exitcond233.not.i.i.i.i = icmp eq i32 %i.aat, %i.zk
  br i1 %exitcond233.not.i.i.i.i, label %.preheader191.i.i.i.i.preheader, label %.preheader193.us.i.i.i.i

.preheader191.i.i.i.i.preheader:                  ; preds = %._crit_edge.us.i142.i.i.i
  %i.aau = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %.2.us.i141.i.i.i
  br label %.preheader191.i.i.i.i

vec.epilog.scalar.ph207:                          ; preds = %vec.epilog.scalar.ph207.prol.loopexit, %vec.epilog.scalar.ph207
  %indvars.iv223.i.i.i.i = phi i64 [ %indvars.iv.next224.i.i.i.i.7, %vec.epilog.scalar.ph207 ], [ %indvars.iv223.i.i.i.i.unr, %vec.epilog.scalar.ph207.prol.loopexit ] ; 8 uses
  %i.aav = trunc i64 %indvars.iv223.i.i.i.i to i32
  %i.aaw = add i32 %i.aav, 1
  %i.aax = mul i32 %i.wd, %i.aaw
  %i.aay = add i32 %i.aax, -1
  %i.aaz = zext i32 %i.aay to i64
  %i.aba = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.aaz
  store double -1.024000e+03, ptr %i.aba, align 8, !tbaa !166
  %i.abb = trunc i64 %indvars.iv223.i.i.i.i to i32
  %i.abc = add i32 %i.abb, 2
  %i.abd = mul i32 %i.wd, %i.abc
  %i.abe = add i32 %i.abd, -1
  %i.abf = zext i32 %i.abe to i64
  %i.abg = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.abf
  store double -1.024000e+03, ptr %i.abg, align 8, !tbaa !166
  %i.abh = trunc i64 %indvars.iv223.i.i.i.i to i32
  %i.abi = add i32 %i.abh, 3
  %i.abj = mul i32 %i.wd, %i.abi
  %i.abk = add i32 %i.abj, -1
  %i.abl = zext i32 %i.abk to i64
  %i.abm = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.abl
  store double -1.024000e+03, ptr %i.abm, align 8, !tbaa !166
  %i.abn = trunc i64 %indvars.iv223.i.i.i.i to i32
  %i.abo = add i32 %i.abn, 4
  %i.abp = mul i32 %i.wd, %i.abo
  %i.abq = add i32 %i.abp, -1
  %i.abr = zext i32 %i.abq to i64
  %i.abs = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.abr
  store double -1.024000e+03, ptr %i.abs, align 8, !tbaa !166
  %i.abt = trunc i64 %indvars.iv223.i.i.i.i to i32
  %i.abu = add i32 %i.abt, 5
  %i.abv = mul i32 %i.wd, %i.abu
  %i.abw = add i32 %i.abv, -1
  %i.abx = zext i32 %i.abw to i64
  %i.aby = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.abx
  store double -1.024000e+03, ptr %i.aby, align 8, !tbaa !166
  %i.abz = trunc i64 %indvars.iv223.i.i.i.i to i32
  %i.aca = add i32 %i.abz, 6
  %i.acb = mul i32 %i.wd, %i.aca
  %i.acc = add i32 %i.acb, -1
  %i.acd = zext i32 %i.acc to i64
  %i.ace = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.acd
  store double -1.024000e+03, ptr %i.ace, align 8, !tbaa !166
  %i.acf = trunc i64 %indvars.iv223.i.i.i.i to i32
  %i.acg = add i32 %i.acf, 7
  %i.ach = mul i32 %i.wd, %i.acg
  %i.aci = add i32 %i.ach, -1
  %i.acj = zext i32 %i.aci to i64
  %i.ack = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.acj
  store double -1.024000e+03, ptr %i.ack, align 8, !tbaa !166
  %indvars.iv.next224.i.i.i.i.7 = add nuw nsw i64 %indvars.iv223.i.i.i.i, 8 ; 3 uses
  %i.acl = trunc nuw i64 %indvars.iv.next224.i.i.i.i.7 to i32
  %i.acm = mul i32 %i.wd, %i.acl
  %i.acn = add i32 %i.acm, -1
  %i.aco = zext i32 %i.acn to i64
  %i.acp = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.aco
  store double -1.024000e+03, ptr %i.acp, align 8, !tbaa !166
  %exitcond227.not.i.i.i.i.7 = icmp eq i64 %indvars.iv.next224.i.i.i.i.7, %wide.trip.count226.i.i.i.i
  br i1 %exitcond227.not.i.i.i.i.7, label %.preheader194.i.i.i.i, label %vec.epilog.scalar.ph207, !llvm.loop !549

.preheader191.i.i.i.i:                            ; preds = %.preheader191.i.i.i.i.preheader, %._crit_edge.i143.i.i.i
  %.0162213.i.i.i.i = phi i64 [ %indvars.iv.next235.i.i.i.i, %._crit_edge.i143.i.i.i ], [ 0, %.preheader191.i.i.i.i.preheader ]
  %.2173212.i.i.i.i = phi i32 [ %i.adi, %._crit_edge.i143.i.i.i ], [ 0, %.preheader191.i.i.i.i.preheader ] ; 3 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bm, %.preheader191.i.i.i.i
  %indvars.iv236.i.i.i.i = phi i64 [ 0, %.preheader191.i.i.i.i ], [ %indvars.iv.next237.i.i.i.i, %bb.bm ] ; 2 uses
  %indvars.iv234.i.i.i.i = phi i64 [ %.0162213.i.i.i.i, %.preheader191.i.i.i.i ], [ %indvars.iv.next235.i.i.i.i, %bb.bm ] ; 2 uses
  %i.acq = trunc nuw i64 %indvars.iv236.i.i.i.i to i32 ; 2 uses
  %i.acr = mul i32 %i.wd, %i.acq
  %i.acs = add i32 %i.acr, %.2173212.i.i.i.i
  %i.act = zext i32 %i.acs to i64
  %i.acu = getelementptr inbounds nuw [8 x i8], ptr %i.zl, i64 %i.act
  %i.acv = load double, ptr %i.acu, align 8, !tbaa !166
  %i.acw = fmul reassoc nsz arcp contract afn double %i.acv, 1.024000e+03
  %i.acx = fmul reassoc nsz arcp contract afn double %i.acw, %i.aau
  %i.acy = fptoui double %i.acx to i32
  %spec.select185.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.acy, i32 1023)
  %i.acz = zext nneg i32 %spec.select185.i.i.i.i to i64 ; 2 uses
  %i.ada = getelementptr inbounds nuw [8 x i8], ptr %i.wl, i64 %i.acz ; 2 uses
  %i.adb = load ptr, ptr %i.ada, align 8, !tbaa !559 ; 2 uses
  %i.adc = icmp eq ptr %i.adb, null
  %i.add = getelementptr inbounds [16 x i8], ptr %i.wj, i64 %indvars.iv234.i.i.i.i ; 6 uses
  br i1 %i.adc, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ade = getelementptr inbounds nuw [8 x i8], ptr %i.wk, i64 %i.acz
  store ptr %i.add, ptr %i.ade, align 8, !tbaa !559
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.adf = getelementptr inbounds nuw i8, ptr %i.adb, i64 8
  store ptr %i.add, ptr %i.adf, align 8, !tbaa !561
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  store ptr %i.add, ptr %i.ada, align 8, !tbaa !559
  %indvars.iv.next235.i.i.i.i = add nsw i64 %indvars.iv234.i.i.i.i, 1 ; 2 uses
  store i32 %.2173212.i.i.i.i, ptr %i.add, align 8, !tbaa !562
  %i.adg = getelementptr inbounds nuw i8, ptr %i.add, i64 4
  store i32 %i.acq, ptr %i.adg, align 4, !tbaa !563
  %i.adh = getelementptr inbounds nuw i8, ptr %i.add, i64 8
  store ptr null, ptr %i.adh, align 8, !tbaa !561
  %indvars.iv.next237.i.i.i.i = add nuw nsw i64 %indvars.iv236.i.i.i.i, 1 ; 2 uses
  %exitcond242.not.i.i.i.i = icmp eq i64 %indvars.iv.next237.i.i.i.i, %wide.trip.count231.i.i.i.i
  br i1 %exitcond242.not.i.i.i.i, label %._crit_edge.i143.i.i.i, label %bb.bj

._crit_edge.i143.i.i.i:                           ; preds = %bb.bm
  %i.adi = add nuw i32 %.2173212.i.i.i.i, 1       ; 2 uses
  %exitcond243.not.i.i.i.i = icmp eq i32 %i.adi, %i.zk
  br i1 %exitcond243.not.i.i.i.i, label %.preheader190.i.i.i.i.preheader, label %.preheader191.i.i.i.i

.critedge.thread.i.i.i.i:                         ; preds = %bb.bn
  %i.adj = load ptr, ptr %i.wk, align 8, !tbaa !559
  br label %free_image_double.exit.i.i.i

.preheader190.i.i.i.i:                            ; preds = %bb.bn, %.preheader190.i.i.i.i.preheader
  %indvars.iv.i = phi i64 [ 1023, %.preheader190.i.i.i.i.preheader ], [ %indvars.iv.next.i.10, %bb.bn ] ; 13 uses
  %i.adk = getelementptr inbounds nuw [8 x i8], ptr %i.wk, i64 %indvars.iv.i
  %i.adl = load ptr, ptr %i.adk, align 8, !tbaa !559 ; 2 uses
  %i.adm = icmp eq ptr %i.adl, null
  br i1 %i.adm, label %.preheader190.i.i.i.i.1, label %.preheader.preheader.i.i.i.i

.preheader190.i.i.i.i.1:                          ; preds = %.preheader190.i.i.i.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.adn = getelementptr inbounds nuw [8 x i8], ptr %i.wk, i64 %indvars.iv.next.i
  %i.ado = load ptr, ptr %i.adn, align 8, !tbaa !559 ; 2 uses
  %i.adp = icmp eq ptr %i.ado, null
  br i1 %i.adp, label %.preheader190.i.i.i.i.2, label %.preheader.preheader.i.i.i.i

.preheader190.i.i.i.i.2:                          ; preds = %.preheader190.i.i.i.i.1
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.adq = getelementptr inbounds nuw [8 x i8], ptr %i.wk, i64 %indvars.iv.next.i.1
  %i.adr = load ptr, ptr %i.adq, align 8, !tbaa !559 ; 2 uses
  %i.ads = icmp eq ptr %i.adr, null
  br i1 %i.ads, label %.preheader190.i.i.i.i.3, label %.preheader.preheader.i.i.i.i

.preheader190.i.i.i.i.3:                          ; preds = %.preheader190.i.i.i.i.2
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, -3 ; 2 uses
  %i.adt = getelementptr inbounds nuw [8 x i8], ptr %i.wk, i64 %indvars.iv.next.i.2
  %i.adu = load ptr, ptr %i.adt, align 8, !tbaa !559 ; 2 uses
  %i.adv = icmp eq ptr %i.adu, null
  br i1 %i.adv, label %.preheader190.i.i.i.i.4, label %.preheader.preheader.i.i.i.i

.preheader190.i.i.i.i.4:                          ; preds = %.preheader190.i.i.i.i.3
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4 ; 2 uses
  %i.adw = getelementptr inbounds nuw [8 x i8], ptr %i.wk, i64 %indvars.iv.next.i.3
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !559 ; 2 uses
  %i.ady = icmp eq ptr %i.adx, null
  br i1 %i.ady, label %.preheader190.i.i.i.i.5, label %.preheader.preheader.i.i.i.i

.preheader190.i.i.i.i.5:                          ; preds = %.preheader190.i.i.i.i.4
  %indvars.iv.next.i.4 = add nsw i64 %indvars.iv.i, -5 ; 2 uses
  %i.adz = getelementptr inbounds nuw [8 x i8], ptr %i.wk, i64 %indvars.iv.next.i.4
  %i.aea = load ptr, ptr %i.adz, align 8, !tbaa !559 ; 2 uses
  %i.aeb = icmp eq ptr %i.aea, null
  br i1 %i.aeb, label %.preheader190.i.i.i.i.6, label %.preheader.preheader.i.i.i.i

.preheader190.i.i.i.i.6:                          ; preds = %.preheader190.i.i.i.i.5
  %indvars.iv.next.i.5 = add nsw i64 %indvars.iv.i, -6 ; 2 uses
  %i.aec = getelementptr inbounds nuw [8 x i8], ptr %i.wk, i64 %indvars.iv.next.i.5
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !559 ; 2 uses
  %i.aee = icmp eq ptr %i.aed, null
  br i1 %i.aee, label %.preheader190.i.i.i.i.7, label %.preheader.preheader.i.i.i.i

.preheader190.i.i.i.i.7:                          ; preds = %.preheader190.i.i.i.i.6
  %indvars.iv.next.i.6 = add nsw i64 %indvars.iv.i, -7 ; 2 uses
  %i.aef = getelementptr inbounds nuw [8 x i8], ptr %i.wk, i64 %indvars.iv.next.i.6
  %i.aeg = load ptr, ptr %i.aef, align 8, !tbaa !559 ; 2 uses
  %i.aeh = icmp eq ptr %i.aeg, null
  br i1 %i.aeh, label %.preheader190.i.i.i.i.8, label %.preheader.preheader.i.i.i.i

.preheader190.i.i.i.i.8:                          ; preds = %.preheader190.i.i.i.i.7
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, -8 ; 2 uses
  %i.aei = getelementptr inbounds nuw [8 x i8], ptr %i.wk, i64 %indvars.iv.next.i.7
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !559 ; 2 uses
  %i.aek = icmp eq ptr %i.aej, null
  br i1 %i.aek, label %.preheader190.i.i.i.i.9, label %.preheader.preheader.i.i.i.i

.preheader190.i.i.i.i.9:                          ; preds = %.preheader190.i.i.i.i.8
  %indvars.iv.next.i.8 = add nsw i64 %indvars.iv.i, -9 ; 2 uses
  %i.ael = getelementptr inbounds nuw [8 x i8], ptr %i.wk, i64 %indvars.iv.next.i.8
  %i.aem = load ptr, ptr %i.ael, align 8, !tbaa !559 ; 2 uses
  %i.aen = icmp eq ptr %i.aem, null
  br i1 %i.aen, label %.preheader190.i.i.i.i.10, label %.preheader.preheader.i.i.i.i

.preheader190.i.i.i.i.10:                         ; preds = %.preheader190.i.i.i.i.9
  %indvars.iv.next.i.9 = add nsw i64 %indvars.iv.i, -10 ; 2 uses
  %i.aeo = getelementptr inbounds nuw [8 x i8], ptr %i.wk, i64 %indvars.iv.next.i.9
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !559 ; 2 uses
  %i.aeq = icmp eq ptr %i.aep, null
  br i1 %i.aeq, label %bb.bn, label %.preheader.preheader.i.i.i.i

bb.bn:                                            ; preds = %.preheader190.i.i.i.i.10
  %indvars.iv.next.i.10 = add nsw i64 %indvars.iv.i, -11 ; 2 uses
  %.not188.i.i.i.i.10 = icmp eq i64 %indvars.iv.next.i.10, 0
  br i1 %.not188.i.i.i.i.10, label %.critedge.thread.i.i.i.i, label %.preheader190.i.i.i.i

.preheader.preheader.i.i.i.i:                     ; preds = %.preheader190.i.i.i.i.10, %.preheader190.i.i.i.i.9, %.preheader190.i.i.i.i.8, %.preheader190.i.i.i.i.7, %.preheader190.i.i.i.i.6, %.preheader190.i.i.i.i.5, %.preheader190.i.i.i.i.4, %.preheader190.i.i.i.i.3, %.preheader190.i.i.i.i.2, %.preheader190.i.i.i.i.1, %.preheader190.i.i.i.i
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i, %.preheader190.i.i.i.i ], [ %indvars.iv.next.i, %.preheader190.i.i.i.i.1 ], [ %indvars.iv.next.i.1, %.preheader190.i.i.i.i.2 ], [ %indvars.iv.next.i.2, %.preheader190.i.i.i.i.3 ], [ %indvars.iv.next.i.3, %.preheader190.i.i.i.i.4 ], [ %indvars.iv.next.i.4, %.preheader190.i.i.i.i.5 ], [ %indvars.iv.next.i.5, %.preheader190.i.i.i.i.6 ], [ %indvars.iv.next.i.6, %.preheader190.i.i.i.i.7 ], [ %indvars.iv.next.i.7, %.preheader190.i.i.i.i.8 ], [ %indvars.iv.next.i.8, %.preheader190.i.i.i.i.9 ], [ %indvars.iv.next.i.9, %.preheader190.i.i.i.i.10 ] ; 5 uses
  %.lcssa237 = phi ptr [ %i.adl, %.preheader190.i.i.i.i ], [ %i.ado, %.preheader190.i.i.i.i.1 ], [ %i.adr, %.preheader190.i.i.i.i.2 ], [ %i.adu, %.preheader190.i.i.i.i.3 ], [ %i.adx, %.preheader190.i.i.i.i.4 ], [ %i.aea, %.preheader190.i.i.i.i.5 ], [ %i.aed, %.preheader190.i.i.i.i.6 ], [ %i.aeg, %.preheader190.i.i.i.i.7 ], [ %i.aej, %.preheader190.i.i.i.i.8 ], [ %i.aem, %.preheader190.i.i.i.i.9 ], [ %i.aep, %.preheader190.i.i.i.i.10 ] ; 2 uses
  %i.aer = getelementptr inbounds nuw [8 x i8], ptr %i.wl, i64 %indvars.iv.i.lcssa
  %i.aes = load ptr, ptr %i.aer, align 8, !tbaa !559 ; 2 uses
  %i.aet = add nsw i64 %indvars.iv.i.lcssa, -1
  %xtraiter249 = and i64 %indvars.iv.i.lcssa, 3   ; 2 uses
  %lcmp.mod250.not = icmp eq i64 %xtraiter249, 0
  br i1 %lcmp.mod250.not, label %.preheader.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.prol

.preheader.i.i.i.i.prol:                          ; preds = %.preheader.preheader.i.i.i.i, %bb.bp
  %indvars.iv246.i.i.i.i.prol = phi i64 [ %i.aeu, %bb.bp ], [ %indvars.iv.i.lcssa, %.preheader.preheader.i.i.i.i ]
  %.0160.i.i.i.i.prol = phi ptr [ %.1161.i.i.i.i.prol, %bb.bp ], [ %i.aes, %.preheader.preheader.i.i.i.i ] ; 2 uses
  %prol.iter251 = phi i64 [ %prol.iter251.next, %bb.bp ], [ 0, %.preheader.preheader.i.i.i.i ]
  %i.aeu = add nsw i64 %indvars.iv246.i.i.i.i.prol, -1 ; 4 uses
  %i.aev = getelementptr inbounds nuw [8 x i8], ptr %i.wk, i64 %i.aeu
  %i.aew = load ptr, ptr %i.aev, align 8, !tbaa !559 ; 2 uses
  %.not.i144.i.i.i.prol = icmp eq ptr %i.aew, null
  br i1 %.not.i144.i.i.i.prol, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.preheader.i.i.i.i.prol
  %i.aex = getelementptr inbounds nuw i8, ptr %.0160.i.i.i.i.prol, i64 8
  store ptr %i.aew, ptr %i.aex, align 8, !tbaa !561
  %i.aey = getelementptr inbounds nuw [8 x i8], ptr %i.wl, i64 %i.aeu
  %i.aez = load ptr, ptr %i.aey, align 8, !tbaa !559
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.preheader.i.i.i.i.prol
  %.1161.i.i.i.i.prol = phi ptr [ %i.aez, %bb.bo ], [ %.0160.i.i.i.i.prol, %.preheader.i.i.i.i.prol ] ; 2 uses
  %prol.iter251.next = add i64 %prol.iter251, 1   ; 2 uses
  %prol.iter251.cmp.not = icmp eq i64 %prol.iter251.next, %xtraiter249
  br i1 %prol.iter251.cmp.not, label %.preheader.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.prol, !llvm.loop !550

.preheader.i.i.i.i.prol.loopexit:                 ; preds = %bb.bp, %.preheader.preheader.i.i.i.i
  %indvars.iv246.i.i.i.i.unr = phi i64 [ %indvars.iv.i.lcssa, %.preheader.preheader.i.i.i.i ], [ %i.aeu, %bb.bp ]
  %.0160.i.i.i.i.unr = phi ptr [ %i.aes, %.preheader.preheader.i.i.i.i ], [ %.1161.i.i.i.i.prol, %bb.bp ]
  %i.afa = icmp ult i64 %i.aet, 3
  br i1 %i.afa, label %free_image_double.exit.i.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.prol.loopexit, %bb.bu
  %indvars.iv246.i.i.i.i = phi i64 [ %i.aft, %bb.bu ], [ %indvars.iv246.i.i.i.i.unr, %.preheader.i.i.i.i.prol.loopexit ] ; 4 uses
  %.0160.i.i.i.i = phi ptr [ %.1161.i.i.i.i.3, %bb.bu ], [ %.0160.i.i.i.i.unr, %.preheader.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.afb = add nsw i64 %indvars.iv246.i.i.i.i, -1 ; 2 uses
  %i.afc = getelementptr inbounds nuw [8 x i8], ptr %i.wk, i64 %i.afb
  %i.afd = load ptr, ptr %i.afc, align 8, !tbaa !559 ; 2 uses
  %.not.i144.i.i.i = icmp eq ptr %i.afd, null
  br i1 %.not.i144.i.i.i, label %.preheader.i.i.i.i.1, label %bb.bq

bb.bq:                                            ; preds = %.preheader.i.i.i.i
  %i.afe = getelementptr inbounds nuw i8, ptr %.0160.i.i.i.i, i64 8
  store ptr %i.afd, ptr %i.afe, align 8, !tbaa !561
  %i.aff = getelementptr inbounds nuw [8 x i8], ptr %i.wl, i64 %i.afb
  %i.afg = load ptr, ptr %i.aff, align 8, !tbaa !559
  br label %.preheader.i.i.i.i.1

.preheader.i.i.i.i.1:                             ; preds = %bb.bq, %.preheader.i.i.i.i
  %.1161.i.i.i.i = phi ptr [ %i.afg, %bb.bq ], [ %.0160.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.afh = add nsw i64 %indvars.iv246.i.i.i.i, -2 ; 2 uses
  %i.afi = getelementptr inbounds nuw [8 x i8], ptr %i.wk, i64 %i.afh
  %i.afj = load ptr, ptr %i.afi, align 8, !tbaa !559 ; 2 uses
  %.not.i144.i.i.i.1 = icmp eq ptr %i.afj, null
  br i1 %.not.i144.i.i.i.1, label %.preheader.i.i.i.i.2, label %bb.br

bb.br:                                            ; preds = %.preheader.i.i.i.i.1
  %i.afk = getelementptr inbounds nuw i8, ptr %.1161.i.i.i.i, i64 8
  store ptr %i.afj, ptr %i.afk, align 8, !tbaa !561
  %i.afl = getelementptr inbounds nuw [8 x i8], ptr %i.wl, i64 %i.afh
  %i.afm = load ptr, ptr %i.afl, align 8, !tbaa !559
  br label %.preheader.i.i.i.i.2

.preheader.i.i.i.i.2:                             ; preds = %bb.br, %.preheader.i.i.i.i.1
  %.1161.i.i.i.i.1 = phi ptr [ %i.afm, %bb.br ], [ %.1161.i.i.i.i, %.preheader.i.i.i.i.1 ] ; 2 uses
  %i.afn = add nsw i64 %indvars.iv246.i.i.i.i, -3 ; 2 uses
  %i.afo = getelementptr inbounds nuw [8 x i8], ptr %i.wk, i64 %i.afn
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !559 ; 2 uses
  %.not.i144.i.i.i.2 = icmp eq ptr %i.afp, null
  br i1 %.not.i144.i.i.i.2, label %.preheader.i.i.i.i.3, label %bb.bs

bb.bs:                                            ; preds = %.preheader.i.i.i.i.2
  %i.afq = getelementptr inbounds nuw i8, ptr %.1161.i.i.i.i.1, i64 8
  store ptr %i.afp, ptr %i.afq, align 8, !tbaa !561
  %i.afr = getelementptr inbounds nuw [8 x i8], ptr %i.wl, i64 %i.afn
  %i.afs = load ptr, ptr %i.afr, align 8, !tbaa !559
  br label %.preheader.i.i.i.i.3

.preheader.i.i.i.i.3:                             ; preds = %bb.bs, %.preheader.i.i.i.i.2
  %.1161.i.i.i.i.2 = phi ptr [ %i.afs, %bb.bs ], [ %.1161.i.i.i.i.1, %.preheader.i.i.i.i.2 ] ; 2 uses
  %i.aft = add nsw i64 %indvars.iv246.i.i.i.i, -4 ; 4 uses
  %i.afu = getelementptr inbounds nuw [8 x i8], ptr %i.wk, i64 %i.aft
  %i.afv = load ptr, ptr %i.afu, align 8, !tbaa !559 ; 2 uses
  %.not.i144.i.i.i.3 = icmp eq ptr %i.afv, null
  br i1 %.not.i144.i.i.i.3, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.preheader.i.i.i.i.3
  %i.afw = getelementptr inbounds nuw i8, ptr %.1161.i.i.i.i.2, i64 8
  store ptr %i.afv, ptr %i.afw, align 8, !tbaa !561
  %i.afx = getelementptr inbounds nuw [8 x i8], ptr %i.wl, i64 %i.aft
  %i.afy = load ptr, ptr %i.afx, align 8, !tbaa !559
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.preheader.i.i.i.i.3
  %.1161.i.i.i.i.3 = phi ptr [ %i.afy, %bb.bt ], [ %.1161.i.i.i.i.2, %.preheader.i.i.i.i.3 ]
  %.old4.not.wide.i.i.i.i.3 = icmp eq i64 %i.aft, 0
  br i1 %.old4.not.wide.i.i.i.i.3, label %free_image_double.exit.i.i.i, label %.preheader.i.i.i.i

free_image_double.exit.i.i.i:                     ; preds = %.preheader.i.i.i.i.prol.loopexit, %bb.bu, %.critedge.thread.i.i.i.i
  %4 = phi ptr [ %i.adj, %.critedge.thread.i.i.i.i ], [ %.lcssa237, %bb.bu ], [ %.lcssa237, %.preheader.i.i.i.i.prol.loopexit ] ; 2 uses
  tail call void @free(ptr noundef nonnull %i.wk) #34
  tail call void @free(ptr noundef %i.wl) #34
  tail call void @free(ptr noundef nonnull %i.wa) #34
  tail call void @free(ptr noundef nonnull %i.ma) #34
  %i.afz = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  %i.aga = load i32, ptr %i.afz, align 8, !tbaa !289 ; 8 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.wf, i64 12
  %i.agc = load i32, ptr %i.agb, align 4, !tbaa !290 ; 4 uses
  %i.agd = uitofp reassoc nsz arcp contract afn i32 %i.aga to double
  %i.age = tail call reassoc nnan nsz arcp contract afn double @llvm.log10.f64(double %i.agd)
  %i.agf = uitofp reassoc nsz arcp contract afn i32 %i.agc to double
  %i.agg = tail call reassoc nnan nsz arcp contract afn double @llvm.log10.f64(double %i.agf)
  %i.agh = fadd reassoc nnan nsz arcp contract afn double %i.agg, %i.age
  %i.agi = fmul reassoc nnan nsz arcp contract afn double %i.agh, 2.500000e+00
  %i.agj = fadd reassoc nsz arcp contract afn double %i.agi, f0x3FF0A98B6050C56E ; 27 uses
  %i.agk = fmul reassoc nnan nsz arcp contract afn double %i.agj, f0x3FF1B78A065117A1
  %i.agl = fptosi double %i.agk to i32
  %i.agm = icmp eq i32 %i.aga, 0
  %i.agn = icmp eq i32 %i.agc, 0
  %or.cond.i.i.i.i.i = or i1 %i.agm, %i.agn
  br i1 %or.cond.i.i.i.i.i, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %free_image_double.exit.i.i.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.142) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.bw:                                            ; preds = %free_image_double.exit.i.i.i
  %i.ago = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 7 uses
  %i.agp = icmp eq ptr %i.ago, null
  br i1 %i.agp, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.120) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.by:                                            ; preds = %bb.bw
  %i.agq = mul i32 %i.agc, %i.aga
  %i.agr = zext i32 %i.agq to i64                 ; 2 uses
  %i.ags = tail call noalias ptr @calloc(i64 noundef %i.agr, i64 noundef 1) #36 ; 6 uses
  store ptr %i.ags, ptr %i.ago, align 8, !tbaa !293
  %i.agt = icmp eq ptr %i.ags, null
  br i1 %i.agt, label %bb.bz, label %new_image_char_ini.exit.i.i.i

bb.bz:                                            ; preds = %bb.by
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.120) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

new_image_char_ini.exit.i.i.i:                    ; preds = %bb.by
  %i.agu = getelementptr inbounds nuw i8, ptr %i.ago, i64 8
  store i32 %i.aga, ptr %i.agu, align 8, !tbaa !294
  %i.agv = getelementptr inbounds nuw i8, ptr %i.ago, i64 12
  store i32 %i.agc, ptr %i.agv, align 4, !tbaa !295
  %i.agw = tail call noalias ptr @calloc(i64 noundef %i.agr, i64 noundef 8) #36 ; 13 uses
  %i.agx = icmp eq ptr %i.agw, null
  br i1 %i.agx, label %bb.ca, label %.preheader.i201.i.i

.preheader.i201.i.i:                              ; preds = %new_image_char_ini.exit.i.i.i
  %.not28.i.i.i = icmp eq ptr %4, null
  br i1 %.not28.i.i.i, label %._crit_edge.i204.i.i, label %.lr.ph.i202.i.i

.lr.ph.i202.i.i:                                  ; preds = %.preheader.i201.i.i
  %i.agy = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 35 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agw, i64 4
  %i.ahd = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 17 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 18 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 12 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 18 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 10 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 10 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 31 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 13 uses
  br label %bb.cb

bb.ca:                                            ; preds = %new_image_char_ini.exit.i.i.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.115) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.cb:                                            ; preds = %bb.fo, %.lr.ph.i202.i.i
  %.0829.i.i.i = phi ptr [ %4, %.lr.ph.i202.i.i ], [ %i.axg, %bb.fo ] ; 3 uses
  %i.aho = load i32, ptr %.0829.i.i.i, align 8, !tbaa !562 ; 2 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %.0829.i.i.i, i64 4
  %i.ahq = load i32, ptr %i.ahp, align 4, !tbaa !563 ; 2 uses
  %i.ahr = mul i32 %i.ahq, %i.aga
  %i.ahs = add i32 %i.ahr, %i.aho
  %i.aht = zext i32 %i.ahs to i64                 ; 2 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ags, i64 %i.aht
  %i.ahv = load i8, ptr %i.ahu, align 1, !tbaa !177
  %i.ahw = icmp eq i8 %i.ahv, 0
  br i1 %i.ahw, label %bb.cc, label %bb.fo

bb.cc:                                            ; preds = %bb.cb
  %i.ahx = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.aht
  %i.ahy = load double, ptr %i.ahx, align 8, !tbaa !166
  %i.ahz = fcmp reassoc nsz arcp contract afn une double %i.ahy, -1.024000e+03
  br i1 %i.ahz, label %bb.cd, label %bb.fo

bb.cd:                                            ; preds = %bb.cc
  call fastcc void @region_grow(i32 noundef %i.aho, i32 noundef %i.ahq, ptr noundef nonnull %i.wf, ptr noundef nonnull %i.agw, ptr noundef %i.b, ptr noundef %i.c, ptr noundef nonnull %i.ago, double noundef f0x3FD921FB54442D18)
  %i.aia = load i32, ptr %i.b, align 4, !tbaa !17 ; 5 uses
  %i.aib = icmp slt i32 %i.aia, %i.agl
  br i1 %i.aib, label %bb.fo, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %5 = load double, ptr %i.c, align 8, !tbaa !166 ; 2 uses
  call fastcc void @region2rect(ptr noundef nonnull %i.agw, i32 noundef %i.aia, ptr noundef nonnull %i.wg, double noundef %5, ptr noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %5, ptr %i.a, align 8, !tbaa !166
  %i.aic = sitofp reassoc nsz arcp contract afn i32 %i.aia to double
  %i.aid = load double, ptr %3, align 16, !tbaa !297
  %i.aie = load double, ptr %i.agy, align 8, !tbaa !298
  %i.aif = load double, ptr %i.agz, align 16, !tbaa !299
  %i.aig = load double, ptr %i.aha, align 8, !tbaa !300
  %i.aih = fsub reassoc nsz arcp contract afn double %i.aif, %i.aid ; 2 uses
  %i.aii = fmul reassoc nsz arcp contract afn double %i.aih, %i.aih
  %i.aij = fsub reassoc nsz arcp contract afn double %i.aig, %i.aie ; 2 uses
  %i.aik = fmul reassoc nsz arcp contract afn double %i.aij, %i.aij
  %i.ail = fadd reassoc nsz arcp contract afn double %i.aik, %i.aii
  %i.aim = tail call reassoc nsz arcp contract afn noundef double @llvm.sqrt.f64(double %i.ail)
  %i.ain = load double, ptr %i.ahb, align 16, !tbaa !301 ; 2 uses
  %i.aio = fmul reassoc nsz arcp contract afn double %i.aim, %i.ain
  %i.aip = fdiv reassoc nsz arcp contract afn double %i.aic, %i.aio
  %i.aiq = fcmp reassoc nsz arcp contract afn ult double %i.aip, f0x3FE6666666666666
  br i1 %i.aiq, label %bb.cf, label %bb.co

bb.cf:                                            ; preds = %bb.ce
  %i.air = load i32, ptr %i.agw, align 4, !tbaa !303 ; 3 uses
  %i.ais = sitofp reassoc nsz arcp contract afn i32 %i.air to double
  %i.ait = load i32, ptr %i.ahc, align 4, !tbaa !304 ; 3 uses
  %i.aiu = sitofp reassoc nsz arcp contract afn i32 %i.ait to double
  %i.aiv = mul i32 %i.ait, %i.aga
  %i.aiw = add i32 %i.aiv, %i.air
  %i.aix = zext i32 %i.aiw to i64
  %i.aiy = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.aix
  %i.aiz = load double, ptr %i.aiy, align 8, !tbaa !166
  %i.aja = icmp sgt i32 %i.aia, 0
  br i1 %i.aja, label %.lr.ph.i147.preheader.i.i.i, label %refine.exit.thread.i.i.i

.lr.ph.i147.preheader.i.i.i:                      ; preds = %bb.cf
  %i.ajb = zext nneg i32 %i.aia to i64
  br label %.lr.ph.i147.i.i.i

.lr.ph.i147.i.i.i:                                ; preds = %bb.ch, %.lr.ph.i147.preheader.i.i.i
  %indvars.iv.i148.i.i.i = phi i64 [ %indvars.iv.next.i149.i.i.i, %bb.ch ], [ 0, %.lr.ph.i147.preheader.i.i.i ] ; 2 uses
  %.0110.i.i.i.i = phi i32 [ %.1.i.i.i.i, %bb.ch ], [ 0, %.lr.ph.i147.preheader.i.i.i ] ; 2 uses
  %.093108.i.i.i.i = phi double [ %.194.i.i.i.i, %bb.ch ], [ 0.000000e+00, %.lr.ph.i147.preheader.i.i.i ] ; 2 uses
  %.095107.i.i.i.i = phi double [ %.196.i.i.i.i, %bb.ch ], [ 0.000000e+00, %.lr.ph.i147.preheader.i.i.i ] ; 2 uses
  %i.ajc = getelementptr inbounds nuw [8 x i8], ptr %i.agw, i64 %indvars.iv.i148.i.i.i ; 2 uses
  %i.ajd = load i32, ptr %i.ajc, align 4, !tbaa !303 ; 2 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajc, i64 4
  %i.ajf = load i32, ptr %i.aje, align 4, !tbaa !304 ; 2 uses
  %i.ajg = mul i32 %i.ajf, %i.aga
  %i.ajh = add i32 %i.ajg, %i.ajd
  %i.aji = zext i32 %i.ajh to i64                 ; 2 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.ags, i64 %i.aji
  store i8 0, ptr %i.ajj, align 1, !tbaa !177
  %i.ajk = sitofp reassoc nsz arcp contract afn i32 %i.ajd to double
  %i.ajl = sitofp reassoc nsz arcp contract afn i32 %i.ajf to double
  %i.ajm = fsub reassoc nsz arcp contract afn double %i.ajk, %i.ais ; 2 uses
  %i.ajn = fmul reassoc nsz arcp contract afn double %i.ajm, %i.ajm
  %i.ajo = fsub reassoc nsz arcp contract afn double %i.ajl, %i.aiu ; 2 uses
  %i.ajp = fmul reassoc nsz arcp contract afn double %i.ajo, %i.ajo
  %i.ajq = fadd reassoc nsz arcp contract afn double %i.ajp, %i.ajn
  %i.ajr = tail call reassoc nsz arcp contract afn noundef double @llvm.sqrt.f64(double %i.ajq)
  %i.ajs = fcmp reassoc nsz arcp contract afn olt double %i.ajr, %i.ain
  br i1 %i.ajs, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.lr.ph.i147.i.i.i
  %i.ajt = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.aji
  %i.aju = load double, ptr %i.ajt, align 8, !tbaa !166
  %i.ajv = fsub reassoc nsz arcp contract afn double %i.aju, %i.aiz ; 3 uses
  %i.ajw = fcmp reassoc nsz arcp contract afn ugt double %i.ajv, f0xC00921FB54442D18
  br i1 %i.ajw, label %.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i, %bb.cg
  %.0.lcssa.i.i.i.i.i = phi double [ %i.ajv, %bb.cg ], [ %i.ajy, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.ajx = fcmp reassoc nsz arcp contract afn ogt double %.0.lcssa.i.i.i.i.i, f0x400921FB54442D18
  br i1 %i.ajx, label %.lr.ph9.i.i.i.i.i, label %angle_diff_signed.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.cg, %.lr.ph.i.i.i.i.i
  %.07.i.i.i.i.i = phi double [ %i.ajy, %.lr.ph.i.i.i.i.i ], [ %i.ajv, %bb.cg ]
  %i.ajy = fadd reassoc nsz arcp contract afn double %.07.i.i.i.i.i, f0x401921FB54442D18 ; 3 uses
  %i.ajz = fcmp reassoc nsz arcp contract afn ugt double %i.ajy, f0xC00921FB54442D18
  br i1 %i.ajz, label %.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph9.i.i.i.i.i:                                ; preds = %.preheader.i.i.i.i.i, %.lr.ph9.i.i.i.i.i
  %.18.i.i.i.i.i = phi double [ %i.aka, %.lr.ph9.i.i.i.i.i ], [ %.0.lcssa.i.i.i.i.i, %.preheader.i.i.i.i.i ]
  %i.aka = fadd reassoc nsz arcp contract afn double %.18.i.i.i.i.i, f0xC01921FB54442D18 ; 3 uses
  %i.akb = fcmp reassoc nsz arcp contract afn ogt double %i.aka, f0x400921FB54442D18
  br i1 %i.akb, label %.lr.ph9.i.i.i.i.i, label %angle_diff_signed.exit.i.i.i.i

angle_diff_signed.exit.i.i.i.i:                   ; preds = %.lr.ph9.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.1.lcssa.i.i.i.i.i = phi double [ %.0.lcssa.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.aka, %.lr.ph9.i.i.i.i.i ] ; 3 uses
  %i.akc = fadd reassoc nsz arcp contract afn double %.1.lcssa.i.i.i.i.i, %.095107.i.i.i.i
  %i.akd = fmul reassoc nsz arcp contract afn double %.1.lcssa.i.i.i.i.i, %.1.lcssa.i.i.i.i.i
  %i.ake = fadd reassoc nsz arcp contract afn double %i.akd, %.093108.i.i.i.i
  %i.akf = add nsw i32 %.0110.i.i.i.i, 1
  br label %bb.ch

bb.ch:                                            ; preds = %angle_diff_signed.exit.i.i.i.i, %.lr.ph.i147.i.i.i
  %.196.i.i.i.i = phi nsz double [ %i.akc, %angle_diff_signed.exit.i.i.i.i ], [ %.095107.i.i.i.i, %.lr.ph.i147.i.i.i ] ; 3 uses
  %.194.i.i.i.i = phi nsz double [ %i.ake, %angle_diff_signed.exit.i.i.i.i ], [ %.093108.i.i.i.i, %.lr.ph.i147.i.i.i ] ; 2 uses
  %.1.i.i.i.i = phi i32 [ %i.akf, %angle_diff_signed.exit.i.i.i.i ], [ %.0110.i.i.i.i, %.lr.ph.i147.i.i.i ] ; 3 uses
  %indvars.iv.next.i149.i.i.i = add nuw nsw i64 %indvars.iv.i148.i.i.i, 1 ; 2 uses
  %exitcond43.not.i.i.i = icmp eq i64 %indvars.iv.next.i149.i.i.i, %i.ajb
  br i1 %exitcond43.not.i.i.i, label %._crit_edge.i150.i.i.i, label %.lr.ph.i147.i.i.i

._crit_edge.i150.i.i.i:                           ; preds = %bb.ch
  %i.akg = icmp eq i32 %.1.i.i.i.i, 0
  br i1 %i.akg, label %refine.exit.thread.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %._crit_edge.i150.i.i.i
  %i.akh = sitofp reassoc nsz arcp contract afn i32 %.1.i.i.i.i to double ; 2 uses
  %i.aki = fdiv reassoc nsz arcp contract afn double %.196.i.i.i.i, %i.akh ; 3 uses
  %i.akj = fmul reassoc nsz arcp contract afn double %.196.i.i.i.i, 2.000000e+00
  %i.akk = fmul reassoc nsz arcp contract afn double %i.akj, %i.aki
  %i.akl = fsub reassoc nsz arcp contract afn double %.194.i.i.i.i, %i.akk
  %i.akm = fdiv reassoc nsz arcp contract afn double %i.akl, %i.akh
  %i.akn = fmul reassoc nsz arcp contract afn double %i.aki, %i.aki
  %i.ako = fadd reassoc nsz arcp contract afn double %i.akm, %i.akn
  %i.akp = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.ako)
  %i.akq = fmul reassoc nsz arcp contract afn double %i.akp, 2.000000e+00
  call fastcc void @region_grow(i32 noundef %i.air, i32 noundef %i.ait, ptr noundef nonnull readonly %i.wf, ptr noundef nonnull %i.agw, ptr noundef nonnull %i.b, ptr noundef %i.a, ptr noundef nonnull readonly %i.ago, double noundef %i.akq)
  %i.akr = load i32, ptr %i.b, align 4, !tbaa !17 ; 4 uses
  %i.aks = icmp slt i32 %i.akr, 2
  br i1 %i.aks, label %refine.exit.thread.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.akt = load double, ptr %i.a, align 8, !tbaa !166 ; 2 uses
  call fastcc void @region2rect(ptr noundef nonnull %i.agw, i32 noundef %i.akr, ptr noundef nonnull readonly %i.wg, double noundef %i.akt, ptr noundef nonnull %3)
  %i.aku = uitofp nneg i32 %i.akr to double
  %i.akv = load <4 x double>, ptr %3, align 16, !tbaa !166 ; 3 uses
  %i.akw = load double, ptr %i.aha, align 8, !tbaa !300
  %i.akx = load double, ptr %i.agz, align 16, !tbaa !299
  %i.aky = load double, ptr %i.agy, align 8, !tbaa !298
  %i.akz = extractelement <4 x double> %i.akv, i64 0
  %i.ala = fsub reassoc nsz arcp contract afn double %i.akx, %i.akz ; 2 uses
  %i.alb = fmul reassoc nsz arcp contract afn double %i.ala, %i.ala
  %i.alc = fsub reassoc nsz arcp contract afn double %i.akw, %i.aky ; 2 uses
  %i.ald = fmul reassoc nsz arcp contract afn double %i.alc, %i.alc
  %i.ale = fadd reassoc nsz arcp contract afn double %i.ald, %i.alb
  %i.alf = tail call reassoc nsz arcp contract afn noundef double @llvm.sqrt.f64(double %i.ale)
  %i.alg = load double, ptr %i.ahb, align 16, !tbaa !301
  %i.alh = fmul reassoc nsz arcp contract afn double %i.alf, %i.alg
  %i.ali = fdiv reassoc nsz arcp contract afn double %i.aku, %i.alh
  %i.alj = fcmp reassoc nsz arcp contract afn olt double %i.ali, f0x3FE6666666666666
  br i1 %i.alj, label %.lr.ph86.i.i.i.i.i, label %bb.co

.lr.ph86.i.i.i.i.i:                               ; preds = %bb.cj
  %i.alk = load <2 x i32>, ptr %i.agw, align 4, !tbaa !17
  %i.all = sitofp <2 x i32> %i.alk to <2 x double> ; 4 uses
  %i.alm = shufflevector <4 x double> %i.akv, <4 x double> poison, <2 x i32> <i32 3, i32 1>
  %i.aln = shufflevector <2 x double> %i.all, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.alo = fsub reassoc nsz arcp contract afn <2 x double> %i.alm, %i.aln ; 2 uses
  %i.alp = fmul reassoc nsz arcp contract afn <2 x double> %i.alo, %i.alo
  %i.alq = shufflevector <4 x double> %i.akv, <4 x double> poison, <2 x i32> <i32 2, i32 0>
  %i.alr = shufflevector <2 x double> %i.all, <2 x double> poison, <2 x i32> zeroinitializer
  %i.als = fsub reassoc nsz arcp contract afn <2 x double> %i.alq, %i.alr ; 2 uses
  %i.alt = fmul reassoc nsz arcp contract afn <2 x double> %i.als, %i.als
  %i.alu = fadd reassoc nsz arcp contract afn <2 x double> %i.alp, %i.alt
  %i.alv = tail call reassoc nsz arcp contract afn <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.alu) ; 2 uses
  %i.alw = extractelement <2 x double> %i.alv, i64 0 ; 2 uses
  %i.alx = extractelement <2 x double> %i.alv, i64 1 ; 2 uses
  %i.aly = fcmp reassoc nsz arcp contract afn ogt double %i.alx, %i.alw
  %i.alz = select reassoc nsz arcp contract afn i1 %i.aly, double %i.alx, double %i.alw
  %i.ama = extractelement <2 x double> %i.all, i64 0
  %i.amb = extractelement <2 x double> %i.all, i64 1
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cn, %.lr.ph86.i.i.i.i.i
  %.lcssa2426.i.i.i = phi i32 [ %i.akr, %.lr.ph86.i.i.i.i.i ], [ %i.ane, %bb.cn ] ; 4 uses
  %.07384.i.i.i.i.i = phi double [ %i.alz, %.lr.ph86.i.i.i.i.i ], [ %i.amc, %bb.cn ]
  %i.amc = fmul reassoc nsz arcp contract afn double %.07384.i.i.i.i.i, 7.500000e-01 ; 2 uses
  %i.amd = icmp sgt i32 %.lcssa2426.i.i.i, 0
  br i1 %i.amd, label %.lr.ph.i104.i.i.i.i, label %refine.exit.thread.loopexit.i.i.i

.lr.ph.i104.i.i.i.i:                              ; preds = %bb.ck, %bb.cm
  %i.ame = phi i32 [ %i.ane, %bb.cm ], [ %.lcssa2426.i.i.i, %bb.ck ] ; 3 uses
  %i.amf = phi i32 [ %i.anf, %bb.cm ], [ %.lcssa2426.i.i.i, %bb.ck ]
  %.083.i.i.i.i.i = phi i32 [ %i.ang, %bb.cm ], [ 0, %bb.ck ] ; 3 uses
  %i.amg = sext i32 %.083.i.i.i.i.i to i64
  %i.amh = getelementptr inbounds [8 x i8], ptr %i.agw, i64 %i.amg ; 3 uses
  %i.ami = load i32, ptr %i.amh, align 4, !tbaa !303 ; 2 uses
  %i.amj = sitofp reassoc nsz arcp contract afn i32 %i.ami to double
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amh, i64 4
  %i.aml = load i32, ptr %i.amk, align 4, !tbaa !304 ; 2 uses
  %i.amm = sitofp reassoc nsz arcp contract afn i32 %i.aml to double
  %i.amn = fsub reassoc nsz arcp contract afn double %i.amj, %i.ama ; 2 uses
  %i.amo = fmul reassoc nsz arcp contract afn double %i.amn, %i.amn
  %i.amp = fsub reassoc nsz arcp contract afn double %i.amm, %i.amb ; 2 uses
  %i.amq = fmul reassoc nsz arcp contract afn double %i.amp, %i.amp
  %i.amr = fadd reassoc nsz arcp contract afn double %i.amq, %i.amo
  %i.ams = tail call reassoc nsz arcp contract afn noundef double @llvm.sqrt.f64(double %i.amr)
  %i.amt = fcmp reassoc nsz arcp contract afn ogt double %i.ams, %i.amc
  br i1 %i.amt, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %.lr.ph.i104.i.i.i.i
  %i.amu = mul i32 %i.aml, %i.aga
  %i.amv = add i32 %i.amu, %i.ami
  %i.amw = zext i32 %i.amv to i64
  %i.amx = getelementptr inbounds nuw i8, ptr %i.ags, i64 %i.amw
  store i8 0, ptr %i.amx, align 1, !tbaa !177
  %i.amy = sext i32 %i.ame to i64
  %i.amz = getelementptr [8 x i8], ptr %i.agw, i64 %i.amy
  %i.ana = getelementptr i8, ptr %i.amz, i64 -8
  %i.anb = load <2 x i32>, ptr %i.ana, align 4, !tbaa !17
  store <2 x i32> %i.anb, ptr %i.amh, align 4, !tbaa !17
  %i.anc = add nsw i32 %i.ame, -1                 ; 2 uses
  %i.and = add nsw i32 %.083.i.i.i.i.i, -1
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %.lr.ph.i104.i.i.i.i
  %i.ane = phi i32 [ %i.anc, %bb.cl ], [ %i.ame, %.lr.ph.i104.i.i.i.i ] ; 5 uses
  %i.anf = phi i32 [ %i.anc, %bb.cl ], [ %i.amf, %.lr.ph.i104.i.i.i.i ] ; 4 uses
  %.1.i.i.i.i.i = phi i32 [ %i.and, %bb.cl ], [ %.083.i.i.i.i.i, %.lr.ph.i104.i.i.i.i ]
  %i.ang = add nsw i32 %.1.i.i.i.i.i, 1           ; 2 uses
  %i.anh = icmp slt i32 %i.ang, %i.anf
  br i1 %i.anh, label %.lr.ph.i104.i.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.cm
  %i.ani = icmp slt i32 %i.anf, 2
  br i1 %i.ani, label %refine.exit.thread.loopexit.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %._crit_edge.i.i.i.i.i
  call fastcc void @region2rect(ptr noundef nonnull %i.agw, i32 noundef %i.anf, ptr noundef nonnull readonly %i.wg, double noundef %i.akt, ptr noundef nonnull %3)
  %i.anj = sitofp reassoc nsz arcp contract afn i32 %i.ane to double
  %i.ank = load double, ptr %3, align 16, !tbaa !297
  %i.anl = load double, ptr %i.agy, align 8, !tbaa !298
  %i.anm = load double, ptr %i.agz, align 16, !tbaa !299
  %i.ann = load double, ptr %i.aha, align 8, !tbaa !300
  %i.ano = fsub reassoc nsz arcp contract afn double %i.anm, %i.ank ; 2 uses
  %i.anp = fmul reassoc nsz arcp contract afn double %i.ano, %i.ano
  %i.anq = fsub reassoc nsz arcp contract afn double %i.ann, %i.anl ; 2 uses
  %i.anr = fmul reassoc nsz arcp contract afn double %i.anq, %i.anq
  %i.ans = fadd reassoc nsz arcp contract afn double %i.anr, %i.anp
  %i.ant = tail call reassoc nsz arcp contract afn noundef double @llvm.sqrt.f64(double %i.ans)
  %i.anu = load double, ptr %i.ahb, align 16, !tbaa !301
  %i.anv = fmul reassoc nsz arcp contract afn double %i.ant, %i.anu
  %i.anw = fdiv reassoc nsz arcp contract afn double %i.anj, %i.anv
  %i.anx = fcmp reassoc nsz arcp contract afn olt double %i.anw, f0x3FE6666666666666
  br i1 %i.anx, label %bb.ck, label %.loopexit.i.i.i

refine.exit.thread.loopexit.i.i.i:                ; preds = %._crit_edge.i.i.i.i.i, %bb.ck
  %.lcssa2427.i.i.i = phi i32 [ %.lcssa2426.i.i.i, %bb.ck ], [ %i.ane, %._crit_edge.i.i.i.i.i ]
  store i32 %.lcssa2427.i.i.i, ptr %i.b, align 4
  br label %refine.exit.thread.i.i.i

refine.exit.thread.i.i.i:                         ; preds = %refine.exit.thread.loopexit.i.i.i, %bb.ci, %._crit_edge.i150.i.i.i, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.fo

.loopexit.i.i.i:                                  ; preds = %bb.cn
  store i32 %i.ane, ptr %i.b, align 4
  br label %bb.co

bb.co:                                            ; preds = %.loopexit.i.i.i, %bb.cj, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.any = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef nonnull %3, ptr noundef nonnull readonly %i.wf, double noundef %i.agj) ; 4 uses
  %i.anz = fcmp reassoc nsz arcp contract afn ogt double %i.any, 0.000000e+00
  br i1 %i.anz, label %rect_improve.exit.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.aoa = load <4 x double>, ptr %3, align 16, !tbaa !166 ; 6 uses
  store <4 x double> %i.aoa, ptr %2, align 8, !tbaa !166
  %i.aob = load <4 x double>, ptr %i.ahb, align 16, !tbaa !166 ; 6 uses
  store <4 x double> %i.aob, ptr %i.ahd, align 8, !tbaa !166
  %i.aoc = load <2 x double>, ptr %i.ahg, align 16, !tbaa !166 ; 6 uses
  store <2 x double> %i.aoc, ptr %i.ahh, align 8, !tbaa !166
  %i.aod = load double, ptr %i.ahm, align 8, !tbaa !305 ; 10 uses
  %i.aoe = fmul reassoc nsz arcp contract afn double %i.aod, 5.000000e-01 ; 2 uses
  store double %i.aoe, ptr %i.ahn, align 8, !tbaa !305
  %i.aof = fmul reassoc nsz arcp contract afn double %i.aod, f0x3FF921FB54442D18 ; 2 uses
  store double %i.aof, ptr %i.ahl, align 8, !tbaa !306
  %i.aog = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wf, double noundef %i.agj) ; 2 uses
  %i.aoh = fcmp reassoc nsz arcp contract afn ogt double %i.aog, %i.any
  br i1 %i.aoh, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  store <4 x double> %i.aoa, ptr %3, align 16, !tbaa !166
  store <4 x double> %i.aob, ptr %i.ahb, align 16, !tbaa !166
  store <2 x double> %i.aoc, ptr %i.ahg, align 16, !tbaa !166
  store double %i.aof, ptr %i.ahk, align 16, !tbaa !306
  store double %i.aoe, ptr %i.ahm, align 8, !tbaa !305
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.165.i.i.i.i = phi nsz double [ %i.aog, %bb.cq ], [ %i.any, %bb.cp ] ; 2 uses
  %i.aoi = fmul reassoc nsz arcp contract afn double %i.aod, 2.500000e-01 ; 2 uses
  store double %i.aoi, ptr %i.ahn, align 8, !tbaa !305
  %i.aoj = fmul reassoc nsz arcp contract afn double %i.aod, f0x3FE921FB54442D18 ; 2 uses
  store double %i.aoj, ptr %i.ahl, align 8, !tbaa !306
  %i.aok = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wf, double noundef %i.agj) ; 2 uses
  %i.aol = fcmp reassoc nsz arcp contract afn ogt double %i.aok, %.165.i.i.i.i
  br i1 %i.aol, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  store <4 x double> %i.aoa, ptr %3, align 16, !tbaa !166
  store <4 x double> %i.aob, ptr %i.ahb, align 16, !tbaa !166
  store <2 x double> %i.aoc, ptr %i.ahg, align 16, !tbaa !166
  store double %i.aoj, ptr %i.ahk, align 16, !tbaa !306
  store double %i.aoi, ptr %i.ahm, align 8, !tbaa !305
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.165.1.i.i.i.i = phi nsz double [ %i.aok, %bb.cs ], [ %.165.i.i.i.i, %bb.cr ] ; 2 uses
  %i.aom = fmul reassoc nsz arcp contract afn double %i.aod, 1.250000e-01 ; 2 uses
  store double %i.aom, ptr %i.ahn, align 8, !tbaa !305
  %i.aon = fmul reassoc nsz arcp contract afn double %i.aod, f0x3FD921FB54442D18 ; 2 uses
  store double %i.aon, ptr %i.ahl, align 8, !tbaa !306
  %i.aoo = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wf, double noundef %i.agj) ; 2 uses
  %i.aop = fcmp reassoc nsz arcp contract afn ogt double %i.aoo, %.165.1.i.i.i.i
  br i1 %i.aop, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  store <4 x double> %i.aoa, ptr %3, align 16, !tbaa !166
  store <4 x double> %i.aob, ptr %i.ahb, align 16, !tbaa !166
  store <2 x double> %i.aoc, ptr %i.ahg, align 16, !tbaa !166
  store double %i.aon, ptr %i.ahk, align 16, !tbaa !306
  store double %i.aom, ptr %i.ahm, align 8, !tbaa !305
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.165.2.i.i.i.i = phi nsz double [ %i.aoo, %bb.cu ], [ %.165.1.i.i.i.i, %bb.ct ] ; 2 uses
  %i.aoq = fmul reassoc nsz arcp contract afn double %i.aod, 6.250000e-02 ; 2 uses
  store double %i.aoq, ptr %i.ahn, align 8, !tbaa !305
  %i.aor = fmul reassoc nsz arcp contract afn double %i.aod, f0x3FC921FB54442D18 ; 2 uses
  store double %i.aor, ptr %i.ahl, align 8, !tbaa !306
  %i.aos = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wf, double noundef %i.agj) ; 2 uses
  %i.aot = fcmp reassoc nsz arcp contract afn ogt double %i.aos, %.165.2.i.i.i.i
  br i1 %i.aot, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  store <4 x double> %i.aoa, ptr %3, align 16, !tbaa !166
  store <4 x double> %i.aob, ptr %i.ahb, align 16, !tbaa !166
  store <2 x double> %i.aoc, ptr %i.ahg, align 16, !tbaa !166
  store double %i.aor, ptr %i.ahk, align 16, !tbaa !306
  store double %i.aoq, ptr %i.ahm, align 8, !tbaa !305
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.165.3.i.i.i.i = phi nsz double [ %i.aos, %bb.cw ], [ %.165.2.i.i.i.i, %bb.cv ] ; 2 uses
  %i.aou = fmul reassoc nsz arcp contract afn double %i.aod, 3.125000e-02 ; 2 uses
  store double %i.aou, ptr %i.ahn, align 8, !tbaa !305
  %i.aov = fmul reassoc nsz arcp contract afn double %i.aod, f0x3FB921FB54442D18 ; 2 uses
  store double %i.aov, ptr %i.ahl, align 8, !tbaa !306
  %i.aow = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wf, double noundef %i.agj) ; 2 uses
  %i.aox = fcmp reassoc nsz arcp contract afn ogt double %i.aow, %.165.3.i.i.i.i
  br i1 %i.aox, label %bb.cy, label %bb.cz
end_hunk_2
begin_hunk_3_@_do_get_structure_auto:bb.a
  store <2 x double> %i.aup, ptr %i.ahh, align 8, !tbaa !166
  %i.auq = load double, ptr %i.ahm, align 8, !tbaa !305 ; 10 uses
  %i.aur = fmul reassoc nsz arcp contract afn double %i.auq, 5.000000e-01 ; 2 uses
  store double %i.aur, ptr %i.ahn, align 8, !tbaa !305
  %i.aus = fmul reassoc nsz arcp contract afn double %i.auq, f0x3FF921FB54442D18 ; 2 uses
  store double %i.aus, ptr %i.ahl, align 8, !tbaa !306
  %i.aut = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wf, double noundef %i.agj) ; 2 uses
  %i.auu = fcmp reassoc nsz arcp contract afn ogt double %i.aut, %.7.4.i.i.i.i
  br i1 %i.auu, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  store <4 x double> %i.aun, ptr %3, align 16, !tbaa !166
  store <4 x double> %i.auo, ptr %i.ahb, align 16, !tbaa !166
  store <2 x double> %i.aup, ptr %i.ahg, align 16, !tbaa !166
  store double %i.aus, ptr %i.ahk, align 16, !tbaa !306
  store double %i.aur, ptr %i.ahm, align 8, !tbaa !305
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %.9.i.i.i.i = phi nsz double [ %i.aut, %bb.ex ], [ %.7.4.i.i.i.i, %bb.ew ] ; 2 uses
  %i.auv = fmul reassoc nsz arcp contract afn double %i.auq, 2.500000e-01 ; 2 uses
  store double %i.auv, ptr %i.ahn, align 8, !tbaa !305
  %i.auw = fmul reassoc nsz arcp contract afn double %i.auq, f0x3FE921FB54442D18 ; 2 uses
  store double %i.auw, ptr %i.ahl, align 8, !tbaa !306
  %i.aux = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wf, double noundef %i.agj) ; 2 uses
  %i.auy = fcmp reassoc nsz arcp contract afn ogt double %i.aux, %.9.i.i.i.i
  br i1 %i.auy, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  store <4 x double> %i.aun, ptr %3, align 16, !tbaa !166
  store <4 x double> %i.auo, ptr %i.ahb, align 16, !tbaa !166
  store <2 x double> %i.aup, ptr %i.ahg, align 16, !tbaa !166
  store double %i.auw, ptr %i.ahk, align 16, !tbaa !306
  store double %i.auv, ptr %i.ahm, align 8, !tbaa !305
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %.9.1.i.i.i.i = phi nsz double [ %i.aux, %bb.ez ], [ %.9.i.i.i.i, %bb.ey ] ; 2 uses
  %i.auz = fmul reassoc nsz arcp contract afn double %i.auq, 1.250000e-01 ; 2 uses
  store double %i.auz, ptr %i.ahn, align 8, !tbaa !305
  %i.ava = fmul reassoc nsz arcp contract afn double %i.auq, f0x3FD921FB54442D18 ; 2 uses
  store double %i.ava, ptr %i.ahl, align 8, !tbaa !306
  %i.avb = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wf, double noundef %i.agj) ; 2 uses
  %i.avc = fcmp reassoc nsz arcp contract afn ogt double %i.avb, %.9.1.i.i.i.i
  br i1 %i.avc, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  store <4 x double> %i.aun, ptr %3, align 16, !tbaa !166
  store <4 x double> %i.auo, ptr %i.ahb, align 16, !tbaa !166
  store <2 x double> %i.aup, ptr %i.ahg, align 16, !tbaa !166
  store double %i.ava, ptr %i.ahk, align 16, !tbaa !306
  store double %i.auz, ptr %i.ahm, align 8, !tbaa !305
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %.9.2.i.i.i.i = phi nsz double [ %i.avb, %bb.fb ], [ %.9.1.i.i.i.i, %bb.fa ] ; 2 uses
  %i.avd = fmul reassoc nsz arcp contract afn double %i.auq, 6.250000e-02 ; 2 uses
  store double %i.avd, ptr %i.ahn, align 8, !tbaa !305
  %i.ave = fmul reassoc nsz arcp contract afn double %i.auq, f0x3FC921FB54442D18 ; 2 uses
  store double %i.ave, ptr %i.ahl, align 8, !tbaa !306
  %i.avf = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wf, double noundef %i.agj) ; 2 uses
  %i.avg = fcmp reassoc nsz arcp contract afn ogt double %i.avf, %.9.2.i.i.i.i
  br i1 %i.avg, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  store <4 x double> %i.aun, ptr %3, align 16, !tbaa !166
  store <4 x double> %i.auo, ptr %i.ahb, align 16, !tbaa !166
  store <2 x double> %i.aup, ptr %i.ahg, align 16, !tbaa !166
  store double %i.ave, ptr %i.ahk, align 16, !tbaa !306
  store double %i.avd, ptr %i.ahm, align 8, !tbaa !305
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %.9.3.i.i.i.i = phi nsz double [ %i.avf, %bb.fd ], [ %.9.2.i.i.i.i, %bb.fc ] ; 2 uses
  %i.avh = fmul reassoc nsz arcp contract afn double %i.auq, 3.125000e-02 ; 2 uses
  store double %i.avh, ptr %i.ahn, align 8, !tbaa !305
  %i.avi = fmul reassoc nsz arcp contract afn double %i.auq, f0x3FB921FB54442D18 ; 2 uses
  store double %i.avi, ptr %i.ahl, align 8, !tbaa !306
  %i.avj = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wf, double noundef %i.agj) ; 2 uses
  %i.avk = fcmp reassoc nsz arcp contract afn ogt double %i.avj, %.9.3.i.i.i.i
  br i1 %i.avk, label %bb.ff, label %rect_improve.exit.i.i.i

bb.ff:                                            ; preds = %bb.fe
  store <4 x double> %i.aun, ptr %3, align 16, !tbaa !166
  store <4 x double> %i.auo, ptr %i.ahb, align 16, !tbaa !166
  store <2 x double> %i.aup, ptr %i.ahg, align 16, !tbaa !166
  store double %i.avi, ptr %i.ahk, align 16, !tbaa !306
  store double %i.avh, ptr %i.ahm, align 8, !tbaa !305
  br label %rect_improve.exit.i.i.i

rect_improve.exit.i.i.i:                          ; preds = %bb.ff, %bb.fe, %bb.ev, %bb.ef, %bb.dp, %bb.cz, %bb.co
  %.069.i.i.i.i = phi nsz double [ %.7.4.i.i.i.i, %bb.ev ], [ %i.any, %bb.co ], [ %.165.4.i.i.i.i, %bb.cz ], [ %.367.4.i.i.i.i, %bb.dp ], [ %.5.4.i.i.i.i, %bb.ef ], [ %i.avj, %bb.ff ], [ %.9.3.i.i.i.i, %bb.fe ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.avl = fcmp reassoc nsz arcp contract afn ugt double %.069.i.i.i.i, 0.000000e+00
  br i1 %i.avl, label %bb.fg, label %bb.fo

bb.fg:                                            ; preds = %rect_improve.exit.i.i.i
  %i.avm = load <4 x double>, ptr %3, align 16, !tbaa !166
  %i.avn = fmul reassoc nsz arcp contract afn <4 x double> %i.avm, splat (double f0x3FF0295FAD40A57F)
  %i.avo = fadd reassoc nsz arcp contract afn <4 x double> %i.avn, splat (double f0x3FE0295FAD40A57F) ; 5 uses
  store <4 x double> %i.avo, ptr %3, align 16, !tbaa !166
  %i.avp = load double, ptr %i.ahb, align 16, !tbaa !301
  %i.avq = fmul reassoc nsz arcp contract afn double %i.avp, f0x3FF0295FAD40A57F ; 2 uses
  store double %i.avq, ptr %i.ahb, align 16, !tbaa !301
  %i.avr = load double, ptr %i.ahm, align 8, !tbaa !305
  %i.avs = load i32, ptr %i.lj, align 8, !tbaa !556
  %.not.i151.i.i.i = icmp eq i32 %i.avs, 7
  br i1 %.not.i151.i.i.i, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.186) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.fi:                                            ; preds = %bb.fg
  %i.avt = load i32, ptr %i.lg, align 8, !tbaa !554 ; 5 uses
  %i.avu = load i32, ptr %i.li, align 4, !tbaa !555
  %i.avv = icmp eq i32 %i.avt, %i.avu
  %i.avw = load ptr, ptr %i.ll, align 8, !tbaa !557 ; 3 uses
  %i.avx = icmp eq ptr %i.avw, null               ; 2 uses
  br i1 %i.avv, label %bb.fj, label %enlarge_ntuple_list.exit.i.i.i.i

bb.fj:                                            ; preds = %bb.fi
  %i.avy = icmp eq i32 %i.avt, 0
  %or.cond.i152.i.i.i = or i1 %i.avy, %i.avx
  br i1 %or.cond.i152.i.i.i, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.131) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.fl:                                            ; preds = %bb.fj
  %i.avz = shl i32 %i.avt, 1                      ; 2 uses
  store i32 %i.avz, ptr %i.li, align 4, !tbaa !555
  %i.awa = zext i32 %i.avz to i64
  %i.awb = mul nuw nsw i64 %i.awa, 56
  %i.awc = tail call ptr @realloc(ptr noundef nonnull %i.avw, i64 noundef %i.awb) #39 ; 3 uses
  store ptr %i.awc, ptr %i.ll, align 8, !tbaa !557
  %i.awd = icmp eq ptr %i.awc, null
  br i1 %i.awd, label %bb.fm, label %add_7tuple.exit.i.i.i

bb.fm:                                            ; preds = %bb.fl
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.120) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

enlarge_ntuple_list.exit.i.i.i.i:                 ; preds = %bb.fi
  br i1 %i.avx, label %bb.fn, label %add_7tuple.exit.i.i.i

bb.fn:                                            ; preds = %enlarge_ntuple_list.exit.i.i.i.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.185) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

add_7tuple.exit.i.i.i:                            ; preds = %enlarge_ntuple_list.exit.i.i.i.i, %bb.fl
  %i.awe = phi ptr [ %i.avw, %enlarge_ntuple_list.exit.i.i.i.i ], [ %i.awc, %bb.fl ] ; 7 uses
  %i.awf = mul i32 %i.avt, 7                      ; 7 uses
  %i.awg = zext i32 %i.awf to i64
  %i.awh = getelementptr inbounds nuw [8 x i8], ptr %i.awe, i64 %i.awg
  %i.awi = extractelement <4 x double> %i.avo, i64 0
  store double %i.awi, ptr %i.awh, align 8, !tbaa !166
  %i.awj = add i32 %i.awf, 1
  %i.awk = zext i32 %i.awj to i64
  %i.awl = getelementptr inbounds nuw [8 x i8], ptr %i.awe, i64 %i.awk
  %i.awm = extractelement <4 x double> %i.avo, i64 1
  store double %i.awm, ptr %i.awl, align 8, !tbaa !166
  %i.awn = add i32 %i.awf, 2
  %i.awo = zext i32 %i.awn to i64
  %i.awp = getelementptr inbounds nuw [8 x i8], ptr %i.awe, i64 %i.awo
  %i.awq = extractelement <4 x double> %i.avo, i64 2
  store double %i.awq, ptr %i.awp, align 8, !tbaa !166
  %i.awr = add i32 %i.awf, 3
  %i.aws = zext i32 %i.awr to i64
  %i.awt = getelementptr inbounds nuw [8 x i8], ptr %i.awe, i64 %i.aws
  %i.awu = extractelement <4 x double> %i.avo, i64 3
  store double %i.awu, ptr %i.awt, align 8, !tbaa !166
  %i.awv = add i32 %i.awf, 4
  %i.aww = zext i32 %i.awv to i64
  %i.awx = getelementptr inbounds nuw [8 x i8], ptr %i.awe, i64 %i.aww
  store double %i.avq, ptr %i.awx, align 8, !tbaa !166
  %i.awy = add i32 %i.awf, 5
  %i.awz = zext i32 %i.awy to i64
  %i.axa = getelementptr inbounds nuw [8 x i8], ptr %i.awe, i64 %i.awz
  store double %i.avr, ptr %i.axa, align 8, !tbaa !166
  %i.axb = add i32 %i.awf, 6
  %i.axc = zext i32 %i.axb to i64
  %i.axd = getelementptr inbounds nuw [8 x i8], ptr %i.awe, i64 %i.axc
  store double %.069.i.i.i.i, ptr %i.axd, align 8, !tbaa !166
  %i.axe = add i32 %i.avt, 1
  store i32 %i.axe, ptr %i.lg, align 8, !tbaa !554
  br label %bb.fo

bb.fo:                                            ; preds = %add_7tuple.exit.i.i.i, %rect_improve.exit.i.i.i, %refine.exit.thread.i.i.i, %bb.cd, %bb.cc, %bb.cb
  %i.axf = getelementptr inbounds nuw i8, ptr %.0829.i.i.i, i64 8
  %i.axg = load ptr, ptr %i.axf, align 8, !tbaa !561 ; 2 uses
  %.not.i203.i.i = icmp eq ptr %i.axg, null
  br i1 %.not.i203.i.i, label %._crit_edge.i204.i.i, label %bb.cb

._crit_edge.i204.i.i:                             ; preds = %bb.fo, %.preheader.i201.i.i
  %i.axh = icmp eq ptr %i.wp, null
  br i1 %i.axh, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %._crit_edge.i204.i.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.139) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.fq:                                            ; preds = %._crit_edge.i204.i.i
  tail call void @free(ptr noundef nonnull %i.wp) #34
  tail call void @free(ptr noundef nonnull %i.wf) #34
  %i.axi = load ptr, ptr %i.wg, align 8, !tbaa !291 ; 2 uses
  %i.axj = icmp eq ptr %i.axi, null
  br i1 %i.axj, label %bb.fr, label %free_image_char.exit.i.i.i

bb.fr:                                            ; preds = %bb.fq
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.139) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

free_image_char.exit.i.i.i:                       ; preds = %bb.fq
  tail call void @free(ptr noundef nonnull %i.axi) #34
  tail call void @free(ptr noundef nonnull %i.wg) #34
  tail call void @free(ptr noundef nonnull %i.ags) #34
  tail call void @free(ptr noundef nonnull %i.ago) #34
  tail call void @free(ptr noundef %i.agw) #34
  tail call void @free(ptr noundef %i.wj) #34
  %i.axk = load i32, ptr %i.lg, align 8, !tbaa !554 ; 3 uses
  %i.axl = icmp slt i32 %i.axk, 0
  br i1 %i.axl, label %bb.fs, label %LineSegmentDetection.exit.i.i

bb.fs:                                            ; preds = %free_image_char.exit.i.i.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.118) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

LineSegmentDetection.exit.i.i:                    ; preds = %free_image_char.exit.i.i.i
  %i.axm = load ptr, ptr %i.ll, align 8, !tbaa !557 ; 3 uses
  tail call void @free(ptr noundef nonnull %i.lg) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %.not206.i.i = icmp eq i32 %i.axk, 0
  br i1 %.not206.i.i, label %line_detect.exit.i, label %bb.ft

bb.ft:                                            ; preds = %LineSegmentDetection.exit.i.i
  %i.axn = zext nneg i32 %i.axk to i64            ; 2 uses
  %i.axo = shl nuw nsw i64 %i.axn, 6
  %i.axp = tail call noalias ptr @malloc(i64 noundef %i.axo) #33 ; 3 uses
  %i.axq = icmp eq ptr %i.axp, null
  br i1 %i.axq, label %line_detect.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ft
  %i.axr = shufflevector <4 x i32> %i.y, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.axs = add nsw <2 x i32> %i.axr, splat (i32 -3)
  %i.axt = sitofp <2 x i32> %i.axs to <2 x float> ; 2 uses
  %i.axu = shufflevector <4 x i32> %i.y, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.axv = sitofp <2 x i32> %i.axu to <2 x float> ; 2 uses
  %i.axw = fpext reassoc nsz arcp contract afn float %i.ac to double
  %i.axx = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.axy = shufflevector <2 x float> %i.axx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.axz = extractelement <2 x float> %i.axt, i64 0
  %i.aya = extractelement <2 x float> %i.axt, i64 1
  %i.ayb = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.axy
  %i.ayc = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.axy
  %i.ayd = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.axw
  br label %bb.fu

bb.fu:                                            ; preds = %bb.gd, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.gd ] ; 2 uses
  %.0163218.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.gd ] ; 6 uses
  %.0164217.i.i = phi float [ 0.000000e+00, %.lr.ph.i.i ], [ %.2166.i.i, %bb.gd ] ; 7 uses
  %.0167216.i.i = phi float [ 0.000000e+00, %.lr.ph.i.i ], [ %.2169.i.i, %bb.gd ] ; 7 uses
  %.0171215.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.2173.i.i, %bb.gd ] ; 7 uses
  %.0175214.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.2177.i.i, %bb.gd ] ; 7 uses
  %.idx.i.i = mul nuw nsw i64 %indvars.iv.i.i, 56
  %i.aye = getelementptr inbounds nuw i8, ptr %i.axm, i64 %.idx.i.i ; 4 uses
  %i.ayf = load <2 x double>, ptr %i.aye, align 8, !tbaa !166
  %i.ayg = fptrunc <2 x double> %i.ayf to <2 x float> ; 4 uses
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.aye, i64 16
  %i.ayi = load <2 x double>, ptr %i.ayh, align 8, !tbaa !166
  %i.ayj = fptrunc <2 x double> %i.ayi to <2 x float> ; 4 uses
  %i.ayk = extractelement <2 x float> %i.ayg, i64 0 ; 2 uses
  %i.ayl = extractelement <2 x float> %i.ayj, i64 0 ; 2 uses
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <2 x float> %i.ayg, %i.ayj
  %i.aym = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ayn = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.aym)
  %i.ayo = fcmp reassoc nsz arcp contract afn olt float %i.ayn, 1.000000e+00 ; 2 uses
  %i.ayp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ayk, float %i.ayl)
  %i.ayq = fcmp reassoc nsz arcp contract afn olt float %i.ayp, 2.000000e+00
  %or.cond188.i.i = select i1 %i.ayo, i1 %i.ayq, i1 false
  br i1 %or.cond188.i.i, label %bb.gd, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.ayr = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ayk, float %i.ayl)
  %i.ays = fcmp reassoc nsz arcp contract afn ogt float %i.ayr, %i.axz
  %or.cond225.i.i = select i1 %i.ayo, i1 %i.ays, i1 false
  br i1 %or.cond225.i.i, label %bb.gd, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.ayt = extractelement <2 x float> %i.ayg, i64 1 ; 3 uses
  %i.ayu = extractelement <2 x float> %i.ayj, i64 1 ; 3 uses
  %i.ayv = fsub reassoc nsz arcp contract afn float %i.ayt, %i.ayu
  %i.ayw = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ayv)
  %i.ayx = fcmp reassoc nsz arcp contract afn olt float %i.ayw, 1.000000e+00 ; 2 uses
  %i.ayy = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ayt, float %i.ayu)
  %i.ayz = fcmp reassoc nsz arcp contract afn olt float %i.ayy, 2.000000e+00
  %or.cond190.i.i = select i1 %i.ayx, i1 %i.ayz, i1 false
  br i1 %or.cond190.i.i, label %bb.gd, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.aza = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ayt, float %i.ayu)
  %i.azb = fcmp reassoc nsz arcp contract afn ogt float %i.aza, %i.aya
  %or.cond227.i.i = select i1 %i.ayx, i1 %i.azb, i1 false
  br i1 %or.cond227.i.i, label %bb.gd, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.azc = fadd reassoc nsz arcp contract afn <2 x float> %i.ayg, %i.axv
  %i.azd = sext i32 %.0163218.i.i to i64
  %i.aze = getelementptr inbounds [64 x i8], ptr %i.axp, i64 %i.azd ; 11 uses
  %i.azf = fmul reassoc nsz arcp contract afn <2 x float> %i.azc, %i.ayb ; 4 uses
  store <2 x float> %i.azf, ptr %i.aze, align 16, !tbaa !15
  %i.azg = getelementptr inbounds nuw i8, ptr %i.aze, i64 8
  store float 1.000000e+00, ptr %i.azg, align 8, !tbaa !15
  %i.azh = getelementptr inbounds nuw i8, ptr %i.aze, i64 12
  %i.azi = fadd reassoc nsz arcp contract afn <2 x float> %i.ayj, %i.axv
  %i.azj = fmul reassoc nsz arcp contract afn <2 x float> %i.azi, %i.ayc ; 4 uses
  store <2 x float> %i.azj, ptr %i.azh, align 4, !tbaa !15
  %i.azk = getelementptr inbounds nuw i8, ptr %i.aze, i64 20
  store float 1.000000e+00, ptr %i.azk, align 4, !tbaa !15
  %i.azl = getelementptr inbounds nuw i8, ptr %i.aze, i64 48
  %i.azm = extractelement <2 x float> %i.azf, i64 1 ; 3 uses
  %i.azn = extractelement <2 x float> %i.azj, i64 1 ; 3 uses
  %i.azo = fsub reassoc nsz arcp contract afn float %i.azm, %i.azn ; 3 uses
  %i.azp = extractelement <2 x float> %i.azf, i64 0
  %i.azq = extractelement <2 x float> %i.azj, i64 0
  %foldExtExtBinop230 = fsub reassoc nsz arcp contract afn <2 x float> %i.azj, %i.azf ; 3 uses
  %i.azr = extractelement <2 x float> %foldExtExtBinop230, i64 0 ; 2 uses
  %i.azs = fmul reassoc nsz arcp contract afn float %i.azn, %i.azp
  %i.azt = fmul reassoc nsz arcp contract afn float %i.azq, %i.azm
  %i.azu = fsub reassoc nsz arcp contract afn float %i.azs, %i.azt ; 3 uses
  %i.azv = fmul reassoc nsz arcp contract afn float %i.azo, %i.azo
  %foldExtExtBinop232 = fmul reassoc nsz arcp contract afn <2 x float> %foldExtExtBinop230, %foldExtExtBinop230
  %i.azw = extractelement <2 x float> %foldExtExtBinop232, i64 0 ; 2 uses
  %i.azx = fadd reassoc nsz arcp contract afn float %i.azv, %i.azw
  %i.azy = fmul reassoc nsz arcp contract afn float %i.azu, %i.azu
  %i.azz = fadd reassoc nsz arcp contract afn float %i.azx, %i.azy ; 2 uses
  %i.baa = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.azz)
  %i.bab = fcmp reassoc nsz arcp contract afn ogt float %i.azz, 0.000000e+00
  %i.bac = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.baa
  %i.bad = select reassoc nsz arcp contract afn i1 %i.bab, float %i.bac, float 1.000000e+00 ; 3 uses
  %i.bae = fmul reassoc nsz arcp contract afn float %i.bad, %i.azo ; 2 uses
  %i.baf = fmul reassoc nsz arcp contract afn float %i.bad, %i.azr ; 2 uses
  %i.bag = getelementptr inbounds nuw i8, ptr %i.aze, i64 52
  %i.bah = fmul reassoc nsz arcp contract afn float %i.bad, %i.azu
  %i.bai = getelementptr inbounds nuw i8, ptr %i.aze, i64 56
  %i.baj = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.bae, float noundef %i.baf) #35 ; 2 uses
  %i.bak = fcmp reassoc nsz arcp contract afn ogt float %i.baj, 0.000000e+00
  %i.bal = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.baj
  %i.bam = select reassoc nsz arcp contract afn i1 %i.bak, float %i.bal, float 1.000000e+00 ; 3 uses
  %i.ban = fmul reassoc nsz arcp contract afn float %i.bam, %i.bae
  store float %i.ban, ptr %i.azl, align 16, !tbaa !15
  %i.bao = fmul reassoc nsz arcp contract afn float %i.bam, %i.baf
  store float %i.bao, ptr %i.bag, align 4, !tbaa !15
  %i.bap = fmul reassoc nsz arcp contract afn float %i.bah, %i.bam
  store float %i.bap, ptr %i.bai, align 8, !tbaa !15
  %i.baq = fsub reassoc nsz arcp contract afn float %i.azn, %i.azm ; 3 uses
  %i.bar = fmul reassoc nsz arcp contract afn float %i.baq, %i.baq
  %i.bas = fadd reassoc nsz arcp contract afn float %i.bar, %i.azw
  %i.bat = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.bas) ; 3 uses
  %i.bau = getelementptr inbounds nuw i8, ptr %i.aze, i64 24
  store float %i.bat, ptr %i.bau, align 8, !tbaa !188
  %i.bav = getelementptr inbounds nuw i8, ptr %i.aye, i64 32
  %i.baw = load double, ptr %i.bav, align 8, !tbaa !166
  %i.bax = fmul reassoc nsz arcp contract afn double %i.baw, %i.ayd
  %i.bay = fptrunc reassoc nsz arcp contract afn double %i.bax to float ; 2 uses
  %i.baz = getelementptr inbounds nuw i8, ptr %i.aze, i64 28
  store float %i.bay, ptr %i.baz, align 4, !tbaa !564
  %i.bba = fmul reassoc nsz arcp contract afn float %i.bat, %i.bay
  %i.bbb = fpext reassoc nsz arcp contract afn float %i.bba to double
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.aye, i64 40
  %i.bbd = load double, ptr %i.bbc, align 8, !tbaa !166
  %i.bbe = fmul reassoc nsz arcp contract afn double %i.bbd, %i.bbb
  %i.bbf = fptrunc reassoc nsz arcp contract afn double %i.bbe to float ; 3 uses
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.aze, i64 32
  store float %i.bbf, ptr %i.bbg, align 16, !tbaa !307
  %i.bbh = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.baq, float %i.azr)
  %i.bbi = fmul reassoc nsz arcp contract afn float %i.bbh, f0x42652EE0
  %i.bbj = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bbi)
  %i.bbk = fadd reassoc nsz arcp contract afn float %i.bbj, -9.000000e+01
  %i.bbl = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bbk) ; 2 uses
  %i.bbm = fcmp reassoc nsz arcp contract afn olt float %i.bbl, 3.000000e+01
  %i.bbn = fcmp reassoc nsz arcp contract afn ogt float %i.bat, 5.000000e+00 ; 2 uses
  %or.cond.i.i = and i1 %i.bbm, %i.bbn
  br i1 %or.cond.i.i, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.bbo = add nsw i32 %.0175214.i.i, 1
  %i.bbp = fadd reassoc nsz arcp contract afn float %.0167216.i.i, %i.bbf
  br label %bb.gc

bb.ga:                                            ; preds = %bb.fy
  %i.bbq = fadd reassoc nsz arcp contract afn float %i.bbl, -9.000000e+01
  %i.bbr = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bbq)
  %i.bbs = fcmp reassoc nsz arcp contract afn olt float %i.bbr, 3.000000e+01
  %or.cond3.i.i = and i1 %i.bbs, %i.bbn
  br i1 %or.cond3.i.i, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.bbt = add nsw i32 %.0171215.i.i, 1
end_hunk_3
begin_hunk_4_@region2rect:bb.a
  %spec.store.select.i73.i = select i1 %i.ip, double f0x0010000000000000, double %i.io
  %i.iq = fdiv reassoc nsz arcp contract afn double %i.im, %spec.store.select.i73.i
  %i.ir = fcmp reassoc nsz arcp contract afn ugt double %i.iq, f0x3D19000000000000
  br i1 %i.ir, label %bb.i, label %double_equal.exit75.thread.i

double_equal.exit75.thread.i:                     ; preds = %double_equal.exit75.i, %double_equal.exit72.thread.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.161) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.i:                                             ; preds = %double_equal.exit75.i, %double_equal.exit72.i, %double_equal.exit.i
  %i.is = fadd reassoc nsz arcp contract afn double %.lcssa4, %.lcssa3
  %i.it = fsub reassoc nsz arcp contract afn double %.lcssa4, %.lcssa3 ; 2 uses
  %i.iu = fmul reassoc nsz arcp contract afn double %i.it, %i.it
  %i.iv = fmul reassoc nsz arcp contract afn double %.lcssa2, %.lcssa2
  %i.iw = fmul reassoc nsz arcp contract afn double %i.iv, 4.000000e+00
  %i.ix = fadd reassoc nsz arcp contract afn double %i.iu, %i.iw
  %i.iy = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.ix)
  %i.iz = fsub reassoc nsz arcp contract afn double %i.is, %i.iy
  %i.ja = fmul reassoc nsz arcp contract afn double %i.iz, 5.000000e-01 ; 2 uses
  %i.jb = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %.lcssa4)
  %i.jc = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %.lcssa3)
  %i.jd = fcmp reassoc nsz arcp contract afn ogt double %i.jb, %i.jc
  br i1 %i.jd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.je = fsub reassoc nsz arcp contract afn double %i.ja, %.lcssa4
  %i.jf = tail call reassoc nsz arcp contract afn double @llvm.atan2.f64(double %i.je, double %.lcssa2)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.jg = fsub reassoc nsz arcp contract afn double %i.ja, %.lcssa3
  %i.jh = tail call reassoc nsz arcp contract afn double @llvm.atan2.f64(double %.lcssa2, double %i.jg)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ji = phi reassoc nsz arcp contract afn double [ %i.jf, %bb.j ], [ %i.jh, %bb.k ] ; 3 uses
  %i.jj = fsub reassoc nsz arcp contract afn double %i.ji, %3 ; 3 uses
  %i.jk = fcmp reassoc nsz arcp contract afn ugt double %i.jj, f0xC00921FB54442D18
  br i1 %i.jk, label %.preheader.i.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %bb.l
  %.0.lcssa.i.i = phi double [ %i.jj, %bb.l ], [ %i.jm, %.lr.ph.i.i ] ; 3 uses
  %i.jl = fcmp reassoc nsz arcp contract afn ogt double %.0.lcssa.i.i, f0x400921FB54442D18
  br i1 %i.jl, label %.lr.ph11.i.i, label %.lr.ph138.preheader

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %.09.i.i = phi double [ %i.jm, %.lr.ph.i.i ], [ %i.jj, %bb.l ]
  %i.jm = fadd reassoc nsz arcp contract afn double %.09.i.i, f0x401921FB54442D18 ; 3 uses
  %i.jn = fcmp reassoc nsz arcp contract afn ugt double %i.jm, f0xC00921FB54442D18
  br i1 %i.jn, label %.preheader.i.i, label %.lr.ph.i.i

.lr.ph11.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph11.i.i
  %.110.i.i = phi double [ %i.jo, %.lr.ph11.i.i ], [ %.0.lcssa.i.i, %.preheader.i.i ]
  %i.jo = fadd reassoc nsz arcp contract afn double %.110.i.i, f0xC01921FB54442D18 ; 3 uses
  %i.jp = fcmp reassoc nsz arcp contract afn ogt double %i.jo, f0x400921FB54442D18
  br i1 %i.jp, label %.lr.ph11.i.i, label %.lr.ph138.preheader

.lr.ph138.preheader:                              ; preds = %.lr.ph11.i.i, %.preheader.i.i
  %.1.lcssa.i.i = phi double [ %.0.lcssa.i.i, %.preheader.i.i ], [ %i.jo, %.lr.ph11.i.i ]
  %spec.select.i.i = tail call nsz double @llvm.fabs.f64(double %.1.lcssa.i.i)
  %i.jq = fcmp reassoc nsz arcp contract afn ogt double %spec.select.i.i, f0x3FD921FB54442D18
  %i.jr = fadd reassoc nsz arcp contract afn double %i.ji, f0x400921FB54442D18
  %spec.select.i = select nsz i1 %i.jq, double %i.jr, double %i.ji ; 2 uses
  %sincos = tail call reassoc nsz arcp contract afn { double, double } @llvm.sincos.f64(double %spec.select.i) ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0 ; 2 uses
  %cos = extractvalue { double, double } %sincos, 1 ; 3 uses
  %i.js = insertelement <2 x double> poison, double %cos, i64 0
  %i.jt = insertelement <2 x double> %i.js, double %sin, i64 1 ; 7 uses
  %i.ju = shufflevector <4 x double> %i.cv, <4 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %i.jv = shufflevector <2 x double> %i.jt, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.jw = shufflevector <2 x double> %i.jt, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br label %.lr.ph138

.lr.ph138:                                        ; preds = %.lr.ph138, %.lr.ph138.preheader
  %indvars.iv152 = phi i64 [ 0, %.lr.ph138.preheader ], [ %indvars.iv.next153.1, %.lr.ph138 ] ; 3 uses
  %.0105135 = phi double [ 0.000000e+00, %.lr.ph138.preheader ], [ %.1106.1, %.lr.ph138 ] ; 2 uses
  %i.jx = phi <4 x double> [ zeroinitializer, %.lr.ph138.preheader ], [ %i.le, %.lr.ph138 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph138.preheader ], [ %niter.next.1, %.lr.ph138 ]
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv152
  %i.jz = load <2 x i32>, ptr %i.jy, align 4, !tbaa !17
  %i.ka = sitofp <2 x i32> %i.jz to <2 x double>
  %i.kb = fsub reassoc nsz arcp contract afn <2 x double> %i.ka, %i.ju ; 2 uses
  %i.kc = shufflevector <2 x double> %i.kb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.kd = fmul reassoc nsz arcp contract afn <2 x double> %i.kc, %i.jt ; 2 uses
  %i.ke = shufflevector <2 x double> %i.kb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kf = fmul reassoc nsz arcp contract afn <2 x double> %i.ke, %i.jv ; 2 uses
  %i.kg = fadd reassoc nsz arcp contract afn <2 x double> %i.kd, %i.kf
  %i.kh = fsub reassoc nsz arcp contract afn <2 x double> %i.kd, %i.kf ; 2 uses
  %i.ki = shufflevector <2 x double> %i.kg, <2 x double> %i.kh, <4 x i32> <i32 1, i32 1, i32 1, i32 2> ; 3 uses
  %i.kj = fcmp reassoc nsz arcp contract afn olt <4 x double> %i.ki, %i.jx
  %i.kk = fcmp reassoc nsz arcp contract afn ogt <4 x double> %i.ki, %i.jx
  %i.kl = shufflevector <4 x i1> %i.kj, <4 x i1> %i.kk, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.km = select <4 x i1> %i.kl, <4 x double> %i.ki, <4 x double> %i.jx ; 3 uses
  %i.kn = extractelement <2 x double> %i.kh, i64 0 ; 2 uses
  %i.ko = fcmp reassoc nsz arcp contract afn olt double %i.kn, %.0105135
  %.1106 = select nsz i1 %i.ko, double %i.kn, double %.0105135 ; 2 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv152
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = load <2 x i32>, ptr %i.kq, align 4, !tbaa !17
  %i.ks = sitofp <2 x i32> %i.kr to <2 x double>
  %i.kt = fsub reassoc nsz arcp contract afn <2 x double> %i.ks, %i.ju ; 2 uses
  %i.ku = shufflevector <2 x double> %i.kt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.kv = fmul reassoc nsz arcp contract afn <2 x double> %i.ku, %i.jt ; 2 uses
  %i.kw = shufflevector <2 x double> %i.kt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kx = fmul reassoc nsz arcp contract afn <2 x double> %i.kw, %i.jw ; 2 uses
  %i.ky = fadd reassoc nsz arcp contract afn <2 x double> %i.kv, %i.kx
  %i.kz = fsub reassoc nsz arcp contract afn <2 x double> %i.kv, %i.kx ; 2 uses
  %i.la = shufflevector <2 x double> %i.ky, <2 x double> %i.kz, <4 x i32> <i32 1, i32 1, i32 1, i32 2> ; 3 uses
  %i.lb = fcmp reassoc nsz arcp contract afn olt <4 x double> %i.la, %i.km
  %i.lc = fcmp reassoc nsz arcp contract afn ogt <4 x double> %i.la, %i.km
  %i.ld = shufflevector <4 x i1> %i.lb, <4 x i1> %i.lc, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.le = select <4 x i1> %i.ld, <4 x double> %i.la, <4 x double> %i.km ; 5 uses
  %i.lf = extractelement <2 x double> %i.kz, i64 0 ; 2 uses
  %i.lg = fcmp reassoc nsz arcp contract afn olt double %i.lf, %.1106
  %.1106.1 = select nsz i1 %i.lg, double %i.lf, double %.1106 ; 4 uses
  %indvars.iv.next153.1 = add nuw nsw i64 %indvars.iv152, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge139.unr-lcssa, label %.lr.ph138

._crit_edge139.unr-lcssa:                         ; preds = %.lr.ph138
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge139, label %.lr.ph138.epil.preheader

.lr.ph138.epil.preheader:                         ; preds = %._crit_edge139.unr-lcssa
  %lcmp.mod193 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod193)
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next153.1
  %i.li = load <2 x i32>, ptr %i.lh, align 4, !tbaa !17
  %i.lj = sitofp <2 x i32> %i.li to <2 x double>
  %i.lk = fsub reassoc nsz arcp contract afn <2 x double> %i.lj, %i.ju ; 2 uses
  %i.ll = shufflevector <2 x double> %i.lk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.lm = fmul reassoc nsz arcp contract afn <2 x double> %i.ll, %i.jt ; 2 uses
  %i.ln = shufflevector <2 x double> %i.lk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lo = shufflevector <2 x double> %i.jt, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.lp = fmul reassoc nsz arcp contract afn <2 x double> %i.ln, %i.lo ; 2 uses
  %i.lq = fadd reassoc nsz arcp contract afn <2 x double> %i.lm, %i.lp
  %i.lr = fsub reassoc nsz arcp contract afn <2 x double> %i.lm, %i.lp ; 2 uses
  %i.ls = shufflevector <2 x double> %i.lq, <2 x double> %i.lr, <4 x i32> <i32 1, i32 1, i32 1, i32 2> ; 3 uses
  %i.lt = fcmp reassoc nsz arcp contract afn olt <4 x double> %i.ls, %i.le
  %i.lu = fcmp reassoc nsz arcp contract afn ogt <4 x double> %i.ls, %i.le
  %i.lv = shufflevector <4 x i1> %i.lt, <4 x i1> %i.lu, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.lw = select <4 x i1> %i.lv, <4 x double> %i.ls, <4 x double> %i.le
  %i.lx = extractelement <2 x double> %i.lr, i64 0 ; 2 uses
  %i.ly = fcmp reassoc nsz arcp contract afn olt double %i.lx, %.1106.1
  %.1106.epil = select nsz i1 %i.ly, double %i.lx, double %.1106.1
  br label %._crit_edge139

._crit_edge139:                                   ; preds = %._crit_edge139.unr-lcssa, %.lr.ph138.epil.preheader
  %.lcssa = phi <4 x double> [ %i.le, %._crit_edge139.unr-lcssa ], [ %i.lw, %.lr.ph138.epil.preheader ] ; 3 uses
  %.1106.lcssa = phi double [ %.1106.1, %._crit_edge139.unr-lcssa ], [ %.1106.epil, %.lr.ph138.epil.preheader ]
  %i.lz = extractelement <4 x double> %.lcssa, i64 0
  %i.ma = fmul reassoc nsz arcp contract afn double %i.lz, %cos
  %i.mb = extractelement <4 x double> %i.cv, i64 1 ; 2 uses
  %i.mc = fadd reassoc nsz arcp contract afn double %i.ma, %i.mb
  store double %i.mc, ptr %4, align 8, !tbaa !297
  %i.md = shufflevector <2 x double> %i.jt, <2 x double> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 poison>
  %i.me = insertelement <4 x double> %i.md, double %.1106.lcssa, i64 3 ; 2 uses
  %i.mf = fmul reassoc nsz arcp contract afn <4 x double> %.lcssa, %i.me
  %i.mg = fsub reassoc nsz arcp contract afn <4 x double> %.lcssa, %i.me ; 2 uses
  %i.mh = shufflevector <4 x double> %i.mf, <4 x double> %i.mg, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.mi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.mj = fadd reassoc nsz arcp contract afn <4 x double> %i.mh, %i.cv
  store <4 x double> %i.mj, ptr %i.mi, align 8, !tbaa !166
  %i.mk = getelementptr inbounds nuw i8, ptr %4, i64 40
  store double %i.mb, ptr %i.mk, align 8, !tbaa !588
  %i.ml = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.mm = extractelement <4 x double> %i.cv, i64 0
  store double %i.mm, ptr %i.ml, align 8, !tbaa !589
  %i.mn = getelementptr inbounds nuw i8, ptr %4, i64 56
  store double %spec.select.i, ptr %i.mn, align 8, !tbaa !310
  %i.mo = getelementptr inbounds nuw i8, ptr %4, i64 64
  store double %cos, ptr %i.mo, align 8, !tbaa !311
  %i.mp = getelementptr inbounds nuw i8, ptr %4, i64 72
  store double %sin, ptr %i.mp, align 8, !tbaa !312
  %i.mq = getelementptr inbounds nuw i8, ptr %4, i64 80
  store <2 x double> <double f0x3FD921FB54442D18, double 1.250000e-01>, ptr %i.mq, align 8, !tbaa !166
  %i.mr = extractelement <4 x double> %i.mg, i64 3
  %i.ms = fcmp reassoc nsz arcp contract afn olt double %i.mr, 1.000000e+00
  br i1 %i.ms, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge139
  %i.mt = getelementptr inbounds nuw i8, ptr %4, i64 32
  store double 1.000000e+00, ptr %i.mt, align 8, !tbaa !301
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge139
  ret void
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #12

; Function Attrs: nounwind uwtable
define internal fastcc noalias nonnull ptr @new_image_double(i32 noundef %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  %i.b = icmp eq i32 %1, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.128) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.120) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = mul i32 %1, %0
  %i.f = zext i32 %i.e to i64
  %i.g = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 8) #36 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !291
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.120) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %0, ptr %i.i, align 8, !tbaa !289
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %1, ptr %i.j, align 4, !tbaa !290
  ret ptr %i.c
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #12

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.atan2.f64(double, double) #11

; Function Attrs: nounwind uwtable
define internal fastcc double @rect_nfa(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, double noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 10 uses
  %i.b = alloca [4 x double], align 16            ; 10 uses
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.175) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.d = tail call noalias dereferenceable_or_null(88) ptr @malloc(i64 noundef 88) #33 ; 15 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.177) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = load double, ptr %0, align 8, !tbaa !297 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load double, ptr %i.g, align 8, !tbaa !312
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load double, ptr %i.i, align 8, !tbaa !301
  %i.k = fmul reassoc nsz arcp contract afn double %i.j, 5.000000e-01 ; 2 uses
  %i.l = fmul reassoc nsz arcp contract afn double %i.k, %i.h ; 4 uses
  %i.m = fsub reassoc nsz arcp contract afn double %i.f, %i.l
  store double %i.m, ptr %i.a, align 16, !tbaa !166
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load double, ptr %i.n, align 8, !tbaa !298 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load double, ptr %i.p, align 8, !tbaa !311
  %i.r = fmul reassoc nsz arcp contract afn double %i.q, %i.k ; 4 uses
  %i.s = fadd reassoc nsz arcp contract afn double %i.r, %i.o
  store double %i.s, ptr %i.b, align 16, !tbaa !166
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load double, ptr %i.t, align 8, !tbaa !299 ; 5 uses
  %i.v = fsub reassoc nsz arcp contract afn double %i.u, %i.l
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %i.v, ptr %i.w, align 8, !tbaa !166
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load double, ptr %i.x, align 8, !tbaa !300 ; 5 uses
  %i.z = fadd reassoc nsz arcp contract afn double %i.y, %i.r
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %i.z, ptr %i.aa, align 8, !tbaa !166
  %i.ab = fadd reassoc nsz arcp contract afn double %i.u, %i.l
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %i.ab, ptr %i.ac, align 16, !tbaa !166
  %i.ad = fsub reassoc nsz arcp contract afn double %i.y, %i.r
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store double %i.ad, ptr %i.ae, align 16, !tbaa !166
  %i.af = fadd reassoc nsz arcp contract afn double %i.l, %i.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %i.af, ptr %i.ag, align 8, !tbaa !166
  %i.ah = fsub reassoc nsz arcp contract afn double %i.o, %i.r
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store double %i.ah, ptr %i.ai, align 8, !tbaa !166
  %i.aj = fcmp reassoc nsz arcp contract afn uge double %i.f, %i.u
  %i.ak = fcmp reassoc nsz arcp contract afn ugt double %i.o, %i.y
  %or.cond.i = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %or.cond.i, label %bb.f, label %ri_ini.exit

bb.f:                                             ; preds = %bb.e
  %i.al = fcmp reassoc nsz arcp contract afn oge double %i.f, %i.u
  %i.am = fcmp reassoc nsz arcp contract afn olt double %i.o, %i.y
  %or.cond56.i = select i1 %i.al, i1 %i.am, i1 false
  br i1 %or.cond56.i, label %ri_ini.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = fcmp reassoc nsz arcp contract afn ule double %i.f, %i.u
  %i.ao = fcmp reassoc nsz arcp contract afn ult double %i.o, %i.y
  %or.cond57.i = select i1 %i.an, i1 true, i1 %i.ao
  %i.ap = select i1 %or.cond57.i, i64 3, i64 2
  br label %ri_ini.exit

ri_ini.exit:                                      ; preds = %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.ap, %bb.g ], [ 0, %bb.e ], [ 1, %bb.f ] ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0.i
  %i.as = load double, ptr %i.ar, align 8, !tbaa !166 ; 2 uses
  store double %i.as, ptr %i.d, align 8, !tbaa !166
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0.i
  %i.au = load double, ptr %i.at, align 8, !tbaa !166 ; 2 uses
  store double %i.au, ptr %i.aq, align 8, !tbaa !166
  %i.av = add nuw nsw i64 %.0.i, 1
  %i.aw = and i64 %i.av, 3                        ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aw
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !166
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store double %i.ay, ptr %i.az, align 8, !tbaa !166
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.aw
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !166
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store double %i.bb, ptr %i.bc, align 8, !tbaa !166
  %i.bd = xor i64 %.0.i, 2                        ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bd
  %i.bf = load double, ptr %i.be, align 8, !tbaa !166
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store double %i.bf, ptr %i.bg, align 8, !tbaa !166
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bd
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !166
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store double %i.bi, ptr %i.bj, align 8, !tbaa !166
  %i.bk = add nuw nsw i64 %.0.i, 3
  %i.bl = and i64 %i.bk, 3                        ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bl
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !166
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store double %i.bn, ptr %i.bo, align 8, !tbaa !166
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bl
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !166
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store double %i.bq, ptr %i.br, align 8, !tbaa !166
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %i.bu = insertelement <2 x double> poison, double %i.as, i64 0
  %i.bv = insertelement <2 x double> %i.bu, double %i.au, i64 1
  %i.bw = tail call reassoc nsz arcp contract afn <2 x double> @llvm.ceil.v2f64(<2 x double> %i.bv)
  %i.bx = fptosi <2 x double> %i.bw to <2 x i32>
  %i.by = add nsw <2 x i32> %i.bx, <i32 -1, i32 0>
  store <2 x i32> %i.by, ptr %i.bs, align 8, !tbaa !17
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store <2 x double> splat (double f0xFFEFFFFFFFFFFFFF), ptr %i.bz, align 8, !tbaa !166
  tail call fastcc void @ri_inc(ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.ca = load i32, ptr %i.bs, align 8, !tbaa !314 ; 2 uses
  %i.cb = sitofp reassoc nsz arcp contract afn i32 %i.ca to double
  %i.cc = load double, ptr %i.bg, align 8, !tbaa !166
  %i.cd = fcmp reassoc nsz arcp contract afn uge double %i.cc, %i.cb
  br i1 %i.cd, label %.lr.ph, label %ri_del.exit

.lr.ph:                                           ; preds = %ri_ini.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 56
end_hunk_4

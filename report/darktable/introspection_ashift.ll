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
@.str.167 = private unnamed_addr constant [32 x i8] c"refine: invalid image 'angles'.\00", align 1
@.str.173 = private unnamed_addr constant [46 x i8] c"reduce_region_radius: invalid image 'angles'.\00", align 1
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

.lr.ph.i193.i.i.preheader:                        ; preds = %bb.u
  %min.iters.check156 = icmp ult i64 %i.jh, 5
  br i1 %min.iters.check156, label %.lr.ph.i193.i.i.preheader235, label %vector.ph157

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
  br i1 %i.jv, label %.lr.ph.i193.i.i.preheader235, label %vector.body159, !llvm.loop !533

.lr.ph.i193.i.i.preheader235:                     ; preds = %vector.body159, %.lr.ph.i193.i.i.preheader
  %.012.i.i.i.ph = phi i64 [ 0, %.lr.ph.i193.i.i.preheader ], [ %n.vec158, %vector.body159 ]
  br label %.lr.ph.i193.i.i

.lr.ph.i193.i.i:                                  ; preds = %.lr.ph.i193.i.i.preheader235, %.lr.ph.i193.i.i
  %.012.i.i.i = phi i64 [ %i.kk, %.lr.ph.i193.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i193.i.i.preheader235 ] ; 3 uses
  %.idx.i.i.i = shl i64 %.012.i.i.i, 4
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i.i.i ; 3 uses
  %i.jx = load float, ptr %i.jw, align 16, !tbaa !15
  %i.jy = fmul reassoc nsz arcp contract afn float %i.jx, 3.000000e-01
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 4
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !15
  %i.kb = fmul reassoc nsz arcp contract afn float %i.ka, 5.900000e-01
  %i.kc = fadd reassoc nsz arcp contract afn float %i.kb, %i.jy
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.ke = load float, ptr %i.kd, align 8, !tbaa !15
  %i.kf = fmul reassoc nsz arcp contract afn float %i.ke, 1.100000e-01
  %i.kg = fadd reassoc nsz arcp contract afn float %i.kc, %i.kf
  %i.kh = fpext reassoc nsz arcp contract afn float %i.kg to double
  %i.ki = fmul reassoc nsz arcp contract afn double %i.kh, 2.560000e+02
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %.012.i.i.i
  store double %i.ki, ptr %i.kj, align 8, !tbaa !166
  %i.kk = add nuw i64 %.012.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.kk, %i.jh
  br i1 %exitcond.not.i.i.i, label %rgb2grey256.exit.i.i, label %.lr.ph.i193.i.i, !llvm.loop !534

rgb2grey256.exit.i.i:                             ; preds = %.lr.ph.i193.i.i, %bb.u
  %i.kl = and i32 %1, 1
  %.not186.i.i = icmp eq i32 %i.kl, 0
  br i1 %.not186.i.i, label %edge_enhance.exit.i.i, label %bb.v

bb.v:                                             ; preds = %rgb2grey256.exit.i.i
  %i.km = tail call noalias ptr @malloc(i64 noundef %i.je) #33 ; 6 uses
  %cond.i.i.i = icmp eq ptr %i.km, null
  br i1 %cond.i.i.i, label %edge_enhance.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.kn = tail call noalias ptr @malloc(i64 noundef %i.je) #33 ; 5 uses
  %i.ko = icmp eq ptr %i.kn, null
  br i1 %i.ko, label %.sink.split.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @edge_enhance_1d(ptr noundef nonnull readonly %i.jf, ptr noundef %i.km, i32 noundef %i.aa, i32 noundef %i.z, i32 noundef 256)
  tail call fastcc void @edge_enhance_1d(ptr noundef nonnull readonly %i.jf, ptr noundef %i.kn, i32 noundef %i.aa, i32 noundef %i.z, i32 noundef 512)
  br i1 %.not.i192.i.i, label %._crit_edge.i198.i.i, label %.lr.ph.i196.i.i.preheader

.lr.ph.i196.i.i.preheader:                        ; preds = %bb.x
  %min.iters.check169 = icmp ult i64 %i.jh, 4
  br i1 %min.iters.check169, label %.lr.ph.i196.i.i.preheader234, label %vector.ph170

vector.ph170:                                     ; preds = %.lr.ph.i196.i.i.preheader
  %n.vec171 = and i64 %i.jh, -4                   ; 3 uses
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph170
  %index173 = phi i64 [ 0, %vector.ph170 ], [ %index.next175, %vector.body172 ] ; 4 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %index173
  %wide.load = load <4 x double>, ptr %i.kp, align 8, !tbaa !166 ; 2 uses
  %i.kq = fmul reassoc nsz arcp contract afn <4 x double> %wide.load, %wide.load
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %index173
  %wide.load174 = load <4 x double>, ptr %i.kr, align 8, !tbaa !166 ; 2 uses
  %i.ks = fmul reassoc nsz arcp contract afn <4 x double> %wide.load174, %wide.load174
  %i.kt = fadd reassoc nsz arcp contract afn <4 x double> %i.ks, %i.kq
  %i.ku = tail call reassoc nsz arcp contract afn <4 x double> @llvm.sqrt.v4f64(<4 x double> %i.kt)
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %index173
  store <4 x double> %i.ku, ptr %i.kv, align 8, !tbaa !166
  %index.next175 = add nuw i64 %index173, 4       ; 2 uses
  %i.kw = icmp eq i64 %index.next175, %n.vec171
  br i1 %i.kw, label %middle.block176, label %vector.body172, !llvm.loop !535

middle.block176:                                  ; preds = %vector.body172
  %cmp.n = icmp eq i64 %i.jh, %n.vec171
  br i1 %cmp.n, label %._crit_edge.i198.i.i, label %.lr.ph.i196.i.i.preheader234

.lr.ph.i196.i.i.preheader234:                     ; preds = %.lr.ph.i196.i.i.preheader, %middle.block176
  %.039.i.i.i.ph = phi i64 [ 0, %.lr.ph.i196.i.i.preheader ], [ %n.vec171, %middle.block176 ]
  br label %.lr.ph.i196.i.i

._crit_edge.i198.i.i:                             ; preds = %.lr.ph.i196.i.i, %middle.block176, %bb.x
  tail call void @free(ptr noundef nonnull %i.km) #34
  br label %.sink.split.i.i.i

.lr.ph.i196.i.i:                                  ; preds = %.lr.ph.i196.i.i.preheader234, %.lr.ph.i196.i.i
  %.039.i.i.i = phi i64 [ %i.lg, %.lr.ph.i196.i.i ], [ %.039.i.i.i.ph, %.lr.ph.i196.i.i.preheader234 ] ; 4 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %.039.i.i.i
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !166 ; 2 uses
  %i.kz = fmul reassoc nsz arcp contract afn double %i.ky, %i.ky
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %.039.i.i.i
  %i.lb = load double, ptr %i.la, align 8, !tbaa !166 ; 2 uses
  %i.lc = fmul reassoc nsz arcp contract afn double %i.lb, %i.lb
  %i.ld = fadd reassoc nsz arcp contract afn double %i.lc, %i.kz
  %i.le = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.ld)
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %.039.i.i.i
  store double %i.le, ptr %i.lf, align 8, !tbaa !166
  %i.lg = add nuw i64 %.039.i.i.i, 1              ; 2 uses
  %exitcond.not.i197.i.i = icmp eq i64 %i.lg, %i.jh
  br i1 %exitcond.not.i197.i.i, label %._crit_edge.i198.i.i, label %.lr.ph.i196.i.i, !llvm.loop !536

.sink.split.i.i.i:                                ; preds = %._crit_edge.i198.i.i, %bb.w
  %.sink.i.i.i = phi ptr [ %i.kn, %._crit_edge.i198.i.i ], [ %i.km, %bb.w ]
  tail call void @free(ptr noundef nonnull %.sink.i.i.i) #34
  br label %edge_enhance.exit.i.i

edge_enhance.exit.i.i:                            ; preds = %.sink.split.i.i.i, %bb.v, %rgb2grey256.exit.i.i
  %i.lh = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #33 ; 9 uses
  %i.li = icmp eq ptr %i.lh, null
  br i1 %i.li, label %bb.y, label %bb.z

bb.y:                                             ; preds = %edge_enhance.exit.i.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.120) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.z:                                             ; preds = %edge_enhance.exit.i.i
  store i32 0, ptr %i.lh, align 8, !tbaa !549
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 4 ; 3 uses
  store i32 1, ptr %i.lj, align 4, !tbaa !550
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 8 ; 2 uses
  store i32 7, ptr %i.lk, align 8, !tbaa !551
  %i.ll = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #33 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lh, i64 16 ; 4 uses
  store ptr %i.ll, ptr %i.lm, align 8, !tbaa !552
  %i.ln = icmp eq ptr %i.ll, null
  br i1 %i.ln, label %bb.aa, label %new_ntuple_list.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.120) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

new_ntuple_list.exit.i.i.i:                       ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.lo = icmp slt i32 %i.aa, 1
  %i.lp = icmp slt i32 %i.z, 1
  %or.cond3.i.i.i = or i1 %i.lo, %i.lp
  br i1 %or.cond3.i.i.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %new_ntuple_list.exit.i.i.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.108) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.ac:                                            ; preds = %new_ntuple_list.exit.i.i.i
  %i.lq = uitofp reassoc nsz arcp contract afn nneg i32 %i.aa to double
  %i.lr = fmul reassoc nnan nsz arcp contract afn double %i.lq, f0x3FEFAE147AE147AE ; 2 uses
  %i.ls = fcmp reassoc nsz arcp contract afn ogt double %i.lr, f0x41EFFFFFFFE00000
  br i1 %i.ls, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.lt = uitofp reassoc nsz arcp contract afn nneg i32 %i.z to double
  %i.lu = fmul reassoc nnan nsz arcp contract afn double %i.lt, f0x3FEFAE147AE147AE ; 2 uses
  %i.lv = fcmp reassoc nsz arcp contract afn ogt double %i.lu, f0x41EFFFFFFFE00000
  br i1 %i.lv, label %bb.ae, label %new_ntuple_list.exit.i.i.i.i

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.127) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

new_ntuple_list.exit.i.i.i.i:                     ; preds = %bb.ad
  %i.lw = tail call reassoc nsz arcp contract afn double @llvm.ceil.f64(double %i.lr)
  %i.lx = fptoui double %i.lw to i32              ; 2 uses
  %i.ly = tail call reassoc nsz arcp contract afn double @llvm.ceil.f64(double %i.lu)
  %i.lz = fptoui double %i.ly to i32
  %i.ma = tail call fastcc ptr @new_image_double(i32 noundef %i.lx, i32 noundef %i.z) ; 6 uses
  %i.mb = tail call fastcc ptr @new_image_double(i32 noundef %i.lx, i32 noundef %i.lz) ; 8 uses
  %i.mc = shl nuw i32 %i.aa, 1                    ; 27 uses
  %i.md = shl nuw i32 %i.z, 1                     ; 27 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mf = load i32, ptr %i.me, align 8, !tbaa !289 ; 10 uses
  %.not.i.i.i.i = icmp eq i32 %i.mf, 0
  br i1 %.not.i.i.i.i, label %.preheader135.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %new_ntuple_list.exit.i.i.i.i
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ma, i64 12
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !290 ; 2 uses
  %.not153.i.i.i.i = icmp eq i32 %i.mh, 0
  %wide.trip.count165.i.i.i.i = zext i32 %i.mh to i64
  br label %.lr.ph.i164.i.i.i

.preheader135.i.i.i.i:                            ; preds = %._crit_edge141.i.i.i.i, %new_ntuple_list.exit.i.i.i.i
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mb, i64 12 ; 3 uses
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !290 ; 2 uses
  %.not155.i.i.i.i = icmp eq i32 %i.mj, 0
  br i1 %.not155.i.i.i.i, label %free_ntuple_list.exit.i.i.i.i, label %.lr.ph152.i.i.i.i

.lr.ph152.i.i.i.i:                                ; preds = %.preheader135.i.i.i.i
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.ml = load i32, ptr %i.mk, align 8, !tbaa !289 ; 3 uses
  %.not156.i.i.i.i = icmp eq i32 %i.ml, 0
  %wide.trip.count180.i.i.i.i = zext i32 %i.ml to i64
  br label %.lr.ph.i157.i.i.i

.lr.ph.i164.i.i.i:                                ; preds = %._crit_edge141.i.i.i.i, %.lr.ph.i.i.i.i
  %.0122142.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i ], [ %i.ri, %._crit_edge141.i.i.i.i ] ; 3 uses
  %i.mm = uitofp reassoc nsz arcp contract afn i32 %.0122142.i.i.i.i to double
  %i.mn = fmul reassoc nnan nsz arcp contract afn double %i.mm, f0x3FF0295FAD40A57F ; 2 uses
  %i.mo = fadd reassoc nsz arcp contract afn double %i.mn, 5.000000e-01
  %i.mp = tail call reassoc nsz arcp contract afn double @llvm.floor.f64(double %i.mo)
  %i.mq = fptosi double %i.mp to i32              ; 8 uses
  %i.mr = uitofp nsz nneg i32 %i.mq to double
  %.neg11.i.i.i = fsub reassoc nsz arcp contract afn double -3.000000e+00, %i.mn
  %i.ms = fadd reassoc nsz arcp contract afn double %.neg11.i.i.i, %i.mr ; 5 uses
  %i.mt = fmul reassoc nsz arcp contract afn double %i.ms, %i.ms
  %i.mu = fmul reassoc nsz arcp contract afn double %i.mt, f0xBFF5C7AE147AE147
  %i.mv = tail call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.mu) ; 3 uses
  %i.mw = fadd reassoc nsz arcp contract afn double %i.ms, 1.000000e+00 ; 2 uses
  %i.mx = fmul reassoc nsz arcp contract afn double %i.mw, %i.mw
  %i.my = fmul reassoc nsz arcp contract afn double %i.mx, f0xBFF5C7AE147AE147
  %i.mz = tail call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.my) ; 3 uses
  %i.na = fadd reassoc nsz arcp contract afn double %i.ms, 2.000000e+00 ; 2 uses
  %i.nb = fmul reassoc nsz arcp contract afn double %i.na, %i.na
  %i.nc = fmul reassoc nsz arcp contract afn double %i.nb, f0xBFF5C7AE147AE147
  %i.nd = tail call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.nc) ; 3 uses
  %i.ne = insertelement <4 x double> poison, double %i.ms, i64 0
  %i.nf = shufflevector <4 x double> %i.ne, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ng = fadd reassoc nsz arcp contract afn <4 x double> %i.nf, <double 6.000000e+00, double 5.000000e+00, double 4.000000e+00, double 3.000000e+00> ; 2 uses
  %i.nh = fmul reassoc nsz arcp contract afn <4 x double> %i.ng, %i.ng
  %i.ni = fmul reassoc nsz arcp contract afn <4 x double> %i.nh, splat (double f0xBFF5C7AE147AE147)
  %i.nj = tail call reassoc nsz arcp contract afn <4 x double> @llvm.exp.v4f64(<4 x double> %i.ni) ; 3 uses
  %op.rdx220.a = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double %i.mz, <4 x double> %i.nj)
  %op.rdx221.a = fadd reassoc nsz arcp contract afn double %i.mv, %i.nd
  %op.rdx222 = fadd reassoc nsz arcp contract afn double %op.rdx220.a, %op.rdx221.a ; 5 uses
  %i.nk = fcmp reassoc nsz arcp contract afn ult double %op.rdx222, 0.000000e+00
  br i1 %i.nk, label %gaussian_kernel.exit176.i.i.i, label %.lr.ph31.i171.preheader.i.i.i

.lr.ph31.i171.preheader.i.i.i:                    ; preds = %.lr.ph.i164.i.i.i
  %i.nl = fdiv reassoc nsz arcp contract afn double %i.mv, %op.rdx222
  %i.nm = fdiv reassoc nsz arcp contract afn double %i.mz, %op.rdx222
  %i.nn = fdiv reassoc nsz arcp contract afn double %i.nd, %op.rdx222
  %i.no = insertelement <4 x double> poison, double %op.rdx222, i64 0
  %i.np = shufflevector <4 x double> %i.no, <4 x double> poison, <4 x i32> zeroinitializer
  %i.nq = fdiv reassoc nsz arcp contract afn <4 x double> %i.nj, %i.np
  br label %gaussian_kernel.exit176.i.i.i

gaussian_kernel.exit176.i.i.i:                    ; preds = %.lr.ph31.i171.preheader.i.i.i, %.lr.ph.i164.i.i.i
  %i.nr = phi double [ %i.nn, %.lr.ph31.i171.preheader.i.i.i ], [ %i.nd, %.lr.ph.i164.i.i.i ]
  %i.ns = phi double [ %i.nm, %.lr.ph31.i171.preheader.i.i.i ], [ %i.mz, %.lr.ph.i164.i.i.i ]
  %i.nt = phi double [ %i.nl, %.lr.ph31.i171.preheader.i.i.i ], [ %i.mv, %.lr.ph.i164.i.i.i ]
  %i.nu = phi <4 x double> [ %i.nq, %.lr.ph31.i171.preheader.i.i.i ], [ %i.nj, %.lr.ph.i164.i.i.i ] ; 4 uses
  br i1 %.not153.i.i.i.i, label %._crit_edge141.i.i.i.i, label %.preheader137.lr.ph.split.us.i.i.i.i

.preheader137.lr.ph.split.us.i.i.i.i:             ; preds = %gaussian_kernel.exit176.i.i.i
  %i.nv = add nsw i32 %i.mq, -3
  %i.nw = load ptr, ptr %i.ma, align 8, !tbaa !291
  %i.nx = add nsw i32 %i.mq, -2
  %i.ny = add nsw i32 %i.mq, -1
  %i.nz = add nuw i32 %i.mq, 1
  %i.oa = add nuw i32 %i.mq, 2
  %i.ob = add nuw i32 %i.mq, 3
  %i.oc = extractelement <4 x double> %i.nu, i64 0
  %i.od = extractelement <4 x double> %i.nu, i64 1
  %i.oe = extractelement <4 x double> %i.nu, i64 2
  %i.of = extractelement <4 x double> %i.nu, i64 3
  br label %.preheader137.us.i.i.i.i

.preheader137.us.i.i.i.i:                         ; preds = %._crit_edge.us.i.i.i.i, %.preheader137.lr.ph.split.us.i.i.i.i
  %indvars.iv162.i.i.i.i = phi i64 [ %indvars.iv.next163.i.i.i.i, %._crit_edge.us.i.i.i.i ], [ 0, %.preheader137.lr.ph.split.us.i.i.i.i ] ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.preheader137.us.i.i.i.i
  %.0116.us.i.i.i.i = phi i32 [ %i.nv, %.preheader137.us.i.i.i.i ], [ %i.oh, %bb.af ] ; 3 uses
  %i.og = icmp slt i32 %.0116.us.i.i.i.i, 0
  %i.oh = add nsw i32 %.0116.us.i.i.i.i, %i.mc
  br i1 %i.og, label %bb.af, label %.preheader136.us.i.i.i.i

.preheader136.us.i.i.i.i:                         ; preds = %bb.af, %.preheader136.us.i.i.i.i
  %.1117.us.i.i.i.i = phi i32 [ %i.oi, %.preheader136.us.i.i.i.i ], [ %.0116.us.i.i.i.i, %bb.af ] ; 5 uses
  %.not130.us.i.i.i.i = icmp slt i32 %.1117.us.i.i.i.i, %i.mc
  %i.oi = sub nsw i32 %.1117.us.i.i.i.i, %i.mc
  br i1 %.not130.us.i.i.i.i, label %bb.ag, label %.preheader136.us.i.i.i.i

bb.ag:                                            ; preds = %.preheader136.us.i.i.i.i
  %i.oj = trunc nuw i64 %indvars.iv162.i.i.i.i to i32 ; 2 uses
  %i.ok = mul i32 %i.aa, %i.oj                    ; 7 uses
  %.not131.us.i.i.i.i = icmp slt i32 %.1117.us.i.i.i.i, %i.aa
  %i.ol = xor i32 %.1117.us.i.i.i.i, -1
  %i.om = add i32 %i.mc, %i.ol
  %.2.us.i.i.i.i = select i1 %.not131.us.i.i.i.i, i32 %.1117.us.i.i.i.i, i32 %i.om
  %i.on = add i32 %.2.us.i.i.i.i, %i.ok
  %i.oo = zext i32 %i.on to i64
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.oo
  %i.oq = load double, ptr %i.op, align 8, !tbaa !166
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %.0116.us.i.1.i.i.i = phi i32 [ %i.nx, %bb.ag ], [ %i.os, %bb.ah ] ; 3 uses
  %i.or = icmp slt i32 %.0116.us.i.1.i.i.i, 0
  %i.os = add nsw i32 %.0116.us.i.1.i.i.i, %i.mc
  br i1 %i.or, label %bb.ah, label %.preheader136.us.i.1.i.i.i

.preheader136.us.i.1.i.i.i:                       ; preds = %bb.ah, %.preheader136.us.i.1.i.i.i
  %.1117.us.i.1.i.i.i = phi i32 [ %i.ot, %.preheader136.us.i.1.i.i.i ], [ %.0116.us.i.1.i.i.i, %bb.ah ] ; 5 uses
  %.not130.us.i.1.i.i.i = icmp slt i32 %.1117.us.i.1.i.i.i, %i.mc
  %i.ot = sub nsw i32 %.1117.us.i.1.i.i.i, %i.mc
  br i1 %.not130.us.i.1.i.i.i, label %bb.ai, label %.preheader136.us.i.1.i.i.i

bb.ai:                                            ; preds = %.preheader136.us.i.1.i.i.i
  %.not131.us.i.1.i.i.i = icmp slt i32 %.1117.us.i.1.i.i.i, %i.aa
  %i.ou = xor i32 %.1117.us.i.1.i.i.i, -1
  %i.ov = add i32 %i.mc, %i.ou
  %.2.us.i.1.i.i.i = select i1 %.not131.us.i.1.i.i.i, i32 %.1117.us.i.1.i.i.i, i32 %i.ov
  %i.ow = add i32 %.2.us.i.1.i.i.i, %i.ok
  %i.ox = zext i32 %i.ow to i64
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.ox
  %i.oz = load double, ptr %i.oy, align 8, !tbaa !166
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %.0116.us.i.2.i.i.i = phi i32 [ %i.ny, %bb.ai ], [ %i.pb, %bb.aj ] ; 3 uses
  %i.pa = icmp slt i32 %.0116.us.i.2.i.i.i, 0
  %i.pb = add nsw i32 %.0116.us.i.2.i.i.i, %i.mc
  br i1 %i.pa, label %bb.aj, label %.preheader136.us.i.2.i.i.i

.preheader136.us.i.2.i.i.i:                       ; preds = %bb.aj, %.preheader136.us.i.2.i.i.i
  %.1117.us.i.2.i.i.i = phi i32 [ %i.pc, %.preheader136.us.i.2.i.i.i ], [ %.0116.us.i.2.i.i.i, %bb.aj ] ; 5 uses
  %.not130.us.i.2.i.i.i = icmp slt i32 %.1117.us.i.2.i.i.i, %i.mc
  %i.pc = sub nsw i32 %.1117.us.i.2.i.i.i, %i.mc
  br i1 %.not130.us.i.2.i.i.i, label %.preheader136.us.i.preheader.3.i.i.i, label %.preheader136.us.i.2.i.i.i

.preheader136.us.i.preheader.3.i.i.i:             ; preds = %.preheader136.us.i.2.i.i.i
  %.not131.us.i.2.i.i.i = icmp slt i32 %.1117.us.i.2.i.i.i, %i.aa
  %i.pd = xor i32 %.1117.us.i.2.i.i.i, -1
  %i.pe = add i32 %i.mc, %i.pd
  %.2.us.i.2.i.i.i = select i1 %.not131.us.i.2.i.i.i, i32 %.1117.us.i.2.i.i.i, i32 %i.pe
  %i.pf = add i32 %.2.us.i.2.i.i.i, %i.ok
  %i.pg = zext i32 %i.pf to i64
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.pg
  %i.pi = load double, ptr %i.ph, align 8, !tbaa !166
  br label %.preheader136.us.i.3.i.i.i

.preheader136.us.i.3.i.i.i:                       ; preds = %.preheader136.us.i.3.i.i.i, %.preheader136.us.i.preheader.3.i.i.i
  %.1117.us.i.3.i.i.i = phi i32 [ %i.pj, %.preheader136.us.i.3.i.i.i ], [ %i.mq, %.preheader136.us.i.preheader.3.i.i.i ] ; 5 uses
  %.not130.us.i.3.i.i.i = icmp slt i32 %.1117.us.i.3.i.i.i, %i.mc
  %i.pj = sub nsw i32 %.1117.us.i.3.i.i.i, %i.mc
  br i1 %.not130.us.i.3.i.i.i, label %bb.ak, label %.preheader136.us.i.3.i.i.i

bb.ak:                                            ; preds = %.preheader136.us.i.3.i.i.i
  %.not131.us.i.3.i.i.i = icmp slt i32 %.1117.us.i.3.i.i.i, %i.aa
  %i.pk = xor i32 %.1117.us.i.3.i.i.i, -1
  %i.pl = add i32 %i.mc, %i.pk
  %.2.us.i.3.i.i.i = select i1 %.not131.us.i.3.i.i.i, i32 %.1117.us.i.3.i.i.i, i32 %i.pl
  %i.pm = add i32 %.2.us.i.3.i.i.i, %i.ok
  %i.pn = zext i32 %i.pm to i64
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.pn
  %i.pp = load double, ptr %i.po, align 8, !tbaa !166
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %bb.ak
  %.0116.us.i.4.i.i.i = phi i32 [ %i.nz, %bb.ak ], [ %i.pr, %bb.al ] ; 3 uses
  %i.pq = icmp slt i32 %.0116.us.i.4.i.i.i, 0
  %i.pr = add nsw i32 %.0116.us.i.4.i.i.i, %i.mc
  br i1 %i.pq, label %bb.al, label %.preheader136.us.i.4.i.i.i

.preheader136.us.i.4.i.i.i:                       ; preds = %bb.al, %.preheader136.us.i.4.i.i.i
  %.1117.us.i.4.i.i.i = phi i32 [ %i.ps, %.preheader136.us.i.4.i.i.i ], [ %.0116.us.i.4.i.i.i, %bb.al ] ; 5 uses
  %.not130.us.i.4.i.i.i = icmp slt i32 %.1117.us.i.4.i.i.i, %i.mc
  %i.ps = sub nsw i32 %.1117.us.i.4.i.i.i, %i.mc
  br i1 %.not130.us.i.4.i.i.i, label %bb.am, label %.preheader136.us.i.4.i.i.i

bb.am:                                            ; preds = %.preheader136.us.i.4.i.i.i
  %.not131.us.i.4.i.i.i = icmp slt i32 %.1117.us.i.4.i.i.i, %i.aa
  %i.pt = xor i32 %.1117.us.i.4.i.i.i, -1
  %i.pu = add i32 %i.mc, %i.pt
  %.2.us.i.4.i.i.i = select i1 %.not131.us.i.4.i.i.i, i32 %.1117.us.i.4.i.i.i, i32 %i.pu
  %i.pv = add i32 %.2.us.i.4.i.i.i, %i.ok
  %i.pw = zext i32 %i.pv to i64
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.pw
  %i.py = load double, ptr %i.px, align 8, !tbaa !166
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %bb.am
  %.0116.us.i.5.i.i.i = phi i32 [ %i.oa, %bb.am ], [ %i.qa, %bb.an ] ; 3 uses
  %i.pz = icmp slt i32 %.0116.us.i.5.i.i.i, 0
  %i.qa = add nsw i32 %.0116.us.i.5.i.i.i, %i.mc
  br i1 %i.pz, label %bb.an, label %.preheader136.us.i.5.i.i.i

.preheader136.us.i.5.i.i.i:                       ; preds = %bb.an, %.preheader136.us.i.5.i.i.i
  %.1117.us.i.5.i.i.i = phi i32 [ %i.qb, %.preheader136.us.i.5.i.i.i ], [ %.0116.us.i.5.i.i.i, %bb.an ] ; 5 uses
  %.not130.us.i.5.i.i.i = icmp slt i32 %.1117.us.i.5.i.i.i, %i.mc
  %i.qb = sub nsw i32 %.1117.us.i.5.i.i.i, %i.mc
  br i1 %.not130.us.i.5.i.i.i, label %bb.ao, label %.preheader136.us.i.5.i.i.i

bb.ao:                                            ; preds = %.preheader136.us.i.5.i.i.i
end_hunk_1
begin_hunk_2_@_do_get_structure_auto:bb.a
bb.aq:                                            ; preds = %bb.aq, %.preheader134.us.i.i.i.i
  %.3.us.i.i.i.i = phi i32 [ %i.ss, %.preheader134.us.i.i.i.i ], [ %i.tg, %bb.aq ] ; 3 uses
  %i.tf = icmp slt i32 %.3.us.i.i.i.i, 0
  %i.tg = add nsw i32 %.3.us.i.i.i.i, %i.md
  br i1 %i.tf, label %bb.aq, label %.preheader.us.i.i.i.i

.preheader.us.i.i.i.i:                            ; preds = %bb.aq, %.preheader.us.i.i.i.i
  %.4.us.i.i.i.i = phi i32 [ %i.th, %.preheader.us.i.i.i.i ], [ %.3.us.i.i.i.i, %bb.aq ] ; 5 uses
  %.not.us.i.i.i.i = icmp slt i32 %.4.us.i.i.i.i, %i.md
  %i.th = sub nsw i32 %.4.us.i.i.i.i, %i.md
  br i1 %.not.us.i.i.i.i, label %bb.ar, label %.preheader.us.i.i.i.i

bb.ar:                                            ; preds = %.preheader.us.i.i.i.i
  %i.ti = trunc nuw i64 %indvars.iv177.i.i.i.i to i32 ; 8 uses
  %.not129.us.i.i.i.i = icmp slt i32 %.4.us.i.i.i.i, %i.z
  %i.tj = xor i32 %.4.us.i.i.i.i, -1
  %i.tk = add i32 %i.md, %i.tj
  %.5.us.i.i.i.i = select i1 %.not129.us.i.i.i.i, i32 %.4.us.i.i.i.i, i32 %i.tk
  %i.tl = mul i32 %.5.us.i.i.i.i, %i.mf
  %i.tm = add i32 %i.tl, %i.ti
  %i.tn = zext i32 %i.tm to i64
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %i.tn
  %i.tp = load double, ptr %i.to, align 8, !tbaa !166
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %bb.ar
  %.3.us.i.1.i.i.i = phi i32 [ %i.sw, %bb.ar ], [ %i.tr, %bb.as ] ; 3 uses
  %i.tq = icmp slt i32 %.3.us.i.1.i.i.i, 0
  %i.tr = add nsw i32 %.3.us.i.1.i.i.i, %i.md
  br i1 %i.tq, label %bb.as, label %.preheader.us.i.1.i.i.i

.preheader.us.i.1.i.i.i:                          ; preds = %bb.as, %.preheader.us.i.1.i.i.i
  %.4.us.i.1.i.i.i = phi i32 [ %i.ts, %.preheader.us.i.1.i.i.i ], [ %.3.us.i.1.i.i.i, %bb.as ] ; 5 uses
  %.not.us.i.1.i.i.i = icmp slt i32 %.4.us.i.1.i.i.i, %i.md
  %i.ts = sub nsw i32 %.4.us.i.1.i.i.i, %i.md
  br i1 %.not.us.i.1.i.i.i, label %bb.at, label %.preheader.us.i.1.i.i.i

bb.at:                                            ; preds = %.preheader.us.i.1.i.i.i
  %.not129.us.i.1.i.i.i = icmp slt i32 %.4.us.i.1.i.i.i, %i.z
  %i.tt = xor i32 %.4.us.i.1.i.i.i, -1
  %i.tu = add i32 %i.md, %i.tt
  %.5.us.i.1.i.i.i = select i1 %.not129.us.i.1.i.i.i, i32 %.4.us.i.1.i.i.i, i32 %i.tu
  %i.tv = mul i32 %.5.us.i.1.i.i.i, %i.mf
  %i.tw = add i32 %i.tv, %i.ti
  %i.tx = zext i32 %i.tw to i64
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %i.tx
  %i.tz = load double, ptr %i.ty, align 8, !tbaa !166
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %bb.at
  %.3.us.i.2.i.i.i = phi i32 [ %i.sx, %bb.at ], [ %i.ub, %bb.au ] ; 3 uses
  %i.ua = icmp slt i32 %.3.us.i.2.i.i.i, 0
  %i.ub = add nsw i32 %.3.us.i.2.i.i.i, %i.md
  br i1 %i.ua, label %bb.au, label %.preheader.us.i.2.i.i.i

.preheader.us.i.2.i.i.i:                          ; preds = %bb.au, %.preheader.us.i.2.i.i.i
  %.4.us.i.2.i.i.i = phi i32 [ %i.uc, %.preheader.us.i.2.i.i.i ], [ %.3.us.i.2.i.i.i, %bb.au ] ; 5 uses
  %.not.us.i.2.i.i.i = icmp slt i32 %.4.us.i.2.i.i.i, %i.md
  %i.uc = sub nsw i32 %.4.us.i.2.i.i.i, %i.md
  br i1 %.not.us.i.2.i.i.i, label %.preheader.us.i.preheader.3.i.i.i, label %.preheader.us.i.2.i.i.i

.preheader.us.i.preheader.3.i.i.i:                ; preds = %.preheader.us.i.2.i.i.i
  %.not129.us.i.2.i.i.i = icmp slt i32 %.4.us.i.2.i.i.i, %i.z
  %i.ud = xor i32 %.4.us.i.2.i.i.i, -1
  %i.ue = add i32 %i.md, %i.ud
  %.5.us.i.2.i.i.i = select i1 %.not129.us.i.2.i.i.i, i32 %.4.us.i.2.i.i.i, i32 %i.ue
  %i.uf = mul i32 %.5.us.i.2.i.i.i, %i.mf
  %i.ug = add i32 %i.uf, %i.ti
  %i.uh = zext i32 %i.ug to i64
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %i.uh
  %i.uj = load double, ptr %i.ui, align 8, !tbaa !166
  br label %.preheader.us.i.3.i.i.i

.preheader.us.i.3.i.i.i:                          ; preds = %.preheader.us.i.3.i.i.i, %.preheader.us.i.preheader.3.i.i.i
  %.4.us.i.3.i.i.i = phi i32 [ %i.uk, %.preheader.us.i.3.i.i.i ], [ %i.rn, %.preheader.us.i.preheader.3.i.i.i ] ; 5 uses
  %.not.us.i.3.i.i.i = icmp slt i32 %.4.us.i.3.i.i.i, %i.md
  %i.uk = sub nsw i32 %.4.us.i.3.i.i.i, %i.md
  br i1 %.not.us.i.3.i.i.i, label %bb.av, label %.preheader.us.i.3.i.i.i

bb.av:                                            ; preds = %.preheader.us.i.3.i.i.i
  %.not129.us.i.3.i.i.i = icmp slt i32 %.4.us.i.3.i.i.i, %i.z
  %i.ul = xor i32 %.4.us.i.3.i.i.i, -1
  %i.um = add i32 %i.md, %i.ul
  %.5.us.i.3.i.i.i = select i1 %.not129.us.i.3.i.i.i, i32 %.4.us.i.3.i.i.i, i32 %i.um
  %i.un = mul i32 %.5.us.i.3.i.i.i, %i.mf
  %i.uo = add i32 %i.un, %i.ti
  %i.up = zext i32 %i.uo to i64
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %i.up
  %i.ur = load double, ptr %i.uq, align 8, !tbaa !166
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %bb.av
  %.3.us.i.4.i.i.i = phi i32 [ %i.sy, %bb.av ], [ %i.ut, %bb.aw ] ; 3 uses
  %i.us = icmp slt i32 %.3.us.i.4.i.i.i, 0
  %i.ut = add nsw i32 %.3.us.i.4.i.i.i, %i.md
  br i1 %i.us, label %bb.aw, label %.preheader.us.i.4.i.i.i

.preheader.us.i.4.i.i.i:                          ; preds = %bb.aw, %.preheader.us.i.4.i.i.i
  %.4.us.i.4.i.i.i = phi i32 [ %i.uu, %.preheader.us.i.4.i.i.i ], [ %.3.us.i.4.i.i.i, %bb.aw ] ; 5 uses
  %.not.us.i.4.i.i.i = icmp slt i32 %.4.us.i.4.i.i.i, %i.md
  %i.uu = sub nsw i32 %.4.us.i.4.i.i.i, %i.md
  br i1 %.not.us.i.4.i.i.i, label %bb.ax, label %.preheader.us.i.4.i.i.i

bb.ax:                                            ; preds = %.preheader.us.i.4.i.i.i
  %.not129.us.i.4.i.i.i = icmp slt i32 %.4.us.i.4.i.i.i, %i.z
  %i.uv = xor i32 %.4.us.i.4.i.i.i, -1
  %i.uw = add i32 %i.md, %i.uv
  %.5.us.i.4.i.i.i = select i1 %.not129.us.i.4.i.i.i, i32 %.4.us.i.4.i.i.i, i32 %i.uw
  %i.ux = mul i32 %.5.us.i.4.i.i.i, %i.mf
  %i.uy = add i32 %i.ux, %i.ti
  %i.uz = zext i32 %i.uy to i64
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %i.uz
  %i.vb = load double, ptr %i.va, align 8, !tbaa !166
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %bb.ax
  %.3.us.i.5.i.i.i = phi i32 [ %i.sz, %bb.ax ], [ %i.vd, %bb.ay ] ; 3 uses
  %i.vc = icmp slt i32 %.3.us.i.5.i.i.i, 0
  %i.vd = add nsw i32 %.3.us.i.5.i.i.i, %i.md
  br i1 %i.vc, label %bb.ay, label %.preheader.us.i.5.i.i.i

.preheader.us.i.5.i.i.i:                          ; preds = %bb.ay, %.preheader.us.i.5.i.i.i
  %.4.us.i.5.i.i.i = phi i32 [ %i.ve, %.preheader.us.i.5.i.i.i ], [ %.3.us.i.5.i.i.i, %bb.ay ] ; 5 uses
  %.not.us.i.5.i.i.i = icmp slt i32 %.4.us.i.5.i.i.i, %i.md
  %i.ve = sub nsw i32 %.4.us.i.5.i.i.i, %i.md
  br i1 %.not.us.i.5.i.i.i, label %bb.az, label %.preheader.us.i.5.i.i.i

bb.az:                                            ; preds = %.preheader.us.i.5.i.i.i
  %.not129.us.i.5.i.i.i = icmp slt i32 %.4.us.i.5.i.i.i, %i.z
  %i.vf = xor i32 %.4.us.i.5.i.i.i, -1
  %i.vg = add i32 %i.md, %i.vf
  %.5.us.i.5.i.i.i = select i1 %.not129.us.i.5.i.i.i, i32 %.4.us.i.5.i.i.i, i32 %i.vg
  %i.vh = mul i32 %.5.us.i.5.i.i.i, %i.mf
  %i.vi = add i32 %i.vh, %i.ti
  %i.vj = zext i32 %i.vi to i64
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %i.vj
  %i.vl = load double, ptr %i.vk, align 8, !tbaa !166
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %bb.az
  %.3.us.i.6.i.i.i = phi i32 [ %i.ta, %bb.az ], [ %i.vn, %bb.ba ] ; 3 uses
  %i.vm = icmp slt i32 %.3.us.i.6.i.i.i, 0
  %i.vn = add nsw i32 %.3.us.i.6.i.i.i, %i.md
  br i1 %i.vm, label %bb.ba, label %.preheader.us.i.6.i.i.i

.preheader.us.i.6.i.i.i:                          ; preds = %bb.ba, %.preheader.us.i.6.i.i.i
  %.4.us.i.6.i.i.i = phi i32 [ %i.vo, %.preheader.us.i.6.i.i.i ], [ %.3.us.i.6.i.i.i, %bb.ba ] ; 5 uses
  %.not.us.i.6.i.i.i = icmp slt i32 %.4.us.i.6.i.i.i, %i.md
  %i.vo = sub nsw i32 %.4.us.i.6.i.i.i, %i.md
  br i1 %.not.us.i.6.i.i.i, label %._crit_edge.us150.i.i.i.i, label %.preheader.us.i.6.i.i.i

._crit_edge.us150.i.i.i.i:                        ; preds = %.preheader.us.i.6.i.i.i
  %i.vp = fmul reassoc nsz arcp contract afn double %i.tp, %i.sq
  %i.vq = fmul reassoc nsz arcp contract afn double %i.tz, %i.sp
  %i.vr = fadd reassoc nsz arcp contract afn double %i.vq, %i.vp
  %i.vs = fmul reassoc nsz arcp contract afn double %i.uj, %i.so
  %i.vt = fadd reassoc nsz arcp contract afn double %i.vr, %i.vs
  %i.vu = fmul reassoc nsz arcp contract afn double %i.ur, %i.te
  %i.vv = fadd reassoc nsz arcp contract afn double %i.vt, %i.vu
  %i.vw = fmul reassoc nsz arcp contract afn double %i.vb, %i.td
  %i.vx = fadd reassoc nsz arcp contract afn double %i.vv, %i.vw
  %i.vy = fmul reassoc nsz arcp contract afn double %i.vl, %i.tc
  %i.vz = fadd reassoc nsz arcp contract afn double %i.vx, %i.vy
  %.not129.us.i.6.i.i.i = icmp slt i32 %.4.us.i.6.i.i.i, %i.z
  %i.wa = xor i32 %.4.us.i.6.i.i.i, -1
  %i.wb = add i32 %i.md, %i.wa
  %.5.us.i.6.i.i.i = select i1 %.not129.us.i.6.i.i.i, i32 %.4.us.i.6.i.i.i, i32 %i.wb
  %i.wc = mul i32 %.5.us.i.6.i.i.i, %i.mf
  %i.wd = add i32 %i.wc, %i.ti
  %i.we = zext i32 %i.wd to i64
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %i.we
  %i.wg = load double, ptr %i.wf, align 8, !tbaa !166
  %i.wh = fmul reassoc nsz arcp contract afn double %i.wg, %i.tb
  %i.wi = fadd reassoc nsz arcp contract afn double %i.vz, %i.wh
  %i.wj = add i32 %i.su, %i.ti
  %i.wk = zext i32 %i.wj to i64
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %i.wk
  store double %i.wi, ptr %i.wl, align 8, !tbaa !166
  %indvars.iv.next178.i.i.i.i = add nuw nsw i64 %indvars.iv177.i.i.i.i, 1 ; 2 uses
  %exitcond181.not.i.i.i.i = icmp eq i64 %indvars.iv.next178.i.i.i.i, %wide.trip.count180.i.i.i.i
  br i1 %exitcond181.not.i.i.i.i, label %._crit_edge149.i.i.i.i, label %.preheader134.us.i.i.i.i

._crit_edge149.i.i.i.i:                           ; preds = %._crit_edge.us150.i.i.i.i, %gaussian_kernel.exit.i.i.i
  %i.wm = add nuw i32 %.1121151.i.i.i.i, 1        ; 2 uses
  %exitcond42.not.i.i.i = icmp eq i32 %i.wm, %i.mj
  br i1 %exitcond42.not.i.i.i, label %free_ntuple_list.exit.i.i.i.i, label %.lr.ph.i157.i.i.i

free_ntuple_list.exit.i.i.i.i:                    ; preds = %._crit_edge149.i.i.i.i, %.preheader135.i.i.i.i
  %i.wn = load ptr, ptr %i.ma, align 8, !tbaa !291 ; 2 uses
  %i.wo = icmp eq ptr %i.wn, null
  br i1 %i.wo, label %bb.bb, label %gaussian_sampler.exit.i.i.i

bb.bb:                                            ; preds = %free_ntuple_list.exit.i.i.i.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.139) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

gaussian_sampler.exit.i.i.i:                      ; preds = %free_ntuple_list.exit.i.i.i.i
  tail call void @free(ptr noundef nonnull %i.wn) #34
  tail call void @free(ptr noundef nonnull %i.ma) #34
  %i.wp = load ptr, ptr %i.mb, align 8, !tbaa !291
  %i.wq = icmp eq ptr %i.wp, null
  br i1 %i.wq, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %gaussian_sampler.exit.i.i.i
  %i.wr = getelementptr inbounds nuw i8, ptr %i.mb, i64 8 ; 2 uses
  %i.ws = load i32, ptr %i.wr, align 8, !tbaa !289 ; 21 uses
  %i.wt = icmp eq i32 %i.ws, 0
  br i1 %i.wt, label %bb.bd, label %4

4:                                                ; preds = %bb.bc
  %5 = load i32, ptr %i.mi, align 4, !tbaa !290   ; 7 uses
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %4, %bb.bc, %gaussian_sampler.exit.i.i.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.133) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.be:                                            ; preds = %4
  %i.wu = tail call fastcc ptr @new_image_double(i32 noundef %i.ws, i32 noundef %5) ; 37 uses
  %7 = load i32, ptr %i.wr, align 8, !tbaa !289
  %8 = load i32, ptr %i.mi, align 4, !tbaa !290
  %i.wv = tail call fastcc ptr @new_image_double(i32 noundef %7, i32 noundef %8) ; 6 uses
  %i.ww = mul i32 %5, %i.ws
  %i.wx = zext i32 %i.ww to i64
  %i.wy = tail call noalias ptr @calloc(i64 noundef %i.wx, i64 noundef 16) #36 ; 4 uses
  %i.wz = tail call noalias dereferenceable_or_null(8192) ptr @calloc(i64 noundef 1024, i64 noundef 8) #36 ; 21 uses
  %i.xa = tail call noalias dereferenceable_or_null(8192) ptr @calloc(i64 noundef 1024, i64 noundef 8) #36 ; 10 uses
  %i.xb = icmp eq ptr %i.wy, null
  %i.xc = icmp eq ptr %i.wz, null
  %or.cond.i136.i.i.i = or i1 %i.xb, %i.xc
  %i.xd = icmp eq ptr %i.xa, null
  %or.cond3.i.i.i.i = or i1 %or.cond.i136.i.i.i, %i.xd
  br i1 %or.cond3.i.i.i.i, label %bb.bf, label %iter.check

iter.check:                                       ; preds = %bb.be
  %i.xe = load ptr, ptr %i.wu, align 8, !tbaa !291 ; 23 uses
  %i.xf = add i32 %5, -1                          ; 3 uses
  %i.xg = mul i32 %i.xf, %i.ws                    ; 12 uses
  %wide.trip.count.i137.i.i.i = zext i32 %i.ws to i64 ; 9 uses
  %min.iters.check179.a = icmp ult i32 %i.ws, 4
  br i1 %min.iters.check179.a, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.xh = add nsw i64 %wide.trip.count.i137.i.i.i, -1 ; 2 uses
  %i.xi = trunc i64 %i.xh to i32
  %i.xj = xor i32 %i.xg, -1
  %i.xk = icmp ult i32 %i.xj, %i.xi
  %i.xl = icmp ugt i64 %i.xh, 4294967295
  %i.xm = or i1 %i.xk, %i.xl
  br i1 %i.xm, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check180 = icmp ult i32 %i.ws, 16
  br i1 %min.iters.check180, label %vec.epilog.ph, label %vector.ph181

vector.ph181:                                     ; preds = %vector.main.loop.iter.check
  %i.xn = and i64 %wide.trip.count.i137.i.i.i, 12
  %n.vec182 = and i64 %wide.trip.count.i137.i.i.i, 4294967280 ; 4 uses
  br label %vector.body183

vector.body183:                                   ; preds = %vector.ph181, %vector.body183
  %index184 = phi i64 [ 0, %vector.ph181 ], [ %index.next185, %vector.body183 ] ; 2 uses
  %i.xo = trunc nuw i64 %index184 to i32
  %i.xp = add i32 %i.xg, %i.xo
  %i.xq = zext i32 %i.xp to i64
  %i.xr = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %i.xq ; 4 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 32
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xr, i64 64
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xr, i64 96
  store <4 x double> splat (double -1.024000e+03), ptr %i.xr, align 8, !tbaa !166
  store <4 x double> splat (double -1.024000e+03), ptr %i.xs, align 8, !tbaa !166
  store <4 x double> splat (double -1.024000e+03), ptr %i.xt, align 8, !tbaa !166
  store <4 x double> splat (double -1.024000e+03), ptr %i.xu, align 8, !tbaa !166
  %index.next185 = add nuw i64 %index184, 16      ; 2 uses
  %i.xv = icmp eq i64 %index.next185, %n.vec182
  br i1 %i.xv, label %middle.block186, label %vector.body183, !llvm.loop !537

middle.block186:                                  ; preds = %vector.body183
  %cmp.n187 = icmp eq i64 %n.vec182, %wide.trip.count.i137.i.i.i
  br i1 %cmp.n187, label %iter.check206, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block186
  %min.epilog.iters.check = icmp eq i64 %i.xn, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !269

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec182, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec188 = and i64 %wide.trip.count.i137.i.i.i, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index189 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next190, %vec.epilog.vector.body ] ; 2 uses
  %i.xw = trunc nuw i64 %index189 to i32
  %i.xx = add i32 %i.xg, %i.xw
  %i.xy = zext i32 %i.xx to i64
  %i.xz = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %i.xy
  store <4 x double> splat (double -1.024000e+03), ptr %i.xz, align 8, !tbaa !166
  %index.next190 = add nuw i64 %index189, 4       ; 2 uses
  %i.ya = icmp eq i64 %index.next190, %n.vec188
  br i1 %i.ya, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !538

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n191 = icmp eq i64 %n.vec188, %wide.trip.count.i137.i.i.i
  br i1 %cmp.n191, label %iter.check206, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i138.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %n.vec182, %vec.epilog.iter.check ], [ %n.vec188, %vec.epilog.middle.block ] ; 4 uses
  %i.yb = sub nsw i64 %wide.trip.count.i137.i.i.i, %indvars.iv.i138.i.i.i.ph
  %xtraiter238 = and i64 %i.yb, 7                 ; 2 uses
  %lcmp.mod239.not = icmp eq i64 %xtraiter238, 0
  br i1 %lcmp.mod239.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i138.i.i.i.prol = phi i64 [ %indvars.iv.next.i139.i.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i138.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.yc = trunc nuw i64 %indvars.iv.i138.i.i.i.prol to i32
  %i.yd = add i32 %i.xg, %i.yc
  %i.ye = zext i32 %i.yd to i64
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %i.ye
  store double -1.024000e+03, ptr %i.yf, align 8, !tbaa !166
  %indvars.iv.next.i139.i.i.i.prol = add nuw nsw i64 %indvars.iv.i138.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter238
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !539

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i138.i.i.i.unr = phi i64 [ %indvars.iv.i138.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i139.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.yg = sub nsw i64 %indvars.iv.i138.i.i.i.ph, %wide.trip.count.i137.i.i.i
  %i.yh = icmp ugt i64 %i.yg, -8
  br i1 %i.yh, label %iter.check206, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op = add i32 1, %i.xg
  %invariant.op279 = add i32 2, %i.xg
  %invariant.op281 = add i32 3, %i.xg
  %invariant.op283 = add i32 4, %i.xg
  %invariant.op285 = add i32 5, %i.xg
  %invariant.op287 = add i32 6, %i.xg
  %invariant.op289 = add i32 7, %i.xg
  br label %vec.epilog.scalar.ph

bb.bf:                                            ; preds = %bb.be
  tail call void @free(ptr noundef %i.wy) #34
  tail call void @free(ptr noundef %i.wz) #34
  tail call void @free(ptr noundef %i.xa) #34
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.120) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

iter.check206:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block186
  %wide.trip.count226.i.i.i.i = zext i32 %5 to i64 ; 8 uses
  %min.iters.check195 = icmp ugt i32 %5, 3
  %ident.check.not = icmp eq i32 %i.ws, 1
  %or.cond = and i1 %min.iters.check195, %ident.check.not
  br i1 %or.cond, label %vector.main.loop.iter.check196, label %vec.epilog.scalar.ph207.preheader

vector.main.loop.iter.check196:                   ; preds = %iter.check206
  %min.iters.check197 = icmp ult i32 %5, 16
  br i1 %min.iters.check197, label %vec.epilog.ph210, label %vector.ph198

vector.ph198:                                     ; preds = %vector.main.loop.iter.check196
  %i.yi = and i64 %wide.trip.count226.i.i.i.i, 12
  %n.vec199 = and i64 %wide.trip.count226.i.i.i.i, 4294967280 ; 4 uses
  br label %vector.body200

vector.body200:                                   ; preds = %vector.ph198, %vector.body200
  %index201 = phi i64 [ 0, %vector.ph198 ], [ %index.next202, %vector.body200 ] ; 2 uses
  %i.yj = and i64 %index201, 4294967280
  %i.yk = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %i.yj ; 4 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 32
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yk, i64 64
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yk, i64 96
  store <4 x double> splat (double -1.024000e+03), ptr %i.yk, align 8, !tbaa !166
  store <4 x double> splat (double -1.024000e+03), ptr %i.yl, align 8, !tbaa !166
  store <4 x double> splat (double -1.024000e+03), ptr %i.ym, align 8, !tbaa !166
  store <4 x double> splat (double -1.024000e+03), ptr %i.yn, align 8, !tbaa !166
  %index.next202 = add nuw i64 %index201, 16      ; 2 uses
  %i.yo = icmp eq i64 %index.next202, %n.vec199
  br i1 %i.yo, label %middle.block203, label %vector.body200, !llvm.loop !540

middle.block203:                                  ; preds = %vector.body200
  %cmp.n204 = icmp eq i64 %n.vec199, %wide.trip.count226.i.i.i.i
  br i1 %cmp.n204, label %.preheader194.i.i.i.i, label %vec.epilog.iter.check208

vec.epilog.iter.check208:                         ; preds = %middle.block203
  %min.epilog.iters.check209 = icmp eq i64 %i.yi, 0
  br i1 %min.epilog.iters.check209, label %vec.epilog.scalar.ph207.preheader, label %vec.epilog.ph210, !prof !269

vec.epilog.ph210:                                 ; preds = %vector.main.loop.iter.check196, %vec.epilog.iter.check208
  %vec.epilog.resume.val205 = phi i64 [ %n.vec199, %vec.epilog.iter.check208 ], [ 0, %vector.main.loop.iter.check196 ]
  %n.vec211 = and i64 %wide.trip.count226.i.i.i.i, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body212

vec.epilog.vector.body212:                        ; preds = %vec.epilog.vector.body212, %vec.epilog.ph210
  %index213 = phi i64 [ %vec.epilog.resume.val205, %vec.epilog.ph210 ], [ %index.next214, %vec.epilog.vector.body212 ] ; 2 uses
  %i.yp = and i64 %index213, 4294967292
  %i.yq = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %i.yp
  store <4 x double> splat (double -1.024000e+03), ptr %i.yq, align 8, !tbaa !166
  %index.next214 = add nuw i64 %index213, 4       ; 2 uses
  %i.yr = icmp eq i64 %index.next214, %n.vec211
  br i1 %i.yr, label %vec.epilog.middle.block215, label %vec.epilog.vector.body212, !llvm.loop !541

vec.epilog.middle.block215:                       ; preds = %vec.epilog.vector.body212
  %cmp.n216 = icmp eq i64 %n.vec211, %wide.trip.count226.i.i.i.i
  br i1 %cmp.n216, label %.preheader194.i.i.i.i, label %vec.epilog.scalar.ph207.preheader

vec.epilog.scalar.ph207.preheader:                ; preds = %iter.check206, %vec.epilog.iter.check208, %vec.epilog.middle.block215
  %indvars.iv223.i.i.i.i.ph = phi i64 [ 0, %iter.check206 ], [ %n.vec199, %vec.epilog.iter.check208 ], [ %n.vec211, %vec.epilog.middle.block215 ] ; 4 uses
  %i.ys = sub nsw i64 %wide.trip.count226.i.i.i.i, %indvars.iv223.i.i.i.i.ph
  %xtraiter240 = and i64 %i.ys, 7                 ; 2 uses
  %lcmp.mod241.not = icmp eq i64 %xtraiter240, 0
  br i1 %lcmp.mod241.not, label %vec.epilog.scalar.ph207.prol.loopexit, label %vec.epilog.scalar.ph207.prol

vec.epilog.scalar.ph207.prol:                     ; preds = %vec.epilog.scalar.ph207.preheader, %vec.epilog.scalar.ph207.prol
  %indvars.iv223.i.i.i.i.prol = phi i64 [ %indvars.iv.next224.i.i.i.i.prol, %vec.epilog.scalar.ph207.prol ], [ %indvars.iv223.i.i.i.i.ph, %vec.epilog.scalar.ph207.preheader ]
  %prol.iter242 = phi i64 [ %prol.iter242.next, %vec.epilog.scalar.ph207.prol ], [ 0, %vec.epilog.scalar.ph207.preheader ]
  %indvars.iv.next224.i.i.i.i.prol = add nuw nsw i64 %indvars.iv223.i.i.i.i.prol, 1 ; 3 uses
  %i.yt = trunc nuw i64 %indvars.iv.next224.i.i.i.i.prol to i32
  %i.yu = mul i32 %i.ws, %i.yt
  %i.yv = add i32 %i.yu, -1
  %i.yw = zext i32 %i.yv to i64
  %i.yx = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %i.yw
  store double -1.024000e+03, ptr %i.yx, align 8, !tbaa !166
  %prol.iter242.next = add i64 %prol.iter242, 1   ; 2 uses
  %prol.iter242.cmp.not = icmp eq i64 %prol.iter242.next, %xtraiter240
  br i1 %prol.iter242.cmp.not, label %vec.epilog.scalar.ph207.prol.loopexit, label %vec.epilog.scalar.ph207.prol, !llvm.loop !542

vec.epilog.scalar.ph207.prol.loopexit:            ; preds = %vec.epilog.scalar.ph207.prol, %vec.epilog.scalar.ph207.preheader
  %indvars.iv223.i.i.i.i.unr = phi i64 [ %indvars.iv223.i.i.i.i.ph, %vec.epilog.scalar.ph207.preheader ], [ %indvars.iv.next224.i.i.i.i.prol, %vec.epilog.scalar.ph207.prol ]
  %i.yy = sub nsw i64 %indvars.iv223.i.i.i.i.ph, %wide.trip.count226.i.i.i.i
  %i.yz = icmp ugt i64 %i.yy, -8
  br i1 %i.yz, label %.preheader194.i.i.i.i, label %vec.epilog.scalar.ph207

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %indvars.iv.i138.i.i.i = phi i64 [ %indvars.iv.i138.i.i.i.unr, %vec.epilog.scalar.ph.preheader.new ], [ %indvars.iv.next.i139.i.i.i.7, %vec.epilog.scalar.ph ] ; 9 uses
  %i.za = trunc nuw i64 %indvars.iv.i138.i.i.i to i32
  %i.zb = add i32 %i.xg, %i.za
  %i.zc = zext i32 %i.zb to i64
  %i.zd = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %i.zc
  store double -1.024000e+03, ptr %i.zd, align 8, !tbaa !166
  %i.ze = trunc i64 %indvars.iv.i138.i.i.i to i32
  %.reass = add i32 %i.ze, %invariant.op
  %i.zf = zext i32 %.reass to i64
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %i.zf
  store double -1.024000e+03, ptr %i.zg, align 8, !tbaa !166
  %i.zh = trunc i64 %indvars.iv.i138.i.i.i to i32
  %.reass280 = add i32 %i.zh, %invariant.op279
  %i.zi = zext i32 %.reass280 to i64
  %i.zj = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %i.zi
  store double -1.024000e+03, ptr %i.zj, align 8, !tbaa !166
  %i.zk = trunc i64 %indvars.iv.i138.i.i.i to i32
  %.reass282 = add i32 %i.zk, %invariant.op281
  %i.zl = zext i32 %.reass282 to i64
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %i.zl
  store double -1.024000e+03, ptr %i.zm, align 8, !tbaa !166
  %i.zn = trunc i64 %indvars.iv.i138.i.i.i to i32
  %.reass284 = add i32 %i.zn, %invariant.op283
  %i.zo = zext i32 %.reass284 to i64
  %i.zp = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %i.zo
  store double -1.024000e+03, ptr %i.zp, align 8, !tbaa !166
  %i.zq = trunc i64 %indvars.iv.i138.i.i.i to i32
  %.reass286 = add i32 %i.zq, %invariant.op285
  %i.zr = zext i32 %.reass286 to i64
  %i.zs = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %i.zr
  store double -1.024000e+03, ptr %i.zs, align 8, !tbaa !166
  %i.zt = trunc i64 %indvars.iv.i138.i.i.i to i32
  %.reass288 = add i32 %i.zt, %invariant.op287
  %i.zu = zext i32 %.reass288 to i64
  %i.zv = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %i.zu
  store double -1.024000e+03, ptr %i.zv, align 8, !tbaa !166
  %i.zw = trunc i64 %indvars.iv.i138.i.i.i to i32
  %.reass290 = add i32 %i.zw, %invariant.op289
  %i.zx = zext i32 %.reass290 to i64
  %i.zy = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %i.zx
  store double -1.024000e+03, ptr %i.zy, align 8, !tbaa !166
  %indvars.iv.next.i139.i.i.i.7 = add nuw nsw i64 %indvars.iv.i138.i.i.i, 8 ; 2 uses
  %exitcond.not.i140.i.i.i.7 = icmp eq i64 %indvars.iv.next.i139.i.i.i.7, %wide.trip.count.i137.i.i.i
  br i1 %exitcond.not.i140.i.i.i.7, label %iter.check206, label %vec.epilog.scalar.ph, !llvm.loop !543

.preheader194.i.i.i.i:                            ; preds = %vec.epilog.scalar.ph207.prol.loopexit, %vec.epilog.scalar.ph207, %vec.epilog.middle.block215, %middle.block203
  %i.zz = add i32 %i.ws, -1                       ; 3 uses
  %.not215.i.i.i.i = icmp eq i32 %i.zz, 0
  %.not216.i.i.i.i = icmp eq i32 %i.xf, 0
  %or.cond272.i.i.i.i = or i1 %.not215.i.i.i.i, %.not216.i.i.i.i
  br i1 %or.cond272.i.i.i.i, label %.preheader190.i.i.i.i.preheader, label %.preheader193.lr.ph.split.us.i.i.i.i

.preheader190.i.i.i.i.preheader:                  ; preds = %._crit_edge.i143.i.i.i, %.preheader194.i.i.i.i
  br label %.preheader190.i.i.i.i

.preheader193.lr.ph.split.us.i.i.i.i:             ; preds = %.preheader194.i.i.i.i
  %9 = load ptr, ptr %i.mb, align 8, !tbaa !291   ; 4 uses
  %i.aaa = load ptr, ptr %i.wv, align 8, !tbaa !291 ; 2 uses
  %wide.trip.count231.i.i.i.i = zext i32 %i.xf to i64 ; 2 uses
  br label %.preheader193.us.i.i.i.i

.preheader193.us.i.i.i.i:                         ; preds = %._crit_edge.us.i142.i.i.i, %.preheader193.lr.ph.split.us.i.i.i.i
  %.0205.us.i.i.i.i = phi double [ 0.000000e+00, %.preheader193.lr.ph.split.us.i.i.i.i ], [ %.2.us.i141.i.i.i, %._crit_edge.us.i142.i.i.i ]
  %.1172204.us.i.i.i.i = phi i32 [ 0, %.preheader193.lr.ph.split.us.i.i.i.i ], [ %i.abi, %._crit_edge.us.i142.i.i.i ] ; 2 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bi, %.preheader193.us.i.i.i.i
  %indvars.iv228.i.i.i.i = phi i64 [ 0, %.preheader193.us.i.i.i.i ], [ %indvars.iv.next229.i.i.i.i, %bb.bi ] ; 2 uses
  %.1203.us.i.i.i.i = phi double [ %.0205.us.i.i.i.i, %.preheader193.us.i.i.i.i ], [ %.2.us.i141.i.i.i, %bb.bi ] ; 3 uses
  %i.aab = trunc nuw i64 %indvars.iv228.i.i.i.i to i32
  %i.aac = mul i32 %i.ws, %i.aab
  %i.aad = add i32 %i.aac, %.1172204.us.i.i.i.i   ; 3 uses
  %i.aae = add i32 %i.aad, %i.ws                  ; 2 uses
  %i.aaf = add i32 %i.aae, 1
  %i.aag = zext i32 %i.aaf to i64
  %i.aah = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.aag
  %i.aai = load double, ptr %i.aah, align 8, !tbaa !166
  %i.aaj = zext i32 %i.aad to i64                 ; 3 uses
  %i.aak = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.aaj
  %i.aal = load double, ptr %i.aak, align 8, !tbaa !166
  %i.aam = fsub reassoc nsz arcp contract afn double %i.aai, %i.aal ; 2 uses
  %i.aan = add i32 %i.aad, 1
  %i.aao = zext i32 %i.aan to i64
  %i.aap = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.aao
  %i.aaq = load double, ptr %i.aap, align 8, !tbaa !166
  %i.aar = zext i32 %i.aae to i64
  %i.aas = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.aar
  %i.aat = load double, ptr %i.aas, align 8, !tbaa !166
  %i.aau = fsub reassoc nsz arcp contract afn double %i.aaq, %i.aat ; 2 uses
  %i.aav = fadd reassoc nsz arcp contract afn double %i.aau, %i.aam ; 3 uses
  %i.aaw = fsub reassoc nsz arcp contract afn double %i.aam, %i.aau ; 3 uses
  %i.aax = fmul reassoc nsz arcp contract afn double %i.aav, %i.aav
  %i.aay = fmul reassoc nsz arcp contract afn double %i.aaw, %i.aaw
  %i.aaz = fadd reassoc nsz arcp contract afn double %i.aax, %i.aay
  %i.aba = fmul reassoc nsz arcp contract afn double %i.aaz, 2.500000e-01
  %i.abb = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.aba) ; 4 uses
  %i.abc = getelementptr inbounds nuw [8 x i8], ptr %i.aaa, i64 %i.aaj
  store double %i.abb, ptr %i.abc, align 8, !tbaa !166
  %i.abd = fcmp reassoc nsz arcp contract afn ugt double %i.abb, f0x4014E7AE9144F0FC
  br i1 %i.abd, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.abe = fneg reassoc nsz arcp contract afn double %i.aaw
  %i.abf = tail call reassoc nsz arcp contract afn double @llvm.atan2.f64(double %i.aav, double %i.abe)
  %i.abg = fcmp reassoc nsz arcp contract afn ogt double %i.abb, %.1203.us.i.i.i.i
  %spec.select.us.i.i.i.i = select nsz i1 %i.abg, double %i.abb, double %.1203.us.i.i.i.i
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.sink.i200.i.i = phi double [ %i.abf, %bb.bh ], [ -1.024000e+03, %bb.bg ]
  %.2.us.i141.i.i.i = phi nsz double [ %spec.select.us.i.i.i.i, %bb.bh ], [ %.1203.us.i.i.i.i, %bb.bg ] ; 3 uses
  %i.abh = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %i.aaj
  store double %.sink.i200.i.i, ptr %i.abh, align 8, !tbaa !166
  %indvars.iv.next229.i.i.i.i = add nuw nsw i64 %indvars.iv228.i.i.i.i, 1 ; 2 uses
  %exitcond232.not.i.i.i.i = icmp eq i64 %indvars.iv.next229.i.i.i.i, %wide.trip.count231.i.i.i.i
  br i1 %exitcond232.not.i.i.i.i, label %._crit_edge.us.i142.i.i.i, label %bb.bg

._crit_edge.us.i142.i.i.i:                        ; preds = %bb.bi
  %i.abi = add nuw i32 %.1172204.us.i.i.i.i, 1    ; 2 uses
  %exitcond233.not.i.i.i.i = icmp eq i32 %i.abi, %i.zz
  br i1 %exitcond233.not.i.i.i.i, label %.preheader191.i.i.i.i.preheader, label %.preheader193.us.i.i.i.i

.preheader191.i.i.i.i.preheader:                  ; preds = %._crit_edge.us.i142.i.i.i
  %i.abj = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %.2.us.i141.i.i.i
  br label %.preheader191.i.i.i.i

vec.epilog.scalar.ph207:                          ; preds = %vec.epilog.scalar.ph207.prol.loopexit, %vec.epilog.scalar.ph207
  %indvars.iv223.i.i.i.i = phi i64 [ %indvars.iv.next224.i.i.i.i.7, %vec.epilog.scalar.ph207 ], [ %indvars.iv223.i.i.i.i.unr, %vec.epilog.scalar.ph207.prol.loopexit ] ; 8 uses
  %i.abk = trunc i64 %indvars.iv223.i.i.i.i to i32
  %i.abl = add i32 %i.abk, 1
  %i.abm = mul i32 %i.ws, %i.abl
  %i.abn = add i32 %i.abm, -1
  %i.abo = zext i32 %i.abn to i64
  %i.abp = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %i.abo
  store double -1.024000e+03, ptr %i.abp, align 8, !tbaa !166
  %i.abq = trunc i64 %indvars.iv223.i.i.i.i to i32
  %i.abr = add i32 %i.abq, 2
  %i.abs = mul i32 %i.ws, %i.abr
  %i.abt = add i32 %i.abs, -1
  %i.abu = zext i32 %i.abt to i64
  %i.abv = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %i.abu
  store double -1.024000e+03, ptr %i.abv, align 8, !tbaa !166
  %i.abw = trunc i64 %indvars.iv223.i.i.i.i to i32
  %i.abx = add i32 %i.abw, 3
  %i.aby = mul i32 %i.ws, %i.abx
  %i.abz = add i32 %i.aby, -1
  %i.aca = zext i32 %i.abz to i64
  %i.acb = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %i.aca
  store double -1.024000e+03, ptr %i.acb, align 8, !tbaa !166
  %i.acc = trunc i64 %indvars.iv223.i.i.i.i to i32
  %i.acd = add i32 %i.acc, 4
  %i.ace = mul i32 %i.ws, %i.acd
  %i.acf = add i32 %i.ace, -1
  %i.acg = zext i32 %i.acf to i64
  %i.ach = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %i.acg
  store double -1.024000e+03, ptr %i.ach, align 8, !tbaa !166
  %i.aci = trunc i64 %indvars.iv223.i.i.i.i to i32
  %i.acj = add i32 %i.aci, 5
  %i.ack = mul i32 %i.ws, %i.acj
  %i.acl = add i32 %i.ack, -1
  %i.acm = zext i32 %i.acl to i64
  %i.acn = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %i.acm
  store double -1.024000e+03, ptr %i.acn, align 8, !tbaa !166
  %i.aco = trunc i64 %indvars.iv223.i.i.i.i to i32
  %i.acp = add i32 %i.aco, 6
  %i.acq = mul i32 %i.ws, %i.acp
  %i.acr = add i32 %i.acq, -1
  %i.acs = zext i32 %i.acr to i64
  %i.act = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %i.acs
  store double -1.024000e+03, ptr %i.act, align 8, !tbaa !166
  %i.acu = trunc i64 %indvars.iv223.i.i.i.i to i32
  %i.acv = add i32 %i.acu, 7
  %i.acw = mul i32 %i.ws, %i.acv
  %i.acx = add i32 %i.acw, -1
  %i.acy = zext i32 %i.acx to i64
  %i.acz = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %i.acy
  store double -1.024000e+03, ptr %i.acz, align 8, !tbaa !166
  %indvars.iv.next224.i.i.i.i.7 = add nuw nsw i64 %indvars.iv223.i.i.i.i, 8 ; 3 uses
  %i.ada = trunc nuw i64 %indvars.iv.next224.i.i.i.i.7 to i32
  %i.adb = mul i32 %i.ws, %i.ada
  %i.adc = add i32 %i.adb, -1
  %i.add = zext i32 %i.adc to i64
  %i.ade = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %i.add
  store double -1.024000e+03, ptr %i.ade, align 8, !tbaa !166
  %exitcond227.not.i.i.i.i.7 = icmp eq i64 %indvars.iv.next224.i.i.i.i.7, %wide.trip.count226.i.i.i.i
  br i1 %exitcond227.not.i.i.i.i.7, label %.preheader194.i.i.i.i, label %vec.epilog.scalar.ph207, !llvm.loop !544

.preheader191.i.i.i.i:                            ; preds = %.preheader191.i.i.i.i.preheader, %._crit_edge.i143.i.i.i
  %.0162213.i.i.i.i = phi i64 [ %indvars.iv.next235.i.i.i.i, %._crit_edge.i143.i.i.i ], [ 0, %.preheader191.i.i.i.i.preheader ]
  %.2173212.i.i.i.i = phi i32 [ %i.adx, %._crit_edge.i143.i.i.i ], [ 0, %.preheader191.i.i.i.i.preheader ] ; 3 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bm, %.preheader191.i.i.i.i
  %indvars.iv236.i.i.i.i = phi i64 [ 0, %.preheader191.i.i.i.i ], [ %indvars.iv.next237.i.i.i.i, %bb.bm ] ; 2 uses
  %indvars.iv234.i.i.i.i = phi i64 [ %.0162213.i.i.i.i, %.preheader191.i.i.i.i ], [ %indvars.iv.next235.i.i.i.i, %bb.bm ] ; 2 uses
  %i.adf = trunc nuw i64 %indvars.iv236.i.i.i.i to i32 ; 2 uses
  %i.adg = mul i32 %i.ws, %i.adf
  %i.adh = add i32 %i.adg, %.2173212.i.i.i.i
  %i.adi = zext i32 %i.adh to i64
  %i.adj = getelementptr inbounds nuw [8 x i8], ptr %i.aaa, i64 %i.adi
  %i.adk = load double, ptr %i.adj, align 8, !tbaa !166
  %i.adl = fmul reassoc nsz arcp contract afn double %i.adk, 1.024000e+03
  %i.adm = fmul reassoc nsz arcp contract afn double %i.adl, %i.abj
  %i.adn = fptoui double %i.adm to i32
  %spec.select185.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.adn, i32 1023)
  %i.ado = zext nneg i32 %spec.select185.i.i.i.i to i64 ; 2 uses
  %i.adp = getelementptr inbounds nuw [8 x i8], ptr %i.xa, i64 %i.ado ; 2 uses
  %i.adq = load ptr, ptr %i.adp, align 8, !tbaa !554 ; 2 uses
  %i.adr = icmp eq ptr %i.adq, null
  %i.ads = getelementptr inbounds [16 x i8], ptr %i.wy, i64 %indvars.iv234.i.i.i.i ; 6 uses
  br i1 %i.adr, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.adt = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %i.ado
  store ptr %i.ads, ptr %i.adt, align 8, !tbaa !554
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adq, i64 8
  store ptr %i.ads, ptr %i.adu, align 8, !tbaa !556
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  store ptr %i.ads, ptr %i.adp, align 8, !tbaa !554
  %indvars.iv.next235.i.i.i.i = add nsw i64 %indvars.iv234.i.i.i.i, 1 ; 2 uses
  store i32 %.2173212.i.i.i.i, ptr %i.ads, align 8, !tbaa !557
  %i.adv = getelementptr inbounds nuw i8, ptr %i.ads, i64 4
  store i32 %i.adf, ptr %i.adv, align 4, !tbaa !558
  %i.adw = getelementptr inbounds nuw i8, ptr %i.ads, i64 8
  store ptr null, ptr %i.adw, align 8, !tbaa !556
  %indvars.iv.next237.i.i.i.i = add nuw nsw i64 %indvars.iv236.i.i.i.i, 1 ; 2 uses
  %exitcond242.not.i.i.i.i = icmp eq i64 %indvars.iv.next237.i.i.i.i, %wide.trip.count231.i.i.i.i
  br i1 %exitcond242.not.i.i.i.i, label %._crit_edge.i143.i.i.i, label %bb.bj

._crit_edge.i143.i.i.i:                           ; preds = %bb.bm
  %i.adx = add nuw i32 %.2173212.i.i.i.i, 1       ; 2 uses
  %exitcond243.not.i.i.i.i = icmp eq i32 %i.adx, %i.zz
  br i1 %exitcond243.not.i.i.i.i, label %.preheader190.i.i.i.i.preheader, label %.preheader191.i.i.i.i

.critedge.thread.i.i.i.i:                         ; preds = %bb.bn
  %i.ady = load ptr, ptr %i.wz, align 8, !tbaa !554
  br label %ll_angle.exit.i.i.i

.preheader190.i.i.i.i:                            ; preds = %bb.bn, %.preheader190.i.i.i.i.preheader
  %indvars.iv.i = phi i64 [ 1023, %.preheader190.i.i.i.i.preheader ], [ %indvars.iv.next.i.10, %bb.bn ] ; 13 uses
  %i.adz = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %indvars.iv.i
  %i.aea = load ptr, ptr %i.adz, align 8, !tbaa !554 ; 2 uses
  %i.aeb = icmp eq ptr %i.aea, null
  br i1 %i.aeb, label %.preheader190.i.i.i.i.1, label %.preheader.preheader.i.i.i.i

.preheader190.i.i.i.i.1:                          ; preds = %.preheader190.i.i.i.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.aec = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %indvars.iv.next.i
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !554 ; 2 uses
  %i.aee = icmp eq ptr %i.aed, null
  br i1 %i.aee, label %.preheader190.i.i.i.i.2, label %.preheader.preheader.i.i.i.i

.preheader190.i.i.i.i.2:                          ; preds = %.preheader190.i.i.i.i.1
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.aef = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %indvars.iv.next.i.1
  %i.aeg = load ptr, ptr %i.aef, align 8, !tbaa !554 ; 2 uses
  %i.aeh = icmp eq ptr %i.aeg, null
  br i1 %i.aeh, label %.preheader190.i.i.i.i.3, label %.preheader.preheader.i.i.i.i

.preheader190.i.i.i.i.3:                          ; preds = %.preheader190.i.i.i.i.2
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, -3 ; 2 uses
  %i.aei = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %indvars.iv.next.i.2
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !554 ; 2 uses
  %i.aek = icmp eq ptr %i.aej, null
  br i1 %i.aek, label %.preheader190.i.i.i.i.4, label %.preheader.preheader.i.i.i.i

.preheader190.i.i.i.i.4:                          ; preds = %.preheader190.i.i.i.i.3
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4 ; 2 uses
  %i.ael = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %indvars.iv.next.i.3
  %i.aem = load ptr, ptr %i.ael, align 8, !tbaa !554 ; 2 uses
  %i.aen = icmp eq ptr %i.aem, null
  br i1 %i.aen, label %.preheader190.i.i.i.i.5, label %.preheader.preheader.i.i.i.i

.preheader190.i.i.i.i.5:                          ; preds = %.preheader190.i.i.i.i.4
  %indvars.iv.next.i.4 = add nsw i64 %indvars.iv.i, -5 ; 2 uses
  %i.aeo = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %indvars.iv.next.i.4
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !554 ; 2 uses
  %i.aeq = icmp eq ptr %i.aep, null
  br i1 %i.aeq, label %.preheader190.i.i.i.i.6, label %.preheader.preheader.i.i.i.i

.preheader190.i.i.i.i.6:                          ; preds = %.preheader190.i.i.i.i.5
  %indvars.iv.next.i.5 = add nsw i64 %indvars.iv.i, -6 ; 2 uses
  %i.aer = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %indvars.iv.next.i.5
  %i.aes = load ptr, ptr %i.aer, align 8, !tbaa !554 ; 2 uses
  %i.aet = icmp eq ptr %i.aes, null
  br i1 %i.aet, label %.preheader190.i.i.i.i.7, label %.preheader.preheader.i.i.i.i

.preheader190.i.i.i.i.7:                          ; preds = %.preheader190.i.i.i.i.6
  %indvars.iv.next.i.6 = add nsw i64 %indvars.iv.i, -7 ; 2 uses
  %i.aeu = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %indvars.iv.next.i.6
  %i.aev = load ptr, ptr %i.aeu, align 8, !tbaa !554 ; 2 uses
  %i.aew = icmp eq ptr %i.aev, null
  br i1 %i.aew, label %.preheader190.i.i.i.i.8, label %.preheader.preheader.i.i.i.i

.preheader190.i.i.i.i.8:                          ; preds = %.preheader190.i.i.i.i.7
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, -8 ; 2 uses
  %i.aex = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %indvars.iv.next.i.7
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !554 ; 2 uses
  %i.aez = icmp eq ptr %i.aey, null
  br i1 %i.aez, label %.preheader190.i.i.i.i.9, label %.preheader.preheader.i.i.i.i

.preheader190.i.i.i.i.9:                          ; preds = %.preheader190.i.i.i.i.8
  %indvars.iv.next.i.8 = add nsw i64 %indvars.iv.i, -9 ; 2 uses
  %i.afa = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %indvars.iv.next.i.8
  %i.afb = load ptr, ptr %i.afa, align 8, !tbaa !554 ; 2 uses
  %i.afc = icmp eq ptr %i.afb, null
  br i1 %i.afc, label %.preheader190.i.i.i.i.10, label %.preheader.preheader.i.i.i.i

.preheader190.i.i.i.i.10:                         ; preds = %.preheader190.i.i.i.i.9
  %indvars.iv.next.i.9 = add nsw i64 %indvars.iv.i, -10 ; 2 uses
  %i.afd = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %indvars.iv.next.i.9
  %i.afe = load ptr, ptr %i.afd, align 8, !tbaa !554 ; 2 uses
  %i.aff = icmp eq ptr %i.afe, null
  br i1 %i.aff, label %bb.bn, label %.preheader.preheader.i.i.i.i

bb.bn:                                            ; preds = %.preheader190.i.i.i.i.10
  %indvars.iv.next.i.10 = add nsw i64 %indvars.iv.i, -11 ; 2 uses
  %.not188.i.i.i.i.10 = icmp eq i64 %indvars.iv.next.i.10, 0
  br i1 %.not188.i.i.i.i.10, label %.critedge.thread.i.i.i.i, label %.preheader190.i.i.i.i

.preheader.preheader.i.i.i.i:                     ; preds = %.preheader190.i.i.i.i.10, %.preheader190.i.i.i.i.9, %.preheader190.i.i.i.i.8, %.preheader190.i.i.i.i.7, %.preheader190.i.i.i.i.6, %.preheader190.i.i.i.i.5, %.preheader190.i.i.i.i.4, %.preheader190.i.i.i.i.3, %.preheader190.i.i.i.i.2, %.preheader190.i.i.i.i.1, %.preheader190.i.i.i.i
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i, %.preheader190.i.i.i.i ], [ %indvars.iv.next.i, %.preheader190.i.i.i.i.1 ], [ %indvars.iv.next.i.1, %.preheader190.i.i.i.i.2 ], [ %indvars.iv.next.i.2, %.preheader190.i.i.i.i.3 ], [ %indvars.iv.next.i.3, %.preheader190.i.i.i.i.4 ], [ %indvars.iv.next.i.4, %.preheader190.i.i.i.i.5 ], [ %indvars.iv.next.i.5, %.preheader190.i.i.i.i.6 ], [ %indvars.iv.next.i.6, %.preheader190.i.i.i.i.7 ], [ %indvars.iv.next.i.7, %.preheader190.i.i.i.i.8 ], [ %indvars.iv.next.i.8, %.preheader190.i.i.i.i.9 ], [ %indvars.iv.next.i.9, %.preheader190.i.i.i.i.10 ] ; 5 uses
  %.lcssa231 = phi ptr [ %i.aea, %.preheader190.i.i.i.i ], [ %i.aed, %.preheader190.i.i.i.i.1 ], [ %i.aeg, %.preheader190.i.i.i.i.2 ], [ %i.aej, %.preheader190.i.i.i.i.3 ], [ %i.aem, %.preheader190.i.i.i.i.4 ], [ %i.aep, %.preheader190.i.i.i.i.5 ], [ %i.aes, %.preheader190.i.i.i.i.6 ], [ %i.aev, %.preheader190.i.i.i.i.7 ], [ %i.aey, %.preheader190.i.i.i.i.8 ], [ %i.afb, %.preheader190.i.i.i.i.9 ], [ %i.afe, %.preheader190.i.i.i.i.10 ] ; 2 uses
  %i.afg = getelementptr inbounds nuw [8 x i8], ptr %i.xa, i64 %indvars.iv.i.lcssa
  %i.afh = load ptr, ptr %i.afg, align 8, !tbaa !554 ; 2 uses
  %i.afi = add nsw i64 %indvars.iv.i.lcssa, -1
  %xtraiter243 = and i64 %indvars.iv.i.lcssa, 3   ; 2 uses
  %lcmp.mod244.not = icmp eq i64 %xtraiter243, 0
  br i1 %lcmp.mod244.not, label %.preheader.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.prol

.preheader.i.i.i.i.prol:                          ; preds = %.preheader.preheader.i.i.i.i, %bb.bp
  %indvars.iv246.i.i.i.i.prol = phi i64 [ %i.afj, %bb.bp ], [ %indvars.iv.i.lcssa, %.preheader.preheader.i.i.i.i ]
  %.0160.i.i.i.i.prol = phi ptr [ %.1161.i.i.i.i.prol, %bb.bp ], [ %i.afh, %.preheader.preheader.i.i.i.i ] ; 2 uses
  %prol.iter245 = phi i64 [ %prol.iter245.next, %bb.bp ], [ 0, %.preheader.preheader.i.i.i.i ]
  %i.afj = add nsw i64 %indvars.iv246.i.i.i.i.prol, -1 ; 4 uses
  %i.afk = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %i.afj
  %i.afl = load ptr, ptr %i.afk, align 8, !tbaa !554 ; 2 uses
  %.not.i144.i.i.i.prol = icmp eq ptr %i.afl, null
  br i1 %.not.i144.i.i.i.prol, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.preheader.i.i.i.i.prol
  %i.afm = getelementptr inbounds nuw i8, ptr %.0160.i.i.i.i.prol, i64 8
  store ptr %i.afl, ptr %i.afm, align 8, !tbaa !556
  %i.afn = getelementptr inbounds nuw [8 x i8], ptr %i.xa, i64 %i.afj
  %i.afo = load ptr, ptr %i.afn, align 8, !tbaa !554
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.preheader.i.i.i.i.prol
  %.1161.i.i.i.i.prol = phi ptr [ %i.afo, %bb.bo ], [ %.0160.i.i.i.i.prol, %.preheader.i.i.i.i.prol ] ; 2 uses
  %prol.iter245.next = add i64 %prol.iter245, 1   ; 2 uses
  %prol.iter245.cmp.not = icmp eq i64 %prol.iter245.next, %xtraiter243
  br i1 %prol.iter245.cmp.not, label %.preheader.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.prol, !llvm.loop !545

.preheader.i.i.i.i.prol.loopexit:                 ; preds = %bb.bp, %.preheader.preheader.i.i.i.i
  %indvars.iv246.i.i.i.i.unr = phi i64 [ %indvars.iv.i.lcssa, %.preheader.preheader.i.i.i.i ], [ %i.afj, %bb.bp ]
  %.0160.i.i.i.i.unr = phi ptr [ %i.afh, %.preheader.preheader.i.i.i.i ], [ %.1161.i.i.i.i.prol, %bb.bp ]
  %i.afp = icmp ult i64 %i.afi, 3
  br i1 %i.afp, label %ll_angle.exit.i.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.prol.loopexit, %bb.bu
  %indvars.iv246.i.i.i.i = phi i64 [ %i.agi, %bb.bu ], [ %indvars.iv246.i.i.i.i.unr, %.preheader.i.i.i.i.prol.loopexit ] ; 4 uses
  %.0160.i.i.i.i = phi ptr [ %.1161.i.i.i.i.3, %bb.bu ], [ %.0160.i.i.i.i.unr, %.preheader.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.afq = add nsw i64 %indvars.iv246.i.i.i.i, -1 ; 2 uses
  %i.afr = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %i.afq
  %i.afs = load ptr, ptr %i.afr, align 8, !tbaa !554 ; 2 uses
  %.not.i144.i.i.i = icmp eq ptr %i.afs, null
  br i1 %.not.i144.i.i.i, label %.preheader.i.i.i.i.1, label %bb.bq

bb.bq:                                            ; preds = %.preheader.i.i.i.i
  %i.aft = getelementptr inbounds nuw i8, ptr %.0160.i.i.i.i, i64 8
  store ptr %i.afs, ptr %i.aft, align 8, !tbaa !556
  %i.afu = getelementptr inbounds nuw [8 x i8], ptr %i.xa, i64 %i.afq
  %i.afv = load ptr, ptr %i.afu, align 8, !tbaa !554
  br label %.preheader.i.i.i.i.1

.preheader.i.i.i.i.1:                             ; preds = %bb.bq, %.preheader.i.i.i.i
  %.1161.i.i.i.i = phi ptr [ %i.afv, %bb.bq ], [ %.0160.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.afw = add nsw i64 %indvars.iv246.i.i.i.i, -2 ; 2 uses
  %i.afx = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %i.afw
  %i.afy = load ptr, ptr %i.afx, align 8, !tbaa !554 ; 2 uses
  %.not.i144.i.i.i.1 = icmp eq ptr %i.afy, null
  br i1 %.not.i144.i.i.i.1, label %.preheader.i.i.i.i.2, label %bb.br

bb.br:                                            ; preds = %.preheader.i.i.i.i.1
  %i.afz = getelementptr inbounds nuw i8, ptr %.1161.i.i.i.i, i64 8
  store ptr %i.afy, ptr %i.afz, align 8, !tbaa !556
  %i.aga = getelementptr inbounds nuw [8 x i8], ptr %i.xa, i64 %i.afw
  %i.agb = load ptr, ptr %i.aga, align 8, !tbaa !554
  br label %.preheader.i.i.i.i.2

.preheader.i.i.i.i.2:                             ; preds = %bb.br, %.preheader.i.i.i.i.1
  %.1161.i.i.i.i.1 = phi ptr [ %i.agb, %bb.br ], [ %.1161.i.i.i.i, %.preheader.i.i.i.i.1 ] ; 2 uses
  %i.agc = add nsw i64 %indvars.iv246.i.i.i.i, -3 ; 2 uses
  %i.agd = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %i.agc
  %i.age = load ptr, ptr %i.agd, align 8, !tbaa !554 ; 2 uses
  %.not.i144.i.i.i.2 = icmp eq ptr %i.age, null
  br i1 %.not.i144.i.i.i.2, label %.preheader.i.i.i.i.3, label %bb.bs

bb.bs:                                            ; preds = %.preheader.i.i.i.i.2
  %i.agf = getelementptr inbounds nuw i8, ptr %.1161.i.i.i.i.1, i64 8
  store ptr %i.age, ptr %i.agf, align 8, !tbaa !556
  %i.agg = getelementptr inbounds nuw [8 x i8], ptr %i.xa, i64 %i.agc
  %i.agh = load ptr, ptr %i.agg, align 8, !tbaa !554
  br label %.preheader.i.i.i.i.3

.preheader.i.i.i.i.3:                             ; preds = %bb.bs, %.preheader.i.i.i.i.2
  %.1161.i.i.i.i.2 = phi ptr [ %i.agh, %bb.bs ], [ %.1161.i.i.i.i.1, %.preheader.i.i.i.i.2 ] ; 2 uses
  %i.agi = add nsw i64 %indvars.iv246.i.i.i.i, -4 ; 4 uses
  %i.agj = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %i.agi
  %i.agk = load ptr, ptr %i.agj, align 8, !tbaa !554 ; 2 uses
  %.not.i144.i.i.i.3 = icmp eq ptr %i.agk, null
  br i1 %.not.i144.i.i.i.3, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.preheader.i.i.i.i.3
  %i.agl = getelementptr inbounds nuw i8, ptr %.1161.i.i.i.i.2, i64 8
  store ptr %i.agk, ptr %i.agl, align 8, !tbaa !556
  %i.agm = getelementptr inbounds nuw [8 x i8], ptr %i.xa, i64 %i.agi
  %i.agn = load ptr, ptr %i.agm, align 8, !tbaa !554
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.preheader.i.i.i.i.3
  %.1161.i.i.i.i.3 = phi ptr [ %i.agn, %bb.bt ], [ %.1161.i.i.i.i.2, %.preheader.i.i.i.i.3 ]
  %.old4.not.wide.i.i.i.i.3 = icmp eq i64 %i.agi, 0
  br i1 %.old4.not.wide.i.i.i.i.3, label %ll_angle.exit.i.i.i, label %.preheader.i.i.i.i

ll_angle.exit.i.i.i:                              ; preds = %.preheader.i.i.i.i.prol.loopexit, %bb.bu, %.critedge.thread.i.i.i.i
  %10 = phi ptr [ %i.ady, %.critedge.thread.i.i.i.i ], [ %.lcssa231, %bb.bu ], [ %.lcssa231, %.preheader.i.i.i.i.prol.loopexit ] ; 2 uses
  tail call void @free(ptr noundef nonnull %i.wz) #34
  tail call void @free(ptr noundef %i.xa) #34
  %11 = load ptr, ptr %i.mb, align 8, !tbaa !291  ; 2 uses
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %free_image_double.exit.i.i.i

13:                                               ; preds = %ll_angle.exit.i.i.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.139) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

free_image_double.exit.i.i.i:                     ; preds = %ll_angle.exit.i.i.i
  tail call void @free(ptr noundef nonnull %11) #34
  tail call void @free(ptr noundef nonnull %i.mb) #34
  %i.ago = getelementptr inbounds nuw i8, ptr %i.wu, i64 8 ; 4 uses
  %i.agp = load i32, ptr %i.ago, align 8, !tbaa !289 ; 7 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %i.wu, i64 12
  %i.agr = load i32, ptr %i.agq, align 4, !tbaa !290 ; 4 uses
  %i.ags = uitofp reassoc nsz arcp contract afn i32 %i.agp to double
  %i.agt = tail call reassoc nnan nsz arcp contract afn double @llvm.log10.f64(double %i.ags)
  %i.agu = uitofp reassoc nsz arcp contract afn i32 %i.agr to double
  %i.agv = tail call reassoc nnan nsz arcp contract afn double @llvm.log10.f64(double %i.agu)
  %i.agw = fadd reassoc nnan nsz arcp contract afn double %i.agv, %i.agt
  %i.agx = fmul reassoc nnan nsz arcp contract afn double %i.agw, 2.500000e+00
  %i.agy = fadd reassoc nsz arcp contract afn double %i.agx, f0x3FF0A98B6050C56E ; 27 uses
  %i.agz = fmul reassoc nnan nsz arcp contract afn double %i.agy, f0x3FF1B78A065117A1
  %i.aha = fptosi double %i.agz to i32
  %i.ahb = icmp eq i32 %i.agp, 0
  %i.ahc = icmp eq i32 %i.agr, 0
  %or.cond.i.i.i.i.i = or i1 %i.ahb, %i.ahc
  br i1 %or.cond.i.i.i.i.i, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %free_image_double.exit.i.i.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.142) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.bw:                                            ; preds = %free_image_double.exit.i.i.i
  %i.ahd = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 7 uses
  %i.ahe = icmp eq ptr %i.ahd, null
  br i1 %i.ahe, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.120) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.by:                                            ; preds = %bb.bw
  %i.ahf = mul i32 %i.agr, %i.agp
  %i.ahg = zext i32 %i.ahf to i64                 ; 2 uses
  %i.ahh = tail call noalias ptr @calloc(i64 noundef %i.ahg, i64 noundef 1) #36 ; 6 uses
  store ptr %i.ahh, ptr %i.ahd, align 8, !tbaa !293
  %i.ahi = icmp eq ptr %i.ahh, null
  br i1 %i.ahi, label %bb.bz, label %new_image_char_ini.exit.i.i.i

bb.bz:                                            ; preds = %bb.by
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.120) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

new_image_char_ini.exit.i.i.i:                    ; preds = %bb.by
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahd, i64 8
  store i32 %i.agp, ptr %i.ahj, align 8, !tbaa !294
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahd, i64 12
  store i32 %i.agr, ptr %i.ahk, align 4, !tbaa !295
  %i.ahl = tail call noalias ptr @calloc(i64 noundef %i.ahg, i64 noundef 8) #36 ; 13 uses
  %i.ahm = icmp eq ptr %i.ahl, null
  br i1 %i.ahm, label %bb.ca, label %.preheader.i201.i.i

.preheader.i201.i.i:                              ; preds = %new_image_char_ini.exit.i.i.i
  %.not28.i.i.i = icmp eq ptr %10, null
  br i1 %.not28.i.i.i, label %._crit_edge.i204.i.i, label %.lr.ph.i202.i.i

.lr.ph.i202.i.i:                                  ; preds = %.preheader.i201.i.i
  %i.ahn = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 35 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahl, i64 4
  %i.ahs = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 17 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 18 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 12 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 18 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 10 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 10 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 31 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 13 uses
  br label %bb.cb

bb.ca:                                            ; preds = %new_image_char_ini.exit.i.i.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.115) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.cb:                                            ; preds = %bb.fo, %.lr.ph.i202.i.i
  %.0829.i.i.i = phi ptr [ %10, %.lr.ph.i202.i.i ], [ %i.axv, %bb.fo ] ; 3 uses
  %i.aid = load i32, ptr %.0829.i.i.i, align 8, !tbaa !557 ; 3 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %.0829.i.i.i, i64 4
  %i.aif = load i32, ptr %i.aie, align 4, !tbaa !558 ; 3 uses
  %i.aig = mul i32 %i.aif, %i.agp
  %i.aih = add i32 %i.aig, %i.aid
  %i.aii = zext i32 %i.aih to i64
  %i.aij = getelementptr inbounds nuw i8, ptr %i.ahh, i64 %i.aii
  %i.aik = load i8, ptr %i.aij, align 1, !tbaa !177
  %i.ail = icmp eq i8 %i.aik, 0
  br i1 %i.ail, label %bb.cc, label %bb.fo

bb.cc:                                            ; preds = %bb.cb
  %14 = load ptr, ptr %i.wu, align 8, !tbaa !291
  %15 = load i32, ptr %i.ago, align 8, !tbaa !289
  %16 = mul i32 %15, %i.aif
  %17 = add i32 %16, %i.aid
  %18 = zext i32 %17 to i64
  %i.aim = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %18
  %i.ain = load double, ptr %i.aim, align 8, !tbaa !166
  %i.aio = fcmp reassoc nsz arcp contract afn une double %i.ain, -1.024000e+03
  br i1 %i.aio, label %bb.cd, label %bb.fo

bb.cd:                                            ; preds = %bb.cc
  call fastcc void @region_grow(i32 noundef %i.aid, i32 noundef %i.aif, ptr noundef nonnull %i.wu, ptr noundef nonnull %i.ahl, ptr noundef %i.b, ptr noundef %i.c, ptr noundef nonnull %i.ahd, double noundef f0x3FD921FB54442D18)
  %i.aip = load i32, ptr %i.b, align 4, !tbaa !17 ; 5 uses
  %i.aiq = icmp slt i32 %i.aip, %i.aha
  br i1 %i.aiq, label %bb.fo, label %19

19:                                               ; preds = %bb.cd
  %20 = load double, ptr %i.c, align 8, !tbaa !166 ; 2 uses
  call fastcc void @region2rect(ptr noundef nonnull %i.ahl, i32 noundef %i.aip, ptr noundef nonnull %i.wv, double noundef %20, ptr noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %20, ptr %i.a, align 8, !tbaa !166
  %21 = load ptr, ptr %i.wu, align 8, !tbaa !291  ; 2 uses
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %bb.ce

23:                                               ; preds = %19
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.167) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.ce:                                            ; preds = %19
  %i.air = sitofp reassoc nsz arcp contract afn i32 %i.aip to double
  %i.ais = load double, ptr %3, align 16, !tbaa !297
  %i.ait = load double, ptr %i.ahn, align 8, !tbaa !298
  %i.aiu = load double, ptr %i.aho, align 16, !tbaa !299
  %i.aiv = load double, ptr %i.ahp, align 8, !tbaa !300
  %i.aiw = fsub reassoc nsz arcp contract afn double %i.aiu, %i.ais ; 2 uses
  %i.aix = fmul reassoc nsz arcp contract afn double %i.aiw, %i.aiw
  %i.aiy = fsub reassoc nsz arcp contract afn double %i.aiv, %i.ait ; 2 uses
  %i.aiz = fmul reassoc nsz arcp contract afn double %i.aiy, %i.aiy
  %i.aja = fadd reassoc nsz arcp contract afn double %i.aiz, %i.aix
  %i.ajb = tail call reassoc nsz arcp contract afn noundef double @llvm.sqrt.f64(double %i.aja)
  %i.ajc = load double, ptr %i.ahq, align 16, !tbaa !301 ; 2 uses
  %i.ajd = fmul reassoc nsz arcp contract afn double %i.ajb, %i.ajc
  %i.aje = fdiv reassoc nsz arcp contract afn double %i.air, %i.ajd
  %i.ajf = fcmp reassoc nsz arcp contract afn ult double %i.aje, f0x3FE6666666666666
  br i1 %i.ajf, label %bb.cf, label %bb.co

bb.cf:                                            ; preds = %bb.ce
  %i.ajg = load i32, ptr %i.ahl, align 4, !tbaa !303 ; 3 uses
  %i.ajh = sitofp reassoc nsz arcp contract afn i32 %i.ajg to double
  %i.aji = load i32, ptr %i.ahr, align 4, !tbaa !304 ; 3 uses
  %i.ajj = sitofp reassoc nsz arcp contract afn i32 %i.aji to double
  %24 = load i32, ptr %i.ago, align 8, !tbaa !289
  %i.ajk = mul i32 %24, %i.aji
  %i.ajl = add i32 %i.ajk, %i.ajg
  %i.ajm = zext i32 %i.ajl to i64
  %i.ajn = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %i.ajm
  %i.ajo = load double, ptr %i.ajn, align 8, !tbaa !166
  %i.ajp = icmp sgt i32 %i.aip, 0
  br i1 %i.ajp, label %.lr.ph.i147.preheader.i.i.i, label %refine.exit.thread.i.i.i

.lr.ph.i147.preheader.i.i.i:                      ; preds = %bb.cf
  %i.ajq = zext nneg i32 %i.aip to i64
  br label %.lr.ph.i147.i.i.i

.lr.ph.i147.i.i.i:                                ; preds = %bb.ch, %.lr.ph.i147.preheader.i.i.i
  %indvars.iv.i148.i.i.i = phi i64 [ %indvars.iv.next.i149.i.i.i, %bb.ch ], [ 0, %.lr.ph.i147.preheader.i.i.i ] ; 2 uses
  %.0110.i.i.i.i = phi i32 [ %.1.i.i.i.i, %bb.ch ], [ 0, %.lr.ph.i147.preheader.i.i.i ] ; 2 uses
  %.093108.i.i.i.i = phi double [ %.194.i.i.i.i, %bb.ch ], [ 0.000000e+00, %.lr.ph.i147.preheader.i.i.i ] ; 2 uses
  %.095107.i.i.i.i = phi double [ %.196.i.i.i.i, %bb.ch ], [ 0.000000e+00, %.lr.ph.i147.preheader.i.i.i ] ; 2 uses
  %i.ajr = getelementptr inbounds nuw [8 x i8], ptr %i.ahl, i64 %indvars.iv.i148.i.i.i ; 2 uses
  %i.ajs = load i32, ptr %i.ajr, align 4, !tbaa !303 ; 3 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajr, i64 4
  %i.aju = load i32, ptr %i.ajt, align 4, !tbaa !304 ; 3 uses
  %i.ajv = mul i32 %i.aju, %i.agp
  %i.ajw = add i32 %i.ajv, %i.ajs
  %i.ajx = zext i32 %i.ajw to i64
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ahh, i64 %i.ajx
  store i8 0, ptr %i.ajy, align 1, !tbaa !177
  %i.ajz = sitofp reassoc nsz arcp contract afn i32 %i.ajs to double
  %i.aka = sitofp reassoc nsz arcp contract afn i32 %i.aju to double
  %i.akb = fsub reassoc nsz arcp contract afn double %i.ajz, %i.ajh ; 2 uses
  %i.akc = fmul reassoc nsz arcp contract afn double %i.akb, %i.akb
  %i.akd = fsub reassoc nsz arcp contract afn double %i.aka, %i.ajj ; 2 uses
  %i.ake = fmul reassoc nsz arcp contract afn double %i.akd, %i.akd
  %i.akf = fadd reassoc nsz arcp contract afn double %i.ake, %i.akc
  %i.akg = tail call reassoc nsz arcp contract afn noundef double @llvm.sqrt.f64(double %i.akf)
  %i.akh = fcmp reassoc nsz arcp contract afn olt double %i.akg, %i.ajc
  br i1 %i.akh, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.lr.ph.i147.i.i.i
  %25 = load ptr, ptr %i.wu, align 8, !tbaa !291
  %26 = load i32, ptr %i.ago, align 8, !tbaa !289
  %27 = mul i32 %26, %i.aju
  %28 = add i32 %27, %i.ajs
  %29 = zext i32 %28 to i64
  %i.aki = getelementptr inbounds nuw [8 x i8], ptr %25, i64 %29
  %i.akj = load double, ptr %i.aki, align 8, !tbaa !166
  %i.akk = fsub reassoc nsz arcp contract afn double %i.akj, %i.ajo ; 3 uses
  %i.akl = fcmp reassoc nsz arcp contract afn ugt double %i.akk, f0xC00921FB54442D18
  br i1 %i.akl, label %.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i, %bb.cg
  %.0.lcssa.i.i.i.i.i = phi double [ %i.akk, %bb.cg ], [ %i.akn, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.akm = fcmp reassoc nsz arcp contract afn ogt double %.0.lcssa.i.i.i.i.i, f0x400921FB54442D18
  br i1 %i.akm, label %.lr.ph9.i.i.i.i.i, label %angle_diff_signed.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.cg, %.lr.ph.i.i.i.i.i
  %.07.i.i.i.i.i = phi double [ %i.akn, %.lr.ph.i.i.i.i.i ], [ %i.akk, %bb.cg ]
  %i.akn = fadd reassoc nsz arcp contract afn double %.07.i.i.i.i.i, f0x401921FB54442D18 ; 3 uses
  %i.ako = fcmp reassoc nsz arcp contract afn ugt double %i.akn, f0xC00921FB54442D18
  br i1 %i.ako, label %.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph9.i.i.i.i.i:                                ; preds = %.preheader.i.i.i.i.i, %.lr.ph9.i.i.i.i.i
  %.18.i.i.i.i.i = phi double [ %i.akp, %.lr.ph9.i.i.i.i.i ], [ %.0.lcssa.i.i.i.i.i, %.preheader.i.i.i.i.i ]
  %i.akp = fadd reassoc nsz arcp contract afn double %.18.i.i.i.i.i, f0xC01921FB54442D18 ; 3 uses
  %i.akq = fcmp reassoc nsz arcp contract afn ogt double %i.akp, f0x400921FB54442D18
  br i1 %i.akq, label %.lr.ph9.i.i.i.i.i, label %angle_diff_signed.exit.i.i.i.i

angle_diff_signed.exit.i.i.i.i:                   ; preds = %.lr.ph9.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.1.lcssa.i.i.i.i.i = phi double [ %.0.lcssa.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.akp, %.lr.ph9.i.i.i.i.i ] ; 3 uses
  %i.akr = fadd reassoc nsz arcp contract afn double %.1.lcssa.i.i.i.i.i, %.095107.i.i.i.i
  %i.aks = fmul reassoc nsz arcp contract afn double %.1.lcssa.i.i.i.i.i, %.1.lcssa.i.i.i.i.i
  %i.akt = fadd reassoc nsz arcp contract afn double %i.aks, %.093108.i.i.i.i
  %i.aku = add nsw i32 %.0110.i.i.i.i, 1
  br label %bb.ch

bb.ch:                                            ; preds = %angle_diff_signed.exit.i.i.i.i, %.lr.ph.i147.i.i.i
  %.196.i.i.i.i = phi nsz double [ %i.akr, %angle_diff_signed.exit.i.i.i.i ], [ %.095107.i.i.i.i, %.lr.ph.i147.i.i.i ] ; 3 uses
  %.194.i.i.i.i = phi nsz double [ %i.akt, %angle_diff_signed.exit.i.i.i.i ], [ %.093108.i.i.i.i, %.lr.ph.i147.i.i.i ] ; 2 uses
  %.1.i.i.i.i = phi i32 [ %i.aku, %angle_diff_signed.exit.i.i.i.i ], [ %.0110.i.i.i.i, %.lr.ph.i147.i.i.i ] ; 3 uses
  %indvars.iv.next.i149.i.i.i = add nuw nsw i64 %indvars.iv.i148.i.i.i, 1 ; 2 uses
  %exitcond43.not.i.i.i = icmp eq i64 %indvars.iv.next.i149.i.i.i, %i.ajq
  br i1 %exitcond43.not.i.i.i, label %._crit_edge.i150.i.i.i, label %.lr.ph.i147.i.i.i

._crit_edge.i150.i.i.i:                           ; preds = %bb.ch
  %i.akv = icmp eq i32 %.1.i.i.i.i, 0
  br i1 %i.akv, label %refine.exit.thread.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %._crit_edge.i150.i.i.i
  %i.akw = sitofp reassoc nsz arcp contract afn i32 %.1.i.i.i.i to double ; 2 uses
  %i.akx = fdiv reassoc nsz arcp contract afn double %.196.i.i.i.i, %i.akw ; 3 uses
  %i.aky = fmul reassoc nsz arcp contract afn double %.196.i.i.i.i, 2.000000e+00
  %i.akz = fmul reassoc nsz arcp contract afn double %i.aky, %i.akx
  %i.ala = fsub reassoc nsz arcp contract afn double %.194.i.i.i.i, %i.akz
  %i.alb = fdiv reassoc nsz arcp contract afn double %i.ala, %i.akw
  %i.alc = fmul reassoc nsz arcp contract afn double %i.akx, %i.akx
  %i.ald = fadd reassoc nsz arcp contract afn double %i.alb, %i.alc
  %i.ale = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.ald)
  %i.alf = fmul reassoc nsz arcp contract afn double %i.ale, 2.000000e+00
  call fastcc void @region_grow(i32 noundef %i.ajg, i32 noundef %i.aji, ptr noundef nonnull readonly %i.wu, ptr noundef nonnull %i.ahl, ptr noundef nonnull %i.b, ptr noundef %i.a, ptr noundef nonnull readonly %i.ahd, double noundef %i.alf)
  %i.alg = load i32, ptr %i.b, align 4, !tbaa !17 ; 4 uses
  %i.alh = icmp slt i32 %i.alg, 2
  br i1 %i.alh, label %refine.exit.thread.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ali = load double, ptr %i.a, align 8, !tbaa !166 ; 2 uses
  call fastcc void @region2rect(ptr noundef nonnull %i.ahl, i32 noundef %i.alg, ptr noundef nonnull readonly %i.wv, double noundef %i.ali, ptr noundef nonnull %3)
  %i.alj = uitofp nneg i32 %i.alg to double
  %i.alk = load <4 x double>, ptr %3, align 16, !tbaa !166 ; 3 uses
  %i.all = load double, ptr %i.ahp, align 8, !tbaa !300
  %i.alm = load double, ptr %i.aho, align 16, !tbaa !299
  %i.aln = load double, ptr %i.ahn, align 8, !tbaa !298
  %i.alo = extractelement <4 x double> %i.alk, i64 0
  %i.alp = fsub reassoc nsz arcp contract afn double %i.alm, %i.alo ; 2 uses
  %i.alq = fmul reassoc nsz arcp contract afn double %i.alp, %i.alp
  %i.alr = fsub reassoc nsz arcp contract afn double %i.all, %i.aln ; 2 uses
  %i.als = fmul reassoc nsz arcp contract afn double %i.alr, %i.alr
  %i.alt = fadd reassoc nsz arcp contract afn double %i.als, %i.alq
  %i.alu = tail call reassoc nsz arcp contract afn noundef double @llvm.sqrt.f64(double %i.alt)
  %i.alv = load double, ptr %i.ahq, align 16, !tbaa !301
  %i.alw = fmul reassoc nsz arcp contract afn double %i.alu, %i.alv
  %i.alx = fdiv reassoc nsz arcp contract afn double %i.alj, %i.alw
  %i.aly = fcmp reassoc nsz arcp contract afn olt double %i.alx, f0x3FE6666666666666
  br i1 %i.aly, label %30, label %bb.co

30:                                               ; preds = %bb.cj
  %31 = load ptr, ptr %i.wu, align 8, !tbaa !291
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %.lr.ph86.i.i.i.i.i

33:                                               ; preds = %30
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.173) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

.lr.ph86.i.i.i.i.i:                               ; preds = %30
  %i.alz = load <2 x i32>, ptr %i.ahl, align 4, !tbaa !17
  %i.ama = sitofp <2 x i32> %i.alz to <2 x double> ; 4 uses
  %i.amb = shufflevector <4 x double> %i.alk, <4 x double> poison, <2 x i32> <i32 3, i32 1>
  %i.amc = shufflevector <2 x double> %i.ama, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.amd = fsub reassoc nsz arcp contract afn <2 x double> %i.amb, %i.amc ; 2 uses
  %i.ame = fmul reassoc nsz arcp contract afn <2 x double> %i.amd, %i.amd
  %i.amf = shufflevector <4 x double> %i.alk, <4 x double> poison, <2 x i32> <i32 2, i32 0>
  %i.amg = shufflevector <2 x double> %i.ama, <2 x double> poison, <2 x i32> zeroinitializer
  %i.amh = fsub reassoc nsz arcp contract afn <2 x double> %i.amf, %i.amg ; 2 uses
  %i.ami = fmul reassoc nsz arcp contract afn <2 x double> %i.amh, %i.amh
  %i.amj = fadd reassoc nsz arcp contract afn <2 x double> %i.ame, %i.ami
  %i.amk = tail call reassoc nsz arcp contract afn <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.amj) ; 2 uses
  %i.aml = extractelement <2 x double> %i.amk, i64 0 ; 2 uses
  %i.amm = extractelement <2 x double> %i.amk, i64 1 ; 2 uses
  %i.amn = fcmp reassoc nsz arcp contract afn ogt double %i.amm, %i.aml
  %i.amo = select reassoc nsz arcp contract afn i1 %i.amn, double %i.amm, double %i.aml
  %i.amp = extractelement <2 x double> %i.ama, i64 0
  %i.amq = extractelement <2 x double> %i.ama, i64 1
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cn, %.lr.ph86.i.i.i.i.i
  %.lcssa2426.i.i.i = phi i32 [ %i.alg, %.lr.ph86.i.i.i.i.i ], [ %i.ant, %bb.cn ] ; 4 uses
  %.07384.i.i.i.i.i = phi double [ %i.amo, %.lr.ph86.i.i.i.i.i ], [ %i.amr, %bb.cn ]
  %i.amr = fmul reassoc nsz arcp contract afn double %.07384.i.i.i.i.i, 7.500000e-01 ; 2 uses
  %i.ams = icmp sgt i32 %.lcssa2426.i.i.i, 0
  br i1 %i.ams, label %.lr.ph.i104.i.i.i.i, label %refine.exit.thread.loopexit.i.i.i

.lr.ph.i104.i.i.i.i:                              ; preds = %bb.ck, %bb.cm
  %i.amt = phi i32 [ %i.ant, %bb.cm ], [ %.lcssa2426.i.i.i, %bb.ck ] ; 3 uses
  %i.amu = phi i32 [ %i.anu, %bb.cm ], [ %.lcssa2426.i.i.i, %bb.ck ]
  %.083.i.i.i.i.i = phi i32 [ %i.anv, %bb.cm ], [ 0, %bb.ck ] ; 3 uses
  %i.amv = sext i32 %.083.i.i.i.i.i to i64
  %i.amw = getelementptr inbounds [8 x i8], ptr %i.ahl, i64 %i.amv ; 3 uses
  %i.amx = load i32, ptr %i.amw, align 4, !tbaa !303 ; 2 uses
  %i.amy = sitofp reassoc nsz arcp contract afn i32 %i.amx to double
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amw, i64 4
  %i.ana = load i32, ptr %i.amz, align 4, !tbaa !304 ; 2 uses
  %i.anb = sitofp reassoc nsz arcp contract afn i32 %i.ana to double
  %i.anc = fsub reassoc nsz arcp contract afn double %i.amy, %i.amp ; 2 uses
  %i.and = fmul reassoc nsz arcp contract afn double %i.anc, %i.anc
  %i.ane = fsub reassoc nsz arcp contract afn double %i.anb, %i.amq ; 2 uses
  %i.anf = fmul reassoc nsz arcp contract afn double %i.ane, %i.ane
  %i.ang = fadd reassoc nsz arcp contract afn double %i.anf, %i.and
  %i.anh = tail call reassoc nsz arcp contract afn noundef double @llvm.sqrt.f64(double %i.ang)
  %i.ani = fcmp reassoc nsz arcp contract afn ogt double %i.anh, %i.amr
  br i1 %i.ani, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %.lr.ph.i104.i.i.i.i
  %i.anj = mul i32 %i.ana, %i.agp
  %i.ank = add i32 %i.anj, %i.amx
  %i.anl = zext i32 %i.ank to i64
  %i.anm = getelementptr inbounds nuw i8, ptr %i.ahh, i64 %i.anl
  store i8 0, ptr %i.anm, align 1, !tbaa !177
  %i.ann = sext i32 %i.amt to i64
  %i.ano = getelementptr [8 x i8], ptr %i.ahl, i64 %i.ann
  %i.anp = getelementptr i8, ptr %i.ano, i64 -8
  %i.anq = load <2 x i32>, ptr %i.anp, align 4, !tbaa !17
  store <2 x i32> %i.anq, ptr %i.amw, align 4, !tbaa !17
  %i.anr = add nsw i32 %i.amt, -1                 ; 2 uses
  %i.ans = add nsw i32 %.083.i.i.i.i.i, -1
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %.lr.ph.i104.i.i.i.i
  %i.ant = phi i32 [ %i.anr, %bb.cl ], [ %i.amt, %.lr.ph.i104.i.i.i.i ] ; 5 uses
  %i.anu = phi i32 [ %i.anr, %bb.cl ], [ %i.amu, %.lr.ph.i104.i.i.i.i ] ; 4 uses
  %.1.i.i.i.i.i = phi i32 [ %i.ans, %bb.cl ], [ %.083.i.i.i.i.i, %.lr.ph.i104.i.i.i.i ]
  %i.anv = add nsw i32 %.1.i.i.i.i.i, 1           ; 2 uses
  %i.anw = icmp slt i32 %i.anv, %i.anu
  br i1 %i.anw, label %.lr.ph.i104.i.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.cm
  %i.anx = icmp slt i32 %i.anu, 2
  br i1 %i.anx, label %refine.exit.thread.loopexit.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %._crit_edge.i.i.i.i.i
  call fastcc void @region2rect(ptr noundef nonnull %i.ahl, i32 noundef %i.anu, ptr noundef nonnull readonly %i.wv, double noundef %i.ali, ptr noundef nonnull %3)
  %i.any = sitofp reassoc nsz arcp contract afn i32 %i.ant to double
  %i.anz = load double, ptr %3, align 16, !tbaa !297
  %i.aoa = load double, ptr %i.ahn, align 8, !tbaa !298
  %i.aob = load double, ptr %i.aho, align 16, !tbaa !299
  %i.aoc = load double, ptr %i.ahp, align 8, !tbaa !300
  %i.aod = fsub reassoc nsz arcp contract afn double %i.aob, %i.anz ; 2 uses
  %i.aoe = fmul reassoc nsz arcp contract afn double %i.aod, %i.aod
  %i.aof = fsub reassoc nsz arcp contract afn double %i.aoc, %i.aoa ; 2 uses
  %i.aog = fmul reassoc nsz arcp contract afn double %i.aof, %i.aof
  %i.aoh = fadd reassoc nsz arcp contract afn double %i.aog, %i.aoe
  %i.aoi = tail call reassoc nsz arcp contract afn noundef double @llvm.sqrt.f64(double %i.aoh)
  %i.aoj = load double, ptr %i.ahq, align 16, !tbaa !301
  %i.aok = fmul reassoc nsz arcp contract afn double %i.aoi, %i.aoj
  %i.aol = fdiv reassoc nsz arcp contract afn double %i.any, %i.aok
  %i.aom = fcmp reassoc nsz arcp contract afn olt double %i.aol, f0x3FE6666666666666
  br i1 %i.aom, label %bb.ck, label %.loopexit.i.i.i

refine.exit.thread.loopexit.i.i.i:                ; preds = %._crit_edge.i.i.i.i.i, %bb.ck
  %.lcssa2427.i.i.i = phi i32 [ %.lcssa2426.i.i.i, %bb.ck ], [ %i.ant, %._crit_edge.i.i.i.i.i ]
  store i32 %.lcssa2427.i.i.i, ptr %i.b, align 4
  br label %refine.exit.thread.i.i.i

refine.exit.thread.i.i.i:                         ; preds = %refine.exit.thread.loopexit.i.i.i, %bb.ci, %._crit_edge.i150.i.i.i, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.fo

.loopexit.i.i.i:                                  ; preds = %bb.cn
  store i32 %i.ant, ptr %i.b, align 4
  br label %bb.co

bb.co:                                            ; preds = %.loopexit.i.i.i, %bb.cj, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.aon = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef nonnull %3, ptr noundef nonnull readonly %i.wu, double noundef %i.agy) ; 4 uses
  %i.aoo = fcmp reassoc nsz arcp contract afn ogt double %i.aon, 0.000000e+00
  br i1 %i.aoo, label %rect_improve.exit.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.aop = load <4 x double>, ptr %3, align 16, !tbaa !166 ; 6 uses
  store <4 x double> %i.aop, ptr %2, align 8, !tbaa !166
  %i.aoq = load <4 x double>, ptr %i.ahq, align 16, !tbaa !166 ; 6 uses
  store <4 x double> %i.aoq, ptr %i.ahs, align 8, !tbaa !166
  %i.aor = load <2 x double>, ptr %i.ahv, align 16, !tbaa !166 ; 6 uses
  store <2 x double> %i.aor, ptr %i.ahw, align 8, !tbaa !166
  %i.aos = load double, ptr %i.aib, align 8, !tbaa !305 ; 10 uses
  %i.aot = fmul reassoc nsz arcp contract afn double %i.aos, 5.000000e-01 ; 2 uses
  store double %i.aot, ptr %i.aic, align 8, !tbaa !305
  %i.aou = fmul reassoc nsz arcp contract afn double %i.aos, f0x3FF921FB54442D18 ; 2 uses
  store double %i.aou, ptr %i.aia, align 8, !tbaa !306
  %i.aov = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wu, double noundef %i.agy) ; 2 uses
  %i.aow = fcmp reassoc nsz arcp contract afn ogt double %i.aov, %i.aon
  br i1 %i.aow, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  store <4 x double> %i.aop, ptr %3, align 16, !tbaa !166
  store <4 x double> %i.aoq, ptr %i.ahq, align 16, !tbaa !166
  store <2 x double> %i.aor, ptr %i.ahv, align 16, !tbaa !166
  store double %i.aou, ptr %i.ahz, align 16, !tbaa !306
  store double %i.aot, ptr %i.aib, align 8, !tbaa !305
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.165.i.i.i.i = phi nsz double [ %i.aov, %bb.cq ], [ %i.aon, %bb.cp ] ; 2 uses
  %i.aox = fmul reassoc nsz arcp contract afn double %i.aos, 2.500000e-01 ; 2 uses
  store double %i.aox, ptr %i.aic, align 8, !tbaa !305
  %i.aoy = fmul reassoc nsz arcp contract afn double %i.aos, f0x3FE921FB54442D18 ; 2 uses
  store double %i.aoy, ptr %i.aia, align 8, !tbaa !306
  %i.aoz = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wu, double noundef %i.agy) ; 2 uses
  %i.apa = fcmp reassoc nsz arcp contract afn ogt double %i.aoz, %.165.i.i.i.i
  br i1 %i.apa, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  store <4 x double> %i.aop, ptr %3, align 16, !tbaa !166
  store <4 x double> %i.aoq, ptr %i.ahq, align 16, !tbaa !166
  store <2 x double> %i.aor, ptr %i.ahv, align 16, !tbaa !166
  store double %i.aoy, ptr %i.ahz, align 16, !tbaa !306
  store double %i.aox, ptr %i.aib, align 8, !tbaa !305
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.165.1.i.i.i.i = phi nsz double [ %i.aoz, %bb.cs ], [ %.165.i.i.i.i, %bb.cr ] ; 2 uses
  %i.apb = fmul reassoc nsz arcp contract afn double %i.aos, 1.250000e-01 ; 2 uses
  store double %i.apb, ptr %i.aic, align 8, !tbaa !305
  %i.apc = fmul reassoc nsz arcp contract afn double %i.aos, f0x3FD921FB54442D18 ; 2 uses
  store double %i.apc, ptr %i.aia, align 8, !tbaa !306
  %i.apd = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wu, double noundef %i.agy) ; 2 uses
  %i.ape = fcmp reassoc nsz arcp contract afn ogt double %i.apd, %.165.1.i.i.i.i
  br i1 %i.ape, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  store <4 x double> %i.aop, ptr %3, align 16, !tbaa !166
  store <4 x double> %i.aoq, ptr %i.ahq, align 16, !tbaa !166
  store <2 x double> %i.aor, ptr %i.ahv, align 16, !tbaa !166
  store double %i.apc, ptr %i.ahz, align 16, !tbaa !306
  store double %i.apb, ptr %i.aib, align 8, !tbaa !305
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.165.2.i.i.i.i = phi nsz double [ %i.apd, %bb.cu ], [ %.165.1.i.i.i.i, %bb.ct ] ; 2 uses
  %i.apf = fmul reassoc nsz arcp contract afn double %i.aos, 6.250000e-02 ; 2 uses
  store double %i.apf, ptr %i.aic, align 8, !tbaa !305
  %i.apg = fmul reassoc nsz arcp contract afn double %i.aos, f0x3FC921FB54442D18 ; 2 uses
  store double %i.apg, ptr %i.aia, align 8, !tbaa !306
  %i.aph = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wu, double noundef %i.agy) ; 2 uses
  %i.api = fcmp reassoc nsz arcp contract afn ogt double %i.aph, %.165.2.i.i.i.i
  br i1 %i.api, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  store <4 x double> %i.aop, ptr %3, align 16, !tbaa !166
  store <4 x double> %i.aoq, ptr %i.ahq, align 16, !tbaa !166
  store <2 x double> %i.aor, ptr %i.ahv, align 16, !tbaa !166
  store double %i.apg, ptr %i.ahz, align 16, !tbaa !306
  store double %i.apf, ptr %i.aib, align 8, !tbaa !305
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.165.3.i.i.i.i = phi nsz double [ %i.aph, %bb.cw ], [ %.165.2.i.i.i.i, %bb.cv ] ; 2 uses
  %i.apj = fmul reassoc nsz arcp contract afn double %i.aos, 3.125000e-02 ; 2 uses
  store double %i.apj, ptr %i.aic, align 8, !tbaa !305
  %i.apk = fmul reassoc nsz arcp contract afn double %i.aos, f0x3FB921FB54442D18 ; 2 uses
  store double %i.apk, ptr %i.aia, align 8, !tbaa !306
  %i.apl = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wu, double noundef %i.agy) ; 2 uses
  %i.apm = fcmp reassoc nsz arcp contract afn ogt double %i.apl, %.165.3.i.i.i.i
  br i1 %i.apm, label %bb.cy, label %bb.cz
end_hunk_2
begin_hunk_3_@_do_get_structure_auto:bb.a
  store <2 x double> %i.ave, ptr %i.ahw, align 8, !tbaa !166
  %i.avf = load double, ptr %i.aib, align 8, !tbaa !305 ; 10 uses
  %i.avg = fmul reassoc nsz arcp contract afn double %i.avf, 5.000000e-01 ; 2 uses
  store double %i.avg, ptr %i.aic, align 8, !tbaa !305
  %i.avh = fmul reassoc nsz arcp contract afn double %i.avf, f0x3FF921FB54442D18 ; 2 uses
  store double %i.avh, ptr %i.aia, align 8, !tbaa !306
  %i.avi = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wu, double noundef %i.agy) ; 2 uses
  %i.avj = fcmp reassoc nsz arcp contract afn ogt double %i.avi, %.7.4.i.i.i.i
  br i1 %i.avj, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  store <4 x double> %i.avc, ptr %3, align 16, !tbaa !166
  store <4 x double> %i.avd, ptr %i.ahq, align 16, !tbaa !166
  store <2 x double> %i.ave, ptr %i.ahv, align 16, !tbaa !166
  store double %i.avh, ptr %i.ahz, align 16, !tbaa !306
  store double %i.avg, ptr %i.aib, align 8, !tbaa !305
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %.9.i.i.i.i = phi nsz double [ %i.avi, %bb.ex ], [ %.7.4.i.i.i.i, %bb.ew ] ; 2 uses
  %i.avk = fmul reassoc nsz arcp contract afn double %i.avf, 2.500000e-01 ; 2 uses
  store double %i.avk, ptr %i.aic, align 8, !tbaa !305
  %i.avl = fmul reassoc nsz arcp contract afn double %i.avf, f0x3FE921FB54442D18 ; 2 uses
  store double %i.avl, ptr %i.aia, align 8, !tbaa !306
  %i.avm = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wu, double noundef %i.agy) ; 2 uses
  %i.avn = fcmp reassoc nsz arcp contract afn ogt double %i.avm, %.9.i.i.i.i
  br i1 %i.avn, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  store <4 x double> %i.avc, ptr %3, align 16, !tbaa !166
  store <4 x double> %i.avd, ptr %i.ahq, align 16, !tbaa !166
  store <2 x double> %i.ave, ptr %i.ahv, align 16, !tbaa !166
  store double %i.avl, ptr %i.ahz, align 16, !tbaa !306
  store double %i.avk, ptr %i.aib, align 8, !tbaa !305
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %.9.1.i.i.i.i = phi nsz double [ %i.avm, %bb.ez ], [ %.9.i.i.i.i, %bb.ey ] ; 2 uses
  %i.avo = fmul reassoc nsz arcp contract afn double %i.avf, 1.250000e-01 ; 2 uses
  store double %i.avo, ptr %i.aic, align 8, !tbaa !305
  %i.avp = fmul reassoc nsz arcp contract afn double %i.avf, f0x3FD921FB54442D18 ; 2 uses
  store double %i.avp, ptr %i.aia, align 8, !tbaa !306
  %i.avq = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wu, double noundef %i.agy) ; 2 uses
  %i.avr = fcmp reassoc nsz arcp contract afn ogt double %i.avq, %.9.1.i.i.i.i
  br i1 %i.avr, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  store <4 x double> %i.avc, ptr %3, align 16, !tbaa !166
  store <4 x double> %i.avd, ptr %i.ahq, align 16, !tbaa !166
  store <2 x double> %i.ave, ptr %i.ahv, align 16, !tbaa !166
  store double %i.avp, ptr %i.ahz, align 16, !tbaa !306
  store double %i.avo, ptr %i.aib, align 8, !tbaa !305
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %.9.2.i.i.i.i = phi nsz double [ %i.avq, %bb.fb ], [ %.9.1.i.i.i.i, %bb.fa ] ; 2 uses
  %i.avs = fmul reassoc nsz arcp contract afn double %i.avf, 6.250000e-02 ; 2 uses
  store double %i.avs, ptr %i.aic, align 8, !tbaa !305
  %i.avt = fmul reassoc nsz arcp contract afn double %i.avf, f0x3FC921FB54442D18 ; 2 uses
  store double %i.avt, ptr %i.aia, align 8, !tbaa !306
  %i.avu = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wu, double noundef %i.agy) ; 2 uses
  %i.avv = fcmp reassoc nsz arcp contract afn ogt double %i.avu, %.9.2.i.i.i.i
  br i1 %i.avv, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  store <4 x double> %i.avc, ptr %3, align 16, !tbaa !166
  store <4 x double> %i.avd, ptr %i.ahq, align 16, !tbaa !166
  store <2 x double> %i.ave, ptr %i.ahv, align 16, !tbaa !166
  store double %i.avt, ptr %i.ahz, align 16, !tbaa !306
  store double %i.avs, ptr %i.aib, align 8, !tbaa !305
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %.9.3.i.i.i.i = phi nsz double [ %i.avu, %bb.fd ], [ %.9.2.i.i.i.i, %bb.fc ] ; 2 uses
  %i.avw = fmul reassoc nsz arcp contract afn double %i.avf, 3.125000e-02 ; 2 uses
  store double %i.avw, ptr %i.aic, align 8, !tbaa !305
  %i.avx = fmul reassoc nsz arcp contract afn double %i.avf, f0x3FB921FB54442D18 ; 2 uses
  store double %i.avx, ptr %i.aia, align 8, !tbaa !306
  %i.avy = call reassoc nsz arcp contract afn fastcc double @rect_nfa(ptr noundef %2, ptr noundef nonnull readonly %i.wu, double noundef %i.agy) ; 2 uses
  %i.avz = fcmp reassoc nsz arcp contract afn ogt double %i.avy, %.9.3.i.i.i.i
  br i1 %i.avz, label %bb.ff, label %rect_improve.exit.i.i.i

bb.ff:                                            ; preds = %bb.fe
  store <4 x double> %i.avc, ptr %3, align 16, !tbaa !166
  store <4 x double> %i.avd, ptr %i.ahq, align 16, !tbaa !166
  store <2 x double> %i.ave, ptr %i.ahv, align 16, !tbaa !166
  store double %i.avx, ptr %i.ahz, align 16, !tbaa !306
  store double %i.avw, ptr %i.aib, align 8, !tbaa !305
  br label %rect_improve.exit.i.i.i

rect_improve.exit.i.i.i:                          ; preds = %bb.ff, %bb.fe, %bb.ev, %bb.ef, %bb.dp, %bb.cz, %bb.co
  %.069.i.i.i.i = phi nsz double [ %.7.4.i.i.i.i, %bb.ev ], [ %i.aon, %bb.co ], [ %.165.4.i.i.i.i, %bb.cz ], [ %.367.4.i.i.i.i, %bb.dp ], [ %.5.4.i.i.i.i, %bb.ef ], [ %i.avy, %bb.ff ], [ %.9.3.i.i.i.i, %bb.fe ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.awa = fcmp reassoc nsz arcp contract afn ugt double %.069.i.i.i.i, 0.000000e+00
  br i1 %i.awa, label %bb.fg, label %bb.fo

bb.fg:                                            ; preds = %rect_improve.exit.i.i.i
  %i.awb = load <4 x double>, ptr %3, align 16, !tbaa !166
  %i.awc = fmul reassoc nsz arcp contract afn <4 x double> %i.awb, splat (double f0x3FF0295FAD40A57F)
  %i.awd = fadd reassoc nsz arcp contract afn <4 x double> %i.awc, splat (double f0x3FE0295FAD40A57F) ; 5 uses
  store <4 x double> %i.awd, ptr %3, align 16, !tbaa !166
  %i.awe = load double, ptr %i.ahq, align 16, !tbaa !301
  %i.awf = fmul reassoc nsz arcp contract afn double %i.awe, f0x3FF0295FAD40A57F ; 2 uses
  store double %i.awf, ptr %i.ahq, align 16, !tbaa !301
  %i.awg = load double, ptr %i.aib, align 8, !tbaa !305
  %i.awh = load i32, ptr %i.lk, align 8, !tbaa !551
  %.not.i151.i.i.i = icmp eq i32 %i.awh, 7
  br i1 %.not.i151.i.i.i, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.186) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.fi:                                            ; preds = %bb.fg
  %i.awi = load i32, ptr %i.lh, align 8, !tbaa !549 ; 5 uses
  %i.awj = load i32, ptr %i.lj, align 4, !tbaa !550
  %i.awk = icmp eq i32 %i.awi, %i.awj
  %i.awl = load ptr, ptr %i.lm, align 8, !tbaa !552 ; 3 uses
  %i.awm = icmp eq ptr %i.awl, null               ; 2 uses
  br i1 %i.awk, label %bb.fj, label %enlarge_ntuple_list.exit.i.i.i.i

bb.fj:                                            ; preds = %bb.fi
  %i.awn = icmp eq i32 %i.awi, 0
  %or.cond.i152.i.i.i = or i1 %i.awn, %i.awm
  br i1 %or.cond.i152.i.i.i, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.131) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.fl:                                            ; preds = %bb.fj
  %i.awo = shl i32 %i.awi, 1                      ; 2 uses
  store i32 %i.awo, ptr %i.lj, align 4, !tbaa !550
  %i.awp = zext i32 %i.awo to i64
  %i.awq = mul nuw nsw i64 %i.awp, 56
  %i.awr = tail call ptr @realloc(ptr noundef nonnull %i.awl, i64 noundef %i.awq) #39 ; 3 uses
  store ptr %i.awr, ptr %i.lm, align 8, !tbaa !552
  %i.aws = icmp eq ptr %i.awr, null
  br i1 %i.aws, label %bb.fm, label %add_7tuple.exit.i.i.i

bb.fm:                                            ; preds = %bb.fl
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.120) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

enlarge_ntuple_list.exit.i.i.i.i:                 ; preds = %bb.fi
  br i1 %i.awm, label %bb.fn, label %add_7tuple.exit.i.i.i

bb.fn:                                            ; preds = %enlarge_ntuple_list.exit.i.i.i.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.185) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

add_7tuple.exit.i.i.i:                            ; preds = %enlarge_ntuple_list.exit.i.i.i.i, %bb.fl
  %i.awt = phi ptr [ %i.awl, %enlarge_ntuple_list.exit.i.i.i.i ], [ %i.awr, %bb.fl ] ; 7 uses
  %i.awu = mul i32 %i.awi, 7                      ; 7 uses
  %i.awv = zext i32 %i.awu to i64
  %i.aww = getelementptr inbounds nuw [8 x i8], ptr %i.awt, i64 %i.awv
  %i.awx = extractelement <4 x double> %i.awd, i64 0
  store double %i.awx, ptr %i.aww, align 8, !tbaa !166
  %i.awy = add i32 %i.awu, 1
  %i.awz = zext i32 %i.awy to i64
  %i.axa = getelementptr inbounds nuw [8 x i8], ptr %i.awt, i64 %i.awz
  %i.axb = extractelement <4 x double> %i.awd, i64 1
  store double %i.axb, ptr %i.axa, align 8, !tbaa !166
  %i.axc = add i32 %i.awu, 2
  %i.axd = zext i32 %i.axc to i64
  %i.axe = getelementptr inbounds nuw [8 x i8], ptr %i.awt, i64 %i.axd
  %i.axf = extractelement <4 x double> %i.awd, i64 2
  store double %i.axf, ptr %i.axe, align 8, !tbaa !166
  %i.axg = add i32 %i.awu, 3
  %i.axh = zext i32 %i.axg to i64
  %i.axi = getelementptr inbounds nuw [8 x i8], ptr %i.awt, i64 %i.axh
  %i.axj = extractelement <4 x double> %i.awd, i64 3
  store double %i.axj, ptr %i.axi, align 8, !tbaa !166
  %i.axk = add i32 %i.awu, 4
  %i.axl = zext i32 %i.axk to i64
  %i.axm = getelementptr inbounds nuw [8 x i8], ptr %i.awt, i64 %i.axl
  store double %i.awf, ptr %i.axm, align 8, !tbaa !166
  %i.axn = add i32 %i.awu, 5
  %i.axo = zext i32 %i.axn to i64
  %i.axp = getelementptr inbounds nuw [8 x i8], ptr %i.awt, i64 %i.axo
  store double %i.awg, ptr %i.axp, align 8, !tbaa !166
  %i.axq = add i32 %i.awu, 6
  %i.axr = zext i32 %i.axq to i64
  %i.axs = getelementptr inbounds nuw [8 x i8], ptr %i.awt, i64 %i.axr
  store double %.069.i.i.i.i, ptr %i.axs, align 8, !tbaa !166
  %i.axt = add i32 %i.awi, 1
  store i32 %i.axt, ptr %i.lh, align 8, !tbaa !549
  br label %bb.fo

bb.fo:                                            ; preds = %add_7tuple.exit.i.i.i, %rect_improve.exit.i.i.i, %refine.exit.thread.i.i.i, %bb.cd, %bb.cc, %bb.cb
  %i.axu = getelementptr inbounds nuw i8, ptr %.0829.i.i.i, i64 8
  %i.axv = load ptr, ptr %i.axu, align 8, !tbaa !556 ; 2 uses
  %.not.i203.i.i = icmp eq ptr %i.axv, null
  br i1 %.not.i203.i.i, label %._crit_edge.i204.i.i, label %bb.cb

._crit_edge.i204.i.i:                             ; preds = %bb.fo, %.preheader.i201.i.i
  %34 = load ptr, ptr %i.wu, align 8, !tbaa !291  ; 2 uses
  %i.axw = icmp eq ptr %34, null
  br i1 %i.axw, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %._crit_edge.i204.i.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.139) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.fq:                                            ; preds = %._crit_edge.i204.i.i
  tail call void @free(ptr noundef nonnull %34) #34
  tail call void @free(ptr noundef nonnull %i.wu) #34
  %i.axx = load ptr, ptr %i.wv, align 8, !tbaa !291 ; 2 uses
  %i.axy = icmp eq ptr %i.axx, null
  br i1 %i.axy, label %bb.fr, label %free_image_char.exit.i.i.i

bb.fr:                                            ; preds = %bb.fq
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.139) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

free_image_char.exit.i.i.i:                       ; preds = %bb.fq
  tail call void @free(ptr noundef nonnull %i.axx) #34
  tail call void @free(ptr noundef nonnull %i.wv) #34
  tail call void @free(ptr noundef nonnull %i.ahh) #34
  tail call void @free(ptr noundef nonnull %i.ahd) #34
  tail call void @free(ptr noundef %i.ahl) #34
  tail call void @free(ptr noundef %i.wy) #34
  %i.axz = load i32, ptr %i.lh, align 8, !tbaa !549 ; 3 uses
  %i.aya = icmp slt i32 %i.axz, 0
  br i1 %i.aya, label %bb.fs, label %LineSegmentDetection.exit.i.i

bb.fs:                                            ; preds = %free_image_char.exit.i.i.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.118) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

LineSegmentDetection.exit.i.i:                    ; preds = %free_image_char.exit.i.i.i
  %i.ayb = load ptr, ptr %i.lm, align 8, !tbaa !552 ; 3 uses
  tail call void @free(ptr noundef nonnull %i.lh) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %.not206.i.i = icmp eq i32 %i.axz, 0
  br i1 %.not206.i.i, label %line_detect.exit.i, label %bb.ft

bb.ft:                                            ; preds = %LineSegmentDetection.exit.i.i
  %i.ayc = zext nneg i32 %i.axz to i64            ; 2 uses
  %i.ayd = shl nuw nsw i64 %i.ayc, 6
  %i.aye = tail call noalias ptr @malloc(i64 noundef %i.ayd) #33 ; 3 uses
  %i.ayf = icmp eq ptr %i.aye, null
  br i1 %i.ayf, label %line_detect.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ft
  %i.ayg = shufflevector <4 x i32> %i.y, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.ayh = add nsw <2 x i32> %i.ayg, splat (i32 -3)
  %i.ayi = sitofp <2 x i32> %i.ayh to <2 x float> ; 2 uses
  %i.ayj = shufflevector <4 x i32> %i.y, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.ayk = sitofp <2 x i32> %i.ayj to <2 x float> ; 2 uses
  %i.ayl = fpext reassoc nsz arcp contract afn float %i.ac to double
  %i.aym = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ayn = shufflevector <2 x float> %i.aym, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ayo = extractelement <2 x float> %i.ayi, i64 0
  %i.ayp = extractelement <2 x float> %i.ayi, i64 1
  %i.ayq = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ayn
  %i.ayr = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ayn
  %i.ays = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.ayl
  br label %bb.fu

bb.fu:                                            ; preds = %bb.gd, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.gd ] ; 2 uses
  %.0163218.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.gd ] ; 6 uses
  %.0164217.i.i = phi float [ 0.000000e+00, %.lr.ph.i.i ], [ %.2166.i.i, %bb.gd ] ; 7 uses
  %.0167216.i.i = phi float [ 0.000000e+00, %.lr.ph.i.i ], [ %.2169.i.i, %bb.gd ] ; 7 uses
  %.0171215.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.2173.i.i, %bb.gd ] ; 7 uses
  %.0175214.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.2177.i.i, %bb.gd ] ; 7 uses
  %.idx.i.i = mul nuw nsw i64 %indvars.iv.i.i, 56
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ayb, i64 %.idx.i.i ; 4 uses
  %i.ayu = load <2 x double>, ptr %i.ayt, align 8, !tbaa !166
  %i.ayv = fptrunc <2 x double> %i.ayu to <2 x float> ; 4 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayt, i64 16
  %i.ayx = load <2 x double>, ptr %i.ayw, align 8, !tbaa !166
  %i.ayy = fptrunc <2 x double> %i.ayx to <2 x float> ; 4 uses
  %i.ayz = extractelement <2 x float> %i.ayv, i64 0 ; 2 uses
  %i.aza = extractelement <2 x float> %i.ayy, i64 0 ; 2 uses
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <2 x float> %i.ayv, %i.ayy
  %i.azb = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.azc = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.azb)
  %i.azd = fcmp reassoc nsz arcp contract afn olt float %i.azc, 1.000000e+00 ; 2 uses
  %i.aze = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ayz, float %i.aza)
  %i.azf = fcmp reassoc nsz arcp contract afn olt float %i.aze, 2.000000e+00
  %or.cond188.i.i = select i1 %i.azd, i1 %i.azf, i1 false
  br i1 %or.cond188.i.i, label %bb.gd, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.azg = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ayz, float %i.aza)
  %i.azh = fcmp reassoc nsz arcp contract afn ogt float %i.azg, %i.ayo
  %or.cond225.i.i = select i1 %i.azd, i1 %i.azh, i1 false
  br i1 %or.cond225.i.i, label %bb.gd, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.azi = extractelement <2 x float> %i.ayv, i64 1 ; 3 uses
  %i.azj = extractelement <2 x float> %i.ayy, i64 1 ; 3 uses
  %i.azk = fsub reassoc nsz arcp contract afn float %i.azi, %i.azj
  %i.azl = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.azk)
  %i.azm = fcmp reassoc nsz arcp contract afn olt float %i.azl, 1.000000e+00 ; 2 uses
  %i.azn = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.azi, float %i.azj)
  %i.azo = fcmp reassoc nsz arcp contract afn olt float %i.azn, 2.000000e+00
  %or.cond190.i.i = select i1 %i.azm, i1 %i.azo, i1 false
  br i1 %or.cond190.i.i, label %bb.gd, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.azp = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.azi, float %i.azj)
  %i.azq = fcmp reassoc nsz arcp contract afn ogt float %i.azp, %i.ayp
  %or.cond227.i.i = select i1 %i.azm, i1 %i.azq, i1 false
  br i1 %or.cond227.i.i, label %bb.gd, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.azr = fadd reassoc nsz arcp contract afn <2 x float> %i.ayv, %i.ayk
  %i.azs = sext i32 %.0163218.i.i to i64
  %i.azt = getelementptr inbounds [64 x i8], ptr %i.aye, i64 %i.azs ; 11 uses
  %i.azu = fmul reassoc nsz arcp contract afn <2 x float> %i.azr, %i.ayq ; 4 uses
  store <2 x float> %i.azu, ptr %i.azt, align 16, !tbaa !15
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azt, i64 8
  store float 1.000000e+00, ptr %i.azv, align 8, !tbaa !15
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azt, i64 12
  %i.azx = fadd reassoc nsz arcp contract afn <2 x float> %i.ayy, %i.ayk
  %i.azy = fmul reassoc nsz arcp contract afn <2 x float> %i.azx, %i.ayr ; 4 uses
  store <2 x float> %i.azy, ptr %i.azw, align 4, !tbaa !15
  %i.azz = getelementptr inbounds nuw i8, ptr %i.azt, i64 20
  store float 1.000000e+00, ptr %i.azz, align 4, !tbaa !15
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azt, i64 48
  %i.bab = extractelement <2 x float> %i.azu, i64 1 ; 3 uses
  %i.bac = extractelement <2 x float> %i.azy, i64 1 ; 3 uses
  %i.bad = fsub reassoc nsz arcp contract afn float %i.bab, %i.bac ; 3 uses
  %i.bae = extractelement <2 x float> %i.azu, i64 0
  %i.baf = extractelement <2 x float> %i.azy, i64 0
  %foldExtExtBinop224 = fsub reassoc nsz arcp contract afn <2 x float> %i.azy, %i.azu ; 3 uses
  %i.bag = extractelement <2 x float> %foldExtExtBinop224, i64 0 ; 2 uses
  %i.bah = fmul reassoc nsz arcp contract afn float %i.bac, %i.bae
  %i.bai = fmul reassoc nsz arcp contract afn float %i.baf, %i.bab
  %i.baj = fsub reassoc nsz arcp contract afn float %i.bah, %i.bai ; 3 uses
  %i.bak = fmul reassoc nsz arcp contract afn float %i.bad, %i.bad
  %foldExtExtBinop226 = fmul reassoc nsz arcp contract afn <2 x float> %foldExtExtBinop224, %foldExtExtBinop224
  %i.bal = extractelement <2 x float> %foldExtExtBinop226, i64 0 ; 2 uses
  %i.bam = fadd reassoc nsz arcp contract afn float %i.bak, %i.bal
  %i.ban = fmul reassoc nsz arcp contract afn float %i.baj, %i.baj
  %i.bao = fadd reassoc nsz arcp contract afn float %i.bam, %i.ban ; 2 uses
  %i.bap = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.bao)
  %i.baq = fcmp reassoc nsz arcp contract afn ogt float %i.bao, 0.000000e+00
  %i.bar = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bap
  %i.bas = select reassoc nsz arcp contract afn i1 %i.baq, float %i.bar, float 1.000000e+00 ; 3 uses
  %i.bat = fmul reassoc nsz arcp contract afn float %i.bas, %i.bad ; 2 uses
  %i.bau = fmul reassoc nsz arcp contract afn float %i.bas, %i.bag ; 2 uses
  %i.bav = getelementptr inbounds nuw i8, ptr %i.azt, i64 52
  %i.baw = fmul reassoc nsz arcp contract afn float %i.bas, %i.baj
  %i.bax = getelementptr inbounds nuw i8, ptr %i.azt, i64 56
  %i.bay = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.bat, float noundef %i.bau) #35 ; 2 uses
  %i.baz = fcmp reassoc nsz arcp contract afn ogt float %i.bay, 0.000000e+00
  %i.bba = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bay
  %i.bbb = select reassoc nsz arcp contract afn i1 %i.baz, float %i.bba, float 1.000000e+00 ; 3 uses
  %i.bbc = fmul reassoc nsz arcp contract afn float %i.bbb, %i.bat
  store float %i.bbc, ptr %i.baa, align 16, !tbaa !15
  %i.bbd = fmul reassoc nsz arcp contract afn float %i.bbb, %i.bau
  store float %i.bbd, ptr %i.bav, align 4, !tbaa !15
  %i.bbe = fmul reassoc nsz arcp contract afn float %i.baw, %i.bbb
  store float %i.bbe, ptr %i.bax, align 8, !tbaa !15
  %i.bbf = fsub reassoc nsz arcp contract afn float %i.bac, %i.bab ; 3 uses
  %i.bbg = fmul reassoc nsz arcp contract afn float %i.bbf, %i.bbf
  %i.bbh = fadd reassoc nsz arcp contract afn float %i.bbg, %i.bal
  %i.bbi = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.bbh) ; 3 uses
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.azt, i64 24
  store float %i.bbi, ptr %i.bbj, align 8, !tbaa !188
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.ayt, i64 32
  %i.bbl = load double, ptr %i.bbk, align 8, !tbaa !166
  %i.bbm = fmul reassoc nsz arcp contract afn double %i.bbl, %i.ays
  %i.bbn = fptrunc reassoc nsz arcp contract afn double %i.bbm to float ; 2 uses
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.azt, i64 28
  store float %i.bbn, ptr %i.bbo, align 4, !tbaa !559
  %i.bbp = fmul reassoc nsz arcp contract afn float %i.bbi, %i.bbn
  %i.bbq = fpext reassoc nsz arcp contract afn float %i.bbp to double
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.ayt, i64 40
  %i.bbs = load double, ptr %i.bbr, align 8, !tbaa !166
  %i.bbt = fmul reassoc nsz arcp contract afn double %i.bbs, %i.bbq
  %i.bbu = fptrunc reassoc nsz arcp contract afn double %i.bbt to float ; 3 uses
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.azt, i64 32
  store float %i.bbu, ptr %i.bbv, align 16, !tbaa !307
  %i.bbw = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.bbf, float %i.bag)
  %i.bbx = fmul reassoc nsz arcp contract afn float %i.bbw, f0x42652EE0
  %i.bby = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bbx)
  %i.bbz = fadd reassoc nsz arcp contract afn float %i.bby, -9.000000e+01
  %i.bca = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bbz) ; 2 uses
  %i.bcb = fcmp reassoc nsz arcp contract afn olt float %i.bca, 3.000000e+01
  %i.bcc = fcmp reassoc nsz arcp contract afn ogt float %i.bbi, 5.000000e+00 ; 2 uses
  %or.cond.i.i = and i1 %i.bcb, %i.bcc
  br i1 %or.cond.i.i, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.bcd = add nsw i32 %.0175214.i.i, 1
  %i.bce = fadd reassoc nsz arcp contract afn float %.0167216.i.i, %i.bbu
  br label %bb.gc

bb.ga:                                            ; preds = %bb.fy
  %i.bcf = fadd reassoc nsz arcp contract afn float %i.bca, -9.000000e+01
  %i.bcg = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bcf)
  %i.bch = fcmp reassoc nsz arcp contract afn olt float %i.bcg, 3.000000e+01
  %or.cond3.i.i = and i1 %i.bch, %i.bcc
  br i1 %or.cond3.i.i, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.bci = add nsw i32 %.0171215.i.i, 1
end_hunk_3
begin_hunk_4_@region2rect:bb.a
  %i.iu = fsub reassoc nsz arcp contract afn double %.lcssa4, %.lcssa3 ; 2 uses
  %i.iv = fmul reassoc nsz arcp contract afn double %i.iu, %i.iu
  %i.iw = fmul reassoc nsz arcp contract afn double %.lcssa2, %.lcssa2
  %i.ix = fmul reassoc nsz arcp contract afn double %i.iw, 4.000000e+00
  %i.iy = fadd reassoc nsz arcp contract afn double %i.iv, %i.ix
  %i.iz = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.iy)
  %i.ja = fsub reassoc nsz arcp contract afn double %i.it, %i.iz
  %i.jb = fmul reassoc nsz arcp contract afn double %i.ja, 5.000000e-01 ; 2 uses
  %i.jc = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %.lcssa4)
  %i.jd = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %.lcssa3)
  %i.je = fcmp reassoc nsz arcp contract afn ogt double %i.jc, %i.jd
  br i1 %i.je, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.jf = fsub reassoc nsz arcp contract afn double %i.jb, %.lcssa4
  %i.jg = tail call reassoc nsz arcp contract afn double @llvm.atan2.f64(double %i.jf, double %.lcssa2)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.jh = fsub reassoc nsz arcp contract afn double %i.jb, %.lcssa3
  %i.ji = tail call reassoc nsz arcp contract afn double @llvm.atan2.f64(double %.lcssa2, double %i.jh)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.jj = phi reassoc nsz arcp contract afn double [ %i.jg, %bb.j ], [ %i.ji, %bb.k ] ; 3 uses
  %i.jk = fsub reassoc nsz arcp contract afn double %i.jj, %3 ; 3 uses
  %i.jl = fcmp reassoc nsz arcp contract afn ugt double %i.jk, f0xC00921FB54442D18
  br i1 %i.jl, label %.preheader.i.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %bb.l
  %.0.lcssa.i.i = phi double [ %i.jk, %bb.l ], [ %i.jn, %.lr.ph.i.i ] ; 3 uses
  %i.jm = fcmp reassoc nsz arcp contract afn ogt double %.0.lcssa.i.i, f0x400921FB54442D18
  br i1 %i.jm, label %.lr.ph11.i.i, label %.lr.ph138.preheader

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %.09.i.i = phi double [ %i.jn, %.lr.ph.i.i ], [ %i.jk, %bb.l ]
  %i.jn = fadd reassoc nsz arcp contract afn double %.09.i.i, f0x401921FB54442D18 ; 3 uses
  %i.jo = fcmp reassoc nsz arcp contract afn ugt double %i.jn, f0xC00921FB54442D18
  br i1 %i.jo, label %.preheader.i.i, label %.lr.ph.i.i

.lr.ph11.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph11.i.i
  %.110.i.i = phi double [ %i.jp, %.lr.ph11.i.i ], [ %.0.lcssa.i.i, %.preheader.i.i ]
  %i.jp = fadd reassoc nsz arcp contract afn double %.110.i.i, f0xC01921FB54442D18 ; 3 uses
  %i.jq = fcmp reassoc nsz arcp contract afn ogt double %i.jp, f0x400921FB54442D18
  br i1 %i.jq, label %.lr.ph11.i.i, label %.lr.ph138.preheader

.lr.ph138.preheader:                              ; preds = %.lr.ph11.i.i, %.preheader.i.i
  %.1.lcssa.i.i = phi double [ %.0.lcssa.i.i, %.preheader.i.i ], [ %i.jp, %.lr.ph11.i.i ]
  %spec.select.i.i = tail call nsz double @llvm.fabs.f64(double %.1.lcssa.i.i)
  %i.jr = fcmp reassoc nsz arcp contract afn ogt double %spec.select.i.i, f0x3FD921FB54442D18
  %i.js = fadd reassoc nsz arcp contract afn double %i.jj, f0x400921FB54442D18
  %spec.select.i = select nsz i1 %i.jr, double %i.js, double %i.jj ; 2 uses
  %sincos = tail call reassoc nsz arcp contract afn { double, double } @llvm.sincos.f64(double %spec.select.i) ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0 ; 9 uses
  %cos = extractvalue { double, double } %sincos, 1 ; 9 uses
  %i.jt = extractelement <2 x double> %i.cx, i64 0 ; 4 uses
  %i.ju = extractelement <2 x double> %i.cx, i64 1 ; 4 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph138

.lr.ph138:                                        ; preds = %.lr.ph138, %.lr.ph138.preheader
  %indvars.iv152 = phi i64 [ 0, %.lr.ph138.preheader ], [ %indvars.iv.next153.1, %.lr.ph138 ] ; 3 uses
  %.0103136 = phi double [ 0.000000e+00, %.lr.ph138.preheader ], [ %.1104.1, %.lr.ph138 ] ; 2 uses
  %.0105135 = phi double [ 0.000000e+00, %.lr.ph138.preheader ], [ %.1106.1, %.lr.ph138 ] ; 2 uses
  %.0107134 = phi double [ 0.000000e+00, %.lr.ph138.preheader ], [ %spec.select.1, %.lr.ph138 ] ; 2 uses
  %.0109133 = phi double [ 0.000000e+00, %.lr.ph138.preheader ], [ %.1110.1, %.lr.ph138 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph138.preheader ], [ %niter.next.1, %.lr.ph138 ]
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv152 ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !303
  %i.jx = sitofp reassoc nsz arcp contract afn i32 %i.jw to double
  %i.jy = fsub reassoc nsz arcp contract afn double %i.jx, %i.jt ; 2 uses
  %i.jz = fmul reassoc nsz arcp contract afn double %i.jy, %cos
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jv, i64 4
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !304
  %i.kc = sitofp reassoc nsz arcp contract afn i32 %i.kb to double
  %i.kd = fsub reassoc nsz arcp contract afn double %i.kc, %i.ju ; 2 uses
  %i.ke = fmul reassoc nsz arcp contract afn double %i.kd, %sin
  %i.kf = fadd reassoc nsz arcp contract afn double %i.ke, %i.jz ; 4 uses
  %i.kg = fmul reassoc nsz arcp contract afn double %i.kd, %cos
  %i.kh = fmul reassoc nsz arcp contract afn double %i.jy, %sin
  %i.ki = fsub reassoc nsz arcp contract afn double %i.kg, %i.kh ; 4 uses
  %i.kj = fcmp reassoc nsz arcp contract afn ogt double %i.kf, %.0107134
  %spec.select = select nsz i1 %i.kj, double %i.kf, double %.0107134 ; 2 uses
  %i.kk = fcmp reassoc nsz arcp contract afn olt double %i.kf, %.0109133
  %.1110 = select nsz i1 %i.kk, double %i.kf, double %.0109133 ; 2 uses
  %i.kl = fcmp reassoc nsz arcp contract afn ogt double %i.ki, %.0103136
  %.1104 = select nsz i1 %i.kl, double %i.ki, double %.0103136 ; 2 uses
  %i.km = fcmp reassoc nsz arcp contract afn olt double %i.ki, %.0105135
  %.1106 = select nsz i1 %i.km, double %i.ki, double %.0105135 ; 2 uses
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv152 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !303
  %i.kq = sitofp reassoc nsz arcp contract afn i32 %i.kp to double
  %i.kr = fsub reassoc nsz arcp contract afn double %i.kq, %i.jt ; 2 uses
  %i.ks = fmul reassoc nsz arcp contract afn double %i.kr, %cos
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kn, i64 12
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !304
  %i.kv = sitofp reassoc nsz arcp contract afn i32 %i.ku to double
  %i.kw = fsub reassoc nsz arcp contract afn double %i.kv, %i.ju ; 2 uses
  %i.kx = fmul reassoc nsz arcp contract afn double %i.kw, %sin
  %i.ky = fadd reassoc nsz arcp contract afn double %i.kx, %i.ks ; 4 uses
  %i.kz = fmul reassoc nsz arcp contract afn double %i.kw, %cos
  %i.la = fmul reassoc nsz arcp contract afn double %i.kr, %sin
  %i.lb = fsub reassoc nsz arcp contract afn double %i.kz, %i.la ; 4 uses
  %i.lc = fcmp reassoc nsz arcp contract afn ogt double %i.ky, %spec.select
  %spec.select.1 = select nsz i1 %i.lc, double %i.ky, double %spec.select ; 4 uses
  %i.ld = fcmp reassoc nsz arcp contract afn olt double %i.ky, %.1110
  %.1110.1 = select nsz i1 %i.ld, double %i.ky, double %.1110 ; 4 uses
  %i.le = fcmp reassoc nsz arcp contract afn ogt double %i.lb, %.1104
  %.1104.1 = select nsz i1 %i.le, double %i.lb, double %.1104 ; 4 uses
  %i.lf = fcmp reassoc nsz arcp contract afn olt double %i.lb, %.1106
  %.1106.1 = select nsz i1 %i.lf, double %i.lb, double %.1106 ; 4 uses
  %indvars.iv.next153.1 = add nuw nsw i64 %indvars.iv152, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge139.unr-lcssa, label %.lr.ph138

._crit_edge139.unr-lcssa:                         ; preds = %.lr.ph138
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge139, label %.lr.ph138.epil.preheader

.lr.ph138.epil.preheader:                         ; preds = %._crit_edge139.unr-lcssa
  %lcmp.mod194 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod194)
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next153.1 ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !303
  %i.li = sitofp reassoc nsz arcp contract afn i32 %i.lh to double
  %i.lj = fsub reassoc nsz arcp contract afn double %i.li, %i.jt ; 2 uses
  %i.lk = fmul reassoc nsz arcp contract afn double %i.lj, %cos
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !304
  %i.ln = sitofp reassoc nsz arcp contract afn i32 %i.lm to double
  %i.lo = fsub reassoc nsz arcp contract afn double %i.ln, %i.ju ; 2 uses
  %i.lp = fmul reassoc nsz arcp contract afn double %i.lo, %sin
  %i.lq = fadd reassoc nsz arcp contract afn double %i.lp, %i.lk ; 4 uses
  %i.lr = fmul reassoc nsz arcp contract afn double %i.lo, %cos
  %i.ls = fmul reassoc nsz arcp contract afn double %i.lj, %sin
  %i.lt = fsub reassoc nsz arcp contract afn double %i.lr, %i.ls ; 4 uses
  %i.lu = fcmp reassoc nsz arcp contract afn ogt double %i.lq, %spec.select.1
  %spec.select.epil = select nsz i1 %i.lu, double %i.lq, double %spec.select.1
  %i.lv = fcmp reassoc nsz arcp contract afn olt double %i.lq, %.1110.1
  %.1110.epil = select nsz i1 %i.lv, double %i.lq, double %.1110.1
  %i.lw = fcmp reassoc nsz arcp contract afn ogt double %i.lt, %.1104.1
  %.1104.epil = select nsz i1 %i.lw, double %i.lt, double %.1104.1
  %i.lx = fcmp reassoc nsz arcp contract afn olt double %i.lt, %.1106.1
  %.1106.epil = select nsz i1 %i.lx, double %i.lt, double %.1106.1
  br label %._crit_edge139

._crit_edge139:                                   ; preds = %._crit_edge139.unr-lcssa, %.lr.ph138.epil.preheader
  %spec.select.lcssa = phi double [ %spec.select.1, %._crit_edge139.unr-lcssa ], [ %spec.select.epil, %.lr.ph138.epil.preheader ] ; 2 uses
  %.1110.lcssa = phi double [ %.1110.1, %._crit_edge139.unr-lcssa ], [ %.1110.epil, %.lr.ph138.epil.preheader ]
  %.1104.lcssa = phi double [ %.1104.1, %._crit_edge139.unr-lcssa ], [ %.1104.epil, %.lr.ph138.epil.preheader ]
  %.1106.lcssa = phi double [ %.1106.1, %._crit_edge139.unr-lcssa ], [ %.1106.epil, %.lr.ph138.epil.preheader ]
  %i.ly = insertelement <2 x double> poison, double %.1110.lcssa, i64 0
  %i.lz = shufflevector <2 x double> %i.ly, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ma = insertelement <2 x double> poison, double %cos, i64 0
  %i.mb = insertelement <2 x double> %i.ma, double %sin, i64 1
  %i.mc = fmul reassoc nsz arcp contract afn <2 x double> %i.lz, %i.mb
  %i.md = fadd reassoc nsz arcp contract afn <2 x double> %i.mc, %i.cx
  store <2 x double> %i.md, ptr %4, align 8, !tbaa !166
  %i.me = fmul reassoc nsz arcp contract afn double %spec.select.lcssa, %cos
  %i.mf = fadd reassoc nsz arcp contract afn double %i.me, %i.jt
  %i.mg = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %i.mf, ptr %i.mg, align 8, !tbaa !299
  %i.mh = fmul reassoc nsz arcp contract afn double %spec.select.lcssa, %sin
  %i.mi = fadd reassoc nsz arcp contract afn double %i.mh, %i.ju
  %i.mj = getelementptr inbounds nuw i8, ptr %4, i64 24
  store double %i.mi, ptr %i.mj, align 8, !tbaa !300
  %i.mk = fsub reassoc nsz arcp contract afn double %.1104.lcssa, %.1106.lcssa ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store double %i.mk, ptr %i.ml, align 8, !tbaa !301
  %i.mm = getelementptr inbounds nuw i8, ptr %4, i64 40
  store <2 x double> %i.cx, ptr %i.mm, align 8, !tbaa !166
  %i.mn = getelementptr inbounds nuw i8, ptr %4, i64 56
  store double %spec.select.i, ptr %i.mn, align 8, !tbaa !310
  %i.mo = getelementptr inbounds nuw i8, ptr %4, i64 64
  store double %cos, ptr %i.mo, align 8, !tbaa !311
  %i.mp = getelementptr inbounds nuw i8, ptr %4, i64 72
  store double %sin, ptr %i.mp, align 8, !tbaa !312
  %i.mq = getelementptr inbounds nuw i8, ptr %4, i64 80
  store <2 x double> <double f0x3FD921FB54442D18, double 1.250000e-01>, ptr %i.mq, align 8, !tbaa !166
  %i.mr = fcmp reassoc nsz arcp contract afn olt double %i.mk, 1.000000e+00
  br i1 %i.mr, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge139
  store double 1.000000e+00, ptr %i.ml, align 8, !tbaa !301
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge139
  ret void
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #12

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @new_image_double(i32 noundef %0, i32 noundef %1) unnamed_addr #5 {
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

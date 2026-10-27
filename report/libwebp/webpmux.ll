Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/webpmux?download=true
inline.NumInlined: 63
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [44 x i8] c"Exiting due to command-line parsing error.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"ERROR: Memory allocation error.\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"-get\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"ERROR: Multiple '-get' arguments specified.\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"-set\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"ERROR: Multiple '-set' arguments specified.\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"-strip\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"ERROR: Multiple '-strip' arguments specified.\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"-info\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"ERROR: Multiple '-info' arguments specified.\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"ERROR: Multiple output files specified.\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"-frame\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"-loop\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"-bgcolor\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"-duration\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"ERROR: Multiple loop counts specified.\0A\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"ERROR: Multiple background colors specified.\0A\00", align 1
@.str.18 = private unnamed_addr constant [80 x i8] c"ERROR: Loop count and background color are relevant only in case of animation.\0A\00", align 1
@.str.19 = private unnamed_addr constant [55 x i8] c"ERROR: Can not combine -duration and -frame commands.\0A\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"ERROR: Multiple actions specified.\0A\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"ERROR: Too few arguments for '%s'.\0A\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"ERROR: Multiple features specified.\0A\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"ERROR: Too many arguments for '%s'.\0A\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"-version\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"%d.%d.%d\0A\00", align 1
@.str.29 = private unnamed_addr constant [48 x i8] c"ERROR at '%s': Multiple input files specified.\0A\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"ERROR: Unknown option: '%s'.\0A\00", align 1
@.str.31 = private unnamed_addr constant [57 x i8] c"ERROR: Action must be specified before other arguments.\0A\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"icc\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"exif\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"xmp\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"bgcolor\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"ERROR: No action specified.\0A\00", align 1
@.str.39 = private unnamed_addr constant [30 x i8] c"ERROR: No feature specified.\0A\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"ERROR: No input file specified.\0A\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"ERROR: No output file specified.\0A\00", align 1
@kFourccList = internal unnamed_addr constant [8 x ptr] [ptr null, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr null, ptr null, ptr null], align 16
@.str.42 = private unnamed_addr constant [35 x i8] c"ERROR (%s): Could not get the %s.\0A\00", align 1
@kDescriptions = internal unnamed_addr constant [8 x ptr] [ptr null, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr null, ptr null, ptr null], align 16
@.str.43 = private unnamed_addr constant [42 x i8] c"ERROR: Invalid feature for action 'get'.\0A\00", align 1
@.str.44 = private unnamed_addr constant [46 x i8] c"ERROR (%s): Could not allocate a mux object.\0A\00", align 1
@.str.45 = private unnamed_addr constant [46 x i8] c"ERROR: Could not parse the background color \0A\00", align 1
@.str.46 = private unnamed_addr constant [52 x i8] c"ERROR: Loop count must be in the range 0 to 65535.\0A\00", align 1
@.str.47 = private unnamed_addr constant [42 x i8] c"ERROR: Could not parse frame properties.\0A\00", align 1
@.str.48 = private unnamed_addr constant [48 x i8] c"ERROR (%s): Could not add a frame at index %d.\0A\00", align 1
@.str.49 = private unnamed_addr constant [35 x i8] c"ERROR: Invalid subtype for 'frame'\00", align 1
@.str.50 = private unnamed_addr constant [49 x i8] c"ERROR (%s): Could not set animation parameters.\0A\00", align 1
@.str.51 = private unnamed_addr constant [35 x i8] c"ERROR (%s): Could not set the %s.\0A\00", align 1
@.str.53 = private unnamed_addr constant [53 x i8] c"ERROR: input file does not seem to be an animation.\0A\00", align 1
@.str.55 = private unnamed_addr constant [46 x i8] c"ERROR: Could not parse the background color.\0A\00", align 1
@.str.56 = private unnamed_addr constant [42 x i8] c"ERROR: Invalid feature for action 'set'.\0A\00", align 1
@.str.57 = private unnamed_addr constant [44 x i8] c"ERROR: can not parse the number of frames.\0A\00", align 1
@.str.58 = private unnamed_addr constant [70 x i8] c"Doesn't look like the source is animated. Skipping duration setting.\0A\00", align 1
@.str.59 = private unnamed_addr constant [44 x i8] c"ERROR: duration must be strictly positive.\0A\00", align 1
@.str.60 = private unnamed_addr constant [36 x i8] c"ERROR: can not retrieve frame #%d.\0A\00", align 1
@.str.61 = private unnamed_addr constant [34 x i8] c"ERROR: error push frame data #%d\0A\00", align 1
@.str.62 = private unnamed_addr constant [37 x i8] c"ERROR (%s): Could not strip the %s.\0A\00", align 1
@.str.63 = private unnamed_addr constant [44 x i8] c"ERROR: Invalid feature for action 'strip'.\0A\00", align 1
@.str.64 = private unnamed_addr constant [43 x i8] c"Failed to create mux object from file %s.\0A\00", align 1
@.str.65 = private unnamed_addr constant [51 x i8] c"ERROR: Frame/Fragment index must be non-negative.\0A\00", align 1
@.str.66 = private unnamed_addr constant [37 x i8] c"ERROR (%s): Could not get frame %d.\0A\00", align 1
@.str.67 = private unnamed_addr constant [55 x i8] c"ERROR (%s): Could not create single image mux object.\0A\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"EXIF\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"XMP \00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"ICCP\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"ANMF\00", align 1
@kErrorMessages = internal unnamed_addr constant [5 x ptr] [ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76], align 16
@.str.72 = private unnamed_addr constant [19 x i8] c"WEBP_MUX_NOT_FOUND\00", align 1
@.str.73 = private unnamed_addr constant [26 x i8] c"WEBP_MUX_INVALID_ARGUMENT\00", align 1
@.str.74 = private unnamed_addr constant [18 x i8] c"WEBP_MUX_BAD_DATA\00", align 1
@.str.75 = private unnamed_addr constant [22 x i8] c"WEBP_MUX_MEMORY_ERROR\00", align 1
@.str.76 = private unnamed_addr constant [25 x i8] c"WEBP_MUX_NOT_ENOUGH_DATA\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"EXIF metadata\00", align 1
@.str.78 = private unnamed_addr constant [13 x i8] c"XMP metadata\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"ICC profile\00", align 1
@.str.80 = private unnamed_addr constant [16 x i8] c"Animation frame\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.83 = private unnamed_addr constant [36 x i8] c"Error opening output WebP file %s!\0A\00", align 1
@.str.84 = private unnamed_addr constant [24 x i8] c"Error writing file %s!\0A\00", align 1
@.str.85 = private unnamed_addr constant [26 x i8] c"Saved file %s (%d bytes)\0A\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"%u,%u,%u,%u\00", align 1
@.str.87 = private unnamed_addr constant [20 x i8] c"+%d+%d+%d+%d%c%c+%d\00", align 1
@.str.88 = private unnamed_addr constant [74 x i8] c"Warning: odd offsets will be snapped to even values (%d, %d) -> (%d, %d)\0A\00", align 1
@.str.89 = private unnamed_addr constant [38 x i8] c"Error (%s) assembling the WebP file.\0A\00", align 1
@.str.90 = private unnamed_addr constant [39 x i8] c"Error (%s) handling animation params.\0A\00", align 1
@.str.91 = private unnamed_addr constant [53 x i8] c"Error transferring metadata in DuplicateMuxHeader().\00", align 1
@.str.92 = private unnamed_addr constant [22 x i8] c"Canvas size: %d x %d\0A\00", align 1
@.str.93 = private unnamed_addr constant [29 x i8] c"Failed to retrieve features\0A\00", align 1
@.str.95 = private unnamed_addr constant [18 x i8] c"Features present:\00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c" animation\00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c" ICC profile\00", align 1
@.str.98 = private unnamed_addr constant [15 x i8] c" EXIF metadata\00", align 1
@.str.99 = private unnamed_addr constant [14 x i8] c" XMP metadata\00", align 1
@.str.100 = private unnamed_addr constant [14 x i8] c" transparency\00", align 1
@.str.102 = private unnamed_addr constant [44 x i8] c"Background color : 0x%.8X  Loop Count : %d\0A\00", align 1
@.str.103 = private unnamed_addr constant [19 x i8] c"Number of %ss: %d\0A\00", align 1
@.str.104 = private unnamed_addr constant [43 x i8] c"No.: width height alpha x_offset y_offset \00", align 1
@.str.105 = private unnamed_addr constant [26 x i8] c"duration   dispose blend \00", align 1
@.str.107 = private unnamed_addr constant [26 x i8] c"%3d: %5d %5d %5s %8d %8d \00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"background\00", align 1
@.str.112 = private unnamed_addr constant [14 x i8] c"%8d %10s %5s \00", align 1
@.str.113 = private unnamed_addr constant [11 x i8] c"%10d %11s\0A\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"lossy\00", align 1
@.str.115 = private unnamed_addr constant [9 x i8] c"lossless\00", align 1
@.str.116 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.117 = private unnamed_addr constant [26 x i8] c"Failed to retrieve %s#%d\0A\00", align 1
@.str.118 = private unnamed_addr constant [34 x i8] c"Size of the ICC profile data: %d\0A\00", align 1
@.str.119 = private unnamed_addr constant [31 x i8] c"Size of the EXIF metadata: %d\0A\00", align 1
@.str.120 = private unnamed_addr constant [30 x i8] c"Size of the XMP metadata: %d\0A\00", align 1
@.str.121 = private unnamed_addr constant [36 x i8] c"Size of the image (with alpha): %d\0A\00", align 1
@.str.122 = private unnamed_addr constant [30 x i8] c"Failed to retrieve the image\0A\00", align 1
@.str.183 = private unnamed_addr constant [59 x i8] c"\0ANote: The nature of EXIF, XMP and ICC data is not checked\00", align 1
@str = private unnamed_addr constant [48 x i8] c"Usage: webpmux -get GET_OPTIONS INPUT -o OUTPUT\00", align 1
@str.1 = private unnamed_addr constant [48 x i8] c"       webpmux -set SET_OPTIONS INPUT -o OUTPUT\00", align 1
@str.2 = private unnamed_addr constant [58 x i8] c"       webpmux -duration DURATION_OPTIONS [-duration ...]\00", align 1
@str.3 = private unnamed_addr constant [31 x i8] c"               INPUT -o OUTPUT\00", align 1
@str.4 = private unnamed_addr constant [52 x i8] c"       webpmux -strip STRIP_OPTIONS INPUT -o OUTPUT\00", align 1
@str.5 = private unnamed_addr constant [67 x i8] c"       webpmux -frame FRAME_OPTIONS [-frame...] [-loop LOOP_COUNT]\00", align 1
@str.6 = private unnamed_addr constant [53 x i8] c"               [-bgcolor BACKGROUND_COLOR] -o OUTPUT\00", align 1
@str.7 = private unnamed_addr constant [27 x i8] c"       webpmux -info INPUT\00", align 1
@str.8 = private unnamed_addr constant [26 x i8] c"       webpmux [-h|-help]\00", align 1
@str.9 = private unnamed_addr constant [24 x i8] c"       webpmux -version\00", align 1
@str.10 = private unnamed_addr constant [34 x i8] c"       webpmux argument_file_name\00", align 1
@str.11 = private unnamed_addr constant [13 x i8] c"GET_OPTIONS:\00", align 1
@str.12 = private unnamed_addr constant [24 x i8] c" Extract relevant data:\00", align 1
@str.13 = private unnamed_addr constant [29 x i8] c"   icc       get ICC profile\00", align 1
@str.14 = private unnamed_addr constant [31 x i8] c"   exif      get EXIF metadata\00", align 1
@str.15 = private unnamed_addr constant [30 x i8] c"   xmp       get XMP metadata\00", align 1
@str.16 = private unnamed_addr constant [27 x i8] c"   frame n   get nth frame\00", align 1
@str.17 = private unnamed_addr constant [13 x i8] c"SET_OPTIONS:\00", align 1
@str.18 = private unnamed_addr constant [40 x i8] c" Set color profile/metadata/parameters:\00", align 1
@str.19 = private unnamed_addr constant [49 x i8] c"   loop LOOP_COUNT            set the loop count\00", align 1
@str.20 = private unnamed_addr constant [65 x i8] c"   bgcolor BACKGROUND_COLOR   set the animation background color\00", align 1
@str.21 = private unnamed_addr constant [46 x i8] c"   icc  file.icc              set ICC profile\00", align 1
@str.22 = private unnamed_addr constant [48 x i8] c"   exif file.exif             set EXIF metadata\00", align 1
@str.23 = private unnamed_addr constant [47 x i8] c"   xmp  file.xmp              set XMP metadata\00", align 1
@str.24 = private unnamed_addr constant [60 x i8] c"   where:    'file.icc' contains the ICC profile to be set,\00", align 1
@str.25 = private unnamed_addr constant [62 x i8] c"             'file.exif' contains the EXIF metadata to be set\00", align 1
@str.26 = private unnamed_addr constant [60 x i8] c"             'file.xmp' contains the XMP metadata to be set\00", align 1
@str.27 = private unnamed_addr constant [18 x i8] c"DURATION_OPTIONS:\00", align 1
@str.28 = private unnamed_addr constant [34 x i8] c" Set duration of selected frames:\00", align 1
@str.29 = private unnamed_addr constant [51 x i8] c"   duration            set duration for all frames\00", align 1
@str.30 = private unnamed_addr constant [58 x i8] c"   duration,frame      set duration of a particular frame\00", align 1
@str.31 = private unnamed_addr constant [53 x i8] c"   duration,start,end  set duration of frames in the\00", align 1
@str.32 = private unnamed_addr constant [46 x i8] c"                        interval [start,end])\00", align 1
@str.33 = private unnamed_addr constant [53 x i8] c"   where: 'duration' is the duration in milliseconds\00", align 1
@str.34 = private unnamed_addr constant [43 x i8] c"          'start' is the start frame index\00", align 1
@str.35 = private unnamed_addr constant [49 x i8] c"          'end' is the inclusive end frame index\00", align 1
@str.36 = private unnamed_addr constant [58 x i8] c"           The special 'end' value '0' means: last frame.\00", align 1
@str.37 = private unnamed_addr constant [15 x i8] c"STRIP_OPTIONS:\00", align 1
@str.38 = private unnamed_addr constant [31 x i8] c" Strip color profile/metadata:\00", align 1
@str.39 = private unnamed_addr constant [31 x i8] c"   icc       strip ICC profile\00", align 1
@str.40 = private unnamed_addr constant [33 x i8] c"   exif      strip EXIF metadata\00", align 1
@str.41 = private unnamed_addr constant [32 x i8] c"   xmp       strip XMP metadata\00", align 1
@str.42 = private unnamed_addr constant [18 x i8] c"FRAME_OPTIONS(i):\00", align 1
@str.43 = private unnamed_addr constant [19 x i8] c" Create animation:\00", align 1
@str.44 = private unnamed_addr constant [31 x i8] c"   file_i +di[+xi+yi[+mi[bi]]]\00", align 1
@str.45 = private unnamed_addr constant [65 x i8] c"   where:    'file_i' is the i'th animation frame (WebP format),\00", align 1
@str.46 = private unnamed_addr constant [59 x i8] c"             'di' is the pause duration before next frame,\00", align 1
@str.47 = private unnamed_addr constant [64 x i8] c"             'xi','yi' specify the image offset for this frame,\00", align 1
@str.48 = private unnamed_addr constant [65 x i8] c"             'mi' is the dispose method for this frame (0 or 1),\00", align 1
@str.49 = private unnamed_addr constant [67 x i8] c"             'bi' is the blending method for this frame (+b or -b)\00", align 1
@str.50 = private unnamed_addr constant [12 x i8] c"LOOP_COUNT:\00", align 1
@str.51 = private unnamed_addr constant [42 x i8] c" Number of times to repeat the animation.\00", align 1
@str.52 = private unnamed_addr constant [52 x i8] c" Valid range is 0 to 65535 [Default: 0 (infinite)].\00", align 1
@str.53 = private unnamed_addr constant [18 x i8] c"BACKGROUND_COLOR:\00", align 1
@str.54 = private unnamed_addr constant [33 x i8] c" Background color of the canvas.\00", align 1
@str.55 = private unnamed_addr constant [10 x i8] c"  A,R,G,B\00", align 1
@str.56 = private unnamed_addr constant [80 x i8] c"  where:    'A', 'R', 'G' and 'B' are integers in the range 0 to 255 specifying\00", align 1
@str.57 = private unnamed_addr constant [73 x i8] c"            the Alpha, Red, Green and Blue component values respectively\00", align 1
@str.58 = private unnamed_addr constant [39 x i8] c"            [Default: 255,255,255,255]\00", align 1
@str.59 = private unnamed_addr constant [36 x i8] c"\0AINPUT & OUTPUT are in WebP format.\00", align 1
@str.60 = private unnamed_addr constant [29 x i8] c" and is assumed to be\0Avalid.\00", align 1
@str.61 = private unnamed_addr constant [78 x i8] c"\0ANote: if a single file name is passed as the argument, the arguments will be\00", align 1
@str.62 = private unnamed_addr constant [79 x i8] c"tokenized from this file. The file name must not start with the character '-'.\00", align 1
@str.63 = private unnamed_addr constant [24 x i8] c"image_size  compression\00", align 1
@str.64 = private unnamed_addr constant [21 x i8] c"No features present.\00", align 1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 14 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %2 = alloca %struct.WebPMuxAnimParams, align 4  ; 6 uses
  %3 = alloca %struct.WebPMuxFrameInfo, align 8   ; 14 uses
  %4 = alloca %struct.WebPBitstreamFeatures, align 4 ; 7 uses
  %5 = alloca %struct.WebPData, align 8           ; 4 uses
  %6 = alloca %struct.WebPData, align 8           ; 4 uses
  %7 = alloca %struct.WebPData, align 8           ; 4 uses
  %8 = alloca %struct.WebPMuxFrameInfo, align 8   ; 7 uses
  %9 = alloca %struct.WebPData, align 8           ; 7 uses
  %10 = alloca %struct.WebPData, align 8          ; 5 uses
  %11 = alloca %struct.WebPData, align 8          ; 7 uses
  %12 = alloca %struct.WebPMuxAnimParams, align 4 ; 5 uses
  %13 = alloca %struct.WebPData, align 8          ; 14 uses
  %14 = alloca %struct.WebPData, align 8          ; 7 uses
  %15 = alloca %struct.WebPData, align 8          ; 5 uses
  %16 = alloca %struct.WebPData, align 8          ; 7 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %17 = alloca %struct.WebPData, align 8          ; 7 uses
  %18 = alloca %struct.WebPData, align 8          ; 7 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i8, align 1                       ; 6 uses
  %i.l = alloca i8, align 1                       ; 6 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %19 = alloca %struct.WebPData, align 8          ; 6 uses
  %i.q = alloca i32, align 4                      ; 6 uses
  %20 = alloca %struct.WebPMuxFrameInfo, align 8  ; 12 uses
  %21 = alloca %struct.WebPData, align 8          ; 7 uses
  %22 = alloca %struct.WebPData, align 8          ; 8 uses
  %23 = alloca %struct.WebPMuxAnimParams, align 8 ; 7 uses
  %i.r = alloca i32, align 4                      ; 6 uses
  %24 = alloca %struct.WebPMuxFrameInfo, align 8  ; 15 uses
  %25 = alloca %struct.WebPMuxAnimParams, align 8 ; 7 uses
  %i.s = alloca i32, align 4                      ; 6 uses
  %26 = alloca %struct.WebPMuxAnimParams, align 8 ; 7 uses
  %i.t = alloca i32, align 4                      ; 11 uses
  %i.u = alloca [3 x i32], align 4                ; 7 uses
  %27 = alloca %struct.WebPMuxFrameInfo, align 8  ; 8 uses
  %28 = alloca %struct.Config, align 8            ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #13
  %i.v = add nsw i32 %0, -1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %28, i8 0, i64 88, i1 false)
  %i.x = call i32 @ExUtilInitCommandLineArguments(i32 noundef range(i32 -2147483648, 2147483647) %i.v, ptr noundef nonnull %i.w, ptr noundef nonnull %28) #13
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %InitializeConfig.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = load i32, ptr %28, align 8, !tbaa !32    ; 22 uses
  %i.z = icmp sgt i32 %i.y, 0                     ; 2 uses
  br i1 %i.z, label %.lr.ph.i.i.i, label %.thread156.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !33 ; 11 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.y to i64 ; 10 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.c ] ; 2 uses
  %.09.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %spec.select.i.i.i, %bb.c ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i.i.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !16
  %i.ae = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ad, ptr noundef nonnull dereferenceable(5) @.str.2) #14
  %.not.i.i.i = icmp eq i32 %i.ae, 0
  %i.af = zext i1 %.not.i.i.i to i32
  %spec.select.i.i.i = add nuw nsw i32 %.09.i.i.i, %i.af ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %CountOccurrences.exit.i.i, label %bb.c, !llvm.loop !23

CountOccurrences.exit.i.i:                        ; preds = %bb.c
  %i.ag = icmp samesign ugt i32 %spec.select.i.i.i, 1
  br i1 %i.ag, label %bb.d, label %.lr.ph.i42.i.i

bb.d:                                             ; preds = %CountOccurrences.exit.i.i
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite38.i.i = call i64 @fwrite(ptr nonnull @.str.3, i64 44, i64 1, ptr %i.ah) #15 ; 0 uses
  br label %bb.n

.lr.ph.i42.i.i:                                   ; preds = %CountOccurrences.exit.i.i, %.lr.ph.i42.i.i
  %indvars.iv.i44.i.i = phi i64 [ %indvars.iv.next.i48.i.i, %.lr.ph.i42.i.i ], [ 0, %CountOccurrences.exit.i.i ] ; 2 uses
  %.09.i45.i.i = phi i32 [ %spec.select.i47.i.i, %.lr.ph.i42.i.i ], [ 0, %CountOccurrences.exit.i.i ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i44.i.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !16
  %i.ak = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aj, ptr noundef nonnull dereferenceable(5) @.str.4) #14
  %.not.i46.i.i = icmp eq i32 %i.ak, 0
  %i.al = zext i1 %.not.i46.i.i to i32
  %spec.select.i47.i.i = add nuw nsw i32 %.09.i45.i.i, %i.al ; 2 uses
  %indvars.iv.next.i48.i.i = add nuw nsw i64 %indvars.iv.i44.i.i, 1 ; 2 uses
  %exitcond.not.i49.i.i = icmp eq i64 %indvars.iv.next.i48.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i49.i.i, label %CountOccurrences.exit50.i.i, label %.lr.ph.i42.i.i, !llvm.loop !23

CountOccurrences.exit50.i.i:                      ; preds = %.lr.ph.i42.i.i
  %i.am = icmp samesign ugt i32 %spec.select.i47.i.i, 1
  br i1 %i.am, label %bb.e, label %.lr.ph.i52.i.i

bb.e:                                             ; preds = %CountOccurrences.exit50.i.i
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite37.i.i = call i64 @fwrite(ptr nonnull @.str.5, i64 44, i64 1, ptr %i.an) #15 ; 0 uses
  br label %bb.n

.lr.ph.i52.i.i:                                   ; preds = %CountOccurrences.exit50.i.i, %.lr.ph.i52.i.i
  %indvars.iv.i54.i.i = phi i64 [ %indvars.iv.next.i58.i.i, %.lr.ph.i52.i.i ], [ 0, %CountOccurrences.exit50.i.i ] ; 2 uses
  %.09.i55.i.i = phi i32 [ %spec.select.i57.i.i, %.lr.ph.i52.i.i ], [ 0, %CountOccurrences.exit50.i.i ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i54.i.i
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !16
  %i.aq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ap, ptr noundef nonnull dereferenceable(7) @.str.6) #14
  %.not.i56.i.i = icmp eq i32 %i.aq, 0
  %i.ar = zext i1 %.not.i56.i.i to i32
  %spec.select.i57.i.i = add nuw nsw i32 %.09.i55.i.i, %i.ar ; 2 uses
  %indvars.iv.next.i58.i.i = add nuw nsw i64 %indvars.iv.i54.i.i, 1 ; 2 uses
  %exitcond.not.i59.i.i = icmp eq i64 %indvars.iv.next.i58.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i59.i.i, label %CountOccurrences.exit60.i.i, label %.lr.ph.i52.i.i, !llvm.loop !23

CountOccurrences.exit60.i.i:                      ; preds = %.lr.ph.i52.i.i
  %i.as = icmp samesign ugt i32 %spec.select.i57.i.i, 1
  br i1 %i.as, label %bb.f, label %.lr.ph.i62.i.i

bb.f:                                             ; preds = %CountOccurrences.exit60.i.i
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite36.i.i = call i64 @fwrite(ptr nonnull @.str.7, i64 46, i64 1, ptr %i.at) #15 ; 0 uses
  br label %bb.n

.lr.ph.i62.i.i:                                   ; preds = %CountOccurrences.exit60.i.i, %.lr.ph.i62.i.i
  %indvars.iv.i64.i.i = phi i64 [ %indvars.iv.next.i68.i.i, %.lr.ph.i62.i.i ], [ 0, %CountOccurrences.exit60.i.i ] ; 2 uses
  %.09.i65.i.i = phi i32 [ %spec.select.i67.i.i, %.lr.ph.i62.i.i ], [ 0, %CountOccurrences.exit60.i.i ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i64.i.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !16
  %i.aw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.av, ptr noundef nonnull dereferenceable(6) @.str.8) #14
  %.not.i66.i.i = icmp eq i32 %i.aw, 0
  %i.ax = zext i1 %.not.i66.i.i to i32
  %spec.select.i67.i.i = add nuw nsw i32 %.09.i65.i.i, %i.ax ; 2 uses
  %indvars.iv.next.i68.i.i = add nuw nsw i64 %indvars.iv.i64.i.i, 1 ; 2 uses
  %exitcond.not.i69.i.i = icmp eq i64 %indvars.iv.next.i68.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i69.i.i, label %CountOccurrences.exit70.i.i, label %.lr.ph.i62.i.i, !llvm.loop !23

CountOccurrences.exit70.i.i:                      ; preds = %.lr.ph.i62.i.i
  %i.ay = icmp samesign ugt i32 %spec.select.i67.i.i, 1
  br i1 %i.ay, label %bb.g, label %sub_0.i.i.preheader

sub_0.i.i.preheader:                              ; preds = %CountOccurrences.exit70.i.i
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.az = icmp eq i32 %i.y, 1
  br i1 %i.az, label %sub_0.i.i.epil.preheader, label %sub_0.i.i.preheader.new

sub_0.i.i.preheader.new:                          ; preds = %sub_0.i.i.preheader
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %sub_0.i.i

bb.g:                                             ; preds = %CountOccurrences.exit70.i.i
  %i.ba = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite35.i.i = call i64 @fwrite(ptr nonnull @.str.9, i64 45, i64 1, ptr %i.ba) #15 ; 0 uses
  br label %bb.n

sub_0.i.i:                                        ; preds = %.tail.i.i.1, %sub_0.i.i.preheader.new
  %indvars.iv.i74.i.i = phi i64 [ 0, %sub_0.i.i.preheader.new ], [ %indvars.iv.next.i78.i.i.1, %.tail.i.i.1 ] ; 3 uses
  %.09.i75.i.i = phi i32 [ 0, %sub_0.i.i.preheader.new ], [ %spec.select.i77.i.i.1, %.tail.i.i.1 ]
  %niter = phi i64 [ 0, %sub_0.i.i.preheader.new ], [ %niter.next.1, %.tail.i.i.1 ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i74.i.i
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !16 ; 3 uses
  %i.bd = load i8, ptr %i.bc, align 1
  %.not.i.i = icmp eq i8 %i.bd, 45
  br i1 %.not.i.i, label %sub_1.i.i, label %.tail.i.i

sub_1.i.i:                                        ; preds = %sub_0.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.bf = load i8, ptr %i.be, align 1
  %.not165.i.i = icmp eq i8 %i.bf, 111
  br i1 %.not165.i.i, label %sub_2.i.i, label %.tail.i.i

sub_2.i.i:                                        ; preds = %sub_1.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = icmp eq i8 %i.bh, 0
  %i.bj = zext i1 %i.bi to i32
  br label %.tail.i.i

.tail.i.i:                                        ; preds = %sub_2.i.i, %sub_1.i.i, %sub_0.i.i
  %.not.i76.i.i = phi i32 [ 0, %sub_0.i.i ], [ 0, %sub_1.i.i ], [ %i.bj, %sub_2.i.i ]
  %spec.select.i77.i.i = add nuw nsw i32 %.not.i76.i.i, %.09.i75.i.i
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i74.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !16 ; 3 uses
  %i.bn = load i8, ptr %i.bm, align 1
  %.not.i.i.1 = icmp eq i8 %i.bn, 45
  br i1 %.not.i.i.1, label %sub_1.i.i.1, label %.tail.i.i.1

sub_1.i.i.1:                                      ; preds = %.tail.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bp = load i8, ptr %i.bo, align 1
  %.not165.i.i.1 = icmp eq i8 %i.bp, 111
  br i1 %.not165.i.i.1, label %sub_2.i.i.1, label %.tail.i.i.1

sub_2.i.i.1:                                      ; preds = %sub_1.i.i.1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = icmp eq i8 %i.br, 0
  %i.bt = zext i1 %i.bs to i32
  br label %.tail.i.i.1

.tail.i.i.1:                                      ; preds = %sub_2.i.i.1, %sub_1.i.i.1, %.tail.i.i
  %.not.i76.i.i.1 = phi i32 [ 0, %.tail.i.i ], [ 0, %sub_1.i.i.1 ], [ %i.bt, %sub_2.i.i.1 ]
  %spec.select.i77.i.i.1 = add nuw nsw i32 %.not.i76.i.i.1, %spec.select.i77.i.i ; 3 uses
  %indvars.iv.next.i78.i.i.1 = add nuw nsw i64 %indvars.iv.i74.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %CountOccurrences.exit80.i.i.unr-lcssa, label %sub_0.i.i, !llvm.loop !23

CountOccurrences.exit80.i.i.unr-lcssa:            ; preds = %.tail.i.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %CountOccurrences.exit80.i.i, label %sub_0.i.i.epil.preheader

sub_0.i.i.epil.preheader:                         ; preds = %CountOccurrences.exit80.i.i.unr-lcssa, %sub_0.i.i.preheader
  %indvars.iv.i74.i.i.epil.init = phi i64 [ 0, %sub_0.i.i.preheader ], [ %indvars.iv.next.i78.i.i.1, %CountOccurrences.exit80.i.i.unr-lcssa ]
  %.09.i75.i.i.epil.init = phi i32 [ 0, %sub_0.i.i.preheader ], [ %spec.select.i77.i.i.1, %CountOccurrences.exit80.i.i.unr-lcssa ]
  %lcmp.mod596 = trunc i32 %i.y to i1
  call void @llvm.assume(i1 %lcmp.mod596)
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i74.i.i.epil.init
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !16 ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 1
  %.not.i.i.epil = icmp eq i8 %i.bw, 45
  br i1 %.not.i.i.epil, label %sub_1.i.i.epil, label %.tail.i.i.epil

sub_1.i.i.epil:                                   ; preds = %sub_0.i.i.epil.preheader
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.by = load i8, ptr %i.bx, align 1
  %.not165.i.i.epil = icmp eq i8 %i.by, 111
  br i1 %.not165.i.i.epil, label %sub_2.i.i.epil, label %.tail.i.i.epil

sub_2.i.i.epil:                                   ; preds = %sub_1.i.i.epil
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = icmp eq i8 %i.ca, 0
  %i.cc = zext i1 %i.cb to i32
  br label %.tail.i.i.epil

.tail.i.i.epil:                                   ; preds = %sub_2.i.i.epil, %sub_1.i.i.epil, %sub_0.i.i.epil.preheader
  %.not.i76.i.i.epil = phi i32 [ 0, %sub_0.i.i.epil.preheader ], [ 0, %sub_1.i.i.epil ], [ %i.cc, %sub_2.i.i.epil ]
  %spec.select.i77.i.i.epil = add nuw nsw i32 %.not.i76.i.i.epil, %.09.i75.i.i.epil.init
  br label %CountOccurrences.exit80.i.i

CountOccurrences.exit80.i.i:                      ; preds = %CountOccurrences.exit80.i.i.unr-lcssa, %.tail.i.i.epil
  %spec.select.i77.i.i.lcssa = phi i32 [ %spec.select.i77.i.i.1, %CountOccurrences.exit80.i.i.unr-lcssa ], [ %spec.select.i77.i.i.epil, %.tail.i.i.epil ]
  %i.cd = icmp samesign ugt i32 %spec.select.i77.i.i.lcssa, 1
  br i1 %i.cd, label %bb.h, label %.lr.ph.i82.i.i

bb.h:                                             ; preds = %CountOccurrences.exit80.i.i
  %i.ce = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite34.i.i = call i64 @fwrite(ptr nonnull @.str.11, i64 40, i64 1, ptr %i.ce) #15 ; 0 uses
  br label %bb.n

.lr.ph.i82.i.i:                                   ; preds = %CountOccurrences.exit80.i.i, %.lr.ph.i82.i.i
  %indvars.iv.i84.i.i = phi i64 [ %indvars.iv.next.i88.i.i, %.lr.ph.i82.i.i ], [ 0, %CountOccurrences.exit80.i.i ] ; 2 uses
  %.09.i85.i.i = phi i32 [ %spec.select.i87.i.i, %.lr.ph.i82.i.i ], [ 0, %CountOccurrences.exit80.i.i ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i84.i.i
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !16
  %i.ch = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cg, ptr noundef nonnull dereferenceable(7) @.str.12) #14
  %.not.i86.i.i = icmp eq i32 %i.ch, 0
  %i.ci = zext i1 %.not.i86.i.i to i32
  %spec.select.i87.i.i = add nuw nsw i32 %.09.i85.i.i, %i.ci ; 2 uses
  %indvars.iv.next.i88.i.i = add nuw nsw i64 %indvars.iv.i84.i.i, 1 ; 2 uses
  %exitcond.not.i89.i.i = icmp eq i64 %indvars.iv.next.i88.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i89.i.i, label %.lr.ph.i92.i.i, label %.lr.ph.i82.i.i, !llvm.loop !23

.lr.ph.i92.i.i:                                   ; preds = %.lr.ph.i82.i.i, %.lr.ph.i92.i.i
  %indvars.iv.i94.i.i = phi i64 [ %indvars.iv.next.i98.i.i, %.lr.ph.i92.i.i ], [ 0, %.lr.ph.i82.i.i ] ; 2 uses
  %.09.i95.i.i = phi i32 [ %spec.select.i97.i.i, %.lr.ph.i92.i.i ], [ 0, %.lr.ph.i82.i.i ]
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i94.i.i
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !16
  %i.cl = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ck, ptr noundef nonnull dereferenceable(6) @.str.13) #14
  %.not.i96.i.i = icmp eq i32 %i.cl, 0
  %i.cm = zext i1 %.not.i96.i.i to i32
  %spec.select.i97.i.i = add nuw nsw i32 %.09.i95.i.i, %i.cm ; 3 uses
  %indvars.iv.next.i98.i.i = add nuw nsw i64 %indvars.iv.i94.i.i, 1 ; 2 uses
  %exitcond.not.i99.i.i = icmp eq i64 %indvars.iv.next.i98.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i99.i.i, label %.lr.ph.i102.i.i, label %.lr.ph.i92.i.i, !llvm.loop !23

.lr.ph.i102.i.i:                                  ; preds = %.lr.ph.i92.i.i, %.lr.ph.i102.i.i
  %indvars.iv.i104.i.i = phi i64 [ %indvars.iv.next.i108.i.i, %.lr.ph.i102.i.i ], [ 0, %.lr.ph.i92.i.i ] ; 2 uses
  %.09.i105.i.i = phi i32 [ %spec.select.i107.i.i, %.lr.ph.i102.i.i ], [ 0, %.lr.ph.i92.i.i ]
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i104.i.i
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !16
  %i.cp = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(9) @.str.14) #14
  %.not.i106.i.i = icmp eq i32 %i.cp, 0
  %i.cq = zext i1 %.not.i106.i.i to i32
  %spec.select.i107.i.i = add nuw nsw i32 %.09.i105.i.i, %i.cq ; 3 uses
  %indvars.iv.next.i108.i.i = add nuw nsw i64 %indvars.iv.i104.i.i, 1 ; 2 uses
  %exitcond.not.i109.i.i = icmp eq i64 %indvars.iv.next.i108.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i109.i.i, label %.lr.ph.i112.i.i, label %.lr.ph.i102.i.i, !llvm.loop !23

.lr.ph.i112.i.i:                                  ; preds = %.lr.ph.i102.i.i, %.lr.ph.i112.i.i
  %indvars.iv.i114.i.i = phi i64 [ %indvars.iv.next.i118.i.i, %.lr.ph.i112.i.i ], [ 0, %.lr.ph.i102.i.i ] ; 2 uses
  %.09.i115.i.i = phi i32 [ %spec.select.i117.i.i, %.lr.ph.i112.i.i ], [ 0, %.lr.ph.i102.i.i ]
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i114.i.i
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !16
  %i.ct = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cs, ptr noundef nonnull dereferenceable(10) @.str.15) #14
  %.not.i116.i.i = icmp eq i32 %i.ct, 0
  %i.cu = zext i1 %.not.i116.i.i to i32
  %spec.select.i117.i.i = add nuw nsw i32 %.09.i115.i.i, %i.cu ; 2 uses
  %indvars.iv.next.i118.i.i = add nuw nsw i64 %indvars.iv.i114.i.i, 1 ; 2 uses
  %exitcond.not.i119.i.i = icmp eq i64 %indvars.iv.next.i118.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i119.i.i, label %CountOccurrences.exit120.i.i, label %.lr.ph.i112.i.i, !llvm.loop !23

CountOccurrences.exit120.i.i:                     ; preds = %.lr.ph.i112.i.i
  %i.cv = icmp samesign ugt i32 %spec.select.i97.i.i, 1
  br i1 %i.cv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %CountOccurrences.exit120.i.i
  %i.cw = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite33.i.i = call i64 @fwrite(ptr nonnull @.str.16, i64 39, i64 1, ptr %i.cw) #15 ; 0 uses
  br label %bb.n

bb.j:                                             ; preds = %CountOccurrences.exit120.i.i
  %i.cx = icmp samesign ugt i32 %spec.select.i107.i.i, 1
  br i1 %i.cx, label %bb.k, label %.thread156.i.i

bb.k:                                             ; preds = %bb.j
  %i.cy = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite32.i.i = call i64 @fwrite(ptr nonnull @.str.17, i64 45, i64 1, ptr %i.cy) #15 ; 0 uses
  br label %bb.n

.thread156.i.i:                                   ; preds = %bb.j, %bb.b
  %.0.lcssa.i101146152164.i.i = phi i32 [ %spec.select.i107.i.i, %bb.j ], [ 0, %bb.b ]
  %.0.lcssa.i81131135144153163.i.i = phi i32 [ %spec.select.i87.i.i, %bb.j ], [ 0, %bb.b ] ; 2 uses
  %.0.lcssa.i91137142154162.i.i = phi i32 [ %spec.select.i97.i.i, %bb.j ], [ 0, %bb.b ]
  %.0.lcssa.i111155161.i.i = phi i32 [ %spec.select.i117.i.i, %bb.j ], [ 0, %bb.b ] ; 2 uses
  %i.cz = icmp eq i32 %.0.lcssa.i81131135144153163.i.i, 0 ; 3 uses
  %i.da = add nuw nsw i32 %.0.lcssa.i91137142154162.i.i, %.0.lcssa.i101146152164.i.i ; 2 uses
  %i.db = icmp ne i32 %i.da, 0
  %or.cond40.i.i = select i1 %i.cz, i1 %i.db, i1 false
  br i1 %or.cond40.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread156.i.i
  %i.dc = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite31.i.i = call i64 @fwrite(ptr nonnull @.str.18, i64 79, i64 1, ptr %i.dc) #15 ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %.thread156.i.i
  %i.dd = icmp slt i32 %.0.lcssa.i111155161.i.i, 1 ; 2 uses
  %or.cond.not.i.i = or i1 %i.cz, %i.dd
  br i1 %or.cond.not.i.i, label %ValidateCommandLine.exit.i, label %29

29:                                               ; preds = %bb.m
  %30 = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite.i.i = call i64 @fwrite(ptr nonnull @.str.19, i64 54, i64 1, ptr %30) #15 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %29, %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.de = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite.i.i.a = call i64 @fwrite(ptr nonnull @.str, i64 43, i64 1, ptr %i.de) #15 ; 0 uses
  br label %InitializeConfig.exit.thread

ValidateCommandLine.exit.i:                       ; preds = %bb.m
  %i.df = add i32 %i.da, %.0.lcssa.i81131135144153163.i.i
  %spec.select.i.a = select i1 %i.cz, i32 1, i32 %i.df
  %.0.i.a = select i1 %i.dd, i32 %spec.select.i.a, i32 %.0.lcssa.i111155161.i.i ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %28, i64 80 ; 7 uses
  store i32 %.0.i.a, ptr %i.dg, align 8, !tbaa !35
  %i.dh = sext i32 %.0.i.a to i64
  %i.di = call noalias ptr @calloc(i64 noundef %i.dh, i64 noundef 24) #16 ; 9 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %28, i64 72 ; 8 uses
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !20
  %i.dk = icmp eq ptr %i.di, null
  br i1 %i.dk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %ValidateCommandLine.exit.i
  %i.dl = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite19.i = call i64 @fwrite(ptr nonnull @.str.1, i64 32, i64 1, ptr %i.dl) #15 ; 0 uses
  br label %InitializeConfig.exit.thread

bb.p:                                             ; preds = %ValidateCommandLine.exit.i
  %i.dm = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !36 ; 10 uses
  br i1 %i.z, label %.lr.ph.i.i, label %ParseCommandLine.exit.i

.lr.ph.i.i:                                       ; preds = %bb.p
  %i.do = getelementptr inbounds nuw i8, ptr %28, i64 40 ; 8 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %28, i64 64 ; 9 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %28, i64 48 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %28, i64 56
  %.promoted = load i32, ptr %i.do, align 8
  %.promoted86 = load i32, ptr %i.dp, align 8
  %.promoted87 = load ptr, ptr %i.dq, align 8
  br label %bb.q

bb.q:                                             ; preds = %.thread2.i.i, %.lr.ph.i.i
  %i.ds = phi ptr [ %.promoted87, %.lr.ph.i.i ], [ %i.mu, %.thread2.i.i ] ; 8 uses
  %i.dt = phi i32 [ %.promoted86, %.lr.ph.i.i ], [ %i.mv, %.thread2.i.i ] ; 4 uses
  %i.du = phi i32 [ %.promoted, %.lr.ph.i.i ], [ %i.mw, %.thread2.i.i ] ; 5 uses
  %i.dv = phi i32 [ %.0.i.a, %.lr.ph.i.i ], [ %i.mx, %.thread2.i.i ] ; 8 uses
  %.021983.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.4223.i.i, %.thread2.i.i ] ; 5 uses
  %.022481.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.6.i.i, %.thread2.i.i ] ; 6 uses
  %i.dw = sext i32 %.021983.i.i to i64            ; 2 uses
  %i.dx = getelementptr inbounds [24 x i8], ptr %i.di, i64 %i.dw ; 2 uses
  %i.dy = sext i32 %.022481.i.i to i64            ; 2 uses
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.dy ; 3 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !16 ; 6 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !37
  %i.ec = icmp eq i8 %i.eb, 45
  br i1 %i.ec, label %bb.t, label %bb.by

bb.r:                                             ; preds = %.preheader.peel.newph
  %i.ed = sext i32 %i.gm to i64                   ; 3 uses
  %i.ee = sext i32 %i.ge to i64                   ; 4 uses
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.ee
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !16 ; 6 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !37
  %i.ei = icmp eq i8 %i.eh, 45
  br i1 %i.ei, label %bb.u, label %.thread.loopexit.loopexit

bb.s:                                             ; preds = %.thread2.i.i.jt2
  %i.ej = sext i32 %.4223.i.i.jt2 to i64
  %i.ek = getelementptr inbounds [24 x i8], ptr %i.di, i64 %i.ej ; 2 uses
  %i.el = sext i32 %.6.i.i.jt2 to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.el ; 3 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !16 ; 6 uses
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !37
  %i.ep = icmp eq i8 %i.eo, 45
  br i1 %i.ep, label %bb.v, label %.thread

bb.t:                                             ; preds = %bb.q
  %i.eq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ea, ptr noundef nonnull dereferenceable(5) @.str.4) #14
  %.not254.i.i = icmp eq i32 %i.eq, 0
  br i1 %.not254.i.i, label %.loopexit, label %bb.y

bb.u:                                             ; preds = %bb.r
  %i.er = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.eg, ptr noundef nonnull dereferenceable(5) @.str.4) #14
  %.not254.i.i.jt6 = icmp eq i32 %i.er, 0
  br i1 %.not254.i.i.jt6, label %.loopexit.loopexit, label %bb.z

bb.v:                                             ; preds = %bb.s
  %i.es = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.en, ptr noundef nonnull dereferenceable(5) @.str.4) #14
  %.not254.i.i.jt2 = icmp eq i32 %i.es, 0
  br i1 %.not254.i.i.jt2, label %.loopexit, label %bb.aa

.loopexit.loopexit:                               ; preds = %bb.u, %bb.ag
  %.lcssa496 = phi i32 [ %i.fr, %bb.ag ], [ %i.gm, %bb.u ]
  %.lcssa491 = phi i32 [ %i.fd, %bb.ag ], [ %i.ge, %bb.u ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.v, %bb.t
  %.022481.i.i216 = phi i32 [ %.022481.i.i, %bb.t ], [ %.6.i.i.jt2, %bb.v ], [ %.lcssa491, %.loopexit.loopexit ]
  %.021983.i.i212.a = phi i32 [ %.021983.i.i, %bb.t ], [ %.4223.i.i.jt2, %bb.v ], [ %.lcssa496, %.loopexit.loopexit ]
  %i.et = phi i32 [ %i.dv, %bb.t ], [ %i.nc, %bb.v ], [ %i.dv, %.loopexit.loopexit ]
  %i.eu = phi i32 [ %i.du, %bb.t ], [ 6, %bb.v ], [ 6, %.loopexit.loopexit ]
  %i.ev = phi i32 [ %i.dt, %bb.t ], [ %i.na, %bb.v ], [ 5, %.loopexit.loopexit ]
  %i.ew = phi ptr [ %i.ds, %bb.t ], [ %i.mz, %bb.v ], [ %i.ds, %.loopexit.loopexit ]
  %i.ex = icmp eq i32 %i.eu, 0
  br i1 %i.ex, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.loopexit
  store i32 2, ptr %i.do, align 8, !tbaa !38
  %i.ey = add nsw i32 %.022481.i.i216, 1
  br label %.thread2.i.i.jt2

bb.x:                                             ; preds = %.loopexit
  %i.ez = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite255.i.i = call i64 @fwrite(ptr nonnull @.str.20, i64 35, i64 1, ptr %i.ez) #15 ; 0 uses
  br label %ParseCommandLine.exit.thread.i

bb.y:                                             ; preds = %bb.t
  %i.fa = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ea, ptr noundef nonnull dereferenceable(10) @.str.15) #14
  %.not256.i.i = icmp eq i32 %i.fa, 0
  br i1 %.not256.i.i, label %bb.ab, label %.loopexit230

bb.z:                                             ; preds = %bb.u
  %i.fb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.eg, ptr noundef nonnull dereferenceable(10) @.str.15) #14
  %.not256.i.i.jt6 = icmp eq i32 %i.fb, 0
  br i1 %.not256.i.i.jt6, label %bb.ac, label %.loopexit230.loopexit.loopexit

bb.aa:                                            ; preds = %bb.v
  %i.fc = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.en, ptr noundef nonnull dereferenceable(10) @.str.15) #14
  %.not256.i.i.jt2 = icmp eq i32 %i.fc, 0
  br i1 %.not256.i.i.jt2, label %bb.ad, label %.loopexit230

bb.ab:                                            ; preds = %bb.y
  %i.fd = add nsw i32 %.022481.i.i, 2             ; 6 uses
  %i.fe = icmp slt i32 %i.y, %i.fd
  br i1 %i.fe, label %.loopexit231.a, label %bb.ae

bb.ac:                                            ; preds = %bb.z
  %i.ff = add nsw i32 %i.ge, 2                    ; 2 uses
  %i.fg = icmp slt i32 %i.y, %i.ff
  br i1 %i.fg, label %.loopexit231.a, label %.preheader.peel.newph, !llvm.loop !24

bb.ad:                                            ; preds = %bb.aa
  %i.fh = add nsw i32 %.6.i.i.jt2, 2
  %i.fi = icmp slt i32 %i.y, %i.fh
  br i1 %i.fi, label %.loopexit231.a, label %.loopexit233

.loopexit231.a:                                   ; preds = %bb.ab, %bb.ac, %bb.ai, %bb.ad
  %i.fj = phi ptr [ %i.fx, %bb.ai ], [ %i.en, %bb.ad ], [ %i.eg, %bb.ac ], [ %i.ea, %bb.ab ]
  %i.fk = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.fl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fk, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.fj) #17 ; 0 uses
  br label %ParseCommandLine.exit.i

bb.ae:                                            ; preds = %bb.ab
  switch i32 %i.du, label %.loopexit233 [
    i32 0, label %.preheader
    i32 6, label %.preheader
  ]

.preheader:                                       ; preds = %bb.ae, %bb.ae
  store i32 6, ptr %i.do, align 8, !tbaa !38
  switch i32 %i.dt, label %.loopexit599 [
    i32 0, label %.thread2.i.i.jt6.peel
    i32 5, label %.thread2.i.i.jt6.peel
  ]

.thread2.i.i.jt6.peel:                            ; preds = %.preheader, %.preheader
  %i.fm = getelementptr inbounds [24 x i8], ptr %i.di, i64 %i.dw
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.dy
  store i32 5, ptr %i.dp, align 8, !tbaa !40
  %i.fo = getelementptr i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !16
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !42
  %i.fr = add nsw i32 %.021983.i.i, 1             ; 5 uses
  %i.fs = icmp slt i32 %i.fd, %i.y
  br i1 %i.fs, label %bb.af, label %ParseCommandLine.exit.i

bb.af:                                            ; preds = %.thread2.i.i.jt6.peel
  %i.ft = sext i32 %i.fr to i64                   ; 2 uses
  %i.fu = getelementptr inbounds [24 x i8], ptr %i.di, i64 %i.ft ; 2 uses
  %i.fv = sext i32 %i.fd to i64                   ; 2 uses
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.fv ; 3 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !16 ; 6 uses
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !37
  %i.fz = icmp eq i8 %i.fy, 45
  br i1 %i.fz, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %i.ga = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fx, ptr noundef nonnull dereferenceable(5) @.str.4) #14
  %.not254.i.i.jt6.peel = icmp eq i32 %i.ga, 0
  br i1 %.not254.i.i.jt6.peel, label %.loopexit.loopexit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fx, ptr noundef nonnull dereferenceable(10) @.str.15) #14
  %.not256.i.i.jt6.peel = icmp eq i32 %i.gb, 0
  br i1 %.not256.i.i.jt6.peel, label %bb.ai, label %.loopexit230

bb.ai:                                            ; preds = %bb.ah
  %i.gc = add nsw i32 %.022481.i.i, 4             ; 2 uses
  %i.gd = icmp slt i32 %i.y, %i.gc
  br i1 %i.gd, label %.loopexit231.a, label %.preheader.peel.newph

.preheader.peel.newph:                            ; preds = %bb.ai, %bb.ac
  %i.ge = phi i32 [ %i.ff, %bb.ac ], [ %i.gc, %bb.ai ] ; 6 uses
  %i.gf = phi i64 [ %i.ee, %bb.ac ], [ %i.fv, %bb.ai ]
  %i.gg = phi i64 [ %i.ed, %bb.ac ], [ %i.ft, %bb.ai ]
  %.021983.i.i214 = phi i32 [ %i.gm, %bb.ac ], [ %i.fr, %bb.ai ]
  %i.gh = getelementptr inbounds [24 x i8], ptr %i.di, i64 %i.gg
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.gf
  store i32 5, ptr %i.dp, align 8, !tbaa !40
  %i.gj = getelementptr i8, ptr %i.gi, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !16
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !42
  %i.gm = add nsw i32 %.021983.i.i214, 1          ; 5 uses
  %i.gn = icmp slt i32 %i.ge, %i.y
  br i1 %i.gn, label %bb.r, label %ParseCommandLine.exit.i

.loopexit233:                                     ; preds = %bb.ae, %bb.ad
  %i.go = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite257.i.i = call i64 @fwrite(ptr nonnull @.str.20, i64 35, i64 1, ptr %i.go) #15 ; 0 uses
end_hunk_0
begin_hunk_1_@main:bb.a
  %i.adm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.97) ; 0 uses
  %.pre72.i.i = load i32, ptr %i.c, align 4, !tbaa !47
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %bb.ii
  %i.adn = phi i32 [ %.pre72.i.i, %bb.ij ], [ %i.adk, %bb.ii ] ; 2 uses
  %i.ado = and i32 %i.adn, 8
  %.not43.i.i = icmp eq i32 %i.ado, 0
  br i1 %.not43.i.i, label %bb.im, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.adp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.98) ; 0 uses
  %.pre73.i.i = load i32, ptr %i.c, align 4, !tbaa !47
  br label %bb.im

bb.im:                                            ; preds = %bb.il, %bb.ik
  %i.adq = phi i32 [ %.pre73.i.i, %bb.il ], [ %i.adn, %bb.ik ] ; 2 uses
  %i.adr = and i32 %i.adq, 4
  %.not44.i.i = icmp eq i32 %i.adr, 0
  br i1 %.not44.i.i, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.ads = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.99) ; 0 uses
  %.pre74.i.i = load i32, ptr %i.c, align 4, !tbaa !47
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %bb.im
  %i.adt = phi i32 [ %.pre74.i.i, %bb.in ], [ %i.adq, %bb.im ]
  %i.adu = and i32 %i.adt, 16
  %.not45.i.i = icmp eq i32 %i.adu, 0
  br i1 %.not45.i.i, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.adv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.100) ; 0 uses
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %bb.io
  %putchar.i.i = call i32 @putchar(i32 10)        ; 0 uses
  %i.adw = load i32, ptr %i.c, align 4, !tbaa !47 ; 2 uses
  %i.adx = and i32 %i.adw, 2
  %.not46.i.i = icmp eq i32 %i.adx, 0
  br i1 %.not46.i.i, label %bb.iv, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.ady = call i32 @WebPMuxGetAnimationParams(ptr noundef nonnull %i.acu, ptr noundef nonnull %2) #13 ; 0 uses
  %i.adz = load i32, ptr %2, align 4, !tbaa !49
  %i.aea = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aeb = load i32, ptr %i.aea, align 4, !tbaa !50
  %i.aec = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.102, i32 noundef %i.adz, i32 noundef %i.aeb) ; 0 uses
  %i.aed = call i32 @WebPMuxNumChunks(ptr noundef nonnull %i.acu, i32 noundef 3, ptr noundef nonnull %i.d) #13 ; 0 uses
  %i.aee = load i32, ptr %i.d, align 4, !tbaa !47
  %i.aef = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.103, ptr noundef nonnull @.str.35, i32 noundef %i.aee) ; 0 uses
  %i.aeg = load i32, ptr %i.d, align 4, !tbaa !47
  %i.aeh = icmp sgt i32 %i.aeg, 0
  br i1 %i.aeh, label %bb.is, label %.thread60.i.i

bb.is:                                            ; preds = %bb.ir
  %i.aei = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.104) ; 0 uses
  %i.aej = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.105) ; 0 uses
  %puts.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.63) ; 0 uses
  %i.aek = load i32, ptr %i.d, align 4, !tbaa !47
  %.not4768.i.i = icmp slt i32 %i.aek, 1
  br i1 %.not4768.i.i, label %.thread60.i.i, label %.lr.ph.i.i6

.lr.ph.i.i6:                                      ; preds = %bb.is
  %i.ael = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.aen = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aeo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aep = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.aeq = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aer = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.aes = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aet = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.it

bb.it:                                            ; preds = %bb.iu, %.lr.ph.i.i6
  %.03669.i.i = phi i32 [ 1, %.lr.ph.i.i6 ], [ %i.afx, %bb.iu ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.aeu = call i32 @WebPMuxGetFrame(ptr noundef nonnull %i.acu, i32 noundef %.03669.i.i, ptr noundef nonnull %3) #13
  %i.aev = icmp eq i32 %i.aeu, 1
  br i1 %i.aev, label %bb.iu, label %.critedge.i291.i

bb.iu:                                            ; preds = %bb.it
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.aew = load ptr, ptr %3, align 8, !tbaa !60
  %i.aex = load i64, ptr %i.ael, align 8, !tbaa !61
  %i.aey = call i32 @WebPGetFeaturesInternal(ptr noundef %i.aew, i64 noundef %i.aex, ptr noundef nonnull %4, i32 noundef 528) #13 ; 0 uses
  %i.aez = load i32, ptr %4, align 4, !tbaa !63
  %i.afa = load i32, ptr %i.aem, align 4, !tbaa !64
  %i.afb = load i32, ptr %i.aen, align 4, !tbaa !65
  %.not48.i.i = icmp eq i32 %i.afb, 0
  %i.afc = select i1 %.not48.i.i, ptr @.str.109, ptr @.str.108
  %i.afd = load i32, ptr %i.aeo, align 8, !tbaa !54
  %i.afe = load i32, ptr %i.aep, align 4, !tbaa !53
  %i.aff = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.107, i32 noundef %.03669.i.i, i32 noundef %i.aez, i32 noundef %i.afa, ptr noundef nonnull %i.afc, i32 noundef %i.afd, i32 noundef %i.afe) ; 0 uses
  %i.afg = load i32, ptr %i.aeq, align 8, !tbaa !55
  %i.afh = icmp eq i32 %i.afg, 0
  %i.afi = select i1 %i.afh, ptr @.str.110, ptr @.str.111
  %i.afj = load i32, ptr %i.aer, align 4, !tbaa !56
  %i.afk = icmp eq i32 %i.afj, 0
  %i.afl = select i1 %i.afk, ptr @.str.108, ptr @.str.109
  %i.afm = load i32, ptr %i.aes, align 8, !tbaa !59
  %i.afn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.112, i32 noundef %i.afm, ptr noundef nonnull %i.afi, ptr noundef nonnull %i.afl) ; 0 uses
  %i.afo = load i64, ptr %i.ael, align 8, !tbaa !61
  %i.afp = trunc i64 %i.afo to i32
  %i.afq = load i32, ptr %i.aet, align 4, !tbaa !66 ; 2 uses
  %i.afr = icmp eq i32 %i.afq, 1
  %i.afs = icmp eq i32 %i.afq, 2
  %i.aft = select i1 %i.afs, ptr @.str.115, ptr @.str.116
  %i.afu = select i1 %i.afr, ptr @.str.114, ptr %i.aft
  %i.afv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.113, i32 noundef %i.afp, ptr noundef nonnull %i.afu) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.afw = load ptr, ptr %3, align 8, !tbaa !21
  call void @WebPFree(ptr noundef %i.afw) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.afx = add nuw nsw i32 %.03669.i.i, 1
  %i.afy = load i32, ptr %i.d, align 4, !tbaa !47
  %.not47.not.i.i = icmp slt i32 %.03669.i.i, %i.afy
  br i1 %.not47.not.i.i, label %bb.it, label %.thread60.i.i, !llvm.loop !31

.thread60.i.i:                                    ; preds = %bb.iu, %bb.is, %bb.ir
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  %.pre75.i.i = load i32, ptr %i.c, align 4, !tbaa !47
  br label %bb.iv

.critedge.i291.i:                                 ; preds = %bb.it
  %i.afz = load ptr, ptr %3, align 8, !tbaa !21
  call void @WebPFree(ptr noundef %i.afz) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.aga = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.agb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aga, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.35, i32 noundef %.03669.i.i) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %DisplayInfo.exit.i

bb.iv:                                            ; preds = %.thread60.i.i, %bb.iq
  %i.agc = phi i32 [ %.pre75.i.i, %.thread60.i.i ], [ %i.adw, %bb.iq ] ; 2 uses
  %i.agd = and i32 %i.agc, 32
  %.not50.i.i = icmp eq i32 %i.agd, 0
  br i1 %.not50.i.i, label %bb.ix, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.age = call i32 @WebPMuxGetChunk(ptr noundef nonnull %i.acu, ptr noundef nonnull @.str.70, ptr noundef nonnull %5) #13 ; 0 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.agg = load i64, ptr %i.agf, align 8, !tbaa !22
  %i.agh = trunc i64 %i.agg to i32
  %i.agi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.118, i32 noundef %i.agh) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %.pre76.i.i = load i32, ptr %i.c, align 4, !tbaa !47
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %bb.iv
  %i.agj = phi i32 [ %.pre76.i.i, %bb.iw ], [ %i.agc, %bb.iv ] ; 2 uses
  %i.agk = and i32 %i.agj, 8
  %.not51.i.i = icmp eq i32 %i.agk, 0
  br i1 %.not51.i.i, label %bb.iz, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.agl = call i32 @WebPMuxGetChunk(ptr noundef nonnull %i.acu, ptr noundef nonnull @.str.68, ptr noundef nonnull %6) #13 ; 0 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.agn = load i64, ptr %i.agm, align 8, !tbaa !22
  %i.ago = trunc i64 %i.agn to i32
  %i.agp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.119, i32 noundef %i.ago) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %.pre77.i.i = load i32, ptr %i.c, align 4, !tbaa !47
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.ix
  %i.agq = phi i32 [ %.pre77.i.i, %bb.iy ], [ %i.agj, %bb.ix ] ; 2 uses
  %i.agr = and i32 %i.agq, 4
  %.not52.i.i = icmp eq i32 %i.agr, 0
  br i1 %.not52.i.i, label %bb.jb, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.ags = call i32 @WebPMuxGetChunk(ptr noundef nonnull %i.acu, ptr noundef nonnull @.str.69, ptr noundef nonnull %7) #13 ; 0 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.agu = load i64, ptr %i.agt, align 8, !tbaa !22
  %i.agv = trunc i64 %i.agu to i32
  %i.agw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.120, i32 noundef %i.agv) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %.pre78.i.i = load i32, ptr %i.c, align 4, !tbaa !47
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.iz
  %i.agx = phi i32 [ %.pre78.i.i, %bb.ja ], [ %i.agq, %bb.iz ]
  %i.agy = and i32 %i.agx, 18
  %or.cond.i289.i = icmp eq i32 %i.agy, 16
  br i1 %or.cond.i289.i, label %bb.jc, label %DisplayInfo.exit.i

bb.jc:                                            ; preds = %bb.jb
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.agz = call i32 @WebPMuxGetFrame(ptr noundef nonnull %i.acu, i32 noundef 1, ptr noundef nonnull %8) #13
  %i.aha = icmp eq i32 %i.agz, 1                  ; 2 uses
  br i1 %i.aha, label %.thread63.i.i, label %.critedge66.i.i

.thread63.i.i:                                    ; preds = %bb.jc
  %i.ahb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ahc = load i64, ptr %i.ahb, align 8, !tbaa !61
  %i.ahd = trunc i64 %i.ahc to i32
  %i.ahe = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.121, i32 noundef %i.ahd) ; 0 uses
  %i.ahf = load ptr, ptr %8, align 8, !tbaa !21
  call void @WebPFree(ptr noundef %i.ahf) #13
  br label %.sink.split.i.i

.critedge66.i.i:                                  ; preds = %bb.jc
  %i.ahg = load ptr, ptr %8, align 8, !tbaa !21
  call void @WebPFree(ptr noundef %i.ahg) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.ahh = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite.i290.i = call i64 @fwrite(ptr nonnull @.str.122, i64 29, i64 1, ptr %i.ahh) #15 ; 0 uses
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.critedge66.i.i, %.thread63.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %31 = zext i1 %i.aha to i32
  br label %DisplayInfo.exit.i

DisplayInfo.exit.i:                               ; preds = %.sink.split.i.i, %bb.jb, %.critedge.i291.i, %bb.if, %bb.id
  %.7.i.i = phi i32 [ 0, %bb.id ], [ 1, %bb.if ], [ 0, %.critedge.i291.i ], [ 1, %bb.jb ], [ %31, %.sink.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %Process.exit

Process.exit:                                     ; preds = %InitializeConfig.exit, %CreateMux.exit.thread.i, %GetFrame.exit.i, %bb.dz, %bb.ea, %bb.eb, %.thread360.i, %CreateMux.exit253.thread.i, %bb.fg, %bb.fi, %.thread370.i, %.thread381.i, %bb.ge, %WriteWebP.exit.i, %.thread402.i, %CreateMux.exit280.thread.i, %bb.hu, %bb.hv, %WriteWebP.exit283.i, %CreateMux.exit287.thread.i, %DisplayInfo.exit.i
  %.7327.i = phi ptr [ null, %InitializeConfig.exit ], [ null, %CreateMux.exit.thread.i ], [ %i.nx, %bb.eb ], [ %i.nx, %GetFrame.exit.i ], [ %i.nx, %bb.ea ], [ %i.nx, %bb.dz ], [ null, %bb.ge ], [ %.2322.i, %WriteWebP.exit.i ], [ %i.qn, %.thread360.i ], [ null, %CreateMux.exit253.thread.i ], [ %i.tq, %bb.fg ], [ %i.tq, %bb.fi ], [ %.0320.ph.i, %.thread370.i ], [ %.1321.ph.i, %.thread381.i ], [ %.6326.i, %.thread402.i ], [ null, %CreateMux.exit280.thread.i ], [ %i.abp, %WriteWebP.exit283.i ], [ %i.abp, %bb.hu ], [ %i.abp, %bb.hv ], [ null, %CreateMux.exit287.thread.i ], [ %i.acu, %DisplayInfo.exit.i ]
  %.16.i = phi i32 [ 1, %InitializeConfig.exit ], [ 0, %CreateMux.exit.thread.i ], [ 0, %bb.eb ], [ %i.pv, %GetFrame.exit.i ], [ %i.ql, %bb.ea ], [ 0, %bb.dz ], [ 0, %bb.ge ], [ %.0.i269.i, %WriteWebP.exit.i ], [ 0, %.thread360.i ], [ 0, %CreateMux.exit253.thread.i ], [ 0, %bb.fg ], [ 0, %bb.fi ], [ 0, %.thread370.i ], [ 0, %.thread381.i ], [ %.15.i, %.thread402.i ], [ 0, %CreateMux.exit280.thread.i ], [ %.0.i282.i, %WriteWebP.exit283.i ], [ 0, %bb.hu ], [ 0, %bb.hv ], [ 0, %CreateMux.exit287.thread.i ], [ %.7.i.i, %DisplayInfo.exit.i ]
  call void @WebPMuxDelete(ptr noundef %.7327.i) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  %i.ahi = icmp eq i32 %.16.i, 0
  %i.ahj = zext i1 %i.ahi to i32
  br label %bb.jd

InitializeConfig.exit.thread:                     ; preds = %ParseCommandLine.exit.thread.i, %bb.n, %bb.o, %bb.a
  call fastcc void @PrintHelp()
  br label %bb.jd

bb.jd:                                            ; preds = %InitializeConfig.exit.thread, %Process.exit
  %.0 = phi i32 [ %i.ahj, %Process.exit ], [ 1, %InitializeConfig.exit.thread ]
  %i.ahk = getelementptr inbounds nuw i8, ptr %28, i64 72
  %i.ahl = load ptr, ptr %i.ahk, align 8, !tbaa !20
  call void @free(ptr noundef %i.ahl) #13
  call void @ExUtilDeleteCommandLineArguments(ptr noundef nonnull %28) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #13
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @PrintHelp() unnamed_addr #2 {
bb.a:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %puts1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %puts2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %puts3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %puts4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %puts5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %puts6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  %puts7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  %puts8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  %puts9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  %puts10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %puts11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  %puts12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12) ; 0 uses
  %puts13 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %puts14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14) ; 0 uses
  %puts15 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15) ; 0 uses
  %puts16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16) ; 0 uses
  %putchar17 = tail call i32 @putchar(i32 10)     ; 0 uses
  %puts18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17) ; 0 uses
  %puts19 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18) ; 0 uses
  %puts20 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19) ; 0 uses
  %puts21 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.20) ; 0 uses
  %puts22 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.21) ; 0 uses
  %puts23 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.22) ; 0 uses
  %puts24 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.23) ; 0 uses
  %puts25 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.24) ; 0 uses
  %puts26 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.25) ; 0 uses
  %puts27 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.26) ; 0 uses
  %putchar28 = tail call i32 @putchar(i32 10)     ; 0 uses
  %puts29 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27) ; 0 uses
  %puts30 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.28) ; 0 uses
  %puts31 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.29) ; 0 uses
  %puts32 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.30) ; 0 uses
  %puts33 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.31) ; 0 uses
  %puts34 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.32) ; 0 uses
  %puts35 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.33) ; 0 uses
  %puts36 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.34) ; 0 uses
  %puts37 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.35) ; 0 uses
  %puts38 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.36) ; 0 uses
  %putchar39 = tail call i32 @putchar(i32 10)     ; 0 uses
  %puts40 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.37) ; 0 uses
  %puts41 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.38) ; 0 uses
  %puts42 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.39) ; 0 uses
  %puts43 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.40) ; 0 uses
  %puts44 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.41) ; 0 uses
  %putchar45 = tail call i32 @putchar(i32 10)     ; 0 uses
  %puts46 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.42) ; 0 uses
  %puts47 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.43) ; 0 uses
  %puts48 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.44) ; 0 uses
  %puts49 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.45) ; 0 uses
  %puts50 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.46) ; 0 uses
  %puts51 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.47) ; 0 uses
  %puts52 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.48) ; 0 uses
  %puts53 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.49) ; 0 uses
  %putchar54 = tail call i32 @putchar(i32 10)     ; 0 uses
  %puts55 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.50) ; 0 uses
  %puts56 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.51) ; 0 uses
  %puts57 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.52) ; 0 uses
  %putchar58 = tail call i32 @putchar(i32 10)     ; 0 uses
  %puts59 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.53) ; 0 uses
  %puts60 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.54) ; 0 uses
  %puts61 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.55) ; 0 uses
  %puts62 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.56) ; 0 uses
  %puts63 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.57) ; 0 uses
  %puts64 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.58) ; 0 uses
  %puts65 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.59) ; 0 uses
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.183) ; 0 uses
  %puts66 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.60) ; 0 uses
  %puts67 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.61) ; 0 uses
  %puts68 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.62) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @DeleteConfig(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  tail call void @free(ptr noundef %i.b) #13
  tail call void @ExUtilDeleteCommandLineArguments(ptr noundef nonnull %0) #13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @ExUtilInitCommandLineArguments(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

declare i32 @WebPGetMuxVersion() local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare i32 @WebPMuxGetChunk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @WriteData(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
sub_0:
  %i.a = load i8, ptr %0, align 1
  %.not17 = icmp eq i8 %i.a, 45
  br i1 %.not17, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.a, label %.tail.thread

.tail.thread:                                     ; preds = %sub_0, %.tail
  %i.e = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str.82)
  br label %bb.b

bb.a:                                             ; preds = %.tail
  %i.f = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.g = tail call ptr @ImgIoUtilSetBinaryMode(ptr noundef %i.f) #13
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.tail.thread
  %i.h = phi ptr [ %i.e, %.tail.thread ], [ %i.g, %bb.a ] ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.83, ptr noundef nonnull %0) #17 ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %1, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22
  %i.o = tail call i64 @fwrite(ptr noundef %i.l, i64 noundef %i.n, i64 noundef 1, ptr noundef nonnull %i.h)
  %.not15 = icmp eq i64 %i.o, 1
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !18 ; 2 uses
  br i1 %.not15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.84, ptr noundef nonnull %0) #17 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.m, align 8, !tbaa !22
  %i.s = trunc i64 %i.r to i32
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.85, ptr noundef nonnull %0, i32 noundef %i.s) #17 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ 1, %bb.f ]        ; 2 uses
  %i.u = load ptr, ptr @stdout, align 8, !tbaa !18
  %.not16 = icmp eq ptr %i.h, %i.u
  br i1 %.not16, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = tail call i32 @fclose(ptr noundef nonnull %i.h) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.c
  %.013 = phi i32 [ 0, %bb.c ], [ %.0, %bb.h ], [ %.0, %bb.g ]
  ret i32 %.013
}

declare i32 @ExUtilGetInt(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ExUtilReadFileToWebPData(ptr noundef, ptr noundef) local_unnamed_addr #4
end_hunk_1

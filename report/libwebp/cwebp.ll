Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/cwebp?download=true
inline.NumInlined: 29
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0
@.str.68 = private unnamed_addr constant [5 x i8] c"icon\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.70 = private unnamed_addr constant [32 x i8] c"Error! Unrecognized preset: %s\0A\00", align 1
@.str.71 = private unnamed_addr constant [52 x i8] c"Error! Could initialize configuration with preset.\0A\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"-metadata\00", align 1
@main.kTokens = internal unnamed_addr constant [5 x { ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8] } { ptr @.str.73, i32 7, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.22, i32 0, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.74, i32 1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.75, i32 2, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.76, i32 4, [4 x i8] zeroinitializer }], align 16
@.str.73 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"exif\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"icc\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"xmp\00", align 1
@.str.77 = private unnamed_addr constant [37 x i8] c"Error! Unknown metadata type '%.*s'\0A\00", align 1
@verbose = internal unnamed_addr global i1 false, align 4
@.str.80 = private unnamed_addr constant [28 x i8] c"Error! Unknown option '%s'\0A\00", align 1
@.str.81 = private unnamed_addr constant [26 x i8] c"No input file specified!\0A\00", align 1
@.str.82 = private unnamed_addr constant [33 x i8] c"Invalid lossless preset (-z %d)\0A\00", align 1
@.str.83 = private unnamed_addr constant [102 x i8] c"Encoding for specified size or PSNR is not supported for lossless encoding. Ignoring such option(s)!\0A\00", align 1
@.str.84 = private unnamed_addr constant [85 x i8] c"Partition limit option is not required for lossless encoding. Ignoring this option!\0A\00", align 1
@.str.85 = private unnamed_addr constant [31 x i8] c"Error! Invalid configuration.\0A\00", align 1
@.str.86 = private unnamed_addr constant [44 x i8] c"Error! Cannot read input picture file '%s'\0A\00", align 1
@.str.87 = private unnamed_addr constant [27 x i8] c"Time to read input: %.3fs\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.89 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.90 = private unnamed_addr constant [37 x i8] c"Error! Cannot open output file '%s'\0A\00", align 1
@.str.91 = private unnamed_addr constant [18 x i8] c"Saving file '%s'\0A\00", align 1
@.str.92 = private unnamed_addr constant [54 x i8] c"No output file specified (no -o flag). Encoding will\0A\00", align 1
@.str.93 = private unnamed_addr constant [43 x i8] c"be performed, but its results discarded.\0A\0A\00", align 1
@.str.94 = private unnamed_addr constant [28 x i8] c"Error! Cannot crop picture\0A\00", align 1
@.str.95 = private unnamed_addr constant [38 x i8] c"Error! Cannot copy temporary picture\0A\00", align 1
@.str.96 = private unnamed_addr constant [40 x i8] c"Error! Cannot resize temporary picture\0A\00", align 1
@.str.97 = private unnamed_addr constant [30 x i8] c"Error! Cannot resize picture\0A\00", align 1
@.str.98 = private unnamed_addr constant [36 x i8] c"Time to crop/resize picture: %.3fs\0A\00", align 1
@.str.99 = private unnamed_addr constant [38 x i8] c"Error! Cannot encode picture as WebP\0A\00", align 1
@.str.100 = private unnamed_addr constant [21 x i8] c"Error code: %d (%s)\0A\00", align 1
@kErrorMessages = internal unnamed_addr constant [11 x ptr] [ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196], align 16
@.str.101 = private unnamed_addr constant [31 x i8] c"Time to encode picture: %.3fs\0A\00", align 1
@.str.102 = private unnamed_addr constant [45 x i8] c"Error! Cannot decode encoded WebP bitstream\0A\00", align 1
@.str.103 = private unnamed_addr constant [56 x i8] c"Warning: can't dump file (-d option) in lossless mode.\0A\00", align 1
@.str.104 = private unnamed_addr constant [35 x i8] c"Warning, couldn't dump picture %s\0A\00", align 1
@.str.105 = private unnamed_addr constant [26 x i8] c"Error writing WebP file!\0A\00", align 1
@main.distortion_names = internal unnamed_addr constant [3 x ptr] [ptr @.str.106, ptr @.str.107, ptr @.str.108], align 16
@.str.106 = private unnamed_addr constant [5 x i8] c"PSNR\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"SSIM\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"LSIM\00", align 1
@.str.109 = private unnamed_addr constant [39 x i8] c"Error while computing the distortion.\0A\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.111 = private unnamed_addr constant [41 x i8] c"B:%.2f G:%.2f R:%.2f A:%.2f  Total:%.2f\0A\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"%7d %.4f\0A\00", align 1
@.str.169 = private unnamed_addr constant [28 x i8] c"                           \00", align 1
@.str.182 = private unnamed_addr constant [31 x i8] c"Supported input formats:\0A  %s\0A\00", align 1
@.str.183 = private unnamed_addr constant [34 x i8] c"Error! Could not process file %s\0A\00", align 1
@.str.184 = private unnamed_addr constant [62 x i8] c"input data doesn't have the expected size (%d instead of %d)\0A\00", align 1
@.str.185 = private unnamed_addr constant [20 x i8] c"[%s]: %3d %%      \0D\00", align 1
@.str.186 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.187 = private unnamed_addr constant [48 x i8] c"OUT_OF_MEMORY: Out of memory allocating objects\00", align 1
@.str.188 = private unnamed_addr constant [65 x i8] c"BITSTREAM_OUT_OF_MEMORY: Out of memory re-allocating byte buffer\00", align 1
@.str.189 = private unnamed_addr constant [50 x i8] c"NULL_PARAMETER: NULL parameter passed to function\00", align 1
@.str.190 = private unnamed_addr constant [48 x i8] c"INVALID_CONFIGURATION: configuration is invalid\00", align 1
@.str.191 = private unnamed_addr constant [88 x i8] c"BAD_DIMENSION: Bad picture dimension. Maximum width and height allowed is 16383 pixels.\00", align 1
@.str.192 = private unnamed_addr constant [274 x i8] c"PARTITION0_OVERFLOW: Partition #0 is too big to fit 512k.\0ATo reduce the size of this partition, try using less segments with the -segments option, and eventually reduce the number of header bits using -partition_limit. More details are available in the manual (`man cwebp`)\00", align 1
@.str.193 = private unnamed_addr constant [52 x i8] c"PARTITION_OVERFLOW: Partition is too big to fit 16M\00", align 1
@.str.194 = private unnamed_addr constant [48 x i8] c"BAD_WRITE: Picture writer returned an I/O error\00", align 1
@.str.195 = private unnamed_addr constant [49 x i8] c"FILE_TOO_BIG: File would be too big to fit in 4G\00", align 1
@.str.196 = private unnamed_addr constant [45 x i8] c"USER_ABORT: encoding abort requested by user\00", align 1
@.str.197 = private unnamed_addr constant [14 x i8] c"P5\0A%d %d\0A255\0A\00", align 1
@__const.WriteWebPWithMetadata.kVP8XHeader = private unnamed_addr constant [9 x i8] c"VP8X\0A\00\00\00\00", align 1
@.str.198 = private unnamed_addr constant [64 x i8] c"Error! Addition of metadata would exceed container size limit.\0A\00", align 1
@.str.201 = private unnamed_addr constant [5 x i8] c"ICCP\00", align 1
@.str.202 = private unnamed_addr constant [5 x i8] c"EXIF\00", align 1
@.str.203 = private unnamed_addr constant [5 x i8] c"XMP \00", align 1
@.str.204 = private unnamed_addr constant [11 x i8] c"%7d %2.2f\0A\00", align 1
@.str.205 = private unnamed_addr constant [15 x i8] c"File:      %s\0A\00", align 1
@.str.206 = private unnamed_addr constant [20 x i8] c"Dimension: %d x %d\0A\00", align 1
@.str.207 = private unnamed_addr constant [32 x i8] c"Output:    %d bytes (%.2f bpp)\0A\00", align 1
@.str.208 = private unnamed_addr constant [5 x i8] c"ARGB\00", align 1
@.str.209 = private unnamed_addr constant [39 x i8] c"Lossless-%s compressed size: %d bytes\0A\00", align 1
@.str.210 = private unnamed_addr constant [48 x i8] c"  * Header size: %d bytes, image data size: %d\0A\00", align 1
@.str.211 = private unnamed_addr constant [28 x i8] c"  * Lossless features used:\00", align 1
@.str.212 = private unnamed_addr constant [12 x i8] c" PREDICTION\00", align 1
@.str.213 = private unnamed_addr constant [23 x i8] c" CROSS-COLOR-TRANSFORM\00", align 1
@.str.214 = private unnamed_addr constant [16 x i8] c" SUBTRACT-GREEN\00", align 1
@.str.215 = private unnamed_addr constant [9 x i8] c" PALETTE\00", align 1
@.str.216 = private unnamed_addr constant [33 x i8] c"  * Precision Bits: histogram=%d\00", align 1
@.str.217 = private unnamed_addr constant [15 x i8] c" prediction=%d\00", align 1
@.str.218 = private unnamed_addr constant [16 x i8] c" cross-color=%d\00", align 1
@.str.219 = private unnamed_addr constant [11 x i8] c" cache=%d\0A\00", align 1
@.str.220 = private unnamed_addr constant [24 x i8] c"  * Palette size:   %d\0A\00", align 1
@.str.221 = private unnamed_addr constant [22 x i8] c"Dimension: %d x %d%s\0A\00", align 1
@.str.222 = private unnamed_addr constant [14 x i8] c" (with alpha)\00", align 1
@.str.223 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.224 = private unnamed_addr constant [87 x i8] c"Output:    %d bytes Y-U-V-All-PSNR %2.2f %2.2f %2.2f   %2.2f dB\0A           (%.2f bpp)\0A\00", align 1
@.str.225 = private unnamed_addr constant [121 x i8] c"block count:  intra4:     %6d  (%.2f%%)\0A              intra16:    %6d  (%.2f%%)\0A              skipped:    %6d  (%.2f%%)\0A\00", align 1
@.str.226 = private unnamed_addr constant [87 x i8] c"bytes used:  header:         %6d  (%.1f%%)\0A             mode-partition: %6d  (%.1f%%)\0A\00", align 1
@.str.227 = private unnamed_addr constant [44 x i8] c"             transparency:   %6d (%.1f dB)\0A\00", align 1
@.str.228 = private unnamed_addr constant [68 x i8] c" Residuals bytes  |segment 1|segment 2|segment 3|segment 4|  total\0A\00", align 1
@.str.229 = private unnamed_addr constant [19 x i8] c"  intra4-coeffs:  \00", align 1
@.str.230 = private unnamed_addr constant [19 x i8] c" intra16-coeffs:  \00", align 1
@.str.231 = private unnamed_addr constant [19 x i8] c"  chroma coeffs:  \00", align 1
@.str.232 = private unnamed_addr constant [19 x i8] c"    macroblocks:  \00", align 1
@.str.233 = private unnamed_addr constant [19 x i8] c"      quantizer:  \00", align 1
@.str.234 = private unnamed_addr constant [19 x i8] c"   filter level:  \00", align 1
@.str.235 = private unnamed_addr constant [29 x i8] c"------------------+---------\00", align 1
@.str.236 = private unnamed_addr constant [50 x i8] c"+---------+---------+---------+-----------------\0A\00", align 1
@.str.237 = private unnamed_addr constant [19 x i8] c" segments total:  \00", align 1
@.str.238 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.239 = private unnamed_addr constant [7 x i8] c"| %7d \00", align 1
@.str.240 = private unnamed_addr constant [17 x i8] c"| %7d  (%.1f%%)\0A\00", align 1
@.str.241 = private unnamed_addr constant [12 x i8] c"|     %3d%%\00", align 1
@.str.242 = private unnamed_addr constant [7 x i8] c"| %7d\0A\00", align 1
@.str.243 = private unnamed_addr constant [3 x i8] c"|\0A\00", align 1
@.str.245 = private unnamed_addr constant [3 x i8] c"+.\00", align 1
@.str.246 = private unnamed_addr constant [5 x i8] c".-*X\00", align 1
@.str.247 = private unnamed_addr constant [6 x i8] c"%.2d \00", align 1
@.str.248 = private unnamed_addr constant [5 x i8] c"%3d \00", align 1
@.str.249 = private unnamed_addr constant [8 x i8] c"0x%.2x \00", align 1
@.str.250 = private unnamed_addr constant [11 x i8] c"Metadata:\0A\00", align 1
@.str.251 = private unnamed_addr constant [29 x i8] c"  * ICC profile:  %6d bytes\0A\00", align 1
@.str.252 = private unnamed_addr constant [29 x i8] c"  * EXIF data:    %6d bytes\0A\00", align 1
@.str.253 = private unnamed_addr constant [29 x i8] c"  * XMP data:     %6d bytes\0A\00", align 1
@str = private unnamed_addr constant [8 x i8] c"Usage:\0A\00", align 1
@str.1 = private unnamed_addr constant [56 x i8] c"   cwebp [options] -q quality input.png -o output.webp\0A\00", align 1
@str.2 = private unnamed_addr constant [54 x i8] c"where quality is between 0 (poor) to 100 (very good).\00", align 1
@str.3 = private unnamed_addr constant [29 x i8] c"Typical value is around 80.\0A\00", align 1
@str.4 = private unnamed_addr constant [58 x i8] c"Try -longhelp for an exhaustive list of advanced options.\00", align 1
@str.5 = private unnamed_addr constant [7 x i8] c"Usage:\00", align 1
@str.6 = private unnamed_addr constant [56 x i8] c" cwebp [-preset <...>] [options] in_file [-o out_file]\0A\00", align 1
@str.7 = private unnamed_addr constant [102 x i8] c"If input size (-s) for an image is not specified, it is\0Aassumed to be a PNG, JPEG, TIFF or WebP file.\00", align 1
@str.8 = private unnamed_addr constant [53 x i8] c"Note: Animated PNG and WebP files are not supported.\00", align 1
@str.9 = private unnamed_addr constant [10 x i8] c"\0AOptions:\00", align 1
@str.10 = private unnamed_addr constant [38 x i8] c"  -h / -help ............. short help\00", align 1
@str.11 = private unnamed_addr constant [37 x i8] c"  -H / -longhelp ......... long help\00", align 1
@str.12 = private unnamed_addr constant [73 x i8] c"  -q <float> ............. quality factor (0:small..100:big), default=75\00", align 1
@str.13 = private unnamed_addr constant [109 x i8] c"  -alpha_q <int> ......... transparency-compression quality (0..100),\0A                           default=100\00", align 1
@str.14 = private unnamed_addr constant [51 x i8] c"  -preset <string> ....... preset setting, one of:\00", align 1
@str.15 = private unnamed_addr constant [53 x i8] c"                            default, photo, picture,\00", align 1
@str.16 = private unnamed_addr constant [48 x i8] c"                            drawing, icon, text\00", align 1
@str.17 = private unnamed_addr constant [64 x i8] c"     -preset must come first, as it overwrites other parameters\00", align 1
@str.18 = private unnamed_addr constant [125 x i8] c"  -z <int> ............... activates lossless preset with given\0A                           level in [0:fast, ..., 9:slowest]\00", align 1
@str.19 = private unnamed_addr constant [77 x i8] c"  -m <int> ............... compression method (0=fast, 6=slowest), default=4\00", align 1
@str.20 = private unnamed_addr constant [71 x i8] c"  -segments <int> ........ number of segments to use (1..4), default=4\00", align 1
@str.21 = private unnamed_addr constant [50 x i8] c"  -size <int> ............ target size (in bytes)\00", align 1
@str.22 = private unnamed_addr constant [62 x i8] c"  -psnr <float> .......... target PSNR (in dB. typically: 42)\00", align 1
@str.23 = private unnamed_addr constant [63 x i8] c"  -s <int> <int> ......... input size (width x height) for YUV\00", align 1
@str.24 = private unnamed_addr constant [78 x i8] c"  -sns <int> ............. spatial noise shaping (0:off, 100:max), default=50\00", align 1
@str.25 = private unnamed_addr constant [68 x i8] c"  -f <int> ............... filter strength (0=off..100), default=60\00", align 1
@str.26 = private unnamed_addr constant [81 x i8] c"  -sharpness <int> ....... filter sharpness (0:most .. 7:least sharp), default=0\00", align 1
@str.27 = private unnamed_addr constant [73 x i8] c"  -strong ................ use strong filter instead of simple (default)\00", align 1
@str.28 = private unnamed_addr constant [63 x i8] c"  -nostrong .............. use simple filter instead of strong\00", align 1
@str.29 = private unnamed_addr constant [72 x i8] c"  -sharp_yuv ............. use sharper (and slower) RGB->YUV conversion\00", align 1
@str.30 = private unnamed_addr constant [66 x i8] c"  -partition_limit <int> . limit quality to fit the 512k limit on\00", align 1
@str.31 = private unnamed_addr constant [79 x i8] c"                           the first partition (0=no degradation ... 100=full)\00", align 1
@str.32 = private unnamed_addr constant [56 x i8] c"  -pass <int> ............ analysis pass number (1..10)\00", align 1
@str.33 = private unnamed_addr constant [111 x i8] c"  -qrange <min> <max> .... specifies the permissible quality range\0A                           (default: 0 100)\00", align 1
@str.34 = private unnamed_addr constant [65 x i8] c"  -crop <x> <y> <w> <h> .. crop picture with the given rectangle\00", align 1
@str.35 = private unnamed_addr constant [65 x i8] c"  -resize <w> <h> ........ resize picture (*after* any cropping)\00", align 1
@str.36 = private unnamed_addr constant [72 x i8] c"  -resize_mode <string> .. one of: up_only, down_only, always (default)\00", align 1
@str.37 = private unnamed_addr constant [60 x i8] c"  -mt .................... use multi-threading if available\00", align 1
@str.38 = private unnamed_addr constant [65 x i8] c"  -low_memory ............ reduce memory usage (slower encoding)\00", align 1
@str.39 = private unnamed_addr constant [51 x i8] c"  -map <int> ............. print map of extra info\00", align 1
@str.40 = private unnamed_addr constant [59 x i8] c"  -print_psnr ............ prints averaged PSNR distortion\00", align 1
@str.41 = private unnamed_addr constant [59 x i8] c"  -print_ssim ............ prints averaged SSIM distortion\00", align 1
@str.42 = private unnamed_addr constant [62 x i8] c"  -print_lsim ............ prints local-similarity distortion\00", align 1
@str.43 = private unnamed_addr constant [65 x i8] c"  -d <file.pgm> .......... dump the compressed output (PGM file)\00", align 1
@str.44 = private unnamed_addr constant [77 x i8] c"  -alpha_method <int> .... transparency-compression method (0..1), default=1\00", align 1
@str.45 = private unnamed_addr constant [65 x i8] c"  -alpha_filter <string> . predictive filtering for alpha plane,\00", align 1
@str.46 = private unnamed_addr constant [64 x i8] c"                           one of: none, fast (default) or best\00", align 1
@str.47 = private unnamed_addr constant [80 x i8] c"  -exact ................. preserve RGB values in transparent area, default=off\00", align 1
@str.48 = private unnamed_addr constant [246 x i8] c"  -blend_alpha <hex> ..... blend colors against background color\0A                           expressed as RGB values written in\0A                           hexadecimal, e.g. 0xc0e0d0 for red=0xc0\0A                           green=0xe0 and blue=0xd0\00", align 1
@str.49 = private unnamed_addr constant [64 x i8] c"  -noalpha ............... discard any transparency information\00", align 1
@str.50 = private unnamed_addr constant [64 x i8] c"  -lossless .............. encode image losslessly, default=off\00", align 1
@str.51 = private unnamed_addr constant [118 x i8] c"  -near_lossless <int> ... use near-lossless image preprocessing\0A                           (0..100=off), default=100\00", align 1
@str.52 = private unnamed_addr constant [63 x i8] c"  -hint <string> ......... specify image characteristics hint,\00", align 1
@str.53 = private unnamed_addr constant [59 x i8] c"                           one of: photo, picture or graph\00", align 1
@str.54 = private unnamed_addr constant [63 x i8] c"  -metadata <string> ..... comma separated list of metadata to\00", align 1
@str.55 = private unnamed_addr constant [46 x i8] c"copy from the input to the output if present.\00", align 1
@str.56 = private unnamed_addr constant [77 x i8] c"                           Valid values: all, none (default), exif, icc, xmp\00", align 1
@str.57 = private unnamed_addr constant [52 x i8] c"  -short ................. condense printed message\00", align 1
@str.58 = private unnamed_addr constant [48 x i8] c"  -quiet ................. don't print anything\00", align 1
@str.59 = private unnamed_addr constant [57 x i8] c"  -version ............... print version number and exit\00", align 1
@str.60 = private unnamed_addr constant [62 x i8] c"  -noasm ................. disable all assembly optimizations\00", align 1
@str.61 = private unnamed_addr constant [71 x i8] c"  -v ..................... verbose, e.g. print encoding/decoding times\00", align 1
@str.62 = private unnamed_addr constant [52 x i8] c"  -progress .............. report encoding progress\00", align 1
@str.63 = private unnamed_addr constant [22 x i8] c"Experimental Options:\00", align 1
@str.64 = private unnamed_addr constant [60 x i8] c"  -jpeg_like ............. roughly match expected JPEG size\00", align 1
@str.65 = private unnamed_addr constant [55 x i8] c"  -af .................... auto-adjust filter strength\00", align 1
@str.66 = private unnamed_addr constant [49 x i8] c"  -pre <int> ............. pre-processing filter\00", align 1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca [4 x i8], align 1                 ; 6 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [4 x i8], align 4                 ; 4 uses
  %i.j = alloca ptr, align 8                      ; 10 uses
  %i.k = alloca i64, align 8                      ; 8 uses
  %2 = alloca %struct.WebPPicture, align 8        ; 61 uses
  %3 = alloca %struct.WebPPicture, align 8        ; 11 uses
  %4 = alloca %struct.WebPConfig, align 4         ; 53 uses
  %5 = alloca %struct.WebPAuxStats, align 4       ; 3 uses
  %6 = alloca %struct.WebPMemoryWriter, align 8   ; 10 uses
  %7 = alloca %struct.Metadata, align 8           ; 20 uses
  %8 = alloca %struct.timeval, align 8            ; 8 uses
  %i.l = alloca i32, align 4                      ; 34 uses
  %9 = alloca %struct.WebPPicture, align 8        ; 14 uses
  %10 = alloca [4 x %struct.anon.0], align 16     ; 12 uses
  %i.m = alloca [5 x float], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @MetadataInit(ptr noundef nonnull %7) #11
  call void @WebPMemoryWriterInit(ptr noundef nonnull %6) #11
  %i.n = call i32 @WebPPictureInitInternal(ptr noundef nonnull %2, i32 noundef 528) #11
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = call i32 @WebPPictureInitInternal(ptr noundef nonnull %3, i32 noundef 528) #11
  %.not620 = icmp eq i32 %i.o, 0
  br i1 %.not620, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = call i32 @WebPConfigInitInternal(ptr noundef nonnull %4, i32 noundef 0, float noundef 7.500000e+01, i32 noundef 528) #11
  %.not621 = icmp eq i32 %i.p, 0
  br i1 %.not621, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite = call i64 @fwrite(ptr nonnull @.str, i64 25, i64 1, ptr %i.q) #12 ; 0 uses
  br label %bb.kr

bb.e:                                             ; preds = %bb.c
  %i.r = icmp eq i32 %0, 1
  br i1 %i.r, label %bb.f, label %.preheader1012

.preheader1012:                                   ; preds = %bb.e
  %i.s = icmp sgt i32 %0, 1
  br i1 %i.s, label %sub_0.lr.ph, label %.loopexit.thread

sub_0.lr.ph:                                      ; preds = %.preheader1012
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 76
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 108 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 84 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 92
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 52 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  br label %sub_0

bb.f:                                             ; preds = %bb.e
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %puts1.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %puts2.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %puts3.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %puts4.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %bb.kr

sub_0:                                            ; preds = %sub_0.lr.ph, %bb.eu
  %.04851373 = phi ptr [ null, %sub_0.lr.ph ], [ %.2487, %bb.eu ] ; 56 uses
  %.04951372 = phi ptr [ null, %sub_0.lr.ph ], [ %.1496, %bb.eu ] ; 56 uses
  %.04991371 = phi ptr [ null, %sub_0.lr.ph ], [ %.1500, %bb.eu ] ; 56 uses
  %.05101370 = phi i32 [ -1, %sub_0.lr.ph ], [ %.1511, %bb.eu ] ; 54 uses
  %.05141369 = phi i32 [ 0, %sub_0.lr.ph ], [ %.4518, %bb.eu ] ; 57 uses
  %.05211368 = phi i32 [ 0, %sub_0.lr.ph ], [ %.1522, %bb.eu ] ; 56 uses
  %.05251367 = phi i32 [ -1, %sub_0.lr.ph ], [ %.1526, %bb.eu ] ; 55 uses
  %.05291366 = phi i32 [ 6, %sub_0.lr.ph ], [ %.1530, %bb.eu ] ; 56 uses
  %.05331365 = phi i32 [ 2, %sub_0.lr.ph ], [ %.1534, %bb.eu ] ; 54 uses
  %.05371364 = phi i32 [ 0, %sub_0.lr.ph ], [ %.1538, %bb.eu ] ; 56 uses
  %.05411363 = phi i32 [ 0, %sub_0.lr.ph ], [ %.1542, %bb.eu ] ; 56 uses
  %.05451362 = phi i32 [ 0, %sub_0.lr.ph ], [ %.1546, %bb.eu ] ; 56 uses
  %.05491361 = phi i32 [ 0, %sub_0.lr.ph ], [ %.1550, %bb.eu ] ; 56 uses
  %.05531360 = phi i32 [ 0, %sub_0.lr.ph ], [ %.1554, %bb.eu ] ; 56 uses
  %.05571359 = phi i32 [ 16777215, %sub_0.lr.ph ], [ %.1558, %bb.eu ] ; 56 uses
  %.05611358 = phi i32 [ 0, %sub_0.lr.ph ], [ %.1562, %bb.eu ] ; 56 uses
  %.05651357 = phi i32 [ 1, %sub_0.lr.ph ], [ %.1566, %bb.eu ] ; 56 uses
  %.05691356 = phi i32 [ 0, %sub_0.lr.ph ], [ %.1570, %bb.eu ] ; 56 uses
  %.05731355 = phi i32 [ 0, %sub_0.lr.ph ], [ %.1574, %bb.eu ] ; 57 uses
  %.05771354 = phi i32 [ 1, %sub_0.lr.ph ], [ %i.ox, %bb.eu ] ; 50 uses
  %.08021353 = phi i32 [ 0, %sub_0.lr.ph ], [ %.1803, %bb.eu ] ; 56 uses
  %.08071352 = phi i32 [ 0, %sub_0.lr.ph ], [ %.1808, %bb.eu ] ; 56 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #11
  store i32 0, ptr %i.l, align 4, !tbaa !12
  %i.aw = sext i32 %.05771354 to i64
  %i.ax = getelementptr [8 x i8], ptr %1, i64 %i.aw ; 6 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !44 ; 71 uses
  %i.az = load i8, ptr %i.ay, align 1
  %.not1415 = icmp eq i8 %i.az, 45                ; 4 uses
  br i1 %.not1415, label %sub_1, label %.tail.thread.thread

sub_1:                                            ; preds = %sub_0
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.bb = load i8, ptr %i.ba, align 1
  %.not1416 = icmp eq i8 %i.bb, 104
  br i1 %.not1416, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.g, label %.thread

.tail.thread:                                     ; preds = %sub_1
  %i.bf = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(6) @.str.2) #13
  %.not623 = icmp eq i32 %i.bf, 0
  br i1 %.not623, label %bb.g, label %sub_1958

.tail.thread.thread:                              ; preds = %sub_0
  %i.bg = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(6) @.str.2) #13
  %.not6231905 = icmp eq i32 %i.bg, 0
  br i1 %.not6231905, label %bb.g, label %.tail956.thread.thread

.thread:                                          ; preds = %.tail
  %i.bh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(6) @.str.2) #13
  %.not6231844 = icmp eq i32 %i.bh, 0
  br i1 %.not6231844, label %bb.g, label %sub_1958

bb.g:                                             ; preds = %.tail.thread.thread, %.thread, %.tail.thread, %.tail
  %puts.i759 = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %puts1.i760 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %puts2.i761 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %puts3.i762 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %puts4.i763 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %.thread831

sub_1958:                                         ; preds = %.tail.thread, %.thread
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.bj = load i8, ptr %i.bi, align 1
  %.not1418 = icmp eq i8 %i.bj, 72
  br i1 %.not1418, label %.tail956, label %.tail956.thread

.tail956:                                         ; preds = %sub_1958
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %bb.h, label %.thread1846

.tail956.thread:                                  ; preds = %sub_1958
  %i.bn = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(10) @.str.4) #13
  %.not625 = icmp eq i32 %i.bn, 0
  br i1 %.not625, label %bb.h, label %sub_1963

.tail956.thread.thread:                           ; preds = %.tail.thread.thread
  %i.bo = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(10) @.str.4) #13
  %.not6251907 = icmp eq i32 %i.bo, 0
  br i1 %.not6251907, label %bb.h, label %.tail966.thread

.thread1846:                                      ; preds = %.tail956
  %i.bp = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(10) @.str.4) #13
  %.not6251847 = icmp eq i32 %i.bp, 0
  br i1 %.not6251847, label %bb.h, label %sub_1963

bb.h:                                             ; preds = %.tail956.thread.thread, %.thread1846, %.tail956.thread, %.tail956
  call fastcc void @HelpLong()
  br label %.thread831

sub_1963:                                         ; preds = %.tail956.thread, %.thread1846
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.br = load i8, ptr %i.bq, align 1
  %.not1420 = icmp eq i8 %i.br, 111
  br i1 %.not1420, label %.tail961, label %sub_1968

.tail961:                                         ; preds = %sub_1963
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %bb.i, label %sub_1968

bb.i:                                             ; preds = %.tail961
  %i.bv = add nsw i32 %.05771354, 1               ; 3 uses
  %i.bw = icmp slt i32 %i.bv, %0
  br i1 %i.bw, label %bb.j, label %sub_1968

bb.j:                                             ; preds = %bb.i
  %i.bx = sext i32 %i.bv to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !44
  br label %.thread827

sub_1968:                                         ; preds = %bb.i, %.tail961, %sub_1963
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.cb = load i8, ptr %i.ca, align 1
end_hunk_0
begin_hunk_1_@main:bb.a

bb.eg:                                            ; preds = %bb.ef
  %i.nf = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite689 = call i64 @fwrite(ptr nonnull @.str.71, i64 51, i64 1, ptr %i.nf) #12 ; 0 uses
  br label %.thread857

bb.eh:                                            ; preds = %bb.dx, %bb.dw
  %i.ng = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(10) @.str.72) #13
  %.not690 = icmp eq i32 %i.ng, 0
  br i1 %.not690, label %bb.ei, label %sub_0997

bb.ei:                                            ; preds = %bb.eh
  %i.nh = add nsw i32 %.05771354, 1               ; 4 uses
  %i.ni = icmp slt i32 %i.nh, %0
  br i1 %i.ni, label %bb.ej, label %sub_0997

bb.ej:                                            ; preds = %bb.ei
  %i.nj = sext i32 %i.nh to i64
  %i.nk = getelementptr inbounds [8 x i8], ptr %1, i64 %i.nj
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !44 ; 3 uses
  %i.nm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.nl) #13 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.nm ; 2 uses
  %.not69413451348.not = icmp eq i64 %i.nm, 0
  br i1 %.not69413451348.not, label %.thread827, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ej, %.thread815
  %.0492.ph1350 = phi ptr [ %i.oe, %.thread815 ], [ %i.nl, %bb.ej ] ; 8 uses
  %.1515.ph1349 = phi i32 [ %.2516.ph, %.thread815 ], [ %.05141369, %bb.ej ]
  %i.no = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0492.ph1350, i32 noundef 44) #13 ; 2 uses
  %i.np = icmp eq ptr %i.no, null
  %spec.select = select i1 %i.np, ptr %i.nn, ptr %i.no ; 2 uses
  %i.nq = ptrtoint ptr %spec.select to i64
  %i.nr = ptrtoint ptr %.0492.ph1350 to i64
  %i.ns = sub i64 %i.nq, %i.nr                    ; 7 uses
  switch i64 %i.ns, label %.thread1877 [
    i64 3, label %bb.ek
    i64 4, label %bb.em
  ]

bb.ek:                                            ; preds = %.lr.ph
  %i.nt = call i32 @strncmp(ptr noundef nonnull %.0492.ph1350, ptr noundef nonnull @.str.73, i64 noundef %i.ns) #13
  %.not691 = icmp eq i32 %i.nt, 0
  br i1 %.not691, label %bb.el, label %bb.eo

bb.el:                                            ; preds = %bb.ek, %bb.en, %bb.eo, %bb.ep
  %.lcssa.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @main.kTokens, i64 64), %bb.ep ], [ getelementptr inbounds nuw (i8, ptr @main.kTokens, i64 48), %bb.eo ], [ getelementptr inbounds nuw (i8, ptr @main.kTokens, i64 32), %bb.en ], [ @main.kTokens, %bb.ek ]
  %i.nu = getelementptr inbounds nuw i8, ptr %.lcssa.ph, i64 8
  %i.nv = load i32, ptr %i.nu, align 8, !tbaa !75
  %i.nw = or i32 %i.nv, %.1515.ph1349
  br label %.thread815

bb.em:                                            ; preds = %.lr.ph
  %i.nx = call i32 @strncmp(ptr noundef nonnull %.0492.ph1350, ptr noundef nonnull @.str.22, i64 noundef %i.ns) #13
  %.not691.1 = icmp eq i32 %i.nx, 0
  br i1 %.not691.1, label %.thread815, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.ny = call i32 @strncmp(ptr noundef nonnull %.0492.ph1350, ptr noundef nonnull @.str.74, i64 noundef %i.ns) #13
  %.not691.2 = icmp eq i32 %i.ny, 0
  br i1 %.not691.2, label %bb.el, label %.thread1877

bb.eo:                                            ; preds = %bb.ek
  %i.nz = call i32 @strncmp(ptr noundef nonnull %.0492.ph1350, ptr noundef nonnull @.str.75, i64 noundef %i.ns) #13
  %.not691.3 = icmp eq i32 %i.nz, 0
  br i1 %.not691.3, label %bb.el, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.oa = call i32 @strncmp(ptr noundef nonnull %.0492.ph1350, ptr noundef nonnull @.str.76, i64 noundef %i.ns) #13
  %.not691.4 = icmp eq i32 %i.oa, 0
  br i1 %.not691.4, label %bb.el, label %.thread1877

.thread1877:                                      ; preds = %.lr.ph, %bb.en, %bb.ep
  %i.ob = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.oc = trunc i64 %i.ns to i32
  %i.od = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ob, ptr noundef nonnull @.str.77, i32 noundef %i.oc, ptr noundef nonnull %.0492.ph1350) #14 ; 0 uses
  br label %.thread831

.thread815:                                       ; preds = %bb.em, %bb.el
  %.2516.ph = phi i32 [ %i.nw, %bb.el ], [ 0, %bb.em ] ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %spec.select, i64 1 ; 2 uses
  %.not6941345 = icmp ult ptr %i.oe, %i.nn
  br i1 %.not6941345, label %.lr.ph, label %.thread827, !llvm.loop !33

sub_0997:                                         ; preds = %bb.eh, %bb.ei
  br i1 %.not1415, label %sub_1998, label %.thread827

sub_1998:                                         ; preds = %sub_0997
  %i.of = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.og = load i8, ptr %i.of, align 1
  %.not1434 = icmp eq i8 %i.og, 118
  br i1 %.not1434, label %.tail996, label %sub_11003

.tail996:                                         ; preds = %sub_1998
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.oi = load i8, ptr %i.oh, align 1
  %i.oj = icmp eq i8 %i.oi, 0
  br i1 %i.oj, label %bb.eq, label %sub_11003

bb.eq:                                            ; preds = %.tail996
  store i1 true, ptr @verbose, align 4
  br label %.thread827

sub_11003:                                        ; preds = %.tail996, %sub_1998
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ol = load i8, ptr %i.ok, align 1
  %.not1436 = icmp eq i8 %i.ol, 45
  br i1 %.not1436, label %.tail1001, label %.thread1882

.tail1001:                                        ; preds = %sub_11003
  %i.om = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.on = load i8, ptr %i.om, align 1
  %i.oo = icmp eq i8 %i.on, 0
  br i1 %i.oo, label %bb.er, label %.thread1882

bb.er:                                            ; preds = %.tail1001
  %i.op = add nsw i32 %.05771354, 1               ; 2 uses
  %i.oq = icmp slt i32 %i.op, %0
  br i1 %i.oq, label %bb.es, label %.thread883

bb.es:                                            ; preds = %bb.er
  %i.or = sext i32 %i.op to i64
  %i.os = getelementptr inbounds [8 x i8], ptr %1, i64 %i.or
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !44
  br label %.thread883

.thread1882:                                      ; preds = %.tail1001, %sub_11003
  %i.ou = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ov = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ou, ptr noundef nonnull @.str.80, ptr noundef nonnull %i.ay) #14 ; 0 uses
  call fastcc void @HelpLong()
  br label %.thread831

.thread827:                                       ; preds = %.thread815, %sub_0997, %bb.ej, %bb.ef, %bb.dv, %bb.du, %bb.do, %bb.dn, %bb.dm, %bb.aw, %bb.l, %bb.o, %bb.s, %bb.w, %bb.aa, %bb.af, %bb.aj, %bb.as, %bb.au, %bb.aq, %bb.ay, %bb.bh, %bb.bj, %bb.bf, %bb.bq, %bb.bv, %bb.by, %bb.cc, %bb.cg, %bb.cl, %bb.ct, %bb.cs, %bb.cz, %bb.df, %bb.dj, %bb.dr, %bb.eq, %bb.dh, %bb.dc, %bb.cw, %bb.co, %bb.cj, %bb.ce, %bb.ca, %bb.bw, %bb.bt, %bb.bn, %bb.bb, %bb.am, %bb.ah, %bb.ac, %bb.y, %bb.t, %bb.q, %bb.m, %bb.j
  %.1808 = phi i32 [ %.08071352, %bb.j ], [ %.08071352, %bb.l ], [ %.08071352, %bb.m ], [ %.08071352, %bb.o ], [ %.08071352, %bb.q ], [ %.08071352, %bb.s ], [ %.08071352, %bb.t ], [ %.08071352, %bb.w ], [ %.08071352, %bb.y ], [ %.08071352, %bb.aa ], [ %.08071352, %bb.ac ], [ %.08071352, %bb.af ], [ %.08071352, %bb.ah ], [ %.08071352, %bb.aj ], [ %.08071352, %bb.am ], [ %.08071352, %bb.aq ], [ %.08071352, %bb.as ], [ %.08071352, %bb.au ], [ %.08071352, %bb.aw ], [ %.08071352, %bb.ay ], [ %.08071352, %bb.bb ], [ %.08071352, %bb.bf ], [ %.08071352, %bb.bh ], [ %.08071352, %bb.bj ], [ %.08071352, %bb.bn ], [ %.08071352, %bb.bq ], [ %.08071352, %bb.bt ], [ %.08071352, %bb.bv ], [ %.08071352, %bb.bw ], [ %.08071352, %bb.by ], [ %.08071352, %bb.ca ], [ %.08071352, %bb.cc ], [ %.08071352, %bb.ce ], [ %.08071352, %bb.cg ], [ %.08071352, %bb.cj ], [ %.08071352, %bb.cl ], [ %.08071352, %bb.co ], [ %.08071352, %bb.ct ], [ %.08071352, %bb.cs ], [ %.08071352, %bb.cw ], [ %.08071352, %bb.cz ], [ %.08071352, %bb.dc ], [ %.08071352, %bb.df ], [ %.08071352, %bb.dh ], [ %i.lj, %bb.dj ], [ %.08071352, %bb.dm ], [ %.08071352, %bb.dn ], [ %.08071352, %bb.do ], [ %.08071352, %bb.dr ], [ %.08071352, %bb.du ], [ %.08071352, %bb.dv ], [ %.08071352, %sub_0997 ], [ %.08071352, %bb.ef ], [ %.08071352, %bb.eq ], [ %.08071352, %bb.ej ], [ %.08071352, %.thread815 ] ; 2 uses
  %.1803 = phi i32 [ %.08021353, %bb.j ], [ %.08021353, %bb.l ], [ %.08021353, %bb.m ], [ %.08021353, %bb.o ], [ %.08021353, %bb.q ], [ %.08021353, %bb.s ], [ %.08021353, %bb.t ], [ %.08021353, %bb.w ], [ %.08021353, %bb.y ], [ %.08021353, %bb.aa ], [ %.08021353, %bb.ac ], [ %.08021353, %bb.af ], [ %.08021353, %bb.ah ], [ %.08021353, %bb.aj ], [ %.08021353, %bb.am ], [ %.08021353, %bb.aq ], [ %.08021353, %bb.as ], [ %.08021353, %bb.au ], [ %.08021353, %bb.aw ], [ %.08021353, %bb.ay ], [ %.08021353, %bb.bb ], [ %.08021353, %bb.bf ], [ %.08021353, %bb.bh ], [ %.08021353, %bb.bj ], [ %.08021353, %bb.bn ], [ %.08021353, %bb.bq ], [ %.08021353, %bb.bt ], [ %.08021353, %bb.bv ], [ %.08021353, %bb.bw ], [ %.08021353, %bb.by ], [ %.08021353, %bb.ca ], [ %.08021353, %bb.cc ], [ %.08021353, %bb.ce ], [ %.08021353, %bb.cg ], [ %.08021353, %bb.cj ], [ %.08021353, %bb.cl ], [ %.08021353, %bb.co ], [ %.08021353, %bb.ct ], [ %.08021353, %bb.cs ], [ %.08021353, %bb.cw ], [ %.08021353, %bb.cz ], [ %.08021353, %bb.dc ], [ %.08021353, %bb.df ], [ %.08021353, %bb.dh ], [ %i.ln, %bb.dj ], [ %.08021353, %bb.dm ], [ %.08021353, %bb.dn ], [ %.08021353, %bb.do ], [ %.08021353, %bb.dr ], [ %.08021353, %bb.du ], [ %.08021353, %bb.dv ], [ %.08021353, %sub_0997 ], [ %.08021353, %bb.ef ], [ %.08021353, %bb.eq ], [ %.08021353, %bb.ej ], [ %.08021353, %.thread815 ] ; 2 uses
  %.2579 = phi i32 [ %i.bv, %bb.j ], [ %i.cf, %bb.l ], [ %.05771354, %bb.m ], [ %.05771354, %bb.o ], [ %.05771354, %bb.q ], [ %.05771354, %bb.s ], [ %i.cw, %bb.t ], [ %i.dq, %bb.w ], [ %i.eb, %bb.y ], [ %i.eo, %bb.aa ], [ %i.ex, %bb.ac ], [ %i.fe, %bb.af ], [ %.05771354, %bb.ah ], [ %.05771354, %bb.aj ], [ %i.fn, %bb.am ], [ %i.fv, %bb.aq ], [ %i.fv, %bb.as ], [ %i.fv, %bb.au ], [ %.05771354, %bb.aw ], [ %.05771354, %bb.ay ], [ %i.gi, %bb.bb ], [ %i.gp, %bb.bf ], [ %i.gp, %bb.bh ], [ %i.gp, %bb.bj ], [ %i.ha, %bb.bn ], [ %i.hh, %bb.bq ], [ %i.ho, %bb.bt ], [ %i.hz, %bb.bv ], [ %.05771354, %bb.bw ], [ %.05771354, %bb.by ], [ %.05771354, %bb.ca ], [ %.05771354, %bb.cc ], [ %.05771354, %bb.ce ], [ %.05771354, %bb.cg ], [ %i.io, %bb.cj ], [ %.05771354, %bb.cl ], [ %i.iw, %bb.co ], [ %i.ev, %bb.ct ], [ %i.ev, %bb.cs ], [ %i.jo, %bb.cw ], [ %i.jv, %bb.cz ], [ %i.kc, %bb.dc ], [ %i.kj, %bb.df ], [ %i.kq, %bb.dh ], [ %i.ev, %bb.dj ], [ %i.lp, %bb.dm ], [ %i.lp, %bb.dn ], [ %i.lp, %bb.do ], [ %.05771354, %bb.dr ], [ %.05771354, %bb.du ], [ %.05771354, %bb.dv ], [ %.05771354, %sub_0997 ], [ %i.mq, %bb.ef ], [ %.05771354, %bb.eq ], [ %i.nh, %bb.ej ], [ %i.nh, %.thread815 ]
  %.1574 = phi i32 [ %.05731355, %bb.j ], [ %.05731355, %bb.l ], [ %.05731355, %bb.m ], [ %.05731355, %bb.o ], [ %.05731355, %bb.q ], [ %i.co, %bb.s ], [ %.05731355, %bb.t ], [ %.05731355, %bb.w ], [ %.05731355, %bb.y ], [ %.05731355, %bb.aa ], [ %.05731355, %bb.ac ], [ %.05731355, %bb.af ], [ %.05731355, %bb.ah ], [ %.05731355, %bb.aj ], [ %.05731355, %bb.am ], [ %.05731355, %bb.aq ], [ %.05731355, %bb.as ], [ %.05731355, %bb.au ], [ %.05731355, %bb.aw ], [ %.05731355, %bb.ay ], [ %.05731355, %bb.bb ], [ %.05731355, %bb.bf ], [ %.05731355, %bb.bh ], [ %.05731355, %bb.bj ], [ %.05731355, %bb.bn ], [ %.05731355, %bb.bq ], [ %.05731355, %bb.bt ], [ %.05731355, %bb.bv ], [ %.05731355, %bb.bw ], [ %.05731355, %bb.by ], [ %.05731355, %bb.ca ], [ %.05731355, %bb.cc ], [ %.05731355, %bb.ce ], [ %.05731355, %bb.cg ], [ %.05731355, %bb.cj ], [ %.05731355, %bb.cl ], [ %.05731355, %bb.co ], [ %.05731355, %bb.ct ], [ %.05731355, %bb.cs ], [ %.05731355, %bb.cw ], [ %.05731355, %bb.cz ], [ %.05731355, %bb.dc ], [ %.05731355, %bb.df ], [ %.05731355, %bb.dh ], [ %.05731355, %bb.dj ], [ %.05731355, %bb.dm ], [ %.05731355, %bb.dn ], [ %.05731355, %bb.do ], [ %.05731355, %bb.dr ], [ %.05731355, %bb.du ], [ %.05731355, %bb.dv ], [ %.05731355, %sub_0997 ], [ %.05731355, %bb.ef ], [ %.05731355, %bb.eq ], [ %.05731355, %bb.ej ], [ %.05731355, %.thread815 ] ; 2 uses
  %.1570 = phi i32 [ %.05691356, %bb.j ], [ %.05691356, %bb.l ], [ %.05691356, %bb.m ], [ %.05691356, %bb.o ], [ %.05691356, %bb.q ], [ %.05691356, %bb.s ], [ %.05691356, %bb.t ], [ %.05691356, %bb.w ], [ %.05691356, %bb.y ], [ %.05691356, %bb.aa ], [ %.05691356, %bb.ac ], [ %.05691356, %bb.af ], [ %.05691356, %bb.ah ], [ %.05691356, %bb.aj ], [ %.05691356, %bb.am ], [ %.05691356, %bb.aq ], [ %.05691356, %bb.as ], [ %.05691356, %bb.au ], [ %.05691356, %bb.aw ], [ %.05691356, %bb.ay ], [ %.05691356, %bb.bb ], [ %.05691356, %bb.bf ], [ %.05691356, %bb.bh ], [ %.05691356, %bb.bj ], [ %.05691356, %bb.bn ], [ %.05691356, %bb.bq ], [ %.05691356, %bb.bt ], [ %.05691356, %bb.bv ], [ %.05691356, %bb.bw ], [ %.05691356, %bb.by ], [ %.05691356, %bb.ca ], [ %.05691356, %bb.cc ], [ %.05691356, %bb.ce ], [ %.05691356, %bb.cg ], [ %.05691356, %bb.cj ], [ %.05691356, %bb.cl ], [ %.05691356, %bb.co ], [ %.05691356, %bb.ct ], [ %.05691356, %bb.cs ], [ %.05691356, %bb.cw ], [ %.05691356, %bb.cz ], [ %.05691356, %bb.dc ], [ %.05691356, %bb.df ], [ %.05691356, %bb.dh ], [ %.05691356, %bb.dj ], [ %.05691356, %bb.dm ], [ %.05691356, %bb.dn ], [ %.05691356, %bb.do ], [ %.05691356, %bb.dr ], [ %.05691356, %bb.du ], [ 1, %bb.dv ], [ %.05691356, %sub_0997 ], [ %.05691356, %bb.ef ], [ %.05691356, %bb.eq ], [ %.05691356, %bb.ej ], [ %.05691356, %.thread815 ] ; 2 uses
  %.1566 = phi i32 [ %.05651357, %bb.j ], [ %.05651357, %bb.l ], [ %.05651357, %bb.m ], [ %.05651357, %bb.o ], [ %.05651357, %bb.q ], [ %.05651357, %bb.s ], [ %.05651357, %bb.t ], [ %.05651357, %bb.w ], [ %.05651357, %bb.y ], [ %.05651357, %bb.aa ], [ %.05651357, %bb.ac ], [ %.05651357, %bb.af ], [ %.05651357, %bb.ah ], [ %.05651357, %bb.aj ], [ %.05651357, %bb.am ], [ %.05651357, %bb.aq ], [ %.05651357, %bb.as ], [ %.05651357, %bb.au ], [ 0, %bb.aw ], [ %.05651357, %bb.ay ], [ %.05651357, %bb.bb ], [ %.05651357, %bb.bf ], [ %.05651357, %bb.bh ], [ %.05651357, %bb.bj ], [ %.05651357, %bb.bn ], [ %.05651357, %bb.bq ], [ %.05651357, %bb.bt ], [ %.05651357, %bb.bv ], [ %.05651357, %bb.bw ], [ %.05651357, %bb.by ], [ %.05651357, %bb.ca ], [ %.05651357, %bb.cc ], [ %.05651357, %bb.ce ], [ %.05651357, %bb.cg ], [ %.05651357, %bb.cj ], [ %.05651357, %bb.cl ], [ %.05651357, %bb.co ], [ %.05651357, %bb.ct ], [ %.05651357, %bb.cs ], [ %.05651357, %bb.cw ], [ %.05651357, %bb.cz ], [ %.05651357, %bb.dc ], [ %.05651357, %bb.df ], [ %.05651357, %bb.dh ], [ %.05651357, %bb.dj ], [ %.05651357, %bb.dm ], [ %.05651357, %bb.dn ], [ %.05651357, %bb.do ], [ %.05651357, %bb.dr ], [ %.05651357, %bb.du ], [ %.05651357, %bb.dv ], [ %.05651357, %sub_0997 ], [ %.05651357, %bb.ef ], [ %.05651357, %bb.eq ], [ %.05651357, %bb.ej ], [ %.05651357, %.thread815 ] ; 2 uses
  %.1562 = phi i32 [ %.05611358, %bb.j ], [ %.05611358, %bb.l ], [ %.05611358, %bb.m ], [ %.05611358, %bb.o ], [ %.05611358, %bb.q ], [ %.05611358, %bb.s ], [ %.05611358, %bb.t ], [ %.05611358, %bb.w ], [ %.05611358, %bb.y ], [ %.05611358, %bb.aa ], [ %.05611358, %bb.ac ], [ %.05611358, %bb.af ], [ %.05611358, %bb.ah ], [ %.05611358, %bb.aj ], [ 1, %bb.am ], [ %.05611358, %bb.aq ], [ %.05611358, %bb.as ], [ %.05611358, %bb.au ], [ %.05611358, %bb.aw ], [ %.05611358, %bb.ay ], [ %.05611358, %bb.bb ], [ %.05611358, %bb.bf ], [ %.05611358, %bb.bh ], [ %.05611358, %bb.bj ], [ %.05611358, %bb.bn ], [ %.05611358, %bb.bq ], [ %.05611358, %bb.bt ], [ %.05611358, %bb.bv ], [ %.05611358, %bb.bw ], [ %.05611358, %bb.by ], [ %.05611358, %bb.ca ], [ %.05611358, %bb.cc ], [ %.05611358, %bb.ce ], [ %.05611358, %bb.cg ], [ %.05611358, %bb.cj ], [ %.05611358, %bb.cl ], [ %.05611358, %bb.co ], [ %.05611358, %bb.ct ], [ %.05611358, %bb.cs ], [ %.05611358, %bb.cw ], [ %.05611358, %bb.cz ], [ %.05611358, %bb.dc ], [ %.05611358, %bb.df ], [ %.05611358, %bb.dh ], [ %.05611358, %bb.dj ], [ %.05611358, %bb.dm ], [ %.05611358, %bb.dn ], [ %.05611358, %bb.do ], [ %.05611358, %bb.dr ], [ %.05611358, %bb.du ], [ %.05611358, %bb.dv ], [ %.05611358, %sub_0997 ], [ %.05611358, %bb.ef ], [ %.05611358, %bb.eq ], [ %.05611358, %bb.ej ], [ %.05611358, %.thread815 ] ; 2 uses
  %.1558 = phi i32 [ %.05571359, %bb.j ], [ %.05571359, %bb.l ], [ %.05571359, %bb.m ], [ %.05571359, %bb.o ], [ %.05571359, %bb.q ], [ %.05571359, %bb.s ], [ %.05571359, %bb.t ], [ %.05571359, %bb.w ], [ %.05571359, %bb.y ], [ %.05571359, %bb.aa ], [ %.05571359, %bb.ac ], [ %.05571359, %bb.af ], [ %.05571359, %bb.ah ], [ %.05571359, %bb.aj ], [ %i.ft, %bb.am ], [ %.05571359, %bb.aq ], [ %.05571359, %bb.as ], [ %.05571359, %bb.au ], [ %.05571359, %bb.aw ], [ %.05571359, %bb.ay ], [ %.05571359, %bb.bb ], [ %.05571359, %bb.bf ], [ %.05571359, %bb.bh ], [ %.05571359, %bb.bj ], [ %.05571359, %bb.bn ], [ %.05571359, %bb.bq ], [ %.05571359, %bb.bt ], [ %.05571359, %bb.bv ], [ %.05571359, %bb.bw ], [ %.05571359, %bb.by ], [ %.05571359, %bb.ca ], [ %.05571359, %bb.cc ], [ %.05571359, %bb.ce ], [ %.05571359, %bb.cg ], [ %.05571359, %bb.cj ], [ %.05571359, %bb.cl ], [ %.05571359, %bb.co ], [ %.05571359, %bb.ct ], [ %.05571359, %bb.cs ], [ %.05571359, %bb.cw ], [ %.05571359, %bb.cz ], [ %.05571359, %bb.dc ], [ %.05571359, %bb.df ], [ %.05571359, %bb.dh ], [ %.05571359, %bb.dj ], [ %.05571359, %bb.dm ], [ %.05571359, %bb.dn ], [ %.05571359, %bb.do ], [ %.05571359, %bb.dr ], [ %.05571359, %bb.du ], [ %.05571359, %bb.dv ], [ %.05571359, %sub_0997 ], [ %.05571359, %bb.ef ], [ %.05571359, %bb.eq ], [ %.05571359, %bb.ej ], [ %.05571359, %.thread815 ] ; 2 uses
  %.1554 = phi i32 [ %.05531360, %bb.j ], [ %.05531360, %bb.l ], [ %.05531360, %bb.m ], [ %.05531360, %bb.o ], [ %.05531360, %bb.q ], [ %.05531360, %bb.s ], [ %.05531360, %bb.t ], [ %.05531360, %bb.w ], [ %.05531360, %bb.y ], [ %.05531360, %bb.aa ], [ %.05531360, %bb.ac ], [ %.05531360, %bb.af ], [ %.05531360, %bb.ah ], [ %.05531360, %bb.aj ], [ %.05531360, %bb.am ], [ %.05531360, %bb.aq ], [ %.05531360, %bb.as ], [ %.05531360, %bb.au ], [ %.05531360, %bb.aw ], [ %.05531360, %bb.ay ], [ %.05531360, %bb.bb ], [ %.05531360, %bb.bf ], [ %.05531360, %bb.bh ], [ %.05531360, %bb.bj ], [ %.05531360, %bb.bn ], [ %.05531360, %bb.bq ], [ %.05531360, %bb.bt ], [ %.05531360, %bb.bv ], [ %.05531360, %bb.bw ], [ %.05531360, %bb.by ], [ %.05531360, %bb.ca ], [ %.05531360, %bb.cc ], [ %.05531360, %bb.ce ], [ %.05531360, %bb.cg ], [ %.05531360, %bb.cj ], [ %.05531360, %bb.cl ], [ %.05531360, %bb.co ], [ %.05531360, %bb.ct ], [ %.05531360, %bb.cs ], [ %.05531360, %bb.cw ], [ %.05531360, %bb.cz ], [ %.05531360, %bb.dc ], [ %.05531360, %bb.df ], [ 1, %bb.dh ], [ %.05531360, %bb.dj ], [ %.05531360, %bb.dm ], [ %.05531360, %bb.dn ], [ %.05531360, %bb.do ], [ %.05531360, %bb.dr ], [ %.05531360, %bb.du ], [ %.05531360, %bb.dv ], [ %.05531360, %sub_0997 ], [ %.05531360, %bb.ef ], [ %.05531360, %bb.eq ], [ %.05531360, %bb.ej ], [ %.05531360, %.thread815 ] ; 2 uses
  %.1550 = phi i32 [ %.05491361, %bb.j ], [ %.05491361, %bb.l ], [ %.05491361, %bb.m ], [ %.05491361, %bb.o ], [ %.05491361, %bb.q ], [ %.05491361, %bb.s ], [ %.05491361, %bb.t ], [ %.05491361, %bb.w ], [ %.05491361, %bb.y ], [ %.05491361, %bb.aa ], [ %.05491361, %bb.ac ], [ %.05491361, %bb.af ], [ %.05491361, %bb.ah ], [ %.05491361, %bb.aj ], [ %.05491361, %bb.am ], [ %.05491361, %bb.aq ], [ %.05491361, %bb.as ], [ %.05491361, %bb.au ], [ %.05491361, %bb.aw ], [ %.05491361, %bb.ay ], [ %.05491361, %bb.bb ], [ %.05491361, %bb.bf ], [ %.05491361, %bb.bh ], [ %.05491361, %bb.bj ], [ %.05491361, %bb.bn ], [ %.05491361, %bb.bq ], [ %.05491361, %bb.bt ], [ %.05491361, %bb.bv ], [ %.05491361, %bb.bw ], [ %.05491361, %bb.by ], [ %.05491361, %bb.ca ], [ %.05491361, %bb.cc ], [ %.05491361, %bb.ce ], [ %.05491361, %bb.cg ], [ %.05491361, %bb.cj ], [ %.05491361, %bb.cl ], [ %.05491361, %bb.co ], [ %.05491361, %bb.ct ], [ %.05491361, %bb.cs ], [ %.05491361, %bb.cw ], [ %.05491361, %bb.cz ], [ %.05491361, %bb.dc ], [ %.05491361, %bb.df ], [ %i.ku, %bb.dh ], [ %.05491361, %bb.dj ], [ %.05491361, %bb.dm ], [ %.05491361, %bb.dn ], [ %.05491361, %bb.do ], [ %.05491361, %bb.dr ], [ %.05491361, %bb.du ], [ %.05491361, %bb.dv ], [ %.05491361, %sub_0997 ], [ %.05491361, %bb.ef ], [ %.05491361, %bb.eq ], [ %.05491361, %bb.ej ], [ %.05491361, %.thread815 ] ; 2 uses
  %.1546 = phi i32 [ %.05451362, %bb.j ], [ %.05451362, %bb.l ], [ %.05451362, %bb.m ], [ %.05451362, %bb.o ], [ %.05451362, %bb.q ], [ %.05451362, %bb.s ], [ %.05451362, %bb.t ], [ %.05451362, %bb.w ], [ %.05451362, %bb.y ], [ %.05451362, %bb.aa ], [ %.05451362, %bb.ac ], [ %.05451362, %bb.af ], [ %.05451362, %bb.ah ], [ %.05451362, %bb.aj ], [ %.05451362, %bb.am ], [ %.05451362, %bb.aq ], [ %.05451362, %bb.as ], [ %.05451362, %bb.au ], [ %.05451362, %bb.aw ], [ %.05451362, %bb.ay ], [ %.05451362, %bb.bb ], [ %.05451362, %bb.bf ], [ %.05451362, %bb.bh ], [ %.05451362, %bb.bj ], [ %.05451362, %bb.bn ], [ %.05451362, %bb.bq ], [ %.05451362, %bb.bt ], [ %.05451362, %bb.bv ], [ %.05451362, %bb.bw ], [ %.05451362, %bb.by ], [ %.05451362, %bb.ca ], [ %.05451362, %bb.cc ], [ %.05451362, %bb.ce ], [ %.05451362, %bb.cg ], [ %.05451362, %bb.cj ], [ %.05451362, %bb.cl ], [ %.05451362, %bb.co ], [ %.05451362, %bb.ct ], [ %.05451362, %bb.cs ], [ %.05451362, %bb.cw ], [ %.05451362, %bb.cz ], [ %.05451362, %bb.dc ], [ %.05451362, %bb.df ], [ %i.ky, %bb.dh ], [ %.05451362, %bb.dj ], [ %.05451362, %bb.dm ], [ %.05451362, %bb.dn ], [ %.05451362, %bb.do ], [ %.05451362, %bb.dr ], [ %.05451362, %bb.du ], [ %.05451362, %bb.dv ], [ %.05451362, %sub_0997 ], [ %.05451362, %bb.ef ], [ %.05451362, %bb.eq ], [ %.05451362, %bb.ej ], [ %.05451362, %.thread815 ] ; 2 uses
  %.1542 = phi i32 [ %.05411363, %bb.j ], [ %.05411363, %bb.l ], [ %.05411363, %bb.m ], [ %.05411363, %bb.o ], [ %.05411363, %bb.q ], [ %.05411363, %bb.s ], [ %.05411363, %bb.t ], [ %.05411363, %bb.w ], [ %.05411363, %bb.y ], [ %.05411363, %bb.aa ], [ %.05411363, %bb.ac ], [ %.05411363, %bb.af ], [ %.05411363, %bb.ah ], [ %.05411363, %bb.aj ], [ %.05411363, %bb.am ], [ %.05411363, %bb.aq ], [ %.05411363, %bb.as ], [ %.05411363, %bb.au ], [ %.05411363, %bb.aw ], [ %.05411363, %bb.ay ], [ %.05411363, %bb.bb ], [ %.05411363, %bb.bf ], [ %.05411363, %bb.bh ], [ %.05411363, %bb.bj ], [ %.05411363, %bb.bn ], [ %.05411363, %bb.bq ], [ %.05411363, %bb.bt ], [ %.05411363, %bb.bv ], [ %.05411363, %bb.bw ], [ %.05411363, %bb.by ], [ %.05411363, %bb.ca ], [ %.05411363, %bb.cc ], [ %.05411363, %bb.ce ], [ %.05411363, %bb.cg ], [ %.05411363, %bb.cj ], [ %.05411363, %bb.cl ], [ %.05411363, %bb.co ], [ %.05411363, %bb.ct ], [ %.05411363, %bb.cs ], [ %.05411363, %bb.cw ], [ %.05411363, %bb.cz ], [ %.05411363, %bb.dc ], [ %.05411363, %bb.df ], [ %i.lb, %bb.dh ], [ %.05411363, %bb.dj ], [ %.05411363, %bb.dm ], [ %.05411363, %bb.dn ], [ %.05411363, %bb.do ], [ %.05411363, %bb.dr ], [ %.05411363, %bb.du ], [ %.05411363, %bb.dv ], [ %.05411363, %sub_0997 ], [ %.05411363, %bb.ef ], [ %.05411363, %bb.eq ], [ %.05411363, %bb.ej ], [ %.05411363, %.thread815 ] ; 2 uses
  %.1538 = phi i32 [ %.05371364, %bb.j ], [ %.05371364, %bb.l ], [ %.05371364, %bb.m ], [ %.05371364, %bb.o ], [ %.05371364, %bb.q ], [ %.05371364, %bb.s ], [ %.05371364, %bb.t ], [ %.05371364, %bb.w ], [ %.05371364, %bb.y ], [ %.05371364, %bb.aa ], [ %.05371364, %bb.ac ], [ %.05371364, %bb.af ], [ %.05371364, %bb.ah ], [ %.05371364, %bb.aj ], [ %.05371364, %bb.am ], [ %.05371364, %bb.aq ], [ %.05371364, %bb.as ], [ %.05371364, %bb.au ], [ %.05371364, %bb.aw ], [ %.05371364, %bb.ay ], [ %.05371364, %bb.bb ], [ %.05371364, %bb.bf ], [ %.05371364, %bb.bh ], [ %.05371364, %bb.bj ], [ %.05371364, %bb.bn ], [ %.05371364, %bb.bq ], [ %.05371364, %bb.bt ], [ %.05371364, %bb.bv ], [ %.05371364, %bb.bw ], [ %.05371364, %bb.by ], [ %.05371364, %bb.ca ], [ %.05371364, %bb.cc ], [ %.05371364, %bb.ce ], [ %.05371364, %bb.cg ], [ %.05371364, %bb.cj ], [ %.05371364, %bb.cl ], [ %.05371364, %bb.co ], [ %.05371364, %bb.ct ], [ %.05371364, %bb.cs ], [ %.05371364, %bb.cw ], [ %.05371364, %bb.cz ], [ %.05371364, %bb.dc ], [ %.05371364, %bb.df ], [ %i.lf, %bb.dh ], [ %.05371364, %bb.dj ], [ %.05371364, %bb.dm ], [ %.05371364, %bb.dn ], [ %.05371364, %bb.do ], [ %.05371364, %bb.dr ], [ %.05371364, %bb.du ], [ %.05371364, %bb.dv ], [ %.05371364, %sub_0997 ], [ %.05371364, %bb.ef ], [ %.05371364, %bb.eq ], [ %.05371364, %bb.ej ], [ %.05371364, %.thread815 ] ; 2 uses
  %.1534 = phi i32 [ %.05331365, %bb.j ], [ %.05331365, %bb.l ], [ %.05331365, %bb.m ], [ %.05331365, %bb.o ], [ %.05331365, %bb.q ], [ %.05331365, %bb.s ], [ %.05331365, %bb.t ], [ %.05331365, %bb.w ], [ %.05331365, %bb.y ], [ %.05331365, %bb.aa ], [ %.05331365, %bb.ac ], [ %.05331365, %bb.af ], [ %.05331365, %bb.ah ], [ %.05331365, %bb.aj ], [ %.05331365, %bb.am ], [ %.05331365, %bb.aq ], [ %.05331365, %bb.as ], [ %.05331365, %bb.au ], [ %.05331365, %bb.aw ], [ %.05331365, %bb.ay ], [ %.05331365, %bb.bb ], [ %.05331365, %bb.bf ], [ %.05331365, %bb.bh ], [ %.05331365, %bb.bj ], [ %.05331365, %bb.bn ], [ %.05331365, %bb.bq ], [ %.05331365, %bb.bt ], [ %.05331365, %bb.bv ], [ %.05331365, %bb.bw ], [ %.05331365, %bb.by ], [ %.05331365, %bb.ca ], [ %.05331365, %bb.cc ], [ %.05331365, %bb.ce ], [ %.05331365, %bb.cg ], [ %.05331365, %bb.cj ], [ %.05331365, %bb.cl ], [ %.05331365, %bb.co ], [ %.05331365, %bb.ct ], [ %.05331365, %bb.cs ], [ %.05331365, %bb.cw ], [ %.05331365, %bb.cz ], [ %.05331365, %bb.dc ], [ %.05331365, %bb.df ], [ %.05331365, %bb.dh ], [ %.05331365, %bb.dj ], [ 0, %bb.dm ], [ 1, %bb.dn ], [ 2, %bb.do ], [ %.05331365, %bb.dr ], [ %.05331365, %bb.du ], [ %.05331365, %bb.dv ], [ %.05331365, %sub_0997 ], [ %.05331365, %bb.ef ], [ %.05331365, %bb.eq ], [ %.05331365, %bb.ej ], [ %.05331365, %.thread815 ] ; 2 uses
  %.1530 = phi i32 [ %.05291366, %bb.j ], [ %.05291366, %bb.l ], [ %.05291366, %bb.m ], [ %.05291366, %bb.o ], [ %.05291366, %bb.q ], [ %.05291366, %bb.s ], [ %.05291366, %bb.t ], [ %.05291366, %bb.w ], [ %.05291366, %bb.y ], [ %i.et, %bb.aa ], [ %.05291366, %bb.ac ], [ %.05291366, %bb.af ], [ %.05291366, %bb.ah ], [ %.05291366, %bb.aj ], [ %.05291366, %bb.am ], [ %.05291366, %bb.aq ], [ %.05291366, %bb.as ], [ %.05291366, %bb.au ], [ %.05291366, %bb.aw ], [ %.05291366, %bb.ay ], [ %.05291366, %bb.bb ], [ %.05291366, %bb.bf ], [ %.05291366, %bb.bh ], [ %.05291366, %bb.bj ], [ %.05291366, %bb.bn ], [ %.05291366, %bb.bq ], [ %.05291366, %bb.bt ], [ %.05291366, %bb.bv ], [ %.05291366, %bb.bw ], [ %.05291366, %bb.by ], [ %.05291366, %bb.ca ], [ %.05291366, %bb.cc ], [ %.05291366, %bb.ce ], [ %.05291366, %bb.cg ], [ %.05291366, %bb.cj ], [ %.05291366, %bb.cl ], [ %.05291366, %bb.co ], [ %.05291366, %bb.ct ], [ %.05291366, %bb.cs ], [ %.05291366, %bb.cw ], [ %.05291366, %bb.cz ], [ %.05291366, %bb.dc ], [ %.05291366, %bb.df ], [ %.05291366, %bb.dh ], [ %.05291366, %bb.dj ], [ %.05291366, %bb.dm ], [ %.05291366, %bb.dn ], [ %.05291366, %bb.do ], [ %.05291366, %bb.dr ], [ %.05291366, %bb.du ], [ %.05291366, %bb.dv ], [ %.05291366, %sub_0997 ], [ %.05291366, %bb.ef ], [ %.05291366, %bb.eq ], [ %.05291366, %bb.ej ], [ %.05291366, %.thread815 ] ; 2 uses
  %.1526 = phi i32 [ %.05251367, %bb.j ], [ %.05251367, %bb.l ], [ %.05251367, %bb.m ], [ %.05251367, %bb.o ], [ %.05251367, %bb.q ], [ %.05251367, %bb.s ], [ %.05251367, %bb.t ], [ 0, %bb.w ], [ 0, %bb.y ], [ %spec.store.select, %bb.aa ], [ %.05251367, %bb.ac ], [ %.05251367, %bb.af ], [ %.05251367, %bb.ah ], [ %.05251367, %bb.aj ], [ %.05251367, %bb.am ], [ %.05251367, %bb.aq ], [ %.05251367, %bb.as ], [ %.05251367, %bb.au ], [ %.05251367, %bb.aw ], [ %.05251367, %bb.ay ], [ %.05251367, %bb.bb ], [ %.05251367, %bb.bf ], [ %.05251367, %bb.bh ], [ %.05251367, %bb.bj ], [ %.05251367, %bb.bn ], [ %.05251367, %bb.bq ], [ %.05251367, %bb.bt ], [ %.05251367, %bb.bv ], [ %.05251367, %bb.bw ], [ %.05251367, %bb.by ], [ %.05251367, %bb.ca ], [ %.05251367, %bb.cc ], [ %.05251367, %bb.ce ], [ %.05251367, %bb.cg ], [ %.05251367, %bb.cj ], [ %.05251367, %bb.cl ], [ %.05251367, %bb.co ], [ %.05251367, %bb.ct ], [ %.05251367, %bb.cs ], [ %.05251367, %bb.cw ], [ %.05251367, %bb.cz ], [ %.05251367, %bb.dc ], [ %.05251367, %bb.df ], [ %.05251367, %bb.dh ], [ %.05251367, %bb.dj ], [ %.05251367, %bb.dm ], [ %.05251367, %bb.dn ], [ %.05251367, %bb.do ], [ %.05251367, %bb.dr ], [ %.05251367, %bb.du ], [ %.05251367, %bb.dv ], [ %.05251367, %sub_0997 ], [ %.05251367, %bb.ef ], [ %.05251367, %bb.eq ], [ %.05251367, %bb.ej ], [ %.05251367, %.thread815 ] ; 2 uses
  %.1522 = phi i32 [ %.05211368, %bb.j ], [ %.05211368, %bb.l ], [ %.05211368, %bb.m ], [ %.05211368, %bb.o ], [ %.05211368, %bb.q ], [ %.05211368, %bb.s ], [ %.05211368, %bb.t ], [ %.05211368, %bb.w ], [ %.05211368, %bb.y ], [ %.05211368, %bb.aa ], [ %.05211368, %bb.ac ], [ %.05211368, %bb.af ], [ %.05211368, %bb.ah ], [ %.05211368, %bb.aj ], [ %.05211368, %bb.am ], [ %.05211368, %bb.aq ], [ %.05211368, %bb.as ], [ %.05211368, %bb.au ], [ %.05211368, %bb.aw ], [ %.05211368, %bb.ay ], [ %.05211368, %bb.bb ], [ %.05211368, %bb.bf ], [ %.05211368, %bb.bh ], [ %.05211368, %bb.bj ], [ %.05211368, %bb.bn ], [ %.05211368, %bb.bq ], [ %.05211368, %bb.bt ], [ %.05211368, %bb.bv ], [ %.05211368, %bb.bw ], [ %.05211368, %bb.by ], [ %.05211368, %bb.ca ], [ %.05211368, %bb.cc ], [ %.05211368, %bb.ce ], [ %.05211368, %bb.cg ], [ %.05211368, %bb.cj ], [ %.05211368, %bb.cl ], [ %.05211368, %bb.co ], [ %.05211368, %bb.ct ], [ %.05211368, %bb.cs ], [ %.05211368, %bb.cw ], [ %.05211368, %bb.cz ], [ %.05211368, %bb.dc ], [ %.05211368, %bb.df ], [ %.05211368, %bb.dh ], [ %.05211368, %bb.dj ], [ %.05211368, %bb.dm ], [ %.05211368, %bb.dn ], [ %.05211368, %bb.do ], [ %.05211368, %bb.dr ], [ 1, %bb.du ], [ %.05211368, %bb.dv ], [ %.05211368, %sub_0997 ], [ %.05211368, %bb.ef ], [ %.05211368, %bb.eq ], [ %.05211368, %bb.ej ], [ %.05211368, %.thread815 ] ; 2 uses
  %.4518 = phi i32 [ %.05141369, %bb.j ], [ %.05141369, %bb.l ], [ %.05141369, %bb.m ], [ %.05141369, %bb.o ], [ %.05141369, %bb.q ], [ %.05141369, %bb.s ], [ %.05141369, %bb.t ], [ %.05141369, %bb.w ], [ %.05141369, %bb.y ], [ %.05141369, %bb.aa ], [ %.05141369, %bb.ac ], [ %.05141369, %bb.af ], [ %.05141369, %bb.ah ], [ %.05141369, %bb.aj ], [ %.05141369, %bb.am ], [ %.05141369, %bb.aq ], [ %.05141369, %bb.as ], [ %.05141369, %bb.au ], [ %.05141369, %bb.aw ], [ %.05141369, %bb.ay ], [ %.05141369, %bb.bb ], [ %.05141369, %bb.bf ], [ %.05141369, %bb.bh ], [ %.05141369, %bb.bj ], [ %.05141369, %bb.bn ], [ %.05141369, %bb.bq ], [ %.05141369, %bb.bt ], [ %.05141369, %bb.bv ], [ %.05141369, %bb.bw ], [ %.05141369, %bb.by ], [ %.05141369, %bb.ca ], [ %.05141369, %bb.cc ], [ %.05141369, %bb.ce ], [ %.05141369, %bb.cg ], [ %.05141369, %bb.cj ], [ %.05141369, %bb.cl ], [ %.05141369, %bb.co ], [ %.05141369, %bb.ct ], [ %.05141369, %bb.cs ], [ %.05141369, %bb.cw ], [ %.05141369, %bb.cz ], [ %.05141369, %bb.dc ], [ %.05141369, %bb.df ], [ %.05141369, %bb.dh ], [ %.05141369, %bb.dj ], [ %.05141369, %bb.dm ], [ %.05141369, %bb.dn ], [ %.05141369, %bb.do ], [ %.05141369, %bb.dr ], [ %.05141369, %bb.du ], [ %.05141369, %bb.dv ], [ %.05141369, %sub_0997 ], [ %.05141369, %bb.ef ], [ %.05141369, %bb.eq ], [ %.05141369, %bb.ej ], [ %.2516.ph, %.thread815 ] ; 2 uses
  %.1511 = phi i32 [ %.05101370, %bb.j ], [ %.05101370, %bb.l ], [ 0, %bb.m ], [ 1, %bb.o ], [ 2, %bb.q ], [ %.05101370, %bb.s ], [ %.05101370, %bb.t ], [ %.05101370, %bb.w ], [ %.05101370, %bb.y ], [ %.05101370, %bb.aa ], [ %.05101370, %bb.ac ], [ %.05101370, %bb.af ], [ %.05101370, %bb.ah ], [ %.05101370, %bb.aj ], [ %.05101370, %bb.am ], [ %.05101370, %bb.aq ], [ %.05101370, %bb.as ], [ %.05101370, %bb.au ], [ %.05101370, %bb.aw ], [ %.05101370, %bb.ay ], [ %.05101370, %bb.bb ], [ %.05101370, %bb.bf ], [ %.05101370, %bb.bh ], [ %.05101370, %bb.bj ], [ %.05101370, %bb.bn ], [ %.05101370, %bb.bq ], [ %.05101370, %bb.bt ], [ %.05101370, %bb.bv ], [ %.05101370, %bb.bw ], [ %.05101370, %bb.by ], [ %.05101370, %bb.ca ], [ %.05101370, %bb.cc ], [ %.05101370, %bb.ce ], [ %.05101370, %bb.cg ], [ %.05101370, %bb.cj ], [ %.05101370, %bb.cl ], [ %.05101370, %bb.co ], [ %.05101370, %bb.ct ], [ %.05101370, %bb.cs ], [ %.05101370, %bb.cw ], [ %.05101370, %bb.cz ], [ %.05101370, %bb.dc ], [ %.05101370, %bb.df ], [ %.05101370, %bb.dh ], [ %.05101370, %bb.dj ], [ %.05101370, %bb.dm ], [ %.05101370, %bb.dn ], [ %.05101370, %bb.do ], [ %.05101370, %bb.dr ], [ %.05101370, %bb.du ], [ %.05101370, %bb.dv ], [ %.05101370, %sub_0997 ], [ %.05101370, %bb.ef ], [ %.05101370, %bb.eq ], [ %.05101370, %bb.ej ], [ %.05101370, %.thread815 ] ; 2 uses
  %.1500 = phi ptr [ %.04991371, %bb.j ], [ %i.cj, %bb.l ], [ %.04991371, %bb.m ], [ %.04991371, %bb.o ], [ %.04991371, %bb.q ], [ %.04991371, %bb.s ], [ %.04991371, %bb.t ], [ %.04991371, %bb.w ], [ %.04991371, %bb.y ], [ %.04991371, %bb.aa ], [ %.04991371, %bb.ac ], [ %.04991371, %bb.af ], [ %.04991371, %bb.ah ], [ %.04991371, %bb.aj ], [ %.04991371, %bb.am ], [ %.04991371, %bb.aq ], [ %.04991371, %bb.as ], [ %.04991371, %bb.au ], [ %.04991371, %bb.aw ], [ %.04991371, %bb.ay ], [ %.04991371, %bb.bb ], [ %.04991371, %bb.bf ], [ %.04991371, %bb.bh ], [ %.04991371, %bb.bj ], [ %.04991371, %bb.bn ], [ %.04991371, %bb.bq ], [ %.04991371, %bb.bt ], [ %.04991371, %bb.bv ], [ %.04991371, %bb.bw ], [ %.04991371, %bb.by ], [ %.04991371, %bb.ca ], [ %.04991371, %bb.cc ], [ %.04991371, %bb.ce ], [ %.04991371, %bb.cg ], [ %.04991371, %bb.cj ], [ %.04991371, %bb.cl ], [ %.04991371, %bb.co ], [ %.04991371, %bb.ct ], [ %.04991371, %bb.cs ], [ %.04991371, %bb.cw ], [ %.04991371, %bb.cz ], [ %.04991371, %bb.dc ], [ %.04991371, %bb.df ], [ %.04991371, %bb.dh ], [ %.04991371, %bb.dj ], [ %.04991371, %bb.dm ], [ %.04991371, %bb.dn ], [ %.04991371, %bb.do ], [ %.04991371, %bb.dr ], [ %.04991371, %bb.du ], [ %.04991371, %bb.dv ], [ %.04991371, %sub_0997 ], [ %.04991371, %bb.ef ], [ %.04991371, %bb.eq ], [ %.04991371, %bb.ej ], [ %.04991371, %.thread815 ] ; 2 uses
  %.1496 = phi ptr [ %i.bz, %bb.j ], [ %.04951372, %bb.l ], [ %.04951372, %bb.m ], [ %.04951372, %bb.o ], [ %.04951372, %bb.q ], [ %.04951372, %bb.s ], [ %.04951372, %bb.t ], [ %.04951372, %bb.w ], [ %.04951372, %bb.y ], [ %.04951372, %bb.aa ], [ %.04951372, %bb.ac ], [ %.04951372, %bb.af ], [ %.04951372, %bb.ah ], [ %.04951372, %bb.aj ], [ %.04951372, %bb.am ], [ %.04951372, %bb.aq ], [ %.04951372, %bb.as ], [ %.04951372, %bb.au ], [ %.04951372, %bb.aw ], [ %.04951372, %bb.ay ], [ %.04951372, %bb.bb ], [ %.04951372, %bb.bf ], [ %.04951372, %bb.bh ], [ %.04951372, %bb.bj ], [ %.04951372, %bb.bn ], [ %.04951372, %bb.bq ], [ %.04951372, %bb.bt ], [ %.04951372, %bb.bv ], [ %.04951372, %bb.bw ], [ %.04951372, %bb.by ], [ %.04951372, %bb.ca ], [ %.04951372, %bb.cc ], [ %.04951372, %bb.ce ], [ %.04951372, %bb.cg ], [ %.04951372, %bb.cj ], [ %.04951372, %bb.cl ], [ %.04951372, %bb.co ], [ %.04951372, %bb.ct ], [ %.04951372, %bb.cs ], [ %.04951372, %bb.cw ], [ %.04951372, %bb.cz ], [ %.04951372, %bb.dc ], [ %.04951372, %bb.df ], [ %.04951372, %bb.dh ], [ %.04951372, %bb.dj ], [ %.04951372, %bb.dm ], [ %.04951372, %bb.dn ], [ %.04951372, %bb.do ], [ %.04951372, %bb.dr ], [ %.04951372, %bb.du ], [ %.04951372, %bb.dv ], [ %.04951372, %sub_0997 ], [ %.04951372, %bb.ef ], [ %.04951372, %bb.eq ], [ %.04951372, %bb.ej ], [ %.04951372, %.thread815 ] ; 2 uses
  %.2487 = phi ptr [ %.04851373, %bb.j ], [ %.04851373, %bb.l ], [ %.04851373, %bb.m ], [ %.04851373, %bb.o ], [ %.04851373, %bb.q ], [ %.04851373, %bb.s ], [ %.04851373, %bb.t ], [ %.04851373, %bb.w ], [ %.04851373, %bb.y ], [ %.04851373, %bb.aa ], [ %.04851373, %bb.ac ], [ %.04851373, %bb.af ], [ %.04851373, %bb.ah ], [ %.04851373, %bb.aj ], [ %.04851373, %bb.am ], [ %.04851373, %bb.aq ], [ %.04851373, %bb.as ], [ %.04851373, %bb.au ], [ %.04851373, %bb.aw ], [ %.04851373, %bb.ay ], [ %.04851373, %bb.bb ], [ %.04851373, %bb.bf ], [ %.04851373, %bb.bh ], [ %.04851373, %bb.bj ], [ %.04851373, %bb.bn ], [ %.04851373, %bb.bq ], [ %.04851373, %bb.bt ], [ %.04851373, %bb.bv ], [ %.04851373, %bb.bw ], [ %.04851373, %bb.by ], [ %.04851373, %bb.ca ], [ %.04851373, %bb.cc ], [ %.04851373, %bb.ce ], [ %.04851373, %bb.cg ], [ %.04851373, %bb.cj ], [ %.04851373, %bb.cl ], [ %.04851373, %bb.co ], [ %.04851373, %bb.ct ], [ %.04851373, %bb.cs ], [ %.04851373, %bb.cw ], [ %.04851373, %bb.cz ], [ %.04851373, %bb.dc ], [ %.04851373, %bb.df ], [ %.04851373, %bb.dh ], [ %.04851373, %bb.dj ], [ %.04851373, %bb.dm ], [ %.04851373, %bb.dn ], [ %.04851373, %bb.do ], [ %.04851373, %bb.dr ], [ %.04851373, %bb.du ], [ %.04851373, %bb.dv ], [ %i.ay, %sub_0997 ], [ %.04851373, %bb.ef ], [ %.04851373, %bb.eq ], [ %.04851373, %bb.ej ], [ %.04851373, %.thread815 ] ; 2 uses
  %i.ow = load i32, ptr %i.l, align 4, !tbaa !12
  %.not697 = icmp eq i32 %i.ow, 0
  br i1 %.not697, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %.thread827
  call fastcc void @HelpLong()
  br label %.thread831

.thread831:                                       ; preds = %.thread1877, %.thread1882, %bb.et, %bb.g, %bb.dt, %bb.h
  %.5.ph = phi i32 [ 0, %bb.h ], [ 0, %bb.dt ], [ 1, %.thread1877 ], [ 0, %bb.g ], [ 1, %bb.et ], [ 1, %.thread1882 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #11
  br label %bb.kr

.thread857:                                       ; preds = %bb.bk, %bb.av, %bb.u, %bb.dp, %bb.ee, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #11
  br label %bb.kp

.thread883:                                       ; preds = %bb.es, %bb.er
  %.3488.ph = phi ptr [ %.04851373, %bb.er ], [ %i.ot, %bb.es ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #11
  br label %.loopexit

bb.eu:                                            ; preds = %.thread827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #11
  %i.ox = add nsw i32 %.2579, 1                   ; 2 uses
  %i.oy = icmp slt i32 %i.ox, %0
  br i1 %i.oy, label %sub_0, label %.loopexit, !llvm.loop !34

.loopexit:                                        ; preds = %bb.eu, %.thread883
  %.08071330 = phi i32 [ %.08071352, %.thread883 ], [ %.1808, %bb.eu ] ; 7 uses
  %.08021316 = phi i32 [ %.08021353, %.thread883 ], [ %.1803, %bb.eu ] ; 7 uses
  %.05731289 = phi i32 [ %.05731355, %.thread883 ], [ %.1574, %bb.eu ] ; 5 uses
  %.05691275 = phi i32 [ %.05691356, %.thread883 ], [ %.1570, %bb.eu ] ; 2 uses
  %.05651261 = phi i32 [ %.05651357, %.thread883 ], [ %.1566, %bb.eu ]
  %.05611247 = phi i32 [ %.05611358, %.thread883 ], [ %.1562, %bb.eu ]
  %.05571233 = phi i32 [ %.05571359, %.thread883 ], [ %.1558, %bb.eu ]
  %.05531219 = phi i32 [ %.05531360, %.thread883 ], [ %.1554, %bb.eu ]
  %.05491205 = phi i32 [ %.05491361, %.thread883 ], [ %.1550, %bb.eu ]
  %.05451191 = phi i32 [ %.05451362, %.thread883 ], [ %.1546, %bb.eu ]
  %.05411177 = phi i32 [ %.05411363, %.thread883 ], [ %.1542, %bb.eu ]
  %.05371163 = phi i32 [ %.05371364, %.thread883 ], [ %.1538, %bb.eu ]
  %.05331149 = phi i32 [ %.05331365, %.thread883 ], [ %.1534, %bb.eu ]
  %.05291135 = phi i32 [ %.05291366, %.thread883 ], [ %.1530, %bb.eu ] ; 2 uses
  %.05251121 = phi i32 [ %.05251367, %.thread883 ], [ %.1526, %bb.eu ]
  %.05211107 = phi i32 [ %.05211368, %.thread883 ], [ %.1522, %bb.eu ]
  %.05141093 = phi i32 [ %.05141369, %.thread883 ], [ %.4518, %bb.eu ] ; 5 uses
  %.05101079 = phi i32 [ %.05101370, %.thread883 ], [ %.1511, %bb.eu ] ; 5 uses
  %.04991065 = phi ptr [ %.04991371, %.thread883 ], [ %.1500, %bb.eu ] ; 3 uses
  %.04951051 = phi ptr [ %.04951372, %.thread883 ], [ %.1496, %bb.eu ] ; 6 uses
  %.4489 = phi ptr [ %.3488.ph, %.thread883 ], [ %.2487, %bb.eu ] ; 7 uses
  %i.oz = icmp eq ptr %.4489, null
  br i1 %i.oz, label %.loopexit.thread, label %bb.ev

.loopexit.thread:                                 ; preds = %.preheader1012, %.loopexit
  %i.pa = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite742 = call i64 @fwrite(ptr nonnull @.str.81, i64 25, i64 1, ptr %i.pa) #12 ; 0 uses
  call fastcc void @HelpShort()
  br label %bb.kp

bb.ev:                                            ; preds = %.loopexit
  %i.pb = icmp eq i32 %.05251121, 1
  br i1 %i.pb, label %bb.ew, label %bb.ey

bb.ew:                                            ; preds = %bb.ev
  %i.pc = call i32 @WebPConfigLosslessPreset(ptr noundef nonnull %4, i32 noundef %.05291135) #11
  %.not698 = icmp eq i32 %i.pc, 0
  br i1 %.not698, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.pd = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.pe = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pd, ptr noundef nonnull @.str.82, i32 noundef %.05291135) #14 ; 0 uses
  br label %bb.kp

bb.ey:                                            ; preds = %bb.ew, %bb.ev
  %i.pf = icmp eq i32 %.05691275, 0               ; 7 uses
  %i.pg = load i32, ptr %4, align 4
  %i.ph = icmp eq i32 %i.pg, 1
  %or.cond14 = select i1 %i.pf, i1 %i.ph, i1 false
  br i1 %or.cond14, label %bb.ez, label %bb.fd

bb.ez:                                            ; preds = %bb.ey
  %i.pi = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !56
  %i.pk = icmp sgt i32 %i.pj, 0
  %i.pl = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.pm = load float, ptr %i.pl, align 4
  %i.pn = fcmp ogt float %i.pm, 0.000000e+00
  %or.cond17 = select i1 %i.pk, i1 true, i1 %i.pn
  br i1 %or.cond17, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.po = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite699 = call i64 @fwrite(ptr nonnull @.str.83, i64 101, i64 1, ptr %i.po) #12 ; 0 uses
  br label %bb.fb

bb.fb:                                            ; preds = %bb.ez, %bb.fa
  %i.pp = getelementptr inbounds nuw i8, ptr %4, i64 76
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !72
  %i.pr = icmp sgt i32 %i.pq, 0
  br i1 %i.pr, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.ps = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite700 = call i64 @fwrite(ptr nonnull @.str.84, i64 84, i64 1, ptr %i.ps) #12 ; 0 uses
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fb, %bb.fc, %bb.ey
  %i.pt = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !56
  %i.pv = icmp sgt i32 %i.pu, 0
  %i.pw = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.px = load float, ptr %i.pw, align 4
  %i.py = fcmp ogt float %i.px, 0.000000e+00
  %or.cond20 = select i1 %i.pv, i1 true, i1 %i.py
  %i.pz = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 2 uses
  %i.qa = load i32, ptr %i.pz, align 4
  %i.qb = icmp eq i32 %i.qa, 1
  %or.cond59 = select i1 %or.cond20, i1 %i.qb, i1 false
  br i1 %or.cond59, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  store i32 6, ptr %i.pz, align 4, !tbaa !67
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %i.qc = call i32 @WebPValidateConfig(ptr noundef nonnull %4) #11
  %.not701 = icmp eq i32 %i.qc, 0
  br i1 %.not701, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.qd = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite702 = call i64 @fwrite(ptr nonnull @.str.85, i64 30, i64 1, ptr %i.qd) #12 ; 0 uses
  br label %bb.kp

bb.fh:                                            ; preds = %bb.ff
  %i.qe = load i32, ptr %4, align 4, !tbaa !53
  %i.qf = icmp ne i32 %i.qe, 0
  %i.qg = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.qh = load i32, ptr %i.qg, align 4
  %i.qi = icmp ne i32 %i.qh, 0
  %or.cond23 = select i1 %i.qf, i1 true, i1 %i.qi
  %i.qj = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.qk = load i32, ptr %i.qj, align 4
  %i.ql = icmp sgt i32 %i.qk, 0
  %or.cond26 = select i1 %or.cond23, i1 true, i1 %i.ql
  %i.qm = icmp ne i32 %.05531219, 0               ; 3 uses
  %or.cond28 = select i1 %or.cond26, i1 true, i1 %i.qm
  %i.qn = or i32 %.08021316, %.08071330
  %i.qo = icmp sgt i32 %i.qn, 0
  %narrow = select i1 %or.cond28, i1 true, i1 %i.qo
  %i.qp = zext i1 %narrow to i32
  store i32 %i.qp, ptr %2, align 8, !tbaa !76
  %.b619 = load i1, ptr @verbose, align 4
  br i1 %.b619, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.qq = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #11 ; 0 uses
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %i.qr = icmp ne i32 %.05141093, 0               ; 3 uses
  %. = select i1 %i.qr, ptr %7, ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #11
  store ptr null, ptr %i.j, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #11
  store i64 0, ptr %i.k, align 8, !tbaa !77
  %i.qs = call i32 @ImgIoUtilReadFile(ptr noundef nonnull %.4489, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #11
  %.not.i = icmp eq i32 %i.qs, 0
  br i1 %.not.i, label %bb.fs, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.qt = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 12 uses
  %i.qu = load i32, ptr %i.qt, align 8, !tbaa !18 ; 3 uses
  %i.qv = icmp eq i32 %i.qu, 0
  br i1 %i.qv, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.qw = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !19 ; 3 uses
  %i.qy = icmp eq i32 %i.qx, 0
  br i1 %i.qy, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.qz = load ptr, ptr %i.j, align 8, !tbaa !44
  %i.ra = load i64, ptr %i.k, align 8, !tbaa !77
  %i.rb = call ptr @WebPGuessImageReader(ptr noundef %i.qz, i64 noundef %i.ra) #11
  %i.rc = load ptr, ptr %i.j, align 8, !tbaa !44
  %i.rd = load i64, ptr %i.k, align 8, !tbaa !77
  %i.re = call i32 %i.rb(ptr noundef %i.rc, i64 noundef %i.rd, ptr noundef nonnull %2, i32 noundef range(i32 0, 2) %.05651261, ptr noundef %.) #11, !inline_history !35
  br label %ReadYUV.exit.i

bb.fn:                                            ; preds = %bb.fl
  %i.rf = load ptr, ptr %i.j, align 8, !tbaa !44  ; 2 uses
  %i.rg = load i64, ptr %i.k, align 8, !tbaa !77  ; 2 uses
  %i.rh = load i32, ptr %2, align 8, !tbaa !76
  %i.ri = add nsw i32 %i.qu, 1
  %i.rj = sdiv i32 %i.ri, 2                       ; 5 uses
  %i.rk = add nsw i32 %i.qx, 1
  %i.rl = sdiv i32 %i.rk, 2                       ; 3 uses
  %i.rm = mul nsw i32 %i.qx, %i.qu                ; 2 uses
  %i.rn = mul nsw i32 %i.rl, %i.rj                ; 2 uses
  %i.ro = shl nsw i32 %i.rn, 1
  %i.rp = add nsw i32 %i.ro, %i.rm                ; 2 uses
  %i.rq = sext i32 %i.rp to i64
  %.not.i.i = icmp eq i64 %i.rg, %i.rq
  br i1 %.not.i.i, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.rr = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.rs = trunc i64 %i.rg to i32
  %i.rt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.rr, ptr noundef nonnull @.str.184, i32 noundef %i.rs, i32 noundef %i.rp) #14 ; 0 uses
  br label %bb.fs

bb.fp:                                            ; preds = %bb.fn
  store i32 0, ptr %2, align 8, !tbaa !76
  %i.ru = call i32 @WebPPictureAlloc(ptr noundef nonnull %2) #11
  %.not39.i.i = icmp eq i32 %i.ru, 0
  br i1 %.not39.i.i, label %bb.fs, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.rv = load i32, ptr %i.qt, align 8, !tbaa !18 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !78
  %i.ry = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.rz = load i32, ptr %i.ry, align 8, !tbaa !79
  %i.sa = load i32, ptr %i.qw, align 4, !tbaa !19
  call void @ImgIoUtilCopyPlane(ptr noundef %i.rf, i32 noundef %i.rv, ptr noundef %i.rx, i32 noundef %i.rz, i32 noundef %i.rv, i32 noundef %i.sa) #11
  %i.sb = sext i32 %i.rm to i64
  %i.sc = getelementptr inbounds i8, ptr %i.rf, i64 %i.sb ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !80
  %i.sf = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !81
  call void @ImgIoUtilCopyPlane(ptr noundef nonnull %i.sc, i32 noundef %i.rj, ptr noundef %i.se, i32 noundef %i.sg, i32 noundef %i.rj, i32 noundef %i.rl) #11
  %i.sh = sext i32 %i.rn to i64
  %i.si = getelementptr inbounds i8, ptr %i.sc, i64 %i.sh
  %i.sj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !82
  %i.sl = load i32, ptr %i.sf, align 4, !tbaa !81
  call void @ImgIoUtilCopyPlane(ptr noundef nonnull %i.si, i32 noundef %i.rj, ptr noundef %i.sk, i32 noundef %i.sl, i32 noundef %i.rj, i32 noundef %i.rl) #11
  %.not40.i.i = icmp eq i32 %i.rh, 0
  br i1 %.not40.i.i, label %bb.ft, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.sm = call i32 @WebPPictureYUVAToARGB(ptr noundef nonnull %2) #11
  br label %ReadYUV.exit.i

end_hunk_1
begin_hunk_2_@main:bb.a
  %i.agi = icmp eq i64 %i.agh, 1
  br i1 %i.agi, label %bb.jr, label %WriteMetadataChunk.exit100.i

bb.jr:                                            ; preds = %bb.jq
  %i.agj = load i64, ptr %i.age, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.agk = trunc i64 %i.agj to i32
  store i32 %i.agk, ptr %i.c, align 4
  %i.agl = call i64 @fwrite(ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %.0581918)
  %i.agm = icmp eq i64 %i.agl, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br i1 %i.agm, label %.critedge.i99.i, label %WriteMetadataChunk.exit100.i

.critedge.i99.i:                                  ; preds = %bb.jr
  %i.agn = load ptr, ptr %7, align 8, !tbaa !95
  %i.ago = load i64, ptr %i.age, align 8, !tbaa !94
  %i.agp = call i64 @fwrite(ptr noundef %i.agn, i64 noundef %i.ago, i64 noundef 1, ptr noundef nonnull %.0581918)
  %i.agq = icmp eq i64 %i.agp, 1
  br i1 %i.agq, label %bb.js, label %WriteMetadataChunk.exit100.i

bb.js:                                            ; preds = %.critedge.i99.i
  %i.agr = call i64 @fwrite(ptr noundef nonnull %i.d, i64 noundef %i.agg, i64 noundef %i.agg, ptr noundef nonnull %.0581918)
  %i.ags = icmp eq i64 %i.agr, %i.agg
  %i.agt = zext i1 %i.ags to i32
  br label %WriteMetadataChunk.exit100.i

WriteMetadataChunk.exit100.i:                     ; preds = %bb.js, %.critedge.i99.i, %bb.jr, %bb.jq
  %i.agu = phi i32 [ 0, %.critedge.i99.i ], [ %i.agt, %bb.js ], [ 0, %bb.jq ], [ 0, %bb.jr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %.thread17.i

.thread17.i:                                      ; preds = %WriteMetadataChunk.exit100.i, %bb.jp, %.thread.i
  %.4798933 = phi i32 [ %.4798, %bb.jp ], [ %.4798, %WriteMetadataChunk.exit100.i ], [ %.4798932, %.thread.i ]
  %i.agv = phi i32 [ 0, %bb.jp ], [ %i.agu, %WriteMetadataChunk.exit100.i ], [ 0, %.thread.i ]
  %i.agw = or i32 %.4798933, 1
  br label %bb.jt

bb.jt:                                            ; preds = %.thread17.i, %bb.jo
  %.5799 = phi i32 [ %i.agw, %.thread17.i ], [ %.4798, %bb.jo ] ; 3 uses
  %.2.i = phi i32 [ %i.agv, %.thread17.i ], [ %i.agd, %bb.jo ] ; 2 uses
  br i1 %.not83.i, label %WriteWebPWithMetadata.exit, label %bb.ju

.thread18.i:                                      ; preds = %.thread.i
  br i1 %.not83.i, label %WriteWebPWithMetadata.exit.thread, label %.thread22.i

bb.ju:                                            ; preds = %bb.jt
  %.not84.i = icmp eq i32 %.2.i, 0
  br i1 %.not84.i, label %.thread22.i, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i8 0, ptr %i.b, align 1, !tbaa !28
  %i.agx = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.agy = load i64, ptr %i.agx, align 8, !tbaa !94
  %i.agz = and i64 %i.agy, 1                      ; 3 uses
  %i.aha = call i64 @fwrite(ptr noundef nonnull @.str.203, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %.0581918)
  %i.ahb = icmp eq i64 %i.aha, 1
  br i1 %i.ahb, label %bb.jw, label %WriteMetadataChunk.exit102.i

bb.jw:                                            ; preds = %bb.jv
  %i.ahc = load i64, ptr %i.agx, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.ahd = trunc i64 %i.ahc to i32
  store i32 %i.ahd, ptr %i.a, align 4
  %i.ahe = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %.0581918)
  %i.ahf = icmp eq i64 %i.ahe, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br i1 %i.ahf, label %.critedge.i101.i, label %WriteMetadataChunk.exit102.i

.critedge.i101.i:                                 ; preds = %bb.jw
  %i.ahg = load ptr, ptr %i.acw, align 8, !tbaa !95
  %i.ahh = load i64, ptr %i.agx, align 8, !tbaa !94
  %i.ahi = call i64 @fwrite(ptr noundef %i.ahg, i64 noundef %i.ahh, i64 noundef 1, ptr noundef nonnull %.0581918)
  %i.ahj = icmp eq i64 %i.ahi, 1
  br i1 %i.ahj, label %bb.jx, label %WriteMetadataChunk.exit102.i

bb.jx:                                            ; preds = %.critedge.i101.i
  %i.ahk = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef %i.agz, i64 noundef %i.agz, ptr noundef nonnull %.0581918)
  %i.ahl = icmp eq i64 %i.ahk, %i.agz
  %i.ahm = zext i1 %i.ahl to i32
  br label %WriteMetadataChunk.exit102.i

WriteMetadataChunk.exit102.i:                     ; preds = %bb.jx, %.critedge.i101.i, %bb.jw, %bb.jv
  %i.ahn = phi i32 [ 0, %.critedge.i101.i ], [ %i.ahm, %bb.jx ], [ 0, %bb.jv ], [ 0, %bb.jw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %.thread22.i

.thread22.i:                                      ; preds = %WriteMetadataChunk.exit102.i, %bb.ju, %.thread18.i
  %.6800 = phi i32 [ %.4798932, %.thread18.i ], [ %.5799, %bb.ju ], [ %.5799, %WriteMetadataChunk.exit102.i ]
  %i.aho = phi i32 [ 0, %.thread18.i ], [ 0, %bb.ju ], [ %i.ahn, %WriteMetadataChunk.exit102.i ]
  %i.ahp = or i32 %.6800, 4
  br label %WriteWebPWithMetadata.exit

bb.jy:                                            ; preds = %bb.ix
  %i.ahq = call i64 @fwrite(ptr noundef %.val757, i64 noundef %.val758, i64 noundef 1, ptr noundef nonnull %.0581918)
  %i.ahr = icmp eq i64 %i.ahq, 1
  %i.ahs = zext i1 %i.ahr to i32
  br label %WriteWebPWithMetadata.exit

WriteWebPWithMetadata.exit:                       ; preds = %bb.jt, %.thread22.i, %bb.jy
  %.7801 = phi i32 [ %.5799, %bb.jt ], [ %i.ahp, %.thread22.i ], [ 0, %bb.jy ]
  %.071.i = phi i32 [ %.2.i, %bb.jt ], [ %i.aho, %.thread22.i ], [ %i.ahs, %bb.jy ]
  %.not733 = icmp eq i32 %.071.i, 0
  br i1 %.not733, label %WriteWebPWithMetadata.exit.thread, label %.thread937

WriteWebPWithMetadata.exit.thread:                ; preds = %.thread18.i, %UpdateFlagsAndSize.exit98.i, %bb.iw, %WriteWebPWithMetadata.exit
  %i.aht = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite734 = call i64 @fwrite(ptr nonnull @.str.105, i64 25, i64 1, ptr %i.aht) #12 ; 0 uses
  br label %bb.kp

bb.jz:                                            ; preds = %bb.in
  %.not1784 = xor i1 %i.acd, true
  %or.cond51 = select i1 %.not1784, i1 %i.qr, i1 false
  br i1 %or.cond51, label %.lr.ph1412.preheader, label %.thread937

.lr.ph1412.preheader:                             ; preds = %bb.jz
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  store ptr %7, ptr %10, align 16, !tbaa !98
  %i.ahu = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 1, ptr %i.ahu, align 8, !tbaa !99
  %i.ahv = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 0, ptr %i.ahv, align 4
  %i.ahw = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ahx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.ahx, ptr %i.ahw, align 16, !tbaa !98
  %i.ahy = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 2, ptr %i.ahy, align 8, !tbaa !99
  %i.ahz = getelementptr inbounds nuw i8, ptr %10, i64 28
  store i32 0, ptr %i.ahz, align 4
  %i.aia = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.aib = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.aib, ptr %i.aia, align 16, !tbaa !98
  %i.aic = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i32 4, ptr %i.aic, align 8, !tbaa !99
  %i.aid = getelementptr inbounds nuw i8, ptr %10, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.aid, i8 0, i64 20, i1 false)
  br label %.lr.ph1412

.lr.ph1412:                                       ; preds = %.lr.ph1412.preheader, %UpdateFlagsAndSize.exit.thread
  %i.aie = phi ptr [ %i.ain, %UpdateFlagsAndSize.exit.thread ], [ %7, %.lr.ph1412.preheader ] ; 2 uses
  %.01410 = phi ptr [ %i.aim, %UpdateFlagsAndSize.exit.thread ], [ %10, %.lr.ph1412.preheader ] ; 2 uses
  %.17951408 = phi i32 [ %.2796, %UpdateFlagsAndSize.exit.thread ], [ 0, %.lr.ph1412.preheader ] ; 3 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %.01410, i64 8
  %i.aig = load i32, ptr %i.aif, align 8, !tbaa !99 ; 2 uses
  %i.aih = and i32 %i.aig, %.05141093
  %.not955 = icmp eq i32 %i.aih, 0
  br i1 %.not955, label %UpdateFlagsAndSize.exit.thread, label %bb.ka

bb.ka:                                            ; preds = %.lr.ph1412
  %i.aii = load ptr, ptr %i.aie, align 8, !tbaa !95
  %.not8.i = icmp eq ptr %i.aii, null
  br i1 %.not8.i, label %UpdateFlagsAndSize.exit.thread, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aie, i64 8
  %i.aik = load i64, ptr %i.aij, align 8, !tbaa !94
  %.not9.i = icmp eq i64 %i.aik, 0
  %i.ail = select i1 %.not9.i, i32 0, i32 %i.aig
  %spec.select2220 = or i32 %.17951408, %i.ail
  br label %UpdateFlagsAndSize.exit.thread

UpdateFlagsAndSize.exit.thread:                   ; preds = %bb.kb, %.lr.ph1412, %bb.ka
  %.2796 = phi i32 [ %.17951408, %.lr.ph1412 ], [ %spec.select2220, %bb.kb ], [ %.17951408, %bb.ka ] ; 2 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %.01410, i64 16 ; 2 uses
  %i.ain = load ptr, ptr %i.aim, align 8, !tbaa !98 ; 2 uses
  %.not735 = icmp eq ptr %i.ain, null
  br i1 %.not735, label %._crit_edge1413, label %.lr.ph1412, !llvm.loop !43

._crit_edge1413:                                  ; preds = %UpdateFlagsAndSize.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  br label %.thread937

.thread937:                                       ; preds = %WriteWebPWithMetadata.exit, %._crit_edge1413, %bb.jz
  %.3797 = phi i32 [ %.2796, %._crit_edge1413 ], [ 0, %bb.jz ], [ %.7801, %WriteWebPWithMetadata.exit ]
  br i1 %i.pf, label %bb.kc, label %bb.kp

bb.kc:                                            ; preds = %.thread937
  %i.aio = icmp eq i32 %.05731289, 0              ; 4 uses
  %or.cond53 = or i1 %i.aio, %i.xw
  br i1 %or.cond53, label %bb.kd, label %.thread946

bb.kd:                                            ; preds = %bb.kc
  %i.aip = load i32, ptr %4, align 4, !tbaa !53
  %.not736 = icmp eq i32 %i.aip, 0
  br i1 %.not736, label %bb.kf, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  call fastcc void @PrintExtraInfoLossless(ptr noundef %2, i32 noundef %.05731289, ptr noundef %.4489)
  br label %bb.kg

bb.kf:                                            ; preds = %bb.kd
  %i.aiq = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.air = load i32, ptr %i.aiq, align 4, !tbaa !63
  call fastcc void @PrintExtraInfoLossy(ptr noundef %2, i32 noundef %.05731289, i32 noundef %i.air, ptr noundef %.4489)
  br label %bb.kg

bb.kg:                                            ; preds = %bb.ke, %bb.kf
  %i.ais = load i32, ptr %i.xk, align 8
  %i.ait = icmp sgt i32 %i.ais, 0
  %or.cond56 = select i1 %i.aio, i1 %i.ait, i1 false
  br i1 %or.cond56, label %bb.kh, label %bb.ki

bb.kh:                                            ; preds = %bb.kg
  call fastcc void @PrintMapInfo(ptr noundef %2)
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %bb.kg
  br i1 %i.yo, label %.thread946, label %bb.kn

.thread946:                                       ; preds = %bb.kc, %bb.ki
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #11
  %i.aiu = call i32 @WebPPictureDistortion(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef %.05101079, ptr noundef nonnull %i.m) #11
  %.not737.a = icmp eq i32 %i.aiu, 0
  %11 = load ptr, ptr @stderr, align 8, !tbaa !11 ; 3 uses
  br i1 %.not737.a, label %bb.km, label %bb.kj

bb.kj:                                            ; preds = %.thread946
  br i1 %i.aio, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  %i.aiv = zext nneg i32 %.05101079 to i64
  %i.aiw = getelementptr inbounds nuw [8 x i8], ptr @main.distortion_names, i64 %i.aiv
  %i.aix = load ptr, ptr %i.aiw, align 8, !tbaa !44
  %i.aiy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.110, ptr noundef %i.aix) #14 ; 0 uses
  %i.aiz = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.aja = load <4 x float>, ptr %i.m, align 16, !tbaa !29
  %i.ajb = fpext <4 x float> %i.aja to <4 x double> ; 4 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ajd = load float, ptr %i.ajc, align 16, !tbaa !29
  %i.aje = fpext float %i.ajd to double
  %i.ajf = extractelement <4 x double> %i.ajb, i64 0
  %i.ajg = extractelement <4 x double> %i.ajb, i64 1
  %i.ajh = extractelement <4 x double> %i.ajb, i64 2
  %i.aji = extractelement <4 x double> %i.ajb, i64 3
  %i.ajj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aiz, ptr noundef nonnull @.str.111, double noundef %i.ajf, double noundef %i.ajg, double noundef %i.ajh, double noundef %i.aji, double noundef %i.aje) #14 ; 0 uses
  br label %.thread948

bb.kl:                                            ; preds = %bb.kj
  %i.ajk = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ajl = load ptr, ptr %i.ajk, align 8, !tbaa !24
  %i.ajm = load i32, ptr %i.ajl, align 4, !tbaa !31
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ajo = load float, ptr %i.ajn, align 16, !tbaa !29
  %i.ajp = fpext float %i.ajo to double
  %i.ajq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.112, i32 noundef %i.ajm, double noundef %i.ajp) #14 ; 0 uses
  br label %.thread948

.thread948:                                       ; preds = %bb.kl, %bb.kk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #11
  br label %bb.kn

bb.km:                                            ; preds = %.thread946
  %fwrite738 = call i64 @fwrite(ptr nonnull @.str.109, i64 38, i64 1, ptr %11) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #11
  br label %bb.kp

bb.kn:                                            ; preds = %.thread948, %bb.ki
  br i1 %i.aio, label %bb.ko, label %bb.kp

bb.ko:                                            ; preds = %bb.kn
  call fastcc void @PrintMetadataInfo(ptr noundef %7, i32 noundef %.3797)
  br label %bb.kp

bb.kp:                                            ; preds = %bb.km, %.thread921, %bb.ge, %.thread857, %.thread937, %bb.ko, %bb.kn, %WriteWebPWithMetadata.exit.thread, %bb.hu, %bb.hs, %bb.hl, %bb.hh, %bb.gm, %bb.fs, %bb.fg, %bb.ex, %.loopexit.thread
  %.1582 = phi ptr [ null, %.loopexit.thread ], [ null, %.thread857 ], [ %.0581918, %bb.km ], [ %.0581918, %WriteWebPWithMetadata.exit.thread ], [ %.0581918, %bb.hu ], [ %.0581918, %bb.hs ], [ %.0581918, %bb.hl ], [ %.0581918, %bb.hh ], [ %.0581918, %.thread921 ], [ %.0581918, %bb.gm ], [ null, %bb.ge ], [ null, %bb.fs ], [ null, %bb.fg ], [ null, %bb.ex ], [ %.0581918, %bb.kn ], [ %.0581918, %bb.ko ], [ %.0581918, %.thread937 ] ; 3 uses
  %.0477 = phi i32 [ 1, %.loopexit.thread ], [ 1, %.thread857 ], [ 1, %bb.km ], [ 1, %WriteWebPWithMetadata.exit.thread ], [ 1, %bb.hu ], [ 1, %bb.hs ], [ 1, %bb.hl ], [ 1, %bb.hh ], [ 1, %.thread921 ], [ 1, %bb.gm ], [ 1, %bb.ge ], [ 1, %bb.fs ], [ 1, %bb.fg ], [ 1, %bb.ex ], [ 0, %bb.kn ], [ 0, %bb.ko ], [ 0, %.thread937 ] ; 2 uses
  call void @WebPMemoryWriterClear(ptr noundef nonnull %6) #11
  %i.ajr = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.ajs = load ptr, ptr %i.ajr, align 8, !tbaa !26
  call void @WebPFree(ptr noundef %i.ajs) #11
  call void @MetadataFree(ptr noundef nonnull %7) #11
  call void @WebPPictureFree(ptr noundef nonnull %2) #11
  call void @WebPPictureFree(ptr noundef nonnull %3) #11
  %.not743 = icmp eq ptr %.1582, null
  %i.ajt = load ptr, ptr @stdout, align 8
  %.not744 = icmp eq ptr %.1582, %i.ajt
  %or.cond755 = select i1 %.not743, i1 true, i1 %.not744
  br i1 %or.cond755, label %bb.kr, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.aju = call i32 @fclose(ptr noundef nonnull %.1582) ; 0 uses
  br label %bb.kr

bb.kr:                                            ; preds = %.thread831, %bb.kq, %bb.kp, %bb.f, %bb.d
  %.7 = phi i32 [ 1, %bb.f ], [ %.5.ph, %.thread831 ], [ 1, %bb.d ], [ %.0477, %bb.kp ], [ %.0477, %bb.kq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret i32 %.7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @MetadataInit(ptr noundef) local_unnamed_addr #2

declare void @WebPMemoryWriterInit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @HelpShort() unnamed_addr #4 {
bb.a:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %puts1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %puts2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %puts3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %puts4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @HelpLong() unnamed_addr #0 {
bb.a:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %puts1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  %puts2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  %puts3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  %puts4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  %puts5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  %puts6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  %puts7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12) ; 0 uses
  %puts8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %puts9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14) ; 0 uses
  %puts10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15) ; 0 uses
  %puts11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16) ; 0 uses
  %puts12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17) ; 0 uses
  %puts13 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %puts14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19) ; 0 uses
  %puts15 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.20) ; 0 uses
  %puts16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.21) ; 0 uses
  %puts17 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.22) ; 0 uses
  %putchar18 = tail call i32 @putchar(i32 10)     ; 0 uses
  %puts19 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.23) ; 0 uses
  %puts20 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.24) ; 0 uses
  %puts21 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.25) ; 0 uses
  %puts22 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.26) ; 0 uses
  %puts23 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27) ; 0 uses
  %puts24 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.28) ; 0 uses
  %puts25 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.29) ; 0 uses
  %puts26 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.30) ; 0 uses
  %puts27 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.31) ; 0 uses
  %puts28 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.32) ; 0 uses
  %puts29 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.33) ; 0 uses
  %puts30 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.34) ; 0 uses
  %puts31 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.35) ; 0 uses
  %puts32 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.36) ; 0 uses
  %puts33 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.37) ; 0 uses
  %puts34 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.38) ; 0 uses
  %puts35 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.39) ; 0 uses
  %puts36 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.40) ; 0 uses
  %puts37 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.41) ; 0 uses
  %puts38 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.42) ; 0 uses
  %puts39 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.43) ; 0 uses
  %puts40 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.44) ; 0 uses
  %puts41 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.45) ; 0 uses
  %puts42 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.46) ; 0 uses
  %puts43 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.47) ; 0 uses
  %puts44 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.48) ; 0 uses
  %puts45 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.49) ; 0 uses
  %puts46 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.50) ; 0 uses
  %puts47 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.51) ; 0 uses
  %puts48 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.52) ; 0 uses
  %puts49 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.53) ; 0 uses
  %putchar50 = tail call i32 @putchar(i32 10)     ; 0 uses
  %puts51 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.54) ; 0 uses
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.169) ; 0 uses
  %puts52 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.55) ; 0 uses
  %puts53 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.56) ; 0 uses
  %putchar54 = tail call i32 @putchar(i32 10)     ; 0 uses
  %puts55 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.57) ; 0 uses
  %puts56 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.58) ; 0 uses
  %puts57 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.59) ; 0 uses
  %puts58 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.60) ; 0 uses
  %puts59 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.61) ; 0 uses
  %puts60 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.62) ; 0 uses
  %putchar61 = tail call i32 @putchar(i32 10)     ; 0 uses
  %puts62 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.63) ; 0 uses
  %puts63 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.64) ; 0 uses
  %puts64 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.65) ; 0 uses
  %puts65 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.66) ; 0 uses
  %putchar66 = tail call i32 @putchar(i32 10)     ; 0 uses
  %i.b = tail call ptr @WebPGetEnabledInputFileFormats() #11
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.182, ptr noundef %i.b) ; 0 uses
  ret void
}

declare i32 @ExUtilGetInt(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare float @ExUtilGetFloat(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @WebPGetEncoderVersion() local_unnamed_addr #2

declare i32 @SharpYuvGetVersion() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

declare i32 @WebPConfigLosslessPreset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @WebPValidateConfig(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree nounwind uwtable
define internal noundef i32 @ProgressReport(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #6 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.185, ptr noundef %i.c, i32 noundef %0) #14 ; 0 uses
  ret i32 1
}

declare void @WebPBlendAlpha(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nofree nounwind uwtable
define internal fastcc double @StopwatchReadAndReset(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #7 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %i.a = tail call i32 @gettimeofday(ptr noundef nonnull %0, ptr noundef null) #11 ; 0 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !101
  %i.c = sitofp i64 %i.b to double
  %i.d = sitofp i64 %.sroa.0.0.copyload to double
  %i.e = fsub double %i.c, %i.d
  %i.f = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !102
  %i.g = sitofp i64 %i.f to double
  %i.h = sitofp i64 %.sroa.4.0.copyload to double
  %i.i = fsub double %i.g, %i.h
  %i.j = fdiv double %i.i, 1.000000e+06
  %i.k = fadd double %i.e, %i.j
  ret double %i.k
}

declare ptr @ImgIoUtilSetBinaryMode(ptr noundef) local_unnamed_addr #2

end_hunk_2

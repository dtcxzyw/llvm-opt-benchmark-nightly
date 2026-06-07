inline.NumInlined: 82
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tjscalingfactor = type { i32, i32 }
%struct.my_progress_mgr = type { %struct.jpeg_progress_mgr, ptr }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }

@tj3Init.FUNCTION_NAME = internal constant [8 x i8] c"tj3Init\00", align 1
@errStr = internal thread_local global [200 x i8] c"No error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str = private unnamed_addr constant [9 x i8] c"%s(): %s\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Invalid argument\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Memory allocation failure\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"No error\00", align 1
@tjDestroy.FUNCTION_NAME = internal constant [10 x i8] c"tjDestroy\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Invalid handle\00", align 1
@tj3Set.FUNCTION_NAME = internal constant [7 x i8] c"tj3Set\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"%s(): Invalid handle\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Parameter value out of range\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"TJPARAM_NOREALLOC is not applicable to decompression instances.\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"TJPARAM_QUALITY is not applicable to decompression instances.\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"TJPARAM_JPEGWIDTH is not applicable to compression instances.\00", align 1
@.str.10 = private unnamed_addr constant [59 x i8] c"TJPARAM_JPEGWIDTH is read-only in decompression instances.\00", align 1
@.str.11 = private unnamed_addr constant [63 x i8] c"TJPARAM_JPEGHEIGHT is not applicable to compression instances.\00", align 1
@.str.12 = private unnamed_addr constant [60 x i8] c"TJPARAM_JPEGHEIGHT is read-only in decompression instances.\00", align 1
@.str.13 = private unnamed_addr constant [60 x i8] c"TJPARAM_COLORSPACE is read-only in decompression instances.\00", align 1
@.str.14 = private unnamed_addr constant [65 x i8] c"TJPARAM_FASTUPSAMPLE is not applicable to compression instances.\00", align 1
@.str.15 = private unnamed_addr constant [63 x i8] c"TJPARAM_OPTIMIZE is not applicable to decompression instances.\00", align 1
@.str.16 = private unnamed_addr constant [61 x i8] c"TJPARAM_PROGRESSIVE is read-only in decompression instances.\00", align 1
@.str.17 = private unnamed_addr constant [62 x i8] c"TJPARAM_SCANLIMIT is not applicable to compression instances.\00", align 1
@.str.18 = private unnamed_addr constant [60 x i8] c"TJPARAM_ARITHMETIC is read-only in decompression instances.\00", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c"TJPARAM_LOSSLESS is read-only in decompression instances.\00", align 1
@.str.20 = private unnamed_addr constant [61 x i8] c"TJPARAM_LOSSLESSPSV is read-only in decompression instances.\00", align 1
@.str.21 = private unnamed_addr constant [60 x i8] c"TJPARAM_LOSSLESSPT is read-only in decompression instances.\00", align 1
@.str.22 = private unnamed_addr constant [68 x i8] c"TJPARAM_RESTARTBLOCKS is not applicable to decompression instances.\00", align 1
@.str.23 = private unnamed_addr constant [66 x i8] c"TJPARAM_RESTARTROWS is not applicable to decompression instances.\00", align 1
@.str.24 = private unnamed_addr constant [58 x i8] c"TJPARAM_XDENSITY is read-only in decompression instances.\00", align 1
@.str.25 = private unnamed_addr constant [58 x i8] c"TJPARAM_YDENSITY is read-only in decompression instances.\00", align 1
@.str.26 = private unnamed_addr constant [62 x i8] c"TJPARAM_DENSITYUNITS is read-only in decompression instances.\00", align 1
@.str.27 = private unnamed_addr constant [64 x i8] c"TJPARAM_SAVEMARKERS is not applicable to compression instances.\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"Invalid parameter\00", align 1
@tj3JPEGBufSize.FUNCTION_NAME = internal constant [15 x i8] c"tj3JPEGBufSize\00", align 1
@tjMCUWidth = internal unnamed_addr constant [7 x i32] [i32 8, i32 16, i32 16, i32 8, i32 8, i32 32, i32 8], align 16
@tjMCUHeight = internal unnamed_addr constant [7 x i32] [i32 8, i32 8, i32 16, i32 8, i32 16, i32 8, i32 32], align 16
@tjBufSize.FUNCTION_NAME = internal constant [10 x i8] c"tjBufSize\00", align 1
@TJBUFSIZE.FUNCTION_NAME = internal constant [10 x i8] c"TJBUFSIZE\00", align 1
@tj3YUVBufSize.FUNCTION_NAME = internal constant [14 x i8] c"tj3YUVBufSize\00", align 1
@tj3YUVPlaneSize.FUNCTION_NAME = internal constant [16 x i8] c"tj3YUVPlaneSize\00", align 16
@tj3YUVPlaneWidth.FUNCTION_NAME = internal constant [17 x i8] c"tj3YUVPlaneWidth\00", align 16
@.str.29 = private unnamed_addr constant [19 x i8] c"Width is too large\00", align 1
@tj3YUVPlaneHeight.FUNCTION_NAME = internal constant [18 x i8] c"tj3YUVPlaneHeight\00", align 16
@.str.30 = private unnamed_addr constant [20 x i8] c"Height is too large\00", align 1
@tj3SetICCProfile.FUNCTION_NAME = internal constant [17 x i8] c"tj3SetICCProfile\00", align 16
@.str.31 = private unnamed_addr constant [50 x i8] c"Instance has not been initialized for compression\00", align 1
@tj3Compress8.FUNCTION_NAME = internal constant [13 x i8] c"tj3Compress8\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"TJPARAM_QUALITY must be specified\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"TJPARAM_SUBSAMP must be specified\00", align 1
@tjPixelSize = internal unnamed_addr constant [12 x i32] [i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 1, i32 4, i32 4, i32 4, i32 4, i32 4], align 16
@tj3Decompress8.FUNCTION_NAME = internal constant [15 x i8] c"tj3Decompress8\00", align 1
@.str.34 = private unnamed_addr constant [52 x i8] c"Instance has not been initialized for decompression\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"Image is too large\00", align 1
@pf2cs = internal unnamed_addr constant [12 x i32] [i32 6, i32 8, i32 7, i32 9, i32 10, i32 11, i32 1, i32 12, i32 13, i32 14, i32 15, i32 4], align 16
@.str.36 = private unnamed_addr constant [96 x i8] c"%s(): Unexplained mismatch between specified (%d) and\0Aactual (%d) cropping region left boundary\00", align 1
@.str.37 = private unnamed_addr constant [88 x i8] c"%s(): Unexplained mismatch between specified (%d) and\0Aactual (%d) cropping region width\00", align 1
@.str.38 = private unnamed_addr constant [97 x i8] c"%s(): Unexplained mismatch between specified (%d) and\0Aactual (%d) cropping region upper boundary\00", align 1
@.str.39 = private unnamed_addr constant [97 x i8] c"%s(): Unexplained mismatch between specified (%d) and\0Aactual (%d) cropping region lower boundary\00", align 1
@tj3LoadImage8.FUNCTION_NAME = internal constant [14 x i8] c"tj3LoadImage8\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"Alignment must be a power of 2\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"%s(): %s\0A%s\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"Cannot open input file\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"Could not read input file\00", align 1
@.str.46 = private unnamed_addr constant [35 x i8] c"Could not initialize bitmap loader\00", align 1
@.str.47 = private unnamed_addr constant [32 x i8] c"Could not initialize PPM loader\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"Unsupported file type\00", align 1
@cs2pf = internal unnamed_addr constant [17 x i32] [i32 -1, i32 6, i32 0, i32 -1, i32 11, i32 -1, i32 0, i32 2, i32 1, i32 3, i32 4, i32 5, i32 7, i32 8, i32 9, i32 10, i32 -1], align 16
@tj3SaveImage8.FUNCTION_NAME = internal constant [14 x i8] c"tj3SaveImage8\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"Cannot open output file\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c".bmp\00", align 1
@.str.52 = private unnamed_addr constant [35 x i8] c"Could not initialize bitmap writer\00", align 1
@.str.53 = private unnamed_addr constant [32 x i8] c"Could not initialize PPM writer\00", align 1
@tj3Compress12.FUNCTION_NAME = internal constant [14 x i8] c"tj3Compress12\00", align 1
@tj3Decompress12.FUNCTION_NAME = internal constant [16 x i8] c"tj3Decompress12\00", align 16
@tj3LoadImage12.FUNCTION_NAME = internal constant [15 x i8] c"tj3LoadImage12\00", align 1
@tj3SaveImage12.FUNCTION_NAME = internal constant [15 x i8] c"tj3SaveImage12\00", align 1
@tj3Compress16.FUNCTION_NAME = internal constant [14 x i8] c"tj3Compress16\00", align 1
@tj3Decompress16.FUNCTION_NAME = internal constant [16 x i8] c"tj3Decompress16\00", align 16
@tj3LoadImage16.FUNCTION_NAME = internal constant [15 x i8] c"tj3LoadImage16\00", align 1
@tj3SaveImage16.FUNCTION_NAME = internal constant [15 x i8] c"tj3SaveImage16\00", align 1
@tjCompress2.FUNCTION_NAME = internal constant [12 x i8] c"tjCompress2\00", align 1
@tj3CompressFromYUVPlanes8.FUNCTION_NAME = internal constant [26 x i8] c"tj3CompressFromYUVPlanes8\00", align 16
@tjCompressFromYUVPlanes.FUNCTION_NAME = internal constant [24 x i8] c"tjCompressFromYUVPlanes\00", align 16
@tj3CompressFromYUV8.FUNCTION_NAME = internal constant [20 x i8] c"tj3CompressFromYUV8\00", align 16
@.str.54 = private unnamed_addr constant [36 x i8] c"Image or row alignment is too large\00", align 1
@tjCompressFromYUV.FUNCTION_NAME = internal constant [18 x i8] c"tjCompressFromYUV\00", align 16
@tj3EncodeYUVPlanes8.FUNCTION_NAME = internal constant [20 x i8] c"tj3EncodeYUVPlanes8\00", align 16
@.str.55 = private unnamed_addr constant [57 x i8] c"Cannot generate YUV images from packed-pixel CMYK images\00", align 1
@.str.56 = private unnamed_addr constant [34 x i8] c"libjpeg API is in the wrong state\00", align 1
@tjEncodeYUVPlanes.FUNCTION_NAME = internal constant [18 x i8] c"tjEncodeYUVPlanes\00", align 16
@tj3EncodeYUV8.FUNCTION_NAME = internal constant [14 x i8] c"tj3EncodeYUV8\00", align 1
@tjEncodeYUV3.FUNCTION_NAME = internal constant [13 x i8] c"tjEncodeYUV3\00", align 1
@tj3DecompressHeader.FUNCTION_NAME = internal constant [20 x i8] c"tj3DecompressHeader\00", align 16
@.str.57 = private unnamed_addr constant [45 x i8] c"Could not determine colorspace of JPEG image\00", align 1
@.str.58 = private unnamed_addr constant [32 x i8] c"Invalid data returned in header\00", align 1
@tjDecompressHeader3.FUNCTION_NAME = internal constant [20 x i8] c"tjDecompressHeader3\00", align 16
@.str.59 = private unnamed_addr constant [52 x i8] c"Could not determine subsampling level of JPEG image\00", align 1
@tj3GetICCProfile.FUNCTION_NAME = internal constant [17 x i8] c"tj3GetICCProfile\00", align 16
@.str.60 = private unnamed_addr constant [39 x i8] c"No ICC profile data has been extracted\00", align 1
@tj3GetScalingFactors.FUNCTION_NAME = internal constant [21 x i8] c"tj3GetScalingFactors\00", align 16
@sf = internal constant [16 x %struct.tjscalingfactor] [%struct.tjscalingfactor { i32 2, i32 1 }, %struct.tjscalingfactor { i32 15, i32 8 }, %struct.tjscalingfactor { i32 7, i32 4 }, %struct.tjscalingfactor { i32 13, i32 8 }, %struct.tjscalingfactor { i32 3, i32 2 }, %struct.tjscalingfactor { i32 11, i32 8 }, %struct.tjscalingfactor { i32 5, i32 4 }, %struct.tjscalingfactor { i32 9, i32 8 }, %struct.tjscalingfactor { i32 1, i32 1 }, %struct.tjscalingfactor { i32 7, i32 8 }, %struct.tjscalingfactor { i32 3, i32 4 }, %struct.tjscalingfactor { i32 5, i32 8 }, %struct.tjscalingfactor { i32 1, i32 2 }, %struct.tjscalingfactor { i32 3, i32 8 }, %struct.tjscalingfactor { i32 1, i32 4 }, %struct.tjscalingfactor { i32 1, i32 8 }], align 16
@tj3SetScalingFactor.FUNCTION_NAME = internal constant [20 x i8] c"tj3SetScalingFactor\00", align 16
@.str.61 = private unnamed_addr constant [27 x i8] c"Unsupported scaling factor\00", align 1
@tj3SetCroppingRegion.FUNCTION_NAME = internal constant [21 x i8] c"tj3SetCroppingRegion\00", align 16
@.str.62 = private unnamed_addr constant [24 x i8] c"Invalid cropping region\00", align 1
@.str.63 = private unnamed_addr constant [34 x i8] c"JPEG header has not yet been read\00", align 1
@.str.64 = private unnamed_addr constant [49 x i8] c"Cannot partially decompress lossless JPEG images\00", align 1
@.str.65 = private unnamed_addr constant [99 x i8] c"%s(): The left boundary of the cropping region (%d) is not\0Adivisible by the scaled iMCU width (%d)\00", align 1
@.str.66 = private unnamed_addr constant [56 x i8] c"The cropping region exceeds the scaled image dimensions\00", align 1
@tjDecompress2.FUNCTION_NAME = internal constant [14 x i8] c"tjDecompress2\00", align 1
@.str.67 = private unnamed_addr constant [49 x i8] c"Could not scale down to desired image dimensions\00", align 1
@tj3DecompressToYUVPlanes8.FUNCTION_NAME = internal constant [26 x i8] c"tj3DecompressToYUVPlanes8\00", align 16
@.str.68 = private unnamed_addr constant [43 x i8] c"JPEG image must have 3 or fewer components\00", align 1
@tjDecompressToYUVPlanes.FUNCTION_NAME = internal constant [24 x i8] c"tjDecompressToYUVPlanes\00", align 16
@tj3DecompressToYUV8.FUNCTION_NAME = internal constant [20 x i8] c"tj3DecompressToYUV8\00", align 16
@tjDecompressToYUV2.FUNCTION_NAME = internal constant [19 x i8] c"tjDecompressToYUV2\00", align 16
@tj3DecodeYUVPlanes8.FUNCTION_NAME = internal constant [20 x i8] c"tj3DecodeYUVPlanes8\00", align 16
@.str.69 = private unnamed_addr constant [56 x i8] c"Cannot decode YUV images into packed-pixel CMYK images.\00", align 1
@tjDecodeYUVPlanes.FUNCTION_NAME = internal constant [18 x i8] c"tjDecodeYUVPlanes\00", align 16
@tj3DecodeYUV8.FUNCTION_NAME = internal constant [14 x i8] c"tj3DecodeYUV8\00", align 1
@tjDecodeYUV.FUNCTION_NAME = internal constant [12 x i8] c"tjDecodeYUV\00", align 1
@tj3TransformBufSize.FUNCTION_NAME = internal constant [20 x i8] c"tj3TransformBufSize\00", align 16
@.str.70 = private unnamed_addr constant [53 x i8] c"Instance has not been initialized for transformation\00", align 1
@tj3Transform.FUNCTION_NAME = internal constant [13 x i8] c"tj3Transform\00", align 1
@.str.71 = private unnamed_addr constant [28 x i8] c"Invalid transform operation\00", align 1
@xformtypes = internal unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], align 16
@.str.72 = private unnamed_addr constant [25 x i8] c"Transform is not perfect\00", align 1
@.str.73 = private unnamed_addr constant [59 x i8] c"Could not determine subsampling level of destination image\00", align 1
@.str.74 = private unnamed_addr constant [90 x i8] c"%s(): To crop this JPEG image, x must be a multiple of %d\0Aand y must be a multiple of %d.\00", align 1
@.str.75 = private unnamed_addr constant [23 x i8] c"Error in custom filter\00", align 1
@tjTransform.FUNCTION_NAME = internal constant [12 x i8] c"tjTransform\00", align 1
@_tjInitCompress.buffer = internal global [1 x i8] zeroinitializer, align 1
@turbojpeg_message_table = internal global [49 x ptr] [ptr null, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr null], align 16
@.str.76 = private unnamed_addr constant [32 x i8] c"Unsupported BMP colormap format\00", align 1
@.str.77 = private unnamed_addr constant [49 x i8] c"Only 8-, 24-, and 32-bit BMP files are supported\00", align 1
@.str.78 = private unnamed_addr constant [36 x i8] c"Invalid BMP file: bad header length\00", align 1
@.str.79 = private unnamed_addr constant [42 x i8] c"Invalid BMP file: biPlanes not equal to 1\00", align 1
@.str.80 = private unnamed_addr constant [36 x i8] c"BMP output must be grayscale or RGB\00", align 1
@.str.81 = private unnamed_addr constant [41 x i8] c"Sorry, compressed BMPs not yet supported\00", align 1
@.str.82 = private unnamed_addr constant [16 x i8] c"Empty BMP image\00", align 1
@.str.83 = private unnamed_addr constant [40 x i8] c"Not a BMP file - does not start with BM\00", align 1
@.str.84 = private unnamed_addr constant [39 x i8] c"Numeric value out of range in BMP file\00", align 1
@.str.85 = private unnamed_addr constant [23 x i8] c"%ux%u %d-bit BMP image\00", align 1
@.str.86 = private unnamed_addr constant [34 x i8] c"%ux%u 8-bit colormapped BMP image\00", align 1
@.str.87 = private unnamed_addr constant [27 x i8] c"%ux%u %d-bit OS2 BMP image\00", align 1
@.str.88 = private unnamed_addr constant [38 x i8] c"%ux%u 8-bit colormapped OS2 BMP image\00", align 1
@.str.89 = private unnamed_addr constant [24 x i8] c"GIF output got confused\00", align 1
@.str.90 = private unnamed_addr constant [22 x i8] c"Bogus GIF codesize %d\00", align 1
@.str.91 = private unnamed_addr constant [36 x i8] c"GIF output must be grayscale or RGB\00", align 1
@.str.92 = private unnamed_addr constant [16 x i8] c"Empty GIF image\00", align 1
@.str.93 = private unnamed_addr constant [27 x i8] c"Too few images in GIF file\00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"Not a GIF file\00", align 1
@.str.95 = private unnamed_addr constant [19 x i8] c"%ux%ux%d GIF image\00", align 1
@.str.96 = private unnamed_addr constant [48 x i8] c"Warning: unexpected GIF version number '%c%c%c'\00", align 1
@.str.97 = private unnamed_addr constant [44 x i8] c"Ignoring GIF extension block of type 0x%02x\00", align 1
@.str.98 = private unnamed_addr constant [35 x i8] c"Caution: nonsquare pixels in input\00", align 1
@.str.99 = private unnamed_addr constant [25 x i8] c"Corrupt data in GIF file\00", align 1
@.str.100 = private unnamed_addr constant [40 x i8] c"Bogus char 0x%02x in GIF file, ignoring\00", align 1
@.str.101 = private unnamed_addr constant [27 x i8] c"Premature end of GIF image\00", align 1
@.str.102 = private unnamed_addr constant [20 x i8] c"Ran out of GIF bits\00", align 1
@.str.103 = private unnamed_addr constant [36 x i8] c"PPM output must be grayscale or RGB\00", align 1
@.str.104 = private unnamed_addr constant [28 x i8] c"Nonnumeric data in PPM file\00", align 1
@.str.105 = private unnamed_addr constant [19 x i8] c"Not a PPM/PGM file\00", align 1
@.str.106 = private unnamed_addr constant [39 x i8] c"Numeric value out of range in PPM file\00", align 1
@.str.107 = private unnamed_addr constant [43 x i8] c"%ux%u PGM image (maximum color value = %u)\00", align 1
@.str.108 = private unnamed_addr constant [48 x i8] c"%ux%u text PGM image (maximum color value = %u)\00", align 1
@.str.109 = private unnamed_addr constant [43 x i8] c"%ux%u PPM image (maximum color value = %u)\00", align 1
@.str.110 = private unnamed_addr constant [48 x i8] c"%ux%u text PPM image (maximum color value = %u)\00", align 1
@.str.111 = private unnamed_addr constant [34 x i8] c"Unsupported Targa colormap format\00", align 1
@.str.112 = private unnamed_addr constant [34 x i8] c"Invalid or unsupported Targa file\00", align 1
@.str.113 = private unnamed_addr constant [38 x i8] c"Targa output must be grayscale or RGB\00", align 1
@.str.114 = private unnamed_addr constant [22 x i8] c"%ux%u RGB Targa image\00", align 1
@.str.115 = private unnamed_addr constant [28 x i8] c"%ux%u grayscale Targa image\00", align 1
@.str.116 = private unnamed_addr constant [30 x i8] c"%ux%u colormapped Targa image\00", align 1
@.str.117 = private unnamed_addr constant [31 x i8] c"Targa support was not compiled\00", align 1
@.str.118 = private unnamed_addr constant [51 x i8] c"Color map file is invalid or of unsupported format\00", align 1
@.str.119 = private unnamed_addr constant [53 x i8] c"Output file format cannot handle %d colormap entries\00", align 1
@.str.120 = private unnamed_addr constant [14 x i8] c"ungetc failed\00", align 1
@.str.121 = private unnamed_addr constant [31 x i8] c"Unrecognized input file format\00", align 1
@.str.122 = private unnamed_addr constant [31 x i8] c"Unsupported output file format\00", align 1
@.str.123 = private unnamed_addr constant [46 x i8] c"Progressive JPEG image has more than %d scans\00", align 1
@.str.124 = private unnamed_addr constant [15 x i8] c"JSIMD_FORCEMMX\00", align 1
@.str.125 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.126 = private unnamed_addr constant [15 x i8] c"JSIMD_FORCESSE\00", align 1
@.str.127 = private unnamed_addr constant [16 x i8] c"JSIMD_FORCESSE2\00", align 1
@_tjInitDecompress.buffer = internal global [1 x i8] zeroinitializer, align 1
@.str.128 = private unnamed_addr constant [61 x i8] c"The cropping region exceeds the destination image dimensions\00", align 1
@switch.table.setCompDefaults = private unnamed_addr constant [5 x i32] [i32 2, i32 3, i32 1, i32 4, i32 5], align 4
@switch.table.tj3DecompressToYUV8 = private unnamed_addr constant [5 x i32] [i32 2, i32 0, i32 1, i32 3, i32 4], align 4
@switch.table.getTransformedSpecs = private unnamed_addr constant [6 x i32] [i32 4, i32 poison, i32 poison, i32 1, i32 6, i32 5], align 4

; Function Attrs: nounwind uwtable
define noundef ptr @tj3Init(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %or.cond = icmp ugt i32 %0, 2
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.b = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Init.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %calloc = tail call dereferenceable_or_null(1992) ptr @calloc(i64 1, i64 1992) ; 14 uses
  %i.c = icmp eq ptr %calloc, null
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.e = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Init.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %calloc, i64 1628
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.f, ptr noundef nonnull align 1 dereferenceable(9) @.str.3, i64 9, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %calloc, i64 1840
  %i.h = getelementptr inbounds nuw i8, ptr %calloc, i64 1856
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 -1, i64 16, i1 false)
  store i32 8, ptr %i.h, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %calloc, i64 1860
  store i32 -1, ptr %i.i, align 4, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %calloc, i64 1892
  store i32 1, ptr %i.j, align 4, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %calloc, i64 1908
  store i32 1, ptr %i.k, align 4, !tbaa !51
  %i.l = getelementptr inbounds nuw i8, ptr %calloc, i64 1912
  store i32 1, ptr %i.l, align 8, !tbaa !52
  %i.m = getelementptr inbounds nuw i8, ptr %calloc, i64 1920
  store i64 4294967297, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %calloc, i64 1952
  store i32 2, ptr %i.n, align 8, !tbaa !53
  switch i32 %0, label %default.unreachable27 [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.o = tail call fastcc ptr @_tjInitCompress(ptr noundef %calloc)
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.p = tail call fastcc ptr @_tjInitDecompress(ptr noundef %calloc)
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.q = tail call fastcc ptr @_tjInitCompress(ptr noundef %calloc)
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = tail call fastcc ptr @_tjInitDecompress(ptr noundef %calloc)
  br label %bb.j

default.unreachable27:                            ; preds = %bb.e
  unreachable

bb.j:                                             ; preds = %bb.b, %bb.d, %bb.h, %bb.i, %bb.g, %bb.f
  %.024 = phi ptr [ null, %bb.h ], [ %i.o, %bb.f ], [ %i.p, %bb.g ], [ %i.r, %bb.i ], [ null, %bb.d ], [ null, %bb.b ]
  ret ptr %.024
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @_tjInitCompress(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr @_tjInitCompress.buffer, ptr %i.a, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 1, ptr %i.b, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 2 uses
  %i.d = call ptr @jpeg_std_error(ptr noundef nonnull %i.c) #25
  store ptr %i.d, ptr %0, align 8, !tbaa !56
  store ptr @my_error_exit, ptr %i.c, align 8, !tbaa !57
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1256
  store ptr @my_output_message, ptr %i.e, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !59
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1608
  store ptr %i.g, ptr %i.h, align 8, !tbaa !60
  store ptr @my_emit_message, ptr %i.f, align 8, !tbaa !59
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1392
  store ptr @turbojpeg_message_table, ptr %i.i, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1400
  store i32 1000, ptr %i.j, align 8, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1404
  store i32 1048, ptr %i.k, align 4, !tbaa !63
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.m = call i32 @_setjmp(ptr noundef nonnull %i.l) #26
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef nonnull %0) #25
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @jpeg_CreateCompress(ptr noundef nonnull %0, i32 noundef 80, i64 noundef 584) #25
  call void @jpeg_mem_dest_tj(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0) #25
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !64
  %i.p = or i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 8, !tbaa !64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @_tjInitDecompress(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 2 uses
  %i.b = call ptr @jpeg_std_error(ptr noundef nonnull %i.a) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 3 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !65
  store ptr @my_error_exit, ptr %i.a, align 8, !tbaa !57
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1256
  store ptr @my_output_message, ptr %i.d, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1608
  store ptr %i.f, ptr %i.g, align 8, !tbaa !60
  store ptr @my_emit_message, ptr %i.e, align 8, !tbaa !59
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1392
  store ptr @turbojpeg_message_table, ptr %i.h, align 8, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1400
  store i32 1000, ptr %i.i, align 8, !tbaa !62
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1404
  store i32 1048, ptr %i.j, align 4, !tbaa !63
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.l = call i32 @_setjmp(ptr noundef nonnull %i.k) #26
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef nonnull %0) #25
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @jpeg_CreateDecompress(ptr noundef nonnull %i.c, i32 noundef 80, i64 noundef 656) #25
  call void @jpeg_mem_src_tj(ptr noundef nonnull %i.c, ptr noundef nonnull @_tjInitDecompress.buffer, i64 noundef 1) #25
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !64
  %i.o = or i32 %i.n, 2
  store i32 %i.o, ptr %i.m, align 8, !tbaa !64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %0, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @tj3Destroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1616
  store i32 0, ptr %i.b, align 8, !tbaa !66
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1828
  store i32 0, ptr %i.c, align 4, !tbaa !67
end_hunk_0
begin_hunk_1_@tj3Compress8:bb.a
  %niter = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter.next.3, %.lr.ph.split.us ]
  %i.cg = mul nsw i64 %indvars.iv138, %i.bs
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 %i.cg
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv138
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !54
  %indvars.iv.next139 = or disjoint i64 %indvars.iv138, 1 ; 2 uses
  %i.cj = mul nsw i64 %indvars.iv.next139, %i.bs
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %i.cj
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next139
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !54
  %indvars.iv.next139.1 = or disjoint i64 %indvars.iv138, 2 ; 2 uses
  %i.cm = mul nsw i64 %indvars.iv.next139.1, %i.bs
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 %i.cm
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next139.1
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !54
  %indvars.iv.next139.2 = or disjoint i64 %indvars.iv138, 3 ; 2 uses
  %i.cp = mul nsw i64 %indvars.iv.next139.2, %i.bs
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 %i.cp
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next139.2
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !54
  %indvars.iv.next139.3 = add nuw nsw i64 %indvars.iv138, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !98

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph.split.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %indvars.iv138.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next139.3, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod159 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod159)
  br label %.lr.ph.split.us.epil

.lr.ph.split.us.epil:                             ; preds = %.lr.ph.split.us.epil, %.lr.ph.split.us.epil.preheader
  %indvars.iv138.epil = phi i64 [ %indvars.iv.next139.epil, %.lr.ph.split.us.epil ], [ %indvars.iv138.epil.init, %.lr.ph.split.us.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.us.epil ], [ 0, %.lr.ph.split.us.epil.preheader ]
  %i.cs = mul nsw i64 %indvars.iv138.epil, %i.bs
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 %i.cs
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv138.epil
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !54
  %indvars.iv.next139.epil = add nuw nsw i64 %indvars.iv138.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph.split.us.epil, !llvm.loop !99

.preheader:                                       ; preds = %.lr.ph.split, %.preheader.loopexit.unr-lcssa, %.lr.ph.split.us.epil, %middle.block
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 340 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !101 ; 2 uses
  %i.cx = load i32, ptr %i.bd, align 4, !tbaa !92 ; 2 uses
  %i.cy = icmp ult i32 %i.cw, %i.cx
  br i1 %i.cy, label %.lr.ph135, label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader157, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader157 ] ; 3 uses
  %i.cz = xor i64 %indvars.iv, -1
  %i.da = add nsw i64 %i.bv, %i.cz
  %i.db = mul nsw i64 %i.da, %i.bs
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 %i.db
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.as
  br i1 %exitcond.not, label %.preheader, label %.lr.ph.split, !llvm.loop !102

.lr.ph135:                                        ; preds = %.preheader, %.lr.ph135
  %i.de = phi i32 [ %i.dl, %.lr.ph135 ], [ %i.cx, %.preheader ]
  %i.df = phi i32 [ %i.dk, %.lr.ph135 ], [ %i.cw, %.preheader ] ; 2 uses
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.dg
  %i.di = sub nuw i32 %i.de, %i.df
  %i.dj = call i32 @jpeg_write_scanlines(ptr noundef nonnull %0, ptr noundef nonnull %i.dh, i32 noundef %i.di) #25 ; 0 uses
  %i.dk = load i32, ptr %i.cv, align 4, !tbaa !101 ; 2 uses
  %i.dl = load i32, ptr %i.bd, align 4, !tbaa !92 ; 2 uses
  %i.dm = icmp ult i32 %i.dk, %i.dl
  br i1 %i.dm, label %.lr.ph135, label %._crit_edge, !llvm.loop !103

._crit_edge:                                      ; preds = %.lr.ph135, %.preheader
  call void @jpeg_finish_compress(ptr noundef nonnull %0) #25
  br label %bb.w

bb.w:                                             ; preds = %bb.p, %._crit_edge, %bb.o, %bb.k, %bb.i, %bb.f, %bb.d
  %i.dn = phi i1 [ true, %bb.d ], [ true, %bb.f ], [ true, %bb.o ], [ true, %bb.i ], [ false, %._crit_edge ], [ true, %bb.k ], [ true, %bb.p ]
  %.0108 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.o ], [ -1, %bb.i ], [ 0, %._crit_edge ], [ -1, %bb.k ], [ -1, %bb.p ]
  %.1 = phi i1 [ true, %bb.d ], [ true, %bb.f ], [ true, %bb.o ], [ true, %bb.i ], [ %.not127, %._crit_edge ], [ true, %bb.k ], [ true, %bb.p ]
  %.0106 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.o ], [ null, %bb.i ], [ %i.au, %._crit_edge ], [ null, %bb.k ], [ %i.au, %bb.p ]
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !104 ; 2 uses
  %i.dq = icmp sgt i32 %i.dp, 100
  %or.cond15 = and i1 %.1, %i.dq
  br i1 %or.cond15, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !105
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !106
  call void %i.du(ptr noundef nonnull %0) #25
  %.pre = load i32, ptr %i.do, align 4, !tbaa !104
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dv = phi i32 [ %.pre, %bb.x ], [ %i.dp, %bb.w ]
  %i.dw = icmp sgt i32 %i.dv, 100
  %or.cond17 = or i1 %i.dn, %i.dw
  br i1 %or.cond17, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @jpeg_abort_compress(ptr noundef nonnull %0) #25
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  call void @free(ptr noundef %.0106) #25
  %i.dx = load i32, ptr %i.c, align 8, !tbaa !66
  %.not131 = icmp eq i32 %i.dx, 0
  %spec.select133 = select i1 %.not131, i32 %.0108, i32 -1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.b
  %.0 = phi i32 [ %spec.select133, %bb.aa ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @setCompDefaults(ptr noundef nonnull initializes((56, 64)) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1844
  %i.b = load i32, ptr %i.a, align 4, !tbaa !74   ; 2 uses
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr @pf2cs, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.e, ptr %i.f, align 4, !tbaa !108
  %i.g = getelementptr inbounds [4 x i8], ptr @tjPixelSize, i64 %i.c
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.h, ptr %i.i, align 8, !tbaa !109
  tail call void @jpeg_set_defaults(ptr noundef nonnull %0) #25
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1900
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.l = load <2 x i32>, ptr %i.j, align 4, !tbaa !3
  store <2 x i32> %i.l, ptr %i.k, align 4, !tbaa !3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1908
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.o = load <2 x i32>, ptr %i.m, align 4, !tbaa !3
  %i.p = trunc <2 x i32> %i.o to <2 x i16>
  store <2 x i16> %i.p, ptr %i.n, align 4, !tbaa !110
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1916
  %i.r = load i32, ptr %i.q, align 4, !tbaa !85
  %i.s = trunc i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 330
  store i8 %i.s, ptr %i.t, align 2, !tbaa !111
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.v = load i32, ptr %i.u, align 8, !tbaa !86
  %i.w = sext i32 %i.v to i64
  %i.x = shl nsw i64 %i.w, 20
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !112
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  store i64 %i.x, ptr %i.aa, align 8, !tbaa !113
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1888
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !81
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1892
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !50
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1896
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !82
  tail call void @jpeg_enable_lossless(ptr noundef nonnull %0, i32 noundef %i.ae, i32 noundef %i.ag) #25
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1840
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !73
  tail call void @jpeg_set_quality(ptr noundef nonnull %0, i32 noundef %i.ai, i32 noundef 1) #25
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1868
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !76
  %.not59 = icmp ne i32 %i.ak, 0
  %i.al = zext i1 %.not59 to i32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 %i.al, ptr %i.am, align 8, !tbaa !115
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1860
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !49 ; 2 uses
  %i.ap = icmp ult i32 %i.ao, 5
  br i1 %i.ap, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = icmp eq i32 %i.b, 3
  br i1 %i.aq, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = icmp eq i32 %1, 11
  %. = select i1 %i.ar, i32 5, i32 3
  br label %bb.f

switch.lookup:                                    ; preds = %bb.c
  %i.as = zext nneg i32 %i.ao to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.setCompDefaults, i64 %i.as
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.f

bb.f:                                             ; preds = %switch.lookup, %bb.e, %bb.d
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 1, %bb.d ], [ %., %bb.e ]
  tail call void @jpeg_set_colorspace(ptr noundef nonnull %0, i32 noundef %.sink) #25
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.au = load i32, ptr %i.at, align 8, !tbaa !116
  %i.av = icmp eq i32 %i.au, 8
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1872
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !77
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !117
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1876
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !78
  %.not60 = icmp eq i32 %i.ba, 0
  br i1 %.not60, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @jpeg_simple_progression(ptr noundef nonnull %0) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1884
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !80
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 292
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !118
  %i.be = sext i32 %i.b to i64                    ; 3 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr @tjMCUWidth, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bh = sdiv i32 %i.bg, 8                       ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !119 ; 11 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i32 %i.bh, ptr %i.bk, align 8, !tbaa !120
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 104
  store i32 1, ptr %i.bl, align 8, !tbaa !120
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 200
  store i32 1, ptr %i.bm, align 8, !tbaa !120
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !122
  %i.bp = icmp sgt i32 %i.bo, 3
  br i1 %i.bp, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds [4 x i8], ptr @tjMCUHeight, i64 %i.be
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3
  %i.bs = sdiv i32 %i.br, 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !123
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 108
  store i32 1, ptr %i.bu, align 4, !tbaa !123
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 204
  store i32 1, ptr %i.bv, align 4, !tbaa !123
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bj, i64 296
  store i32 %i.bh, ptr %i.bw, align 8, !tbaa !120
  %i.bx = getelementptr inbounds [4 x i8], ptr @tjMCUHeight, i64 %i.be
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = sdiv i32 %i.by, 8                       ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !123
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bj, i64 108
  store i32 1, ptr %i.cb, align 4, !tbaa !123
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bj, i64 204
  store i32 1, ptr %i.cc, align 4, !tbaa !123
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bj, i64 300
  store i32 %i.bz, ptr %i.cd, align 4, !tbaa !123
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.b
  ret void
}

declare void @jpeg_mem_dest_tj(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @jpeg_start_compress(ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @jpeg_write_icc_profile(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @jpeg_write_scanlines(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @jpeg_finish_compress(ptr noundef) local_unnamed_addr #7

declare void @jpeg_abort_compress(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @tj3Decompress8(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.my_progress_mgr, align 8    ; 6 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.d = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 200, ptr noundef nonnull @.str.5, ptr noundef nonnull @tj3Decompress8.FUNCTION_NAME) #25 ; 0 uses
  br label %bb.ak

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !66
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1828 ; 9 uses
  store i32 0, ptr %i.g, align 4, !tbaa !67
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.i = load i32, ptr %i.h, align 8, !tbaa !64
  %i.j = and i32 %i.i, 2
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.l, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress8.FUNCTION_NAME, ptr noundef nonnull @.str.34) #25 ; 0 uses
  store i32 1, ptr %i.g, align 4, !tbaa !67
  %i.n = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.o = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.n, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress8.FUNCTION_NAME, ptr noundef nonnull @.str.34) #25 ; 0 uses
  br label %bb.ah

bb.e:                                             ; preds = %bb.c
  %i.p = icmp eq ptr %1, null
  %i.q = icmp eq i64 %2, 0
  %or.cond = or i1 %i.p, %i.q
  %i.r = icmp eq ptr %3, null
  %or.cond3 = or i1 %or.cond, %i.r
  %i.s = or i32 %5, %4
  %i.t = icmp slt i32 %i.s, 0
  %or.cond7 = or i1 %or.cond3, %i.t
  %i.u = icmp sgt i32 %5, 11
  %or.cond9 = or i1 %i.u, %or.cond7
  br i1 %or.cond9, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.w = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.v, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress8.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  store i32 1, ptr %i.g, align 4, !tbaa !67
  %i.x = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.y = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.x, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress8.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %bb.ah

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1880
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !79
  %.not193 = icmp eq i32 %i.aa, 0
  br i1 %.not193, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  store ptr @my_progress_monitor, ptr %6, align 8, !tbaa !124
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %0, ptr %i.ac, align 8, !tbaa !128
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sink = phi ptr [ %6, %bb.h ], [ null, %bb.g ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 600
  store ptr %.sink, ptr %i.ad, align 8, !tbaa !129
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !86
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 20
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !130
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  store i64 %i.ah, ptr %i.ak, align 8, !tbaa !113
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 2 uses
  %i.am = call i32 @_setjmp(ptr noundef nonnull %i.al) #26
  %.not194 = icmp eq i32 %i.am, 0
  br i1 %.not194, label %bb.j, label %bb.ah

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !131
  %i.ap = icmp slt i32 %i.ao, 202
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @jpeg_mem_src_tj(ptr noundef nonnull %i.e, ptr noundef nonnull %1, i64 noundef %2) #25
  %i.aq = call i32 @jpeg_read_header(ptr noundef nonnull %i.e, i32 noundef 1) #25 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ar = call fastcc i32 @getSubsamp(ptr noundef %i.e)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1844
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !74
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.au = load i32, ptr %i.at, align 8, !tbaa !132 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1848
  store i32 %i.au, ptr %i.av, align 8, !tbaa !88
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 636
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !133 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1852
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !89
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !134
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1856
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 644
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !135
  %switch.tableidx = add i32 %i.bd, -1            ; 2 uses
  %i.be = icmp ult i32 %switch.tableidx, 5
  br i1 %i.be, label %switch.lookup, label %setDecompParameters.exit

switch.lookup:                                    ; preds = %bb.l
  %i.bf = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.tj3DecompressToYUV8, i64 %i.bf
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %setDecompParameters.exit

setDecompParameters.exit:                         ; preds = %bb.l, %switch.lookup
  %.sink.i = phi i32 [ %switch.load, %switch.lookup ], [ -1, %bb.l ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1860
  store i32 %.sink.i, ptr %i.bg, align 4, !tbaa !49
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 900
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !136
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1876
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !78
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !137
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1884
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !80
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !138
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !139
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1888
  store i32 %i.bq, ptr %i.br, align 8, !tbaa !81
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1116
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !141
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1892
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !50
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !142
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1896
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !82
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1908
  %i.ca = load <2 x i16>, ptr %i.by, align 8, !tbaa !110
  %i.cb = zext <2 x i16> %i.ca to <2 x i32>
  store <2 x i32> %i.cb, ptr %i.bz, align 4, !tbaa !3
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 966
  %i.cd = load i8, ptr %i.cc, align 2, !tbaa !143
  %i.ce = zext i8 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1916
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !85
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1948
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !87 ; 2 uses
  %.not195 = icmp ne i32 %i.ch, 0
  %i.ci = sext i32 %i.au to i64
  %i.cj = sext i32 %i.ax to i64
  %i.ck = mul nsw i64 %i.cj, %i.ci
  %i.cl = sext i32 %i.ch to i64
  %i.cm = icmp ugt i64 %i.ck, %i.cl
  %or.cond233 = select i1 %.not195, i1 %i.cm, i1 false
  br i1 %or.cond233, label %bb.m, label %bb.n

bb.m:                                             ; preds = %setDecompParameters.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.co = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cn, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress8.FUNCTION_NAME, ptr noundef nonnull @.str.35) #25 ; 0 uses
  store i32 1, ptr %i.g, align 4, !tbaa !67
  %i.cp = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.cq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cp, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress8.FUNCTION_NAME, ptr noundef nonnull @.str.35) #25 ; 0 uses
  br label %bb.ah

bb.n:                                             ; preds = %setDecompParameters.exit
  %i.cr = sext i32 %5 to i64                      ; 2 uses
  %i.cs = getelementptr inbounds [4 x i8], ptr @pf2cs, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i32 %i.ct, ptr %i.cu, align 8, !tbaa !144
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !145 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1924
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !146 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1864
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !75
  %.not196 = icmp eq i32 %i.da, 0
  %i.db = zext i1 %.not196 to i32
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 684
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !147
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 1868
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !76
  %.not197 = icmp ne i32 %i.de, 0
  %i.df = zext i1 %.not197 to i32
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i32 %i.df, ptr %i.dg, align 8, !tbaa !148
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 652
  store i32 %i.cw, ptr %i.dh, align 4, !tbaa !149
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i32 %i.cy, ptr %i.di, align 8, !tbaa !150
  %i.dj = call i32 @jpeg_start_decompress(ptr noundef nonnull %i.e) #25 ; 0 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 1928 ; 3 uses
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !151 ; 2 uses
  %.not198 = icmp eq i32 %i.dl, 0
  br i1 %.not198, label %bb.o, label %._crit_edge248

._crit_edge248:                                   ; preds = %bb.n
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1936
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !152
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dm = mul i32 %i.cw, %i.au
  %i.dn = add i32 %i.cy, -1
  %i.do = add i32 %i.dn, %i.dm
  %i.dp = udiv i32 %i.do, %i.cy
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1936
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !152 ; 3 uses
  %.not199 = icmp eq i32 %i.dr, 0
  %.not200 = icmp eq i32 %i.dr, %i.dp
  %or.cond214 = select i1 %.not199, i1 true, i1 %.not200
  br i1 %or.cond214, label %bb.u, label %bb.p

bb.p:                                             ; preds = %._crit_edge248, %bb.o
  %i.ds = phi i32 [ %.pre, %._crit_edge248 ], [ %i.dr, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 %i.dl, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1936 ; 2 uses
  store i32 %i.ds, ptr %i.b, align 4, !tbaa !3
  call void @jpeg_crop_scanline(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #25
  %i.du = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %i.dv = load i32, ptr %i.dk, align 8, !tbaa !151 ; 2 uses
  %.not201 = icmp eq i32 %i.du, %i.dv
  br i1 %.not201, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.dx = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.dw, i64 noundef 200, ptr noundef nonnull @.str.36, ptr noundef nonnull @tj3Decompress8.FUNCTION_NAME, i32 noundef %i.dv, i32 noundef %i.du) #25 ; 0 uses
  store i32 1, ptr %i.g, align 4, !tbaa !67
  %i.dy = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.dz = load i32, ptr %i.dk, align 8, !tbaa !151
  %i.ea = load i32, ptr %i.a, align 4, !tbaa !3
  %i.eb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.dy, i64 noundef 200, ptr noundef nonnull @.str.36, ptr noundef nonnull @tj3Decompress8.FUNCTION_NAME, i32 noundef %i.dz, i32 noundef %i.ea) #25 ; 0 uses
  br label %.thread

bb.r:                                             ; preds = %bb.p
  %i.ec = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  %i.ed = load i32, ptr %i.dt, align 8, !tbaa !152 ; 2 uses
  %.not202 = icmp eq i32 %i.ec, %i.ed
  br i1 %.not202, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.ef = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ee, i64 noundef 200, ptr noundef nonnull @.str.37, ptr noundef nonnull @tj3Decompress8.FUNCTION_NAME, i32 noundef %i.ed, i32 noundef %i.ec) #25 ; 0 uses
  store i32 1, ptr %i.g, align 4, !tbaa !67
  %i.eg = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.eh = load i32, ptr %i.dt, align 8, !tbaa !152
  %i.ei = load i32, ptr %i.b, align 4, !tbaa !3
  %i.ej = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.eg, i64 noundef 200, ptr noundef nonnull @.str.37, ptr noundef nonnull @tj3Decompress8.FUNCTION_NAME, i32 noundef %i.eh, i32 noundef %i.ei) #25 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.q, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.ah

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.o
  %i.ek = icmp eq i32 %4, 0
  br i1 %i.ek, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.em = load i32, ptr %i.el, align 8, !tbaa !153
  %i.en = getelementptr inbounds [4 x i8], ptr @tjPixelSize, i64 %i.cr
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3
  %i.ep = mul i32 %i.eo, %i.em
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0162 = phi i32 [ %i.ep, %bb.v ], [ %4, %bb.u ]
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 724 ; 6 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 1932 ; 7 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !154
  %.not203 = icmp eq i32 %i.es, 0
  br i1 %.not203, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 1940
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !155
  %.not204 = icmp eq i32 %i.eu, 0
  br i1 %.not204, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 1940
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0165.in = phi ptr [ %i.ev, %bb.y ], [ %i.eq, %bb.x ]
  %.0165 = load i32, ptr %.0165.in, align 4, !tbaa !3 ; 5 uses
  %i.ew = sext i32 %.0165 to i64                  ; 3 uses
  %i.ex = shl nsw i64 %i.ew, 3
  %i.ey = call noalias ptr @malloc(i64 noundef %i.ex) #27 ; 14 uses
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.fb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.fa, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress8.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  store i32 1, ptr %i.g, align 4, !tbaa !67
  %i.fc = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.fd = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.fc, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress8.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  br label %bb.ah

bb.ab:                                            ; preds = %bb.z
  %i.fe = call i32 @_setjmp(ptr noundef nonnull %i.al) #26
end_hunk_1
begin_hunk_2_@tj3Compress12:bb.a
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 340 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !101 ; 2 uses
  %i.cx = load i32, ptr %i.bd, align 4, !tbaa !92 ; 2 uses
  %i.cy = icmp ult i32 %i.cw, %i.cx
  br i1 %i.cy, label %.lr.ph135, label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader157, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader157 ] ; 3 uses
  %i.cz = xor i64 %indvars.iv, -1
  %i.da = add nsw i64 %i.bv, %i.cz
  %i.db = mul nsw i64 %i.da, %i.bs
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.db
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !198
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.as
  br i1 %exitcond.not, label %.preheader, label %.lr.ph.split, !llvm.loop !203

.lr.ph135:                                        ; preds = %.preheader, %.lr.ph135
  %i.de = phi i32 [ %i.dl, %.lr.ph135 ], [ %i.cx, %.preheader ]
  %i.df = phi i32 [ %i.dk, %.lr.ph135 ], [ %i.cw, %.preheader ] ; 2 uses
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.dg
  %i.di = sub nuw i32 %i.de, %i.df
  %i.dj = call i32 @jpeg12_write_scanlines(ptr noundef nonnull %0, ptr noundef nonnull %i.dh, i32 noundef %i.di) #25 ; 0 uses
  %i.dk = load i32, ptr %i.cv, align 4, !tbaa !101 ; 2 uses
  %i.dl = load i32, ptr %i.bd, align 4, !tbaa !92 ; 2 uses
  %i.dm = icmp ult i32 %i.dk, %i.dl
  br i1 %i.dm, label %.lr.ph135, label %._crit_edge, !llvm.loop !204

._crit_edge:                                      ; preds = %.lr.ph135, %.preheader
  call void @jpeg_finish_compress(ptr noundef nonnull %0) #25
  br label %bb.w

bb.w:                                             ; preds = %bb.p, %._crit_edge, %bb.o, %bb.k, %bb.i, %bb.f, %bb.d
  %i.dn = phi i1 [ true, %bb.d ], [ true, %bb.f ], [ true, %bb.o ], [ true, %bb.i ], [ false, %._crit_edge ], [ true, %bb.k ], [ true, %bb.p ]
  %.0108 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.o ], [ -1, %bb.i ], [ 0, %._crit_edge ], [ -1, %bb.k ], [ -1, %bb.p ]
  %.1 = phi i1 [ true, %bb.d ], [ true, %bb.f ], [ true, %bb.o ], [ true, %bb.i ], [ %.not127, %._crit_edge ], [ true, %bb.k ], [ true, %bb.p ]
  %.0106 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.o ], [ null, %bb.i ], [ %i.au, %._crit_edge ], [ null, %bb.k ], [ %i.au, %bb.p ]
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !104 ; 2 uses
  %i.dq = icmp sgt i32 %i.dp, 100
  %or.cond15 = and i1 %.1, %i.dq
  br i1 %or.cond15, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !105
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !106
  call void %i.du(ptr noundef nonnull %0) #25
  %.pre = load i32, ptr %i.do, align 4, !tbaa !104
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dv = phi i32 [ %.pre, %bb.x ], [ %i.dp, %bb.w ]
  %i.dw = icmp sgt i32 %i.dv, 100
  %or.cond17 = or i1 %i.dn, %i.dw
  br i1 %or.cond17, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @jpeg_abort_compress(ptr noundef nonnull %0) #25
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  call void @free(ptr noundef %.0106) #25
  %i.dx = load i32, ptr %i.c, align 8, !tbaa !66
  %.not131 = icmp eq i32 %i.dx, 0
  %spec.select133 = select i1 %.not131, i32 %.0108, i32 -1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.b
  %.0 = phi i32 [ %spec.select133, %bb.aa ], [ -1, %bb.b ]
  ret i32 %.0
}

declare i32 @jpeg12_write_scanlines(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @tj3Decompress12(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.my_progress_mgr, align 8    ; 6 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.d = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 200, ptr noundef nonnull @.str.5, ptr noundef nonnull @tj3Decompress12.FUNCTION_NAME) #25 ; 0 uses
  br label %bb.ak

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !66
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1828 ; 9 uses
  store i32 0, ptr %i.g, align 4, !tbaa !67
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.i = load i32, ptr %i.h, align 8, !tbaa !64
  %i.j = and i32 %i.i, 2
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.l, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress12.FUNCTION_NAME, ptr noundef nonnull @.str.34) #25 ; 0 uses
  store i32 1, ptr %i.g, align 4, !tbaa !67
  %i.n = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.o = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.n, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress12.FUNCTION_NAME, ptr noundef nonnull @.str.34) #25 ; 0 uses
  br label %bb.ah

bb.e:                                             ; preds = %bb.c
  %i.p = icmp eq ptr %1, null
  %i.q = icmp eq i64 %2, 0
  %or.cond = or i1 %i.p, %i.q
  %i.r = icmp eq ptr %3, null
  %or.cond3 = or i1 %or.cond, %i.r
  %i.s = or i32 %5, %4
  %i.t = icmp slt i32 %i.s, 0
  %or.cond7 = or i1 %or.cond3, %i.t
  %i.u = icmp sgt i32 %5, 11
  %or.cond9 = or i1 %i.u, %or.cond7
  br i1 %or.cond9, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.w = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.v, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress12.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  store i32 1, ptr %i.g, align 4, !tbaa !67
  %i.x = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.y = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.x, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress12.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %bb.ah

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1880
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !79
  %.not193 = icmp eq i32 %i.aa, 0
  br i1 %.not193, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  store ptr @my_progress_monitor, ptr %6, align 8, !tbaa !124
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %0, ptr %i.ac, align 8, !tbaa !128
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sink = phi ptr [ %6, %bb.h ], [ null, %bb.g ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 600
  store ptr %.sink, ptr %i.ad, align 8, !tbaa !129
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !86
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 20
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !130
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  store i64 %i.ah, ptr %i.ak, align 8, !tbaa !113
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 2 uses
  %i.am = call i32 @_setjmp(ptr noundef nonnull %i.al) #26
  %.not194 = icmp eq i32 %i.am, 0
  br i1 %.not194, label %bb.j, label %bb.ah

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !131
  %i.ap = icmp slt i32 %i.ao, 202
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @jpeg_mem_src_tj(ptr noundef nonnull %i.e, ptr noundef nonnull %1, i64 noundef %2) #25
  %i.aq = call i32 @jpeg_read_header(ptr noundef nonnull %i.e, i32 noundef 1) #25 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ar = call fastcc i32 @getSubsamp(ptr noundef %i.e)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1844
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !74
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.au = load i32, ptr %i.at, align 8, !tbaa !132 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1848
  store i32 %i.au, ptr %i.av, align 8, !tbaa !88
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 636
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !133 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1852
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !89
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !134
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1856
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 644
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !135
  %switch.tableidx = add i32 %i.bd, -1            ; 2 uses
  %i.be = icmp ult i32 %switch.tableidx, 5
  br i1 %i.be, label %switch.lookup, label %setDecompParameters.exit

switch.lookup:                                    ; preds = %bb.l
  %i.bf = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.tj3DecompressToYUV8, i64 %i.bf
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %setDecompParameters.exit

setDecompParameters.exit:                         ; preds = %bb.l, %switch.lookup
  %.sink.i = phi i32 [ %switch.load, %switch.lookup ], [ -1, %bb.l ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1860
  store i32 %.sink.i, ptr %i.bg, align 4, !tbaa !49
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 900
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !136
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1876
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !78
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !137
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1884
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !80
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !138
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !139
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1888
  store i32 %i.bq, ptr %i.br, align 8, !tbaa !81
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1116
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !141
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1892
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !50
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !142
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1896
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !82
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1908
  %i.ca = load <2 x i16>, ptr %i.by, align 8, !tbaa !110
  %i.cb = zext <2 x i16> %i.ca to <2 x i32>
  store <2 x i32> %i.cb, ptr %i.bz, align 4, !tbaa !3
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 966
  %i.cd = load i8, ptr %i.cc, align 2, !tbaa !143
  %i.ce = zext i8 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1916
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !85
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1948
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !87 ; 2 uses
  %.not195 = icmp ne i32 %i.ch, 0
  %i.ci = sext i32 %i.au to i64
  %i.cj = sext i32 %i.ax to i64
  %i.ck = mul nsw i64 %i.cj, %i.ci
  %i.cl = sext i32 %i.ch to i64
  %i.cm = icmp ugt i64 %i.ck, %i.cl
  %or.cond233 = select i1 %.not195, i1 %i.cm, i1 false
  br i1 %or.cond233, label %bb.m, label %bb.n

bb.m:                                             ; preds = %setDecompParameters.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.co = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cn, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress12.FUNCTION_NAME, ptr noundef nonnull @.str.35) #25 ; 0 uses
  store i32 1, ptr %i.g, align 4, !tbaa !67
  %i.cp = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.cq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cp, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress12.FUNCTION_NAME, ptr noundef nonnull @.str.35) #25 ; 0 uses
  br label %bb.ah

bb.n:                                             ; preds = %setDecompParameters.exit
  %i.cr = sext i32 %5 to i64                      ; 2 uses
  %i.cs = getelementptr inbounds [4 x i8], ptr @pf2cs, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i32 %i.ct, ptr %i.cu, align 8, !tbaa !144
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !145 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1924
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !146 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1864
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !75
  %.not196 = icmp eq i32 %i.da, 0
  %i.db = zext i1 %.not196 to i32
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 684
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !147
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 1868
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !76
  %.not197 = icmp ne i32 %i.de, 0
  %i.df = zext i1 %.not197 to i32
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i32 %i.df, ptr %i.dg, align 8, !tbaa !148
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 652
  store i32 %i.cw, ptr %i.dh, align 4, !tbaa !149
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i32 %i.cy, ptr %i.di, align 8, !tbaa !150
  %i.dj = call i32 @jpeg_start_decompress(ptr noundef nonnull %i.e) #25 ; 0 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 1928 ; 3 uses
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !151 ; 2 uses
  %.not198 = icmp eq i32 %i.dl, 0
  br i1 %.not198, label %bb.o, label %._crit_edge248

._crit_edge248:                                   ; preds = %bb.n
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1936
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !152
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dm = mul i32 %i.cw, %i.au
  %i.dn = add i32 %i.cy, -1
  %i.do = add i32 %i.dn, %i.dm
  %i.dp = udiv i32 %i.do, %i.cy
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1936
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !152 ; 3 uses
  %.not199 = icmp eq i32 %i.dr, 0
  %.not200 = icmp eq i32 %i.dr, %i.dp
  %or.cond214 = select i1 %.not199, i1 true, i1 %.not200
  br i1 %or.cond214, label %bb.u, label %bb.p

bb.p:                                             ; preds = %._crit_edge248, %bb.o
  %i.ds = phi i32 [ %.pre, %._crit_edge248 ], [ %i.dr, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 %i.dl, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1936 ; 2 uses
  store i32 %i.ds, ptr %i.b, align 4, !tbaa !3
  call void @jpeg12_crop_scanline(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #25
  %i.du = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %i.dv = load i32, ptr %i.dk, align 8, !tbaa !151 ; 2 uses
  %.not201 = icmp eq i32 %i.du, %i.dv
  br i1 %.not201, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.dx = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.dw, i64 noundef 200, ptr noundef nonnull @.str.36, ptr noundef nonnull @tj3Decompress12.FUNCTION_NAME, i32 noundef %i.dv, i32 noundef %i.du) #25 ; 0 uses
  store i32 1, ptr %i.g, align 4, !tbaa !67
  %i.dy = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.dz = load i32, ptr %i.dk, align 8, !tbaa !151
  %i.ea = load i32, ptr %i.a, align 4, !tbaa !3
  %i.eb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.dy, i64 noundef 200, ptr noundef nonnull @.str.36, ptr noundef nonnull @tj3Decompress12.FUNCTION_NAME, i32 noundef %i.dz, i32 noundef %i.ea) #25 ; 0 uses
  br label %.thread

bb.r:                                             ; preds = %bb.p
  %i.ec = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  %i.ed = load i32, ptr %i.dt, align 8, !tbaa !152 ; 2 uses
  %.not202 = icmp eq i32 %i.ec, %i.ed
  br i1 %.not202, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.ef = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ee, i64 noundef 200, ptr noundef nonnull @.str.37, ptr noundef nonnull @tj3Decompress12.FUNCTION_NAME, i32 noundef %i.ed, i32 noundef %i.ec) #25 ; 0 uses
  store i32 1, ptr %i.g, align 4, !tbaa !67
  %i.eg = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.eh = load i32, ptr %i.dt, align 8, !tbaa !152
  %i.ei = load i32, ptr %i.b, align 4, !tbaa !3
  %i.ej = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.eg, i64 noundef 200, ptr noundef nonnull @.str.37, ptr noundef nonnull @tj3Decompress12.FUNCTION_NAME, i32 noundef %i.eh, i32 noundef %i.ei) #25 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.q, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.ah

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.o
  %i.ek = icmp eq i32 %4, 0
  br i1 %i.ek, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.em = load i32, ptr %i.el, align 8, !tbaa !153
  %i.en = getelementptr inbounds [4 x i8], ptr @tjPixelSize, i64 %i.cr
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3
  %i.ep = mul i32 %i.eo, %i.em
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0162 = phi i32 [ %i.ep, %bb.v ], [ %4, %bb.u ]
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 724 ; 6 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 1932 ; 7 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !154
  %.not203 = icmp eq i32 %i.es, 0
  br i1 %.not203, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 1940
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !155
  %.not204 = icmp eq i32 %i.eu, 0
  br i1 %.not204, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 1940
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0165.in = phi ptr [ %i.ev, %bb.y ], [ %i.eq, %bb.x ]
  %.0165 = load i32, ptr %.0165.in, align 4, !tbaa !3 ; 5 uses
  %i.ew = sext i32 %.0165 to i64                  ; 3 uses
  %i.ex = shl nsw i64 %i.ew, 3
  %i.ey = call noalias ptr @malloc(i64 noundef %i.ex) #27 ; 14 uses
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.fb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.fa, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress12.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  store i32 1, ptr %i.g, align 4, !tbaa !67
  %i.fc = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.fd = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.fc, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress12.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  br label %bb.ah

bb.ab:                                            ; preds = %bb.z
  %i.fe = call i32 @_setjmp(ptr noundef nonnull %i.al) #26
end_hunk_2
begin_hunk_3_@tj3Compress16:bb.a

.preheader:                                       ; preds = %.lr.ph.split, %.preheader.loopexit.unr-lcssa, %.lr.ph.split.us.epil, %middle.block
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 340 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !101 ; 2 uses
  %i.cx = load i32, ptr %i.bd, align 4, !tbaa !92 ; 2 uses
  %i.cy = icmp ult i32 %i.cw, %i.cx
  br i1 %i.cy, label %.lr.ph135, label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader157, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader157 ] ; 3 uses
  %i.cz = xor i64 %indvars.iv, -1
  %i.da = add nsw i64 %i.bv, %i.cz
  %i.db = mul nsw i64 %i.da, %i.bs
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.db
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !198
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.as
  br i1 %exitcond.not, label %.preheader, label %.lr.ph.split, !llvm.loop !219

.lr.ph135:                                        ; preds = %.preheader, %.lr.ph135
  %i.de = phi i32 [ %i.dl, %.lr.ph135 ], [ %i.cx, %.preheader ]
  %i.df = phi i32 [ %i.dk, %.lr.ph135 ], [ %i.cw, %.preheader ] ; 2 uses
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.dg
  %i.di = sub nuw i32 %i.de, %i.df
  %i.dj = call i32 @jpeg16_write_scanlines(ptr noundef nonnull %0, ptr noundef nonnull %i.dh, i32 noundef %i.di) #25 ; 0 uses
  %i.dk = load i32, ptr %i.cv, align 4, !tbaa !101 ; 2 uses
  %i.dl = load i32, ptr %i.bd, align 4, !tbaa !92 ; 2 uses
  %i.dm = icmp ult i32 %i.dk, %i.dl
  br i1 %i.dm, label %.lr.ph135, label %._crit_edge, !llvm.loop !220

._crit_edge:                                      ; preds = %.lr.ph135, %.preheader
  call void @jpeg_finish_compress(ptr noundef nonnull %0) #25
  br label %bb.w

bb.w:                                             ; preds = %bb.p, %._crit_edge, %bb.o, %bb.k, %bb.i, %bb.f, %bb.d
  %i.dn = phi i1 [ true, %bb.d ], [ true, %bb.f ], [ true, %bb.o ], [ true, %bb.i ], [ false, %._crit_edge ], [ true, %bb.k ], [ true, %bb.p ]
  %.0108 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.o ], [ -1, %bb.i ], [ 0, %._crit_edge ], [ -1, %bb.k ], [ -1, %bb.p ]
  %.1 = phi i1 [ true, %bb.d ], [ true, %bb.f ], [ true, %bb.o ], [ true, %bb.i ], [ %.not127, %._crit_edge ], [ true, %bb.k ], [ true, %bb.p ]
  %.0106 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.o ], [ null, %bb.i ], [ %i.au, %._crit_edge ], [ null, %bb.k ], [ %i.au, %bb.p ]
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !104 ; 2 uses
  %i.dq = icmp sgt i32 %i.dp, 100
  %or.cond15 = and i1 %.1, %i.dq
  br i1 %or.cond15, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !105
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !106
  call void %i.du(ptr noundef nonnull %0) #25
  %.pre = load i32, ptr %i.do, align 4, !tbaa !104
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dv = phi i32 [ %.pre, %bb.x ], [ %i.dp, %bb.w ]
  %i.dw = icmp sgt i32 %i.dv, 100
  %or.cond17 = or i1 %i.dn, %i.dw
  br i1 %or.cond17, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @jpeg_abort_compress(ptr noundef nonnull %0) #25
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  call void @free(ptr noundef %.0106) #25
  %i.dx = load i32, ptr %i.c, align 8, !tbaa !66
  %.not131 = icmp eq i32 %i.dx, 0
  %spec.select133 = select i1 %.not131, i32 %.0108, i32 -1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.b
  %.0 = phi i32 [ %spec.select133, %bb.aa ], [ -1, %bb.b ]
  ret i32 %.0
}

declare i32 @jpeg16_write_scanlines(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @tj3Decompress16(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.my_progress_mgr, align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.b = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.5, ptr noundef nonnull @tj3Decompress16.FUNCTION_NAME) #25 ; 0 uses
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1828 ; 5 uses
  store i32 0, ptr %i.e, align 4, !tbaa !67
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.g = load i32, ptr %i.f, align 8, !tbaa !64
  %i.h = and i32 %i.g, 2
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.k = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.j, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress16.FUNCTION_NAME, ptr noundef nonnull @.str.34) #25 ; 0 uses
  store i32 1, ptr %i.e, align 4, !tbaa !67
  %i.l = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.l, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress16.FUNCTION_NAME, ptr noundef nonnull @.str.34) #25 ; 0 uses
  br label %bb.s

bb.e:                                             ; preds = %bb.c
  %i.n = icmp eq ptr %1, null
  %i.o = icmp eq i64 %2, 0
  %or.cond = or i1 %i.n, %i.o
  %i.p = icmp eq ptr %3, null
  %or.cond3 = or i1 %or.cond, %i.p
  %i.q = or i32 %5, %4
  %i.r = icmp slt i32 %i.q, 0
  %or.cond7 = or i1 %or.cond3, %i.r
  %i.s = icmp sgt i32 %5, 11
  %or.cond9 = or i1 %i.s, %or.cond7
  br i1 %or.cond9, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.u = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.t, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress16.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  store i32 1, ptr %i.e, align 4, !tbaa !67
  %i.v = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.w = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.v, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress16.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %bb.s

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1880
  %i.y = load i32, ptr %i.x, align 8, !tbaa !79
  %.not106 = icmp eq i32 %i.y, 0
  br i1 %.not106, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  store ptr @my_progress_monitor, ptr %6, align 8, !tbaa !124
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %0, ptr %i.aa, align 8, !tbaa !128
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sink = phi ptr [ %6, %bb.h ], [ null, %bb.g ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 600
  store ptr %.sink, ptr %i.ab, align 8, !tbaa !129
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !86
  %i.ae = sext i32 %i.ad to i64
  %i.af = shl nsw i64 %i.ae, 20
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !130
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  store i64 %i.af, ptr %i.ai, align 8, !tbaa !113
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 2 uses
  %i.ak = call i32 @_setjmp(ptr noundef nonnull %i.aj) #26
  %.not107 = icmp eq i32 %i.ak, 0
  br i1 %.not107, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.am = load i32, ptr %i.al, align 4, !tbaa !131
  %i.an = icmp slt i32 %i.am, 202
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @jpeg_mem_src_tj(ptr noundef nonnull %i.c, ptr noundef nonnull %1, i64 noundef %2) #25
  %i.ao = call i32 @jpeg_read_header(ptr noundef nonnull %i.c, i32 noundef 1) #25 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ap = call fastcc i32 @getSubsamp(ptr noundef %i.c)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1844
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !74
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !132 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1848
  store i32 %i.as, ptr %i.at, align 8, !tbaa !88
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 636
  %i.av = load i32, ptr %i.au, align 4, !tbaa !133 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1852
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !89
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !134
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1856
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 644
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !135
  %switch.tableidx = add i32 %i.bb, -1            ; 2 uses
  %i.bc = icmp ult i32 %switch.tableidx, 5
  br i1 %i.bc, label %switch.lookup, label %setDecompParameters.exit

switch.lookup:                                    ; preds = %bb.l
  %i.bd = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.tj3DecompressToYUV8, i64 %i.bd
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %setDecompParameters.exit

setDecompParameters.exit:                         ; preds = %bb.l, %switch.lookup
  %.sink.i = phi i32 [ %switch.load, %switch.lookup ], [ -1, %bb.l ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1860
  store i32 %.sink.i, ptr %i.be, align 4, !tbaa !49
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 900
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !136
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1876
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !78
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !137
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1884
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !80
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !138
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 20
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !139
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1888
  store i32 %i.bo, ptr %i.bp, align 8, !tbaa !81
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1116
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !141
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1892
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !50
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !142
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1896
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !82
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1908
  %i.by = load <2 x i16>, ptr %i.bw, align 8, !tbaa !110
  %i.bz = zext <2 x i16> %i.by to <2 x i32>
  store <2 x i32> %i.bz, ptr %i.bx, align 4, !tbaa !3
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 966
  %i.cb = load i8, ptr %i.ca, align 2, !tbaa !143
  %i.cc = zext i8 %i.cb to i32
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1916
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !85
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1948
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !87 ; 2 uses
  %.not108 = icmp ne i32 %i.cf, 0
  %i.cg = sext i32 %i.as to i64
  %i.ch = sext i32 %i.av to i64
  %i.ci = mul nsw i64 %i.ch, %i.cg
  %i.cj = sext i32 %i.cf to i64
  %i.ck = icmp ugt i64 %i.ci, %i.cj
  %or.cond118 = select i1 %.not108, i1 %i.ck, i1 false
  br i1 %or.cond118, label %bb.m, label %bb.n

bb.m:                                             ; preds = %setDecompParameters.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.cm = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cl, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress16.FUNCTION_NAME, ptr noundef nonnull @.str.35) #25 ; 0 uses
  store i32 1, ptr %i.e, align 4, !tbaa !67
  %i.cn = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.co = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cn, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress16.FUNCTION_NAME, ptr noundef nonnull @.str.35) #25 ; 0 uses
  br label %bb.s

bb.n:                                             ; preds = %setDecompParameters.exit
  %i.cp = sext i32 %5 to i64                      ; 2 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr @pf2cs, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i32 %i.cr, ptr %i.cs, align 8, !tbaa !144
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1864
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !75
  %.not109 = icmp eq i32 %i.cu, 0
  %i.cv = zext i1 %.not109 to i32
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 684
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !147
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1868
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !76
  %.not110 = icmp ne i32 %i.cy, 0
  %i.cz = zext i1 %.not110 to i32
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i32 %i.cz, ptr %i.da, align 8, !tbaa !148
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.dd = load <2 x i32>, ptr %i.db, align 8, !tbaa !3
  store <2 x i32> %i.dd, ptr %i.dc, align 4, !tbaa !3
  %i.de = call i32 @jpeg_start_decompress(ptr noundef nonnull %i.c) #25 ; 0 uses
  %i.df = icmp eq i32 %4, 0
  br i1 %i.df, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !153
  %i.di = getelementptr inbounds [4 x i8], ptr @tjPixelSize, i64 %i.cp
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !3
  %i.dk = mul i32 %i.dj, %i.dh
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.093 = phi i32 [ %i.dk, %bb.o ], [ %4, %bb.n ]
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 724 ; 3 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !161 ; 5 uses
  %i.dn = sext i32 %i.dm to i64                   ; 3 uses
  %i.do = shl nsw i64 %i.dn, 3
  %i.dp = call noalias ptr @malloc(i64 noundef %i.do) #27 ; 11 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.ds = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.dr, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress16.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  store i32 1, ptr %i.e, align 4, !tbaa !67
  %i.dt = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.du = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.dt, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress16.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.dv = call i32 @_setjmp(ptr noundef nonnull %i.aj) #26
  %.not111 = icmp eq i32 %i.dv, 0
  br i1 %.not111, label %.preheader119, label %bb.s

.preheader119:                                    ; preds = %bb.r
  %i.dw = icmp sgt i32 %i.dm, 0
  br i1 %i.dw, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader119
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 1832
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !71
  %.not112 = icmp eq i32 %i.dy, 0
  %i.dz = sext i32 %.093 to i64                   ; 7 uses
  %wide.trip.count127 = zext nneg i32 %i.dm to i64 ; 5 uses
  br i1 %.not112, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter = and i64 %wide.trip.count127, 3      ; 3 uses
  %i.ea = icmp ult i32 %i.dm, 4
  br i1 %i.ea, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
  %unroll_iter = and i64 %wide.trip.count127, 2147483644
  br label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %min.iters.check = icmp ult i32 %i.dm, 4
  br i1 %min.iters.check, label %.lr.ph.split.preheader143, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader
  %n.vec = and i64 %wide.trip.count127, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.dn, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert141 = insertelement <2 x i64> poison, i64 %i.dz, i64 0
  %broadcast.splat142 = shufflevector <2 x i64> %broadcast.splatinsert141, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.eb = xor <2 x i64> %vec.ind, splat (i64 -1)
  %i.ec = add nsw <2 x i64> %broadcast.splat, %i.eb
  %reass.sub = sub <2 x i64> %broadcast.splat, %vec.ind
  %i.ed = add <2 x i64> %reass.sub, splat (i64 -3)
  %i.ee = mul nsw <2 x i64> %i.ec, %broadcast.splat142
  %i.ef = mul nsw <2 x i64> %i.ed, %broadcast.splat142
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %3, <2 x i64> %i.ee
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %3, <2 x i64> %i.ef
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %index ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store <2 x ptr> %i.eg, ptr %i.ei, align 8, !tbaa !198
  store <2 x ptr> %i.eh, ptr %i.ej, align 8, !tbaa !198
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !221

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count127
  br i1 %cmp.n, label %.preheader, label %.lr.ph.split.preheader143

.lr.ph.split.preheader143:                        ; preds = %.lr.ph.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.split.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader.new
  %indvars.iv124 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %indvars.iv.next125.3, %.lr.ph.split.us ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter.next.3, %.lr.ph.split.us ]
  %i.el = mul nsw i64 %indvars.iv124, %i.dz
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.el
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv124
  store ptr %i.em, ptr %i.en, align 8, !tbaa !198
  %indvars.iv.next125 = or disjoint i64 %indvars.iv124, 1 ; 2 uses
  %i.eo = mul nsw i64 %indvars.iv.next125, %i.dz
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.eo
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.next125
  store ptr %i.ep, ptr %i.eq, align 8, !tbaa !198
  %indvars.iv.next125.1 = or disjoint i64 %indvars.iv124, 2 ; 2 uses
  %i.er = mul nsw i64 %indvars.iv.next125.1, %i.dz
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.er
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.next125.1
  store ptr %i.es, ptr %i.et, align 8, !tbaa !198
  %indvars.iv.next125.2 = or disjoint i64 %indvars.iv124, 3 ; 2 uses
  %i.eu = mul nsw i64 %indvars.iv.next125.2, %i.dz
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.eu
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.next125.2
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !198
  %indvars.iv.next125.3 = add nuw nsw i64 %indvars.iv124, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !222

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph.split.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_3
begin_hunk_4_@tjEncodeYUV3:bb.a

bb.h:                                             ; preds = %.sink.split.i, %bb.g
  %i.p = lshr i32 %9, 8
  %.lobit24.i = and i32 %i.p, 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1864
  store i32 %.lobit24.i, ptr %i.q, align 8, !tbaa !75
  %i.r = lshr i32 %9, 10
  %.lobit25.i = and i32 %i.r, 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1836
  store i32 %.lobit25.i, ptr %i.s, align 4, !tbaa !72
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1840
  %i.u = load i32, ptr %i.t, align 8, !tbaa !73
  %i.v = icmp slt i32 %i.u, 96
  %i.w = and i32 %9, 4096
  %.not27.i = icmp eq i32 %i.w, 0
  %or.cond.i = and i1 %.not27.i, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1868
  %. = zext i1 %or.cond.i to i32
  store i32 %., ptr %i.x, align 4, !tbaa !76
  %i.y = lshr i32 %9, 13
  %.lobit28.i = and i32 %i.y, 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1620
  store i32 %.lobit28.i, ptr %i.z, align 4, !tbaa !70
  %i.aa = lshr i32 %9, 14
  %.lobit29.i = and i32 %i.aa, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1876
  store i32 %.lobit29.i, ptr %i.ab, align 4, !tbaa !78
  %i.ac = and i32 %9, 32768
  %.not30.i = icmp eq i32 %i.ac, 0
  br i1 %.not30.i, label %processFlags.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1880
  store i32 500, ptr %i.ad, align 8, !tbaa !79
  br label %processFlags.exit

processFlags.exit:                                ; preds = %bb.h, %bb.i
  %i.ae = tail call i32 @tj3EncodeYUV8(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7)
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %processFlags.exit, %bb.b
  %.0 = phi i32 [ -1, %bb.d ], [ %i.ae, %processFlags.exit ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @tjEncodeYUV(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  switch i32 %5, label %bb.f [
    i32 1, label %getPixelFormat.exit
    i32 3, label %bb.b
    i32 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %..i = and i32 %8, 1
  br label %getPixelFormat.exit

bb.c:                                             ; preds = %bb.a
  %i.a = and i32 %8, 64
  %.not.i = icmp eq i32 %i.a, 0
  %i.b = and i32 %8, 1                            ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.12.i = xor i32 %i.b, 5
  br label %getPixelFormat.exit

bb.e:                                             ; preds = %bb.c
  %.13.i = or disjoint i32 %i.b, 2
  br label %getPixelFormat.exit

bb.f:                                             ; preds = %bb.a
  br label %getPixelFormat.exit

getPixelFormat.exit:                              ; preds = %bb.a, %bb.b, %bb.d, %bb.e, %bb.f
  %.0.i = phi i32 [ -1, %bb.f ], [ %..i, %bb.b ], [ 6, %bb.a ], [ %.12.i, %bb.d ], [ %.13.i, %bb.e ]
  %i.c = tail call range(i32 -1, 1) i32 @tjEncodeYUV3(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %.0.i, ptr noundef %6, i32 noundef 4, i32 noundef %7, i32 noundef %8)
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define noundef ptr @tjInitDecompress() local_unnamed_addr #0 {
bb.a:
  %calloc.i = tail call dereferenceable_or_null(1992) ptr @calloc(i64 1, i64 1992) ; 11 uses
  %i.a = icmp eq ptr %calloc.i, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.c = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Init.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  br label %tj3Init.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1628
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.d, ptr noundef nonnull align 1 dereferenceable(9) @.str.3, i64 9, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1840
  %i.f = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1856
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 -1, i64 16, i1 false)
  store i32 8, ptr %i.f, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1860
  store i32 -1, ptr %i.g, align 4, !tbaa !49
  %i.h = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1892
  store i32 1, ptr %i.h, align 4, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1908
  store i32 1, ptr %i.i, align 4, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1912
  store i32 1, ptr %i.j, align 8, !tbaa !52
  %i.k = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1920
  store i64 4294967297, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1952
  store i32 2, ptr %i.l, align 8, !tbaa !53
  %i.m = tail call fastcc ptr @_tjInitDecompress(ptr noundef %calloc.i)
  br label %tj3Init.exit

tj3Init.exit:                                     ; preds = %bb.b, %bb.c
  %.024.i = phi ptr [ %i.m, %bb.c ], [ null, %bb.b ]
  ret ptr %.024.i
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @tj3DecompressHeader(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr null, ptr %i.a, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.d = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 200, ptr noundef nonnull @.str.5, ptr noundef nonnull @tj3DecompressHeader.FUNCTION_NAME) #25 ; 0 uses
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !66
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1828 ; 2 uses
  store i32 0, ptr %i.g, align 4, !tbaa !67
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.i = load i32, ptr %i.h, align 8, !tbaa !64
  %i.j = and i32 %i.i, 2
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp eq ptr %1, null
  %i.m = icmp eq i64 %2, 0
  %or.cond = or i1 %i.l, %i.m
  br i1 %or.cond, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.o = call i32 @_setjmp(ptr noundef nonnull %i.n) #26
  %.not44 = icmp eq i32 %i.o, 0
  br i1 %.not44, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  call void @jpeg_mem_src_tj(ptr noundef nonnull %i.e, ptr noundef nonnull %1, i64 noundef %2) #25
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1952 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !53
  switch i32 %i.q, label %bb.h [
    i32 2, label %bb.g
    i32 4, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  call void @jpeg_save_markers(ptr noundef nonnull %i.e, i32 noundef 226, i32 noundef 65535) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.r = call i32 @jpeg_read_header(ptr noundef nonnull %i.e, i32 noundef 0) #25
  %i.s = icmp eq i32 %i.r, 2
  br i1 %i.s, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = call fastcc i32 @getSubsamp(ptr noundef %i.e)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1844
  store i32 %i.t, ptr %i.u, align 4, !tbaa !74
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1848 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1852
  %i.y = load <2 x i32>, ptr %i.v, align 8, !tbaa !3
  store <2 x i32> %i.y, ptr %i.w, align 8, !tbaa !3
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !134
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1856
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 644
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !135
  %switch.tableidx = add i32 %i.ad, -1            ; 2 uses
  %i.ae = icmp ult i32 %switch.tableidx, 5
  br i1 %i.ae, label %switch.lookup, label %setDecompParameters.exit

switch.lookup:                                    ; preds = %bb.i
  %i.af = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.tj3DecompressToYUV8, i64 %i.af
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %setDecompParameters.exit

setDecompParameters.exit:                         ; preds = %bb.i, %switch.lookup
  %.sink.i = phi i32 [ %switch.load, %switch.lookup ], [ -1, %bb.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1860 ; 2 uses
  store i32 %.sink.i, ptr %i.ag, align 4, !tbaa !49
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 900
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !136
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1876
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !78
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !137
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1884
  store i32 %i.al, ptr %i.am, align 4, !tbaa !80
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !138
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !139
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1888
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !81
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1116
  %i.at = load i32, ptr %i.as, align 4, !tbaa !141
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1892
  store i32 %i.at, ptr %i.au, align 4, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !142
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1896
  store i32 %i.aw, ptr %i.ax, align 8, !tbaa !82
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1908
  %i.ba = load <2 x i16>, ptr %i.ay, align 8, !tbaa !110
  %i.bb = zext <2 x i16> %i.ba to <2 x i32>
  store <2 x i32> %i.bb, ptr %i.az, align 4, !tbaa !3
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 966
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !143
  %i.be = zext i8 %i.bd to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1916
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !85
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !53
  switch i32 %i.bg, label %bb.l [
    i32 2, label %bb.j
    i32 4, label %bb.j
  ]

bb.j:                                             ; preds = %setDecompParameters.exit, %setDecompParameters.exit
  %i.bh = call i32 @jpeg_read_icc_profile(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #25
  %.not45 = icmp eq i32 %i.bh, 0
  br i1 %.not45, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1968 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !69
  call void @free(ptr noundef %i.bj) #25
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !54
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !69
  %i.bl = load i32, ptr %i.b, align 4, !tbaa !3
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1984
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !280
  br label %bb.l

bb.l:                                             ; preds = %setDecompParameters.exit, %bb.j, %bb.k
  call void @jpeg_abort_decompress(ptr noundef nonnull %i.e) #25
  %i.bo = load i32, ptr %i.ag, align 4, !tbaa !49
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = load i32, ptr %i.w, align 8, !tbaa !88
  %i.br = icmp slt i32 %i.bq, 1
  br i1 %i.br, label %.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = load i32, ptr %i.x, align 4, !tbaa !89
  %i.bt = icmp slt i32 %i.bs, 1
  br i1 %i.bt, label %.sink.split, label %bb.o

.sink.split:                                      ; preds = %bb.m, %bb.n, %bb.l, %bb.d, %bb.c
  %.str.58.sink50 = phi ptr [ @.str.57, %bb.l ], [ @.str.1, %bb.d ], [ @.str.34, %bb.c ], [ @.str.58, %bb.n ], [ @.str.58, %bb.m ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.bv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bu, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3DecompressHeader.FUNCTION_NAME, ptr noundef nonnull %.str.58.sink50) #25 ; 0 uses
  store i32 1, ptr %i.g, align 4, !tbaa !67
  %i.bw = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.bx = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bw, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3DecompressHeader.FUNCTION_NAME, ptr noundef nonnull %.str.58.sink50) #25 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.n
  %.038 = phi i32 [ 0, %bb.n ], [ -1, %.sink.split ]
  %i.by = load i32, ptr %i.f, align 8, !tbaa !66
  %.not46 = icmp eq i32 %i.by, 0
  %spec.select = select i1 %.not46, i32 %.038, i32 -1
  br label %bb.p

bb.p:                                             ; preds = %bb.h, %bb.e, %bb.o, %bb.b
  %.0 = phi i32 [ %spec.select, %bb.o ], [ -1, %bb.b ], [ -1, %bb.e ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %.0
}

declare void @jpeg_save_markers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare i32 @jpeg_read_icc_profile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @tjDecompressHeader3(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.b = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.5, ptr noundef nonnull @tjDecompressHeader3.FUNCTION_NAME) #25 ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1616
  store i32 0, ptr %i.c, align 8, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1828 ; 3 uses
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.e = insertelement <4 x ptr> poison, ptr %3, i64 0
  %i.f = insertelement <4 x ptr> %i.e, ptr %4, i64 1
  %i.g = insertelement <4 x ptr> %i.f, ptr %5, i64 2
  %i.h = insertelement <4 x ptr> %i.g, ptr %6, i64 3
  %i.i = icmp eq <4 x ptr> %i.h, splat (ptr null)
  %i.j = bitcast <4 x i1> %i.i to i4
  %.not50 = icmp eq i4 %i.j, 0
  br i1 %.not50, label %tj3Get.exit41, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.l = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.k, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tjDecompressHeader3.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !67
  %i.m = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.n = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.m, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tjDecompressHeader3.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %bb.f

tj3Get.exit41:                                    ; preds = %bb.c
  %i.o = tail call i32 @tj3DecompressHeader(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1848
  %i.q = load i32, ptr %i.p, align 8, !tbaa !88
  store i32 %i.q, ptr %3, align 4, !tbaa !3
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1852
  %i.s = load i32, ptr %i.r, align 4, !tbaa !89
  store i32 %i.s, ptr %4, align 4, !tbaa !3
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1844
  %i.u = load i32, ptr %i.t, align 4, !tbaa !74   ; 2 uses
  store i32 %i.u, ptr %5, align 4, !tbaa !3
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %bb.e, label %tj3Get.exit44

bb.e:                                             ; preds = %tj3Get.exit41
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.x = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.w, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tjDecompressHeader3.FUNCTION_NAME, ptr noundef nonnull @.str.59) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !67
  %i.y = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.z = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.y, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tjDecompressHeader3.FUNCTION_NAME, ptr noundef nonnull @.str.59) #25 ; 0 uses
  br label %bb.f

tj3Get.exit44:                                    ; preds = %tj3Get.exit41
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1860
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !49
  store i32 %i.ab, ptr %6, align 4, !tbaa !3
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %tj3Get.exit44, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.e ], [ %i.o, %tj3Get.exit44 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @tjDecompressHeader2(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = call i32 @tjDecompressHeader3(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @tjDecompressHeader(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.c = call range(i32 -1, 1) i32 @tjDecompressHeader3(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  ret i32 %i.c
}

; Function Attrs: nofree nounwind uwtable
define range(i32 -1, 1) i32 @tj3GetICCProfile(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #12 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.b = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.5, ptr noundef nonnull @tj3GetICCProfile.FUNCTION_NAME) #25 ; 0 uses
  br label %bb.n

end_hunk_4
begin_hunk_5_@tjDecompress2:bb.a
  call void @jpeg_abort_decompress(ptr noundef nonnull %i.c) #25
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.o, %processFlags.exit, %bb.p, %bb.b
  %.0 = phi i32 [ -1, %bb.o ], [ -1, %bb.b ], [ -1, %processFlags.exit ], [ %i.bg, %bb.p ], [ -1, %bb.r ], [ -1, %bb.q ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @tjDecompress(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %8, 512
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call range(i32 -1, 1) i32 @tjDecompressToYUV2(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 4, i32 noundef 0, i32 noundef %8)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  switch i32 %7, label %bb.h [
    i32 1, label %getPixelFormat.exit
    i32 3, label %bb.d
    i32 4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %..i = and i32 %8, 1
  br label %getPixelFormat.exit

bb.e:                                             ; preds = %bb.c
  %i.c = and i32 %8, 64
  %.not.i = icmp eq i32 %i.c, 0
  %i.d = and i32 %8, 1                            ; 2 uses
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.12.i = xor i32 %i.d, 5
  br label %getPixelFormat.exit

bb.g:                                             ; preds = %bb.e
  %.13.i = or disjoint i32 %i.d, 2
  br label %getPixelFormat.exit

bb.h:                                             ; preds = %bb.c
  br label %getPixelFormat.exit

getPixelFormat.exit:                              ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.0.i = phi i32 [ -1, %bb.h ], [ %..i, %bb.d ], [ 6, %bb.c ], [ %.12.i, %bb.f ], [ %.13.i, %bb.g ]
  %i.e = tail call i32 @tjDecompress2(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %.0.i, i32 noundef %8)
  br label %bb.i

bb.i:                                             ; preds = %getPixelFormat.exit, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.e, %getPixelFormat.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @tjDecompressToYUV(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @tjDecompressToYUV2(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 4, i32 noundef 0, i32 noundef %4)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @tj3DecompressToYUVPlanes8(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [10 x i32], align 16              ; 4 uses
  %i.b = alloca [10 x i32], align 16              ; 4 uses
  %i.c = alloca [10 x i32], align 16              ; 4 uses
  %i.d = alloca [10 x i32], align 16              ; 5 uses
  %i.e = alloca [10 x ptr], align 16              ; 17 uses
  %i.f = alloca [10 x ptr], align 16              ; 19 uses
  %5 = alloca %struct.my_progress_mgr, align 8    ; 6 uses
  %i.g = alloca [10 x ptr], align 16              ; 10 uses
  %i.h = alloca [10 x i32], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.j = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 200, ptr noundef nonnull @.str.5, ptr noundef nonnull @tj3DecompressToYUVPlanes8.FUNCTION_NAME) #25 ; 0 uses
  br label %bb.az

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  store i32 0, ptr %i.k, align 8, !tbaa !66
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1828 ; 10 uses
  store i32 0, ptr %i.l, align 4, !tbaa !67
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.f, i8 0, i64 80, i1 false), !tbaa !231
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.e, i8 0, i64 80, i1 false), !tbaa !231
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.o = load i32, ptr %i.n, align 8, !tbaa !64
  %i.p = and i32 %i.o, 2
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.s = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.r, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3DecompressToYUVPlanes8.FUNCTION_NAME, ptr noundef nonnull @.str.34) #25 ; 0 uses
  store i32 1, ptr %i.l, align 4, !tbaa !67
  %i.t = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.u = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.t, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3DecompressToYUVPlanes8.FUNCTION_NAME, ptr noundef nonnull @.str.34) #25 ; 0 uses
  br label %bb.aw

bb.e:                                             ; preds = %bb.c
  %i.v = icmp ne ptr %1, null
  %i.w = icmp ne i64 %2, 0
  %or.cond.not228 = and i1 %i.v, %i.w
  %i.x = icmp ne ptr %3, null
  %or.cond3 = and i1 %or.cond.not228, %i.x
  br i1 %or.cond3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %3, align 8, !tbaa !54
  %.not229 = icmp eq ptr %i.y, null
  br i1 %.not229, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.aa = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.z, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3DecompressToYUVPlanes8.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  store i32 1, ptr %i.l, align 4, !tbaa !67
  %i.ab = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.ac = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ab, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3DecompressToYUVPlanes8.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %bb.aw

bb.h:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1880
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !79
  %.not230 = icmp eq i32 %i.ae, 0
  br i1 %.not230, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  store ptr @my_progress_monitor, ptr %5, align 8, !tbaa !124
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %0, ptr %i.ag, align 8, !tbaa !128
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sink = phi ptr [ %5, %bb.i ], [ null, %bb.h ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 600
  store ptr %.sink, ptr %i.ah, align 8, !tbaa !129
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1944 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !86
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ak, 20
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !130
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 88
  store i64 %i.al, ptr %i.ao, align 8, !tbaa !113
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 2 uses
  %i.aq = call i32 @_setjmp(ptr noundef nonnull %i.ap) #26
  %.not231 = icmp eq i32 %i.aq, 0
  br i1 %.not231, label %bb.k, label %bb.aw

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !131
  %i.at = icmp slt i32 %i.as, 202
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @jpeg_mem_src_tj(ptr noundef nonnull %i.m, ptr noundef nonnull %1, i64 noundef %2) #25
  %i.au = call i32 @jpeg_read_header(ptr noundef nonnull %i.m, i32 noundef 1) #25 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.av = call fastcc i32 @getSubsamp(ptr noundef %i.m) ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1844 ; 4 uses
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !74
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !132 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1848
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !88
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 636
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !133 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1852
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !89
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !134
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1856
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !7
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 644
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !135
  %switch.tableidx = add i32 %i.bh, -1            ; 2 uses
  %i.bi = icmp ult i32 %switch.tableidx, 5
  br i1 %i.bi, label %switch.lookup, label %setDecompParameters.exit

switch.lookup:                                    ; preds = %bb.m
  %i.bj = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.tj3DecompressToYUV8, i64 %i.bj
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %setDecompParameters.exit

setDecompParameters.exit:                         ; preds = %bb.m, %switch.lookup
  %.sink.i = phi i32 [ %switch.load, %switch.lookup ], [ -1, %bb.m ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1860
  store i32 %.sink.i, ptr %i.bk, align 4, !tbaa !49
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 900
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !136
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1876
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !78
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !137
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1884
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !80
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !138
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 20
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !139
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1888
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !81
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1116
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !141
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1892
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !50
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !142
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1896
  store i32 %i.ca, ptr %i.cb, align 8, !tbaa !82
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1908
  %i.ce = load <2 x i16>, ptr %i.cc, align 8, !tbaa !110
  %i.cf = zext <2 x i16> %i.ce to <2 x i32>
  store <2 x i32> %i.cf, ptr %i.cd, align 4, !tbaa !3
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 966
  %i.ch = load i8, ptr %i.cg, align 2, !tbaa !143
  %i.ci = zext i8 %i.ch to i32
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1916
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !85
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1948
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !87 ; 2 uses
  %.not232 = icmp ne i32 %i.cl, 0
  %i.cm = sext i32 %i.ay to i64
  %i.cn = sext i32 %i.bb to i64
  %i.co = mul nsw i64 %i.cn, %i.cm
  %i.cp = sext i32 %i.cl to i64
  %i.cq = icmp ugt i64 %i.co, %i.cp
  %or.cond258 = select i1 %.not232, i1 %i.cq, i1 false
  br i1 %or.cond258, label %bb.n, label %bb.o

bb.n:                                             ; preds = %setDecompParameters.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.cs = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cr, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3DecompressToYUVPlanes8.FUNCTION_NAME, ptr noundef nonnull @.str.35) #25 ; 0 uses
  store i32 1, ptr %i.l, align 4, !tbaa !67
  %i.ct = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.cu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ct, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3DecompressToYUVPlanes8.FUNCTION_NAME, ptr noundef nonnull @.str.35) #25 ; 0 uses
  br label %bb.aw

bb.o:                                             ; preds = %setDecompParameters.exit
  switch i32 %i.av, label %bb.q [
    i32 -1, label %bb.p
    i32 3, label %bb.t
  ]

bb.p:                                             ; preds = %bb.o
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.cw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cv, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3DecompressToYUVPlanes8.FUNCTION_NAME, ptr noundef nonnull @.str.59) #25 ; 0 uses
  store i32 1, ptr %i.l, align 4, !tbaa !67
  %i.cx = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.cy = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cx, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3DecompressToYUVPlanes8.FUNCTION_NAME, ptr noundef nonnull @.str.59) #25 ; 0 uses
  br label %bb.aw

bb.q:                                             ; preds = %bb.o
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !54
  %.not234 = icmp eq ptr %i.da, null
  br i1 %.not234, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !54
  %.not235 = icmp eq ptr %i.dc, null
  br i1 %.not235, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.de = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.dd, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3DecompressToYUVPlanes8.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  store i32 1, ptr %i.l, align 4, !tbaa !67
  %i.df = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.dg = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.df, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3DecompressToYUVPlanes8.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %bb.aw

bb.t:                                             ; preds = %bb.o, %bb.r
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 8 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !284
  %i.dj = icmp sgt i32 %i.di, 3
  br i1 %i.dj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.dl = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.dk, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3DecompressToYUVPlanes8.FUNCTION_NAME, ptr noundef nonnull @.str.68) #25 ; 0 uses
  store i32 1, ptr %i.l, align 4, !tbaa !67
  %i.dm = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.dn = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.dm, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3DecompressToYUVPlanes8.FUNCTION_NAME, ptr noundef nonnull @.str.68) #25 ; 0 uses
  br label %bb.aw

bb.v:                                             ; preds = %bb.t
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1920 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1924 ; 2 uses
  %i.dr = load <2 x i32>, ptr %i.do, align 8, !tbaa !3
  store <2 x i32> %i.dr, ptr %i.dp, align 4, !tbaa !3
  call void @jpeg_calc_output_dimensions(ptr noundef nonnull %i.m) #25
  %i.ds = load i32, ptr %i.do, align 8, !tbaa !145
  %i.dt = shl nsw i32 %i.ds, 3
  %i.du = load i32, ptr %i.dq, align 4, !tbaa !146
  %i.dv = sdiv i32 %i.dt, %i.du                   ; 4 uses
  %i.dw = load i32, ptr %i.dh, align 8, !tbaa !284
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %.lr.ph275, label %.loopexit262

.lr.ph275:                                        ; preds = %bb.v
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.ea = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr) ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 724
  %.not242 = icmp eq ptr %4, null
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph275, %._crit_edge
  %indvars.iv322 = phi i64 [ 0, %.lr.ph275 ], [ %indvars.iv.next323, %._crit_edge ] ; 13 uses
  %.0208271 = phi i32 [ 0, %.lr.ph275 ], [ %i.go, %._crit_edge ]
  %.0214270 = phi i32 [ 0, %.lr.ph275 ], [ %.1215, %._crit_edge ]
  %i.ec = load ptr, ptr %i.dy, align 8, !tbaa !285
  %i.ed = getelementptr inbounds nuw [96 x i8], ptr %i.ec, i64 %indvars.iv322 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 28
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !235
  %i.eg = mul i32 %i.ef, %i.dv                    ; 3 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv322
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !3
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !236
  %i.ek = load i32, ptr %i.dz, align 8, !tbaa !153 ; 2 uses
  %i.el = load i32, ptr %i.aw, align 4, !tbaa !74 ; 4 uses
  %i.em = icmp slt i32 %i.ek, 1
  %i.en = icmp ugt i32 %i.el, 6
  %or.cond3.i = or i1 %i.em, %i.en
  br i1 %or.cond3.i, label %.sink.split.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eo = icmp eq i32 %i.el, 3
  %i.ep = select i1 %i.eo, i64 1, i64 3
  %.not.i = icmp samesign ult i64 %indvars.iv322, %i.ep
  br i1 %.not.i, label %bb.y, label %.sink.split.i

bb.y:                                             ; preds = %bb.x
  %i.eq = zext nneg i32 %i.ek to i64
  %i.er = zext nneg i32 %i.el to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr @tjMCUWidth, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !3  ; 2 uses
  %i.eu = sdiv i32 %i.et, 8                       ; 2 uses
  %i.ev = sext i32 %i.eu to i64
  %i.ew = add nsw i64 %i.eq, -1
  %i.ex = add nsw i64 %i.ew, %i.ev
  %i.ey = sub nsw i32 0, %i.eu
  %i.ez = sext i32 %i.ey to i64
  %i.fa = and i64 %i.ex, %i.ez                    ; 2 uses
  %i.fb = icmp eq i64 %indvars.iv322, 0
  br i1 %i.fb, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fc = shl nsw i64 %i.fa, 3
  %i.fd = sext i32 %i.et to i64
  %i.fe = udiv i64 %i.fc, %i.fd
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0.i = phi i64 [ %i.fe, %bb.z ], [ %i.fa, %bb.y ] ; 2 uses
  %i.ff = icmp ugt i64 %.0.i, 2147483647
  br i1 %i.ff, label %.sink.split.i, label %tj3YUVPlaneWidth.exit

.sink.split.i:                                    ; preds = %bb.aa, %bb.x, %bb.w
  %.str.29.sink.i = phi ptr [ @.str.29, %bb.aa ], [ @.str.1, %bb.w ], [ @.str.1, %bb.x ]
  %i.fg = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ea, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3YUVPlaneWidth.FUNCTION_NAME, ptr noundef nonnull %.str.29.sink.i) #25 ; 0 uses
  %.pre = load i32, ptr %i.aw, align 4, !tbaa !74
  br label %tj3YUVPlaneWidth.exit

tj3YUVPlaneWidth.exit:                            ; preds = %bb.aa, %.sink.split.i
  %i.fh = phi i32 [ %i.el, %bb.aa ], [ %.pre, %.sink.split.i ] ; 3 uses
  %.1.i = phi i64 [ %.0.i, %bb.aa ], [ 0, %.sink.split.i ] ; 19 uses
  %i.fi = trunc nuw nsw i64 %.1.i to i32          ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv322
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !3
  %i.fk = load i32, ptr %i.eb, align 4, !tbaa !161 ; 2 uses
  %i.fl = icmp slt i32 %i.fk, 1
  %i.fm = icmp ugt i32 %i.fh, 6
  %or.cond3.i246 = or i1 %i.fl, %i.fm
  br i1 %or.cond3.i246, label %.sink.split.i248, label %bb.ab

bb.ab:                                            ; preds = %tj3YUVPlaneWidth.exit
  %i.fn = icmp eq i32 %i.fh, 3
  %i.fo = select i1 %i.fn, i64 1, i64 3
  %.not.i247 = icmp samesign ult i64 %indvars.iv322, %i.fo
  br i1 %.not.i247, label %bb.ac, label %.sink.split.i248

end_hunk_5
begin_hunk_6_@tjDecompressToYUVPlanes:bb.a
  %i.p = call i32 @jpeg_read_header(ptr noundef nonnull %i.c, i32 noundef 1) #25 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.r = load i32, ptr %i.q, align 8, !tbaa !187  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 636
  %i.t = load i32, ptr %i.s, align 4, !tbaa !188  ; 2 uses
  %i.u = icmp eq i32 %4, 0
  %spec.select = select i1 %i.u, i32 %i.r, i32 %4
  %i.v = icmp eq i32 %6, 0
  %.061 = select i1 %i.v, i32 %i.t, i32 %6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.i
  %indvars.iv = phi i64 [ 0, %bb.f ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @sf, i64 %indvars.iv ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !281  ; 2 uses
  %i.y = mul nsw i32 %i.x, %i.r
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !282 ; 3 uses
  %i.ab = add i32 %i.aa, -1                       ; 2 uses
  %i.ac = add i32 %i.ab, %i.y
  %i.ad = sdiv i32 %i.ac, %i.aa
  %.not70 = icmp sgt i32 %i.ad, %spec.select
  br i1 %.not70, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = mul nsw i32 %i.x, %i.t
  %i.af = add i32 %i.ab, %i.ae
  %i.ag = sdiv i32 %i.af, %i.aa
  %.not71 = icmp sgt i32 %i.ag, %.061
  br i1 %.not71, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.sink.split, label %bb.g, !llvm.loop !306

bb.j:                                             ; preds = %bb.h
  %i.ah = lshr i32 %7, 1
  %.lobit.i = and i32 %i.ah, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1832
  store i32 %.lobit.i, ptr %i.ai, align 8, !tbaa !71
  %i.aj = and i32 %7, 8
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.k, label %.sink.split.i

bb.k:                                             ; preds = %bb.j
  %i.ak = and i32 %7, 16
  %.not22.i = icmp eq i32 %i.ak, 0
  br i1 %.not22.i, label %bb.l, label %.sink.split.i

bb.l:                                             ; preds = %bb.k
  %i.al = and i32 %7, 32
  %.not23.i = icmp eq i32 %i.al, 0
  br i1 %.not23.i, label %bb.m, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.l, %bb.k, %bb.j
  %.str.126.sink.i = phi ptr [ @.str.124, %bb.j ], [ @.str.126, %bb.k ], [ @.str.127, %bb.l ]
  %i.am = call i32 @setenv(ptr noundef nonnull %.str.126.sink.i, ptr noundef nonnull @.str.125, i32 noundef 1) #25 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %.sink.split.i, %bb.l
  %i.an = lshr i32 %7, 8
  %.lobit24.i = and i32 %i.an, 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1864
  store i32 %.lobit24.i, ptr %i.ao, align 8, !tbaa !75
  %i.ap = lshr i32 %7, 10
  %.lobit25.i = and i32 %i.ap, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1836
  store i32 %.lobit25.i, ptr %i.aq, align 4, !tbaa !72
  %i.ar = lshr i32 %7, 11
  %.lobit26.i = and i32 %i.ar, 1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1868
  store i32 %.lobit26.i, ptr %i.as, align 4, !tbaa !76
  %i.at = lshr i32 %7, 13
  %.lobit28.i = and i32 %i.at, 1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1620
  store i32 %.lobit28.i, ptr %i.au, align 4, !tbaa !70
  %i.av = lshr i32 %7, 14
  %.lobit29.i = and i32 %i.av, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1876
  store i32 %.lobit29.i, ptr %i.aw, align 4, !tbaa !78
  %i.ax = and i32 %7, 32768
  %.not30.i = icmp eq i32 %i.ax, 0
  br i1 %.not30.i, label %processFlags.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1880
  store i32 500, ptr %i.ay, align 8, !tbaa !79
  br label %processFlags.exit

processFlags.exit:                                ; preds = %bb.m, %bb.n
  %i.az = and i64 %indvars.iv, 4294967295
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr @sf, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = call i32 @tj3SetScalingFactor(ptr noundef nonnull %0, i64 %i.bb)
  %i.bd = icmp eq i32 %i.bc, -1
  br i1 %i.bd, label %bb.r, label %bb.o

bb.o:                                             ; preds = %processFlags.exit
  %i.be = call i32 @tj3DecompressToYUVPlanes8(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2, ptr noundef %3, ptr noundef %5)
  br label %bb.r

.sink.split:                                      ; preds = %bb.i, %bb.d, %bb.c
  %.str.67.sink81 = phi ptr [ @.str.1, %bb.d ], [ @.str.34, %bb.c ], [ @.str.67, %bb.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.bg = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bf, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tjDecompressToYUVPlanes.FUNCTION_NAME, ptr noundef nonnull %.str.67.sink81) #25 ; 0 uses
  store i32 1, ptr %i.e, align 4, !tbaa !67
  %i.bh = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.bi = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bh, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tjDecompressToYUVPlanes.FUNCTION_NAME, ptr noundef nonnull %.str.67.sink81) #25 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !131
  %i.bl = icmp sgt i32 %i.bk, 200
  br i1 %i.bl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @jpeg_abort_decompress(ptr noundef nonnull %i.c) #25
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %processFlags.exit, %bb.o, %bb.b
  %.0 = phi i32 [ -1, %processFlags.exit ], [ -1, %bb.b ], [ %i.be, %bb.o ], [ -1, %bb.q ], [ -1, %bb.p ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @tj3DecompressToYUV8(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 7 uses
  %i.b = alloca [3 x i32], align 4                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.d = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 200, ptr noundef nonnull @.str.5, ptr noundef nonnull @tj3DecompressToYUV8.FUNCTION_NAME) #25 ; 0 uses
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1616
  store i32 0, ptr %i.f, align 8, !tbaa !66
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1828 ; 2 uses
  store i32 0, ptr %i.g, align 4, !tbaa !67
  %i.h = icmp ne ptr %1, null
  %i.i = icmp ne i64 %2, 0
  %or.cond.not105 = and i1 %i.h, %i.i
  %i.j = icmp ne ptr %3, null
  %or.cond3.not102 = and i1 %or.cond.not105, %i.j
  %i.k = icmp sgt i32 %4, 0
  %or.cond5.not100 = and i1 %or.cond3.not102, %i.k
  %i.l = call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %4)
  %i.m = icmp samesign ult i32 %i.l, 2
  %or.cond78 = select i1 %or.cond5.not100, i1 %i.m, i1 false
  br i1 %or.cond78, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.o = call i32 @_setjmp(ptr noundef nonnull %i.n) #26
  %.not75 = icmp eq i32 %i.o, 0
  br i1 %.not75, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.q = load i32, ptr %i.p, align 4, !tbaa !131
  %i.r = icmp slt i32 %i.q, 202
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @jpeg_mem_src_tj(ptr noundef nonnull %i.e, ptr noundef nonnull %1, i64 noundef %2) #25
  %i.s = call i32 @jpeg_read_header(ptr noundef nonnull %i.e, i32 noundef 1) #25 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = call fastcc i32 @getSubsamp(ptr noundef %i.e) ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1844 ; 4 uses
  store i32 %i.t, ptr %i.u, align 4, !tbaa !74
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.w = load i32, ptr %i.v, align 8, !tbaa !132  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1848
  store i32 %i.w, ptr %i.x, align 8, !tbaa !88
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 636
  %i.z = load i32, ptr %i.y, align 4, !tbaa !133  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1852
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !89
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !134
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1856
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 644
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !135
  %switch.tableidx = add i32 %i.af, -1            ; 2 uses
  %i.ag = icmp ult i32 %switch.tableidx, 5
  br i1 %i.ag, label %switch.lookup, label %setDecompParameters.exit

switch.lookup:                                    ; preds = %bb.g
  %i.ah = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.tj3DecompressToYUV8, i64 %i.ah
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %setDecompParameters.exit

setDecompParameters.exit:                         ; preds = %bb.g, %switch.lookup
  %.sink.i = phi i32 [ %switch.load, %switch.lookup ], [ -1, %bb.g ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1860
  store i32 %.sink.i, ptr %i.ai, align 4, !tbaa !49
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 900
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !136
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1876
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !78
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.an = load i32, ptr %i.am, align 8, !tbaa !137
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1884
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !80
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !138
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !139
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1888
  store i32 %i.as, ptr %i.at, align 8, !tbaa !81
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1116
  %i.av = load i32, ptr %i.au, align 4, !tbaa !141
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1892
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !50
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !142
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1896
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !82
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1908
  %i.bc = load <2 x i16>, ptr %i.ba, align 8, !tbaa !110
  %i.bd = zext <2 x i16> %i.bc to <2 x i32>
  store <2 x i32> %i.bd, ptr %i.bb, align 4, !tbaa !3
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 966
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !143
  %i.bg = zext i8 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1916
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !85
  %i.bi = icmp eq i32 %i.t, -1
  br i1 %i.bi, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %setDecompParameters.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !145 ; 2 uses
  %i.bl = mul i32 %i.bk, %i.w
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1924
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !146 ; 3 uses
  %i.bo = add i32 %i.bn, -1                       ; 2 uses
  %i.bp = add i32 %i.bo, %i.bl
  %i.bq = udiv i32 %i.bp, %i.bn                   ; 3 uses
  %i.br = mul i32 %i.bk, %i.z
  %i.bs = add i32 %i.bo, %i.br
  %i.bt = udiv i32 %i.bs, %i.bn                   ; 3 uses
  %i.bu = icmp slt i32 %i.bq, 1                   ; 2 uses
  %i.bv = icmp ugt i32 %i.t, 6
  %or.cond3.i = or i1 %i.bv, %i.bu
  br i1 %or.cond3.i, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bw = zext nneg i32 %i.bq to i64
  %i.bx = zext nneg i32 %i.t to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr @tjMCUWidth, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = sdiv i32 %i.bz, 8                       ; 2 uses
  %i.cb = sext i32 %i.ca to i64
  %i.cc = add nsw i64 %i.bw, -1
  %i.cd = add nsw i64 %i.cc, %i.cb
  %i.ce = sub nsw i32 0, %i.ca
  %i.cf = sext i32 %i.ce to i64
  %i.cg = and i64 %i.cd, %i.cf                    ; 2 uses
  %i.ch = icmp ugt i64 %i.cg, 2147483647
  br i1 %i.ch, label %.sink.split.i, label %tj3YUVPlaneWidth.exit

.sink.split.i:                                    ; preds = %bb.i, %bb.h
  %.str.29.sink.i = phi ptr [ @.str.29, %bb.i ], [ @.str.1, %bb.h ]
  %i.ci = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.cj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ci, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3YUVPlaneWidth.FUNCTION_NAME, ptr noundef nonnull %.str.29.sink.i) #25 ; 0 uses
  %.pre = load i32, ptr %i.u, align 4, !tbaa !74
  br label %tj3YUVPlaneWidth.exit

tj3YUVPlaneWidth.exit:                            ; preds = %bb.i, %.sink.split.i
  %i.ck = phi i32 [ %i.t, %bb.i ], [ %.pre, %.sink.split.i ] ; 3 uses
  %.1.i = phi i64 [ %i.cg, %bb.i ], [ 0, %.sink.split.i ]
  %i.cl = trunc nuw nsw i64 %.1.i to i32
  %i.cm = icmp slt i32 %i.bt, 1                   ; 2 uses
  %i.cn = icmp ugt i32 %i.ck, 6
  %or.cond3.i84 = or i1 %i.cm, %i.cn
  br i1 %or.cond3.i84, label %.sink.split.i85, label %bb.j

bb.j:                                             ; preds = %tj3YUVPlaneWidth.exit
  %i.co = zext nneg i32 %i.bt to i64
  %i.cp = zext nneg i32 %i.ck to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr @tjMCUHeight, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.cs = sdiv i32 %i.cr, 8                       ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = add nsw i64 %i.co, -1
  %i.cv = add nsw i64 %i.cu, %i.ct
  %i.cw = sub nsw i32 0, %i.cs
  %i.cx = sext i32 %i.cw to i64
  %i.cy = and i64 %i.cv, %i.cx                    ; 2 uses
  %i.cz = icmp ugt i64 %i.cy, 2147483647
  br i1 %i.cz, label %.sink.split.i85, label %tj3YUVPlaneHeight.exit

.sink.split.i85:                                  ; preds = %bb.j, %tj3YUVPlaneWidth.exit
  %.str.30.sink.i = phi ptr [ @.str.30, %bb.j ], [ @.str.1, %tj3YUVPlaneWidth.exit ]
  %i.da = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.db = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.da, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3YUVPlaneHeight.FUNCTION_NAME, ptr noundef nonnull %.str.30.sink.i) #25 ; 0 uses
  %.pre107 = load i32, ptr %i.u, align 4, !tbaa !74
  br label %tj3YUVPlaneHeight.exit

tj3YUVPlaneHeight.exit:                           ; preds = %bb.j, %.sink.split.i85
  %i.dc = phi i32 [ %i.ck, %bb.j ], [ %.pre107, %.sink.split.i85 ] ; 4 uses
  %.1.i86 = phi i64 [ %i.cy, %bb.j ], [ 0, %.sink.split.i85 ] ; 2 uses
  %i.dd = trunc nuw nsw i64 %.1.i86 to i32
  store ptr %3, ptr %i.a, align 16, !tbaa !54
  %i.de = add nsw i32 %4, -1                      ; 2 uses
  %i.df = add nuw i32 %i.de, %i.cl
  %i.dg = sub nsw i32 0, %4                       ; 2 uses
  %i.dh = and i32 %i.df, %i.dg                    ; 3 uses
  store i32 %i.dh, ptr %i.b, align 4, !tbaa !3
  %i.di = icmp eq i32 %i.dc, 3
  br i1 %i.di, label %bb.k, label %bb.l

bb.k:                                             ; preds = %tj3YUVPlaneHeight.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.dj, align 4, !tbaa !3
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.dk, align 4, !tbaa !3
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i8 0, i64 16, i1 false)
  br label %bb.o

bb.l:                                             ; preds = %tj3YUVPlaneHeight.exit
  %i.dm = icmp ugt i32 %i.dc, 6
  %or.cond3.i87 = or i1 %i.bu, %i.dm
  br i1 %or.cond3.i87, label %.sink.split.i88, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dn = zext nneg i32 %i.bq to i64
  %i.do = zext nneg i32 %i.dc to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr @tjMCUWidth, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3  ; 2 uses
  %i.dr = sdiv i32 %i.dq, 8                       ; 2 uses
  %i.ds = sext i32 %i.dr to i64
  %i.dt = add nsw i64 %i.dn, -1
  %i.du = add nsw i64 %i.dt, %i.ds
  %i.dv = sub nsw i32 0, %i.dr
  %i.dw = sext i32 %i.dv to i64
  %i.dx = and i64 %i.du, %i.dw
  %i.dy = shl nsw i64 %i.dx, 3
  %i.dz = sext i32 %i.dq to i64
  %i.ea = udiv i64 %i.dy, %i.dz                   ; 2 uses
  %i.eb = icmp ugt i64 %i.ea, 2147483647
  br i1 %i.eb, label %.sink.split.i88, label %tj3YUVPlaneWidth.exit91

.sink.split.i88:                                  ; preds = %bb.m, %bb.l
  %.str.29.sink.i89 = phi ptr [ @.str.29, %bb.m ], [ @.str.1, %bb.l ]
  %i.ec = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.ed = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ec, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3YUVPlaneWidth.FUNCTION_NAME, ptr noundef nonnull %.str.29.sink.i89) #25 ; 0 uses
  %.pre108 = load i32, ptr %i.u, align 4, !tbaa !74
  br label %tj3YUVPlaneWidth.exit91

tj3YUVPlaneWidth.exit91:                          ; preds = %bb.m, %.sink.split.i88
  %i.ee = phi i32 [ %i.dc, %bb.m ], [ %.pre108, %.sink.split.i88 ] ; 3 uses
  %.1.i90 = phi i64 [ %i.ea, %bb.m ], [ 0, %.sink.split.i88 ]
  %i.ef = trunc nuw nsw i64 %.1.i90 to i32
  %i.eg = icmp ugt i32 %i.ee, 6
  %.not106 = icmp eq i32 %i.ee, 3
  %i.eh = or i1 %i.eg, %.not106
  %or.cond = or i1 %i.eh, %i.cm
  br i1 %or.cond, label %.sink.split.i94, label %bb.n

bb.n:                                             ; preds = %tj3YUVPlaneWidth.exit91
  %i.ei = zext nneg i32 %i.bt to i64
  %i.ej = zext nneg i32 %i.ee to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr @tjMCUHeight, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !3  ; 2 uses
  %i.em = sdiv i32 %i.el, 8                       ; 2 uses
  %i.en = sext i32 %i.em to i64
  %i.eo = add nsw i64 %i.ei, -1
  %i.ep = add nsw i64 %i.eo, %i.en
  %i.eq = sub nsw i32 0, %i.em
  %i.er = sext i32 %i.eq to i64
  %i.es = and i64 %i.ep, %i.er
  %i.et = shl nsw i64 %i.es, 3
  %i.eu = sext i32 %i.el to i64
  %i.ev = udiv i64 %i.et, %i.eu                   ; 2 uses
  %i.ew = icmp ugt i64 %i.ev, 2147483647
  br i1 %i.ew, label %.sink.split.i94, label %tj3YUVPlaneHeight.exit97

.sink.split.i94:                                  ; preds = %bb.n, %tj3YUVPlaneWidth.exit91
  %.str.30.sink.i95 = phi ptr [ @.str.30, %bb.n ], [ @.str.1, %tj3YUVPlaneWidth.exit91 ]
  %i.ex = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.ey = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ex, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3YUVPlaneHeight.FUNCTION_NAME, ptr noundef nonnull %.str.30.sink.i95) #25 ; 0 uses
  br label %tj3YUVPlaneHeight.exit97

tj3YUVPlaneHeight.exit97:                         ; preds = %bb.n, %.sink.split.i94
  %.1.i96 = phi i64 [ %i.ev, %bb.n ], [ 0, %.sink.split.i94 ] ; 2 uses
  %i.ez = add nuw i32 %i.de, %i.ef
  %i.fa = and i32 %i.ez, %i.dg                    ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !3
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 4
end_hunk_6
begin_hunk_7_@tj3TransformBufSize:bb.a

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1852
  %i.x = load i32, ptr %i.w, align 4, !tbaa !89   ; 2 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.aa = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.z, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3TransformBufSize.FUNCTION_NAME, ptr noundef nonnull @.str.63) #25 ; 0 uses
  store i32 1, ptr %i.g, align 4, !tbaa !67
  %i.ab = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.ac = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ab, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3TransformBufSize.FUNCTION_NAME, ptr noundef nonnull @.str.63) #25 ; 0 uses
  br label %bb.s

bb.j:                                             ; preds = %bb.h
  store i32 %i.u, ptr %i.a, align 4, !tbaa !3
  store i32 %i.x, ptr %i.b, align 4, !tbaa !3
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1844
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !74
  store i32 %i.ae, ptr %i.c, align 4, !tbaa !3
  %i.af = call fastcc i32 @getTransformedSpecs(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef nonnull %1, ptr noundef nonnull @tj3TransformBufSize.FUNCTION_NAME)
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %i.ai = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  %i.aj = load i32, ptr %i.c, align 4, !tbaa !3   ; 3 uses
  %i.ak = icmp slt i32 %i.ah, 1
  %i.al = icmp slt i32 %i.ai, 1
  %or.cond.i = or i1 %i.ak, %i.al
  %i.am = add i32 %i.aj, -7
  %i.an = icmp ult i32 %i.am, -8
  %or.cond5.i = or i1 %or.cond.i, %i.an
  br i1 %or.cond5.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.ap = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ao, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3JPEGBufSize.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %tj3JPEGBufSize.exit

bb.m:                                             ; preds = %bb.k
  %i.aq = icmp eq i32 %i.aj, -1
  %spec.store.select.i = select i1 %i.aq, i32 0, i32 %i.aj ; 2 uses
  %i.ar = zext nneg i32 %spec.store.select.i to i64 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr @tjMCUWidth, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3  ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr @tjMCUHeight, i64 %i.ar
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3  ; 3 uses
  %i.aw = icmp eq i32 %spec.store.select.i, 3
  br i1 %i.aw, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = mul nsw i32 %i.av, %i.at
  %i.ay = sdiv i32 256, %i.ax
  %narrow.i = add nsw i32 %i.ay, 2
  %i.az = sext i32 %narrow.i to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ba = phi i64 [ %i.az, %bb.n ], [ 2, %bb.m ]
  %i.bb = add nsw i32 %i.ah, -1
  %i.bc = add i32 %i.bb, %i.at
  %i.bd = sub i32 0, %i.at
  %i.be = and i32 %i.bc, %i.bd
  %i.bf = add nsw i32 %i.ai, -1
  %i.bg = add i32 %i.bf, %i.av
  %i.bh = sub i32 0, %i.av
  %i.bi = and i32 %i.bg, %i.bh
  %i.bj = mul nsw i32 %i.bi, %i.be
  %i.bk = sext i32 %i.bj to i64
  %i.bl = mul nsw i64 %i.ba, %i.bk
  %i.bm = add nsw i64 %i.bl, 2048
  br label %tj3JPEGBufSize.exit

tj3JPEGBufSize.exit:                              ; preds = %bb.l, %bb.o
  %.0.i = phi i64 [ 0, %bb.l ], [ %i.bm, %bb.o ]  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !53
  switch i32 %i.bo, label %bb.r [
    i32 2, label %bb.p
    i32 4, label %bb.p
  ]

bb.p:                                             ; preds = %tj3JPEGBufSize.exit, %tj3JPEGBufSize.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !351
  %i.br = and i32 %i.bq, 64
  %.not33 = icmp eq i32 %i.br, 0
  br i1 %.not33, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !280
  %i.bu = add i64 %i.bt, %.0.i
  br label %bb.s

bb.r:                                             ; preds = %tj3JPEGBufSize.exit, %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1976
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !90
  %i.bx = add i64 %i.bw, %.0.i
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.f, %bb.i, %bb.r, %bb.q, %bb.j, %bb.b
  %.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.i ], [ %i.bu, %bb.q ], [ %i.bx, %bb.r ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i64 %.0
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @getTransformedSpecs(ptr nofree noundef nonnull captures(none) initializes((1616, 1620), (1828, 1832)) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef %5) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1616
  store i32 0, ptr %i.a, align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1828 ; 8 uses
  store i32 0, ptr %i.b, align 4, !tbaa !67
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.d = load i32, ptr %i.c, align 8, !tbaa !64
  %i.e = and i32 %i.d, 3
  %or.cond.not = icmp eq i32 %i.e, 3
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.g = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef %5, ptr noundef nonnull @.str.70) #25 ; 0 uses
  store i32 1, ptr %i.b, align 4, !tbaa !67
  %i.h = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.h, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef %5, ptr noundef nonnull @.str.70) #25 ; 0 uses
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %1, align 4, !tbaa !3      ; 3 uses
  %i.k = icmp slt i32 %i.j, 1
  br i1 %i.k, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %2, align 4, !tbaa !3      ; 3 uses
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr %3, align 4, !tbaa !3      ; 2 uses
  %i.o = add i32 %i.n, -7
  %or.cond128 = icmp ult i32 %i.o, -8
  br i1 %or.cond128, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.q = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.p, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef %5, ptr noundef nonnull @.str.1) #25 ; 0 uses
  store i32 1, ptr %i.b, align 4, !tbaa !67
  %i.r = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.s = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.r, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef %5, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !353  ; 2 uses
  switch i32 %i.u, label %bb.j [
    i32 3, label %bb.i
    i32 4, label %bb.i
    i32 5, label %bb.i
    i32 7, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0105 = phi i32 [ %i.j, %bb.i ], [ %i.l, %bb.h ] ; 4 uses
  %.0102 = phi i32 [ %i.l, %bb.i ], [ %i.j, %bb.h ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.w = load i32, ptr %i.v, align 4, !tbaa !351  ; 2 uses
  %i.x = and i32 %i.w, 8
  %.not17.i = icmp eq i32 %i.x, 0
  %i.y = select i1 %.not17.i, i32 %i.n, i32 3     ; 3 uses
  switch i32 %i.u, label %getDstSubsamp.exit [
    i32 3, label %bb.k
    i32 4, label %bb.k
    i32 5, label %bb.k
    i32 7, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j, %bb.j
  %switch.tableidx = add i32 %i.y, -1             ; 3 uses
  %i.z = icmp ult i32 %switch.tableidx, 6
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 57, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.z, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %getDstSubsamp.exit

switch.lookup:                                    ; preds = %bb.k
  %i.aa = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.getTransformedSpecs, i64 %i.aa
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %getDstSubsamp.exit

getDstSubsamp.exit:                               ; preds = %bb.k, %switch.lookup, %bb.j
  %.013.i = phi i32 [ %switch.load, %switch.lookup ], [ %i.y, %bb.j ], [ %i.y, %bb.k ] ; 3 uses
  %i.ab = and i32 %i.w, 4
  %.not122 = icmp eq i32 %i.ab, 0
  br i1 %.not122, label %bb.y, label %bb.l

bb.l:                                             ; preds = %getDstSubsamp.exit
  %i.ac = load i32, ptr %4, align 8, !tbaa !354   ; 5 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !355 ; 5 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !356 ; 3 uses
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !357 ; 3 uses
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.ao = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.an, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef %5, ptr noundef nonnull @.str.62) #25 ; 0 uses
  store i32 1, ptr %i.b, align 4, !tbaa !67
  %i.ap = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.aq = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ap, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef %5, ptr noundef nonnull @.str.62) #25 ; 0 uses
  br label %.thread

bb.q:                                             ; preds = %bb.o
  %i.ar = icmp eq i32 %.013.i, -1
  br i1 %i.ar, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.at = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.as, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef %5, ptr noundef nonnull @.str.59) #25 ; 0 uses
  store i32 1, ptr %i.b, align 4, !tbaa !67
  %i.au = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.av = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.au, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef %5, ptr noundef nonnull @.str.59) #25 ; 0 uses
  br label %.thread

bb.s:                                             ; preds = %bb.q
  %i.aw = zext nneg i32 %.013.i to i64            ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr @tjMCUWidth, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3  ; 3 uses
  %i.az = srem i32 %i.ac, %i.ay
  %.not123 = icmp eq i32 %i.az, 0
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr @tjMCUHeight, i64 %i.aw
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3  ; 3 uses
  br i1 %.not123, label %bb.t, label %._crit_edge

bb.t:                                             ; preds = %bb.s
  %i.bc = srem i32 %i.af, %i.bb
  %.not124 = icmp eq i32 %i.bc, 0
  br i1 %.not124, label %bb.u, label %._crit_edge

._crit_edge:                                      ; preds = %bb.s, %bb.t
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.be = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bd, i64 noundef 200, ptr noundef nonnull @.str.74, ptr noundef %5, i32 noundef %i.ay, i32 noundef %i.bb) #25 ; 0 uses
  store i32 1, ptr %i.b, align 4, !tbaa !67
  %i.bf = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.bg = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bf, i64 noundef 200, ptr noundef nonnull @.str.74, ptr noundef %5, i32 noundef %i.ay, i32 noundef %i.bb) #25 ; 0 uses
  br label %.thread

bb.u:                                             ; preds = %bb.t
  %.not125 = icmp samesign ult i32 %i.ac, %.0102
  %.not126 = icmp samesign ult i32 %i.af, %.0105
  %or.cond129 = select i1 %.not125, i1 %.not126, i1 false
  br i1 %or.cond129, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.bi = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bh, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef %5, ptr noundef nonnull @.str.128) #25 ; 0 uses
  store i32 1, ptr %i.b, align 4, !tbaa !67
  %i.bj = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.bk = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bj, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef %5, ptr noundef nonnull @.str.128) #25 ; 0 uses
  br label %.thread

bb.w:                                             ; preds = %bb.u
  %i.bl = icmp eq i32 %i.ai, 0
  %i.bm = sub nuw nsw i32 %.0102, %i.ac
  %i.bn = select i1 %i.bl, i32 %i.bm, i32 %i.ai   ; 2 uses
  %i.bo = icmp eq i32 %i.al, 0
  %i.bp = sub nuw nsw i32 %.0105, %i.af
  %spec.select = select i1 %i.bo, i32 %i.bp, i32 %i.al ; 2 uses
  %i.bq = add nuw nsw i32 %i.bn, %i.ac
  %i.br = icmp samesign ugt i32 %i.bq, %.0102
  %i.bs = add nuw nsw i32 %spec.select, %i.af
  %i.bt = icmp samesign ugt i32 %i.bs, %.0105
  %or.cond136 = select i1 %i.br, i1 true, i1 %i.bt
  br i1 %or.cond136, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.bv = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bu, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef %5, ptr noundef nonnull @.str.128) #25 ; 0 uses
  store i32 1, ptr %i.b, align 4, !tbaa !67
  %i.bw = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.bx = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bw, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef %5, ptr noundef nonnull @.str.128) #25 ; 0 uses
  br label %.thread

bb.y:                                             ; preds = %bb.w, %getDstSubsamp.exit
  %.2107 = phi i32 [ %.0105, %getDstSubsamp.exit ], [ %spec.select, %bb.w ]
  %.2104 = phi i32 [ %.0102, %getDstSubsamp.exit ], [ %i.bn, %bb.w ]
  store i32 %.2104, ptr %1, align 4, !tbaa !3
  store i32 %.2107, ptr %2, align 4, !tbaa !3
  store i32 %.013.i, ptr %3, align 4, !tbaa !3
  br label %.thread

.thread:                                          ; preds = %bb.x, %bb.v, %._crit_edge, %bb.r, %bb.p, %bb.b, %bb.g, %bb.y
  %.2 = phi i32 [ -1, %bb.b ], [ -1, %bb.g ], [ 0, %bb.y ], [ -1, %bb.p ], [ -1, %bb.r ], [ -1, %._crit_edge ], [ -1, %bb.v ], [ -1, %bb.x ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @tj3Transform(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.my_progress_mgr, align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.b = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.5, ptr noundef nonnull @tj3Transform.FUNCTION_NAME) #25 ; 0 uses
  br label %bb.bt

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1828 ; 11 uses
  store i32 0, ptr %i.e, align 4, !tbaa !67
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.g = load i32, ptr %i.f, align 8, !tbaa !64
  %i.h = and i32 %i.g, 3
  %or.cond345.not = icmp eq i32 %i.h, 3
  br i1 %or.cond345.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.j = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Transform.FUNCTION_NAME, ptr noundef nonnull @.str.70) #25 ; 0 uses
  store i32 1, ptr %i.e, align 4, !tbaa !67
  %i.k = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.k, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Transform.FUNCTION_NAME, ptr noundef nonnull @.str.70) #25 ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.m = insertelement <4 x ptr> poison, ptr %1, i64 0
  %i.n = insertelement <4 x ptr> %i.m, ptr %4, i64 1
  %i.o = insertelement <4 x ptr> %i.n, ptr %5, i64 2
  %i.p = insertelement <4 x ptr> %i.o, ptr %6, i64 3
  %i.q = icmp eq <4 x ptr> %i.p, splat (ptr null)
  %i.r = icmp eq i64 %2, 0
  %i.s = icmp slt i32 %3, 1
  %i.t = bitcast <4 x i1> %i.q to i4
  %i.u = icmp ne i4 %i.t, 0
  %op.rdx = or i1 %i.u, %i.s
  %op.rdx456 = or i1 %op.rdx, %i.r
  br i1 %op.rdx456, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.w = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.v, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Transform.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  store i32 1, ptr %i.e, align 4, !tbaa !67
  %i.x = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.y = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.x, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Transform.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1880
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !79
  %.not308 = icmp eq i32 %i.aa, 0
  br i1 %.not308, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  store ptr @my_progress_monitor, ptr %7, align 8, !tbaa !124
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %0, ptr %i.ac, align 8, !tbaa !128
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sink = phi ptr [ %7, %bb.h ], [ null, %bb.g ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 600
  store ptr %.sink, ptr %i.ad, align 8, !tbaa !129
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !86
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 20
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !130
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  store i64 %i.ah, ptr %i.ak, align 8, !tbaa !113
end_hunk_7

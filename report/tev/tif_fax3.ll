Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/tif_fax3?download=true
inline.NumInlined: 37
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tableentry = type { i16, i16, i16 }
%struct._TIFFField = type { i32, i16, i16, i32, i32, i32, i16, i8, i8, ptr, ptr }
%struct.TIFFFaxTabEnt = type { i8, i8, i32 }

@TIFFFaxWhiteCodes = dso_local constant [109 x %struct.tableentry] [%struct.tableentry { i16 8, i16 53, i16 0 }, %struct.tableentry { i16 6, i16 7, i16 1 }, %struct.tableentry { i16 4, i16 7, i16 2 }, %struct.tableentry { i16 4, i16 8, i16 3 }, %struct.tableentry { i16 4, i16 11, i16 4 }, %struct.tableentry { i16 4, i16 12, i16 5 }, %struct.tableentry { i16 4, i16 14, i16 6 }, %struct.tableentry { i16 4, i16 15, i16 7 }, %struct.tableentry { i16 5, i16 19, i16 8 }, %struct.tableentry { i16 5, i16 20, i16 9 }, %struct.tableentry { i16 5, i16 7, i16 10 }, %struct.tableentry { i16 5, i16 8, i16 11 }, %struct.tableentry { i16 6, i16 8, i16 12 }, %struct.tableentry { i16 6, i16 3, i16 13 }, %struct.tableentry { i16 6, i16 52, i16 14 }, %struct.tableentry { i16 6, i16 53, i16 15 }, %struct.tableentry { i16 6, i16 42, i16 16 }, %struct.tableentry { i16 6, i16 43, i16 17 }, %struct.tableentry { i16 7, i16 39, i16 18 }, %struct.tableentry { i16 7, i16 12, i16 19 }, %struct.tableentry { i16 7, i16 8, i16 20 }, %struct.tableentry { i16 7, i16 23, i16 21 }, %struct.tableentry { i16 7, i16 3, i16 22 }, %struct.tableentry { i16 7, i16 4, i16 23 }, %struct.tableentry { i16 7, i16 40, i16 24 }, %struct.tableentry { i16 7, i16 43, i16 25 }, %struct.tableentry { i16 7, i16 19, i16 26 }, %struct.tableentry { i16 7, i16 36, i16 27 }, %struct.tableentry { i16 7, i16 24, i16 28 }, %struct.tableentry { i16 8, i16 2, i16 29 }, %struct.tableentry { i16 8, i16 3, i16 30 }, %struct.tableentry { i16 8, i16 26, i16 31 }, %struct.tableentry { i16 8, i16 27, i16 32 }, %struct.tableentry { i16 8, i16 18, i16 33 }, %struct.tableentry { i16 8, i16 19, i16 34 }, %struct.tableentry { i16 8, i16 20, i16 35 }, %struct.tableentry { i16 8, i16 21, i16 36 }, %struct.tableentry { i16 8, i16 22, i16 37 }, %struct.tableentry { i16 8, i16 23, i16 38 }, %struct.tableentry { i16 8, i16 40, i16 39 }, %struct.tableentry { i16 8, i16 41, i16 40 }, %struct.tableentry { i16 8, i16 42, i16 41 }, %struct.tableentry { i16 8, i16 43, i16 42 }, %struct.tableentry { i16 8, i16 44, i16 43 }, %struct.tableentry { i16 8, i16 45, i16 44 }, %struct.tableentry { i16 8, i16 4, i16 45 }, %struct.tableentry { i16 8, i16 5, i16 46 }, %struct.tableentry { i16 8, i16 10, i16 47 }, %struct.tableentry { i16 8, i16 11, i16 48 }, %struct.tableentry { i16 8, i16 82, i16 49 }, %struct.tableentry { i16 8, i16 83, i16 50 }, %struct.tableentry { i16 8, i16 84, i16 51 }, %struct.tableentry { i16 8, i16 85, i16 52 }, %struct.tableentry { i16 8, i16 36, i16 53 }, %struct.tableentry { i16 8, i16 37, i16 54 }, %struct.tableentry { i16 8, i16 88, i16 55 }, %struct.tableentry { i16 8, i16 89, i16 56 }, %struct.tableentry { i16 8, i16 90, i16 57 }, %struct.tableentry { i16 8, i16 91, i16 58 }, %struct.tableentry { i16 8, i16 74, i16 59 }, %struct.tableentry { i16 8, i16 75, i16 60 }, %struct.tableentry { i16 8, i16 50, i16 61 }, %struct.tableentry { i16 8, i16 51, i16 62 }, %struct.tableentry { i16 8, i16 52, i16 63 }, %struct.tableentry { i16 5, i16 27, i16 64 }, %struct.tableentry { i16 5, i16 18, i16 128 }, %struct.tableentry { i16 6, i16 23, i16 192 }, %struct.tableentry { i16 7, i16 55, i16 256 }, %struct.tableentry { i16 8, i16 54, i16 320 }, %struct.tableentry { i16 8, i16 55, i16 384 }, %struct.tableentry { i16 8, i16 100, i16 448 }, %struct.tableentry { i16 8, i16 101, i16 512 }, %struct.tableentry { i16 8, i16 104, i16 576 }, %struct.tableentry { i16 8, i16 103, i16 640 }, %struct.tableentry { i16 9, i16 204, i16 704 }, %struct.tableentry { i16 9, i16 205, i16 768 }, %struct.tableentry { i16 9, i16 210, i16 832 }, %struct.tableentry { i16 9, i16 211, i16 896 }, %struct.tableentry { i16 9, i16 212, i16 960 }, %struct.tableentry { i16 9, i16 213, i16 1024 }, %struct.tableentry { i16 9, i16 214, i16 1088 }, %struct.tableentry { i16 9, i16 215, i16 1152 }, %struct.tableentry { i16 9, i16 216, i16 1216 }, %struct.tableentry { i16 9, i16 217, i16 1280 }, %struct.tableentry { i16 9, i16 218, i16 1344 }, %struct.tableentry { i16 9, i16 219, i16 1408 }, %struct.tableentry { i16 9, i16 152, i16 1472 }, %struct.tableentry { i16 9, i16 153, i16 1536 }, %struct.tableentry { i16 9, i16 154, i16 1600 }, %struct.tableentry { i16 6, i16 24, i16 1664 }, %struct.tableentry { i16 9, i16 155, i16 1728 }, %struct.tableentry { i16 11, i16 8, i16 1792 }, %struct.tableentry { i16 11, i16 12, i16 1856 }, %struct.tableentry { i16 11, i16 13, i16 1920 }, %struct.tableentry { i16 12, i16 18, i16 1984 }, %struct.tableentry { i16 12, i16 19, i16 2048 }, %struct.tableentry { i16 12, i16 20, i16 2112 }, %struct.tableentry { i16 12, i16 21, i16 2176 }, %struct.tableentry { i16 12, i16 22, i16 2240 }, %struct.tableentry { i16 12, i16 23, i16 2304 }, %struct.tableentry { i16 12, i16 28, i16 2368 }, %struct.tableentry { i16 12, i16 29, i16 2432 }, %struct.tableentry { i16 12, i16 30, i16 2496 }, %struct.tableentry { i16 12, i16 31, i16 2560 }, %struct.tableentry { i16 12, i16 1, i16 -1 }, %struct.tableentry { i16 9, i16 1, i16 -2 }, %struct.tableentry { i16 10, i16 1, i16 -2 }, %struct.tableentry { i16 11, i16 1, i16 -2 }, %struct.tableentry { i16 12, i16 0, i16 -2 }], align 16
@TIFFFaxBlackCodes = dso_local constant [109 x %struct.tableentry] [%struct.tableentry { i16 10, i16 55, i16 0 }, %struct.tableentry { i16 3, i16 2, i16 1 }, %struct.tableentry { i16 2, i16 3, i16 2 }, %struct.tableentry { i16 2, i16 2, i16 3 }, %struct.tableentry { i16 3, i16 3, i16 4 }, %struct.tableentry { i16 4, i16 3, i16 5 }, %struct.tableentry { i16 4, i16 2, i16 6 }, %struct.tableentry { i16 5, i16 3, i16 7 }, %struct.tableentry { i16 6, i16 5, i16 8 }, %struct.tableentry { i16 6, i16 4, i16 9 }, %struct.tableentry { i16 7, i16 4, i16 10 }, %struct.tableentry { i16 7, i16 5, i16 11 }, %struct.tableentry { i16 7, i16 7, i16 12 }, %struct.tableentry { i16 8, i16 4, i16 13 }, %struct.tableentry { i16 8, i16 7, i16 14 }, %struct.tableentry { i16 9, i16 24, i16 15 }, %struct.tableentry { i16 10, i16 23, i16 16 }, %struct.tableentry { i16 10, i16 24, i16 17 }, %struct.tableentry { i16 10, i16 8, i16 18 }, %struct.tableentry { i16 11, i16 103, i16 19 }, %struct.tableentry { i16 11, i16 104, i16 20 }, %struct.tableentry { i16 11, i16 108, i16 21 }, %struct.tableentry { i16 11, i16 55, i16 22 }, %struct.tableentry { i16 11, i16 40, i16 23 }, %struct.tableentry { i16 11, i16 23, i16 24 }, %struct.tableentry { i16 11, i16 24, i16 25 }, %struct.tableentry { i16 12, i16 202, i16 26 }, %struct.tableentry { i16 12, i16 203, i16 27 }, %struct.tableentry { i16 12, i16 204, i16 28 }, %struct.tableentry { i16 12, i16 205, i16 29 }, %struct.tableentry { i16 12, i16 104, i16 30 }, %struct.tableentry { i16 12, i16 105, i16 31 }, %struct.tableentry { i16 12, i16 106, i16 32 }, %struct.tableentry { i16 12, i16 107, i16 33 }, %struct.tableentry { i16 12, i16 210, i16 34 }, %struct.tableentry { i16 12, i16 211, i16 35 }, %struct.tableentry { i16 12, i16 212, i16 36 }, %struct.tableentry { i16 12, i16 213, i16 37 }, %struct.tableentry { i16 12, i16 214, i16 38 }, %struct.tableentry { i16 12, i16 215, i16 39 }, %struct.tableentry { i16 12, i16 108, i16 40 }, %struct.tableentry { i16 12, i16 109, i16 41 }, %struct.tableentry { i16 12, i16 218, i16 42 }, %struct.tableentry { i16 12, i16 219, i16 43 }, %struct.tableentry { i16 12, i16 84, i16 44 }, %struct.tableentry { i16 12, i16 85, i16 45 }, %struct.tableentry { i16 12, i16 86, i16 46 }, %struct.tableentry { i16 12, i16 87, i16 47 }, %struct.tableentry { i16 12, i16 100, i16 48 }, %struct.tableentry { i16 12, i16 101, i16 49 }, %struct.tableentry { i16 12, i16 82, i16 50 }, %struct.tableentry { i16 12, i16 83, i16 51 }, %struct.tableentry { i16 12, i16 36, i16 52 }, %struct.tableentry { i16 12, i16 55, i16 53 }, %struct.tableentry { i16 12, i16 56, i16 54 }, %struct.tableentry { i16 12, i16 39, i16 55 }, %struct.tableentry { i16 12, i16 40, i16 56 }, %struct.tableentry { i16 12, i16 88, i16 57 }, %struct.tableentry { i16 12, i16 89, i16 58 }, %struct.tableentry { i16 12, i16 43, i16 59 }, %struct.tableentry { i16 12, i16 44, i16 60 }, %struct.tableentry { i16 12, i16 90, i16 61 }, %struct.tableentry { i16 12, i16 102, i16 62 }, %struct.tableentry { i16 12, i16 103, i16 63 }, %struct.tableentry { i16 10, i16 15, i16 64 }, %struct.tableentry { i16 12, i16 200, i16 128 }, %struct.tableentry { i16 12, i16 201, i16 192 }, %struct.tableentry { i16 12, i16 91, i16 256 }, %struct.tableentry { i16 12, i16 51, i16 320 }, %struct.tableentry { i16 12, i16 52, i16 384 }, %struct.tableentry { i16 12, i16 53, i16 448 }, %struct.tableentry { i16 13, i16 108, i16 512 }, %struct.tableentry { i16 13, i16 109, i16 576 }, %struct.tableentry { i16 13, i16 74, i16 640 }, %struct.tableentry { i16 13, i16 75, i16 704 }, %struct.tableentry { i16 13, i16 76, i16 768 }, %struct.tableentry { i16 13, i16 77, i16 832 }, %struct.tableentry { i16 13, i16 114, i16 896 }, %struct.tableentry { i16 13, i16 115, i16 960 }, %struct.tableentry { i16 13, i16 116, i16 1024 }, %struct.tableentry { i16 13, i16 117, i16 1088 }, %struct.tableentry { i16 13, i16 118, i16 1152 }, %struct.tableentry { i16 13, i16 119, i16 1216 }, %struct.tableentry { i16 13, i16 82, i16 1280 }, %struct.tableentry { i16 13, i16 83, i16 1344 }, %struct.tableentry { i16 13, i16 84, i16 1408 }, %struct.tableentry { i16 13, i16 85, i16 1472 }, %struct.tableentry { i16 13, i16 90, i16 1536 }, %struct.tableentry { i16 13, i16 91, i16 1600 }, %struct.tableentry { i16 13, i16 100, i16 1664 }, %struct.tableentry { i16 13, i16 101, i16 1728 }, %struct.tableentry { i16 11, i16 8, i16 1792 }, %struct.tableentry { i16 11, i16 12, i16 1856 }, %struct.tableentry { i16 11, i16 13, i16 1920 }, %struct.tableentry { i16 12, i16 18, i16 1984 }, %struct.tableentry { i16 12, i16 19, i16 2048 }, %struct.tableentry { i16 12, i16 20, i16 2112 }, %struct.tableentry { i16 12, i16 21, i16 2176 }, %struct.tableentry { i16 12, i16 22, i16 2240 }, %struct.tableentry { i16 12, i16 23, i16 2304 }, %struct.tableentry { i16 12, i16 28, i16 2368 }, %struct.tableentry { i16 12, i16 29, i16 2432 }, %struct.tableentry { i16 12, i16 30, i16 2496 }, %struct.tableentry { i16 12, i16 31, i16 2560 }, %struct.tableentry { i16 12, i16 1, i16 -1 }, %struct.tableentry { i16 9, i16 1, i16 -2 }, %struct.tableentry { i16 10, i16 1, i16 -2 }, %struct.tableentry { i16 11, i16 1, i16 -2 }, %struct.tableentry { i16 12, i16 0, i16 -2 }], align 16
@_TIFFFax3fillruns._fillmasks = internal unnamed_addr constant [9 x i8] c"\00\80\C0\E0\F0\F8\FC\FE\FF", align 1
@fax3Fields = internal constant [1 x %struct._TIFFField] [%struct._TIFFField { i32 292, i16 1, i16 1, i32 4, i32 0, i32 6, i16 73, i8 0, i8 0, ptr @.str.48, ptr null }], align 16
@.str = private unnamed_addr constant [18 x i8] c"TIFFInitCCITTFax3\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Merging CCITT Fax 3 codec-specific tags failed\00", align 1
@fax4Fields = internal constant [1 x %struct._TIFFField] [%struct._TIFFField { i32 293, i16 1, i16 1, i32 4, i32 0, i32 6, i16 73, i8 0, i8 0, ptr @.str.49, ptr null }], align 16
@.str.2 = private unnamed_addr constant [18 x i8] c"TIFFInitCCITTFax4\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Merging CCITT Fax 4 codec-specific tags failed\00", align 1
@faxFields = internal constant [5 x %struct._TIFFField] [%struct._TIFFField { i32 65536, i16 0, i16 0, i32 0, i32 0, i32 13, i16 0, i8 0, i8 0, ptr @.str.7, ptr null }, %struct._TIFFField { i32 65540, i16 0, i16 0, i32 0, i32 0, i32 51, i16 0, i8 0, i8 0, ptr @.str.8, ptr null }, %struct._TIFFField { i32 326, i16 1, i16 1, i32 4, i32 0, i32 6, i16 66, i8 1, i8 0, ptr @.str.9, ptr null }, %struct._TIFFField { i32 327, i16 1, i16 1, i32 3, i32 0, i32 4, i16 67, i8 1, i8 0, ptr @.str.10, ptr null }, %struct._TIFFField { i32 328, i16 1, i16 1, i32 4, i32 0, i32 6, i16 68, i8 1, i8 0, ptr @.str.11, ptr null }], align 16
@.str.4 = private constant [14 x i8] c"InitCCITTFax3\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"Merging common CCITT Fax codec-specific tags failed\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"No space for state block\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"FaxMode\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"FaxFillFunc\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"BadFaxLines\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"CleanFaxData\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"ConsecutiveBadFaxLines\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"  Group 4 Options:\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"%suncompressed data\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"  Group 3 Options:\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"%s2-d encoding\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"%sEOL padding\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c" (%u = 0x%x)\0A\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"  Fax Data:\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c" clean\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c" receiver regenerated\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c" uncorrected errors\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"  Bad Fax Lines: %u\0A\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"  Consecutive Bad Fax Lines: %u\0A\00", align 1
@Fax3SetupState.module = internal constant [15 x i8] c"Fax3SetupState\00", align 1
@.str.26 = private unnamed_addr constant [54 x i8] c"Bits/sample must be 1 for Group 3/4 encoding/decoding\00", align 1
@.str.27 = private unnamed_addr constant [106 x i8] c"Samples/pixel shall be 1 for Group 3/4 encoding/decoding, or PlanarConfiguration must be set to Separate.\00", align 1
@.str.28 = private unnamed_addr constant [65 x i8] c"Inconsistent number of bytes per row : rowbytes=%ld rowpixels=%u\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"Row pixels integer overflow (rowpixels %u)\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"for Group 3/4 run arrays\00", align 1
@.str.31 = private unnamed_addr constant [38 x i8] c"No space for Group 3/4 reference line\00", align 1
@Fax3Decode2D.module = internal constant [13 x i8] c"Fax3Decode2D\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"Fractional scanlines cannot be read\00", align 1
@TIFFFaxWhiteTable = external local_unnamed_addr constant [0 x %struct.TIFFFaxTabEnt], align 4
@.str.33 = private unnamed_addr constant [36 x i8] c"Buffer overflow at line %d of %s %u\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"tile\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"strip\00", align 1
@TIFFFaxBlackTable = external local_unnamed_addr constant [0 x %struct.TIFFFaxTabEnt], align 4
@TIFFFaxMainTable = external local_unnamed_addr constant [0 x %struct.TIFFFaxTabEnt], align 4
@.str.36 = private unnamed_addr constant [68 x i8] c"End of file (EOF) has already been reached %d times within that %s.\00", align 1
@.str.37 = private unnamed_addr constant [71 x i8] c"Bad line length (EOL) has already been reached %d times within that %s\00", align 1
@.str.38 = private unnamed_addr constant [76 x i8] c"Bad code word (unexpected) has already been reached %d times within that %s\00", align 1
@.str.39 = private unnamed_addr constant [98 x i8] c"Try to decode (read) fax Group 3 data without EOL at line %u of %s %u (x %u). Please check result\00", align 1
@.str.40 = private unnamed_addr constant [41 x i8] c"Bad code word at line %u of %s %u (x %u)\00", align 1
@.str.41 = private unnamed_addr constant [41 x i8] c"Premature EOF at line %u of %s %u (x %u)\00", align 1
@.str.42 = private unnamed_addr constant [45 x i8] c"%s at line %u of %s %u (got %u, expected %u)\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"Premature EOL\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"Line length mismatch\00", align 1
@.str.45 = private unnamed_addr constant [61 x i8] c"Uncompressed data (not supported) at line %u of %s %u (x %u)\00", align 1
@Fax3Decode1D.module = internal constant [13 x i8] c"Fax3Decode1D\00", align 1
@Fax3Encode.module = internal constant [11 x i8] c"Fax3Encode\00", align 1
@.str.46 = private unnamed_addr constant [39 x i8] c"Fractional scanlines cannot be written\00", align 1
@_msbmask = internal unnamed_addr constant [9 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255], align 16
@zeroruns = internal unnamed_addr constant <{ [128 x i8], [128 x i8] }> <{ [128 x i8] c"\08\07\06\06\05\05\05\05\04\04\04\04\04\04\04\04\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [128 x i8] zeroinitializer }>, align 16
@oneruns = internal unnamed_addr constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\06\06\07\08", align 16
@vcodes = internal unnamed_addr constant [7 x %struct.tableentry] [%struct.tableentry { i16 7, i16 3, i16 0 }, %struct.tableentry { i16 6, i16 3, i16 0 }, %struct.tableentry { i16 3, i16 3, i16 0 }, %struct.tableentry { i16 1, i16 1, i16 0 }, %struct.tableentry { i16 3, i16 2, i16 0 }, %struct.tableentry { i16 6, i16 2, i16 0 }, %struct.tableentry { i16 7, i16 2, i16 0 }], align 16
@.str.48 = private unnamed_addr constant [14 x i8] c"Group3Options\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"Group4Options\00", align 1
@Fax4Decode.module = internal constant [11 x i8] c"Fax4Decode\00", align 1
@.str.50 = private unnamed_addr constant [62 x i8] c"Buffer overrun detected : %ld bytes available, %d bits needed\00", align 1
@Fax4Encode.module = internal constant [11 x i8] c"Fax4Encode\00", align 1
@Fax3DecodeRLE.module = internal constant [14 x i8] c"Fax3DecodeRLE\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_TIFFFax3fillruns(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = and i64 %i.c, 4
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %2, align 4, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0126 = phi ptr [ %i.e, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %i.f = icmp ult ptr %1, %.0126
  br i1 %i.f, label %.lr.ph177, label %._crit_edge178

.lr.ph177:                                        ; preds = %bb.c, %bb.aa
  %.0116175 = phi i32 [ %.2118, %bb.aa ], [ 0, %bb.c ] ; 6 uses
  %.0125174 = phi ptr [ %i.cy, %bb.aa ], [ %1, %bb.c ] ; 5 uses
  %i.g = load i32, ptr %.0125174, align 4, !tbaa !9 ; 3 uses
  %i.h = add i32 %i.g, %.0116175
  %i.i = icmp ugt i32 %i.h, %3
  %i.j = icmp ugt i32 %i.g, %3
  %or.cond = or i1 %i.j, %i.i
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph177
  %i.k = sub i32 %3, %.0116175                    ; 2 uses
  store i32 %i.k, ptr %.0125174, align 4, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph177, %bb.d
  %.0112 = phi i32 [ %i.k, %bb.d ], [ %i.g, %.lr.ph177 ] ; 5 uses
  %.not136 = icmp eq i32 %.0112, 0
  br i1 %.not136, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = lshr i32 %.0116175, 3
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 6 uses
  %i.o = and i32 %.0116175, 7                     ; 4 uses
  %i.p = sub nuw nsw i32 8, %i.o                  ; 2 uses
  %i.q = icmp ugt i32 %.0112, %i.p
  br i1 %i.q, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %.not137 = icmp eq i32 %i.o, 0
  br i1 %.not137, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = lshr exact i32 65280, %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.t = load i8, ptr %i.n, align 1, !tbaa !10
  %i.u = trunc i32 %i.r to i8
  %i.v = and i8 %i.t, %i.u
  store i8 %i.v, ptr %i.n, align 1, !tbaa !10
  %i.w = sub nuw i32 %.0112, %i.p
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0119 = phi ptr [ %i.s, %bb.h ], [ %i.n, %bb.g ] ; 5 uses
  %.1113 = phi i32 [ %i.w, %bb.h ], [ %.0112, %bb.g ] ; 4 uses
  %i.x = lshr i32 %.1113, 3                       ; 4 uses
  %.not138 = icmp eq i32 %i.x, 0
  br i1 %.not138, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = icmp ugt i32 %.1113, 127
  br i1 %i.y, label %.preheader156, label %.lr.ph163.preheader

.preheader156:                                    ; preds = %bb.j
  %i.z = ptrtoint ptr %.0119 to i64
  %i.aa = and i64 %i.z, 7
  %.not140158 = icmp eq i64 %i.aa, 0
  br i1 %.not140158, label %.loopexit155, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader156, %.lr.ph
  %.0110160 = phi i32 [ %i.ac, %.lr.ph ], [ %i.x, %.preheader156 ]
  %.1120159 = phi ptr [ %i.ab, %.lr.ph ], [ %.0119, %.preheader156 ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.1120159, i64 1 ; 3 uses
  store i8 0, ptr %.1120159, align 1, !tbaa !10
  %i.ac = add nsw i32 %.0110160, -1               ; 3 uses
  %.not139 = icmp eq i32 %i.ac, 0
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = and i64 %i.ad, 7
  %.not140 = icmp eq i64 %i.ae, 0
  %or.cond151 = select i1 %.not139, i1 true, i1 %.not140
  br i1 %or.cond151, label %.loopexit155, label %.lr.ph

.loopexit155:                                     ; preds = %.lr.ph, %.preheader156
  %.1120.lcssa = phi ptr [ %.0119, %.preheader156 ], [ %i.ab, %.lr.ph ] ; 2 uses
  %.0110.lcssa = phi i32 [ %i.x, %.preheader156 ], [ %i.ac, %.lr.ph ] ; 2 uses
  %i.af = lshr i32 %.0110.lcssa, 3
  %i.ag = add nsw i32 %i.af, -1
  %i.ah = zext i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 3                ; 2 uses
  %i.aj = add nuw nsw i64 %i.ai, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.1120.lcssa, i8 0, i64 %i.aj, i1 false), !tbaa !12
  %i.ak = and i32 %.0110.lcssa, 7                 ; 2 uses
  %scevgep = getelementptr i8, ptr %.1120.lcssa, i64 8
  %scevgep186 = getelementptr i8, ptr %scevgep, i64 %i.ai ; 2 uses
  %.not179 = icmp eq i32 %i.ak, 0
  br i1 %.not179, label %._crit_edge, label %.lr.ph163.preheader

.lr.ph163.preheader:                              ; preds = %bb.j, %.loopexit155
  %.1111207 = phi i32 [ %i.ak, %.loopexit155 ], [ %i.x, %bb.j ]
  %.2121206 = phi ptr [ %scevgep186, %.loopexit155 ], [ %.0119, %bb.j ] ; 2 uses
  %i.al = zext nneg i32 %.1111207 to i64          ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.2121206, i8 0, i64 %i.al, i1 false), !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit155, %.lr.ph163.preheader
  %.2121205 = phi ptr [ %.2121206, %.lr.ph163.preheader ], [ %scevgep186, %.loopexit155 ]
  %.pre-phi192 = phi i64 [ %i.al, %.lr.ph163.preheader ], [ 0, %.loopexit155 ]
  %i.am = getelementptr inbounds nuw i8, ptr %.2121205, i64 %.pre-phi192
  %i.an = and i32 %.1113, 7
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.i
  %.3122 = phi ptr [ %i.am, %._crit_edge ], [ %.0119, %bb.i ] ; 2 uses
  %.2114 = phi i32 [ %i.an, %._crit_edge ], [ %.1113, %bb.i ] ; 2 uses
  %.not142 = icmp eq i32 %.2114, 0
  br i1 %.not142, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = lshr i32 255, %.2114
  %i.ap = load i8, ptr %.3122, align 1, !tbaa !10
  %i.aq = trunc nuw nsw i32 %i.ao to i8
  %i.ar = and i8 %i.ap, %i.aq
  store i8 %i.ar, ptr %.3122, align 1, !tbaa !10
  br label %bb.n

bb.m:                                             ; preds = %bb.f
  %i.as = zext nneg i32 %.0112 to i64
  %i.at = getelementptr inbounds nuw i8, ptr @_TIFFFax3fillruns._fillmasks, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !10
  %i.av = zext i8 %i.au to i32
  %i.aw = lshr i32 %i.av, %i.o
  %i.ax = load i8, ptr %i.n, align 1, !tbaa !10
  %i.ay = trunc nuw i32 %i.aw to i8
  %i.az = xor i8 %i.ay, -1
  %i.ba = and i8 %i.ax, %i.az
  store i8 %i.ba, ptr %i.n, align 1, !tbaa !10
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m
  %i.bb = load i32, ptr %.0125174, align 4, !tbaa !9
  %i.bc = add i32 %i.bb, %.0116175
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.e
  %.1117 = phi i32 [ %i.bc, %bb.n ], [ %.0116175, %bb.e ] ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0125174, i64 4 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !9  ; 3 uses
  %i.bf = add i32 %i.be, %.1117
  %i.bg = icmp ugt i32 %i.bf, %3
  %i.bh = icmp ugt i32 %i.be, %3
  %or.cond152 = or i1 %i.bh, %i.bg
  br i1 %or.cond152, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bi = sub i32 %3, %.1117                      ; 2 uses
  store i32 %i.bi, ptr %i.bd, align 4, !tbaa !9
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.3115 = phi i32 [ %i.bi, %bb.p ], [ %i.be, %bb.o ] ; 5 uses
  %.not143 = icmp eq i32 %.3115, 0
  br i1 %.not143, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = lshr i32 %.1117, 3
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %i.bk ; 6 uses
  %i.bm = and i32 %.1117, 7                       ; 4 uses
  %i.bn = sub nuw nsw i32 8, %i.bm                ; 2 uses
  %i.bo = icmp ugt i32 %.3115, %i.bn
  br i1 %i.bo, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  %.not144 = icmp eq i32 %i.bm, 0
  br i1 %.not144, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bp = lshr i32 255, %i.bm
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
end_hunk_0
begin_hunk_1_@Fax3PostEncode:bb.a
  store i32 8, ptr %i.c, align 4, !tbaa !56
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.d ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @Fax3Encode(ptr noundef %0, ptr noundef %1, i64 noundef %2, i16 zeroext %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !51
  %i.e = srem i64 %2, %i.d
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.f = icmp sgt i64 %2, 0
  br i1 %i.f, label %.lr.ph, label %Fax3PutEOL.exit.thread

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 13 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @Fax3Encode.module, ptr noundef nonnull @.str.46) #8
  br label %Fax3PutEOL.exit.thread

bb.c:                                             ; preds = %.lr.ph, %bb.ad
  %.03244 = phi i64 [ %2, %.lr.ph ], [ %i.dg, %bb.ad ]
  %.03343 = phi ptr [ %1, %.lr.ph ], [ %i.df, %bb.ad ] ; 5 uses
  %i.q = load i32, ptr %i.g, align 4, !tbaa !70
  %i.r = and i32 %i.q, 2
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !31   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 76 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !56   ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !55   ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !76   ; 3 uses
  %i.aa = and i32 %i.z, 4
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not95.i = icmp eq i32 %i.v, 4
  br i1 %.not95.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = icmp sgt i32 %i.v, 3                    ; 2 uses
  %.076.v.i = select i1 %i.ab, i32 -4, i32 4
  %.076.i = add nsw i32 %.076.v.i, %i.v           ; 2 uses
  %i.ac = icmp ugt i32 %.076.i, %i.v
  br i1 %i.ac, label %.lr.ph.i, label %._crit_edge.i._crit_edge

.lr.ph.i:                                         ; preds = %bb.f
  %i.ad = trunc i32 %i.x to i8
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !59
  %i.af = load i64, ptr %i.i, align 8, !tbaa !69
  %.not98.peel.i = icmp slt i64 %i.ae, %i.af
  br i1 %.not98.peel.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.ag = tail call i32 @TIFFFlushData1(ptr noundef nonnull %0) #8
  %.not99.peel.i = icmp eq i32 %i.ag, 0
  br i1 %.not99.peel.i, label %Fax3PutEOL.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %i.ah = load ptr, ptr %i.j, align 8, !tbaa !58  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store ptr %i.ai, ptr %i.j, align 8, !tbaa !58
  store i8 %i.ad, ptr %i.ah, align 1, !tbaa !10
  %i.aj = load i64, ptr %i.h, align 8, !tbaa !59
  %i.ak = add nsw i64 %i.aj, 1                    ; 2 uses
  store i64 %i.ak, ptr %i.h, align 8, !tbaa !59
  br i1 %i.ab, label %.peel.next.i, label %._crit_edge.i._crit_edge

.peel.next.i:                                     ; preds = %bb.h, %bb.j
  %i.al = phi i64 [ %i.as, %bb.j ], [ %i.ak, %bb.h ]
  %.077114.i = phi i32 [ %i.am, %bb.j ], [ -4, %bb.h ]
  %i.am = add i32 %.077114.i, -8                  ; 2 uses
  %i.an = load i64, ptr %i.i, align 8, !tbaa !69
  %.not98.i = icmp slt i64 %i.al, %i.an
  br i1 %.not98.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.peel.next.i
  %i.ao = tail call i32 @TIFFFlushData1(ptr noundef nonnull %0) #8
  %.not99.i = icmp eq i32 %i.ao, 0
  br i1 %.not99.i, label %Fax3PutEOL.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %.peel.next.i
  %i.ap = load ptr, ptr %i.j, align 8, !tbaa !58  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store ptr %i.aq, ptr %i.j, align 8, !tbaa !58
  store i8 0, ptr %i.ap, align 1, !tbaa !10
  %i.ar = load i64, ptr %i.h, align 8, !tbaa !59
  %i.as = add nsw i64 %i.ar, 1                    ; 2 uses
  store i64 %i.as, ptr %i.h, align 8, !tbaa !59
  %i.at = icmp ugt i32 %i.am, 8
  br i1 %i.at, label %.peel.next.i, label %._crit_edge.i._crit_edge, !llvm.loop !113

._crit_edge.i._crit_edge:                         ; preds = %bb.j, %bb.f, %bb.h
  %.082.lcssa.i = phi i32 [ %i.v, %bb.f ], [ 8, %bb.h ], [ 8, %bb.j ]
  %.080.lcssa.i = phi i32 [ %i.x, %bb.f ], [ 0, %bb.h ], [ 0, %bb.j ]
  %.077.lcssa.i = phi i32 [ %.076.i, %bb.f ], [ 4, %bb.h ], [ 4, %bb.j ]
  %i.au = sub nuw i32 %.082.lcssa.i, %.077.lcssa.i
  %.pre = load i32, ptr %i.y, align 8, !tbaa !76
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i._crit_edge, %bb.e, %bb.d
  %i.av = phi i32 [ %i.z, %bb.d ], [ %.pre, %._crit_edge.i._crit_edge ], [ %i.z, %bb.e ]
  %.385.i = phi i32 [ %i.v, %bb.d ], [ %i.au, %._crit_edge.i._crit_edge ], [ 4, %bb.e ] ; 3 uses
  %.3.i = phi i32 [ %i.x, %bb.d ], [ %.080.lcssa.i, %._crit_edge.i._crit_edge ], [ %i.x, %bb.e ] ; 2 uses
  %i.aw = and i32 %i.av, 1
  %.not100.i = icmp eq i32 %i.aw, 0
  br i1 %.not100.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !77
  %i.az = icmp eq i32 %i.ay, 0
  %i.ba = zext i1 %i.az to i32
  %i.bb = or disjoint i32 %i.ba, 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.079.i = phi i32 [ %i.bb, %bb.l ], [ 1, %bb.k ] ; 3 uses
  %.078.i = phi i32 [ 13, %bb.l ], [ 12, %bb.k ]  ; 3 uses
  %i.bc = icmp ugt i32 %.078.i, %.385.i
  br i1 %i.bc, label %.lr.ph121.i, label %._crit_edge122.i

.lr.ph121.i:                                      ; preds = %bb.m
  %i.bd = sub nuw nsw i32 %.078.i, %.385.i        ; 4 uses
  %i.be = lshr i32 %.079.i, %i.bd
  %i.bf = or i32 %i.be, %.3.i
  %i.bg = load i64, ptr %i.h, align 8, !tbaa !59
  %i.bh = load i64, ptr %i.i, align 8, !tbaa !69
  %.not103.peel.i = icmp slt i64 %i.bg, %i.bh
  br i1 %.not103.peel.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph121.i
  %i.bi = tail call i32 @TIFFFlushData1(ptr noundef nonnull %0) #8
  %.not104.peel.i = icmp eq i32 %i.bi, 0
  br i1 %.not104.peel.i, label %Fax3PutEOL.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph121.i
  %i.bj = trunc i32 %i.bf to i8
  %i.bk = load ptr, ptr %i.j, align 8, !tbaa !58  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  store ptr %i.bl, ptr %i.j, align 8, !tbaa !58
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !10
  %i.bm = load i64, ptr %i.h, align 8, !tbaa !59
  %i.bn = add nsw i64 %i.bm, 1                    ; 2 uses
  store i64 %i.bn, ptr %i.h, align 8, !tbaa !59
  %i.bo = icmp samesign ugt i32 %i.bd, 8
  br i1 %i.bo, label %.peel.next131.i, label %._crit_edge122.i

.peel.next131.i:                                  ; preds = %bb.o
  %i.bp = add nsw i32 %i.bd, -8                   ; 2 uses
  %i.bq = lshr i32 %.079.i, %i.bp
  %i.br = load i64, ptr %i.i, align 8, !tbaa !69
  %.not103.i = icmp slt i64 %i.bn, %i.br
  br i1 %.not103.i, label %._crit_edge122.loopexit.loopexit.i, label %bb.p

bb.p:                                             ; preds = %.peel.next131.i
  %i.bs = tail call i32 @TIFFFlushData1(ptr noundef nonnull %0) #8
  %.not104.i = icmp eq i32 %i.bs, 0
  br i1 %.not104.i, label %Fax3PutEOL.exit.thread, label %._crit_edge122.loopexit.loopexit.i

._crit_edge122.loopexit.loopexit.i:               ; preds = %bb.p, %.peel.next131.i
  %i.bt = trunc nuw nsw i32 %i.bq to i8
  %i.bu = load ptr, ptr %i.j, align 8, !tbaa !58  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store ptr %i.bv, ptr %i.j, align 8, !tbaa !58
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !10
  %i.bw = load i64, ptr %i.h, align 8, !tbaa !59
  %i.bx = add nsw i64 %i.bw, 1
  store i64 %i.bx, ptr %i.h, align 8, !tbaa !59
  br label %._crit_edge122.i

._crit_edge122.i:                                 ; preds = %._crit_edge122.loopexit.loopexit.i, %bb.o, %bb.m
  %.486.lcssa.i = phi i32 [ %.385.i, %bb.m ], [ 8, %._crit_edge122.loopexit.loopexit.i ], [ 8, %bb.o ]
  %.4.lcssa.i = phi i32 [ %.3.i, %bb.m ], [ 0, %._crit_edge122.loopexit.loopexit.i ], [ 0, %bb.o ]
  %.1.lcssa.i = phi i32 [ %.078.i, %bb.m ], [ %i.bp, %._crit_edge122.loopexit.loopexit.i ], [ %i.bd, %bb.o ] ; 2 uses
  %4 = zext nneg i32 %.1.lcssa.i to i64
  %5 = getelementptr inbounds nuw [4 x i8], ptr @_msbmask, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !9
  %i.by = and i32 %6, %.079.i
  %i.bz = sub nuw i32 %.486.lcssa.i, %.1.lcssa.i  ; 3 uses
  %i.ca = shl i32 %i.by, %i.bz
  %i.cb = or i32 %i.ca, %.4.lcssa.i               ; 2 uses
  %i.cc = icmp eq i32 %i.bz, 0
  br i1 %i.cc, label %bb.q, label %Fax3PutEOL.exit

bb.q:                                             ; preds = %._crit_edge122.i
  %i.cd = load i64, ptr %i.h, align 8, !tbaa !59
  %i.ce = load i64, ptr %i.i, align 8, !tbaa !69
  %.not101.i = icmp slt i64 %i.cd, %i.ce
  br i1 %.not101.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = tail call i32 @TIFFFlushData1(ptr noundef nonnull %0) #8
  %.not102.i = icmp eq i32 %i.cf, 0
  br i1 %.not102.i, label %Fax3PutEOL.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cg = trunc i32 %i.cb to i8
  %i.ch = load ptr, ptr %i.j, align 8, !tbaa !58  ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  store ptr %i.ci, ptr %i.j, align 8, !tbaa !58
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !10
  %i.cj = load i64, ptr %i.h, align 8, !tbaa !59
  %i.ck = add nsw i64 %i.cj, 1
  store i64 %i.ck, ptr %i.h, align 8, !tbaa !59
  br label %Fax3PutEOL.exit

Fax3PutEOL.exit:                                  ; preds = %._crit_edge122.i, %bb.s
  %.587.i = phi i32 [ 8, %bb.s ], [ %i.bz, %._crit_edge122.i ]
  %.5.i = phi i32 [ 0, %bb.s ], [ %i.cb, %._crit_edge122.i ]
  store i32 %.5.i, ptr %i.w, align 8, !tbaa !55
  store i32 %.587.i, ptr %i.u, align 4, !tbaa !56
  br label %bb.t

bb.t:                                             ; preds = %Fax3PutEOL.exit, %bb.c
  %i.cl = load i32, ptr %i.k, align 8, !tbaa !76
  %i.cm = and i32 %i.cl, 1
  %.not35 = icmp eq i32 %i.cm, 0
  br i1 %.not35, label %bb.ac, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = load i32, ptr %i.l, align 8, !tbaa !77
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cp = load i32, ptr %i.n, align 8, !tbaa !49
  %i.cq = tail call fastcc i32 @Fax3Encode1DRow(ptr noundef %0, ptr noundef %.03343, i32 noundef %i.cp)
  %.not38 = icmp eq i32 %i.cq, 0
  br i1 %.not38, label %Fax3PutEOL.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 1, ptr %i.l, align 8, !tbaa !77
  %.pre63 = load i32, ptr %i.o, align 8, !tbaa !79
  br label %bb.z

bb.x:                                             ; preds = %bb.u
  %i.cr = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.cs = load i32, ptr %i.n, align 8, !tbaa !49
  %i.ct = tail call fastcc i32 @Fax3Encode2DRow(ptr noundef %0, ptr noundef %.03343, ptr noundef %i.cr, i32 noundef %i.cs)
  %.not37 = icmp eq i32 %i.ct, 0
  br i1 %.not37, label %Fax3PutEOL.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cu = load i32, ptr %i.o, align 8, !tbaa !79
  %i.cv = add nsw i32 %i.cu, -1                   ; 2 uses
  store i32 %i.cv, ptr %i.o, align 8, !tbaa !79
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %i.cw = phi i32 [ %i.cv, %bb.y ], [ %.pre63, %bb.w ]
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.l, align 8, !tbaa !77
  %i.cy = load i32, ptr %i.p, align 4, !tbaa !78
  %i.cz = add nsw i32 %i.cy, -1
  store i32 %i.cz, ptr %i.o, align 8, !tbaa !79
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %i.da = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.db = load i64, ptr %i.c, align 8, !tbaa !51
  tail call void @_TIFFmemcpy(ptr noundef %i.da, ptr noundef %.03343, i64 noundef %i.db) #8
  br label %bb.ad

bb.ac:                                            ; preds = %bb.t
  %i.dc = load i32, ptr %i.n, align 8, !tbaa !49
  %i.dd = tail call fastcc i32 @Fax3Encode1DRow(ptr noundef %0, ptr noundef %.03343, i32 noundef %i.dc)
  %.not36 = icmp eq i32 %i.dd, 0
  br i1 %.not36, label %Fax3PutEOL.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.aa, %bb.ab
  %i.de = load i64, ptr %i.c, align 8, !tbaa !51  ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %.03343, i64 %i.de
  %i.dg = sub nsw i64 %.03244, %i.de              ; 2 uses
  %i.dh = icmp sgt i64 %i.dg, 0
  br i1 %i.dh, label %bb.c, label %Fax3PutEOL.exit.thread

Fax3PutEOL.exit.thread:                           ; preds = %bb.v, %bb.x, %bb.ac, %bb.ad, %bb.r, %bb.n, %bb.p, %bb.g, %bb.i, %.preheader, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %.preheader ], [ 0, %bb.i ], [ 0, %bb.v ], [ 0, %bb.x ], [ 1, %bb.ad ], [ 0, %bb.r ], [ 0, %bb.n ], [ 0, %bb.p ], [ 0, %bb.g ], [ 0, %bb.ac ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @Fax3Close(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !71
  %i.e = and i32 %i.d, 1
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %_Fax3Close.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !58
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_Fax3Close.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !76
  %i.k = and i32 %i.j, 1
  %.not25.i = icmp eq i32 %i.k, 0
  br i1 %.not25.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.m = load i32, ptr %i.l, align 8, !tbaa !77
  %i.n = icmp eq i32 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = or disjoint i32 %i.o, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.023.i = phi i32 [ %i.p, %bb.d ], [ 1, %bb.c ] ; 6 uses
  %.022.i = phi i32 [ 13, %bb.d ], [ 12, %bb.c ]  ; 6 uses
  %i.q = tail call fastcc i32 @Fax3PutBits(ptr noundef nonnull %0, i32 noundef %.023.i, i32 noundef %.022.i) ; 0 uses
  %i.r = tail call fastcc i32 @Fax3PutBits(ptr noundef nonnull %0, i32 noundef %.023.i, i32 noundef %.022.i) ; 0 uses
  %i.s = tail call fastcc i32 @Fax3PutBits(ptr noundef nonnull %0, i32 noundef %.023.i, i32 noundef %.022.i) ; 0 uses
  %i.t = tail call fastcc i32 @Fax3PutBits(ptr noundef nonnull %0, i32 noundef %.023.i, i32 noundef %.022.i) ; 0 uses
  %i.u = tail call fastcc i32 @Fax3PutBits(ptr noundef nonnull %0, i32 noundef %.023.i, i32 noundef %.022.i) ; 0 uses
  %i.v = tail call fastcc i32 @Fax3PutBits(ptr noundef nonnull %0, i32 noundef %.023.i, i32 noundef %.022.i) ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !59
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.z = load i64, ptr %i.y, align 8, !tbaa !69
  %.not26.i = icmp slt i64 %i.x, %i.z
  br i1 %.not26.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = tail call i32 @TIFFFlushData1(ptr noundef nonnull %0) #8
  %.not27.i = icmp eq i32 %i.aa, 0
  br i1 %.not27.i, label %_Fax3Close.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !55
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !58  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store ptr %i.af, ptr %i.g, align 8, !tbaa !58
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !10
  %i.ag = load i64, ptr %i.w, align 8, !tbaa !59
  %i.ah = add nsw i64 %i.ag, 1
  store i64 %i.ah, ptr %i.w, align 8, !tbaa !59
  store i32 0, ptr %i.ab, align 8, !tbaa !55
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 8, ptr %i.ai, align 4, !tbaa !56
  br label %_Fax3Close.exit

_Fax3Close.exit:                                  ; preds = %bb.a, %bb.b, %bb.f, %.thread.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Fax3Cleanup(ptr noundef initializes((1256, 1280)) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.e = load <2 x ptr>, ptr %i.c, align 8, !tbaa !33
  %i.f = shufflevector <2 x ptr> %i.e, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.f, ptr %i.d, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !114
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1272
  store ptr %i.h, ptr %i.i, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40   ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.k) #8
end_hunk_1
begin_hunk_2_@Fax3Encode2DRow:bb.a

.preheader.i589:                                  ; preds = %bb.ds
  %i.zq = icmp sgt i32 %.15490.i584, 71
  br i1 %i.zq, label %.lr.ph97.i594.preheader, label %.thread.i563

.lr.ph.i582:                                      ; preds = %.preheader80.i580, %bb.ds
  %.391.i583 = phi i32 [ %i.zx, %bb.ds ], [ %.2.i562, %.preheader80.i580 ] ; 2 uses
  %.15490.i584 = phi i32 [ %i.zy, %bb.ds ], [ %.053.i561, %.preheader80.i580 ] ; 2 uses
  %.16289.i585 = phi ptr [ %i.zz, %bb.ds ], [ %.061.i560, %.preheader80.i580 ] ; 2 uses
  %i.zr = load i8, ptr %.16289.i585, align 1, !tbaa !10 ; 2 uses
  %.not71.i586 = icmp eq i8 %i.zr, 0
  br i1 %.not71.i586, label %bb.ds, label %.critedge.thread.i587

.critedge.thread.i587:                            ; preds = %.lr.ph.i582
  %i.zs = zext i8 %i.zr to i64
  %i.zt = getelementptr inbounds nuw i8, ptr @zeroruns, i64 %i.zs
  %i.zu = load i8, ptr %i.zt, align 1, !tbaa !10
  %i.zv = zext i8 %i.zu to i32
  %i.zw = add nsw i32 %.391.i583, %i.zv
  br label %find1span.exit555

bb.ds:                                            ; preds = %.lr.ph.i582
  %i.zx = add nuw nsw i32 %.391.i583, 8           ; 3 uses
  %i.zy = add nsw i32 %.15490.i584, -8            ; 3 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %.16289.i585, i64 1 ; 4 uses
  %i.aaa = ptrtoint ptr %i.zz to i64
  %i.aab = and i64 %i.aaa, 7
  %.not70.i588 = icmp eq i64 %i.aab, 0
  br i1 %.not70.i588, label %.preheader.i589, label %.lr.ph.i582

.lr.ph97.i594:                                    ; preds = %.lr.ph97.i594.preheader, %bb.dt
  %.096.i595 = phi ptr [ %i.aag, %bb.dt ], [ %.096.i595.ph, %.lr.ph97.i594.preheader ] ; 3 uses
  %.495.i596 = phi i32 [ %i.aae, %bb.dt ], [ %.495.i596.ph, %.lr.ph97.i594.preheader ] ; 2 uses
  %.25594.i597 = phi i32 [ %i.aaf, %bb.dt ], [ %.25594.i597.ph, %.lr.ph97.i594.preheader ] ; 3 uses
  %i.aac = load i64, ptr %.096.i595, align 8, !tbaa !12
  %i.aad = icmp eq i64 %i.aac, 0
  br i1 %i.aad, label %bb.dt, label %.lr.ph108.i575.preheader

bb.dt:                                            ; preds = %.lr.ph97.i594
  %i.aae = add i32 %.495.i596, 64                 ; 2 uses
  %i.aaf = add nsw i32 %.25594.i597, -64          ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %.096.i595, i64 8 ; 2 uses
  %i.aah = icmp sgt i32 %.25594.i597, 127
  br i1 %i.aah, label %.lr.ph97.i594, label %.thread.i563

.thread.i563:                                     ; preds = %bb.dt, %.preheader.i589, %bb.dr
  %.364.i564 = phi ptr [ %i.zz, %.preheader.i589 ], [ %.061.i560, %bb.dr ], [ %i.aag, %bb.dt ] ; 2 uses
  %.457.i565 = phi i32 [ %i.zy, %.preheader.i589 ], [ %.053.i561, %bb.dr ], [ %i.aaf, %bb.dt ] ; 3 uses
  %.6.i566 = phi i32 [ %i.zx, %.preheader.i589 ], [ %.2.i562, %bb.dr ], [ %i.aae, %bb.dt ] ; 2 uses
  %i.aai = icmp sgt i32 %.457.i565, 7
  br i1 %i.aai, label %.lr.ph108.i575.preheader, label %._crit_edge.i567

.lr.ph108.i575.preheader:                         ; preds = %.lr.ph97.i594, %.thread.i563
  %.7107.i576.ph = phi i32 [ %.6.i566, %.thread.i563 ], [ %.495.i596, %.lr.ph97.i594 ]
  %.558106.i577.ph = phi i32 [ %.457.i565, %.thread.i563 ], [ %.25594.i597, %.lr.ph97.i594 ]
  %.465105.i578.ph = phi ptr [ %.364.i564, %.thread.i563 ], [ %.096.i595, %.lr.ph97.i594 ]
  br label %.lr.ph108.i575

.lr.ph108.i575:                                   ; preds = %.lr.ph108.i575.preheader, %bb.dv
  %.7107.i576 = phi i32 [ %i.aap, %bb.dv ], [ %.7107.i576.ph, %.lr.ph108.i575.preheader ] ; 2 uses
  %.558106.i577 = phi i32 [ %i.aaq, %bb.dv ], [ %.558106.i577.ph, %.lr.ph108.i575.preheader ] ; 2 uses
  %.465105.i578 = phi ptr [ %i.aar, %bb.dv ], [ %.465105.i578.ph, %.lr.ph108.i575.preheader ] ; 2 uses
  %i.aaj = load i8, ptr %.465105.i578, align 1, !tbaa !10 ; 2 uses
  %.not72.i579 = icmp eq i8 %i.aaj, 0
  br i1 %.not72.i579, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %.lr.ph108.i575
  %i.aak = zext i8 %i.aaj to i64
  %i.aal = getelementptr inbounds nuw i8, ptr @zeroruns, i64 %i.aak
  %i.aam = load i8, ptr %i.aal, align 1, !tbaa !10
  %i.aan = zext i8 %i.aam to i32
  %i.aao = add nsw i32 %.7107.i576, %i.aan
  br label %find1span.exit555

bb.dv:                                            ; preds = %.lr.ph108.i575
  %i.aap = add nsw i32 %.7107.i576, 8             ; 2 uses
  %i.aaq = add nsw i32 %.558106.i577, -8          ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %.465105.i578, i64 1 ; 2 uses
  %i.aas = icmp sgt i32 %.558106.i577, 15
  br i1 %i.aas, label %.lr.ph108.i575, label %._crit_edge.i567

._crit_edge.i567:                                 ; preds = %bb.dv, %.thread.i563
  %.465.lcssa.i568 = phi ptr [ %.364.i564, %.thread.i563 ], [ %i.aar, %bb.dv ]
  %.558.lcssa.i569 = phi i32 [ %.457.i565, %.thread.i563 ], [ %i.aaq, %bb.dv ] ; 2 uses
  %.7.lcssa.i570 = phi i32 [ %.6.i566, %.thread.i563 ], [ %i.aap, %bb.dv ] ; 2 uses
  %i.aat = icmp sgt i32 %.558.lcssa.i569, 0
  br i1 %i.aat, label %bb.dw, label %find1span.exit555

bb.dw:                                            ; preds = %._crit_edge.i567
  %i.aau = load i8, ptr %.465.lcssa.i568, align 1, !tbaa !10
  %i.aav = zext i8 %i.aau to i64
  %i.aaw = getelementptr inbounds nuw i8, ptr @zeroruns, i64 %i.aav
  %i.aax = load i8, ptr %i.aaw, align 1, !tbaa !10
  %i.aay = zext i8 %i.aax to i32
  %i.aaz = tail call i32 @llvm.umin.i32(i32 %.558.lcssa.i569, i32 %i.aay)
  %i.aba = add nsw i32 %i.aaz, %.7.lcssa.i570
  br label %find1span.exit555

find1span.exit555:                                ; preds = %bb.dw, %._crit_edge.i567, %bb.du, %.critedge.thread.i587, %bb.dp, %bb.dn, %bb.dm, %._crit_edge.i524, %bb.dk, %.critedge.thread.i544, %bb.df, %bb.dd
  %i.abb = phi i32 [ %i.wj, %bb.dm ], [ %i.wj, %bb.dd ], [ %i.wj, %bb.df ], [ %i.wj, %.critedge.thread.i544 ], [ %i.wj, %bb.dk ], [ %i.wj, %._crit_edge.i524 ], [ %i.ys, %bb.dn ], [ %i.ys, %bb.dp ], [ %i.ys, %.critedge.thread.i587 ], [ %i.ys, %bb.du ], [ %i.ys, %._crit_edge.i567 ], [ %i.ys, %bb.dw ]
  %i.abc = phi i32 [ %i.wk, %bb.dm ], [ %i.wk, %bb.dd ], [ %i.wk, %bb.df ], [ %i.wk, %.critedge.thread.i544 ], [ %i.wk, %bb.dk ], [ %i.wk, %._crit_edge.i524 ], [ %i.yt, %bb.dn ], [ %i.yt, %bb.dp ], [ %i.yt, %.critedge.thread.i587 ], [ %i.yt, %bb.du ], [ %i.yt, %._crit_edge.i567 ], [ %i.yt, %bb.dw ]
  %i.abd = phi i32 [ %i.yr, %bb.dm ], [ 0, %bb.dd ], [ %.1.i516, %bb.df ], [ %i.xn, %.critedge.thread.i544 ], [ %i.yf, %bb.dk ], [ %.7.lcssa.i527, %._crit_edge.i524 ], [ 0, %bb.dn ], [ %.1.i559, %bb.dp ], [ %i.zw, %.critedge.thread.i587 ], [ %i.aao, %bb.du ], [ %.7.lcssa.i570, %._crit_edge.i567 ], [ %i.aba, %bb.dw ]
  %i.abe = add i32 %i.abd, %i.abb
  br label %find0span.exit175

.critedge:                                        ; preds = %bb.bn, %bb.bk, %bb.bh, %bb.bm, %bb.bl, %.thread599, %bb.bp, %bb.bo
  %.3113 = phi i32 [ 0, %bb.bo ], [ 1, %bb.bp ], [ 0, %.thread599 ], [ 0, %bb.bl ], [ 0, %bb.bm ], [ 0, %bb.bh ], [ 0, %bb.bk ], [ 0, %bb.bn ]
  ret i32 %.3113
}

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @putspan(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !56   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !55   ; 2 uses
  %i.g = icmp sgt i32 %1, 2623
  br i1 %i.g, label %.lr.ph179, label %._crit_edge180

.lr.ph179:                                        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 618
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 620
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 622
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph179, %bb.j
  %.0113177 = phi i32 [ %i.f, %.lr.ph179 ], [ %.2115, %bb.j ] ; 2 uses
  %.0116176 = phi i32 [ %i.d, %.lr.ph179 ], [ %.2118, %bb.j ] ; 3 uses
  %.0130175 = phi i32 [ %1, %.lr.ph179 ], [ %i.be, %bb.j ]
  %i.n = load i16, ptr %i.i, align 2, !tbaa !82
  %i.o = zext i16 %i.n to i32                     ; 3 uses
  %i.p = load i16, ptr %i.h, align 2, !tbaa !83
  %i.q = zext i16 %i.p to i32                     ; 3 uses
  %i.r = icmp ult i32 %.0116176, %i.q
  br i1 %i.r, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.s = sub nuw nsw i32 %i.q, %.0116176          ; 4 uses
  %i.t = lshr i32 %i.o, %i.s
  %i.u = or i32 %i.t, %.0113177
  %i.v = load i64, ptr %i.j, align 8, !tbaa !59
  %i.w = load i64, ptr %i.k, align 8, !tbaa !69
  %.not148.peel = icmp slt i64 %i.v, %i.w
  br i1 %.not148.peel, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.preheader
  %i.x = tail call i32 @TIFFFlushData1(ptr noundef nonnull %0) #8
  %.not149.peel = icmp eq i32 %i.x, 0
  br i1 %.not149.peel, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.preheader
  %i.y = trunc i32 %i.u to i8
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !58   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.aa, ptr %i.l, align 8, !tbaa !58
  store i8 %i.y, ptr %i.z, align 1, !tbaa !10
  %i.ab = load i64, ptr %i.j, align 8, !tbaa !59
  %i.ac = add nsw i64 %i.ab, 1                    ; 2 uses
  store i64 %i.ac, ptr %i.j, align 8, !tbaa !59
  %i.ad = icmp samesign ugt i32 %i.s, 8
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %i.ae = phi i64 [ %i.an, %bb.f ], [ %i.ac, %bb.d ]
  %.0111172 = phi i32 [ %i.af, %bb.f ], [ %i.s, %bb.d ]
  %i.af = add nsw i32 %.0111172, -8               ; 4 uses
  %i.ag = lshr i32 %i.o, %i.af
  %i.ah = load i64, ptr %i.k, align 8, !tbaa !69
  %.not148 = icmp slt i64 %i.ae, %i.ah
  br i1 %.not148, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ai = tail call i32 @TIFFFlushData1(ptr noundef nonnull %0) #8
  %.not149 = icmp eq i32 %i.ai, 0
  br i1 %.not149, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.aj = trunc i32 %i.ag to i8
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !58  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store ptr %i.al, ptr %i.l, align 8, !tbaa !58
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !10
  %i.am = load i64, ptr %i.j, align 8, !tbaa !59
  %i.an = add nsw i64 %i.am, 1                    ; 2 uses
  store i64 %i.an, ptr %i.j, align 8, !tbaa !59
  %i.ao = icmp ugt i32 %i.af, 8
  br i1 %i.ao, label %.lr.ph, label %._crit_edge, !llvm.loop !115

._crit_edge:                                      ; preds = %bb.f, %bb.d, %bb.b
  %.1117.lcssa = phi i32 [ %.0116176, %bb.b ], [ 8, %bb.d ], [ 8, %bb.f ]
  %.1114.lcssa = phi i32 [ %.0113177, %bb.b ], [ 0, %bb.d ], [ 0, %bb.f ]
  %.0111.lcssa = phi i32 [ %i.q, %bb.b ], [ %i.s, %bb.d ], [ %i.af, %bb.f ] ; 2 uses
  %3 = zext nneg i32 %.0111.lcssa to i64
  %4 = getelementptr inbounds nuw [4 x i8], ptr @_msbmask, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !9
  %i.ap = and i32 %5, %i.o
  %i.aq = sub nuw i32 %.1117.lcssa, %.0111.lcssa  ; 3 uses
  %i.ar = shl i32 %i.ap, %i.aq
  %i.as = or i32 %i.ar, %.1114.lcssa              ; 2 uses
  %i.at = icmp eq i32 %i.aq, 0
  br i1 %i.at, label %bb.g, label %bb.j

bb.g:                                             ; preds = %._crit_edge
  %i.au = load i64, ptr %i.j, align 8, !tbaa !59
  %i.av = load i64, ptr %i.k, align 8, !tbaa !69
  %.not146 = icmp slt i64 %i.au, %i.av
  br i1 %.not146, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = tail call i32 @TIFFFlushData1(ptr noundef nonnull %0) #8
  %.not147 = icmp eq i32 %i.aw, 0
  br i1 %.not147, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ax = trunc i32 %i.as to i8
  %i.ay = load ptr, ptr %i.l, align 8, !tbaa !58  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store ptr %i.az, ptr %i.l, align 8, !tbaa !58
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !10
  %i.ba = load i64, ptr %i.j, align 8, !tbaa !59
  %i.bb = add nsw i64 %i.ba, 1
  store i64 %i.bb, ptr %i.j, align 8, !tbaa !59
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.2118 = phi i32 [ 8, %bb.i ], [ %i.aq, %._crit_edge ] ; 2 uses
  %.2115 = phi i32 [ 0, %bb.i ], [ %i.as, %._crit_edge ] ; 2 uses
  %i.bc = load i16, ptr %i.m, align 2, !tbaa !118
  %i.bd = sext i16 %i.bc to i32
  %i.be = sub nsw i32 %.0130175, %i.bd            ; 3 uses
  %i.bf = icmp sgt i32 %i.be, 2623
  br i1 %i.bf, label %bb.b, label %._crit_edge180

._crit_edge180:                                   ; preds = %bb.j, %bb.a
  %.0130.lcssa = phi i32 [ %1, %bb.a ], [ %i.be, %bb.j ] ; 4 uses
  %.0116.lcssa = phi i32 [ %i.d, %bb.a ], [ %.2118, %bb.j ] ; 4 uses
  %.0113.lcssa = phi i32 [ %i.f, %bb.a ], [ %.2115, %bb.j ] ; 3 uses
  %i.bg = icmp sgt i32 %.0130.lcssa, 63
  br i1 %i.bg, label %bb.k, label %bb.t

bb.k:                                             ; preds = %._crit_edge180
  %i.bh = lshr i32 %.0130.lcssa, 6
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [6 x i8], ptr %2, i64 %i.bi ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 378
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 380
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !82
  %i.bn = zext i16 %i.bm to i32                   ; 3 uses
  %i.bo = load i16, ptr %i.bk, align 2, !tbaa !83
  %i.bp = zext i16 %i.bo to i32                   ; 3 uses
  %i.bq = icmp ult i32 %.0116.lcssa, %i.bp
  br i1 %i.bq, label %.lr.ph187, label %._crit_edge188

.lr.ph187:                                        ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 4 uses
  %i.bu = sub nuw nsw i32 %i.bp, %.0116.lcssa     ; 4 uses
  %i.bv = lshr i32 %i.bn, %i.bu
  %i.bw = or i32 %i.bv, %.0113.lcssa
  %i.bx = load i64, ptr %i.br, align 8, !tbaa !59
  %i.by = load i64, ptr %i.bs, align 8, !tbaa !69
  %.not140.peel = icmp slt i64 %i.bx, %i.by
  br i1 %.not140.peel, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph187
  %i.bz = tail call i32 @TIFFFlushData1(ptr noundef nonnull %0) #8
  %.not141.peel = icmp eq i32 %i.bz, 0
  br i1 %.not141.peel, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph187
  %i.ca = trunc i32 %i.bw to i8
  %i.cb = load ptr, ptr %i.bt, align 8, !tbaa !58 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  store ptr %i.cc, ptr %i.bt, align 8, !tbaa !58
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !10
  %i.cd = load i64, ptr %i.br, align 8, !tbaa !59
  %i.ce = add nsw i64 %i.cd, 1                    ; 2 uses
  store i64 %i.ce, ptr %i.br, align 8, !tbaa !59
  %i.cf = icmp samesign ugt i32 %i.bu, 8
  br i1 %i.cf, label %.peel.next, label %._crit_edge188

.peel.next:                                       ; preds = %bb.m, %bb.o
  %i.cg = phi i64 [ %i.cp, %bb.o ], [ %i.ce, %bb.m ]
  %.1112185 = phi i32 [ %i.ch, %bb.o ], [ %i.bu, %bb.m ]
  %i.ch = add nsw i32 %.1112185, -8               ; 4 uses
  %i.ci = lshr i32 %i.bn, %i.ch
  %i.cj = load i64, ptr %i.bs, align 8, !tbaa !69
  %.not140 = icmp slt i64 %i.cg, %i.cj
  br i1 %.not140, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.peel.next
  %i.ck = tail call i32 @TIFFFlushData1(ptr noundef nonnull %0) #8
  %.not141 = icmp eq i32 %i.ck, 0
  br i1 %.not141, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n, %.peel.next
  %i.cl = trunc i32 %i.ci to i8
  %i.cm = load ptr, ptr %i.bt, align 8, !tbaa !58 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  store ptr %i.cn, ptr %i.bt, align 8, !tbaa !58
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !10
  %i.co = load i64, ptr %i.br, align 8, !tbaa !59
  %i.cp = add nsw i64 %i.co, 1                    ; 2 uses
  store i64 %i.cp, ptr %i.br, align 8, !tbaa !59
  %i.cq = icmp ugt i32 %i.ch, 8
  br i1 %i.cq, label %.peel.next, label %._crit_edge188, !llvm.loop !116

._crit_edge188:                                   ; preds = %bb.o, %bb.m, %bb.k
  %.4120.lcssa = phi i32 [ %.0116.lcssa, %bb.k ], [ 8, %bb.m ], [ 8, %bb.o ]
  %.4.lcssa = phi i32 [ %.0113.lcssa, %bb.k ], [ 0, %bb.m ], [ 0, %bb.o ]
  %.1112.lcssa = phi i32 [ %i.bp, %bb.k ], [ %i.bu, %bb.m ], [ %i.ch, %bb.o ] ; 2 uses
  %6 = zext nneg i32 %.1112.lcssa to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr @_msbmask, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !9
  %i.cr = and i32 %8, %i.bn
  %i.cs = sub nuw i32 %.4120.lcssa, %.1112.lcssa  ; 3 uses
  %i.ct = shl i32 %i.cr, %i.cs
  %i.cu = or i32 %i.ct, %.4.lcssa                 ; 2 uses
  %i.cv = icmp eq i32 %i.cs, 0
  br i1 %i.cv, label %bb.p, label %bb.s

bb.p:                                             ; preds = %._crit_edge188
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 3 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !59
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !69
  %.not = icmp slt i64 %i.cx, %i.cz
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.da = tail call i32 @TIFFFlushData1(ptr noundef nonnull %0) #8
  %.not139 = icmp eq i32 %i.da, 0
  br i1 %.not139, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.db = trunc i32 %i.cu to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !58 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  store ptr %i.de, ptr %i.dc, align 8, !tbaa !58
  store i8 %i.db, ptr %i.dd, align 1, !tbaa !10
  %i.df = load i64, ptr %i.cw, align 8, !tbaa !59
  %i.dg = add nsw i64 %i.df, 1
  store i64 %i.dg, ptr %i.cw, align 8, !tbaa !59
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge188
  %.5121 = phi i32 [ 8, %bb.r ], [ %i.cs, %._crit_edge188 ]
  %.5 = phi i32 [ 0, %bb.r ], [ %i.cu, %._crit_edge188 ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bj, i64 382
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !118
  %i.dj = sext i16 %i.di to i32
  %i.dk = sub nsw i32 %.0130.lcssa, %i.dj
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge180
  %.3133 = phi i32 [ %i.dk, %bb.s ], [ %.0130.lcssa, %._crit_edge180 ]
  %.7123 = phi i32 [ %.5121, %bb.s ], [ %.0116.lcssa, %._crit_edge180 ] ; 3 uses
  %.7 = phi i32 [ %.5, %bb.s ], [ %.0113.lcssa, %._crit_edge180 ] ; 2 uses
  %i.dl = sext i32 %.3133 to i64
  %i.dm = getelementptr inbounds [6 x i8], ptr %2, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !82
  %i.dp = zext i16 %i.do to i32                   ; 3 uses
  %i.dq = load i16, ptr %i.dm, align 2, !tbaa !83
  %i.dr = zext i16 %i.dq to i32                   ; 3 uses
  %i.ds = icmp ult i32 %.7123, %i.dr
  br i1 %i.ds, label %.lr.ph196, label %._crit_edge197

.lr.ph196:                                        ; preds = %bb.t
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 4 uses
  %i.dw = sub nuw nsw i32 %i.dr, %.7123           ; 4 uses
  %i.dx = lshr i32 %i.dp, %i.dw
  %i.dy = or i32 %i.dx, %.7
  %i.dz = load i64, ptr %i.dt, align 8, !tbaa !59
  %i.ea = load i64, ptr %i.du, align 8, !tbaa !69
  %.not144.peel = icmp slt i64 %i.dz, %i.ea
  br i1 %.not144.peel, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph196
  %i.eb = tail call i32 @TIFFFlushData1(ptr noundef nonnull %0) #8
  %.not145.peel = icmp eq i32 %i.eb, 0
  br i1 %.not145.peel, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph196
  %i.ec = trunc i32 %i.dy to i8
  %i.ed = load ptr, ptr %i.dv, align 8, !tbaa !58 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  store ptr %i.ee, ptr %i.dv, align 8, !tbaa !58
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !10
  %i.ef = load i64, ptr %i.dt, align 8, !tbaa !59
  %i.eg = add nsw i64 %i.ef, 1                    ; 2 uses
  store i64 %i.eg, ptr %i.dt, align 8, !tbaa !59
  %i.eh = icmp samesign ugt i32 %i.dw, 8
  br i1 %i.eh, label %.peel.next211, label %._crit_edge197

.peel.next211:                                    ; preds = %bb.v, %bb.x
  %i.ei = phi i64 [ %i.er, %bb.x ], [ %i.eg, %bb.v ]
  %.2194 = phi i32 [ %i.ej, %bb.x ], [ %i.dw, %bb.v ]
  %i.ej = add nsw i32 %.2194, -8                  ; 4 uses
  %i.ek = lshr i32 %i.dp, %i.ej
  %i.el = load i64, ptr %i.du, align 8, !tbaa !69
  %.not144 = icmp slt i64 %i.ei, %i.el
  br i1 %.not144, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.peel.next211
  %i.em = tail call i32 @TIFFFlushData1(ptr noundef nonnull %0) #8
  %.not145 = icmp eq i32 %i.em, 0
  br i1 %.not145, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w, %.peel.next211
  %i.en = trunc i32 %i.ek to i8
  %i.eo = load ptr, ptr %i.dv, align 8, !tbaa !58 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  store ptr %i.ep, ptr %i.dv, align 8, !tbaa !58
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !10
  %i.eq = load i64, ptr %i.dt, align 8, !tbaa !59
  %i.er = add nsw i64 %i.eq, 1                    ; 2 uses
  store i64 %i.er, ptr %i.dt, align 8, !tbaa !59
  %i.es = icmp ugt i32 %i.ej, 8
  br i1 %i.es, label %.peel.next211, label %._crit_edge197, !llvm.loop !117

._crit_edge197:                                   ; preds = %bb.x, %bb.v, %bb.t
  %.8124.lcssa = phi i32 [ %.7123, %bb.t ], [ 8, %bb.v ], [ 8, %bb.x ]
  %.8.lcssa = phi i32 [ %.7, %bb.t ], [ 0, %bb.v ], [ 0, %bb.x ]
  %.2.lcssa = phi i32 [ %i.dr, %bb.t ], [ %i.dw, %bb.v ], [ %i.ej, %bb.x ] ; 2 uses
  %9 = zext nneg i32 %.2.lcssa to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr @_msbmask, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !9
  %i.et = and i32 %11, %i.dp
  %i.eu = sub nuw i32 %.8124.lcssa, %.2.lcssa     ; 3 uses
  %i.ev = shl i32 %i.et, %i.eu
  %i.ew = or i32 %i.ev, %.8.lcssa                 ; 2 uses
  %i.ex = icmp eq i32 %i.eu, 0
  br i1 %i.ex, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %._crit_edge197
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 3 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !59
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !69
  %.not142 = icmp slt i64 %i.ez, %i.fb
  br i1 %.not142, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fc = tail call i32 @TIFFFlushData1(ptr noundef nonnull %0) #8
  %.not143 = icmp eq i32 %i.fc, 0
  br i1 %.not143, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.fd = trunc i32 %i.ew to i8
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !58 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  store ptr %i.fg, ptr %i.fe, align 8, !tbaa !58
  store i8 %i.fd, ptr %i.ff, align 1, !tbaa !10
  %i.fh = load i64, ptr %i.ey, align 8, !tbaa !59
  %i.fi = add nsw i64 %i.fh, 1
  store i64 %i.fi, ptr %i.ey, align 8, !tbaa !59
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge197
  %.9125 = phi i32 [ 8, %bb.aa ], [ %i.eu, %._crit_edge197 ]
  %.9 = phi i32 [ 0, %bb.aa ], [ %i.ew, %._crit_edge197 ]
  store i32 %.9, ptr %i.e, align 8, !tbaa !55
  store i32 %.9125, ptr %i.c, align 4, !tbaa !56
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.c, %bb.e, %bb.n, %bb.w, %bb.l, %bb.u, %bb.q, %bb.z, %bb.ab
  %.3129 = phi i32 [ 0, %bb.z ], [ 0, %bb.l ], [ 1, %bb.ab ], [ 0, %bb.u ], [ 0, %bb.e ], [ 0, %bb.q ], [ 0, %bb.w ], [ 0, %bb.n ], [ 0, %bb.c ], [ 0, %bb.h ]
  ret i32 %.3129
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @Fax3PutBits(ptr noundef %0, i32 noundef range(i32 0, 65536) %1, i32 noundef range(i32 0, 65536) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !56   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !55   ; 2 uses
  %i.g = icmp ugt i32 %2, %i.d
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 4 uses
  %i.k = sub nuw nsw i32 %2, %i.d                 ; 4 uses
  %i.l = lshr i32 %1, %i.k
  %i.m = or i32 %i.l, %i.f
  %i.n = load i64, ptr %i.h, align 8, !tbaa !59
  %i.o = load i64, ptr %i.i, align 8, !tbaa !69
  %.not41.peel = icmp slt i64 %i.n, %i.o
  br i1 %.not41.peel, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.p = tail call i32 @TIFFFlushData1(ptr noundef nonnull %0) #8
  %.not42.peel = icmp eq i32 %i.p, 0
  br i1 %.not42.peel, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.q = trunc i32 %i.m to i8
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !58   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store ptr %i.s, ptr %i.j, align 8, !tbaa !58
  store i8 %i.q, ptr %i.r, align 1, !tbaa !10
  %i.t = load i64, ptr %i.h, align 8, !tbaa !59
  %i.u = add nsw i64 %i.t, 1                      ; 2 uses
  store i64 %i.u, ptr %i.h, align 8, !tbaa !59
  %i.v = icmp samesign ugt i32 %i.k, 8
  br i1 %i.v, label %.peel.next, label %._crit_edge

.peel.next:                                       ; preds = %bb.c, %bb.e
  %i.w = phi i64 [ %i.af, %bb.e ], [ %i.u, %bb.c ]
  %.03746 = phi i32 [ %i.x, %bb.e ], [ %i.k, %bb.c ]
  %i.x = add nsw i32 %.03746, -8                  ; 4 uses
  %i.y = lshr i32 %1, %i.x
  %i.z = load i64, ptr %i.i, align 8, !tbaa !69
  %.not41 = icmp slt i64 %i.w, %i.z
  br i1 %.not41, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.peel.next
  %i.aa = tail call i32 @TIFFFlushData1(ptr noundef nonnull %0) #8
  %.not42 = icmp eq i32 %i.aa, 0
  br i1 %.not42, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d, %.peel.next
  %i.ab = trunc i32 %i.y to i8
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !58  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store ptr %i.ad, ptr %i.j, align 8, !tbaa !58
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !10
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !59
  %i.af = add nsw i64 %i.ae, 1                    ; 2 uses
  store i64 %i.af, ptr %i.h, align 8, !tbaa !59
  %i.ag = icmp ugt i32 %i.x, 8
  br i1 %i.ag, label %.peel.next, label %._crit_edge, !llvm.loop !119

._crit_edge:                                      ; preds = %bb.e, %bb.c, %bb.a
  %.037.lcssa = phi i32 [ %2, %bb.a ], [ %i.k, %bb.c ], [ %i.x, %bb.e ] ; 2 uses
  %.035.lcssa = phi i32 [ %i.d, %bb.a ], [ 8, %bb.c ], [ 8, %bb.e ]
  %.0.lcssa = phi i32 [ %i.f, %bb.a ], [ 0, %bb.c ], [ 0, %bb.e ]
  %3 = zext nneg i32 %.037.lcssa to i64
  %4 = getelementptr inbounds nuw [4 x i8], ptr @_msbmask, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !9
  %i.ah = and i32 %5, %1
  %i.ai = sub nuw i32 %.035.lcssa, %.037.lcssa    ; 3 uses
  %i.aj = shl i32 %i.ah, %i.ai
  %i.ak = or i32 %i.aj, %.0.lcssa                 ; 2 uses
  %i.al = icmp eq i32 %i.ai, 0
  br i1 %i.al, label %bb.f, label %bb.i

bb.f:                                             ; preds = %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 3 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !59
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !69
  %.not = icmp slt i64 %i.an, %i.ap
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = tail call i32 @TIFFFlushData1(ptr noundef nonnull %0) #8
  %.not40 = icmp eq i32 %i.aq, 0
  br i1 %.not40, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ar = trunc i32 %i.ak to i8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  store ptr %i.au, ptr %i.as, align 8, !tbaa !58
  store i8 %i.ar, ptr %i.at, align 1, !tbaa !10
  %i.av = load i64, ptr %i.am, align 8, !tbaa !59
  %i.aw = add nsw i64 %i.av, 1
  store i64 %i.aw, ptr %i.am, align 8, !tbaa !59
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %.136 = phi i32 [ 8, %bb.h ], [ %i.ai, %._crit_edge ]
  %.1 = phi i32 [ 0, %bb.h ], [ %i.ak, %._crit_edge ]
  store i32 %.1, ptr %i.e, align 8, !tbaa !55
  store i32 %.136, ptr %i.c, align 4, !tbaa !56
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %bb.g, %bb.i
  %.038 = phi i32 [ 0, %bb.g ], [ 1, %bb.i ], [ 0, %bb.b ], [ 0, %bb.d ]
  ret i32 %.038
}

declare void @_TIFFSetDefaultCompressionState(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!5, !5, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"p1 _ZTS12_TIFFHashSet", !13, i64 0}
!16 = !{!"short", !5, i64 0}
!17 = !{!"p1 double", !13, i64 0}
!18 = !{!"float", !5, i64 0}
!19 = !{!"p1 short", !13, i64 0}
!20 = !{!"p1 long", !13, i64 0}
!21 = !{!"", !16, i64 0, !16, i64 2, !11, i64 8, !5, i64 16, !5, i64 24}
!22 = !{!"p1 float", !13, i64 0}
!23 = !{!"", !5, i64 0, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !16, i64 44, !16, i64 46, !16, i64 48, !16, i64 50, !16, i64 52, !16, i64 54, !16, i64 56, !16, i64 58, !6, i64 60, !16, i64 64, !16, i64 66, !17, i64 72, !17, i64 80, !18, i64 88, !18, i64 92, !16, i64 96, !16, i64 98, !18, i64 100, !18, i64 104, !5, i64 108, !5, i64 112, !5, i64 136, !16, i64 140, !19, i64 144, !6, i64 152, !6, i64 156, !20, i64 160, !20, i64 168, !6, i64 176, !21, i64 184, !21, i64 216, !16, i64 248, !20, i64 256, !5, i64 264, !16, i64 268, !5, i64 272, !22, i64 296, !6, i64 304, !14, i64 312, !16, i64 320, !6, i64 324, !13, i64 328, !5, i64 336, !5, i64 337, !11, i64 344, !11, i64 352, !6, i64 360, !13, i64 368}
!24 = !{!"any p2 pointer", !13, i64 0}
!25 = !{!"p2 _ZTS10_TIFFField", !24, i64 0}
!26 = !{!"p1 _ZTS10_TIFFField", !13, i64 0}
!27 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16}
!28 = !{!"p1 _ZTS11client_info", !13, i64 0}
!29 = !{!"p1 _ZTS15_TIFFFieldArray", !13, i64 0}
!30 = !{!"tiff", !14, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !15, i64 48, !15, i64 56, !6, i64 64, !23, i64 72, !23, i64 448, !5, i64 824, !16, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !6, i64 856, !11, i64 864, !11, i64 872, !11, i64 880, !16, i64 888, !11, i64 896, !6, i64 904, !6, i64 908, !11, i64 912, !6, i64 920, !13, i64 928, !13, i64 936, !13, i64 944, !13, i64 952, !6, i64 960, !13, i64 968, !13, i64 976, !13, i64 984, !13, i64 992, !13, i64 1000, !13, i64 1008, !13, i64 1016, !13, i64 1024, !13, i64 1032, !13, i64 1040, !13, i64 1048, !13, i64 1056, !13, i64 1064, !14, i64 1072, !11, i64 1080, !11, i64 1088, !14, i64 1096, !11, i64 1104, !11, i64 1112, !11, i64 1120, !14, i64 1128, !11, i64 1136, !14, i64 1144, !11, i64 1152, !13, i64 1160, !13, i64 1168, !13, i64 1176, !13, i64 1184, !13, i64 1192, !13, i64 1200, !13, i64 1208, !13, i64 1216, !13, i64 1224, !25, i64 1232, !11, i64 1240, !26, i64 1248, !27, i64 1256, !28, i64 1280, !29, i64 1288, !11, i64 1296, !13, i64 1304, !13, i64 1312, !13, i64 1320, !13, i64 1328, !11, i64 1336, !11, i64 1344, !11, i64 1352, !6, i64 1360}
!31 = !{!30, !14, i64 1072}
!32 = !{!"", !6, i64 0, !6, i64 4, !11, i64 8, !6, i64 16, !16, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !13, i64 40, !13, i64 48, !13, i64 56}
!33 = !{!13, !13, i64 0}
!34 = !{!30, !13, i64 1272}
!35 = !{!32, !13, i64 56}
!36 = !{!32, !6, i64 32}
!37 = !{!30, !6, i64 16}
!38 = !{!"p1 int", !13, i64 0}
!39 = !{!"", !32, i64 0, !14, i64 64, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !13, i64 96, !38, i64 104, !6, i64 112, !38, i64 120, !38, i64 128, !6, i64 136, !14, i64 144, !6, i64 152, !6, i64 156, !6, i64 160}
!40 = !{!39, !38, i64 104}
!41 = !{!39, !14, i64 144}
!42 = !{!30, !13, i64 984}
!43 = !{!30, !13, i64 1000}
!44 = !{!30, !13, i64 1016}
!45 = !{!30, !13, i64 976}
!46 = !{!30, !13, i64 992}
!47 = !{!30, !13, i64 1008}
!48 = !{!30, !13, i64 1024}
!49 = !{!39, !6, i64 16}
!50 = !{!39, !14, i64 64}
!51 = !{!39, !11, i64 8}
!52 = !{!39, !6, i64 84}
!53 = !{!39, !6, i64 88}
!54 = !{!39, !6, i64 92}
!55 = !{!39, !6, i64 72}
!56 = !{!39, !6, i64 76}
!57 = !{!39, !6, i64 80}
!58 = !{!30, !14, i64 1128}
!59 = !{!30, !11, i64 1136}
!60 = !{!39, !6, i64 160}
!61 = !{!39, !38, i64 128}
!62 = !{!39, !38, i64 120}
!63 = !{!39, !6, i64 112}
!64 = !{!"", !5, i64 0, !5, i64 1, !6, i64 4}
!65 = !{!64, !5, i64 1}
!66 = !{!64, !5, i64 0}
!67 = !{!64, !6, i64 4}
!68 = !{!39, !13, i64 96}
!69 = !{!30, !11, i64 1104}
!70 = !{!39, !6, i64 4}
!71 = !{!32, !6, i64 4}
!72 = !{!32, !6, i64 28}
!73 = !{!32, !16, i64 20}
!74 = !{!32, !6, i64 24}
!75 = !{!30, !16, i64 120}
!76 = !{!39, !6, i64 32}
!77 = !{!39, !6, i64 136}
!78 = !{!39, !6, i64 156}
!79 = !{!39, !6, i64 152}
!80 = !{!"llvm.loop.peeled.count", i32 1}
!81 = !{!"tableentry", !16, i64 0, !16, i64 2, !16, i64 4}
!82 = !{!81, !16, i64 2}
!83 = !{!81, !16, i64 0}
!84 = !{!30, !6, i64 12}
!85 = !{!32, !6, i64 0}
!86 = !{!30, !13, i64 1264}
!87 = !{!30, !13, i64 1256}
!88 = !{!30, !13, i64 928}
!89 = !{!30, !13, i64 936}
!90 = !{!30, !13, i64 944}
!91 = !{!30, !13, i64 952}
!92 = !{!30, !13, i64 968}
!93 = !{!30, !13, i64 1032}
!94 = !{!30, !13, i64 1048}
!95 = !{!38, !38, i64 0}
!96 = !{!24, !24, i64 0}
!97 = !{!19, !19, i64 0}
!98 = !{!16, !16, i64 0}
!99 = !{!32, !13, i64 40}
!100 = !{!32, !13, i64 48}
!101 = !{!"_TIFFField", !6, i64 0, !16, i64 4, !16, i64 6, !6, i64 8, !6, i64 12, !6, i64 16, !16, i64 20, !5, i64 22, !5, i64 23, !14, i64 24, !29, i64 32}
!102 = !{!101, !16, i64 20}
!103 = !{!23, !16, i64 44}
!104 = !{!23, !16, i64 58}
!105 = !{!23, !16, i64 98}
!106 = !{!32, !11, i64 8}
!107 = !{!32, !6, i64 16}
!108 = !{!23, !16, i64 48}
!109 = !{!30, !14, i64 0}
!110 = !{!30, !16, i64 126}
!111 = !{!30, !18, i64 164}
!112 = !{!30, !16, i64 168}
!113 = distinct !{!113, !80}
!114 = !{!39, !13, i64 56}
!115 = distinct !{!115, !80}
!116 = distinct !{!116, !80}
!117 = distinct !{!117, !80}
!118 = !{!81, !16, i64 4}
!119 = distinct !{!119, !80}
end_hunk_2

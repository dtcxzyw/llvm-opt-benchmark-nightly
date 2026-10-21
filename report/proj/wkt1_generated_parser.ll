Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/wkt1_generated_parser?download=true
inline.NumInlined: 10
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@yypact = internal unnamed_addr constant [289 x i16] [i16 97, i16 33, i16 33, i16 33, i16 33, i16 33, i16 33, i16 33, i16 33, i16 10, i16 -131, i16 -131, i16 2, i16 -131, i16 -131, i16 -131, i16 -131, i16 -131, i16 -131, i16 -131, i16 -131, i16 -131, i16 -131, i16 40, i16 12, i16 38, i16 47, i16 69, i16 93, i16 95, i16 96, i16 89, i16 -131, i16 117, i16 -131, i16 102, i16 126, i16 126, i16 123, i16 1, i16 22, i16 135, i16 -131, i16 -131, i16 119, i16 -131, i16 -131, i16 107, i16 33, i16 110, i16 111, i16 33, i16 113, i16 33, i16 -131, i16 114, i16 -131, i16 -131, i16 115, i16 33, i16 33, i16 33, i16 33, i16 -131, i16 -131, i16 -131, i16 -131, i16 -131, i16 118, i16 33, i16 121, i16 150, i16 125, i16 147, i16 147, i16 127, i16 149, i16 55, i16 6, i16 91, i16 128, i16 135, i16 135, i16 136, i16 97, i16 129, i16 149, i16 33, i16 131, i16 157, i16 33, i16 134, i16 137, i16 141, i16 33, i16 138, i16 -131, i16 -131, i16 33, i16 139, i16 55, i16 -131, i16 -131, i16 -131, i16 -131, i16 140, i16 145, i16 55, i16 142, i16 55, i16 -131, i16 143, i16 -131, i16 55, i16 141, i16 144, i16 151, i16 6, i16 33, i16 152, i16 153, i16 149, i16 149, i16 -131, i16 140, i16 154, i16 18, i16 55, i16 155, i16 6, i16 -131, i16 19, i16 55, i16 128, i16 -131, i16 135, i16 55, i16 -131, i16 135, i16 -131, i16 151, i16 159, i16 161, i16 55, i16 156, i16 158, i16 75, i16 55, i16 163, i16 160, i16 -131, i16 162, i16 55, i16 165, i16 33, i16 33, i16 -131, i16 151, i16 -131, i16 169, i16 -131, i16 -131, i16 33, i16 151, i16 -131, i16 -131, i16 -131, i16 142, i16 -131, i16 55, i16 55, i16 164, i16 -131, i16 -131, i16 65, i16 55, i16 171, i16 33, i16 151, i16 -131, i16 140, i16 -131, i16 -131, i16 151, i16 14, i16 55, i16 65, i16 55, i16 -131, i16 -131, i16 151, i16 166, i16 167, i16 -131, i16 55, i16 170, i16 -131, i16 -131, i16 -131, i16 -131, i16 18, i16 55, i16 151, i16 -131, i16 140, i16 172, i16 -131, i16 -131, i16 173, i16 175, i16 -131, i16 -131, i16 55, i16 33, i16 151, i16 151, i16 -131, i16 140, i16 -131, i16 151, i16 140, i16 -131, i16 174, i16 -131, i16 55, i16 178, i16 181, i16 -131, i16 184, i16 -131, i16 164, i16 -131, i16 -131, i16 -131, i16 159, i16 98, i16 -131, i16 55, i16 -131, i16 -131, i16 179, i16 -131, i16 180, i16 -131, i16 -131, i16 -131, i16 -131, i16 -131, i16 159, i16 -131, i16 55, i16 55, i16 55, i16 -131, i16 -131, i16 -131, i16 -131, i16 151, i16 -131, i16 187, i16 165, i16 182, i16 -131, i16 -131, i16 -131, i16 55, i16 -131, i16 183, i16 151, i16 159, i16 -131, i16 190, i16 55, i16 -131, i16 -131, i16 185, i16 -131, i16 192, i16 -131, i16 188, i16 193, i16 -131, i16 189, i16 196, i16 -131, i16 191, i16 198, i16 -131, i16 -131], align 16
@yytranslate = internal unnamed_addr constant [287 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02!#\02\02$\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02 \02\22\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F", align 16
@yycheck = internal unnamed_addr constant [256 x i16] [i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 131, i16 35, i16 77, i16 0, i16 10, i16 126, i16 60, i16 61, i16 62, i16 146, i16 124, i16 142, i16 13, i16 140, i16 20, i16 146, i16 81, i16 82, i16 76, i16 86, i16 141, i16 14, i16 7, i16 16, i16 9, i16 100, i16 27, i16 16, i16 16, i16 22, i16 157, i16 36, i16 107, i16 22, i16 109, i16 28, i16 163, i16 174, i16 113, i16 48, i16 28, i16 36, i16 51, i16 174, i16 53, i16 79, i16 37, i16 184, i16 39, i16 186, i16 59, i16 178, i16 127, i16 184, i16 121, i16 186, i16 183, i16 132, i16 32, i16 33, i16 69, i16 136, i16 29, i16 190, i16 122, i16 186, i16 180, i16 36, i16 143, i16 200, i16 135, i16 129, i16 147, i16 138, i16 16, i16 202, i16 36, i16 152, i16 87, i16 200, i16 22, i16 90, i16 34, i16 35, i16 16, i16 94, i16 28, i16 214, i16 215, i16 98, i16 204, i16 23, i16 219, i16 9, i16 169, i16 170, i16 28, i16 7, i16 36, i16 9, i16 175, i16 17, i16 18, i16 217, i16 9, i16 15, i16 220, i16 17, i16 18, i16 118, i16 185, i16 21, i16 187, i16 234, i16 24, i16 25, i16 34, i16 35, i16 36, i16 194, i16 29, i16 30, i16 36, i16 177, i16 36, i16 36, i16 201, i16 248, i16 18, i16 10, i16 257, i16 3, i16 4, i16 5, i16 6, i16 19, i16 36, i16 212, i16 26, i16 36, i16 36, i16 268, i16 36, i16 36, i16 36, i16 154, i16 155, i16 36, i16 269, i16 224, i16 36, i16 8, i16 12, i16 162, i16 36, i16 13, i16 36, i16 36, i16 36, i16 30, i16 36, i16 11, i16 237, i16 36, i16 30, i16 27, i16 36, i16 36, i16 36, i16 36, i16 16, i16 36, i16 36, i16 36, i16 22, i16 250, i16 251, i16 252, i16 106, i16 133, i16 36, i16 36, i16 36, i16 36, i16 36, i16 36, i16 30, i16 36, i16 30, i16 36, i16 265, i16 36, i16 30, i16 36, i16 30, i16 36, i16 36, i16 272, i16 30, i16 36, i16 29, i16 36, i16 36, i16 36, i16 213, i16 31, i16 29, i16 84, i16 36, i16 36, i16 30, i16 36, i16 36, i16 30, i16 36, i16 30, i16 30, i16 36, i16 36, i16 30, i16 36, i16 30, i16 167, i16 129, i16 260, i16 33, i16 117, i16 40, i16 184, i16 114, i16 230, i16 -1, i16 -1, i16 -1, i16 -1, i16 74, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 79], align 16
@yytable = internal unnamed_addr constant [256 x i16] [i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 164, i16 47, i16 97, i16 32, i16 48, i16 157, i16 81, i16 82, i16 83, i16 178, i16 152, i16 172, i16 94, i16 170, i16 53, i16 179, i16 108, i16 109, i16 95, i16 115, i16 171, i16 213, i16 1, i16 154, i16 2, i16 130, i16 98, i16 154, i16 154, i16 155, i16 193, i16 33, i16 134, i16 155, i16 137, i16 162, i16 196, i16 202, i16 139, i16 72, i16 162, i16 35, i16 75, i16 203, i16 77, i16 103, i16 50, i16 214, i16 54, i16 219, i16 80, i16 210, i16 158, i16 216, i16 150, i16 221, i16 212, i16 165, i16 21, i16 22, i16 85, i16 168, i16 34, i16 224, i16 151, i16 222, i16 211, i16 36, i16 173, i16 229, i16 167, i16 161, i16 181, i16 169, i16 154, i16 232, i16 37, i16 188, i16 116, i16 230, i16 155, i16 120, i16 42, i16 43, i16 154, i16 125, i16 162, i16 243, i16 244, i16 128, i16 233, i16 177, i16 246, i16 2, i16 198, i16 199, i16 162, i16 1, i16 38, i16 2, i16 206, i16 4, i16 5, i16 245, i16 2, i16 3, i16 247, i16 4, i16 5, i16 145, i16 218, i16 6, i16 223, i16 254, i16 7, i16 8, i16 42, i16 43, i16 44, i16 227, i16 255, i16 256, i16 39, i16 209, i16 40, i16 41, i16 231, i16 261, i16 5, i16 48, i16 265, i16 59, i16 60, i16 61, i16 62, i16 51, i16 71, i16 241, i16 69, i16 73, i16 74, i16 272, i16 76, i16 78, i16 79, i16 191, i16 192, i16 84, i16 273, i16 249, i16 86, i16 87, i16 90, i16 195, i16 89, i16 94, i16 93, i16 106, i16 114, i16 110, i16 117, i16 118, i16 258, i16 121, i16 123, i16 98, i16 122, i16 126, i16 129, i16 131, i16 154, i16 135, i16 138, i16 141, i16 155, i16 262, i16 263, i16 264, i16 133, i16 166, i16 142, i16 146, i16 148, i16 153, i16 159, i16 174, i16 182, i16 176, i16 189, i16 184, i16 270, i16 186, i16 194, i16 200, i16 207, i16 225, i16 226, i16 276, i16 236, i16 228, i16 250, i16 234, i16 235, i16 248, i16 242, i16 251, i16 252, i16 112, i16 259, i16 260, i16 266, i16 269, i16 271, i16 274, i16 277, i16 278, i16 281, i16 280, i16 283, i16 284, i16 286, i16 287, i16 197, i16 160, i16 268, i16 46, i16 144, i16 57, i16 217, i16 140, i16 253, i16 0, i16 0, i16 0, i16 0, i16 92, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 104], align 16
@yydefact = internal unnamed_addr constant [289 x i8] c"\00\00\00\00\00\00\00\00\00\00\02\16\1C\1F\1E\17\18K\19\1A\1B\03\04\00\00\00\00\00\00\00\00\00\01\00\05\00\00\00\00\00\00\00\06\07\00n\1D\00\00\00\00\00\00\00R\00QY\00\00\00\00\00k\08\09\0A\0B\00\00\00\00\00\00\00\00\00\00\00\00\0E\00\00\00\00\00\00\00\00\00\00\00\00\00\00M@S\00\00\00\22!Z[T\00\00\11\00\15\00l\00\00\00)\00\005\00\00\00WT\00\00\00\00\00L\00\00\0E\0C\00\00\13\00j)\00\00\00%\00\00\00\00/?D\00\00\00\00O)J\00#$\00)VX\0F\11\10\00\00o*,\00\00\00\00)8T4>)\00\00\00\00PB)\00\00N\00\00U\12\14r\00\00)(T\00 :\00\0076\00\00))3T-)TG\00C\00\00\00\0D\00pom'&\00\00c\00`_\00=\00201FE\00A\00\00\00q\\<;)^\00\00\00I]+\00d\00)\009\00\00Hea.\00f\00\00g\00\00h\00\00ib", align 16
@yyr2 = internal unnamed_addr constant [115 x i8] c"\00\02\01\01\01\02\01\01\01\01\01\01\04\05\00\03\05\00\03\04\06\01\01\01\01\01\01\01\01\03\01\01\0A\01\01\03\03\00\03\03\02\00\02\05\04\0A\06\00\03\03\03\02\06\00\03\03\02\08\01\01\01\06\01\01\01\06\01\0A\00\03\03\02\05\05\08\01\07\00\03\02\06\01\01\03\00\03\02\01\08\01\01\01\03\05\04\01\01\05\0D\01\01\01\01\01\01\01\07\01\01\0A\03\00\02\03\06", align 16
@yyr1 = internal unnamed_addr constant [115 x i8] c"\00%&''())****+,--.//0123333334455677889999::;<=>?????@AAAABCDDEFGHIJKLLLLMNOOPQQQRSSTUUUVWXYYZ[\\]]^_`abcdefghijjkkkl", align 16
@yypgoto = internal unnamed_addr constant [72 x i16] [i16 -131, i16 -131, i16 -47, i16 -2, i16 -68, i16 -58, i16 -131, i16 79, i16 53, i16 -131, i16 62, i16 -131, i16 -131, i16 -131, i16 130, i16 -131, i16 194, i16 -131, i16 116, i16 101, i16 -131, i16 -120, i16 -130, i16 -131, i16 -27, i16 -131, i16 -131, i16 16, i16 -131, i16 -131, i16 -131, i16 -131, i16 168, i16 -131, i16 -131, i16 -51, i16 -60, i16 -29, i16 -131, i16 -131, i16 -131, i16 -124, i16 176, i16 199, i16 -131, i16 -131, i16 -131, i16 -131, i16 -107, i16 122, i16 -131, i16 -131, i16 -131, i16 51, i16 -114, i16 -131, i16 -131, i16 -131, i16 -131, i16 -131, i16 -131, i16 -131, i16 -131, i16 -131, i16 -131, i16 -131, i16 -131, i16 -131, i16 -131, i16 -131, i16 7, i16 -131], align 16
@yydefgoto = internal unnamed_addr constant [72 x i16] [i16 -1, i16 9, i16 23, i16 24, i16 45, i16 63, i16 64, i16 99, i16 107, i16 65, i16 136, i16 66, i16 67, i16 111, i16 10, i16 11, i16 12, i16 13, i16 100, i16 101, i16 175, i16 143, i16 163, i16 88, i16 14, i16 215, i16 185, i16 49, i16 147, i16 119, i16 208, i16 257, i16 91, i16 183, i16 149, i16 102, i16 96, i16 190, i16 15, i16 187, i16 220, i16 156, i16 16, i16 17, i16 127, i16 52, i16 55, i16 56, i16 132, i16 124, i16 18, i16 58, i16 105, i16 204, i16 205, i16 180, i16 237, i16 238, i16 239, i16 240, i16 267, i16 275, i16 279, i16 282, i16 285, i16 288, i16 19, i16 68, i16 113, i16 20, i16 201, i16 70], align 16
@.str = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@yytname = internal unnamed_addr constant [110 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr null], align 16
@.str.6 = private unnamed_addr constant [28 x i8] c"syntax error, unexpected %s\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"syntax error, unexpected %s, expecting %s\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"syntax error, unexpected %s, expecting %s or %s\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"syntax error, unexpected %s, expecting %s or %s or %s\00", align 1
@.str.10 = private unnamed_addr constant [60 x i8] c"syntax error, unexpected %s, expecting %s or %s or %s or %s\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"\22end of string\22\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"$undefined\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"\22PARAM_MT\22\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"\22CONCAT_MT\22\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"\22INVERSE_MT\22\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"\22PASSTHROUGH_MT\22\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"\22PROJCS\22\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"\22PROJECTION\22\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"\22GEOGCS\22\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"\22DATUM\22\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"\22SPHEROID\22\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"\22PRIMEM\22\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"\22UNIT\22\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"\22LINUNIT\22\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"\22GEOCCS\22\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"\22AUTHORITY\22\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"\22VERT_CS\22\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"\22VERTCS\22\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"\22VERT_DATUM\22\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"\22VDATUM\22\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"\22COMPD_CS\22\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"\22AXIS\22\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"\22TOWGS84\22\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"\22FITTED_CS\22\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"\22LOCAL_CS\22\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"\22LOCAL_DATUM\22\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"\22PARAMETER\22\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"\22EXTENSION\22\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"\22string\22\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"\22number\22\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"\22identifier\22\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"'['\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"'('\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"']'\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"')'\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"','\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"$accept\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"begin_node\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"begin_node_name\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"end_node\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"math_transform\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"param_mt\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"parameter\00", align 1
@.str.56 = private unnamed_addr constant [19 x i8] c"opt_parameter_list\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"concat_mt\00", align 1
@.str.58 = private unnamed_addr constant [24 x i8] c"opt_math_transform_list\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"inv_mt\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"passthrough_mt\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"coordinate_system\00", align 1
@.str.63 = private unnamed_addr constant [29 x i8] c"horz_cs_with_opt_esri_vertcs\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"horz_cs\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"projected_cs\00", align 1
@.str.66 = private unnamed_addr constant [31 x i8] c"opt_parameter_list_linear_unit\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"parameter_list_linear_unit\00", align 1
@.str.68 = private unnamed_addr constant [34 x i8] c"opt_twin_axis_extension_authority\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"opt_authority\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"extension\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"projection\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"geographic_cs\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"linunit\00", align 1
@.str.74 = private unnamed_addr constant [45 x i8] c"opt_linunit_or_twin_axis_extension_authority\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"datum\00", align 1
@.str.76 = private unnamed_addr constant [32 x i8] c"opt_towgs84_authority_extension\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"spheroid\00", align 1
@.str.78 = private unnamed_addr constant [16 x i8] c"semi_major_axis\00", align 1
@.str.79 = private unnamed_addr constant [19 x i8] c"inverse_flattening\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"prime_meridian\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"longitude\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"angular_unit\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"linear_unit\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"unit\00", align 1
@.str.85 = private unnamed_addr constant [18 x i8] c"conversion_factor\00", align 1
@.str.86 = private unnamed_addr constant [14 x i8] c"geocentric_cs\00", align 1
@.str.87 = private unnamed_addr constant [35 x i8] c"opt_three_axis_extension_authority\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"three_axis\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"authority\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"vert_cs\00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"esri_vert_cs\00", align 1
@.str.92 = private unnamed_addr constant [19 x i8] c"opt_axis_authority\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"vert_datum\00", align 1
@.str.94 = private unnamed_addr constant [16 x i8] c"vdatum_or_datum\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"vdatum\00", align 1
@.str.96 = private unnamed_addr constant [24 x i8] c"opt_extension_authority\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"datum_type\00", align 1
@.str.98 = private unnamed_addr constant [9 x i8] c"compd_cs\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c"head_cs\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"tail_cs\00", align 1
@.str.101 = private unnamed_addr constant [10 x i8] c"twin_axis\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@.str.103 = private unnamed_addr constant [8 x i8] c"towgs84\00", align 1
@.str.104 = private unnamed_addr constant [19 x i8] c"towgs84_parameters\00", align 1
@.str.105 = private unnamed_addr constant [17 x i8] c"three_parameters\00", align 1
@.str.106 = private unnamed_addr constant [17 x i8] c"seven_parameters\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"dx\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"dy\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"dz\00", align 1
@.str.110 = private unnamed_addr constant [3 x i8] c"ex\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"ey\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"ez\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"ppm\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"fitted_cs\00", align 1
@.str.115 = private unnamed_addr constant [8 x i8] c"to_base\00", align 1
@.str.116 = private unnamed_addr constant [8 x i8] c"base_cs\00", align 1
@.str.117 = private unnamed_addr constant [9 x i8] c"local_cs\00", align 1
@.str.118 = private unnamed_addr constant [24 x i8] c"opt_axis_list_authority\00", align 1
@.str.119 = private unnamed_addr constant [12 x i8] c"local_datum\00", align 1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 3) i32 @pj_wkt1_parse(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [200 x i16], align 16             ; 6 uses
  %i.c = alloca [200 x i32], align 16             ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 11 uses
  %i.e = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store i64 128, ptr %i.e, align 8, !tbaa !9
  br label %bb.c

bb.b:                                             ; preds = %bb.y, %bb.s
  %.0197 = phi i32 [ %i.ay, %bb.s ], [ %i.ci, %bb.y ]
  %.0178 = phi ptr [ %.3181, %bb.s ], [ %i.bq, %bb.y ]
  %.0165 = phi ptr [ %i.bc, %bb.s ], [ %i.br, %bb.y ]
  %.0154 = phi i32 [ -2, %bb.s ], [ %.5, %bb.y ]
  %i.f = getelementptr inbounds nuw i8, ptr %.0178, i64 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1198.a = phi i32 [ 0, %bb.a ], [ %.0197, %bb.b ] ; 3 uses
  %.0187 = phi ptr [ %i.b, %bb.a ], [ %.3190, %bb.b ] ; 8 uses
  %.1179 = phi ptr [ %i.b, %bb.a ], [ %i.f, %bb.b ] ; 4 uses
  %.0174 = phi ptr [ %i.c, %bb.a ], [ %.3177, %bb.b ] ; 2 uses
  %.1166 = phi ptr [ %i.c, %bb.a ], [ %.0165, %bb.b ]
  %.0162 = phi i64 [ 200, %bb.a ], [ %.2164, %bb.b ] ; 4 uses
  %.1155 = phi i32 [ -2, %bb.a ], [ %.0154, %bb.b ] ; 3 uses
  %i.g = trunc nsw i32 %.1198.a to i16
  store i16 %i.g, ptr %.1179, align 2, !tbaa !11
  %i.h = getelementptr inbounds [2 x i8], ptr %.0187, i64 %.0162
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -2
  %.not = icmp ugt ptr %i.i, %.1179
  br i1 %.not, label %.thread250, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = ptrtoint ptr %.1179 to i64
  %i.k = ptrtoint ptr %.0187 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 1
  %i.n = add nsw i64 %i.m, 1                      ; 5 uses
  %i.o = icmp sgt i64 %.0162, 9999
  br i1 %i.o, label %.thread286.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = shl nsw i64 %.0162, 1
  %spec.store.select = call i64 @llvm.smin.i64(i64 %i.p, i64 10000) ; 4 uses
  %i.q = mul nsw i64 %spec.store.select, 6
  %i.r = or disjoint i64 %i.q, 3
  %i.s = call ptr @malloc(i64 noundef %i.r) #9    ; 6 uses
  %.not216.not = icmp eq ptr %i.s, null
  br i1 %.not216.not, label %.thread286.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = shl i64 %i.n, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.s, ptr align 2 %.0187, i64 %i.t, i1 false)
  %i.u = shl nsw i64 %spec.store.select, 1
  %i.v = or disjoint i64 %i.u, 3
  %i.w = sdiv i64 %i.v, 4
  %i.x = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.w ; 3 uses
  %i.y = shl i64 %i.n, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %.0174, i64 %i.y, i1 false)
  %.not217 = icmp eq ptr %.0187, %i.b
  br i1 %.not217, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %.0187)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.z = getelementptr inbounds [2 x i8], ptr %i.s, i64 %i.n
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -2
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.n
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -4
  %.not218 = icmp sgt i64 %spec.store.select, %i.n
  br i1 %.not218, label %.thread250, label %.thread286.thread

.thread250:                                       ; preds = %bb.h, %bb.c
  %.3190 = phi ptr [ %.0187, %bb.c ], [ %i.s, %bb.h ] ; 6 uses
  %.3181 = phi ptr [ %.1179, %bb.c ], [ %i.aa, %bb.h ] ; 4 uses
  %.3177 = phi ptr [ %.0174, %bb.c ], [ %i.x, %bb.h ]
  %.3168 = phi ptr [ %.1166, %bb.c ], [ %i.ac, %bb.h ] ; 3 uses
  %.2164 = phi i64 [ %.0162, %bb.c ], [ %spec.store.select, %bb.h ]
  %i.ad = icmp eq i32 %.1198.a, 32
  br i1 %i.ad, label %.thread286, label %bb.i

bb.i:                                             ; preds = %.thread250
  %i.ae = sext i32 %.1198.a to i64                ; 2 uses
  %i.af = getelementptr inbounds [2 x i8], ptr @yypact, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !11 ; 2 uses
  %i.ah = sext i16 %i.ag to i32
  %i.ai = icmp eq i16 %i.ag, -131
  br i1 %i.ai, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = icmp eq i32 %.1155, -2
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = call i32 @pj_wkt1_lex(ptr noundef nonnull %i.a, ptr noundef %0) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2156 = phi i32 [ %i.ak, %bb.k ], [ %.1155, %bb.j ] ; 5 uses
  %i.al = icmp slt i32 %.2156, 1
  br i1 %i.al, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = icmp samesign ult i32 %.2156, 287
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = zext nneg i32 %.2156 to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @yytranslate, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !12
  %i.aq = sext i8 %i.ap to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.0159 = phi i32 [ 0, %bb.l ], [ %i.aq, %bb.n ], [ 2, %bb.m ] ; 2 uses
  %.3 = phi i32 [ 0, %bb.l ], [ %.2156, %bb.n ], [ %.2156, %bb.m ] ; 3 uses
  %i.ar = add nsw i32 %.0159, %i.ah               ; 2 uses
  %or.cond3 = icmp ugt i32 %i.ar, 255
  br i1 %or.cond3, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr @yycheck, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2, !tbaa !11
  %i.av = sext i16 %i.au to i32
  %.not219 = icmp eq i32 %.0159, %i.av
  br i1 %.not219, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr @yytable, i64 %i.as
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !11 ; 2 uses
  %i.ay = sext i16 %i.ax to i32                   ; 2 uses
  %i.az = icmp slt i16 %i.ax, 1
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = sub nsw i32 0, %i.ay
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.bb = load i32, ptr %i.a, align 4, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %.3168, i64 4 ; 2 uses
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !13
  br label %bb.b

bb.t:                                             ; preds = %bb.o, %bb.p, %bb.i
  %.4 = phi i32 [ %.1155, %bb.i ], [ %.3, %bb.o ], [ %.3, %bb.p ] ; 4 uses
  %i.bd = getelementptr inbounds i8, ptr @yydefact, i64 %i.ae
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !12  ; 2 uses
  %i.bf = sext i8 %i.be to i32
  %i.bg = icmp eq i8 %i.be, 0
  br i1 %i.bg, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.0161 = phi i32 [ %i.bf, %bb.t ], [ %i.ba, %bb.r ]
  %.5 = phi i32 [ %.4, %bb.t ], [ %.3, %bb.r ]
  %i.bh = sext i32 %.0161 to i64                  ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr @yyr2, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !12
  %i.bk = sext i8 %i.bj to i64                    ; 2 uses
  %i.bl = sub nsw i64 1, %i.bk
  %i.bm = getelementptr inbounds [4 x i8], ptr %.3168, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !13
  %i.bo = sub nsw i64 0, %i.bk                    ; 2 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %.3168, i64 %i.bo
  %i.bq = getelementptr inbounds [2 x i8], ptr %.3181, i64 %i.bo ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 4 ; 2 uses
  store i32 %i.bn, ptr %i.br, align 4, !tbaa !13
  %i.bs = getelementptr inbounds i8, ptr @yyr1, i64 %i.bh
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !12
  %i.bu = sext i8 %i.bt to i64
  %i.bv = add nsw i64 %i.bu, -37                  ; 2 uses
  %i.bw = getelementptr inbounds [2 x i8], ptr @yypgoto, i64 %i.bv
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !11
  %i.by = sext i16 %i.bx to i32
  %i.bz = load i16, ptr %i.bq, align 2, !tbaa !11 ; 2 uses
  %i.ca = sext i16 %i.bz to i32
  %i.cb = add nsw i32 %i.ca, %i.by                ; 2 uses
  %or.cond5 = icmp ult i32 %i.cb, 256
  br i1 %or.cond5, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cc = zext nneg i32 %i.cb to i64              ; 2 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr @yycheck, i64 %i.cc
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !11
  %i.cf = icmp eq i16 %i.ce, %i.bz
  br i1 %i.cf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr @yytable, i64 %i.cc
  br label %bb.y

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.ch = getelementptr inbounds [2 x i8], ptr @yydefgoto, i64 %i.bv
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.in.in = phi ptr [ %i.cg, %bb.w ], [ %i.ch, %bb.x ]
  %.in = load i16, ptr %.in.in, align 2, !tbaa !11
  %i.ci = sext i16 %.in to i32
  br label %bb.b

bb.z:                                             ; preds = %bb.t
  %i.cj = icmp eq i32 %.4, -2
  br i1 %i.cj, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %or.cond7 = icmp ult i32 %.4, 287
  br i1 %or.cond7, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ck = zext nneg i32 %.4 to i64
  %i.cl = getelementptr inbounds nuw i8, ptr @yytranslate, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !12
  %i.cn = sext i8 %i.cm to i32
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.aa, %bb.ab
  %1 = phi i32 [ -2, %bb.z ], [ %i.cn, %bb.ab ], [ 2, %bb.aa ] ; 2 uses
  %i.co = call fastcc i32 @yysyntax_error(ptr noundef %i.e, ptr nonnull %i.d, ptr noundef %.3181, i32 noundef %1)
  switch i32 %i.co, label %.thread258 [
    i32 0, label %.thread286.sink.split
    i32 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.cp = load i64, ptr %i.e, align 8, !tbaa !9
  %i.cq = call ptr @malloc(i64 noundef %i.cp) #9  ; 5 uses
  %.not223 = icmp eq ptr %i.cq, null
  br i1 %.not223, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i64 128, ptr %i.e, align 8, !tbaa !9
  br label %.thread258

.thread258:                                       ; preds = %bb.ae, %bb.ac
  call void @pj_wkt1_error(ptr noundef %0, ptr noundef nonnull @.str) #8
  br label %.thread286.sink.split

bb.af:                                            ; preds = %bb.ad
  %i.cr = call fastcc i32 @yysyntax_error(ptr noundef %i.e, ptr nonnull %i.cq, ptr noundef %.3181, i32 noundef %1)
  call void @pj_wkt1_error(ptr noundef %0, ptr noundef nonnull %i.cq) #8
  %i.cs = icmp eq i32 %i.cr, 2
  br i1 %i.cs, label %.thread286.sink.split, label %.thread286

.thread286.sink.split:                            ; preds = %bb.d, %bb.e, %bb.af, %.thread258, %bb.ac
  %.sink = phi ptr [ %i.d, %bb.ac ], [ @.str.3, %.thread258 ], [ @.str.3, %bb.af ], [ @.str.3, %bb.e ], [ @.str.3, %bb.d ]
  %.0160284.ph = phi i32 [ 1, %bb.ac ], [ 2, %.thread258 ], [ 2, %bb.af ], [ 2, %bb.e ], [ 2, %bb.d ]
  %.6193278.ph = phi ptr [ %.3190, %bb.ac ], [ %.3190, %.thread258 ], [ %.3190, %bb.af ], [ %.0187, %bb.e ], [ %.0187, %bb.d ]
  %.4236276.ph = phi ptr [ %i.d, %bb.ac ], [ %i.d, %.thread258 ], [ %i.cq, %bb.af ], [ %i.d, %bb.e ], [ %i.d, %bb.d ]
  call void @pj_wkt1_error(ptr noundef %0, ptr noundef nonnull %.sink) #8
  br label %.thread286

.thread286:                                       ; preds = %.thread250, %.thread286.sink.split, %bb.af
  %.0160284 = phi i32 [ 1, %bb.af ], [ %.0160284.ph, %.thread286.sink.split ], [ 0, %.thread250 ] ; 2 uses
  %.6193278 = phi ptr [ %.3190, %bb.af ], [ %.6193278.ph, %.thread286.sink.split ], [ %.3190, %.thread250 ] ; 2 uses
  %.4236276 = phi ptr [ %i.cq, %bb.af ], [ %.4236276.ph, %.thread286.sink.split ], [ %i.d, %.thread250 ] ; 2 uses
  %.not226 = icmp eq ptr %.6193278, %i.b
  br i1 %.not226, label %bb.ag, label %.thread286.thread

.thread286.thread:                                ; preds = %bb.h, %.thread286
  %.4236276333 = phi ptr [ %.4236276, %.thread286 ], [ %i.d, %bb.h ]
  %.6193278332 = phi ptr [ %.6193278, %.thread286 ], [ %i.s, %bb.h ]
  %.0160284330 = phi i32 [ %.0160284, %.thread286 ], [ 1, %bb.h ]
  call void @free(ptr noundef %.6193278332)
  br label %bb.ag

bb.ag:                                            ; preds = %.thread286.thread, %.thread286
  %.4236276334 = phi ptr [ %.4236276333, %.thread286.thread ], [ %.4236276, %.thread286 ] ; 2 uses
  %.0160284331 = phi i32 [ %.0160284330, %.thread286.thread ], [ %.0160284, %.thread286 ]
  %.not227 = icmp eq ptr %.4236276334, %i.d
  br i1 %.not227, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @free(ptr noundef %.4236276334)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0160284331
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare i32 @pj_wkt1_lex(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 3) i32 @yysyntax_error(ptr nofree noundef nonnull captures(none) %0, ptr %.0.val, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef range(i32 -128, 128) %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca [5 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %.not = icmp eq i32 %2, -2
  br i1 %.not, label %.thread10, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %1, align 2, !tbaa !11
  %i.c = sext i16 %i.b to i64
  %i.d = getelementptr inbounds [2 x i8], ptr @yypact, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2, !tbaa !11   ; 4 uses
  %i.f = sext i16 %i.e to i32                     ; 2 uses
  %i.g = sext i32 %2 to i64
  %i.h = getelementptr inbounds [8 x i8], ptr @yytname, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 4 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !12
  %i.k = icmp eq i8 %i.j, 34
  br i1 %i.k, label %.preheader31.split.us.i, label %.thread.i

.preheader31.split.us.i:                          ; preds = %bb.b, %bb.d
  %.020.us.i = phi i64 [ %i.p, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %.019.us.i = phi ptr [ %.1.us.i, %bb.d ], [ %i.i, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.019.us.i, i64 1 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !12
  switch i8 %i.m, label %bb.d [
    i8 39, label %.thread.i
    i8 44, label %.thread.i
    i8 92, label %bb.c
    i8 34, label %yytnamerr.exit
  ]

bb.c:                                             ; preds = %.preheader31.split.us.i
  %i.n = getelementptr inbounds nuw i8, ptr %.019.us.i, i64 2 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !12
  %.not25.us.i = icmp eq i8 %i.o, 92
  br i1 %.not25.us.i, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c, %.preheader31.split.us.i
  %.1.us.i = phi ptr [ %i.l, %.preheader31.split.us.i ], [ %i.n, %bb.c ]
  %i.p = add nuw nsw i64 %.020.us.i, 1
  br label %.preheader31.split.us.i

.thread.i:                                        ; preds = %bb.c, %.preheader31.split.us.i, %.preheader31.split.us.i, %bb.b
  %strlen.i.i = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.i)
  br label %yytnamerr.exit

yytnamerr.exit:                                   ; preds = %.preheader31.split.us.i, %.thread.i
  %.122.i = phi i64 [ %strlen.i.i, %.thread.i ], [ %.020.us.i, %.preheader31.split.us.i ] ; 4 uses
  store ptr %i.i, ptr %i.a, align 16, !tbaa !16
  %i.q = icmp eq i16 %i.e, -131
  br i1 %i.q, label %.thread10, label %bb.e

bb.e:                                             ; preds = %yytnamerr.exit
  %i.r = icmp slt i16 %i.e, 0
  %i.s = sub nsw i32 0, %i.f
  %i.t = select i1 %i.r, i32 %i.s, i32 0          ; 2 uses
  %i.u = sub nsw i32 256, %i.f
  %i.v = tail call i32 @llvm.smin.i32(i32 %i.u, i32 37) ; 2 uses
  %i.w = icmp slt i32 %i.t, %i.v
  br i1 %i.w, label %.lr.ph.preheader, label %.thread10

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.x = sext i32 %i.t to i64
  %i.y = sext i16 %i.e to i64
  %i.z = sext i32 %i.v to i64
  %invariant.gep = getelementptr [2 x i8], ptr @yycheck, i64 %i.y
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ %i.x, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 5 uses
  %.07623 = phi i64 [ %.122.i, %.lr.ph.preheader ], [ %.278, %bb.j ] ; 3 uses
  %.08022 = phi i32 [ 1, %.lr.ph.preheader ], [ %.181, %bb.j ] ; 4 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.aa = load i16, ptr %gep, align 2, !tbaa !11
  %i.ab = sext i16 %i.aa to i64
  %i.ac = icmp eq i64 %indvars.iv, %i.ab
  %i.ad = icmp ne i64 %indvars.iv, 1
  %or.cond = and i1 %i.ad, %i.ac
  br i1 %or.cond, label %bb.f, label %bb.j

bb.f:                                             ; preds = %.lr.ph
  %i.ae = icmp eq i32 %.08022, 5
  br i1 %i.ae, label %.thread10, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds [8 x i8], ptr @yytname, i64 %indvars.iv
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !16 ; 4 uses
  %i.ah = add nsw i32 %.08022, 1                  ; 2 uses
  %i.ai = sext i32 %.08022 to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ai
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !16
  %i.ak = load i8, ptr %i.ag, align 1, !tbaa !12
  %i.al = icmp eq i8 %i.ak, 34
  br i1 %i.al, label %.preheader31.split.us.i114, label %yytnamerr.exit120

.preheader31.split.us.i114:                       ; preds = %bb.g, %bb.i
  %.020.us.i115 = phi i64 [ %i.ar, %bb.i ], [ 0, %bb.g ] ; 2 uses
  %.019.us.i116 = phi ptr [ %.1.us.i119, %bb.i ], [ %i.ag, %bb.g ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.019.us.i116, i64 1 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !12
  switch i8 %i.an, label %bb.i [
    i8 39, label %yytnamerr.exit120
    i8 44, label %yytnamerr.exit120
    i8 92, label %bb.h
    i8 34, label %yytnamerr.exit120.thread
  ]

yytnamerr.exit120.thread:                         ; preds = %.preheader31.split.us.i114
  %i.ao = add nsw i64 %.020.us.i115, %.07623
  br label %bb.j

bb.h:                                             ; preds = %.preheader31.split.us.i114
  %i.ap = getelementptr inbounds nuw i8, ptr %.019.us.i116, i64 2 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !12
  %.not25.us.i118 = icmp eq i8 %i.aq, 92
  br i1 %.not25.us.i118, label %bb.i, label %yytnamerr.exit120

bb.i:                                             ; preds = %bb.h, %.preheader31.split.us.i114
  %.1.us.i119 = phi ptr [ %i.am, %.preheader31.split.us.i114 ], [ %i.ap, %bb.h ]
  %i.ar = add nuw nsw i64 %.020.us.i115, 1
  br label %.preheader31.split.us.i114

yytnamerr.exit120:                                ; preds = %.preheader31.split.us.i114, %.preheader31.split.us.i114, %bb.h, %bb.g
  %strlen.i.i111 = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ag) ; 2 uses
  %.not104 = icmp sgt i64 %strlen.i.i111, -1
  %i.as = add nsw i64 %strlen.i.i111, %.07623
  br i1 %.not104, label %bb.j, label %.critedge

bb.j:                                             ; preds = %yytnamerr.exit120.thread, %.lr.ph, %yytnamerr.exit120
  %.181 = phi i32 [ %i.ah, %yytnamerr.exit120 ], [ %.08022, %.lr.ph ], [ %i.ah, %yytnamerr.exit120.thread ] ; 8 uses
  %.278 = phi i64 [ %i.as, %yytnamerr.exit120 ], [ %.07623, %.lr.ph ], [ %i.ao, %yytnamerr.exit120.thread ] ; 7 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.at = icmp slt i64 %indvars.iv.next, %i.z
  br i1 %i.at, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j
  switch i32 %.181, label %.thread10 [
    i32 5, label %bb.o
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 3, label %bb.m
    i32 4, label %bb.n
  ]

bb.k:                                             ; preds = %._crit_edge
  br label %.thread10

bb.l:                                             ; preds = %._crit_edge
  br label %.thread10

bb.m:                                             ; preds = %._crit_edge
  br label %.thread10

bb.n:                                             ; preds = %._crit_edge
  br label %.thread10

bb.o:                                             ; preds = %._crit_edge
  br label %.thread10

.thread10:                                        ; preds = %bb.f, %bb.e, %yytnamerr.exit, %bb.a, %._crit_edge, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %.79 = phi i64 [ %.278, %bb.n ], [ %.278, %bb.o ], [ %.278, %bb.k ], [ %.278, %bb.l ], [ %.278, %bb.m ], [ %.278, %._crit_edge ], [ 0, %bb.a ], [ %.122.i, %yytnamerr.exit ], [ %.122.i, %bb.e ], [ %.122.i, %bb.f ] ; 2 uses
  %.6867 = phi i32 [ %.181, %bb.n ], [ %.181, %bb.o ], [ %.181, %bb.k ], [ %.181, %bb.l ], [ %.181, %bb.m ], [ %.181, %._crit_edge ], [ 0, %bb.a ], [ 1, %yytnamerr.exit ], [ 1, %bb.e ], [ 1, %bb.f ] ; 2 uses
  %.087 = phi ptr [ @.str.9, %bb.n ], [ @.str.10, %bb.o ], [ @.str.6, %bb.k ], [ @.str.7, %bb.l ], [ @.str.8, %bb.m ], [ @.str, %._crit_edge ], [ @.str, %bb.a ], [ @.str.6, %yytnamerr.exit ], [ @.str.6, %bb.e ], [ @.str.6, %bb.f ] ; 2 uses
  %strlen.i = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.087)
  %i.au = shl nsw i32 %.6867, 1
  %i.av = sext i32 %i.au to i64
  %i.aw = sub nsw i64 %strlen.i, %i.av
  %i.ax = add nsw i64 %i.aw, %.79                 ; 3 uses
  %i.ay = add nsw i64 %i.ax, 1                    ; 2 uses
  %.not105.not = icmp sgt i64 %.79, %i.ay
  br i1 %.not105.not, label %.critedge, label %bb.p

bb.p:                                             ; preds = %.thread10
  %i.az = load i64, ptr %0, align 8, !tbaa !9
  %.not13 = icmp sgt i64 %i.az, %i.ax
  br i1 %.not13, label %.preheader, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = shl nsw i64 %i.ay, 1                    ; 2 uses
  %.not107.not = icmp slt i64 %i.ax, %i.ba
  %spec.store.select = select i1 %.not107.not, i64 %i.ba, i64 9223372036854775807
  store i64 %spec.store.select, ptr %0, align 8, !tbaa !9
  br label %.critedge

.preheader:                                       ; preds = %bb.p, %yytnamerr.exit131
  %.188 = phi ptr [ %i.ca, %yytnamerr.exit131 ], [ %.087, %bb.p ] ; 3 uses
  %.071 = phi ptr [ %i.bz, %yytnamerr.exit131 ], [ %.0.val, %bb.p ] ; 6 uses
  %.0 = phi i32 [ %.1, %yytnamerr.exit131 ], [ 0, %bb.p ] ; 5 uses
  %i.bb = load i8, ptr %.188, align 1, !tbaa !12  ; 2 uses
  store i8 %i.bb, ptr %.071, align 1, !tbaa !12
  switch i8 %i.bb, label %yytnamerr.exit131 [
    i8 0, label %.critedge
    i8 37, label %bb.r
  ]

bb.r:                                             ; preds = %.preheader
  %i.bc = getelementptr inbounds nuw i8, ptr %.188, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !12
  %i.be = icmp eq i8 %i.bd, 115
  %i.bf = icmp slt i32 %.0, %.6867
  %or.cond108 = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %or.cond108, label %bb.s, label %yytnamerr.exit131

bb.s:                                             ; preds = %bb.r
  %i.bg = add nsw i32 %.0, 1                      ; 2 uses
  %i.bh = sext i32 %.0 to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !16 ; 3 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !12
  %i.bl = icmp eq i8 %i.bk, 34
  br i1 %i.bl, label %.preheader31.split.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.t, %.preheader31.split.i, %.preheader31.split.i, %bb.s
  br label %.preheader.i

.preheader31.split.i:                             ; preds = %bb.s, %bb.u
  %.020.i = phi i64 [ %i.br, %bb.u ], [ 0, %bb.s ] ; 4 uses
  %.019.i = phi ptr [ %.1.i, %bb.u ], [ %i.bj, %bb.s ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.019.i, i64 1 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !12  ; 2 uses
  switch i8 %i.bn, label %bb.u [
    i8 39, label %.preheader.i.preheader
    i8 44, label %.preheader.i.preheader
    i8 92, label %bb.t
    i8 34, label %.split.us.thread.i
  ]

bb.t:                                             ; preds = %.preheader31.split.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.019.i, i64 2 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !12
  %.not25.i = icmp eq i8 %i.bp, 92
  br i1 %.not25.i, label %bb.u, label %.preheader.i.preheader

bb.u:                                             ; preds = %bb.t, %.preheader31.split.i
  %.1.i = phi ptr [ %i.bm, %.preheader31.split.i ], [ %i.bo, %bb.t ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.071, i64 %.020.i
  store i8 %i.bn, ptr %i.bq, align 1, !tbaa !12
  %i.br = add nuw nsw i64 %.020.i, 1
  br label %.preheader31.split.i

.split.us.thread.i:                               ; preds = %.preheader31.split.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.071, i64 %.020.i
  store i8 0, ptr %i.bs, align 1, !tbaa !12
  br label %yytnamerr.exit131

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.05.i.i = phi ptr [ %i.bv, %.preheader.i ], [ %.071, %.preheader.i.preheader ] ; 3 uses
  %.0.i.i = phi ptr [ %i.bt, %.preheader.i ], [ %i.bj, %.preheader.i.preheader ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  %i.bu = load i8, ptr %.0.i.i, align 1, !tbaa !12 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 1
  store i8 %i.bu, ptr %.05.i.i, align 1, !tbaa !12
  %.not.i.i = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i, label %yystpcpy.exit.i, label %.preheader.i

yystpcpy.exit.i:                                  ; preds = %.preheader.i
  %i.bw = ptrtoint ptr %.05.i.i to i64
  %i.bx = ptrtoint ptr %.071 to i64
  %i.by = sub i64 %i.bw, %i.bx
  br label %yytnamerr.exit131

yytnamerr.exit131:                                ; preds = %bb.r, %.preheader, %yystpcpy.exit.i, %.split.us.thread.i
  %.sink45 = phi i64 [ %.020.i, %.split.us.thread.i ], [ %i.by, %yystpcpy.exit.i ], [ 1, %.preheader ], [ 1, %bb.r ]
  %.sink = phi i64 [ 2, %.split.us.thread.i ], [ 2, %yystpcpy.exit.i ], [ 1, %.preheader ], [ 1, %bb.r ]
  %.1 = phi i32 [ %i.bg, %.split.us.thread.i ], [ %i.bg, %yystpcpy.exit.i ], [ %.0, %.preheader ], [ %.0, %bb.r ]
  %i.bz = getelementptr inbounds i8, ptr %.071, i64 %.sink45
  %i.ca = getelementptr inbounds nuw i8, ptr %.188, i64 %.sink
  br label %.preheader

.critedge:                                        ; preds = %yytnamerr.exit120, %.preheader, %bb.q, %.thread10
  %.898 = phi i32 [ 1, %bb.q ], [ 0, %.preheader ], [ 2, %.thread10 ], [ 2, %yytnamerr.exit120 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.898
}

declare void @pj_wkt1_error(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #8 = { nounwind }
attributes #9 = { allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"long", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"short", !4, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!4, !4, i64 0}
!13 = !{!5, !5, i64 0}
!14 = !{!"any pointer", !4, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!15, !15, i64 0}
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/yara_lexer?download=true
inline.NumInlined: 62
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdin = external local_unnamed_addr global ptr, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@yy_ec = internal unnamed_addr constant [256 x i8] c"\00\01\01\01\01\01\01\01\01\02\03\01\01\04\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\05\06\07\08\01\01\01\09\09\0A\01\01\09\01\0B\0C\0D\0E\0F\10\10\11\10\12\10\01\01\13\14\15\09\16\17\18\17\17\17\17\19\19\19\19\1A\19\1B\19\19\19\19\19\19\19\19\19\19\19\19\19\09\1C\09\01\1D\01\1E\1F !\22#$%&\19\19'()*+\19,-./012345\096\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", align 16
@yy_accept = internal unnamed_addr constant [219 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 76, i16 74, i16 73, i16 73, i16 74, i16 70, i16 51, i16 50, i16 71, i16 54, i16 54, i16 1, i16 74, i16 2, i16 52, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 74, i16 62, i16 63, i16 56, i16 75, i16 68, i16 69, i16 65, i16 75, i16 47, i16 48, i16 44, i16 44, i16 6, i16 51, i16 49, i16 50, i16 42, i16 45, i16 54, i16 0, i16 0, i16 0, i16 7, i16 3, i16 5, i16 4, i16 8, i16 52, i16 53, i16 53, i16 53, i16 53, i16 24, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 25, i16 53, i16 53, i16 53, i16 26, i16 23, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 0, i16 62, i16 64, i16 59, i16 60, i16 58, i16 57, i16 64, i16 68, i16 65, i16 65, i16 67, i16 66, i16 47, i16 43, i16 45, i16 54, i16 55, i16 29, i16 22, i16 30, i16 53, i16 53, i16 53, i16 53, i16 53, i16 28, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 21, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 72, i16 0, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 36, i16 53, i16 12, i16 53, i16 53, i16 11, i16 53, i16 27, i16 19, i16 53, i16 15, i16 61, i16 14, i16 53, i16 53, i16 53, i16 20, i16 53, i16 53, i16 53, i16 53, i16 53, i16 37, i16 38, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 33, i16 53, i16 53, i16 53, i16 53, i16 53, i16 10, i16 41, i16 53, i16 53, i16 17, i16 53, i16 53, i16 34, i16 35, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 39, i16 9, i16 13, i16 53, i16 40, i16 53, i16 32, i16 16, i16 0, i16 18, i16 53, i16 46, i16 31, i16 0], align 16
@yy_chk = internal unnamed_addr constant [412 x i16] [i16 0, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 3, i16 4, i16 5, i16 3, i16 4, i16 6, i16 19, i16 19, i16 20, i16 20, i16 5, i16 21, i16 21, i16 6, i16 22, i16 22, i16 24, i16 24, i16 32, i16 32, i16 46, i16 215, i16 27, i16 210, i16 27, i16 3, i16 4, i16 5, i16 27, i16 27, i16 6, i16 30, i16 20, i16 33, i16 39, i16 21, i16 35, i16 33, i16 73, i16 30, i16 49, i16 39, i16 46, i16 30, i16 84, i16 35, i16 119, i16 49, i16 30, i16 87, i16 208, i16 204, i16 128, i16 203, i16 128, i16 46, i16 73, i16 128, i16 84, i16 119, i16 46, i16 202, i16 213, i16 87, i16 46, i16 163, i16 213, i16 163, i16 201, i16 200, i16 163, i16 219, i16 219, i16 219, i16 219, i16 219, i16 219, i16 219, i16 219, i16 219, i16 219, i16 219, i16 220, i16 220, i16 220, i16 220, i16 220, i16 220, i16 220, i16 220, i16 220, i16 220, i16 220, i16 221, i16 221, i16 221, i16 221, i16 221, i16 221, i16 221, i16 221, i16 221, i16 221, i16 221, i16 222, i16 222, i16 222, i16 222, i16 222, i16 222, i16 222, i16 222, i16 222, i16 222, i16 222, i16 223, i16 223, i16 223, i16 223, i16 224, i16 199, i16 224, i16 224, i16 224, i16 224, i16 225, i16 196, i16 195, i16 225, i16 226, i16 226, i16 226, i16 226, i16 227, i16 227, i16 227, i16 227, i16 228, i16 228, i16 193, i16 192, i16 189, i16 228, i16 228, i16 229, i16 229, i16 188, i16 187, i16 229, i16 229, i16 229, i16 229, i16 229, i16 229, i16 230, i16 230, i16 230, i16 230, i16 230, i16 230, i16 230, i16 230, i16 230, i16 230, i16 230, i16 231, i16 231, i16 186, i16 231, i16 231, i16 185, i16 231, i16 231, i16 231, i16 231, i16 232, i16 232, i16 183, i16 232, i16 232, i16 232, i16 232, i16 232, i16 232, i16 232, i16 232, i16 233, i16 233, i16 233, i16 182, i16 233, i16 233, i16 233, i16 233, i16 233, i16 233, i16 233, i16 234, i16 234, i16 181, i16 234, i16 234, i16 234, i16 234, i16 234, i16 234, i16 234, i16 234, i16 235, i16 235, i16 236, i16 236, i16 237, i16 237, i16 180, i16 179, i16 178, i16 175, i16 174, i16 173, i16 172, i16 171, i16 169, i16 168, i16 167, i16 160, i16 158, i16 157, i16 155, i16 153, i16 152, i16 151, i16 150, i16 149, i16 148, i16 147, i16 146, i16 145, i16 144, i16 143, i16 142, i16 139, i16 138, i16 137, i16 136, i16 135, i16 134, i16 133, i16 131, i16 130, i16 129, i16 127, i16 126, i16 125, i16 124, i16 122, i16 121, i16 120, i16 118, i16 106, i16 97, i16 96, i16 95, i16 94, i16 93, i16 92, i16 91, i16 90, i16 86, i16 85, i16 83, i16 82, i16 81, i16 80, i16 79, i16 78, i16 77, i16 76, i16 74, i16 72, i16 63, i16 62, i16 58, i16 54, i16 50, i16 41, i16 40, i16 38, i16 37, i16 36, i16 34, i16 31, i16 29, i16 28, i16 23, i16 18, i16 15, i16 11, i16 10, i16 9, i16 8, i16 7, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218], align 16
@yy_base = internal unnamed_addr constant [238 x i16] [i16 0, i16 0, i16 0, i16 52, i16 53, i16 54, i16 57, i16 350, i16 349, i16 344, i16 343, i16 352, i16 357, i16 357, i16 357, i16 331, i16 357, i16 0, i16 340, i16 51, i16 37, i16 40, i16 50, i16 329, i16 51, i16 0, i16 0, i16 38, i16 306, i16 306, i16 56, i16 307, i16 33, i16 58, i16 303, i16 56, i16 300, i16 296, i16 296, i16 52, i16 303, i16 302, i16 0, i16 0, i16 357, i16 357, i16 69, i16 0, i16 357, i16 57, i16 328, i16 0, i16 357, i16 357, i16 327, i16 357, i16 0, i16 357, i16 327, i16 357, i16 0, i16 0, i16 312, i16 311, i16 0, i16 357, i16 357, i16 357, i16 357, i16 357, i16 0, i16 0, i16 295, i16 60, i16 301, i16 0, i16 291, i16 285, i16 291, i16 290, i16 284, i16 288, i16 284, i16 282, i16 67, i16 278, i16 277, i16 72, i16 0, i16 0, i16 284, i16 282, i16 276, i16 285, i16 271, i16 276, i16 283, i16 261, i16 0, i16 357, i16 357, i16 357, i16 357, i16 357, i16 0, i16 0, i16 269, i16 357, i16 357, i16 357, i16 0, i16 357, i16 0, i16 357, i16 0, i16 0, i16 0, i16 0, i16 275, i16 68, i16 268, i16 266, i16 276, i16 0, i16 270, i16 277, i16 265, i16 267, i16 94, i16 273, i16 274, i16 273, i16 0, i16 254, i16 267, i16 262, i16 259, i16 264, i16 251, i16 262, i16 357, i16 0, i16 257, i16 256, i16 263, i16 241, i16 257, i16 245, i16 240, i16 258, i16 243, i16 239, i16 268, i16 270, i16 0, i16 246, i16 0, i16 237, i16 251, i16 0, i16 239, i16 0, i16 0, i16 107, i16 0, i16 357, i16 0, i16 233, i16 240, i16 234, i16 0, i16 238, i16 233, i16 235, i16 227, i16 239, i16 0, i16 0, i16 237, i16 236, i16 223, i16 218, i16 227, i16 218, i16 0, i16 187, i16 181, i16 160, i16 149, i16 152, i16 0, i16 0, i16 161, i16 149, i16 0, i16 148, i16 136, i16 0, i16 0, i16 133, i16 79, i16 85, i16 82, i16 75, i16 104, i16 0, i16 0, i16 0, i16 64, i16 0, i16 37, i16 0, i16 0, i16 115, i16 0, i16 30, i16 357, i16 0, i16 357, i16 125, i16 136, i16 147, i16 158, i16 163, i16 169, i16 173, i16 177, i16 181, i16 190, i16 198, i16 208, i16 219, i16 229, i16 240, i16 251, i16 256, i16 258, i16 260], align 16
@yy_def = internal unnamed_addr constant [238 x i16] [i16 0, i16 218, i16 1, i16 219, i16 219, i16 220, i16 220, i16 221, i16 221, i16 222, i16 222, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 223, i16 224, i16 218, i16 225, i16 225, i16 218, i16 218, i16 218, i16 226, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 228, i16 229, i16 218, i16 218, i16 230, i16 231, i16 218, i16 218, i16 232, i16 233, i16 218, i16 218, i16 218, i16 218, i16 223, i16 218, i16 224, i16 218, i16 234, i16 21, i16 218, i16 218, i16 235, i16 218, i16 218, i16 218, i16 218, i16 218, i16 226, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 228, i16 229, i16 218, i16 218, i16 218, i16 218, i16 218, i16 236, i16 231, i16 218, i16 218, i16 218, i16 218, i16 233, i16 218, i16 234, i16 218, i16 235, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 218, i16 237, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 218, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 227, i16 218, i16 227, i16 227, i16 218, i16 227, i16 0, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218], align 16
@yy_meta = internal unnamed_addr constant [55 x i8] c"\00\01\02\03\01\01\04\01\01\02\05\06\07\07\07\07\07\07\07\01\01\01\01\08\08\09\0A\0A\0B\09\08\08\08\08\08\08\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09\09\01\01", align 16
@yy_nxt = internal unnamed_addr constant [412 x i16] [i16 0, i16 12, i16 13, i16 14, i16 13, i16 15, i16 16, i16 17, i16 18, i16 12, i16 12, i16 19, i16 20, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 26, i16 26, i16 26, i16 26, i16 12, i16 26, i16 27, i16 26, i16 28, i16 26, i16 29, i16 30, i16 31, i16 26, i16 32, i16 26, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 26, i16 41, i16 26, i16 26, i16 26, i16 42, i16 12, i16 44, i16 44, i16 48, i16 45, i16 45, i16 48, i16 59, i16 60, i16 62, i16 63, i16 49, i16 62, i16 63, i16 49, i16 65, i16 66, i16 68, i16 69, i16 83, i16 84, i16 100, i16 217, i16 72, i16 215, i16 73, i16 46, i16 46, i16 50, i16 74, i16 75, i16 50, i16 78, i16 64, i16 85, i16 93, i16 218, i16 88, i16 86, i16 116, i16 79, i16 106, i16 94, i16 101, i16 80, i16 127, i16 89, i16 143, i16 107, i16 81, i16 131, i16 214, i16 213, i16 152, i16 212, i16 153, i16 102, i16 117, i16 154, i16 128, i16 144, i16 103, i16 211, i16 213, i16 132, i16 104, i16 182, i16 216, i16 183, i16 210, i16 209, i16 184, i16 43, i16 43, i16 43, i16 43, i16 43, i16 43, i16 43, i16 43, i16 43, i16 43, i16 43, i16 47, i16 47, i16 47, i16 47, i16 47, i16 47, i16 47, i16 47, i16 47, i16 47, i16 47, i16 51, i16 51, i16 51, i16 51, i16 51, i16 51, i16 51, i16 51, i16 51, i16 51, i16 51, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 53, i16 56, i16 56, i16 56, i16 56, i16 58, i16 208, i16 58, i16 58, i16 58, i16 58, i16 61, i16 207, i16 206, i16 61, i16 70, i16 70, i16 70, i16 70, i16 71, i16 71, i16 71, i16 71, i16 97, i16 97, i16 205, i16 204, i16 203, i16 97, i16 97, i16 98, i16 98, i16 202, i16 201, i16 98, i16 98, i16 98, i16 98, i16 98, i16 98, i16 99, i16 99, i16 99, i16 99, i16 99, i16 99, i16 99, i16 99, i16 99, i16 99, i16 99, i16 105, i16 105, i16 200, i16 105, i16 105, i16 199, i16 105, i16 105, i16 105, i16 105, i16 108, i16 108, i16 198, i16 108, i16 108, i16 108, i16 108, i16 108, i16 108, i16 108, i16 108, i16 110, i16 110, i16 110, i16 197, i16 110, i16 110, i16 110, i16 110, i16 110, i16 110, i16 110, i16 112, i16 112, i16 196, i16 112, i16 112, i16 112, i16 112, i16 112, i16 112, i16 112, i16 112, i16 114, i16 114, i16 141, i16 141, i16 165, i16 165, i16 195, i16 194, i16 193, i16 192, i16 191, i16 190, i16 189, i16 188, i16 187, i16 186, i16 185, i16 181, i16 180, i16 179, i16 178, i16 177, i16 176, i16 175, i16 174, i16 173, i16 172, i16 171, i16 170, i16 169, i16 168, i16 167, i16 166, i16 164, i16 163, i16 162, i16 161, i16 160, i16 159, i16 158, i16 157, i16 156, i16 155, i16 151, i16 150, i16 149, i16 148, i16 147, i16 146, i16 145, i16 142, i16 107, i16 140, i16 139, i16 138, i16 137, i16 136, i16 135, i16 134, i16 133, i16 130, i16 129, i16 126, i16 125, i16 124, i16 123, i16 122, i16 121, i16 120, i16 119, i16 118, i16 115, i16 113, i16 113, i16 57, i16 111, i16 109, i16 96, i16 95, i16 92, i16 91, i16 90, i16 87, i16 82, i16 77, i16 76, i16 67, i16 57, i16 55, i16 218, i16 54, i16 54, i16 52, i16 52, i16 11, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218, i16 218], align 16
@yy_rule_can_match_eol = internal unnamed_addr constant [76 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0], align 16
@.str = private unnamed_addr constant [24 x i8] c"out of space in lex_buf\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"includes circular reference\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"includes depth exceeded\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"can't open include file: %s\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"includes are disabled\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"not enough memory\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"identifier too long\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"KB\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"MB\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"empty string\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"unterminated string\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"illegal escape sequence\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"empty regular expression\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"unterminated regular expression\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"non-ascii character\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c"fatal flex scanner internal error--no action found\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"out of dynamic memory in yy_create_buffer()\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"out of dynamic memory in yy_scan_buffer()\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"out of dynamic memory in yy_scan_bytes()\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"bad buffer in yy_scan_bytes()\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"yyset_lineno called with no buffer\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"yyset_column called with no buffer\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"yywarning(): %s line %d %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"(file name missing)\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"yyerror(): %s line %d %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"NULL filename\00", align 1
@.str.28 = private unnamed_addr constant [49 x i8] c"yara_lexer:yr_lex_parse_rules_string() disabled\0A\00", align 1
@.str.29 = private unnamed_addr constant [56 x i8] c"fatal flex scanner internal error--end of buffer missed\00", align 1
@.str.30 = private unnamed_addr constant [44 x i8] c"fatal error - scanner input buffer overflow\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"input in flex scanner failed\00", align 1
@.str.32 = private unnamed_addr constant [46 x i8] c"out of dynamic memory in yy_get_next_buffer()\00", align 1
@.str.33 = private unnamed_addr constant [49 x i8] c"out of dynamic memory in yyensure_buffer_stack()\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 0, 309) i32 @yara_yylex(ptr noundef %0, ptr nofree noundef initializes((144, 152)) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 11 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 18 uses
  store ptr %0, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !71
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.d, align 8, !tbaa !71
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !72
  %.not413 = icmp eq i32 %i.g, 0
  br i1 %.not413, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.f, align 4, !tbaa !72
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  %.not414 = icmp eq ptr %i.i, null
  br i1 %.not414, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr @stdin, align 8, !tbaa !73
  store ptr %i.j, ptr %i.h, align 8, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20
  %.not415 = icmp eq ptr %i.l, null
  br i1 %.not415, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr @stdout, align 8, !tbaa !73
  store ptr %i.m, ptr %i.k, align 8, !tbaa !20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21   ; 2 uses
  %.not416 = icmp eq ptr %i.o, null
  br i1 %.not416, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !24   ; 2 uses
  %.not417 = icmp eq ptr %i.s, null
  br i1 %.not417, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.i
  tail call fastcc void @yyensure_buffer_stack(ptr noundef nonnull %1)
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.u = tail call ptr @yy_create_buffer(ptr noundef %i.t, i32 noundef 16384, ptr noundef nonnull %1) ; 2 uses
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.x
  store ptr %i.u, ptr %i.y, align 8, !tbaa !24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = phi ptr [ %i.u, %bb.j ], [ %i.s, %bb.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !28 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !29
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !30
  %i.ah = load ptr, ptr %i.z, align 8, !tbaa !31
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !19
  %i.ai = load i8, ptr %i.ae, align 1, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i8 %i.ai, ptr %i.aj, align 8, !tbaa !33
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 12 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 13 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 28 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 20 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 13 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 416
  %i.ay = ptrtoint ptr %i.a to i64
  %.neg = add i64 %i.ay, 1024
  br label %.critedge441

.critedge441:                                     ; preds = %.critedge441.backedge, %bb.l
  %i.az = load ptr, ptr %i.ak, align 8, !tbaa !29 ; 3 uses
  %i.ba = load i8, ptr %i.al, align 8, !tbaa !33
  store i8 %i.ba, ptr %i.az, align 1, !tbaa !32
  %i.bb = load i32, ptr %i.am, align 4, !tbaa !72
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %.critedge441
  %.0391 = phi ptr [ %i.az, %.critedge441 ], [ %.0391.be, %.loopexit.backedge ]
  %.0387 = phi ptr [ %i.az, %.critedge441 ], [ %.0387.be, %.loopexit.backedge ]
  %.0359 = phi i32 [ %i.bb, %.critedge441 ], [ %.0359.be, %.loopexit.backedge ]
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %.loopexit
  %.1392 = phi ptr [ %.0391, %.loopexit ], [ %i.cj, %._crit_edge ] ; 3 uses
  %.1360 = phi i32 [ %.0359, %.loopexit ], [ %i.ci, %._crit_edge ] ; 3 uses
  %i.bc = load i8, ptr %.1392, align 1, !tbaa !32
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @yy_ec, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !32  ; 2 uses
  %i.bg = sext i32 %.1360 to i64                  ; 3 uses
  %i.bh = getelementptr inbounds [2 x i8], ptr @yy_accept, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !74
  %.not418 = icmp eq i16 %i.bi, 0
  br i1 %.not418, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %.1360, ptr %i.an, align 8, !tbaa !75
  store ptr %.1392, ptr %i.ao, align 8, !tbaa !76
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bj = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.bg
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !74
  %i.bl = sext i16 %i.bk to i64
  %i.bm = zext i8 %i.bf to i64                    ; 2 uses
  %i.bn = add nsw i64 %i.bl, %i.bm                ; 2 uses
  %i.bo = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !74
  %i.bq = sext i16 %i.bp to i32
  %.not419951 = icmp eq i32 %.1360, %i.bq
  br i1 %.not419951, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %bb.q
  %i.br = phi i64 [ %i.cc, %bb.q ], [ %i.bm, %bb.o ]
  %i.bs = phi i64 [ %i.by, %bb.q ], [ %i.bg, %bb.o ]
  %.0382952 = phi i8 [ %.1383, %bb.q ], [ %i.bf, %bb.o ]
  %i.bt = getelementptr inbounds [2 x i8], ptr @yy_def, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !74 ; 3 uses
  %i.bv = icmp sgt i16 %i.bu, 218
  br i1 %i.bv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph
  %i.bw = getelementptr inbounds nuw i8, ptr @yy_meta, i64 %i.br
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph
  %.1383 = phi i8 [ %i.bx, %bb.p ], [ %.0382952, %.lr.ph ] ; 2 uses
  %i.by = sext i16 %i.bu to i64                   ; 2 uses
  %i.bz = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !74
  %i.cb = sext i16 %i.ca to i64
  %i.cc = zext i8 %.1383 to i64                   ; 2 uses
  %i.cd = add nsw i64 %i.cb, %i.cc                ; 2 uses
  %i.ce = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.cd
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !74
  %.not419 = icmp eq i16 %i.bu, %i.cf
  br i1 %.not419, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.q, %bb.o
  %.lcssa = phi i64 [ %i.bn, %bb.o ], [ %i.cd, %bb.q ]
  %i.cg = getelementptr inbounds [2 x i8], ptr @yy_nxt, i64 %.lcssa
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !74 ; 2 uses
  %i.ci = sext i16 %i.ch to i32                   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.1392, i64 1 ; 2 uses
  %i.ck = sext i16 %i.ch to i64
  %i.cl = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !74
  %.not420 = icmp eq i16 %i.cm, 357
  br i1 %.not420, label %.preheader504.outer, label %bb.m

.preheader504.outer.backedge:                     ; preds = %._crit_edge.i479, %yy_get_next_buffer.exit.thread497, %yy_try_NUL_trans.exit
  %.2393.ph.be = phi ptr [ %i.ss, %yy_try_NUL_trans.exit ], [ %i.aew, %yy_get_next_buffer.exit.thread497 ], [ %i.aew, %._crit_edge.i479 ]
  %.1388.ph.be = phi ptr [ %i.sp, %yy_try_NUL_trans.exit ], [ %i.aeu, %yy_get_next_buffer.exit.thread497 ], [ %i.aeu, %._crit_edge.i479 ]
  %.3362.ph.be = phi i32 [ %.022.lcssa.i, %yy_try_NUL_trans.exit ], [ %i.aex, %yy_get_next_buffer.exit.thread497 ], [ %i.agg, %._crit_edge.i479 ]
  br label %.preheader504.outer

.preheader504.outer:                              ; preds = %._crit_edge, %.preheader504.outer.backedge
  %.2393.ph = phi ptr [ %.2393.ph.be, %.preheader504.outer.backedge ], [ %i.cj, %._crit_edge ]
  %.1388.ph = phi ptr [ %.1388.ph.be, %.preheader504.outer.backedge ], [ %.0387, %._crit_edge ] ; 2 uses
  %.3362.ph = phi i32 [ %.3362.ph.be, %.preheader504.outer.backedge ], [ %i.ci, %._crit_edge ]
  %i.cn = ptrtoint ptr %.1388.ph to i64
  br label %.preheader504

.preheader504:                                    ; preds = %.preheader504.outer, %bb.aa
  %.2393 = phi ptr [ %i.er, %bb.aa ], [ %.2393.ph, %.preheader504.outer ]
  %.3362 = phi i32 [ %i.es, %bb.aa ], [ %.3362.ph, %.preheader504.outer ]
  %i.co = sext i32 %.3362 to i64
  %i.cp = getelementptr inbounds [2 x i8], ptr @yy_accept, i64 %i.co
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !74 ; 2 uses
  %i.cr = icmp eq i16 %i.cq, 0
  br i1 %i.cr, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.preheader504
  %i.cs = load ptr, ptr %i.ao, align 8, !tbaa !76
  %i.ct = load i32, ptr %i.an, align 8, !tbaa !75
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [2 x i8], ptr @yy_accept, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !74
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.preheader504
  %.3394 = phi ptr [ %i.cs, %bb.r ], [ %.2393, %.preheader504 ] ; 8 uses
  %.0384.in = phi i16 [ %i.cw, %bb.r ], [ %i.cq, %.preheader504 ] ; 3 uses
  %.0384 = sext i16 %.0384.in to i32
  store ptr %.1388.ph, ptr %i.ap, align 8, !tbaa !30
  %i.cx = ptrtoint ptr %.3394 to i64
  %i.cy = sub i64 %i.cx, %i.cn
  %i.cz = trunc i64 %i.cy to i32
  store i32 %i.cz, ptr %i.aq, align 8, !tbaa !35
  %i.da = load i8, ptr %.3394, align 1, !tbaa !32
  store i8 %i.da, ptr %i.al, align 8, !tbaa !33
  store i8 0, ptr %.3394, align 1, !tbaa !32
  store ptr %.3394, ptr %i.ak, align 8, !tbaa !29
  %.not421 = icmp eq i16 %.0384.in, 76
  br i1 %.not421, label %.loopexit503.preheader, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.db = sext i16 %.0384.in to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr @yy_rule_can_match_eol, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !36
  %.not422 = icmp eq i32 %i.dd, 0
  br i1 %.not422, label %.loopexit503.preheader, label %.preheader

.preheader:                                       ; preds = %bb.t
  %i.de = load i32, ptr %i.aq, align 8, !tbaa !35 ; 4 uses
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %.lr.ph954, label %.loopexit503.preheader

.lr.ph954:                                        ; preds = %.preheader
  %i.dg = load ptr, ptr %i.ap, align 8, !tbaa !30 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.de to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.dh = icmp eq i32 %i.de, 1
  br i1 %i.dh, label %.epil.preheader, label %.lr.ph954.new

.lr.ph954.new:                                    ; preds = %.lr.ph954
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %.lr.ph954.new
  %indvars.iv = phi i64 [ 0, %.lr.ph954.new ], [ %indvars.iv.next.1, %bb.y ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph954.new ], [ %niter.next.1, %bb.y ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !32
  %i.dk = icmp eq i8 %i.dj, 10
  br i1 %i.dk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dl = load ptr, ptr %i.ar, align 8, !tbaa !21
  %i.dm = load i64, ptr %i.as, align 8, !tbaa !22
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dm
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !24 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 44 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !37
  %i.dr = add nsw i32 %i.dq, 1
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !37
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  store i32 0, ptr %i.ds, align 8, !tbaa !38
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !32
  %i.dw = icmp eq i8 %i.dv, 10
  br i1 %i.dw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dx = load ptr, ptr %i.ar, align 8, !tbaa !21
  %i.dy = load i64, ptr %i.as, align 8, !tbaa !22
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dy
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !24 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 44 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !37
  %i.ed = add nsw i32 %i.ec, 1
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !37
end_hunk_0
begin_hunk_1_@yara_yylex:bb.a
  %i.kf = load ptr, ptr %1, align 8, !tbaa !39    ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 1984
  %i.kh = load i16, ptr %i.kg, align 8, !tbaa !78
  %i.ki = icmp ugt i16 %i.kh, 1021
  br i1 %i.ki, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  call void @yara_yyerror(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull @.str)
  br label %yypop_buffer_state.exit.thread

bb.db:                                            ; preds = %bb.cz
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 1976 ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !77 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 1
  store ptr %i.kl, ptr %i.kj, align 8, !tbaa !77
  store i8 9, ptr %i.kk, align 1, !tbaa !32
  %i.km = load ptr, ptr %1, align 8, !tbaa !39
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 1984 ; 2 uses
  %i.ko = load i16, ptr %i.kn, align 8, !tbaa !78
  %i.kp = add i16 %i.ko, 1
  store i16 %i.kp, ptr %i.kn, align 8, !tbaa !78
  br label %.critedge441.backedge

bb.dc:                                            ; preds = %.loopexit503
  %i.kq = load ptr, ptr %1, align 8, !tbaa !39    ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 1984
  %i.ks = load i16, ptr %i.kr, align 8, !tbaa !78
  %i.kt = icmp ugt i16 %i.ks, 1021
  br i1 %i.kt, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  call void @yara_yyerror(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull @.str)
  br label %yypop_buffer_state.exit.thread

bb.de:                                            ; preds = %bb.dc
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kq, i64 1976 ; 2 uses
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !77 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 1
  store ptr %i.kw, ptr %i.ku, align 8, !tbaa !77
  store i8 10, ptr %i.kv, align 1, !tbaa !32
  %i.kx = load ptr, ptr %1, align 8, !tbaa !39
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 1984 ; 2 uses
  %i.kz = load i16, ptr %i.ky, align 8, !tbaa !78
  %i.la = add i16 %i.kz, 1
  store i16 %i.la, ptr %i.ky, align 8, !tbaa !78
  br label %.critedge441.backedge

bb.df:                                            ; preds = %.loopexit503
  %i.lb = load ptr, ptr %1, align 8, !tbaa !39    ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 1984
  %i.ld = load i16, ptr %i.lc, align 8, !tbaa !78
  %i.le = icmp ugt i16 %i.ld, 1021
  br i1 %i.le, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  call void @yara_yyerror(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull @.str)
  br label %yypop_buffer_state.exit.thread

bb.dh:                                            ; preds = %bb.df
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lb, i64 1976 ; 2 uses
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !77 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 1
  store ptr %i.lh, ptr %i.lf, align 8, !tbaa !77
  store i8 34, ptr %i.lg, align 1, !tbaa !32
  %i.li = load ptr, ptr %1, align 8, !tbaa !39
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 1984 ; 2 uses
  %i.lk = load i16, ptr %i.lj, align 8, !tbaa !78
  %i.ll = add i16 %i.lk, 1
  store i16 %i.ll, ptr %i.lj, align 8, !tbaa !78
  br label %.critedge441.backedge

bb.di:                                            ; preds = %.loopexit503
  %i.lm = load ptr, ptr %1, align 8, !tbaa !39    ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 1984
  %i.lo = load i16, ptr %i.ln, align 8, !tbaa !78
  %i.lp = icmp ugt i16 %i.lo, 1021
  br i1 %i.lp, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  call void @yara_yyerror(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull @.str)
  br label %yypop_buffer_state.exit.thread

bb.dk:                                            ; preds = %bb.di
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 1976 ; 2 uses
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !77 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 1
  store ptr %i.ls, ptr %i.lq, align 8, !tbaa !77
  store i8 92, ptr %i.lr, align 1, !tbaa !32
  %i.lt = load ptr, ptr %1, align 8, !tbaa !39
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 1984 ; 2 uses
  %i.lv = load i16, ptr %i.lu, align 8, !tbaa !78
  %i.lw = add i16 %i.lv, 1
  store i16 %i.lw, ptr %i.lu, align 8, !tbaa !78
  br label %.critedge441.backedge

bb.dl:                                            ; preds = %.loopexit503
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.lx = load ptr, ptr %i.ap, align 8, !tbaa !30
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 2
  %i.lz = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.ly, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.b) #30 ; 0 uses
  %i.ma = load ptr, ptr %1, align 8, !tbaa !39    ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 1984
  %i.mc = load i16, ptr %i.mb, align 8, !tbaa !78
  %i.md = icmp ult i16 %i.mc, 1022
  br i1 %i.md, label %.thread493, label %bb.dm

.thread493:                                       ; preds = %bb.dl
  %i.me = load i32, ptr %i.b, align 4, !tbaa !36
  %i.mf = trunc i32 %i.me to i8
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ma, i64 1976 ; 2 uses
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !77 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 1
  store ptr %i.mi, ptr %i.mg, align 8, !tbaa !77
  store i8 %i.mf, ptr %i.mh, align 1, !tbaa !32
  %i.mj = load ptr, ptr %1, align 8, !tbaa !39
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 1984 ; 2 uses
  %i.ml = load i16, ptr %i.mk, align 8, !tbaa !78
  %i.mm = add i16 %i.ml, 1
  store i16 %i.mm, ptr %i.mk, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %.critedge441.backedge

bb.dm:                                            ; preds = %bb.dl
  call void @yara_yyerror(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull @.str)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %yypop_buffer_state.exit.thread

bb.dn:                                            ; preds = %.loopexit503
  %i.mn = load ptr, ptr %i.ap, align 8, !tbaa !30 ; 3 uses
  %i.mo = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.mn) #29
  %i.mp = load ptr, ptr %1, align 8, !tbaa !39    ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 1984
  %i.mr = load i16, ptr %i.mq, align 8, !tbaa !78
  %i.ms = zext i16 %i.mr to i64
  %i.mt = add i64 %i.mo, %i.ms
  %i.mu = icmp ult i64 %i.mt, 1023
  br i1 %i.mu, label %.preheader507, label %.thread494

.preheader507:                                    ; preds = %bb.dn
  %i.mv = load i8, ptr %i.mn, align 1, !tbaa !32  ; 2 uses
  %.not428958 = icmp eq i8 %i.mv, 0
  br i1 %.not428958, label %.critedge441.backedge, label %.lr.ph960

.thread494:                                       ; preds = %bb.dn
  call void @yara_yyerror(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull @.str)
  br label %yypop_buffer_state.exit.thread

.lr.ph960:                                        ; preds = %.preheader507, %.lr.ph960
  %i.mw = phi ptr [ %i.nc, %.lr.ph960 ], [ %i.mp, %.preheader507 ]
  %i.mx = phi i8 [ %i.ng, %.lr.ph960 ], [ %i.mv, %.preheader507 ]
  %.0368959 = phi ptr [ %i.my, %.lr.ph960 ], [ %i.mn, %.preheader507 ]
  %i.my = getelementptr inbounds nuw i8, ptr %.0368959, i64 1 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mw, i64 1976 ; 2 uses
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !77 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 1
  store ptr %i.nb, ptr %i.mz, align 8, !tbaa !77
  store i8 %i.mx, ptr %i.na, align 1, !tbaa !32
  %i.nc = load ptr, ptr %1, align 8, !tbaa !39    ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 1984 ; 2 uses
  %i.ne = load i16, ptr %i.nd, align 8, !tbaa !78
  %i.nf = add i16 %i.ne, 1
  store i16 %i.nf, ptr %i.nd, align 8, !tbaa !78
  %i.ng = load i8, ptr %i.my, align 1, !tbaa !32  ; 2 uses
  %.not428 = icmp eq i8 %i.ng, 0
  br i1 %.not428, label %.critedge441.backedge, label %.lr.ph960

bb.do:                                            ; preds = %.loopexit503
  call void @yara_yyerror(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.12)
  br label %yypop_buffer_state.exit.thread

bb.dp:                                            ; preds = %.loopexit503
  call void @yara_yyerror(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.13)
  br label %.critedge441.backedge

bb.dq:                                            ; preds = %.loopexit503
  %i.nh = load ptr, ptr %1, align 8, !tbaa !39    ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 1984
  %i.nj = load i16, ptr %i.ni, align 8, !tbaa !78
  %i.nk = icmp eq i16 %i.nj, 0
  br i1 %i.nk, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  call void @yara_yyerror(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull @.str.14)
  %.pre1168 = load ptr, ptr %1, align 8, !tbaa !39
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.nl = phi ptr [ %.pre1168, %bb.dr ], [ %i.nh, %bb.dq ]
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 1976
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !77
  store i8 0, ptr %i.nn, align 1, !tbaa !32
  store i32 1, ptr %i.am, align 4, !tbaa !72
  %i.no = load ptr, ptr %1, align 8, !tbaa !39
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 1984
  %i.nq = load i16, ptr %i.np, align 8, !tbaa !78
  %i.nr = zext i16 %i.nq to i64
  %i.ns = add nuw nsw i64 %i.nr, 12
  %i.nt = call ptr @cli_max_malloc(i64 noundef %i.ns) #30 ; 4 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 4 ; 3 uses
  store i32 0, ptr %i.nu, align 4, !tbaa !82
  %i.nv = load ptr, ptr %i.ap, align 8, !tbaa !30 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 1 ; 2 uses
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !32
  %i.ny = icmp eq i8 %i.nx, 105
  %spec.store.select = zext i1 %i.ny to i32       ; 2 uses
  store i32 %spec.store.select, ptr %i.nu, align 4, !tbaa !82
  %i.nz = load i8, ptr %i.nw, align 1, !tbaa !32
  %i.oa = icmp eq i8 %i.nz, 115
  br i1 %i.oa, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nv, i64 2
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !32
  %i.od = icmp eq i8 %i.oc, 115
  br i1 %i.od, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.oe = or disjoint i32 %spec.store.select, 2
  store i32 %i.oe, ptr %i.nu, align 4, !tbaa !82
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.of = load ptr, ptr %1, align 8, !tbaa !39    ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 1984
  %i.oh = load i16, ptr %i.og, align 8, !tbaa !78
  %i.oi = zext i16 %i.oh to i32                   ; 2 uses
  store i32 %i.oi, ptr %i.nt, align 4, !tbaa !81
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.ok = getelementptr inbounds nuw i8, ptr %i.of, i64 948
  %i.ol = add nuw nsw i32 %i.oi, 1
  %i.om = zext nneg i32 %i.ol to i64
  %i.on = call i64 @cli_strlcpy(ptr noundef nonnull %i.oj, ptr noundef nonnull %i.ok, i64 noundef %i.om) #30 ; 0 uses
  %i.oo = load ptr, ptr %i.c, align 8, !tbaa !18
  store ptr %i.nt, ptr %i.oo, align 8, !tbaa !32
  br label %yypop_buffer_state.exit.thread

bb.dw:                                            ; preds = %.loopexit503
  %i.op = load ptr, ptr %1, align 8, !tbaa !39    ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 1984
  %i.or = load i16, ptr %i.oq, align 8, !tbaa !78
  %i.os = icmp ugt i16 %i.or, 1021
  br i1 %i.os, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  call void @yara_yyerror(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull @.str)
  br label %yypop_buffer_state.exit.thread

bb.dy:                                            ; preds = %bb.dw
  %i.ot = getelementptr inbounds nuw i8, ptr %i.op, i64 1976 ; 2 uses
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !77 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 1
  store ptr %i.ov, ptr %i.ot, align 8, !tbaa !77
  store i8 47, ptr %i.ou, align 1, !tbaa !32
  %i.ow = load ptr, ptr %1, align 8, !tbaa !39
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 1984 ; 2 uses
  %i.oy = load i16, ptr %i.ox, align 8, !tbaa !78
  %i.oz = add i16 %i.oy, 1
  store i16 %i.oz, ptr %i.ox, align 8, !tbaa !78
  br label %.critedge441.backedge

bb.dz:                                            ; preds = %.loopexit503
  %i.pa = load ptr, ptr %1, align 8, !tbaa !39    ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 1984
  %i.pc = load i16, ptr %i.pb, align 8, !tbaa !78
  %i.pd = icmp ugt i16 %i.pc, 1020
  br i1 %i.pd, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  call void @yara_yyerror(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull @.str)
  br label %yypop_buffer_state.exit.thread

bb.eb:                                            ; preds = %bb.dz
  %i.pe = load ptr, ptr %i.ap, align 8, !tbaa !30
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !32
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pa, i64 1976 ; 2 uses
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !77 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 1
  store ptr %i.pi, ptr %i.pg, align 8, !tbaa !77
  store i8 %i.pf, ptr %i.ph, align 1, !tbaa !32
  %i.pj = load ptr, ptr %i.ap, align 8, !tbaa !30
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 1
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !32
  %i.pm = load ptr, ptr %1, align 8, !tbaa !39
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 1976 ; 2 uses
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !77 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 1
  store ptr %i.pp, ptr %i.pn, align 8, !tbaa !77
  store i8 %i.pl, ptr %i.po, align 1, !tbaa !32
  %i.pq = load ptr, ptr %1, align 8, !tbaa !39
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 1984 ; 2 uses
  %i.ps = load i16, ptr %i.pr, align 8, !tbaa !78
  %i.pt = add i16 %i.ps, 2
  store i16 %i.pt, ptr %i.pr, align 8, !tbaa !78
  br label %.critedge441.backedge

bb.ec:                                            ; preds = %.loopexit503
  %i.pu = load ptr, ptr %i.ap, align 8, !tbaa !30 ; 3 uses
  %i.pv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.pu) #29
  %i.pw = load ptr, ptr %1, align 8, !tbaa !39    ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 1984
  %i.py = load i16, ptr %i.px, align 8, !tbaa !78
  %i.pz = zext i16 %i.py to i64
  %i.qa = add i64 %i.pv, %i.pz
  %i.qb = icmp ult i64 %i.qa, 1023
  br i1 %i.qb, label %.preheader509, label %.thread495

.preheader509:                                    ; preds = %bb.ec
  %i.qc = load i8, ptr %i.pu, align 1, !tbaa !32  ; 2 uses
  %.not427955 = icmp eq i8 %i.qc, 0
  br i1 %.not427955, label %.critedge441.backedge, label %.lr.ph957

.thread495:                                       ; preds = %bb.ec
  call void @yara_yyerror(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull @.str)
  br label %yypop_buffer_state.exit.thread

.lr.ph957:                                        ; preds = %.preheader509, %.lr.ph957
  %i.qd = phi ptr [ %i.qj, %.lr.ph957 ], [ %i.pw, %.preheader509 ]
  %i.qe = phi i8 [ %i.qn, %.lr.ph957 ], [ %i.qc, %.preheader509 ]
  %.0367956 = phi ptr [ %i.qf, %.lr.ph957 ], [ %i.pu, %.preheader509 ]
  %i.qf = getelementptr inbounds nuw i8, ptr %.0367956, i64 1 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qd, i64 1976 ; 2 uses
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !77 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 1
  store ptr %i.qi, ptr %i.qg, align 8, !tbaa !77
  store i8 %i.qe, ptr %i.qh, align 1, !tbaa !32
  %i.qj = load ptr, ptr %1, align 8, !tbaa !39    ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 1984 ; 2 uses
  %i.ql = load i16, ptr %i.qk, align 8, !tbaa !78
  %i.qm = add i16 %i.ql, 1
  store i16 %i.qm, ptr %i.qk, align 8, !tbaa !78
  %i.qn = load i8, ptr %i.qf, align 1, !tbaa !32  ; 2 uses
  %.not427 = icmp eq i8 %i.qn, 0
  br i1 %.not427, label %.critedge441.backedge, label %.lr.ph957

bb.ed:                                            ; preds = %.loopexit503
  call void @yara_yyerror(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.15)
  br label %yypop_buffer_state.exit.thread

bb.ee:                                            ; preds = %.loopexit503
  %i.qo = load ptr, ptr %1, align 8, !tbaa !39    ; 3 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 948
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qo, i64 1976
  store ptr %i.qp, ptr %i.qq, align 8, !tbaa !77
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qo, i64 1984
  store i16 0, ptr %i.qr, align 8, !tbaa !78
  store i32 3, ptr %i.am, align 4, !tbaa !72
  br label %.critedge441.backedge

bb.ef:                                            ; preds = %.loopexit503
  %i.qs = load ptr, ptr %1, align 8, !tbaa !39    ; 3 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 948
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qs, i64 1976
  store ptr %i.qt, ptr %i.qu, align 8, !tbaa !77
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qs, i64 1984
  store i16 0, ptr %i.qv, align 8, !tbaa !78
  store i32 5, ptr %i.am, align 4, !tbaa !72
  br label %.critedge441.backedge

bb.eg:                                            ; preds = %.loopexit503
  %i.qw = load ptr, ptr %i.ap, align 8, !tbaa !30
  %i.qx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.qw) #29 ; 2 uses
  %i.qy = trunc i64 %i.qx to i32
  %sext = shl i64 %i.qx, 32                       ; 2 uses
  %i.qz = ashr exact i64 %sext, 32
  %i.ra = add nsw i64 %i.qz, 12
  %i.rb = call ptr @cli_max_malloc(i64 noundef %i.ra) #30 ; 4 uses
  store i32 %i.qy, ptr %i.rb, align 4, !tbaa !81
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 4
  store i32 0, ptr %i.rc, align 4, !tbaa !82
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %i.re = load ptr, ptr %i.ap, align 8, !tbaa !30
  %sext426 = add i64 %sext, 4294967296
  %i.rf = ashr exact i64 %sext426, 32
  %i.rg = call i64 @cli_strlcpy(ptr noundef nonnull %i.rd, ptr noundef %i.re, i64 noundef %i.rf) #30 ; 0 uses
  %i.rh = load ptr, ptr %i.c, align 8, !tbaa !18
  store ptr %i.rb, ptr %i.rh, align 8, !tbaa !32
  br label %yypop_buffer_state.exit.thread

bb.eh:                                            ; preds = %.loopexit503
  %i.ri = load ptr, ptr %i.ap, align 8, !tbaa !30
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !32  ; 2 uses
  %i.rk = zext nneg i8 %i.rj to i32
  %i.rl = add i8 %i.rj, -127
  %or.cond = icmp ult i8 %i.rl, -95
  br i1 %or.cond, label %bb.ei, label %yypop_buffer_state.exit.thread

bb.ei:                                            ; preds = %bb.eh
  call void @yara_yyerror(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull @.str.16)
  br label %yypop_buffer_state.exit.thread

bb.ej:                                            ; preds = %.loopexit503
  %i.rm = load ptr, ptr %i.ap, align 8, !tbaa !30
  %i.rn = load i32, ptr %i.aq, align 8, !tbaa !35
  %i.ro = sext i32 %i.rn to i64
  %i.rp = load ptr, ptr %i.aw, align 8, !tbaa !20
  %i.rq = call i64 @fwrite(ptr noundef %i.rm, i64 noundef %i.ro, i64 noundef 1, ptr noundef %i.rp) ; 0 uses
  br label %.critedge441.backedge

bb.ek:                                            ; preds = %.loopexit503
  %i.rr = load ptr, ptr %i.ap, align 8, !tbaa !30 ; 2 uses
  %i.rs = load i8, ptr %i.al, align 8, !tbaa !33
  store i8 %i.rs, ptr %.3394, align 1, !tbaa !32
  %i.rt = load ptr, ptr %i.ar, align 8, !tbaa !21
  %i.ru = load i64, ptr %i.as, align 8, !tbaa !22
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.rt, i64 %i.ru
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !24 ; 6 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 56 ; 2 uses
  %i.ry = load i32, ptr %i.rx, align 8, !tbaa !53 ; 2 uses
  %i.rz = icmp eq i32 %i.ry, 0
  br i1 %i.rz, label %bb.el, label %._crit_edge1165

._crit_edge1165:                                  ; preds = %bb.ek
end_hunk_1

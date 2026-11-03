Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/rmaps_rank_file_lex?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.yy_buffer_state = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@prte_rmaps_rank_file_in = local_unnamed_addr global ptr null, align 8
@prte_rmaps_rank_file_out = local_unnamed_addr global ptr null, align 8
@prte_rmaps_rank_file_lineno = local_unnamed_addr global i32 1, align 4
@prte_rmaps_rank_file__flex_debug = local_unnamed_addr global i32 0, align 4
@prte_rmaps_rank_file_line = local_unnamed_addr global i32 1, align 4
@prte_rmaps_rank_file_value = local_unnamed_addr global { i32, [4 x i8] } zeroinitializer, align 8
@prte_rmaps_rank_file_done = local_unnamed_addr global i8 0, align 1
@yy_init = internal unnamed_addr global i1 false, align 4
@yy_start = internal unnamed_addr global i32 0, align 4
@stdin = external local_unnamed_addr global ptr, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@yy_buffer_stack = internal unnamed_addr global ptr null, align 8
@yy_buffer_stack_top = internal unnamed_addr global i64 0, align 8
@yy_c_buf_p = internal unnamed_addr global ptr null, align 8
@yy_hold_char = internal unnamed_addr global i8 0, align 1
@yy_ec = internal unnamed_addr constant [256 x i8] c"\00\01\01\01\01\01\01\01\01\02\03\02\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\01\04\05\01\01\01\01\01\01\06\07\08\09\0A\0B\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0D\08\01\0E\01\01\0F\10\10\10\10\10\10\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\01\01\01\01\12\01\13\10\10\10\14\10\11\11\11\11\15\16\17\18\19\11\11\1A\1B\1C\1D\11\11\11\11\11\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", align 16
@yy_accept = internal unnamed_addr constant [127 x i16] [i16 0, i16 19, i16 19, i16 5, i16 5, i16 26, i16 24, i16 10, i16 1, i16 24, i16 24, i16 19, i16 24, i16 24, i16 18, i16 19, i16 11, i16 19, i16 19, i16 19, i16 19, i16 19, i16 5, i16 7, i16 6, i16 10, i16 1, i16 0, i16 9, i16 0, i16 2, i16 19, i16 0, i16 4, i16 0, i16 19, i16 0, i16 18, i16 19, i16 19, i16 19, i16 0, i16 19, i16 19, i16 19, i16 22, i16 19, i16 19, i16 19, i16 19, i16 5, i16 6, i16 6, i16 8, i16 23, i16 0, i16 3, i16 0, i16 18, i16 19, i16 19, i16 19, i16 19, i16 0, i16 0, i16 19, i16 19, i16 19, i16 19, i16 19, i16 19, i16 19, i16 0, i16 0, i16 18, i16 19, i16 19, i16 19, i16 19, i16 19, i16 0, i16 0, i16 21, i16 19, i16 19, i16 19, i16 12, i16 13, i16 19, i16 0, i16 0, i16 18, i16 19, i16 19, i16 19, i16 0, i16 21, i16 19, i16 19, i16 14, i16 19, i16 19, i16 19, i16 0, i16 0, i16 19, i16 19, i16 0, i16 21, i16 19, i16 19, i16 19, i16 19, i16 20, i16 0, i16 21, i16 19, i16 19, i16 19, i16 20, i16 19, i16 19, i16 15, i16 20, i16 16, i16 17, i16 0], align 16
@yy_last_accepting_state = internal unnamed_addr global i32 0, align 4
@yy_last_accepting_cpos = internal unnamed_addr global ptr null, align 8
@yy_chk = internal unnamed_addr constant [419 x i16] [i16 0, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 3, i16 4, i16 13, i16 3, i16 4, i16 7, i16 7, i16 13, i16 14, i16 121, i16 14, i16 14, i16 14, i16 120, i16 14, i16 14, i16 119, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 15, i16 24, i16 25, i16 25, i16 41, i16 51, i16 24, i16 118, i16 15, i16 15, i16 51, i16 117, i16 15, i16 41, i16 116, i16 15, i16 15, i16 17, i16 115, i16 17, i16 17, i16 17, i16 114, i16 17, i16 17, i16 113, i16 17, i16 17, i16 17, i16 17, i16 17, i16 17, i16 17, i16 17, i16 17, i16 17, i16 17, i16 17, i16 17, i16 17, i16 17, i16 18, i16 18, i16 112, i16 57, i16 18, i16 57, i16 37, i16 18, i16 18, i16 35, i16 37, i16 35, i16 35, i16 37, i16 37, i16 35, i16 111, i16 43, i16 35, i16 35, i16 39, i16 43, i16 39, i16 39, i16 43, i16 43, i16 39, i16 39, i16 110, i16 39, i16 39, i16 39, i16 39, i16 39, i16 39, i16 39, i16 39, i16 39, i16 39, i16 39, i16 39, i16 39, i16 39, i16 39, i16 40, i16 109, i16 40, i16 52, i16 108, i16 64, i16 40, i16 81, i16 52, i16 40, i16 40, i16 42, i16 42, i16 46, i16 64, i16 42, i16 81, i16 46, i16 42, i16 42, i16 46, i16 46, i16 58, i16 73, i16 59, i16 73, i16 58, i16 107, i16 59, i16 58, i16 58, i16 59, i16 59, i16 60, i16 106, i16 60, i16 60, i16 74, i16 74, i16 60, i16 105, i16 103, i16 60, i16 60, i16 61, i16 102, i16 61, i16 61, i16 61, i16 101, i16 61, i16 61, i16 100, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 61, i16 62, i16 62, i16 65, i16 89, i16 62, i16 89, i16 65, i16 62, i16 62, i16 65, i16 65, i16 66, i16 104, i16 67, i16 104, i16 66, i16 97, i16 67, i16 66, i16 66, i16 67, i16 67, i16 68, i16 96, i16 76, i16 88, i16 68, i16 95, i16 76, i16 68, i16 68, i16 76, i16 76, i16 77, i16 88, i16 77, i16 91, i16 79, i16 90, i16 77, i16 88, i16 79, i16 77, i16 77, i16 79, i16 79, i16 83, i16 87, i16 84, i16 85, i16 83, i16 82, i16 84, i16 83, i16 83, i16 84, i16 84, i16 92, i16 80, i16 93, i16 75, i16 92, i16 72, i16 93, i16 92, i16 92, i16 93, i16 93, i16 94, i16 71, i16 98, i16 70, i16 94, i16 69, i16 98, i16 94, i16 94, i16 98, i16 98, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 128, i16 128, i16 128, i16 128, i16 128, i16 128, i16 128, i16 128, i16 128, i16 129, i16 129, i16 129, i16 129, i16 129, i16 129, i16 129, i16 129, i16 129, i16 130, i16 130, i16 130, i16 63, i16 130, i16 130, i16 131, i16 55, i16 131, i16 54, i16 131, i16 131, i16 131, i16 131, i16 131, i16 132, i16 49, i16 132, i16 132, i16 132, i16 132, i16 132, i16 132, i16 132, i16 133, i16 133, i16 133, i16 133, i16 133, i16 133, i16 133, i16 133, i16 133, i16 134, i16 48, i16 47, i16 36, i16 34, i16 134, i16 134, i16 135, i16 135, i16 135, i16 136, i16 136, i16 137, i16 32, i16 29, i16 27, i16 21, i16 137, i16 137, i16 138, i16 138, i16 139, i16 139, i16 140, i16 140, i16 141, i16 141, i16 142, i16 142, i16 20, i16 19, i16 12, i16 10, i16 9, i16 5, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126], align 16
@yy_base = internal unnamed_addr constant [143 x i16] [i16 0, i16 0, i16 0, i16 27, i16 28, i16 388, i16 389, i16 33, i16 389, i16 383, i16 383, i16 0, i16 361, i16 26, i16 32, i16 58, i16 389, i16 73, i16 91, i16 365, i16 361, i16 343, i16 0, i16 389, i16 57, i16 62, i16 389, i16 365, i16 389, i16 365, i16 389, i16 0, i16 355, i16 389, i16 355, i16 102, i16 345, i16 97, i16 0, i16 117, i16 137, i16 62, i16 146, i16 108, i16 0, i16 0, i16 148, i16 332, i16 330, i16 317, i16 0, i16 61, i16 144, i16 389, i16 318, i16 325, i16 389, i16 96, i16 157, i16 159, i16 170, i16 185, i16 203, i16 311, i16 148, i16 205, i16 214, i16 216, i16 225, i16 267, i16 258, i16 258, i16 265, i16 160, i16 172, i16 262, i16 227, i16 238, i16 0, i16 240, i16 260, i16 150, i16 253, i16 249, i16 251, i16 251, i16 0, i16 235, i16 231, i16 208, i16 243, i16 239, i16 260, i16 262, i16 271, i16 229, i16 225, i16 218, i16 273, i16 0, i16 175, i16 172, i16 173, i16 176, i16 217, i16 174, i16 168, i16 161, i16 138, i16 135, i16 112, i16 100, i16 82, i16 75, i16 74, i16 67, i16 53, i16 50, i16 49, i16 34, i16 23, i16 19, i16 0, i16 389, i16 0, i16 0, i16 389, i16 293, i16 302, i16 311, i16 317, i16 326, i16 335, i16 344, i16 351, i16 355, i16 356, i16 363, i16 365, i16 367, i16 369, i16 371, i16 373], align 16
@yy_def = internal unnamed_addr constant [143 x i16] [i16 0, i16 126, i16 1, i16 127, i16 127, i16 126, i16 126, i16 126, i16 126, i16 128, i16 129, i16 130, i16 126, i16 126, i16 126, i16 130, i16 126, i16 126, i16 17, i16 18, i16 18, i16 18, i16 131, i16 126, i16 132, i16 126, i16 126, i16 128, i16 126, i16 129, i16 126, i16 130, i16 126, i16 126, i16 133, i16 14, i16 126, i16 14, i16 15, i16 126, i16 14, i16 134, i16 130, i16 15, i16 18, i16 135, i16 17, i16 18, i16 18, i16 18, i16 131, i16 132, i16 132, i16 126, i16 126, i16 133, i16 126, i16 126, i16 14, i16 40, i16 130, i16 126, i16 61, i16 136, i16 137, i16 42, i16 15, i16 42, i16 17, i16 18, i16 18, i16 18, i16 126, i16 126, i16 35, i16 35, i16 60, i16 60, i16 62, i16 61, i16 138, i16 137, i16 139, i16 42, i16 42, i16 18, i16 18, i16 18, i16 18, i16 126, i16 126, i16 35, i16 60, i16 77, i16 61, i16 140, i16 141, i16 130, i16 42, i16 18, i16 18, i16 18, i16 18, i16 126, i16 126, i16 130, i16 62, i16 126, i16 142, i16 130, i16 18, i16 18, i16 18, i16 126, i16 126, i16 126, i16 18, i16 18, i16 18, i16 126, i16 18, i16 18, i16 18, i16 126, i16 18, i16 18, i16 0, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126], align 16
@yy_meta = internal unnamed_addr constant [30 x i8] c"\00\01\01\02\03\01\04\01\05\06\07\01\08\09\01\05\08\06\06\08\08\06\06\06\06\06\06\06\06\06", align 16
@yy_nxt = internal unnamed_addr constant [419 x i16] [i16 0, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 11, i16 11, i16 6, i16 13, i16 14, i16 15, i16 16, i16 11, i16 17, i16 18, i16 11, i16 17, i16 17, i16 18, i16 18, i16 18, i16 18, i16 18, i16 19, i16 20, i16 18, i16 21, i16 23, i16 23, i16 33, i16 24, i16 24, i16 25, i16 26, i16 34, i16 31, i16 125, i16 31, i16 35, i16 36, i16 124, i16 37, i16 38, i16 123, i16 39, i16 40, i16 35, i16 35, i16 40, i16 40, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 41, i16 52, i16 25, i16 26, i16 41, i16 126, i16 53, i16 122, i16 42, i16 43, i16 126, i16 121, i16 42, i16 64, i16 120, i16 42, i16 42, i16 31, i16 81, i16 31, i16 44, i16 45, i16 103, i16 46, i16 38, i16 119, i16 39, i16 46, i16 44, i16 44, i16 46, i16 46, i16 44, i16 44, i16 44, i16 44, i16 44, i16 44, i16 44, i16 44, i16 44, i16 44, i16 31, i16 118, i16 72, i16 44, i16 73, i16 58, i16 44, i16 44, i16 126, i16 59, i16 35, i16 31, i16 59, i16 59, i16 35, i16 117, i16 67, i16 35, i16 35, i16 31, i16 67, i16 31, i16 31, i16 67, i16 67, i16 60, i16 38, i16 116, i16 31, i16 61, i16 62, i16 31, i16 61, i16 61, i16 62, i16 62, i16 62, i16 62, i16 62, i16 62, i16 62, i16 62, i16 62, i16 126, i16 66, i16 59, i16 52, i16 81, i16 41, i16 59, i16 126, i16 53, i16 59, i16 59, i16 65, i16 66, i16 68, i16 64, i16 65, i16 81, i16 68, i16 65, i16 65, i16 68, i16 68, i16 74, i16 72, i16 75, i16 90, i16 75, i16 81, i16 75, i16 75, i16 75, i16 75, i16 75, i16 36, i16 38, i16 76, i16 38, i16 91, i16 38, i16 77, i16 38, i16 113, i16 77, i16 77, i16 31, i16 112, i16 31, i16 78, i16 45, i16 111, i16 79, i16 38, i16 110, i16 31, i16 79, i16 78, i16 78, i16 79, i16 79, i16 78, i16 78, i16 78, i16 78, i16 78, i16 78, i16 78, i16 78, i16 78, i16 78, i16 31, i16 83, i16 103, i16 78, i16 104, i16 83, i16 78, i16 78, i16 83, i16 83, i16 67, i16 103, i16 84, i16 114, i16 67, i16 66, i16 84, i16 67, i16 67, i16 84, i16 84, i16 85, i16 81, i16 92, i16 100, i16 85, i16 81, i16 93, i16 85, i16 85, i16 93, i16 93, i16 126, i16 101, i16 93, i16 91, i16 94, i16 72, i16 93, i16 102, i16 94, i16 93, i16 93, i16 94, i16 94, i16 97, i16 99, i16 98, i16 38, i16 97, i16 81, i16 98, i16 97, i16 97, i16 98, i16 98, i16 105, i16 81, i16 105, i16 38, i16 105, i16 89, i16 105, i16 105, i16 105, i16 105, i16 105, i16 106, i16 88, i16 109, i16 87, i16 106, i16 86, i16 109, i16 106, i16 106, i16 109, i16 109, i16 22, i16 22, i16 22, i16 22, i16 22, i16 22, i16 22, i16 22, i16 22, i16 27, i16 27, i16 27, i16 27, i16 27, i16 27, i16 27, i16 27, i16 27, i16 29, i16 29, i16 29, i16 29, i16 29, i16 29, i16 29, i16 29, i16 29, i16 31, i16 31, i16 31, i16 81, i16 31, i16 31, i16 50, i16 56, i16 50, i16 54, i16 50, i16 50, i16 50, i16 50, i16 50, i16 51, i16 71, i16 51, i16 51, i16 51, i16 51, i16 51, i16 51, i16 51, i16 55, i16 55, i16 55, i16 55, i16 55, i16 55, i16 55, i16 55, i16 55, i16 63, i16 70, i16 69, i16 57, i16 56, i16 63, i16 63, i16 45, i16 45, i16 45, i16 80, i16 80, i16 82, i16 54, i16 30, i16 28, i16 49, i16 82, i16 82, i16 95, i16 95, i16 96, i16 96, i16 107, i16 107, i16 108, i16 108, i16 115, i16 115, i16 48, i16 47, i16 32, i16 30, i16 28, i16 126, i16 5, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126, i16 126], align 16
@prte_rmaps_rank_file_text = local_unnamed_addr global ptr null, align 8
@prte_rmaps_rank_file_leng = local_unnamed_addr global i32 0, align 4
@yy_n_chars = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"fatal flex scanner internal error--no action found\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"out of dynamic memory in yy_create_buffer()\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"out of dynamic memory in yy_scan_buffer()\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"out of dynamic memory in yy_scan_bytes()\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"bad buffer in yy_scan_bytes()\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"fatal flex scanner internal error--end of buffer missed\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"fatal error - scanner input buffer overflow\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"input in flex scanner failed\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"out of dynamic memory in yy_get_next_buffer()\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"out of dynamic memory in yyensure_buffer_stack()\00", align 1
@yy_buffer_stack_max = internal unnamed_addr global i64 0, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @prte_rmaps_rank_file_lex() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 23 uses
  %i.b = alloca i32, align 4                      ; 20 uses
  %i.c = alloca ptr, align 8                      ; 20 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i8, align 1                       ; 5 uses
  %i.g = alloca i32, align 4                      ; 3 uses
  %i.h = alloca i32, align 4                      ; 3 uses
  %.b = load i1, ptr @yy_init, align 1
  %i.i = zext i1 %.b to i32
  %i.j = icmp ne i32 %i.i, 0
  br i1 %i.j, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i1 true, ptr @yy_init, align 1
  %i.k = load i32, ptr @yy_start, align 4
  %i.l = icmp ne i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr @yy_start, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = load ptr, ptr @prte_rmaps_rank_file_in, align 8
  %i.n = icmp ne ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr @stdin, align 8
  store ptr %i.o, ptr @prte_rmaps_rank_file_in, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = load ptr, ptr @prte_rmaps_rank_file_out, align 8
  %i.q = icmp ne ptr %i.p, null
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr @stdout, align 8
  store ptr %i.r, ptr @prte_rmaps_rank_file_out, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = load ptr, ptr @yy_buffer_stack, align 8
  %i.t = icmp ne ptr %i.s, null
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr @yy_buffer_stack, align 8
  %i.v = load i64, ptr @yy_buffer_stack_top, align 8
  %i.w = getelementptr inbounds nuw ptr, ptr %i.u, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = icmp ne ptr %i.x, null
  br i1 %i.y, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.h
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @prte_rmaps_rank_file_ensure_buffer_stack()
  %i.z = load ptr, ptr @prte_rmaps_rank_file_in, align 8
  %i.aa = call ptr @prte_rmaps_rank_file__create_buffer(ptr noundef %i.z, i32 noundef 16384)
  %i.ab = load ptr, ptr @yy_buffer_stack, align 8
  %i.ac = load i64, ptr @yy_buffer_stack_top, align 8
  %i.ad = getelementptr inbounds nuw ptr, ptr %i.ab, i64 %i.ac
  store ptr %i.aa, ptr %i.ad, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  call void @prte_rmaps_rank_file__load_buffer_state()
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.a
  br label %bb.n

bb.n:                                             ; preds = %bb.bw, %bb.m
  %i.ae = load ptr, ptr @yy_c_buf_p, align 8
  store ptr %i.ae, ptr %i.c, align 8
  %i.af = load i8, ptr @yy_hold_char, align 1
  %i.ag = load ptr, ptr %i.c, align 8
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = load ptr, ptr %i.c, align 8
  store ptr %i.ah, ptr %i.d, align 8
  %i.ai = load i32, ptr @yy_start, align 4
  store i32 %i.ai, ptr %i.b, align 4
  br label %bb.o

bb.o:                                             ; preds = %.backedge1, %bb.n
  br label %bb.p

bb.p:                                             ; preds = %bb.x, %bb.o
  %i.aj = load ptr, ptr %i.c, align 8
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw [256 x i8], ptr @yy_ec, i64 0, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  store i8 %i.an, ptr %i.f, align 1
  %i.ao = load i32, ptr %i.b, align 4
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [127 x i16], ptr @yy_accept, i64 0, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2
  %i.as = icmp ne i16 %i.ar, 0
  br i1 %i.as, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.at = load i32, ptr %i.b, align 4
  store i32 %i.at, ptr @yy_last_accepting_state, align 4
  %i.au = load ptr, ptr %i.c, align 8
  store ptr %i.au, ptr @yy_last_accepting_cpos, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %bb.r
  %i.av = load i32, ptr %i.b, align 4
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [143 x i16], ptr @yy_base, i64 0, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = sext i16 %i.ay to i32
  %i.ba = load i8, ptr %i.f, align 1
  %i.bb = zext i8 %i.ba to i32
  %i.bc = add nsw i32 %i.az, %i.bb
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [419 x i16], ptr @yy_chk, i64 0, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2
  %i.bg = sext i16 %i.bf to i32
  %i.bh = load i32, ptr %i.b, align 4
  %i.bi = icmp ne i32 %i.bg, %i.bh
  br i1 %i.bi, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.bj = load i32, ptr %i.b, align 4
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [143 x i16], ptr @yy_def, i64 0, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2
  %i.bn = sext i16 %i.bm to i32
  store i32 %i.bn, ptr %i.b, align 4
  %i.bo = load i32, ptr %i.b, align 4
  %i.bp = icmp sge i32 %i.bo, 127
  br i1 %i.bp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bq = load i8, ptr %i.f, align 1
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [30 x i8], ptr @yy_meta, i64 0, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1
  store i8 %i.bt, ptr %i.f, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  br label %bb.s, !llvm.loop !5

bb.w:                                             ; preds = %bb.s
  %i.bu = load i32, ptr %i.b, align 4
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [143 x i16], ptr @yy_base, i64 0, i64 %i.bv
  %i.bx = load i16, ptr %i.bw, align 2
  %i.by = sext i16 %i.bx to i32
  %i.bz = load i8, ptr %i.f, align 1
  %i.ca = zext i8 %i.bz to i32
  %i.cb = add nsw i32 %i.by, %i.ca
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [419 x i16], ptr @yy_nxt, i64 0, i64 %i.cc
  %i.ce = load i16, ptr %i.cd, align 2
  %i.cf = sext i16 %i.ce to i32
  store i32 %i.cf, ptr %i.b, align 4
  %i.cg = load ptr, ptr %i.c, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i32 1
  store ptr %i.ch, ptr %i.c, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ci = load i32, ptr %i.b, align 4
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [143 x i16], ptr @yy_base, i64 0, i64 %i.cj
  %i.cl = load i16, ptr %i.ck, align 2
  %i.cm = sext i16 %i.cl to i32
  %i.cn = icmp ne i32 %i.cm, 389
  br i1 %i.cn, label %bb.p, label %bb.y, !llvm.loop !6

bb.y:                                             ; preds = %bb.x
  br label %bb.z

bb.z:                                             ; preds = %.backedge, %bb.y
  %i.co = load i32, ptr %i.b, align 4
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [127 x i16], ptr @yy_accept, i64 0, i64 %i.cp
  %i.cr = load i16, ptr %i.cq, align 2
  %i.cs = sext i16 %i.cr to i32
  store i32 %i.cs, ptr %i.e, align 4
  %i.ct = load i32, ptr %i.e, align 4
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cv = load ptr, ptr @yy_last_accepting_cpos, align 8
  store ptr %i.cv, ptr %i.c, align 8
  %i.cw = load i32, ptr @yy_last_accepting_state, align 4
  store i32 %i.cw, ptr %i.b, align 4
  %i.cx = load i32, ptr %i.b, align 4
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [127 x i16], ptr @yy_accept, i64 0, i64 %i.cy
  %i.da = load i16, ptr %i.cz, align 2
  %i.db = sext i16 %i.da to i32
  store i32 %i.db, ptr %i.e, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dc = load ptr, ptr %i.d, align 8
  store ptr %i.dc, ptr @prte_rmaps_rank_file_text, align 8
  %i.dd = load ptr, ptr %i.c, align 8
  %i.de = load ptr, ptr %i.d, align 8
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = trunc i64 %i.dh to i32
  store i32 %i.di, ptr @prte_rmaps_rank_file_leng, align 4
  %i.dj = load ptr, ptr %i.c, align 8
  %i.dk = load i8, ptr %i.dj, align 1
  store i8 %i.dk, ptr @yy_hold_char, align 1
  %i.dl = load ptr, ptr %i.c, align 8
  store i8 0, ptr %i.dl, align 1
  %i.dm = load ptr, ptr %i.c, align 8
  store ptr %i.dm, ptr @yy_c_buf_p, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.bq, %bb.ab
  %i.dn = load i32, ptr %i.e, align 4
  switch i32 %i.dn, label %bb.bv [
    i32 0, label %bb.ad
    i32 1, label %bb.ae
    i32 2, label %bb.af
    i32 3, label %bb.ag
    i32 4, label %bb.ah
    i32 5, label %bb.ai
    i32 6, label %bb.aj
    i32 7, label %bb.ak
    i32 8, label %bb.al
    i32 9, label %bb.am
    i32 10, label %bb.an
    i32 11, label %bb.ao
    i32 12, label %bb.ap
    i32 13, label %bb.aq
    i32 14, label %bb.ar
    i32 15, label %bb.as
    i32 16, label %bb.at
    i32 17, label %bb.au
    i32 18, label %bb.av
    i32 19, label %bb.aw
    i32 20, label %bb.ax
    i32 21, label %bb.ay
    i32 22, label %bb.az
    i32 23, label %bb.ba
    i32 24, label %bb.bb
    i32 25, label %bb.bc
    i32 27, label %bb.bg
    i32 28, label %bb.bg
    i32 26, label %bb.bi
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.do = load i8, ptr @yy_hold_char, align 1
  %i.dp = load ptr, ptr %i.c, align 8
  store i8 %i.do, ptr %i.dp, align 1
  %i.dq = load ptr, ptr @yy_last_accepting_cpos, align 8
  store ptr %i.dq, ptr %i.c, align 8
  %i.dr = load i32, ptr @yy_last_accepting_state, align 4
  store i32 %i.dr, ptr %i.b, align 4
  br label %.backedge

.backedge:                                        ; preds = %bb.ad, %bb.bn, %bb.bs
  br label %bb.z

bb.ae:                                            ; preds = %bb.ac
  %i.ds = load i32, ptr @prte_rmaps_rank_file_line, align 4
  %i.dt = add nsw i32 %i.ds, 1
  store i32 %i.dt, ptr @prte_rmaps_rank_file_line, align 4
  store i32 13, ptr %i.a, align 4
  br label %bb.bx

bb.af:                                            ; preds = %bb.ac
  %i.du = load i32, ptr @prte_rmaps_rank_file_line, align 4
  %i.dv = add nsw i32 %i.du, 1
  store i32 %i.dv, ptr @prte_rmaps_rank_file_line, align 4
  store i32 13, ptr %i.a, align 4
  br label %bb.bx

bb.ag:                                            ; preds = %bb.ac
  %i.dw = load i32, ptr @prte_rmaps_rank_file_line, align 4
  %i.dx = add nsw i32 %i.dw, 1
  store i32 %i.dx, ptr @prte_rmaps_rank_file_line, align 4
  store i32 13, ptr %i.a, align 4
  br label %bb.bx

bb.ah:                                            ; preds = %bb.ac
  store i32 3, ptr @yy_start, align 4
  store i32 13, ptr %i.a, align 4
  br label %bb.bx

bb.ai:                                            ; preds = %bb.ac
  br label %bb.bw

bb.aj:                                            ; preds = %bb.ac
  br label %bb.bw

bb.ak:                                            ; preds = %bb.ac
  %i.dy = load i32, ptr @prte_rmaps_rank_file_line, align 4
  %i.dz = add nsw i32 %i.dy, 1
  store i32 %i.dz, ptr @prte_rmaps_rank_file_line, align 4
  store i32 13, ptr %i.a, align 4
  br label %bb.bx

bb.al:                                            ; preds = %bb.ac
  store i32 1, ptr @yy_start, align 4
  store i32 13, ptr %i.a, align 4
  br label %bb.bx

bb.am:                                            ; preds = %bb.ac
  %i.ea = load ptr, ptr @prte_rmaps_rank_file_text, align 8
  store ptr %i.ea, ptr @prte_rmaps_rank_file_value, align 8
  store i32 2, ptr %i.a, align 4
  br label %bb.bx

bb.an:                                            ; preds = %bb.ac
  br label %bb.bw

bb.ao:                                            ; preds = %bb.ac
  store i32 3, ptr %i.a, align 4
  br label %bb.bx

bb.ap:                                            ; preds = %bb.ac
  %i.eb = load ptr, ptr @prte_rmaps_rank_file_text, align 8
  store ptr %i.eb, ptr @prte_rmaps_rank_file_value, align 8
  store i32 6, ptr %i.a, align 4
  br label %bb.bx

bb.aq:                                            ; preds = %bb.ac
  %i.ec = load ptr, ptr @prte_rmaps_rank_file_text, align 8
  store ptr %i.ec, ptr @prte_rmaps_rank_file_value, align 8
  store i32 15, ptr %i.a, align 4
  br label %bb.bx

bb.ar:                                            ; preds = %bb.ac
  %i.ed = load ptr, ptr @prte_rmaps_rank_file_text, align 8
  store ptr %i.ed, ptr @prte_rmaps_rank_file_value, align 8
  store i32 15, ptr %i.a, align 4
  br label %bb.bx

bb.as:                                            ; preds = %bb.ac
  %i.ee = load ptr, ptr @prte_rmaps_rank_file_text, align 8
  store ptr %i.ee, ptr @prte_rmaps_rank_file_value, align 8
  store i32 10, ptr %i.a, align 4
  br label %bb.bx

bb.at:                                            ; preds = %bb.ac
  %i.ef = load ptr, ptr @prte_rmaps_rank_file_text, align 8
  store ptr %i.ef, ptr @prte_rmaps_rank_file_value, align 8
  store i32 10, ptr %i.a, align 4
  br label %bb.bx

bb.au:                                            ; preds = %bb.ac
  %i.eg = load ptr, ptr @prte_rmaps_rank_file_text, align 8
  store ptr %i.eg, ptr @prte_rmaps_rank_file_value, align 8
  store i32 10, ptr %i.a, align 4
  br label %bb.bx

bb.av:                                            ; preds = %bb.ac
  %i.eh = load ptr, ptr @prte_rmaps_rank_file_text, align 8
  %i.ei = call i64 @atol(ptr noundef %i.eh) #13
  %i.ej = trunc i64 %i.ei to i32
  store i32 %i.ej, ptr @prte_rmaps_rank_file_value, align 8
  store i32 4, ptr %i.a, align 4
  br label %bb.bx

bb.aw:                                            ; preds = %bb.ac
  %i.ek = load ptr, ptr @prte_rmaps_rank_file_text, align 8
  store ptr %i.ek, ptr @prte_rmaps_rank_file_value, align 8
  store i32 5, ptr %i.a, align 4
  br label %bb.bx

bb.ax:                                            ; preds = %bb.ac
  %i.el = load ptr, ptr @prte_rmaps_rank_file_text, align 8
  store ptr %i.el, ptr @prte_rmaps_rank_file_value, align 8
  store i32 11, ptr %i.a, align 4
  br label %bb.bx

bb.ay:                                            ; preds = %bb.ac
  %i.em = load ptr, ptr @prte_rmaps_rank_file_text, align 8
  store ptr %i.em, ptr @prte_rmaps_rank_file_value, align 8
  store i32 14, ptr %i.a, align 4
  br label %bb.bx

bb.az:                                            ; preds = %bb.ac
  %i.en = load ptr, ptr @prte_rmaps_rank_file_text, align 8
  store ptr %i.en, ptr @prte_rmaps_rank_file_value, align 8
  store i32 12, ptr %i.a, align 4
  br label %bb.bx

bb.ba:                                            ; preds = %bb.ac
  %i.eo = load ptr, ptr @prte_rmaps_rank_file_text, align 8
  store ptr %i.eo, ptr @prte_rmaps_rank_file_value, align 8
  store i32 16, ptr %i.a, align 4
  br label %bb.bx

bb.bb:                                            ; preds = %bb.ac
  %i.ep = load ptr, ptr @prte_rmaps_rank_file_text, align 8
  store ptr %i.ep, ptr @prte_rmaps_rank_file_value, align 8
  store i32 1, ptr %i.a, align 4
  br label %bb.bx

bb.bc:                                            ; preds = %bb.ac
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.eq = load ptr, ptr @prte_rmaps_rank_file_text, align 8
  %i.er = load i32, ptr @prte_rmaps_rank_file_leng, align 4
  %i.es = sext i32 %i.er to i64
  %i.et = load ptr, ptr @prte_rmaps_rank_file_out, align 8
  %i.eu = call i64 @fwrite(ptr noundef %i.eq, i64 noundef %i.es, i64 noundef 1, ptr noundef %i.et)
  %i.ev = icmp ne i64 %i.eu, 0
  br i1 %i.ev, label %0, label %bb.be

0:                                                ; preds = %bb.bd
  br label %bb.be

bb.be:                                            ; preds = %0, %bb.bd
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be
  br label %bb.bh

bb.bg:                                            ; preds = %bb.ac, %bb.ac
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  store i32 0, ptr %i.a, align 4
  br label %bb.bx

bb.bi:                                            ; preds = %bb.ac
  %i.ew = load ptr, ptr %i.c, align 8
  %i.ex = load ptr, ptr @prte_rmaps_rank_file_text, align 8
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = trunc i64 %i.fa to i32
  %i.fc = sub nsw i32 %i.fb, 1
  store i32 %i.fc, ptr %i.g, align 4
  %i.fd = load i8, ptr @yy_hold_char, align 1
  %i.fe = load ptr, ptr %i.c, align 8
  store i8 %i.fd, ptr %i.fe, align 1
  %i.ff = load ptr, ptr @yy_buffer_stack, align 8
  %i.fg = load i64, ptr @yy_buffer_stack_top, align 8
  %i.fh = getelementptr inbounds nuw ptr, ptr %i.ff, i64 %i.fg
  %i.fi = load ptr, ptr %i.fh, align 8
  %1 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.fi, i32 0, i32 11
  %i.fj = load i32, ptr %1, align 8
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.fl = load ptr, ptr @yy_buffer_stack, align 8
  %i.fm = load i64, ptr @yy_buffer_stack_top, align 8
  %i.fn = getelementptr inbounds nuw ptr, ptr %i.fl, i64 %i.fm
  %i.fo = load ptr, ptr %i.fn, align 8
  %2 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.fo, i32 0, i32 4
  %i.fp = load i32, ptr %2, align 4
  store i32 %i.fp, ptr @yy_n_chars, align 4
  %i.fq = load ptr, ptr @prte_rmaps_rank_file_in, align 8
  %i.fr = load ptr, ptr @yy_buffer_stack, align 8
  %i.fs = load i64, ptr @yy_buffer_stack_top, align 8
  %i.ft = getelementptr inbounds nuw ptr, ptr %i.fr, i64 %i.fs
  %i.fu = load ptr, ptr %i.ft, align 8
  %3 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.fu, i32 0, i32 0
  store ptr %i.fq, ptr %3, align 8
  %i.fv = load ptr, ptr @yy_buffer_stack, align 8
  %i.fw = load i64, ptr @yy_buffer_stack_top, align 8
  %i.fx = getelementptr inbounds nuw ptr, ptr %i.fv, i64 %i.fw
  %i.fy = load ptr, ptr %i.fx, align 8
  %4 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.fy, i32 0, i32 11
  store i32 1, ptr %4, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.fz = load ptr, ptr @yy_c_buf_p, align 8
  %i.ga = load ptr, ptr @yy_buffer_stack, align 8
  %i.gb = load i64, ptr @yy_buffer_stack_top, align 8
  %i.gc = getelementptr inbounds nuw ptr, ptr %i.ga, i64 %i.gb
  %i.gd = load ptr, ptr %i.gc, align 8
  %5 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.gd, i32 0, i32 1
  %i.ge = load ptr, ptr %5, align 8
  %i.gf = load i32, ptr @yy_n_chars, align 4
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds i8, ptr %i.ge, i64 %i.gg
  %i.gi = icmp ule ptr %i.fz, %i.gh
  br i1 %i.gi, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.gj = load ptr, ptr @prte_rmaps_rank_file_text, align 8
  %i.gk = load i32, ptr %i.g, align 4
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds i8, ptr %i.gj, i64 %i.gl
  store ptr %i.gm, ptr @yy_c_buf_p, align 8
  %i.gn = call i32 @yy_get_previous_state()
  store i32 %i.gn, ptr %i.b, align 4
  %i.go = load i32, ptr %i.b, align 4
  %i.gp = call i32 @yy_try_NUL_trans(i32 noundef %i.go)
  store i32 %i.gp, ptr %i.h, align 4
  %i.gq = load ptr, ptr @prte_rmaps_rank_file_text, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 0
  store ptr %i.gr, ptr %i.d, align 8
  %i.gs = load i32, ptr %i.h, align 4
  %i.gt = icmp ne i32 %i.gs, 0
  br i1 %i.gt, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.gu = load ptr, ptr @yy_c_buf_p, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i32 1 ; 2 uses
  store ptr %i.gv, ptr @yy_c_buf_p, align 8
  store ptr %i.gv, ptr %i.c, align 8
  %i.gw = load i32, ptr %i.h, align 4
  store i32 %i.gw, ptr %i.b, align 4
  br label %.backedge1

.backedge1:                                       ; preds = %bb.bm, %bb.br
  br label %bb.o

bb.bn:                                            ; preds = %bb.bl
  %i.gx = load ptr, ptr @yy_c_buf_p, align 8
  store ptr %i.gx, ptr %i.c, align 8
  br label %.backedge

bb.bo:                                            ; preds = %bb.bk
  %i.gy = call i32 @yy_get_next_buffer()
  switch i32 %i.gy, label %bb.bt [
    i32 1, label %bb.bp
    i32 0, label %bb.br
    i32 2, label %bb.bs
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.gz = call i32 @prte_rmaps_rank_file_wrap()   ; 0 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ha = load ptr, ptr @prte_rmaps_rank_file_text, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 0
  store ptr %i.hb, ptr @yy_c_buf_p, align 8
  %i.hc = load i32, ptr @yy_start, align 4
  %i.hd = sub nsw i32 %i.hc, 1
  %i.he = sdiv i32 %i.hd, 2
  %i.hf = add nuw nsw i32 26, %i.he
  %i.hg = add nuw nsw i32 %i.hf, 1
  store i32 %i.hg, ptr %i.e, align 4
  br label %bb.ac

bb.br:                                            ; preds = %bb.bo
  %i.hh = load ptr, ptr @prte_rmaps_rank_file_text, align 8
  %i.hi = load i32, ptr %i.g, align 4
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds i8, ptr %i.hh, i64 %i.hj
  store ptr %i.hk, ptr @yy_c_buf_p, align 8
  %i.hl = call i32 @yy_get_previous_state()
  store i32 %i.hl, ptr %i.b, align 4
  %i.hm = load ptr, ptr @yy_c_buf_p, align 8
  store ptr %i.hm, ptr %i.c, align 8
  %i.hn = load ptr, ptr @prte_rmaps_rank_file_text, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 0
  store ptr %i.ho, ptr %i.d, align 8
  br label %.backedge1

bb.bs:                                            ; preds = %bb.bo
  %i.hp = load ptr, ptr @yy_buffer_stack, align 8
  %i.hq = load i64, ptr @yy_buffer_stack_top, align 8
  %i.hr = getelementptr inbounds nuw ptr, ptr %i.hp, i64 %i.hq
  %i.hs = load ptr, ptr %i.hr, align 8
  %6 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.hs, i32 0, i32 1
  %i.ht = load ptr, ptr %6, align 8
  %i.hu = load i32, ptr @yy_n_chars, align 4
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds i8, ptr %i.ht, i64 %i.hv
  store ptr %i.hw, ptr @yy_c_buf_p, align 8
  %i.hx = call i32 @yy_get_previous_state()
  store i32 %i.hx, ptr %i.b, align 4
  %i.hy = load ptr, ptr @yy_c_buf_p, align 8
  store ptr %i.hy, ptr %i.c, align 8
  %i.hz = load ptr, ptr @prte_rmaps_rank_file_text, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 0
  store ptr %i.ia, ptr %i.d, align 8
  br label %.backedge

bb.bt:                                            ; preds = %bb.bo
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  br label %bb.bw

bb.bv:                                            ; preds = %bb.ac
  call void @yy_fatal_error(ptr noundef @.str) #14
  unreachable

bb.bw:                                            ; preds = %bb.bu, %bb.an, %bb.aj, %bb.ai
  br label %bb.n

bb.bx:                                            ; preds = %bb.bh, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.am, %bb.al, %bb.ak, %bb.ah, %bb.ag, %bb.af, %bb.ae
  %i.ib = load i32, ptr %i.a, align 4
  ret i32 %i.ib
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prte_rmaps_rank_file_ensure_buffer_stack() unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = load ptr, ptr @yy_buffer_stack, align 8
  %i.d = icmp ne ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 1, ptr %i.a, align 8
  %i.e = load i64, ptr %i.a, align 8
  %i.f = mul i64 %i.e, 8
  %i.g = call ptr @prte_rmaps_rank_file_alloc(i64 noundef %i.f)
  store ptr %i.g, ptr @yy_buffer_stack, align 8
  %i.h = load ptr, ptr @yy_buffer_stack, align 8
  %i.i = icmp ne ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @yy_fatal_error(ptr noundef @.str.9) #14
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = load ptr, ptr @yy_buffer_stack, align 8
  %i.k = load i64, ptr %i.a, align 8
  %i.l = mul i64 %i.k, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.l, i1 false)
  %i.m = load i64, ptr %i.a, align 8
  store i64 %i.m, ptr @yy_buffer_stack_max, align 8
  store i64 0, ptr @yy_buffer_stack_top, align 8
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.n = load i64, ptr @yy_buffer_stack_top, align 8
  %i.o = load i64, ptr @yy_buffer_stack_max, align 8
  %i.p = sub i64 %i.o, 1
  %i.q = icmp uge i64 %i.n, %i.p
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  store i64 8, ptr %i.b, align 8
  %i.r = load i64, ptr @yy_buffer_stack_max, align 8
  %i.s = load i64, ptr %i.b, align 8
  %i.t = add i64 %i.r, %i.s
  store i64 %i.t, ptr %i.a, align 8
  %i.u = load ptr, ptr @yy_buffer_stack, align 8
  %i.v = load i64, ptr %i.a, align 8
  %i.w = mul i64 %i.v, 8
  %i.x = call ptr @prte_rmaps_rank_file_realloc(ptr noundef %i.u, i64 noundef %i.w)
  store ptr %i.x, ptr @yy_buffer_stack, align 8
  %i.y = load ptr, ptr @yy_buffer_stack, align 8
  %i.z = icmp ne ptr %i.y, null
  br i1 %i.z, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @yy_fatal_error(ptr noundef @.str.9) #14
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr @yy_buffer_stack, align 8
  %i.ab = load i64, ptr @yy_buffer_stack_max, align 8
  %i.ac = getelementptr inbounds nuw ptr, ptr %i.aa, i64 %i.ab
  %i.ad = load i64, ptr %i.b, align 8
  %i.ae = mul i64 %i.ad, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.ac, i8 0, i64 %i.ae, i1 false)
  %i.af = load i64, ptr %i.a, align 8
  store i64 %i.af, ptr @yy_buffer_stack_max, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e, %bb.d
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define ptr @prte_rmaps_rank_file__create_buffer(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  store ptr %0, ptr %i.a, align 8
  store i32 %1, ptr %i.b, align 4
  %i.d = call ptr @prte_rmaps_rank_file_alloc(i64 noundef 64)
  store ptr %i.d, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.c, align 8
  %i.f = icmp ne ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @yy_fatal_error(ptr noundef @.str.1) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.b, align 4
  %i.h = load ptr, ptr %i.c, align 8
  %2 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.h, i32 0, i32 3
  store i32 %i.g, ptr %2, align 8
  %i.i = load ptr, ptr %i.c, align 8
  %3 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.i, i32 0, i32 3
  %i.j = load i32, ptr %3, align 8
  %i.k = add nsw i32 %i.j, 2
  %i.l = sext i32 %i.k to i64
  %i.m = call ptr @prte_rmaps_rank_file_alloc(i64 noundef %i.l)
  %i.n = load ptr, ptr %i.c, align 8
  %4 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.n, i32 0, i32 1
  store ptr %i.m, ptr %4, align 8
  %i.o = load ptr, ptr %i.c, align 8
  %5 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.o, i32 0, i32 1
  %i.p = load ptr, ptr %5, align 8
  %i.q = icmp ne ptr %i.p, null
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @yy_fatal_error(ptr noundef @.str.1) #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.c, align 8
  %6 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.r, i32 0, i32 5
  store i32 1, ptr %6, align 8
  %i.s = load ptr, ptr %i.c, align 8
  %i.t = load ptr, ptr %i.a, align 8
  call void @prte_rmaps_rank_file__init_buffer(ptr noundef %i.s, ptr noundef %i.t)
  %i.u = load ptr, ptr %i.c, align 8
  ret ptr %i.u
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prte_rmaps_rank_file__load_buffer_state() unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @yy_buffer_stack, align 8
  %i.b = load i64, ptr @yy_buffer_stack_top, align 8
  %i.c = getelementptr inbounds nuw ptr, ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8
  %0 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.d, i32 0, i32 4
  %i.e = load i32, ptr %0, align 4
  store i32 %i.e, ptr @yy_n_chars, align 4
  %i.f = load ptr, ptr @yy_buffer_stack, align 8
  %i.g = load i64, ptr @yy_buffer_stack_top, align 8
  %i.h = getelementptr inbounds nuw ptr, ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8
  %1 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.i, i32 0, i32 2
  %i.j = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.j, ptr @yy_c_buf_p, align 8
  store ptr %i.j, ptr @prte_rmaps_rank_file_text, align 8
  %i.k = load ptr, ptr @yy_buffer_stack, align 8
  %i.l = load i64, ptr @yy_buffer_stack_top, align 8
  %i.m = getelementptr inbounds nuw ptr, ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8
  %2 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.n, i32 0, i32 0
  %i.o = load ptr, ptr %2, align 8
  store ptr %i.o, ptr @prte_rmaps_rank_file_in, align 8
  %i.p = load ptr, ptr @yy_c_buf_p, align 8
  %i.q = load i8, ptr %i.p, align 1
  store i8 %i.q, ptr @yy_hold_char, align 1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @atol(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yy_get_previous_state() unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 11 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = load i32, ptr @yy_start, align 4
  store i32 %i.d, ptr %i.a, align 4
  %i.e = load ptr, ptr @prte_rmaps_rank_file_text, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 0
  store ptr %i.f, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.n, %bb.a
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = load ptr, ptr @yy_c_buf_p, align 8
  %i.i = icmp ult ptr %i.g, %i.h
end_hunk_0

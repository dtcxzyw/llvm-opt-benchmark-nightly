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

bb.o:                                             ; preds = %bb.br, %bb.bm, %bb.n
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
  br label %bb.s, !llvm.loop !4

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

bb.z:                                             ; preds = %bb.bs, %bb.bn, %bb.ad, %bb.y
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
    i32 27, label %bb.bh
    i32 28, label %bb.bh
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
  br label %bb.z
end_hunk_0
begin_hunk_1_@prte_rmaps_rank_file_lex:bb.a
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
  br i1 %i.ev, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.ac, %bb.ac
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
  %0 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.fi, i32 0, i32 11
  %i.fj = load i32, ptr %0, align 8
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.fl = load ptr, ptr @yy_buffer_stack, align 8
  %i.fm = load i64, ptr @yy_buffer_stack_top, align 8
  %i.fn = getelementptr inbounds nuw ptr, ptr %i.fl, i64 %i.fm
  %i.fo = load ptr, ptr %i.fn, align 8
  %1 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.fo, i32 0, i32 4
  %i.fp = load i32, ptr %1, align 4
  store i32 %i.fp, ptr @yy_n_chars, align 4
  %i.fq = load ptr, ptr @prte_rmaps_rank_file_in, align 8
  %i.fr = load ptr, ptr @yy_buffer_stack, align 8
  %i.fs = load i64, ptr @yy_buffer_stack_top, align 8
  %i.ft = getelementptr inbounds nuw ptr, ptr %i.fr, i64 %i.fs
  %i.fu = load ptr, ptr %i.ft, align 8
  %2 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.fu, i32 0, i32 0
  store ptr %i.fq, ptr %2, align 8
  %i.fv = load ptr, ptr @yy_buffer_stack, align 8
  %i.fw = load i64, ptr @yy_buffer_stack_top, align 8
  %i.fx = getelementptr inbounds nuw ptr, ptr %i.fv, i64 %i.fw
  %i.fy = load ptr, ptr %i.fx, align 8
  %3 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.fy, i32 0, i32 11
  store i32 1, ptr %3, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.fz = load ptr, ptr @yy_c_buf_p, align 8
  %i.ga = load ptr, ptr @yy_buffer_stack, align 8
  %i.gb = load i64, ptr @yy_buffer_stack_top, align 8
  %i.gc = getelementptr inbounds nuw ptr, ptr %i.ga, i64 %i.gb
  %i.gd = load ptr, ptr %i.gc, align 8
  %4 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.gd, i32 0, i32 1
  %i.ge = load ptr, ptr %4, align 8
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
  %5 = call i32 @yy_get_previous_state()
  store i32 %5, ptr %i.b, align 4
  %i.gn = load i32, ptr %i.b, align 4
  %6 = call i32 @yy_try_NUL_trans(i32 noundef %i.gn)
  store i32 %6, ptr %i.h, align 4
  %i.go = load ptr, ptr @prte_rmaps_rank_file_text, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 0
  store ptr %i.gp, ptr %i.d, align 8
  %i.gq = load i32, ptr %i.h, align 4
  %i.gr = icmp ne i32 %i.gq, 0
  br i1 %i.gr, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.gs = load ptr, ptr @yy_c_buf_p, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i32 1 ; 2 uses
  store ptr %i.gt, ptr @yy_c_buf_p, align 8
  store ptr %i.gt, ptr %i.c, align 8
  %i.gu = load i32, ptr %i.h, align 4
  store i32 %i.gu, ptr %i.b, align 4
  br label %bb.o

bb.bn:                                            ; preds = %bb.bl
  %i.gv = load ptr, ptr @yy_c_buf_p, align 8
  store ptr %i.gv, ptr %i.c, align 8
  br label %bb.z

bb.bo:                                            ; preds = %bb.bk
  %7 = call i32 @yy_get_next_buffer()
  switch i32 %7, label %bb.bt [
    i32 1, label %bb.bp
    i32 0, label %bb.br
    i32 2, label %bb.bs
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.gw = call i32 @prte_rmaps_rank_file_wrap()   ; 0 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gx = load ptr, ptr @prte_rmaps_rank_file_text, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 0
  store ptr %i.gy, ptr @yy_c_buf_p, align 8
  %i.gz = load i32, ptr @yy_start, align 4
  %i.ha = sub nsw i32 %i.gz, 1
  %i.hb = sdiv i32 %i.ha, 2
  %i.hc = add nuw nsw i32 26, %i.hb
  %i.hd = add nuw nsw i32 %i.hc, 1
  store i32 %i.hd, ptr %i.e, align 4
  br label %bb.ac

bb.br:                                            ; preds = %bb.bo
  %i.he = load ptr, ptr @prte_rmaps_rank_file_text, align 8
  %i.hf = load i32, ptr %i.g, align 4
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds i8, ptr %i.he, i64 %i.hg
  store ptr %i.hh, ptr @yy_c_buf_p, align 8
  %8 = call i32 @yy_get_previous_state()
  store i32 %8, ptr %i.b, align 4
  %i.hi = load ptr, ptr @yy_c_buf_p, align 8
  store ptr %i.hi, ptr %i.c, align 8
  %i.hj = load ptr, ptr @prte_rmaps_rank_file_text, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 0
  store ptr %i.hk, ptr %i.d, align 8
  br label %bb.o

bb.bs:                                            ; preds = %bb.bo
  %i.hl = load ptr, ptr @yy_buffer_stack, align 8
  %i.hm = load i64, ptr @yy_buffer_stack_top, align 8
  %i.hn = getelementptr inbounds nuw ptr, ptr %i.hl, i64 %i.hm
  %i.ho = load ptr, ptr %i.hn, align 8
  %9 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.ho, i32 0, i32 1
  %i.hp = load ptr, ptr %9, align 8
  %i.hq = load i32, ptr @yy_n_chars, align 4
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds i8, ptr %i.hp, i64 %i.hr
  store ptr %i.hs, ptr @yy_c_buf_p, align 8
  %10 = call i32 @yy_get_previous_state()
  store i32 %10, ptr %i.b, align 4
  %i.ht = load ptr, ptr @yy_c_buf_p, align 8
  store ptr %i.ht, ptr %i.c, align 8
  %i.hu = load ptr, ptr @prte_rmaps_rank_file_text, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 0
  store ptr %i.hv, ptr %i.d, align 8
  br label %bb.z

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
  %i.hw = load i32, ptr %i.a, align 4
  ret i32 %i.hw
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
  br i1 %i.i, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.b, align 8
  %i.k = load i8, ptr %i.j, align 1
  %i.l = sext i8 %i.k to i32
  %i.m = icmp ne i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.b, align 8
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [256 x i8], ptr @yy_ec, i64 0, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = phi i32 [ %i.s, %bb.d ], [ 1, %bb.e ]
  %i.u = trunc nuw i32 %i.t to i8
  store i8 %i.u, ptr %i.c, align 1
  %i.v = load i32, ptr %i.a, align 4
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [127 x i16], ptr @yy_accept, i64 0, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2
  %i.z = icmp ne i16 %i.y, 0
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = load i32, ptr %i.a, align 4
  store i32 %i.aa, ptr @yy_last_accepting_state, align 4
  %i.ab = load ptr, ptr %i.b, align 8
  store ptr %i.ab, ptr @yy_last_accepting_cpos, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %bb.h
  %i.ac = load i32, ptr %i.a, align 4
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [143 x i16], ptr @yy_base, i64 0, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = sext i16 %i.af to i32
  %i.ah = load i8, ptr %i.c, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = add nsw i32 %i.ag, %i.ai
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [419 x i16], ptr @yy_chk, i64 0, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2
  %i.an = sext i16 %i.am to i32
  %i.ao = load i32, ptr %i.a, align 4
  %i.ap = icmp ne i32 %i.an, %i.ao
  br i1 %i.ap, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %i.a, align 4
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [143 x i16], ptr @yy_def, i64 0, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2
  %i.au = sext i16 %i.at to i32
  store i32 %i.au, ptr %i.a, align 4
  %i.av = load i32, ptr %i.a, align 4
  %i.aw = icmp sge i32 %i.av, 127
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = load i8, ptr %i.c, align 1
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [30 x i8], ptr @yy_meta, i64 0, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1
  store i8 %i.ba, ptr %i.c, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br label %bb.i, !llvm.loop !7

bb.m:                                             ; preds = %bb.i
  %i.bb = load i32, ptr %i.a, align 4
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [143 x i16], ptr @yy_base, i64 0, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2
  %i.bf = sext i16 %i.be to i32
  %i.bg = load i8, ptr %i.c, align 1
  %i.bh = zext i8 %i.bg to i32
  %i.bi = add nsw i32 %i.bf, %i.bh
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [419 x i16], ptr @yy_nxt, i64 0, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2
  %i.bm = sext i16 %i.bl to i32
  store i32 %i.bm, ptr %i.a, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = load ptr, ptr %i.b, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i32 1
  store ptr %i.bo, ptr %i.b, align 8
  br label %bb.b, !llvm.loop !8

bb.o:                                             ; preds = %bb.b
  %i.bp = load i32, ptr %i.a, align 4
  ret i32 %i.bp
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yy_try_NUL_trans(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 12 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  store i32 %0, ptr %i.a, align 4
  %i.e = load ptr, ptr @yy_c_buf_p, align 8
  store ptr %i.e, ptr %i.c, align 8
  store i8 1, ptr %i.d, align 1
  %i.f = load i32, ptr %i.a, align 4
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [127 x i16], ptr @yy_accept, i64 0, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2
  %i.j = icmp ne i16 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %i.a, align 4
  store i32 %i.k, ptr @yy_last_accepting_state, align 4
  %i.l = load ptr, ptr %i.c, align 8
  store ptr %i.l, ptr @yy_last_accepting_cpos, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %i.m = load i32, ptr %i.a, align 4
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [143 x i16], ptr @yy_base, i64 0, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2
  %i.q = sext i16 %i.p to i32
  %i.r = load i8, ptr %i.d, align 1
  %i.s = zext i8 %i.r to i32
  %i.t = add nsw i32 %i.q, %i.s
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [419 x i16], ptr @yy_chk, i64 0, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2
  %i.x = sext i16 %i.w to i32
  %i.y = load i32, ptr %i.a, align 4
  %i.z = icmp ne i32 %i.x, %i.y
  br i1 %i.z, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.aa = load i32, ptr %i.a, align 4
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [143 x i16], ptr @yy_def, i64 0, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = sext i16 %i.ad to i32
  store i32 %i.ae, ptr %i.a, align 4
  %i.af = load i32, ptr %i.a, align 4
  %i.ag = icmp sge i32 %i.af, 127
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = load i8, ptr %i.d, align 1
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [30 x i8], ptr @yy_meta, i64 0, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1
  store i8 %i.ak, ptr %i.d, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %bb.d, !llvm.loop !9

bb.h:                                             ; preds = %bb.d
  %i.al = load i32, ptr %i.a, align 4
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [143 x i16], ptr @yy_base, i64 0, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = sext i16 %i.ao to i32
  %i.aq = load i8, ptr %i.d, align 1
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nsw i32 %i.ap, %i.ar
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [419 x i16], ptr @yy_nxt, i64 0, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2
  %i.aw = sext i16 %i.av to i32
  store i32 %i.aw, ptr %i.a, align 4
  %i.ax = load i32, ptr %i.a, align 4
  %i.ay = icmp eq i32 %i.ax, 126
  %i.az = zext i1 %i.ay to i32
  store i32 %i.az, ptr %i.b, align 4
  %i.ba = load i32, ptr %i.b, align 4
  %i.bb = icmp ne i32 %i.ba, 0
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bc = load i32, ptr %i.a, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bd = phi i32 [ 0, %bb.i ], [ %i.bc, %bb.j ]
  ret i32 %i.bd
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yy_get_next_buffer() unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %i.d = alloca i32, align 4                      ; 11 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %i.h = alloca ptr, align 8                      ; 13 uses
  %i.i = alloca i32, align 4                      ; 2 uses
  %i.j = alloca i32, align 4                      ; 2 uses
  %i.k = alloca i32, align 4                      ; 7 uses
  %i.l = alloca i32, align 4                      ; 8 uses
  %i.m = alloca i32, align 4                      ; 3 uses
  %i.n = load ptr, ptr @yy_buffer_stack, align 8
  %i.o = load i64, ptr @yy_buffer_stack_top, align 8
  %i.p = getelementptr inbounds nuw ptr, ptr %i.n, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8
  %0 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.q, i32 0, i32 1
  %i.r = load ptr, ptr %0, align 8
  store ptr %i.r, ptr %i.b, align 8
  %i.s = load ptr, ptr @prte_rmaps_rank_file_text, align 8
  store ptr %i.s, ptr %i.c, align 8
  %i.t = load ptr, ptr @yy_c_buf_p, align 8
  %i.u = load ptr, ptr @yy_buffer_stack, align 8
  %i.v = load i64, ptr @yy_buffer_stack_top, align 8
  %i.w = getelementptr inbounds nuw ptr, ptr %i.u, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8
  %1 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.x, i32 0, i32 1
  %i.y = load ptr, ptr %1, align 8
  %i.z = load i32, ptr @yy_n_chars, align 4
  %i.aa = add nsw i32 %i.z, 1
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 %i.ab
  %i.ad = icmp ugt ptr %i.t, %i.ac
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @yy_fatal_error(ptr noundef @.str.5) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = load ptr, ptr @yy_buffer_stack, align 8
  %i.af = load i64, ptr @yy_buffer_stack_top, align 8
  %i.ag = getelementptr inbounds nuw ptr, ptr %i.ae, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8
  %2 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.ah, i32 0, i32 10
  %i.ai = load i32, ptr %2, align 4
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ak = load ptr, ptr @yy_c_buf_p, align 8
  %i.al = load ptr, ptr @prte_rmaps_rank_file_text, align 8
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = sub nuw nsw i64 %i.ao, 0
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.a, align 4
  br label %bb.bh

bb.f:                                             ; preds = %bb.d
  store i32 2, ptr %i.a, align 4
  br label %bb.bh

bb.g:                                             ; preds = %bb.c
  %i.ar = load ptr, ptr @yy_c_buf_p, align 8
  %i.as = load ptr, ptr @prte_rmaps_rank_file_text, align 8
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = sub nsw i64 %i.av, 1
  %i.ax = trunc i64 %i.aw to i32
  store i32 %i.ax, ptr %i.d, align 4
  store i32 0, ptr %i.e, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %i.ay = load i32, ptr %i.e, align 4
  %i.az = load i32, ptr %i.d, align 4
  %i.ba = icmp slt i32 %i.ay, %i.az
  br i1 %i.ba, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bb = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i32 1
  store ptr %i.bc, ptr %i.c, align 8
  %i.bd = load i8, ptr %i.bb, align 1
  %i.be = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i32 1
  store ptr %i.bf, ptr %i.b, align 8
  store i8 %i.bd, ptr %i.be, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = load i32, ptr %i.e, align 4
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.e, align 4
  br label %bb.h, !llvm.loop !10

bb.k:                                             ; preds = %bb.h
  %i.bi = load ptr, ptr @yy_buffer_stack, align 8
  %i.bj = load i64, ptr @yy_buffer_stack_top, align 8
  %i.bk = getelementptr inbounds nuw ptr, ptr %i.bi, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8
  %3 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.bl, i32 0, i32 11
  %i.bm = load i32, ptr %3, align 8
  %i.bn = icmp eq i32 %i.bm, 2
  br i1 %i.bn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr @yy_n_chars, align 4
  %i.bo = load ptr, ptr @yy_buffer_stack, align 8
  %i.bp = load i64, ptr @yy_buffer_stack_top, align 8
  %i.bq = getelementptr inbounds nuw ptr, ptr %i.bo, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8
  %4 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.br, i32 0, i32 4
  store i32 0, ptr %4, align 4
  br label %bb.aw

bb.m:                                             ; preds = %bb.k
  %i.bs = load ptr, ptr @yy_buffer_stack, align 8
  %i.bt = load i64, ptr @yy_buffer_stack_top, align 8
  %i.bu = getelementptr inbounds nuw ptr, ptr %i.bs, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8
  %5 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.bv, i32 0, i32 3
  %i.bw = load i32, ptr %5, align 8
  %i.bx = load i32, ptr %i.d, align 4
  %i.by = sub nsw i32 %i.bw, %i.bx
  %i.bz = sub nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.g, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.w, %bb.m
  %i.ca = load i32, ptr %i.g, align 4
  %i.cb = icmp sle i32 %i.ca, 0
  br i1 %i.cb, label %bb.o, label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.cc = load ptr, ptr @yy_buffer_stack, align 8
  %i.cd = load i64, ptr @yy_buffer_stack_top, align 8
  %i.ce = getelementptr inbounds nuw ptr, ptr %i.cc, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8
  store ptr %i.cf, ptr %i.h, align 8
  %i.cg = load ptr, ptr @yy_c_buf_p, align 8
  %i.ch = load ptr, ptr %i.h, align 8
  %6 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.ch, i32 0, i32 1
  %i.ci = load ptr, ptr %6, align 8
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = trunc i64 %i.cl to i32
  store i32 %i.cm, ptr %i.i, align 4
  %i.cn = load ptr, ptr %i.h, align 8
  %7 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.cn, i32 0, i32 5
  %i.co = load i32, ptr %7, align 8
  %i.cp = icmp ne i32 %i.co, 0
  br i1 %i.cp, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.cq = load ptr, ptr %i.h, align 8
  %8 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.cq, i32 0, i32 3
  %i.cr = load i32, ptr %8, align 8
  %i.cs = mul nsw i32 %i.cr, 2
  store i32 %i.cs, ptr %i.j, align 4
  %i.ct = load i32, ptr %i.j, align 4
  %i.cu = icmp sle i32 %i.ct, 0
  br i1 %i.cu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cv = load ptr, ptr %i.h, align 8
  %9 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.cv, i32 0, i32 3
  %i.cw = load i32, ptr %9, align 8
  %i.cx = sdiv i32 %i.cw, 8
  %i.cy = load ptr, ptr %i.h, align 8
  %10 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.cy, i32 0, i32 3 ; 2 uses
  %i.cz = load i32, ptr %10, align 8
  %i.da = add nsw i32 %i.cz, %i.cx
  store i32 %i.da, ptr %10, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.db = load ptr, ptr %i.h, align 8
  %11 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.db, i32 0, i32 3 ; 2 uses
  %i.dc = load i32, ptr %11, align 8
  %i.dd = mul nsw i32 %i.dc, 2
  store i32 %i.dd, ptr %11, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.de = load ptr, ptr %i.h, align 8
  %12 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.de, i32 0, i32 1
  %i.df = load ptr, ptr %12, align 8
  %i.dg = load ptr, ptr %i.h, align 8
  %13 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.dg, i32 0, i32 3
  %i.dh = load i32, ptr %13, align 8
  %i.di = add nsw i32 %i.dh, 2
  %i.dj = sext i32 %i.di to i64
  %i.dk = call ptr @prte_rmaps_rank_file_realloc(ptr noundef %i.df, i64 noundef %i.dj)
  %i.dl = load ptr, ptr %i.h, align 8
  %14 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.dl, i32 0, i32 1
  store ptr %i.dk, ptr %14, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.dm = load ptr, ptr %i.h, align 8
  %15 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.dm, i32 0, i32 1
  store ptr null, ptr %15, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dn = load ptr, ptr %i.h, align 8
  %16 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.dn, i32 0, i32 1
  %i.do = load ptr, ptr %16, align 8
  %i.dp = icmp ne ptr %i.do, null
  br i1 %i.dp, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @yy_fatal_error(ptr noundef @.str.6) #14
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.dq = load ptr, ptr %i.h, align 8
  %17 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.dq, i32 0, i32 1
  %i.dr = load ptr, ptr %17, align 8
  %i.ds = load i32, ptr %i.i, align 4
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds i8, ptr %i.dr, i64 %i.dt
  store ptr %i.du, ptr @yy_c_buf_p, align 8
  %i.dv = load ptr, ptr @yy_buffer_stack, align 8
  %i.dw = load i64, ptr @yy_buffer_stack_top, align 8
  %i.dx = getelementptr inbounds nuw ptr, ptr %i.dv, i64 %i.dw
  %i.dy = load ptr, ptr %i.dx, align 8
  %18 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.dy, i32 0, i32 3
  %i.dz = load i32, ptr %18, align 8
  %i.ea = load i32, ptr %i.d, align 4
  %i.eb = sub nsw i32 %i.dz, %i.ea
  %i.ec = sub nsw i32 %i.eb, 1
  store i32 %i.ec, ptr %i.g, align 4
  br label %bb.n, !llvm.loop !11

bb.x:                                             ; preds = %bb.n
  %i.ed = load i32, ptr %i.g, align 4
  %i.ee = icmp sgt i32 %i.ed, 8192
  br i1 %i.ee, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 8192, ptr %i.g, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ef = load ptr, ptr @yy_buffer_stack, align 8
  %i.eg = load i64, ptr @yy_buffer_stack_top, align 8
  %i.eh = getelementptr inbounds nuw ptr, ptr %i.ef, i64 %i.eg
  %i.ei = load ptr, ptr %i.eh, align 8
  %19 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.ei, i32 0, i32 6
  %i.ej = load i32, ptr %19, align 4
  %i.ek = icmp ne i32 %i.ej, 0
  br i1 %i.ek, label %bb.aa, label %bb.an

bb.aa:                                            ; preds = %bb.z
  store i32 42, ptr %i.k, align 4
  store i32 0, ptr %i.l, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ag, %bb.aa
  %i.el = load i32, ptr %i.l, align 4
  %i.em = load i32, ptr %i.g, align 4
  %i.en = icmp slt i32 %i.el, %i.em
  br i1 %i.en, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.eo = load ptr, ptr @prte_rmaps_rank_file_in, align 8
  %i.ep = call i32 @getc(ptr noundef %i.eo)       ; 2 uses
  store i32 %i.ep, ptr %i.k, align 4
  %i.eq = icmp ne i32 %i.ep, -1
  br i1 %i.eq, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.er = load i32, ptr %i.k, align 4
  %i.es = icmp ne i32 %i.er, 10
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.et = phi i1 [ false, %bb.ac ], [ false, %bb.ab ], [ %i.es, %bb.ad ]
  br i1 %i.et, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.eu = load i32, ptr %i.k, align 4
  %i.ev = trunc i32 %i.eu to i8
  %i.ew = load ptr, ptr @yy_buffer_stack, align 8
  %i.ex = load i64, ptr @yy_buffer_stack_top, align 8
  %i.ey = getelementptr inbounds nuw ptr, ptr %i.ew, i64 %i.ex
  %i.ez = load ptr, ptr %i.ey, align 8
  %20 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.ez, i32 0, i32 1
  %i.fa = load ptr, ptr %20, align 8
  %i.fb = load i32, ptr %i.d, align 4
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds i8, ptr %i.fa, i64 %i.fc
  %i.fe = load i32, ptr %i.l, align 4
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds i8, ptr %i.fd, i64 %i.ff
  store i8 %i.ev, ptr %i.fg, align 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fh = load i32, ptr %i.l, align 4
  %i.fi = add nsw i32 %i.fh, 1
  store i32 %i.fi, ptr %i.l, align 4
  br label %bb.ab, !llvm.loop !12

bb.ah:                                            ; preds = %bb.ae
  %i.fj = load i32, ptr %i.k, align 4
  %i.fk = icmp eq i32 %i.fj, 10
  br i1 %i.fk, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fl = load i32, ptr %i.k, align 4
  %i.fm = trunc i32 %i.fl to i8
  %i.fn = load ptr, ptr @yy_buffer_stack, align 8
  %i.fo = load i64, ptr @yy_buffer_stack_top, align 8
  %i.fp = getelementptr inbounds nuw ptr, ptr %i.fn, i64 %i.fo
  %i.fq = load ptr, ptr %i.fp, align 8
  %21 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.fq, i32 0, i32 1
  %i.fr = load ptr, ptr %21, align 8
  %i.fs = load i32, ptr %i.d, align 4
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds i8, ptr %i.fr, i64 %i.ft
  %i.fv = load i32, ptr %i.l, align 4             ; 2 uses
  %i.fw = add nsw i32 %i.fv, 1
  store i32 %i.fw, ptr %i.l, align 4
  %i.fx = sext i32 %i.fv to i64
  %i.fy = getelementptr inbounds i8, ptr %i.fu, i64 %i.fx
  store i8 %i.fm, ptr %i.fy, align 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.fz = load i32, ptr %i.k, align 4
  %i.ga = icmp eq i32 %i.fz, -1
  br i1 %i.ga, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.gb = load ptr, ptr @prte_rmaps_rank_file_in, align 8
  %i.gc = call i32 @ferror(ptr noundef %i.gb) #15
  %i.gd = icmp ne i32 %i.gc, 0
  br i1 %i.gd, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @yy_fatal_error(ptr noundef @.str.7) #14
  unreachable

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %i.ge = load i32, ptr %i.l, align 4
  store i32 %i.ge, ptr @yy_n_chars, align 4
  br label %bb.av

bb.an:                                            ; preds = %bb.z
  %i.gf = call ptr @__errno_location() #16
  store i32 0, ptr %i.gf, align 4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.at, %bb.an
  %i.gg = load ptr, ptr @yy_buffer_stack, align 8
  %i.gh = load i64, ptr @yy_buffer_stack_top, align 8
  %i.gi = getelementptr inbounds nuw ptr, ptr %i.gg, i64 %i.gh
  %i.gj = load ptr, ptr %i.gi, align 8
  %22 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.gj, i32 0, i32 1
  %i.gk = load ptr, ptr %22, align 8
  %i.gl = load i32, ptr %i.d, align 4
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds i8, ptr %i.gk, i64 %i.gm
  %i.go = load i32, ptr %i.g, align 4
  %i.gp = sext i32 %i.go to i64
  %i.gq = load ptr, ptr @prte_rmaps_rank_file_in, align 8
  %i.gr = call i64 @fread(ptr noundef %i.gn, i64 noundef 1, i64 noundef %i.gp, ptr noundef %i.gq)
  %i.gs = trunc i64 %i.gr to i32                  ; 2 uses
  store i32 %i.gs, ptr @yy_n_chars, align 4
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gu = load ptr, ptr @prte_rmaps_rank_file_in, align 8
  %i.gv = call i32 @ferror(ptr noundef %i.gu) #15
  %i.gw = icmp ne i32 %i.gv, 0
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.gx = phi i1 [ false, %bb.ao ], [ %i.gw, %bb.ap ]
  br i1 %i.gx, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.gy = call ptr @__errno_location() #16
  %i.gz = load i32, ptr %i.gy, align 4
  %i.ha = icmp ne i32 %i.gz, 4
  br i1 %i.ha, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @yy_fatal_error(ptr noundef @.str.7) #14
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.hb = call ptr @__errno_location() #16
  store i32 0, ptr %i.hb, align 4
  %i.hc = load ptr, ptr @prte_rmaps_rank_file_in, align 8
  call void @clearerr(ptr noundef %i.hc) #15
  br label %bb.ao, !llvm.loop !13

bb.au:                                            ; preds = %bb.aq
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.am
  %i.hd = load i32, ptr @yy_n_chars, align 4
  %i.he = load ptr, ptr @yy_buffer_stack, align 8
  %i.hf = load i64, ptr @yy_buffer_stack_top, align 8
  %i.hg = getelementptr inbounds nuw ptr, ptr %i.he, i64 %i.hf
  %i.hh = load ptr, ptr %i.hg, align 8
  %23 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.hh, i32 0, i32 4
  store i32 %i.hd, ptr %23, align 4
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.l
  %i.hi = load i32, ptr @yy_n_chars, align 4
  %i.hj = icmp eq i32 %i.hi, 0
  br i1 %i.hj, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.hk = load i32, ptr %i.d, align 4
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 1, ptr %i.f, align 4
  %i.hm = load ptr, ptr @prte_rmaps_rank_file_in, align 8
  call void @prte_rmaps_rank_file_restart(ptr noundef %i.hm)
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  store i32 2, ptr %i.f, align 4
  %i.hn = load ptr, ptr @yy_buffer_stack, align 8
  %i.ho = load i64, ptr @yy_buffer_stack_top, align 8
  %i.hp = getelementptr inbounds nuw ptr, ptr %i.hn, i64 %i.ho
  %i.hq = load ptr, ptr %i.hp, align 8
  %24 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.hq, i32 0, i32 11
  store i32 2, ptr %24, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  br label %bb.bc

bb.bb:                                            ; preds = %bb.aw
  store i32 0, ptr %i.f, align 4
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.hr = load i32, ptr @yy_n_chars, align 4
  %i.hs = load i32, ptr %i.d, align 4
  %i.ht = add nsw i32 %i.hr, %i.hs
  %i.hu = load ptr, ptr @yy_buffer_stack, align 8
  %i.hv = load i64, ptr @yy_buffer_stack_top, align 8
  %i.hw = getelementptr inbounds nuw ptr, ptr %i.hu, i64 %i.hv
  %i.hx = load ptr, ptr %i.hw, align 8
  %25 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.hx, i32 0, i32 3
  %i.hy = load i32, ptr %25, align 8
  %i.hz = icmp sgt i32 %i.ht, %i.hy
  br i1 %i.hz, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.ia = load i32, ptr @yy_n_chars, align 4
  %i.ib = load i32, ptr %i.d, align 4
  %i.ic = add nsw i32 %i.ia, %i.ib
  %i.id = load i32, ptr @yy_n_chars, align 4
  %i.ie = ashr i32 %i.id, 1
  %i.if = add nsw i32 %i.ic, %i.ie
  store i32 %i.if, ptr %i.m, align 4
  %i.ig = load ptr, ptr @yy_buffer_stack, align 8
  %i.ih = load i64, ptr @yy_buffer_stack_top, align 8
  %i.ii = getelementptr inbounds nuw ptr, ptr %i.ig, i64 %i.ih
  %i.ij = load ptr, ptr %i.ii, align 8
  %26 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.ij, i32 0, i32 1
  %i.ik = load ptr, ptr %26, align 8
  %i.il = load i32, ptr %i.m, align 4
  %i.im = sext i32 %i.il to i64
  %i.in = call ptr @prte_rmaps_rank_file_realloc(ptr noundef %i.ik, i64 noundef %i.im)
  %i.io = load ptr, ptr @yy_buffer_stack, align 8
  %i.ip = load i64, ptr @yy_buffer_stack_top, align 8
  %i.iq = getelementptr inbounds nuw ptr, ptr %i.io, i64 %i.ip
  %i.ir = load ptr, ptr %i.iq, align 8
  %27 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.ir, i32 0, i32 1
  store ptr %i.in, ptr %27, align 8
  %i.is = load ptr, ptr @yy_buffer_stack, align 8
  %i.it = load i64, ptr @yy_buffer_stack_top, align 8
  %i.iu = getelementptr inbounds nuw ptr, ptr %i.is, i64 %i.it
  %i.iv = load ptr, ptr %i.iu, align 8
  %28 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.iv, i32 0, i32 1
  %i.iw = load ptr, ptr %28, align 8
  %i.ix = icmp ne ptr %i.iw, null
  br i1 %i.ix, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @yy_fatal_error(ptr noundef @.str.8) #14
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.iy = load i32, ptr %i.m, align 4
  %i.iz = sub nsw i32 %i.iy, 2
  %i.ja = load ptr, ptr @yy_buffer_stack, align 8
  %i.jb = load i64, ptr @yy_buffer_stack_top, align 8
  %i.jc = getelementptr inbounds nuw ptr, ptr %i.ja, i64 %i.jb
  %i.jd = load ptr, ptr %i.jc, align 8
  %29 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.jd, i32 0, i32 3
  store i32 %i.iz, ptr %29, align 8
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bc
  %i.je = load i32, ptr %i.d, align 4
  %i.jf = load i32, ptr @yy_n_chars, align 4
  %i.jg = add nsw i32 %i.jf, %i.je
  store i32 %i.jg, ptr @yy_n_chars, align 4
  %i.jh = load ptr, ptr @yy_buffer_stack, align 8
  %i.ji = load i64, ptr @yy_buffer_stack_top, align 8
  %i.jj = getelementptr inbounds nuw ptr, ptr %i.jh, i64 %i.ji
  %i.jk = load ptr, ptr %i.jj, align 8
  %30 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.jk, i32 0, i32 1
  %i.jl = load ptr, ptr %30, align 8
  %i.jm = load i32, ptr @yy_n_chars, align 4
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds i8, ptr %i.jl, i64 %i.jn
  store i8 0, ptr %i.jo, align 1
  %i.jp = load ptr, ptr @yy_buffer_stack, align 8
  %i.jq = load i64, ptr @yy_buffer_stack_top, align 8
  %i.jr = getelementptr inbounds nuw ptr, ptr %i.jp, i64 %i.jq
  %i.js = load ptr, ptr %i.jr, align 8
  %31 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.js, i32 0, i32 1
  %i.jt = load ptr, ptr %31, align 8
  %i.ju = load i32, ptr @yy_n_chars, align 4
  %i.jv = add nsw i32 %i.ju, 1
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr inbounds i8, ptr %i.jt, i64 %i.jw
  store i8 0, ptr %i.jx, align 1
  %i.jy = load ptr, ptr @yy_buffer_stack, align 8
  %i.jz = load i64, ptr @yy_buffer_stack_top, align 8
  %i.ka = getelementptr inbounds nuw ptr, ptr %i.jy, i64 %i.jz
  %i.kb = load ptr, ptr %i.ka, align 8
  %32 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.kb, i32 0, i32 1
  %i.kc = load ptr, ptr %32, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 0
  store ptr %i.kd, ptr @prte_rmaps_rank_file_text, align 8
  %i.ke = load i32, ptr %i.f, align 4
  store i32 %i.ke, ptr %i.a, align 4
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.f, %bb.e
  %i.kf = load i32, ptr %i.a, align 4
  ret i32 %i.kf
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @prte_rmaps_rank_file_wrap() local_unnamed_addr #0 {
bb.a:
  store i8 1, ptr @prte_rmaps_rank_file_done, align 1
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define void @prte_rmaps_rank_file_restart(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load ptr, ptr @yy_buffer_stack, align 8
  %i.c = icmp ne ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @yy_buffer_stack, align 8
  %i.e = load i64, ptr @yy_buffer_stack_top, align 8
  %i.f = getelementptr inbounds nuw ptr, ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp ne ptr %i.g, null
  br i1 %i.h, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @prte_rmaps_rank_file_ensure_buffer_stack()
  %i.i = load ptr, ptr @prte_rmaps_rank_file_in, align 8
  %i.j = call ptr @prte_rmaps_rank_file__create_buffer(ptr noundef %i.i, i32 noundef 16384)
  %i.k = load ptr, ptr @yy_buffer_stack, align 8
  %i.l = load i64, ptr @yy_buffer_stack_top, align 8
  %i.m = getelementptr inbounds nuw ptr, ptr %i.k, i64 %i.l
  store ptr %i.j, ptr %i.m, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.n = load ptr, ptr @yy_buffer_stack, align 8
  %i.o = icmp ne ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr @yy_buffer_stack, align 8
  %i.q = load i64, ptr @yy_buffer_stack_top, align 8
  %i.r = getelementptr inbounds nuw ptr, ptr %i.p, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.t = phi ptr [ %i.s, %bb.f ], [ null, %bb.g ]
  %i.u = load ptr, ptr %i.a, align 8
  call void @prte_rmaps_rank_file__init_buffer(ptr noundef %i.t, ptr noundef %i.u)
  call void @prte_rmaps_rank_file__load_buffer_state()
  ret void
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @yy_fatal_error(ptr noundef %0) unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load ptr, ptr @stderr, align 8
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef @.str.10, ptr noundef %i.c) #15 ; 0 uses
  call void @exit(i32 noundef 2) #17
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prte_rmaps_rank_file__init_buffer(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.d = call ptr @__errno_location() #16
  %i.e = load i32, ptr %i.d, align 4
  store i32 %i.e, ptr %i.c, align 4
  %i.f = load ptr, ptr %i.a, align 8
  call void @prte_rmaps_rank_file__flush_buffer(ptr noundef %i.f)
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = load ptr, ptr %i.a, align 8
  %2 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.h, i32 0, i32 0
  store ptr %i.g, ptr %2, align 8
  %i.i = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.i, i32 0, i32 10
  store i32 1, ptr %3, align 4
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = load ptr, ptr @yy_buffer_stack, align 8
  %i.l = icmp ne ptr %i.k, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr @yy_buffer_stack, align 8
  %i.n = load i64, ptr @yy_buffer_stack_top, align 8
  %i.o = getelementptr inbounds nuw ptr, ptr %i.m, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %i.p, %bb.b ], [ null, %bb.c ]
  %i.r = icmp ne ptr %i.j, %i.q
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.a, align 8
  %4 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.s, i32 0, i32 8
  store i32 1, ptr %4, align 4
  %i.t = load ptr, ptr %i.a, align 8
  %5 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.t, i32 0, i32 9
  store i32 0, ptr %5, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = load ptr, ptr %i.b, align 8
  %i.v = icmp ne ptr %i.u, null
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.b, align 8
  %i.x = call i32 @fileno(ptr noundef %i.w) #15
  %i.y = call i32 @isatty(i32 noundef %i.x) #15
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = phi i32 [ %i.aa, %bb.g ], [ 0, %bb.h ]
  %i.ac = load ptr, ptr %i.a, align 8
  %6 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.ac, i32 0, i32 6
  store i32 %i.ab, ptr %6, align 4
  %i.ad = load i32, ptr %i.c, align 4
  %i.ae = call ptr @__errno_location() #16
  store i32 %i.ad, ptr %i.ae, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @prte_rmaps_rank_file__switch_to_buffer(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  call void @prte_rmaps_rank_file_ensure_buffer_stack()
  %i.b = load ptr, ptr @yy_buffer_stack, align 8
  %i.c = icmp ne ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @yy_buffer_stack, align 8
  %i.e = load i64, ptr @yy_buffer_stack_top, align 8
  %i.f = getelementptr inbounds nuw ptr, ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.c ]
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.k = load ptr, ptr @yy_buffer_stack, align 8
  %i.l = icmp ne ptr %i.k, null
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr @yy_buffer_stack, align 8
  %i.n = load i64, ptr @yy_buffer_stack_top, align 8
  %i.o = getelementptr inbounds nuw ptr, ptr %i.m, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp ne ptr %i.p, null
  br i1 %i.q, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.r = load i8, ptr @yy_hold_char, align 1
  %i.s = load ptr, ptr @yy_c_buf_p, align 8
  store i8 %i.r, ptr %i.s, align 1
  %i.t = load ptr, ptr @yy_c_buf_p, align 8
  %i.u = load ptr, ptr @yy_buffer_stack, align 8
  %i.v = load i64, ptr @yy_buffer_stack_top, align 8
  %i.w = getelementptr inbounds nuw ptr, ptr %i.u, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8
  %1 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.x, i32 0, i32 2
  store ptr %i.t, ptr %1, align 8
  %i.y = load i32, ptr @yy_n_chars, align 4
  %i.z = load ptr, ptr @yy_buffer_stack, align 8
  %i.aa = load i64, ptr @yy_buffer_stack_top, align 8
  %i.ab = getelementptr inbounds nuw ptr, ptr %i.z, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8
  %2 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.ac, i32 0, i32 4
  store i32 %i.y, ptr %2, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %i.ad = load ptr, ptr %i.a, align 8
  %i.ae = load ptr, ptr @yy_buffer_stack, align 8
  %i.af = load i64, ptr @yy_buffer_stack_top, align 8
  %i.ag = getelementptr inbounds nuw ptr, ptr %i.ae, i64 %i.af
  store ptr %i.ad, ptr %i.ag, align 8
  call void @prte_rmaps_rank_file__load_buffer_state()
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define ptr @prte_rmaps_rank_file_alloc(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %0, ptr %i.a, align 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = call noalias ptr @malloc(i64 noundef %i.b) #18
  ret ptr %i.c
}

; Function Attrs: noinline nounwind optnone uwtable
define void @prte_rmaps_rank_file__delete_buffer(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp ne ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = load ptr, ptr @yy_buffer_stack, align 8
  %i.f = icmp ne ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @yy_buffer_stack, align 8
  %i.h = load i64, ptr @yy_buffer_stack_top, align 8
  %i.i = getelementptr inbounds nuw ptr, ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = phi ptr [ %i.j, %bb.d ], [ null, %bb.e ]
  %i.l = icmp eq ptr %i.d, %i.k
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr @yy_buffer_stack, align 8
  %i.n = load i64, ptr @yy_buffer_stack_top, align 8
  %i.o = getelementptr inbounds nuw ptr, ptr %i.m, i64 %i.n
  store ptr null, ptr %i.o, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = load ptr, ptr %i.a, align 8
  %1 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.p, i32 0, i32 5
  %i.q = load i32, ptr %1, align 8
  %i.r = icmp ne i32 %i.q, 0
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %i.a, align 8
  %2 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.s, i32 0, i32 1
  %i.t = load ptr, ptr %2, align 8
  call void @prte_rmaps_rank_file_free(ptr noundef %i.t)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.u = load ptr, ptr %i.a, align 8
  call void @prte_rmaps_rank_file_free(ptr noundef %i.u)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @prte_rmaps_rank_file_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load ptr, ptr %i.a, align 8
  call void @free(ptr noundef %i.b) #15
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @prte_rmaps_rank_file__flush_buffer(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp ne ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8
  %1 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.d, i32 0, i32 4
  store i32 0, ptr %1, align 4
  %i.e = load ptr, ptr %i.a, align 8
  %2 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.e, i32 0, i32 1
  %i.f = load ptr, ptr %2, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 0
  store i8 0, ptr %i.g, align 1
  %i.h = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.h, i32 0, i32 1
  %i.i = load ptr, ptr %3, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 0, ptr %i.j, align 1
  %i.k = load ptr, ptr %i.a, align 8
  %4 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.k, i32 0, i32 1
  %i.l = load ptr, ptr %4, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 0
  %i.n = load ptr, ptr %i.a, align 8
  %5 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.n, i32 0, i32 2
  store ptr %i.m, ptr %5, align 8
  %i.o = load ptr, ptr %i.a, align 8
  %6 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.o, i32 0, i32 7
  store i32 1, ptr %6, align 8
  %i.p = load ptr, ptr %i.a, align 8
  %7 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.p, i32 0, i32 11
  store i32 0, ptr %7, align 8
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = load ptr, ptr @yy_buffer_stack, align 8
  %i.s = icmp ne ptr %i.r, null
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr @yy_buffer_stack, align 8
  %i.u = load i64, ptr @yy_buffer_stack_top, align 8
  %i.v = getelementptr inbounds nuw ptr, ptr %i.t, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = phi ptr [ %i.w, %bb.d ], [ null, %bb.e ]
  %i.y = icmp eq ptr %i.q, %i.x
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @prte_rmaps_rank_file__load_buffer_state()
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.b
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @prte_rmaps_rank_file_push_buffer_state(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  call void @prte_rmaps_rank_file_ensure_buffer_stack()
  %i.d = load ptr, ptr @yy_buffer_stack, align 8
  %i.e = icmp ne ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @yy_buffer_stack, align 8
  %i.g = load i64, ptr @yy_buffer_stack_top, align 8
  %i.h = getelementptr inbounds nuw ptr, ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp ne ptr %i.i, null
  br i1 %i.j, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.k = load i8, ptr @yy_hold_char, align 1
  %i.l = load ptr, ptr @yy_c_buf_p, align 8
  store i8 %i.k, ptr %i.l, align 1
  %i.m = load ptr, ptr @yy_c_buf_p, align 8
  %i.n = load ptr, ptr @yy_buffer_stack, align 8
  %i.o = load i64, ptr @yy_buffer_stack_top, align 8
  %i.p = getelementptr inbounds nuw ptr, ptr %i.n, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8
  %1 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.q, i32 0, i32 2
  store ptr %i.m, ptr %1, align 8
  %i.r = load i32, ptr @yy_n_chars, align 4
  %i.s = load ptr, ptr @yy_buffer_stack, align 8
  %i.t = load i64, ptr @yy_buffer_stack_top, align 8
  %i.u = getelementptr inbounds nuw ptr, ptr %i.s, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8
  %2 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.v, i32 0, i32 4
  store i32 %i.r, ptr %2, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %i.w = load ptr, ptr @yy_buffer_stack, align 8
  %i.x = icmp ne ptr %i.w, null
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr @yy_buffer_stack, align 8
  %i.z = load i64, ptr @yy_buffer_stack_top, align 8
  %i.aa = getelementptr inbounds nuw ptr, ptr %i.y, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp ne ptr %i.ab, null
  br i1 %i.ac, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ad = load i64, ptr @yy_buffer_stack_top, align 8
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr @yy_buffer_stack_top, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %i.af = load ptr, ptr %i.a, align 8
  %i.ag = load ptr, ptr @yy_buffer_stack, align 8
  %i.ah = load i64, ptr @yy_buffer_stack_top, align 8
  %i.ai = getelementptr inbounds nuw ptr, ptr %i.ag, i64 %i.ah
  store ptr %i.af, ptr %i.ai, align 8
  call void @prte_rmaps_rank_file__load_buffer_state()
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @prte_rmaps_rank_file_pop_buffer_state() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @yy_buffer_stack, align 8
  %i.b = icmp ne ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @yy_buffer_stack, align 8
  %i.d = load i64, ptr @yy_buffer_stack_top, align 8
  %i.e = getelementptr inbounds nuw ptr, ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp ne ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.n

bb.e:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @yy_buffer_stack, align 8
  %i.i = icmp ne ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr @yy_buffer_stack, align 8
  %i.k = load i64, ptr @yy_buffer_stack_top, align 8
  %i.l = getelementptr inbounds nuw ptr, ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = phi ptr [ %i.m, %bb.f ], [ null, %bb.g ]
  call void @prte_rmaps_rank_file__delete_buffer(ptr noundef %i.n)
  %i.o = load ptr, ptr @yy_buffer_stack, align 8
  %i.p = load i64, ptr @yy_buffer_stack_top, align 8
  %i.q = getelementptr inbounds nuw ptr, ptr %i.o, i64 %i.p
  store ptr null, ptr %i.q, align 8
  %i.r = load i64, ptr @yy_buffer_stack_top, align 8
  %i.s = icmp ugt i64 %i.r, 0
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = load i64, ptr @yy_buffer_stack_top, align 8
  %i.u = add i64 %i.t, -1
  store i64 %i.u, ptr @yy_buffer_stack_top, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.v = load ptr, ptr @yy_buffer_stack, align 8
  %i.w = icmp ne ptr %i.v, null
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = load ptr, ptr @yy_buffer_stack, align 8
  %i.y = load i64, ptr @yy_buffer_stack_top, align 8
  %i.z = getelementptr inbounds nuw ptr, ptr %i.x, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp ne ptr %i.aa, null
  br i1 %i.ab, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.j
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @prte_rmaps_rank_file__load_buffer_state()
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k, %bb.d
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define ptr @prte_rmaps_rank_file__scan_buffer(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 15 uses
  store ptr %0, ptr %i.b, align 8
  store i64 %1, ptr %i.c, align 8
  %i.e = load i64, ptr %i.c, align 8
  %i.f = icmp ult i64 %i.e, 2
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = load i64, ptr %i.c, align 8
  %i.i = sub i64 %i.h, 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1
  %i.l = sext i8 %i.k to i32
  %i.m = icmp ne i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.b, align 8
  %i.o = load i64, ptr %i.c, align 8
  %i.p = sub i64 %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1
  %i.s = sext i8 %i.r to i32
  %i.t = icmp ne i32 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  store ptr null, ptr %i.a, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.u = call ptr @prte_rmaps_rank_file_alloc(i64 noundef 64)
  store ptr %i.u, ptr %i.d, align 8
  %i.v = load ptr, ptr %i.d, align 8
  %i.w = icmp ne ptr %i.v, null
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @yy_fatal_error(ptr noundef @.str.2) #14
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.c, align 8
  %i.y = sub i64 %i.x, 2
  %i.z = trunc i64 %i.y to i32
  %i.aa = load ptr, ptr %i.d, align 8
  %2 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.aa, i32 0, i32 3
  store i32 %i.z, ptr %2, align 8
  %i.ab = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ac = load ptr, ptr %i.d, align 8
  %3 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.ac, i32 0, i32 1
  store ptr %i.ab, ptr %3, align 8
  %i.ad = load ptr, ptr %i.d, align 8
  %4 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.ad, i32 0, i32 2
  store ptr %i.ab, ptr %4, align 8
  %i.ae = load ptr, ptr %i.d, align 8
  %5 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.ae, i32 0, i32 5
  store i32 0, ptr %5, align 8
  %i.af = load ptr, ptr %i.d, align 8
  %6 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.af, i32 0, i32 0
  store ptr null, ptr %6, align 8
  %i.ag = load ptr, ptr %i.d, align 8
  %7 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.ag, i32 0, i32 3
  %i.ah = load i32, ptr %7, align 8
  %i.ai = load ptr, ptr %i.d, align 8
  %8 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.ai, i32 0, i32 4
  store i32 %i.ah, ptr %8, align 4
  %i.aj = load ptr, ptr %i.d, align 8
  %9 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.aj, i32 0, i32 6
  store i32 0, ptr %9, align 4
  %i.ak = load ptr, ptr %i.d, align 8
  %10 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.ak, i32 0, i32 7
  store i32 1, ptr %10, align 8
  %i.al = load ptr, ptr %i.d, align 8
  %11 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.al, i32 0, i32 10
  store i32 0, ptr %11, align 4
  %i.am = load ptr, ptr %i.d, align 8
  %12 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.am, i32 0, i32 11
  store i32 0, ptr %12, align 8
  %i.an = load ptr, ptr %i.d, align 8
  call void @prte_rmaps_rank_file__switch_to_buffer(ptr noundef %i.an)
  %i.ao = load ptr, ptr %i.d, align 8
  store ptr %i.ao, ptr %i.a, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.ap = load ptr, ptr %i.a, align 8
  ret ptr %i.ap
}

; Function Attrs: noinline nounwind optnone uwtable
define ptr @prte_rmaps_rank_file__scan_string(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = call i64 @strlen(ptr noundef %i.c) #13
  %i.e = trunc i64 %i.d to i32
  %i.f = call ptr @prte_rmaps_rank_file__scan_bytes(ptr noundef %i.b, i32 noundef %i.e)
  ret ptr %i.f
}

; Function Attrs: noinline nounwind optnone uwtable
define ptr @prte_rmaps_rank_file__scan_bytes(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 3 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  store ptr %0, ptr %i.a, align 8
  store i32 %1, ptr %i.b, align 4
  %i.g = load i32, ptr %i.b, align 4
  %i.h = add nsw i32 %i.g, 2
  %i.i = sext i32 %i.h to i64
  store i64 %i.i, ptr %i.e, align 8
  %i.j = load i64, ptr %i.e, align 8
  %i.k = call ptr @prte_rmaps_rank_file_alloc(i64 noundef %i.j)
  store ptr %i.k, ptr %i.d, align 8
  %i.l = load ptr, ptr %i.d, align 8
  %i.m = icmp ne ptr %i.l, null
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @yy_fatal_error(ptr noundef @.str.3) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  store i32 0, ptr %i.f, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.n = load i32, ptr %i.f, align 4
  %i.o = load i32, ptr %i.b, align 4
  %i.p = icmp slt i32 %i.n, %i.o
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = load i32, ptr %i.f, align 4
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1
  %i.v = load ptr, ptr %i.d, align 8
  %i.w = load i32, ptr %i.f, align 4
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %i.x
  store i8 %i.u, ptr %i.y, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load i32, ptr %i.f, align 4
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.f, align 4
  br label %bb.d, !llvm.loop !14

bb.g:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.d, align 8
  %i.ac = load i32, ptr %i.b, align 4
  %i.ad = add nsw i32 %i.ac, 1
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.ae
  store i8 0, ptr %i.af, align 1
  %i.ag = load ptr, ptr %i.d, align 8
  %i.ah = load i32, ptr %i.b, align 4
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 %i.ai
  store i8 0, ptr %i.aj, align 1
  %i.ak = load ptr, ptr %i.d, align 8
  %i.al = load i64, ptr %i.e, align 8
  %i.am = call ptr @prte_rmaps_rank_file__scan_buffer(ptr noundef %i.ak, i64 noundef %i.al)
  store ptr %i.am, ptr %i.c, align 8
  %i.an = load ptr, ptr %i.c, align 8
  %i.ao = icmp ne ptr %i.an, null
  br i1 %i.ao, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @yy_fatal_error(ptr noundef @.str.4) #14
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ap = load ptr, ptr %i.c, align 8
  %2 = getelementptr inbounds nuw %struct.yy_buffer_state, ptr %i.ap, i32 0, i32 5
  store i32 1, ptr %2, align 8
  %i.aq = load ptr, ptr %i.c, align 8
  ret ptr %i.aq
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @prte_rmaps_rank_file_get_lineno() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @prte_rmaps_rank_file_lineno, align 4
  ret i32 %i.a
}

; Function Attrs: noinline nounwind optnone uwtable
define ptr @prte_rmaps_rank_file_get_in() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @prte_rmaps_rank_file_in, align 8
  ret ptr %i.a
}

; Function Attrs: noinline nounwind optnone uwtable
define ptr @prte_rmaps_rank_file_get_out() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @prte_rmaps_rank_file_out, align 8
  ret ptr %i.a
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @prte_rmaps_rank_file_get_leng() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @prte_rmaps_rank_file_leng, align 4
  ret i32 %i.a
}

; Function Attrs: noinline nounwind optnone uwtable
define ptr @prte_rmaps_rank_file_get_text() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @prte_rmaps_rank_file_text, align 8
  ret ptr %i.a
}

; Function Attrs: noinline nounwind optnone uwtable
define void @prte_rmaps_rank_file_set_lineno(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %0, ptr %i.a, align 4
  %i.b = load i32, ptr %i.a, align 4
  store i32 %i.b, ptr @prte_rmaps_rank_file_lineno, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @prte_rmaps_rank_file_set_in(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load ptr, ptr %i.a, align 8
  store ptr %i.b, ptr @prte_rmaps_rank_file_in, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @prte_rmaps_rank_file_set_out(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load ptr, ptr %i.a, align 8
  store ptr %i.b, ptr @prte_rmaps_rank_file_out, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @prte_rmaps_rank_file_get_debug() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @prte_rmaps_rank_file__flex_debug, align 4
  ret i32 %i.a
}

; Function Attrs: noinline nounwind optnone uwtable
define void @prte_rmaps_rank_file_set_debug(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %0, ptr %i.a, align 4
  %i.b = load i32, ptr %i.a, align 4
  store i32 %i.b, ptr @prte_rmaps_rank_file__flex_debug, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @prte_rmaps_rank_file_lex_destroy() local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %i.a = load ptr, ptr @yy_buffer_stack, align 8
  %i.b = icmp ne ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr @yy_buffer_stack, align 8
  %i.d = load i64, ptr @yy_buffer_stack_top, align 8
  %i.e = getelementptr inbounds nuw ptr, ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = phi ptr [ %i.f, %bb.c ], [ null, %bb.d ]
  %i.h = icmp ne ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr @yy_buffer_stack, align 8
  %i.j = icmp ne ptr %i.i, null
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = load ptr, ptr @yy_buffer_stack, align 8
  %i.l = load i64, ptr @yy_buffer_stack_top, align 8
  %i.m = getelementptr inbounds nuw ptr, ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.o = phi ptr [ %i.n, %bb.g ], [ null, %bb.h ]
  call void @prte_rmaps_rank_file__delete_buffer(ptr noundef %i.o)
  %i.p = load ptr, ptr @yy_buffer_stack, align 8
  %i.q = load i64, ptr @yy_buffer_stack_top, align 8
  %i.r = getelementptr inbounds nuw ptr, ptr %i.p, i64 %i.q
  store ptr null, ptr %i.r, align 8
  call void @prte_rmaps_rank_file_pop_buffer_state()
  br label %bb.b, !llvm.loop !15

bb.j:                                             ; preds = %bb.e
  %i.s = load ptr, ptr @yy_buffer_stack, align 8
  call void @prte_rmaps_rank_file_free(ptr noundef %i.s)
  store ptr null, ptr @yy_buffer_stack, align 8
  %0 = call i32 @yy_init_globals()                ; 0 uses
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yy_init_globals() unnamed_addr #0 {
bb.a:
  store ptr null, ptr @yy_buffer_stack, align 8
  store i64 0, ptr @yy_buffer_stack_top, align 8
  store i64 0, ptr @yy_buffer_stack_max, align 8
  store ptr null, ptr @yy_c_buf_p, align 8
  store i1 false, ptr @yy_init, align 1
  store i32 0, ptr @yy_start, align 4
  store ptr null, ptr @prte_rmaps_rank_file_in, align 8
  store ptr null, ptr @prte_rmaps_rank_file_out, align 8
  ret i32 poison
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optnone uwtable
define ptr @prte_rmaps_rank_file_realloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  store i64 %1, ptr %i.b, align 8
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = load i64, ptr %i.b, align 8
  %i.e = call ptr @realloc(ptr noundef %i.c, i64 noundef %i.d) #19
  ret ptr %i.e
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @clearerr(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #12

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { noreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
end_hunk_1

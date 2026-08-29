Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/h264_cavlc?download=true
inline.NumInlined: 84
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 31
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.VLCElem = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i16, i16 }
%struct.PMbInfo = type { i16, i8 }
%struct.IMbInfo = type { i16, i8, i8 }
%struct.VLCInitState = type { ptr, i32 }

@run7_vlc_table = internal global [9460 x %struct.VLCElem] zeroinitializer, align 16
@__const.ff_h264_decode_init_vlc.state = private unnamed_addr constant { ptr, i32, [4 x i8] } { ptr @run7_vlc_table, i32 9460, [4 x i8] zeroinitializer }, align 8
@chroma_dc_coeff_token_vlc_table = internal global [256 x %struct.VLCElem] zeroinitializer, align 16
@chroma_dc_coeff_token_len = internal constant [20 x i8] c"\02\00\00\00\06\01\00\00\06\06\03\00\06\07\07\06\06\08\08\07", align 16
@chroma_dc_coeff_token_bits = internal constant [20 x i8] c"\01\00\00\00\07\01\00\00\04\06\01\00\03\03\02\05\02\03\02\00", align 16
@chroma422_dc_coeff_token_vlc_table = internal global [8192 x %struct.VLCElem] zeroinitializer, align 16
@chroma422_dc_coeff_token_len = internal constant [36 x i8] c"\01\00\00\00\07\02\00\00\07\07\03\00\09\07\07\05\09\09\07\06\0A\0A\09\07\0B\0B\0A\07\0C\0C\0B\0A\0D\0C\0C\0B", align 16
@chroma422_dc_coeff_token_bits = internal constant [36 x i8] c"\01\00\00\00\0F\01\00\00\0E\0D\01\00\07\0C\0B\01\06\05\0A\01\07\06\04\09\07\06\05\08\07\06\05\04\07\05\04\04", align 16
@run_vlc = internal unnamed_addr global [7 x ptr] zeroinitializer, align 16
@coeff_token_len = internal constant [4 x [68 x i8]] [[68 x i8] c"\01\00\00\00\06\02\00\00\08\06\03\00\09\08\07\05\0A\09\08\06\0B\0A\09\07\0D\0B\0A\08\0D\0D\0B\09\0D\0D\0D\0A\0E\0E\0D\0B\0E\0E\0E\0D\0F\0F\0E\0E\0F\0F\0F\0E\10\0F\0F\0F\10\10\10\0F\10\10\10\10\10\10\10\10", [68 x i8] c"\02\00\00\00\06\02\00\00\06\05\03\00\07\06\06\04\08\06\06\04\08\07\07\05\09\08\08\06\0B\09\09\06\0B\0B\0B\07\0C\0B\0B\09\0C\0C\0C\0B\0C\0C\0C\0B\0D\0D\0D\0C\0D\0D\0D\0D\0D\0E\0D\0D\0E\0E\0E\0D\0E\0E\0E\0E", [68 x i8] c"\04\00\00\00\06\04\00\00\06\05\04\00\06\05\05\04\07\05\05\04\07\05\05\04\07\06\06\04\07\06\06\04\08\07\07\05\08\08\07\06\09\08\08\07\09\09\08\08\09\09\09\08\0A\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A", [68 x i8] c"\06\00\00\00\06\06\00\00\06\06\06\00\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06"], align 16
@coeff_token_bits = internal constant [4 x [68 x i8]] [[68 x i8] c"\01\00\00\00\05\01\00\00\07\04\01\00\07\06\05\03\07\06\05\03\07\06\05\04\0F\06\05\04\0B\0E\05\04\08\0A\0D\04\0F\0E\09\04\0B\0A\0D\0C\0F\0E\09\0C\0B\0A\0D\08\0F\01\09\0C\0B\0E\0D\08\07\0A\09\0C\04\06\05\08", [68 x i8] c"\03\00\00\00\0B\02\00\00\07\07\03\00\07\0A\09\05\07\06\05\04\04\06\05\06\07\06\05\08\0F\06\05\04\0B\0E\0D\04\0F\0A\09\04\0B\0E\0D\0C\08\0A\09\08\0F\0E\0D\0C\0B\0A\09\0C\07\0B\06\08\09\08\0A\01\07\06\05\04", [68 x i8] c"\0F\00\00\00\0F\0E\00\00\0B\0F\0D\00\08\0C\0E\0C\0F\0A\0B\0B\0B\08\09\0A\09\0E\0D\09\08\0A\09\08\0F\0E\0D\0D\0B\0E\0A\0C\0F\0A\0D\0C\0B\0E\09\0C\08\0A\0D\08\0D\07\09\0C\09\0C\0B\0A\05\08\07\06\01\04\03\02", [68 x i8] c"\03\00\00\00\00\01\00\00\04\05\06\00\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?"], align 16
@ff_h264_decode_init_vlc.coeff_token_table_index = internal unnamed_addr constant [17 x i8] c"\00\00\01\01\02\02\02\02\03\03\03\03\03\03\03\03\03", align 16
@coeff_token_vlc = internal unnamed_addr global [17 x ptr] zeroinitializer, align 16
@chroma_dc_total_zeros_len = internal constant [3 x [4 x i8]] [[4 x i8] c"\01\02\03\03", [4 x i8] c"\01\02\02\00", [4 x i8] c"\01\01\00\00"], align 1
@chroma_dc_total_zeros_bits = internal constant [3 x [4 x i8]] [[4 x i8] c"\01\01\01\00", [4 x i8] c"\01\01\00\00", [4 x i8] c"\01\00\00\00"], align 1
@chroma_dc_total_zeros_vlc = internal unnamed_addr global [4 x ptr] zeroinitializer, align 16
@chroma422_dc_total_zeros_len = internal constant [7 x [8 x i8]] [[8 x i8] c"\01\03\03\04\04\04\05\05", [8 x i8] c"\03\02\03\03\03\03\03\00", [8 x i8] c"\03\03\02\02\03\03\00\00", [8 x i8] c"\03\02\02\02\03\00\00\00", [8 x i8] c"\02\02\02\02\00\00\00\00", [8 x i8] c"\02\02\01\00\00\00\00\00", [8 x i8] c"\01\01\00\00\00\00\00\00"], align 16
@chroma422_dc_total_zeros_bits = internal constant [7 x [8 x i8]] [[8 x i8] c"\01\02\03\02\03\01\01\00", [8 x i8] c"\00\01\01\04\05\06\07\00", [8 x i8] c"\00\01\01\02\06\07\00\00", [8 x i8] c"\06\00\01\02\07\00\00\00", [8 x i8] c"\00\01\02\03\00\00\00\00", [8 x i8] c"\00\01\01\00\00\00\00\00", [8 x i8] c"\00\01\00\00\00\00\00\00"], align 16
@chroma422_dc_total_zeros_vlc = internal unnamed_addr global [8 x ptr] zeroinitializer, align 16
@total_zeros_vlc = internal unnamed_addr global [16 x ptr] zeroinitializer, align 16
@.str = private unnamed_addr constant [27 x i8] c"mb_skip_run %d is invalid\0A\00", align 1
@ff_h264_b_mb_type_info = external local_unnamed_addr constant [23 x %struct.PMbInfo], align 16
@ff_h264_p_mb_type_info = external local_unnamed_addr constant [5 x %struct.PMbInfo], align 16
@.str.1 = private unnamed_addr constant [43 x i8] c"mb_type %d in %c slice too large at %d %d\0A\00", align 1
@ff_h264_i_mb_type_info = external local_unnamed_addr constant [26 x %struct.IMbInfo], align 16
@ff_h264_mb_sizes = external local_unnamed_addr constant [4 x i16], align 2
@.str.2 = private unnamed_addr constant [41 x i8] c"Not enough data for an intra PCM block.\0A\00", align 1
@scan8 = internal unnamed_addr constant [51 x i8] c"\0C\0D\14\15\0E\0F\16\17\1C\1D$%\1E\1F&'45<=67>?DELMFGNO\\]de^_fglmtunovw\00(P", align 16
@.str.3 = private unnamed_addr constant [40 x i8] c"B sub_mb_type %u out of range at %d %d\0A\00", align 1
@ff_h264_b_sub_mb_type_info = external local_unnamed_addr constant [13 x %struct.PMbInfo], align 16
@.str.4 = private unnamed_addr constant [40 x i8] c"P sub_mb_type %u out of range at %d %d\0A\00", align 1
@ff_h264_p_sub_mb_type_info = external local_unnamed_addr constant [4 x %struct.PMbInfo], align 16
@.str.5 = private unnamed_addr constant [17 x i8] c"ref %u overflow\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"cbp too large (%u) at %d %d\0A\00", align 1
@ff_h264_golomb_to_intra4x4_cbp = external local_unnamed_addr constant [48 x i8], align 16
@ff_h264_golomb_to_inter_cbp = external local_unnamed_addr constant [48 x i8], align 16
@golomb_to_intra4x4_cbp_gray = internal unnamed_addr constant [16 x i8] c"\0F\00\07\0B\0D\0E\03\05\0A\0C\01\02\04\08\06\09", align 16
@golomb_to_inter_cbp_gray = internal unnamed_addr constant [16 x i8] c"\00\01\02\04\08\03\05\0A\0C\0F\07\0B\0D\0E\06\09", align 16
@.str.7 = private unnamed_addr constant [13 x i8] c"gray chroma\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"dquant out of range (%d) at %d %d\0A\00", align 1
@ff_h264_chroma422_dc_scan = external constant [8 x i8], align 1
@ff_h264_chroma_dc_scan = external constant [4 x i8], align 1
@run_len = internal constant <{ <{ i8, i8, [14 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, [16 x i8] }> <{ <{ i8, i8, [14 x i8] }> <{ i8 1, i8 1, [14 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 1, i8 2, i8 2, [13 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 2, i8 2, i8 2, i8 2, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 2, i8 2, i8 2, i8 3, i8 3, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 2, i8 2, i8 3, i8 3, i8 3, i8 3, [10 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 2, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, [9 x i8] zeroinitializer }>, [16 x i8] c"\03\03\03\03\03\03\03\04\05\06\07\08\09\0A\0B\00" }>, align 16
@run_bits = internal constant <{ <{ i8, [15 x i8] }>, <{ i8, i8, [14 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, [16 x i8] }> <{ <{ i8, [15 x i8] }> <{ i8 1, [15 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 1, i8 1, [14 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 3, i8 2, i8 1, [13 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 3, i8 2, i8 1, i8 1, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 3, i8 2, i8 3, i8 2, i8 1, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 3, i8 0, i8 1, i8 3, i8 2, i8 5, i8 4, [9 x i8] zeroinitializer }>, [16 x i8] c"\07\06\05\04\03\02\01\01\01\01\01\01\01\01\01\00" }>, align 16
@total_zeros_len = internal constant <{ [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], <{ [8 x i8], [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }>, [16 x i8] }> <{ [16 x i8] c"\01\03\03\04\04\05\05\06\06\07\07\08\08\09\09\09", [16 x i8] c"\03\03\03\03\03\04\04\04\04\05\05\06\06\06\06\00", [16 x i8] c"\04\03\03\03\04\04\03\03\04\05\05\06\05\06\00\00", [16 x i8] c"\05\03\04\04\03\03\03\04\03\04\05\05\05\00\00\00", [16 x i8] c"\04\04\04\03\03\03\03\03\04\05\04\05\00\00\00\00", [16 x i8] c"\06\05\03\03\03\03\03\03\04\03\06\00\00\00\00\00", [16 x i8] c"\06\05\03\03\03\02\03\04\03\06\00\00\00\00\00\00", [16 x i8] c"\06\04\05\03\02\02\03\03\06\00\00\00\00\00\00\00", <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\06\06\04\02\02\03\02\05", [8 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 5, i8 5, i8 3, i8 2, i8 2, i8 2, i8 4, [9 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 4, i8 4, i8 3, i8 3, i8 1, i8 3, [10 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 4, i8 4, i8 2, i8 1, i8 3, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 3, i8 3, i8 1, i8 2, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 2, i8 2, i8 1, [13 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 1, i8 1, [14 x i8] zeroinitializer }>, [16 x i8] zeroinitializer }>, align 16
@total_zeros_bits = internal constant <{ [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], <{ [8 x i8], [8 x i8] }>, <{ [8 x i8], [8 x i8] }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, <{ i8, i8, i8, i8, i8, [11 x i8] }>, <{ i8, i8, i8, i8, [12 x i8] }>, <{ i8, i8, i8, [13 x i8] }>, <{ i8, i8, [14 x i8] }>, [16 x i8] }> <{ [16 x i8] c"\01\03\02\03\02\03\02\03\02\03\02\03\02\03\02\01", [16 x i8] c"\07\06\05\04\03\05\04\03\02\03\02\03\02\01\00\00", [16 x i8] c"\05\07\06\05\04\03\04\03\02\03\02\01\01\00\00\00", [16 x i8] c"\03\07\05\04\06\05\04\03\03\02\02\01\00\00\00\00", [16 x i8] c"\05\04\03\07\06\05\04\03\02\01\01\00\00\00\00\00", [16 x i8] c"\01\01\07\06\05\04\03\02\01\01\00\00\00\00\00\00", [16 x i8] c"\01\01\05\04\03\03\02\01\01\00\00\00\00\00\00\00", <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\01\01\01\03\03\02\02\01", [8 x i8] zeroinitializer }>, <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\01\00\01\03\02\01\01\01", [8 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 1, i8 0, i8 1, i8 3, i8 2, i8 1, i8 1, [9 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 0, i8 1, i8 1, i8 2, i8 1, i8 3, [10 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 0, i8 1, i8 1, i8 1, i8 1, [11 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 1, i8 1, i8 1, [12 x i8] zeroinitializer }>, <{ i8, i8, i8, [13 x i8] }> <{ i8 0, i8 1, i8 1, [13 x i8] zeroinitializer }>, <{ i8, i8, [14 x i8] }> <{ i8 0, i8 1, [14 x i8] zeroinitializer }>, [16 x i8] zeroinitializer }>, align 16
@cavlc_level_tab = internal unnamed_addr global [7 x [256 x [2 x i8]]] zeroinitializer, align 16
@ff_log2_tab = external local_unnamed_addr constant [256 x i8], align 16
@pred_pskip_motion.zeromv = internal unnamed_addr constant [2 x i16] zeroinitializer, align 4
@ff_golomb_vlc_len = external local_unnamed_addr constant [512 x i8], align 16
@ff_ue_golomb_vlc_code = external local_unnamed_addr constant [512 x i8], align 16
@fill_decode_neighbors.left_block_options = internal constant [4 x <{ [16 x i8], [16 x i8] }>] [<{ [16 x i8], [16 x i8] }> <{ [16 x i8] c"\00\01\02\03\07\0A\08\0B\03\07\0B\0F\11!\15%", [16 x i8] zeroinitializer }>, <{ [16 x i8], [16 x i8] }> <{ [16 x i8] c"\02\02\03\03\08\0B\08\0B\0B\0B\0F\0F\15%\15%", [16 x i8] zeroinitializer }>, <{ [16 x i8], [16 x i8] }> <{ [16 x i8] c"\00\00\01\01\07\0A\07\0A\03\03\07\07\11!\11!", [16 x i8] zeroinitializer }>, <{ [16 x i8], [16 x i8] }> <{ [16 x i8] c"\00\02\00\02\07\0A\07\0A\03\0B\03\0B\11!\11!", [16 x i8] zeroinitializer }>], align 16
@ff_se_golomb_vlc_code = external local_unnamed_addr constant [512 x i8], align 16
@.str.13 = private unnamed_addr constant [45 x i8] c"corrupted macroblock %d %d (total_coeff=%d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"Invalid level prefix\0A\00", align 1
@decode_residual.suffix_limit = internal unnamed_addr constant [7 x i32] [i32 0, i32 3, i32 6, i32 12, i32 24, i32 48, i32 2147483647], align 16
@.str.15 = private unnamed_addr constant [41 x i8] c"negative number of zero coeffs at %d %d\0A\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define void @ff_h264_decode_init_vlc() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 4 uses
  %0 = alloca %struct.VLCInitState, align 8       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @__const.ff_h264_decode_init_vlc.state, i64 16, i1 false)
  tail call void @ff_vlc_init_table_sparse(ptr noundef nonnull @chroma_dc_coeff_token_vlc_table, i32 noundef 256, i32 noundef 8, i32 noundef 20, ptr noundef nonnull @chroma_dc_coeff_token_len, i32 noundef 1, i32 noundef 1, ptr noundef nonnull @chroma_dc_coeff_token_bits, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  tail call void @ff_vlc_init_table_sparse(ptr noundef nonnull @chroma422_dc_coeff_token_vlc_table, i32 noundef 8192, i32 noundef 13, i32 noundef 36, ptr noundef nonnull @chroma422_dc_coeff_token_len, i32 noundef 1, i32 noundef 1, ptr noundef nonnull @chroma422_dc_coeff_token_bits, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %i.b = call ptr @ff_vlc_init_tables_sparse(ptr noundef nonnull %0, i32 noundef 6, i32 noundef 16, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @run_len, i64 96), i32 noundef 1, i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @run_bits, i64 96), i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr @run_len, i64 %indvars.iv
  %i.d = getelementptr inbounds nuw [16 x i8], ptr @run_bits, i64 %indvars.iv
  %i.e = call ptr @ff_vlc_init_tables_sparse(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 7, ptr noundef nonnull %i.c, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %i.d, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @run_vlc, i64 %indvars.iv.next
  store ptr %i.e, ptr %i.f, align 8, !tbaa !9
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %.preheader38, label %bb.b, !llvm.loop !12

.preheader38:                                     ; preds = %bb.b, %.preheader38
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %.preheader38 ], [ 0, %bb.b ] ; 4 uses
  %i.g = getelementptr inbounds nuw [68 x i8], ptr @coeff_token_len, i64 %indvars.iv46
  %i.h = getelementptr inbounds nuw [68 x i8], ptr @coeff_token_bits, i64 %indvars.iv46
  %i.i = call ptr @ff_vlc_init_tables_sparse(ptr noundef nonnull %0, i32 noundef 8, i32 noundef 68, ptr noundef nonnull %i.g, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %i.h, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv46
  store ptr %i.i, ptr %i.j, align 8, !tbaa !9
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %exitcond49.not = icmp eq i64 %indvars.iv.next47, 4
  br i1 %exitcond49.not, label %.preheader37, label %.preheader38, !llvm.loop !14

.preheader37:                                     ; preds = %.preheader38, %.preheader37
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %.preheader37 ], [ 0, %.preheader38 ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr @ff_h264_decode_init_vlc.coeff_token_table_index, i64 %indvars.iv50
  %i.l = load i8, ptr %i.k, align 1, !tbaa !15
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @coeff_token_vlc, i64 %indvars.iv50
  store ptr %i.o, ptr %i.p, align 8, !tbaa !9
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond53.not = icmp eq i64 %indvars.iv.next51, 17
  br i1 %exitcond53.not, label %.preheader36, label %.preheader37, !llvm.loop !16

.preheader36:                                     ; preds = %.preheader37, %.preheader36
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %.preheader36 ], [ 0, %.preheader37 ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @chroma_dc_total_zeros_len, i64 %indvars.iv54
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @chroma_dc_total_zeros_bits, i64 %indvars.iv54
  %i.s = call ptr @ff_vlc_init_tables_sparse(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %i.q, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %i.r, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @chroma_dc_total_zeros_vlc, i64 %indvars.iv.next55
  store ptr %i.s, ptr %i.t, align 8, !tbaa !9
  %exitcond57.not = icmp eq i64 %indvars.iv.next55, 3
  br i1 %exitcond57.not, label %.preheader35, label %.preheader36, !llvm.loop !17

.preheader35:                                     ; preds = %.preheader36, %.preheader35
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %.preheader35 ], [ 0, %.preheader36 ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @chroma422_dc_total_zeros_len, i64 %indvars.iv58
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @chroma422_dc_total_zeros_bits, i64 %indvars.iv58
  %i.w = call ptr @ff_vlc_init_tables_sparse(ptr noundef nonnull %0, i32 noundef 5, i32 noundef 8, ptr noundef nonnull %i.u, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %i.v, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @chroma422_dc_total_zeros_vlc, i64 %indvars.iv.next59
  store ptr %i.w, ptr %i.x, align 8, !tbaa !9
  %exitcond61.not = icmp eq i64 %indvars.iv.next59, 7
  br i1 %exitcond61.not, label %.preheader, label %.preheader35, !llvm.loop !18

bb.c:                                             ; preds = %.preheader
  call fastcc void @init_cavlc_level_tab() #10
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void

.preheader:                                       ; preds = %.preheader35, %.preheader
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %.preheader ], [ 0, %.preheader35 ] ; 3 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr @total_zeros_len, i64 %indvars.iv62
  %i.z = getelementptr inbounds nuw [16 x i8], ptr @total_zeros_bits, i64 %indvars.iv62
  %i.aa = call ptr @ff_vlc_init_tables_sparse(ptr noundef nonnull %0, i32 noundef 9, i32 noundef 16, ptr noundef nonnull %i.y, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %i.z, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @total_zeros_vlc, i64 %indvars.iv.next63
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !9
  %exitcond65.not = icmp eq i64 %indvars.iv.next63, 15
  br i1 %exitcond65.not, label %bb.c, label %.preheader, !llvm.loop !19
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @ff_vlc_init_table_sparse(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @init_cavlc_level_tab() unnamed_addr #3 {
bb.a:
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.h
  %indvars.iv47 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next48, %bb.h ] ; 3 uses
  %i.a = getelementptr inbounds nuw [512 x i8], ptr @cavlc_level_tab, i64 %indvars.iv47 ; 4 uses
  %i.b = trunc nuw nsw i64 %indvars.iv47 to i32   ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.g ] ; 9 uses
  %.not11.i41 = icmp samesign ult i64 %indvars.iv, 128 ; 2 uses
  %i.c = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.d = lshr i32 %i.c, 7
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.e = shl nuw nsw i32 %indvars.iv.tr, 1
  %.110.i42 = select i1 %.not11.i41, i32 %i.e, i32 %i.d
  %.1.i43 = select i1 %.not11.i41, i32 0, i32 8
  %i.f = zext nneg i32 %.110.i42 to i64
  %i.g = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !15
  %i.i = zext i8 %i.h to i32
  %i.j = add nuw nsw i32 %.1.i43, %i.i            ; 4 uses
  %i.k = sub nsw i32 9, %i.j                      ; 2 uses
  %i.l = add nsw i32 %i.k, %i.b                   ; 2 uses
  %i.m = icmp slt i32 %i.l, 9
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %indvars.iv
  %i.o = load i8, ptr %i.n, align 1, !tbaa !15
  %i.p = zext i8 %i.o to i32
  %i.q = sub nsw i32 %i.p, %i.b
  %i.r = lshr i32 %i.c, %i.q
  %i.s = sub nsw i32 7, %i.j
  %i.t = shl nsw i32 %i.s, %i.b
  %i.u = add nsw i32 %i.r, %i.t                   ; 2 uses
  %i.v = and i32 %i.u, 1                          ; 2 uses
  %i.w = sub nsw i32 0, %i.v
  %i.x = add nsw i32 %i.u, 2
  %i.y = lshr i32 %i.x, 1
  %i.z = xor i32 %i.y, %i.w
  %i.aa = add i32 %i.z, %i.v
  %i.ab = trunc i32 %i.aa to i8
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  store i8 %i.ab, ptr %i.ac, align 2, !tbaa !15
  %i.ad = trunc i32 %i.l to i8
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = trunc i32 %i.j to i8
  %i.af = sub i8 108, %i.ae
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  store i8 %i.af, ptr %i.ag, align 2, !tbaa !15
  %i.ah = trunc i32 %i.k to i8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  store i8 108, ptr %i.ai, align 2, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.sink = phi i8 [ %i.ah, %bb.e ], [ 8, %bb.f ], [ %i.ad, %bb.c ]
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store i8 %.sink, ptr %i.ak, align 1, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %bb.h, label %bb.b, !llvm.loop !20

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %exitcond50.not = icmp eq i64 %indvars.iv.next48, 7
  br i1 %exitcond50.not, label %bb.i, label %.preheader, !llvm.loop !21

bb.i:                                             ; preds = %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -1094995529, 1) i32 @ff_h264_decode_mb_cavlc(ptr noundef %0, ptr noundef initializes((21032, 21036)) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [3 x [2 x i16]], align 4          ; 20 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 18 uses
  %i.d = alloca [4 x i32], align 16               ; 12 uses
  %i.e = alloca [2 x [4 x i32]], align 16         ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 34072 ; 73 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  %i.i = load i32, ptr %i.h, align 4, !tbaa !73   ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 34080 ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !75   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !76   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 30088
  %i.o = load i32, ptr %i.n, align 8, !tbaa !80   ; 67 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 21024 ; 9 uses
  %i.q = load i32, ptr %i.p, align 16, !tbaa !81
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 21028 ; 11 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !88   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 31732 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !89
  %i.v = mul nsw i32 %i.u, %i.s
  %i.w = add nsw i32 %i.v, %i.q                   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 21032 ; 5 uses
  store i32 %i.w, ptr %i.x, align 8, !tbaa !90
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.z = load i32, ptr %i.y, align 16, !tbaa !91  ; 2 uses
  %.not = icmp eq i32 %i.z, 1
  br i1 %.not, label %bb.bl, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 21052 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !92 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, -1
  br i1 %i.ac, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ad, align 8, !tbaa !93 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 16, !tbaa !94 ; 4 uses
  %i.ae = lshr i32 %.sroa.4.0.copyload.i.i, 3
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 1, !tbaa !15
  %i.ai = tail call i32 @llvm.bswap.i32(i32 %i.ah)
  %i.aj = and i32 %.sroa.4.0.copyload.i.i, 7      ; 2 uses
  %i.ak = shl i32 %i.ai, %i.aj                    ; 3 uses
  %i.al = and i32 %i.ak, -65536
  %i.am = add i32 %.sroa.4.0.copyload.i.i, 16
  %i.an = lshr i32 %i.am, 3
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 1, !tbaa !15
  %i.ar = tail call i32 @llvm.bswap.i32(i32 %i.aq)
  %i.as = shl i32 %i.ar, %i.aj
  %i.at = lshr i32 %i.as, 16
  %i.au = or disjoint i32 %i.at, %i.al
  %.not.i.i = icmp ult i32 %i.ak, 65536           ; 2 uses
  %i.av = lshr i32 %i.ak, 16
  %spec.select.i.i = select i1 %.not.i.i, i32 %i.au, i32 %i.av ; 3 uses
  %spec.select12.i.i = select i1 %.not.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %i.aw = lshr i32 %spec.select.i.i, 8
  %i.ax = or disjoint i32 %spec.select12.i.i, 8
  %.110.i.i = select i1 %.not11.i.i, i32 %spec.select.i.i, i32 %i.aw
  %.1.i.i = select i1 %.not11.i.i, i32 %spec.select12.i.i, i32 %i.ax
  %i.ay = zext nneg i32 %.110.i.i to i64
  %i.az = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !15
  %i.bb = zext i8 %i.ba to i32                    ; 2 uses
  %i.bc = add nuw nsw i32 %.1.i.i, %i.bb          ; 6 uses
  %reass.sub.i = sub i32 %.sroa.4.0.copyload.i.i, %i.bc ; 2 uses
  %i.bd = add i32 %reass.sub.i, 31                ; 5 uses
  store i32 %i.bd, ptr %.sroa.4.0..sroa_idx.i.i, align 16, !tbaa !95
  %i.be = sub nsw i32 32, %i.bc                   ; 2 uses
  %.not.i5.i = icmp eq i32 %i.bc, 32
  br i1 %.not.i5.i, label %get_ue_golomb_long.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bf = icmp samesign ugt i32 %i.bc, 6
  %i.bg = lshr i32 %i.bd, 3
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 1, !tbaa !15
  %i.bk = tail call i32 @llvm.bswap.i32(i32 %i.bj)
  %i.bl = and i32 %i.bd, 7                        ; 2 uses
  %i.bm = shl i32 %i.bk, %i.bl                    ; 2 uses
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bn = lshr i32 %i.bm, %i.bc
  %i.bo = add i32 %i.bd, %i.be
  store i32 %i.bo, ptr %.sroa.4.0..sroa_idx.i.i, align 16, !tbaa !95
  br label %get_ue_golomb_long.exit

bb.f:                                             ; preds = %bb.d
  %i.bp = lshr i32 %i.bm, 16
  %i.bq = add i32 %reass.sub.i, 47                ; 2 uses
  store i32 %i.bq, ptr %.sroa.4.0..sroa_idx.i.i, align 16, !tbaa !95
  %i.br = sub nuw nsw i32 16, %i.bc
  %i.bs = shl nuw i32 %i.bp, %i.br
  %i.bt = lshr i32 %i.bq, 3
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 1, !tbaa !15
  %i.bx = tail call i32 @llvm.bswap.i32(i32 %i.bw)
  %i.by = shl i32 %i.bx, %i.bl
  %i.bz = or disjoint i32 %i.bb, 16
  %i.ca = lshr i32 %i.by, %i.bz
  %i.cb = add i32 %i.bd, %i.be
  store i32 %i.cb, ptr %.sroa.4.0..sroa_idx.i.i, align 16, !tbaa !95
  %i.cc = or i32 %i.ca, %i.bs
  br label %get_ue_golomb_long.exit

get_ue_golomb_long.exit:                          ; preds = %bb.c, %bb.e, %bb.f
  %.0.i.i = phi i32 [ %i.bn, %bb.e ], [ %i.cc, %bb.f ], [ 0, %bb.c ]
  %i.cd = add i32 %.0.i.i, -1                     ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 31736
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !96
  %.not655 = icmp ugt i32 %i.cd, %i.cf
  br i1 %.not655, label %.thread, label %bb.g

.thread:                                          ; preds = %get_ue_golomb_long.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !97
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ch, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %i.cd) #9
  br label %write_back_non_zero_count.exit
end_hunk_0
begin_hunk_1_@ff_h264_decode_mb_cavlc:bb.a
  %i.aev = load i16, ptr %i.aeq, align 4, !tbaa !138 ; 2 uses
  store i16 %i.aev, ptr %i.aen, align 4, !tbaa !108
  %i.aew = lshr i32 %i.aej, 3
  %i.aex = zext nneg i32 %i.aew to i64
  %i.aey = getelementptr inbounds nuw i8, ptr %i.abt, i64 %i.aex
  %i.aez = load i32, ptr %i.aey, align 1, !tbaa !15
  %i.afa = tail call i32 @llvm.bswap.i32(i32 %i.aez)
  %i.afb = and i32 %i.aej, 7
  %i.afc = shl i32 %i.afa, %i.afb
  %i.afd = lshr i32 %i.afc, 23
  %i.afe = zext nneg i32 %i.afd to i64            ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr @ff_golomb_vlc_len, i64 %i.afe
  %i.afg = load i8, ptr %i.aff, align 1, !tbaa !15
  %i.afh = zext i8 %i.afg to i32
  %i.afi = add i32 %i.aej, %i.afh
  store i32 %i.afi, ptr %i.st, align 16, !tbaa !95
  %i.afj = getelementptr inbounds nuw i8, ptr @ff_ue_golomb_vlc_code, i64 %i.afe
  %i.afk = load i8, ptr %i.afj, align 1, !tbaa !15 ; 4 uses
  %i.afl = zext i8 %i.afk to i16
  %i.afm = getelementptr inbounds nuw i8, ptr %1, i64 29342 ; 2 uses
  store i16 %i.afl, ptr %i.afm, align 2, !tbaa !108
  %i.afn = icmp ugt i8 %i.afk, 12
  br i1 %i.afn, label %bb.cy, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.afo = zext nneg i8 %i.afk to i64
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr @ff_h264_b_sub_mb_type_info, i64 %i.afo ; 2 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 2
  %i.afr = load i8, ptr %i.afq, align 2, !tbaa !122
  %i.afs = zext i8 %i.afr to i32
  %i.aft = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %i.afs, ptr %i.aft, align 4, !tbaa !94
  %i.afu = load i16, ptr %i.afp, align 4, !tbaa !138 ; 2 uses
  store i16 %i.afu, ptr %i.afm, align 2, !tbaa !108
  %i.afv = or i16 %i.adw, %i.acx
  %i.afw = or i16 %i.afv, %i.aev
  %i.afx = or i16 %i.afw, %i.afu
  %i.afy = and i16 %i.afx, 256
  %.not673 = icmp eq i16 %i.afy, 0
  br i1 %.not673, label %.loopexit1181, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @ff_h264_pred_direct_motion(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.c) #9
  %i.afz = getelementptr inbounds nuw i8, ptr %1, i64 29126
  store i8 -2, ptr %i.afz, align 2, !tbaa !15
  %i.aga = getelementptr inbounds nuw i8, ptr %1, i64 29086
  store i8 -2, ptr %i.aga, align 2, !tbaa !15
  %i.agb = getelementptr inbounds nuw i8, ptr %1, i64 29110
  store i8 -2, ptr %i.agb, align 2, !tbaa !15
  %i.agc = getelementptr inbounds nuw i8, ptr %1, i64 29070
  store i8 -2, ptr %i.agc, align 2, !tbaa !15
  br label %.loopexit1181

bb.de:                                            ; preds = %bb.dh, %bb.dg, %bb.df, %.preheader1180
  %.lcssa1333 = phi i8 [ %i.acj, %.preheader1180 ], [ %i.ahc, %bb.df ], [ %i.aib, %bb.dg ], [ %i.aja, %bb.dh ]
  %i.agd = zext i8 %.lcssa1333 to i32
  %i.age = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.agf = load ptr, ptr %i.age, align 8, !tbaa !97
  %i.agg = load i32, ptr %i.p, align 16, !tbaa !81
  %i.agh = load i32, ptr %i.r, align 4, !tbaa !88
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.agf, i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %i.agd, i32 noundef %i.agg, i32 noundef %i.agh) #9
  br label %.thread1054

bb.df:                                            ; preds = %.preheader1180
  %i.agi = zext nneg i8 %i.acj to i64
  %i.agj = getelementptr inbounds nuw [4 x i8], ptr @ff_h264_p_sub_mb_type_info, i64 %i.agi ; 2 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 2
  %i.agl = load i8, ptr %i.agk, align 2, !tbaa !122
  %i.agm = zext i8 %i.agl to i32
  store i32 %i.agm, ptr %i.d, align 16, !tbaa !94
  %i.agn = load i16, ptr %i.agj, align 4, !tbaa !138
  store i16 %i.agn, ptr %i.abu, align 8, !tbaa !108
  %i.ago = lshr i32 %i.ach, 3
  %i.agp = zext nneg i32 %i.ago to i64
  %i.agq = getelementptr inbounds nuw i8, ptr %i.abt, i64 %i.agp
  %i.agr = load i32, ptr %i.agq, align 1, !tbaa !15
  %i.ags = tail call i32 @llvm.bswap.i32(i32 %i.agr)
  %i.agt = and i32 %i.ach, 7
  %i.agu = shl i32 %i.ags, %i.agt
  %i.agv = lshr i32 %i.agu, 23
  %i.agw = zext nneg i32 %i.agv to i64            ; 2 uses
  %i.agx = getelementptr inbounds nuw i8, ptr @ff_golomb_vlc_len, i64 %i.agw
  %i.agy = load i8, ptr %i.agx, align 1, !tbaa !15
  %i.agz = zext i8 %i.agy to i32
  %i.aha = add i32 %i.ach, %i.agz                 ; 4 uses
  store i32 %i.aha, ptr %i.st, align 16, !tbaa !95
  %i.ahb = getelementptr inbounds nuw i8, ptr @ff_ue_golomb_vlc_code, i64 %i.agw
  %i.ahc = load i8, ptr %i.ahb, align 1, !tbaa !15 ; 4 uses
  %i.ahd = zext i8 %i.ahc to i16
  %i.ahe = getelementptr inbounds nuw i8, ptr %1, i64 29338 ; 2 uses
  store i16 %i.ahd, ptr %i.ahe, align 2, !tbaa !108
  %i.ahf = icmp ugt i8 %i.ahc, 3
  br i1 %i.ahf, label %bb.de, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ahg = zext nneg i8 %i.ahc to i64
  %i.ahh = getelementptr inbounds nuw [4 x i8], ptr @ff_h264_p_sub_mb_type_info, i64 %i.ahg ; 2 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 2
  %i.ahj = load i8, ptr %i.ahi, align 2, !tbaa !122
  %i.ahk = zext i8 %i.ahj to i32
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.ahk, ptr %i.ahl, align 4, !tbaa !94
  %i.ahm = load i16, ptr %i.ahh, align 4, !tbaa !138
  store i16 %i.ahm, ptr %i.ahe, align 2, !tbaa !108
  %i.ahn = lshr i32 %i.aha, 3
  %i.aho = zext nneg i32 %i.ahn to i64
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.abt, i64 %i.aho
  %i.ahq = load i32, ptr %i.ahp, align 1, !tbaa !15
  %i.ahr = tail call i32 @llvm.bswap.i32(i32 %i.ahq)
  %i.ahs = and i32 %i.aha, 7
  %i.aht = shl i32 %i.ahr, %i.ahs
  %i.ahu = lshr i32 %i.aht, 23
  %i.ahv = zext nneg i32 %i.ahu to i64            ; 2 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr @ff_golomb_vlc_len, i64 %i.ahv
  %i.ahx = load i8, ptr %i.ahw, align 1, !tbaa !15
  %i.ahy = zext i8 %i.ahx to i32
  %i.ahz = add i32 %i.aha, %i.ahy                 ; 4 uses
  store i32 %i.ahz, ptr %i.st, align 16, !tbaa !95
  %i.aia = getelementptr inbounds nuw i8, ptr @ff_ue_golomb_vlc_code, i64 %i.ahv
  %i.aib = load i8, ptr %i.aia, align 1, !tbaa !15 ; 4 uses
  %i.aic = zext i8 %i.aib to i16
  %i.aid = getelementptr inbounds nuw i8, ptr %1, i64 29340 ; 2 uses
  store i16 %i.aic, ptr %i.aid, align 4, !tbaa !108
  %i.aie = icmp ugt i8 %i.aib, 3
  br i1 %i.aie, label %bb.de, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.aif = zext nneg i8 %i.aib to i64
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr @ff_h264_p_sub_mb_type_info, i64 %i.aif ; 2 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aig, i64 2
  %i.aii = load i8, ptr %i.aih, align 2, !tbaa !122
  %i.aij = zext i8 %i.aii to i32
  %i.aik = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %i.aij, ptr %i.aik, align 8, !tbaa !94
  %i.ail = load i16, ptr %i.aig, align 4, !tbaa !138
  store i16 %i.ail, ptr %i.aid, align 4, !tbaa !108
  %i.aim = lshr i32 %i.ahz, 3
  %i.ain = zext nneg i32 %i.aim to i64
  %i.aio = getelementptr inbounds nuw i8, ptr %i.abt, i64 %i.ain
  %i.aip = load i32, ptr %i.aio, align 1, !tbaa !15
  %i.aiq = tail call i32 @llvm.bswap.i32(i32 %i.aip)
  %i.air = and i32 %i.ahz, 7
  %i.ais = shl i32 %i.aiq, %i.air
  %i.ait = lshr i32 %i.ais, 23
  %i.aiu = zext nneg i32 %i.ait to i64            ; 2 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr @ff_golomb_vlc_len, i64 %i.aiu
  %i.aiw = load i8, ptr %i.aiv, align 1, !tbaa !15
  %i.aix = zext i8 %i.aiw to i32
  %i.aiy = add i32 %i.ahz, %i.aix
  store i32 %i.aiy, ptr %i.st, align 16, !tbaa !95
  %i.aiz = getelementptr inbounds nuw i8, ptr @ff_ue_golomb_vlc_code, i64 %i.aiu
  %i.aja = load i8, ptr %i.aiz, align 1, !tbaa !15 ; 4 uses
  %i.ajb = zext i8 %i.aja to i16
  %i.ajc = getelementptr inbounds nuw i8, ptr %1, i64 29342 ; 2 uses
  store i16 %i.ajb, ptr %i.ajc, align 2, !tbaa !108
  %i.ajd = icmp ugt i8 %i.aja, 3
  br i1 %i.ajd, label %bb.de, label %.loopexit1181.loopexit

.loopexit1181.loopexit:                           ; preds = %bb.dh
  %i.aje = zext nneg i8 %i.aja to i64
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr @ff_h264_p_sub_mb_type_info, i64 %i.aje ; 2 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 2
  %i.ajh = load i8, ptr %i.ajg, align 2, !tbaa !122
  %i.aji = zext i8 %i.ajh to i32
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %i.aji, ptr %i.ajj, align 4, !tbaa !94
  %i.ajk = load i16, ptr %i.ajf, align 4, !tbaa !138
  store i16 %i.ajk, ptr %i.ajc, align 2, !tbaa !108
  br label %.loopexit1181

.loopexit1181:                                    ; preds = %.loopexit1181.loopexit, %bb.dc, %bb.dd
  %i.ajl = getelementptr inbounds nuw i8, ptr %1, i64 22648
  %i.ajm = load i32, ptr %i.ajl, align 8, !tbaa !139 ; 3 uses
  %.not1306 = icmp eq i32 %i.ajm, 0               ; 2 uses
  br i1 %.not1306, label %._crit_edge, label %.lr.ph1248

.lr.ph1248:                                       ; preds = %.loopexit1181
  %i.ajn = load i32, ptr %i.c, align 4, !tbaa !94
  %i.ajo = and i32 %i.ajn, 512
  %.not681 = icmp eq i32 %i.ajo, 0
  %i.ajp = getelementptr inbounds nuw i8, ptr %1, i64 22640
  %i.ajq = getelementptr inbounds nuw i8, ptr %1, i64 21068
  %i.ajr = getelementptr inbounds nuw i8, ptr %1, i64 29336 ; 3 uses
  %wide.trip.count1402 = zext i32 %i.ajm to i64
  %i.ajs = getelementptr inbounds nuw i8, ptr %1, i64 29338
  %i.ajt = getelementptr inbounds nuw i8, ptr %1, i64 29340
  %i.aju = getelementptr inbounds nuw i8, ptr %1, i64 29342
  %i.ajv = getelementptr inbounds nuw i8, ptr %1, i64 29338
  %i.ajw = getelementptr inbounds nuw i8, ptr %1, i64 29340
  %i.ajx = getelementptr inbounds nuw i8, ptr %1, i64 29342
  %i.ajy = getelementptr inbounds nuw i8, ptr %1, i64 29338
  %i.ajz = getelementptr inbounds nuw i8, ptr %1, i64 29340
  %i.aka = getelementptr inbounds nuw i8, ptr %1, i64 29342
  br label %bb.di

bb.di:                                            ; preds = %.lr.ph1248, %.split1239.us
  %indvars.iv1399 = phi i64 [ 0, %.lr.ph1248 ], [ %indvars.iv.next1400, %.split1239.us ] ; 9 uses
  br i1 %.not681, label %bb.dj, label %.thread1604

.thread1604:                                      ; preds = %bb.di
  %indvars.iv1399.tr1606 = trunc nuw i64 %indvars.iv1399 to i32
  %i.akb = shl nuw i32 %indvars.iv1399.tr1606, 1
  %i.akc = shl i32 4096, %i.akb
  %i.akd = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv1399
  br label %.split.us.preheader

bb.dj:                                            ; preds = %bb.di
  %i.ake = getelementptr inbounds nuw [4 x i8], ptr %i.ajp, i64 %indvars.iv1399
  %i.akf = load i32, ptr %i.ake, align 4, !tbaa !94
  %i.akg = load i32, ptr %i.ajq, align 4, !tbaa !101
  %i.akh = shl i32 %i.akf, %i.akg
  %i.aki = freeze i32 %i.akh                      ; 5 uses
  %indvars.iv1399.tr = trunc nuw i64 %indvars.iv1399 to i32
  %i.akj = shl nuw i32 %indvars.iv1399.tr, 1
  %i.akk = shl i32 4096, %i.akj                   ; 9 uses
  %i.akl = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv1399 ; 11 uses
  switch i32 %i.aki, label %.split.preheader [
    i32 1, label %.split.us.preheader
    i32 2, label %.split.us1240.preheader
  ]

.split.us1240.preheader:                          ; preds = %bb.dj
  %i.akm = load i16, ptr %i.ajr, align 8, !tbaa !108
  %i.akn = zext i16 %i.akm to i32                 ; 2 uses
  %i.ako = and i32 %i.akn, 256
  %.not682.us1242 = icmp eq i32 %i.ako, 0
  br i1 %.not682.us1242, label %bb.dm, label %.split.us1240.1

.split.us.preheader:                              ; preds = %.thread1604, %bb.dj
  %i.akp = phi ptr [ %i.akd, %.thread1604 ], [ %i.akl, %bb.dj ]
  %i.akq = phi i32 [ %i.akc, %.thread1604 ], [ %i.akk, %bb.dj ] ; 4 uses
  %i.akr = load i16, ptr %i.ajr, align 8, !tbaa !108
  %i.aks = zext i16 %i.akr to i32                 ; 2 uses
  %i.akt = and i32 %i.aks, 256
  %.not682.us = icmp eq i32 %i.akt, 0
  br i1 %.not682.us, label %.split.us.1.sink.split, label %.split.us.1

.split.preheader:                                 ; preds = %bb.dj
  %i.aku = load i16, ptr %i.ajr, align 8, !tbaa !108
  %i.akv = zext i16 %i.aku to i32                 ; 2 uses
  %i.akw = and i32 %i.akv, 256
  %.not682 = icmp eq i32 %i.akw, 0
  br i1 %.not682, label %bb.dr, label %.split.1

.split.us.1.sink.split:                           ; preds = %.split.us.preheader
  %i.akx = and i32 %i.akq, %i.aks
  %.not683.us = icmp eq i32 %i.akx, 0
  %. = sext i1 %.not683.us to i32
  store i32 %., ptr %i.akp, align 4, !tbaa !94
  br label %.split.us.1

.split.us.1:                                      ; preds = %.split.us.1.sink.split, %.split.us.preheader
  %i.aky = load i16, ptr %i.ajv, align 2, !tbaa !108
  %i.akz = zext i16 %i.aky to i32                 ; 2 uses
  %i.ala = and i32 %i.akz, 256
  %.not682.us.1 = icmp eq i32 %i.ala, 0
  br i1 %.not682.us.1, label %.split.us.2.sink.split, label %.split.us.2

.split.us.2.sink.split:                           ; preds = %.split.us.1
  %i.alb = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv1399
  %i.alc = and i32 %i.akq, %i.akz
  %.not683.us.1 = icmp eq i32 %i.alc, 0
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alb, i64 4
  %.1645 = sext i1 %.not683.us.1 to i32
  store i32 %.1645, ptr %i.ald, align 4, !tbaa !94
  br label %.split.us.2

.split.us.2:                                      ; preds = %.split.us.2.sink.split, %.split.us.1
  %i.ale = load i16, ptr %i.ajw, align 4, !tbaa !108
  %i.alf = zext i16 %i.ale to i32                 ; 2 uses
  %i.alg = and i32 %i.alf, 256
  %.not682.us.2 = icmp eq i32 %i.alg, 0
  br i1 %.not682.us.2, label %.split.us.3.sink.split, label %.split.us.3

.split.us.3.sink.split:                           ; preds = %.split.us.2
  %i.alh = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv1399
  %i.ali = and i32 %i.akq, %i.alf
  %.not683.us.2 = icmp eq i32 %i.ali, 0
  %i.alj = getelementptr inbounds nuw i8, ptr %i.alh, i64 8
  %.1646 = sext i1 %.not683.us.2 to i32
  store i32 %.1646, ptr %i.alj, align 8, !tbaa !94
  br label %.split.us.3

.split.us.3:                                      ; preds = %.split.us.3.sink.split, %.split.us.2
  %i.alk = load i16, ptr %i.ajx, align 2, !tbaa !108
  %i.all = zext i16 %i.alk to i32                 ; 2 uses
  %i.alm = and i32 %i.all, 256
  %.not682.us.3 = icmp eq i32 %i.alm, 0
  br i1 %.not682.us.3, label %bb.dk, label %.split1239.us

bb.dk:                                            ; preds = %.split.us.3
  %i.aln = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv1399
  %i.alo = and i32 %i.akq, %i.all
  %.not683.us.3 = icmp eq i32 %i.alo, 0
  %i.alp = getelementptr inbounds nuw i8, ptr %i.aln, i64 12 ; 2 uses
  br i1 %.not683.us.3, label %bb.dl, label %.thread1040.us.3

.thread1040.us.3:                                 ; preds = %bb.dk
  store i32 0, ptr %i.alp, align 4, !tbaa !94
  br label %.split1239.us

bb.dl:                                            ; preds = %bb.dk
  store i32 -1, ptr %i.alp, align 4, !tbaa !94
  br label %.split1239.us

bb.dm:                                            ; preds = %.split.us1240.preheader
  %i.alq = and i32 %i.akk, %i.akn
  %.not683.us1243 = icmp eq i32 %i.alq, 0
  br i1 %.not683.us1243, label %.split.us1240.1.sink.split, label %.thread1040.us1244

.thread1040.us1244:                               ; preds = %bb.dm
  %i.alr = load i32, ptr %i.st, align 16, !tbaa !95 ; 3 uses
  %i.als = load ptr, ptr %i.ss, align 8, !tbaa !99
  %i.alt = lshr i32 %i.alr, 3
  %i.alu = zext nneg i32 %i.alt to i64
  %i.alv = getelementptr inbounds nuw i8, ptr %i.als, i64 %i.alu
  %i.alw = load i8, ptr %i.alv, align 1, !tbaa !15
  %i.alx = and i32 %i.alr, 7
  %i.aly = zext i8 %i.alw to i32
  %i.alz = shl nuw nsw i32 %i.aly, %i.alx
  %i.ama = lshr i32 %i.alz, 7
  %i.amb = add i32 %i.alr, 1
  store i32 %i.amb, ptr %i.st, align 16, !tbaa !95
  %i.amc = and i32 %i.ama, 1
  %i.amd = xor i32 %i.amc, 1
  br label %.split.us1240.1.sink.split

.split.us1240.1.sink.split:                       ; preds = %bb.dm, %.thread1040.us1244
  %.sink1630 = phi i32 [ %i.amd, %.thread1040.us1244 ], [ -1, %bb.dm ]
  store i32 %.sink1630, ptr %i.akl, align 16, !tbaa !94
  br label %.split.us1240.1

.split.us1240.1:                                  ; preds = %.split.us1240.1.sink.split, %.split.us1240.preheader
  %i.ame = load i16, ptr %i.ajs, align 2, !tbaa !108
  %i.amf = zext i16 %i.ame to i32                 ; 2 uses
  %i.amg = and i32 %i.amf, 256
  %.not682.us1242.1 = icmp eq i32 %i.amg, 0
  br i1 %.not682.us1242.1, label %bb.dn, label %.split.us1240.2

bb.dn:                                            ; preds = %.split.us1240.1
  %i.amh = and i32 %i.akk, %i.amf
  %.not683.us1243.1 = icmp eq i32 %i.amh, 0
  br i1 %.not683.us1243.1, label %.split.us1240.2.sink.split, label %.thread1040.us1244.1

.thread1040.us1244.1:                             ; preds = %bb.dn
  %i.ami = load i32, ptr %i.st, align 16, !tbaa !95 ; 3 uses
  %i.amj = load ptr, ptr %i.ss, align 8, !tbaa !99
  %i.amk = lshr i32 %i.ami, 3
  %i.aml = zext nneg i32 %i.amk to i64
  %i.amm = getelementptr inbounds nuw i8, ptr %i.amj, i64 %i.aml
  %i.amn = load i8, ptr %i.amm, align 1, !tbaa !15
  %i.amo = and i32 %i.ami, 7
  %i.amp = zext i8 %i.amn to i32
  %i.amq = shl nuw nsw i32 %i.amp, %i.amo
  %i.amr = lshr i32 %i.amq, 7
  %i.ams = add i32 %i.ami, 1
  store i32 %i.ams, ptr %i.st, align 16, !tbaa !95
  %i.amt = and i32 %i.amr, 1
  %i.amu = xor i32 %i.amt, 1
  br label %.split.us1240.2.sink.split

.split.us1240.2.sink.split:                       ; preds = %bb.dn, %.thread1040.us1244.1
  %.sink1631 = phi i32 [ %i.amu, %.thread1040.us1244.1 ], [ -1, %bb.dn ]
  %i.amv = getelementptr inbounds nuw i8, ptr %i.akl, i64 4
  store i32 %.sink1631, ptr %i.amv, align 4, !tbaa !94
  br label %.split.us1240.2

.split.us1240.2:                                  ; preds = %.split.us1240.2.sink.split, %.split.us1240.1
  %i.amw = load i16, ptr %i.ajt, align 4, !tbaa !108
  %i.amx = zext i16 %i.amw to i32                 ; 2 uses
  %i.amy = and i32 %i.amx, 256
  %.not682.us1242.2 = icmp eq i32 %i.amy, 0
  br i1 %.not682.us1242.2, label %bb.do, label %.split.us1240.3

bb.do:                                            ; preds = %.split.us1240.2
  %i.amz = and i32 %i.akk, %i.amx
  %.not683.us1243.2 = icmp eq i32 %i.amz, 0
  br i1 %.not683.us1243.2, label %.split.us1240.3.sink.split, label %.thread1040.us1244.2

.thread1040.us1244.2:                             ; preds = %bb.do
  %i.ana = load i32, ptr %i.st, align 16, !tbaa !95 ; 3 uses
  %i.anb = load ptr, ptr %i.ss, align 8, !tbaa !99
  %i.anc = lshr i32 %i.ana, 3
  %i.and = zext nneg i32 %i.anc to i64
  %i.ane = getelementptr inbounds nuw i8, ptr %i.anb, i64 %i.and
  %i.anf = load i8, ptr %i.ane, align 1, !tbaa !15
  %i.ang = and i32 %i.ana, 7
  %i.anh = zext i8 %i.anf to i32
  %i.ani = shl nuw nsw i32 %i.anh, %i.ang
  %i.anj = lshr i32 %i.ani, 7
  %i.ank = add i32 %i.ana, 1
  store i32 %i.ank, ptr %i.st, align 16, !tbaa !95
  %i.anl = and i32 %i.anj, 1
  %i.anm = xor i32 %i.anl, 1
  br label %.split.us1240.3.sink.split

.split.us1240.3.sink.split:                       ; preds = %bb.do, %.thread1040.us1244.2
  %.sink1633 = phi i32 [ %i.anm, %.thread1040.us1244.2 ], [ -1, %bb.do ]
  %i.ann = getelementptr inbounds nuw i8, ptr %i.akl, i64 8
  store i32 %.sink1633, ptr %i.ann, align 8, !tbaa !94
  br label %.split.us1240.3

.split.us1240.3:                                  ; preds = %.split.us1240.3.sink.split, %.split.us1240.2
  %i.ano = load i16, ptr %i.aju, align 2, !tbaa !108
  %i.anp = zext i16 %i.ano to i32                 ; 2 uses
  %i.anq = and i32 %i.anp, 256
  %.not682.us1242.3 = icmp eq i32 %i.anq, 0
  br i1 %.not682.us1242.3, label %bb.dp, label %.split1239.us

bb.dp:                                            ; preds = %.split.us1240.3
  %i.anr = and i32 %i.akk, %i.anp
  %.not683.us1243.3 = icmp eq i32 %i.anr, 0
  br i1 %.not683.us1243.3, label %bb.dq, label %.thread1040.us1244.3

end_hunk_1
begin_hunk_2_@ff_h264_decode_mb_cavlc:bb.a
  %i.aol = zext nneg i32 %i.aok to i64
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aoj, i64 %i.aol
  %i.aon = load i32, ptr %i.aom, align 1, !tbaa !15
  %i.aoo = call i32 @llvm.bswap.i32(i32 %i.aon)
  %i.aop = and i32 %i.aoi, 7
  %i.aoq = shl i32 %i.aoo, %i.aop
  %i.aor = lshr i32 %i.aoq, 23
  %i.aos = zext nneg i32 %i.aor to i64            ; 2 uses
  %i.aot = getelementptr inbounds nuw i8, ptr @ff_golomb_vlc_len, i64 %i.aos
  %i.aou = load i8, ptr %i.aot, align 1, !tbaa !15
  %i.aov = zext i8 %i.aou to i32
  %i.aow = add i32 %i.aoi, %i.aov
  store i32 %i.aow, ptr %i.st, align 16, !tbaa !95
  %i.aox = getelementptr inbounds nuw i8, ptr @ff_ue_golomb_vlc_code, i64 %i.aos
  %i.aoy = load i8, ptr %i.aox, align 1, !tbaa !15
  %i.aoz = zext i8 %i.aoy to i32                  ; 3 uses
  %.not684 = icmp ugt i32 %i.aki, %i.aoz
  br i1 %.not684, label %.split.1.sink.split, label %bb.ea

.split.1.sink.split:                              ; preds = %bb.dr, %bb.ds
  %.sink1635 = phi i32 [ %i.aoz, %bb.ds ], [ -1, %bb.dr ]
  store i32 %.sink1635, ptr %i.akl, align 16, !tbaa !94
  br label %.split.1

.split.1:                                         ; preds = %.split.1.sink.split, %.split.preheader
  %i.apa = load i16, ptr %i.ajy, align 2, !tbaa !108
  %i.apb = zext i16 %i.apa to i32                 ; 2 uses
  %i.apc = and i32 %i.apb, 256
  %.not682.1 = icmp eq i32 %i.apc, 0
  br i1 %.not682.1, label %bb.dt, label %.split.2

bb.dt:                                            ; preds = %.split.1
  %i.apd = and i32 %i.akk, %i.apb
  %.not683.1 = icmp eq i32 %i.apd, 0
  br i1 %.not683.1, label %.split.2.sink.split, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ape = load i32, ptr %i.st, align 16, !tbaa !95 ; 3 uses
  %i.apf = load ptr, ptr %i.ss, align 8, !tbaa !99
  %i.apg = lshr i32 %i.ape, 3
  %i.aph = zext nneg i32 %i.apg to i64
  %i.api = getelementptr inbounds nuw i8, ptr %i.apf, i64 %i.aph
  %i.apj = load i32, ptr %i.api, align 1, !tbaa !15
  %i.apk = call i32 @llvm.bswap.i32(i32 %i.apj)
  %i.apl = and i32 %i.ape, 7
  %i.apm = shl i32 %i.apk, %i.apl
  %i.apn = lshr i32 %i.apm, 23
  %i.apo = zext nneg i32 %i.apn to i64            ; 2 uses
  %i.app = getelementptr inbounds nuw i8, ptr @ff_golomb_vlc_len, i64 %i.apo
  %i.apq = load i8, ptr %i.app, align 1, !tbaa !15
  %i.apr = zext i8 %i.apq to i32
  %i.aps = add i32 %i.ape, %i.apr
  store i32 %i.aps, ptr %i.st, align 16, !tbaa !95
  %i.apt = getelementptr inbounds nuw i8, ptr @ff_ue_golomb_vlc_code, i64 %i.apo
  %i.apu = load i8, ptr %i.apt, align 1, !tbaa !15
  %i.apv = zext i8 %i.apu to i32                  ; 3 uses
  %.not684.1 = icmp ugt i32 %i.aki, %i.apv
  br i1 %.not684.1, label %.split.2.sink.split, label %bb.ea

.split.2.sink.split:                              ; preds = %bb.dt, %bb.du
  %.sink1636 = phi i32 [ %i.apv, %bb.du ], [ -1, %bb.dt ]
  %i.apw = getelementptr inbounds nuw i8, ptr %i.akl, i64 4
  store i32 %.sink1636, ptr %i.apw, align 4, !tbaa !94
  br label %.split.2

.split.2:                                         ; preds = %.split.2.sink.split, %.split.1
  %i.apx = load i16, ptr %i.ajz, align 4, !tbaa !108
  %i.apy = zext i16 %i.apx to i32                 ; 2 uses
  %i.apz = and i32 %i.apy, 256
  %.not682.2 = icmp eq i32 %i.apz, 0
  br i1 %.not682.2, label %bb.dv, label %.split.3

bb.dv:                                            ; preds = %.split.2
  %i.aqa = and i32 %i.akk, %i.apy
  %.not683.2 = icmp eq i32 %i.aqa, 0
  br i1 %.not683.2, label %.split.3.sink.split, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.aqb = load i32, ptr %i.st, align 16, !tbaa !95 ; 3 uses
  %i.aqc = load ptr, ptr %i.ss, align 8, !tbaa !99
  %i.aqd = lshr i32 %i.aqb, 3
  %i.aqe = zext nneg i32 %i.aqd to i64
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqc, i64 %i.aqe
  %i.aqg = load i32, ptr %i.aqf, align 1, !tbaa !15
  %i.aqh = call i32 @llvm.bswap.i32(i32 %i.aqg)
  %i.aqi = and i32 %i.aqb, 7
  %i.aqj = shl i32 %i.aqh, %i.aqi
  %i.aqk = lshr i32 %i.aqj, 23
  %i.aql = zext nneg i32 %i.aqk to i64            ; 2 uses
  %i.aqm = getelementptr inbounds nuw i8, ptr @ff_golomb_vlc_len, i64 %i.aql
  %i.aqn = load i8, ptr %i.aqm, align 1, !tbaa !15
  %i.aqo = zext i8 %i.aqn to i32
  %i.aqp = add i32 %i.aqb, %i.aqo
  store i32 %i.aqp, ptr %i.st, align 16, !tbaa !95
  %i.aqq = getelementptr inbounds nuw i8, ptr @ff_ue_golomb_vlc_code, i64 %i.aql
  %i.aqr = load i8, ptr %i.aqq, align 1, !tbaa !15
  %i.aqs = zext i8 %i.aqr to i32                  ; 3 uses
  %.not684.2 = icmp ugt i32 %i.aki, %i.aqs
  br i1 %.not684.2, label %.split.3.sink.split, label %bb.ea

.split.3.sink.split:                              ; preds = %bb.dv, %bb.dw
  %.sink1638 = phi i32 [ %i.aqs, %bb.dw ], [ -1, %bb.dv ]
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.akl, i64 8
  store i32 %.sink1638, ptr %i.aqt, align 8, !tbaa !94
  br label %.split.3

.split.3:                                         ; preds = %.split.3.sink.split, %.split.2
  %i.aqu = load i16, ptr %i.aka, align 2, !tbaa !108
  %i.aqv = zext i16 %i.aqu to i32                 ; 2 uses
  %i.aqw = and i32 %i.aqv, 256
  %.not682.3 = icmp eq i32 %i.aqw, 0
  br i1 %.not682.3, label %bb.dx, label %.split1239.us

bb.dx:                                            ; preds = %.split.3
  %i.aqx = and i32 %i.akk, %i.aqv
  %.not683.3 = icmp eq i32 %i.aqx, 0
  br i1 %.not683.3, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.aqy = load i32, ptr %i.st, align 16, !tbaa !95 ; 3 uses
  %i.aqz = load ptr, ptr %i.ss, align 8, !tbaa !99
  %i.ara = lshr i32 %i.aqy, 3
  %i.arb = zext nneg i32 %i.ara to i64
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aqz, i64 %i.arb
  %i.ard = load i32, ptr %i.arc, align 1, !tbaa !15
  %i.are = call i32 @llvm.bswap.i32(i32 %i.ard)
  %i.arf = and i32 %i.aqy, 7
  %i.arg = shl i32 %i.are, %i.arf
  %i.arh = lshr i32 %i.arg, 23
  %i.ari = zext nneg i32 %i.arh to i64            ; 2 uses
  %i.arj = getelementptr inbounds nuw i8, ptr @ff_golomb_vlc_len, i64 %i.ari
  %i.ark = load i8, ptr %i.arj, align 1, !tbaa !15
  %i.arl = zext i8 %i.ark to i32
  %i.arm = add i32 %i.aqy, %i.arl
  store i32 %i.arm, ptr %i.st, align 16, !tbaa !95
  %i.arn = getelementptr inbounds nuw i8, ptr @ff_ue_golomb_vlc_code, i64 %i.ari
  %i.aro = load i8, ptr %i.arn, align 1, !tbaa !15
  %i.arp = zext i8 %i.aro to i32                  ; 3 uses
  %.not684.3 = icmp ugt i32 %i.aki, %i.arp
  br i1 %.not684.3, label %.thread1040.3, label %bb.ea

.thread1040.3:                                    ; preds = %bb.dy
  %i.arq = getelementptr inbounds nuw i8, ptr %i.akl, i64 12
  store i32 %i.arp, ptr %i.arq, align 4, !tbaa !94
  br label %.split1239.us

bb.dz:                                            ; preds = %bb.dx
  %i.arr = getelementptr inbounds nuw i8, ptr %i.akl, i64 12
  store i32 -1, ptr %i.arr, align 4, !tbaa !94
  br label %.split1239.us

bb.ea:                                            ; preds = %bb.dy, %bb.dw, %bb.du, %bb.ds
  %.lcssa1330 = phi i32 [ %i.aoz, %bb.ds ], [ %i.apv, %bb.du ], [ %i.aqs, %bb.dw ], [ %i.arp, %bb.dy ]
  %i.ars = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.art = load ptr, ptr %i.ars, align 8, !tbaa !97
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.art, i32 noundef 16, ptr noundef nonnull @.str.5, i32 noundef %.lcssa1330) #9
  br label %.thread1054

.split1239.us:                                    ; preds = %.split.3, %.thread1040.3, %bb.dz, %.split.us1240.3, %.thread1040.us1244.3, %bb.dq, %.split.us.3, %.thread1040.us.3, %bb.dl
  %indvars.iv.next1400 = add nuw nsw i64 %indvars.iv1399, 1 ; 2 uses
  %exitcond1403.not = icmp eq i64 %indvars.iv.next1400, %wide.trip.count1402
  br i1 %exitcond1403.not, label %._crit_edge, label %bb.di, !llvm.loop !140

._crit_edge:                                      ; preds = %.split1239.us, %.loopexit1181
  %.not674 = icmp eq i32 %i.i, 0
  br i1 %.not674, label %bb.eb, label %get_dct8x8_allowed.exit

get_dct8x8_allowed.exit:                          ; preds = %._crit_edge
  %i.aru = load ptr, ptr %i.j, align 8, !tbaa !75
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aru, i64 72
  %i.arw = load i32, ptr %i.arv, align 8, !tbaa !141
  %.not.i = icmp eq i32 %i.arw, 0
  %i.arx = getelementptr inbounds nuw i8, ptr %1, i64 29336
  %i.ary = load i64, ptr %i.arx, align 8, !tbaa !15
  %.1647 = select i1 %.not.i, i64 103584372001603952, i64 31525678435270768
  %i.arz = and i64 %i.ary, %.1647
  %.0.in.i = icmp eq i64 %i.arz, 0
  %.0.i714 = zext i1 %.0.in.i to i32
  br label %bb.eb

bb.eb:                                            ; preds = %get_dct8x8_allowed.exit, %._crit_edge
  %.0613 = phi i32 [ %.0.i714, %get_dct8x8_allowed.exit ], [ 0, %._crit_edge ]
  br i1 %.not1306, label %._crit_edge1255, label %.preheader1178.lr.ph

.preheader1178.lr.ph:                             ; preds = %bb.eb
  %i.asa = getelementptr inbounds nuw i8, ptr %1, i64 29336
  %i.asb = getelementptr inbounds nuw i8, ptr %1, i64 29056
  %i.asc = getelementptr inbounds nuw i8, ptr %1, i64 28736
  %i.asd = getelementptr inbounds nuw i8, ptr %0, i64 28496 ; 3 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %1, i64 20952
  %i.asf = getelementptr inbounds nuw i8, ptr %1, i64 20932 ; 2 uses
  %i.asg = getelementptr inbounds nuw i8, ptr %0, i64 31032 ; 2 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %0, i64 31048 ; 2 uses
  %wide.trip.count1412 = zext i32 %i.ajm to i64
  br label %.preheader1178

.preheader1178:                                   ; preds = %.preheader1178.lr.ph, %bb.fm
  %indvars.iv1409 = phi i64 [ 0, %.preheader1178.lr.ph ], [ %indvars.iv.next1410, %bb.fm ] ; 10 uses
  %i.asi = getelementptr inbounds nuw [40 x i8], ptr %i.asb, i64 %indvars.iv1409 ; 8 uses
  %i.asj = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv1409
  %indvars.iv1409.tr = trunc nuw i64 %indvars.iv1409 to i32
  %i.ask = shl nuw i32 %indvars.iv1409.tr, 1      ; 2 uses
  %i.asl = shl i32 4096, %i.ask
  %i.asm = getelementptr inbounds nuw [160 x i8], ptr %i.asc, i64 %indvars.iv1409 ; 6 uses
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asi, i64 11
  %i.aso = getelementptr [160 x i8], ptr %1, i64 %indvars.iv1409 ; 2 uses
  %i.asp = getelementptr i8, ptr %i.aso, i64 28776 ; 7 uses
  %i.asq = shl i32 12288, %i.ask                  ; 2 uses
  %i.asr = getelementptr i8, ptr %i.aso, i64 28778 ; 2 uses
  br label %bb.ec

bb.ec:                                            ; preds = %.preheader1178, %.loopexit1177
  %indvars.iv1405 = phi i64 [ 0, %.preheader1178 ], [ %indvars.iv.next1406, %.loopexit1177 ] ; 6 uses
  %i.ass = getelementptr inbounds nuw [2 x i8], ptr %i.asa, i64 %indvars.iv1405 ; 2 uses
  %i.ast = load i16, ptr %i.ass, align 2, !tbaa !108
  %i.asu = and i16 %i.ast, 256
  %.not675 = icmp eq i16 %i.asu, 0
  br i1 %.not675, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.asv = shl nuw nsw i64 %indvars.iv1405, 2
  %i.asw = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.asv
  %i.asx = load i8, ptr %i.asw, align 4, !tbaa !15
  %i.asy = zext i8 %i.asx to i64
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asi, i64 %i.asy ; 2 uses
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asz, i64 1
  %i.atb = load i8, ptr %i.ata, align 1, !tbaa !15
  store i8 %i.atb, ptr %i.asz, align 1, !tbaa !15
  br label %.loopexit1177

bb.ee:                                            ; preds = %bb.ec
  %i.atc = getelementptr inbounds nuw [4 x i8], ptr %i.asj, i64 %indvars.iv1405
  %i.atd = load i32, ptr %i.atc, align 4, !tbaa !94
  %i.ate = trunc i32 %i.atd to i8                 ; 4 uses
  %i.atf = shl nuw nsw i64 %indvars.iv1405, 2     ; 2 uses
  %i.atg = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.atf
  %i.ath = load i8, ptr %i.atg, align 4, !tbaa !15
  %i.ati = zext i8 %i.ath to i64                  ; 2 uses
  %i.atj = getelementptr inbounds nuw i8, ptr %i.asi, i64 %i.ati ; 4 uses
  %i.atk = getelementptr inbounds nuw i8, ptr %i.atj, i64 9
  store i8 %i.ate, ptr %i.atk, align 1, !tbaa !15
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atj, i64 8
  store i8 %i.ate, ptr %i.atl, align 1, !tbaa !15
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atj, i64 1
  store i8 %i.ate, ptr %i.atm, align 1, !tbaa !15
  store i8 %i.ate, ptr %i.atj, align 1, !tbaa !15
  %i.atn = load i16, ptr %i.ass, align 2, !tbaa !108
  %i.ato = zext i16 %i.atn to i32                 ; 5 uses
  %i.atp = and i32 %i.asl, %i.ato
  %.not676 = icmp eq i32 %i.atp, 0
  br i1 %.not676, label %bb.fl, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.atq = and i32 %i.ato, 24
  %.not677 = icmp ne i32 %i.atq, 0                ; 2 uses
  %i.atr = select i1 %.not677, i32 2, i32 1
  %i.ats = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv1405
  %i.att = load i32, ptr %i.ats, align 4, !tbaa !94 ; 2 uses
  %i.atu = icmp sgt i32 %i.att, 0
  br i1 %i.atu, label %.lr.ph1252, label %.loopexit1177

.lr.ph1252:                                       ; preds = %bb.ef
  %i.atv = zext i1 %.not677 to i32
  %i.atw = load ptr, ptr %i.ss, align 8, !tbaa !99 ; 4 uses
  %i.atx = and i32 %i.ato, 8
  %.not678 = icmp eq i32 %i.atx, 0
  %i.aty = and i32 %i.ato, 16
  %.not679 = icmp eq i32 %i.aty, 0
  %i.atz = and i32 %i.ato, 32
  %.not680 = icmp eq i32 %i.atz, 0
  %i.aua = trunc nuw nsw i64 %i.atf to i32
  br label %bb.eg

bb.eg:                                            ; preds = %.lr.ph1252, %bb.fk
  %.05881250 = phi i32 [ 0, %.lr.ph1252 ], [ %i.bfo, %bb.fk ] ; 2 uses
  %i.aub = shl nuw i32 %.05881250, %i.atv
  %i.auc = add nsw i32 %i.aub, %i.aua
  %i.aud = sext i32 %i.auc to i64                 ; 3 uses
  %i.aue = getelementptr inbounds i8, ptr @scan8, i64 %i.aud
  %i.auf = load i8, ptr %i.aue, align 1, !tbaa !15 ; 2 uses
  %i.aug = zext i8 %i.auf to i64                  ; 2 uses
  %i.auh = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %i.aug ; 12 uses
  %i.aui = getelementptr inbounds nuw i8, ptr %i.asi, i64 %i.aug
  %i.auj = load i8, ptr %i.aui, align 1, !tbaa !15 ; 3 uses
  %i.auk = sext i8 %i.auj to i32
  %i.aul = zext i8 %i.auf to i32                  ; 6 uses
  %i.aum = add nsw i32 %i.aul, -8                 ; 2 uses
  %i.aun = sext i32 %i.aum to i64                 ; 2 uses
  %i.auo = getelementptr inbounds i8, ptr %i.asi, i64 %i.aun
  %i.aup = load i8, ptr %i.auo, align 1, !tbaa !15 ; 2 uses
  %i.auq = add nsw i32 %i.aul, -1
  %i.aur = sext i32 %i.auq to i64                 ; 2 uses
  %i.aus = getelementptr inbounds i8, ptr %i.asi, i64 %i.aur
  %i.aut = load i8, ptr %i.aus, align 1, !tbaa !15 ; 2 uses
  %i.auu = getelementptr inbounds [4 x i8], ptr %i.asm, i64 %i.aur ; 7 uses
  %i.auv = getelementptr inbounds [4 x i8], ptr %i.asm, i64 %i.aun ; 6 uses
  %i.auw = add nsw i32 %i.aum, %i.atr
  %i.aux = sext i32 %i.auw to i64                 ; 2 uses
  %i.auy = getelementptr inbounds i8, ptr %i.asi, i64 %i.aux
  %i.auz = load i8, ptr %i.auy, align 1, !tbaa !15 ; 2 uses
  %i.ava = sext i8 %i.auz to i32
  %i.avb = load i32, ptr %i.rx, align 8, !tbaa !98
  %i.avc = icmp ne i32 %i.avb, 0
  %i.avd = icmp eq i8 %i.auz, -2                  ; 2 uses
  %or.cond.i790 = select i1 %i.avc, i1 %i.avd, i1 false
  %i.ave = lshr i64 1970324836974540, %i.aud
  %i.avf = trunc i64 %i.ave to i1
  %or.cond98.i791 = select i1 %or.cond.i790, i1 %i.avf, i1 false
  %i.avg = and i32 %i.aul, 7
  %i.avh = icmp eq i32 %i.avg, 4
  %or.cond100.i792 = and i1 %i.avh, %or.cond98.i791
  br i1 %or.cond100.i792, label %bb.eh, label %bb.ep

bb.eh:                                            ; preds = %bb.eg
  %i.avi = load i8, ptr %i.asn, align 1, !tbaa !15
  %.not.i795 = icmp eq i8 %i.avi, -2
  br i1 %.not.i795, label %.thread1052, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.avj = load ptr, ptr %i.asd, align 8, !tbaa !142
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avj, i64 104
  %i.avl = load ptr, ptr %i.avk, align 8, !tbaa !143 ; 2 uses
  store i32 0, ptr %i.asp, align 4, !tbaa !15
  %i.avm = load i32, ptr %i.vj, align 8, !tbaa !100
  %.not91.i796 = icmp eq i32 %i.avm, 0
  %i.avn = load i32, ptr %i.ase, align 8, !tbaa !94
  %i.avo = and i32 %i.avn, 128
  %.not92.i802 = icmp eq i32 %i.avo, 0            ; 2 uses
  br i1 %.not91.i796, label %bb.ej, label %bb.em

bb.ej:                                            ; preds = %bb.ei
  br i1 %.not92.i802, label %.thread1052, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.avp = load i32, ptr %i.asf, align 4, !tbaa !94
  %i.avq = load i32, ptr %i.t, align 4, !tbaa !89 ; 2 uses
  %i.avr = add nsw i32 %i.avq, %i.avp             ; 3 uses
  %i.avs = load i32, ptr %i.r, align 4, !tbaa !88
  %i.avt = shl i32 %i.avs, 1
  %i.avu = and i32 %i.avt, 2
  %i.avv = lshr i32 %i.aul, 5
  %i.avw = add nuw nsw i32 %i.avu, %i.avv         ; 3 uses
  %i.avx = lshr i32 %i.avw, 2
  %i.avy = mul nsw i32 %i.avx, %i.avq
  %i.avz = add nsw i32 %i.avy, %i.avr
  %i.awa = sext i32 %i.avz to i64
  %i.awb = getelementptr inbounds [4 x i8], ptr %i.avl, i64 %i.awa
  %i.awc = load i32, ptr %i.awb, align 4, !tbaa !94
  %i.awd = and i32 %i.awc, %i.asq
  %.not93.i803 = icmp eq i32 %i.awd, 0
  br i1 %.not93.i803, label %fetch_diagonal_mv.exit804, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.awe = load ptr, ptr %i.asd, align 8, !tbaa !142 ; 2 uses
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awe, i64 80
  %i.awg = getelementptr inbounds nuw [8 x i8], ptr %i.awf, i64 %indvars.iv1409
  %i.awh = load ptr, ptr %i.awg, align 8, !tbaa !104
  %i.awi = load ptr, ptr %i.asg, align 8, !tbaa !107
  %i.awj = sext i32 %i.avr to i64
  %i.awk = getelementptr inbounds [4 x i8], ptr %i.awi, i64 %i.awj
  %i.awl = load i32, ptr %i.awk, align 4, !tbaa !94
  %i.awm = add i32 %i.awl, 3
  %i.awn = load i32, ptr %i.ash, align 8, !tbaa !105
  %i.awo = mul nsw i32 %i.awn, %i.avw
  %i.awp = add i32 %i.awm, %i.awo
  %i.awq = zext i32 %i.awp to i64
  %i.awr = getelementptr inbounds nuw [4 x i8], ptr %i.awh, i64 %i.awq ; 2 uses
  %i.aws = load i16, ptr %i.awr, align 2, !tbaa !108
  store i16 %i.aws, ptr %i.asp, align 4, !tbaa !108
  %i.awt = getelementptr inbounds nuw i8, ptr %i.awr, i64 2
  %i.awu = load i16, ptr %i.awt, align 2, !tbaa !108
  %i.awv = shl i16 %i.awu, 1
  store i16 %i.awv, ptr %i.asr, align 2, !tbaa !108
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awe, i64 120
  %i.awx = getelementptr inbounds nuw [8 x i8], ptr %i.aww, i64 %indvars.iv1409
  %i.awy = load ptr, ptr %i.awx, align 8, !tbaa !93
  %i.awz = shl nsw i32 %i.avr, 2
  %i.axa = or disjoint i32 %i.awz, 1
  %i.axb = and i32 %i.avw, 14
  %i.axc = add nsw i32 %i.axa, %i.axb
  %i.axd = sext i32 %i.axc to i64
  %i.axe = getelementptr inbounds i8, ptr %i.awy, i64 %i.axd
  %i.axf = load i8, ptr %i.axe, align 1, !tbaa !15
  %i.axg = ashr i8 %i.axf, 1
  %i.axh = sext i8 %i.axg to i32
  br label %fetch_diagonal_mv.exit804

bb.em:                                            ; preds = %bb.ei
  br i1 %.not92.i802, label %bb.en, label %.thread1052

bb.en:                                            ; preds = %bb.em
  %i.axi = lshr i64 1970324836961280, %i.aud
  %i.axj = and i64 %i.axi, 1
  %i.axk = getelementptr inbounds nuw [4 x i8], ptr %i.asf, i64 %i.axj
  %i.axl = load i32, ptr %i.axk, align 4, !tbaa !94 ; 2 uses
  %i.axm = sext i32 %i.axl to i64                 ; 2 uses
  %i.axn = getelementptr inbounds [4 x i8], ptr %i.avl, i64 %i.axm
  %i.axo = load i32, ptr %i.axn, align 4, !tbaa !94
  %i.axp = and i32 %i.axo, %i.asq
  %.not96.i801 = icmp eq i32 %i.axp, 0
  br i1 %.not96.i801, label %fetch_diagonal_mv.exit804, label %bb.eo

end_hunk_2
begin_hunk_3_@ff_h264_decode_mb_cavlc:bb.a
  %i.bdb = shl i32 %i.bcz, %i.bda
  %i.bdc = lshr i32 %i.bdb, %i.bct                ; 2 uses
  %reass.sub1308 = sub i32 %reass.sub.i846, %i.bct
  %i.bdd = add i32 %reass.sub1308, 63             ; 2 uses
  store i32 %i.bdd, ptr %i.st, align 16, !tbaa !95
  %i.bde = and i32 %i.bdc, 1                      ; 2 uses
  %i.bdf = sub nsw i32 0, %i.bde
  %i.bdg = lshr i32 %i.bdc, 1
  %i.bdh = xor i32 %i.bdg, %i.bdf
  %i.bdi = add i32 %i.bdh, %i.bde
  br label %get_se_golomb.exit

get_se_golomb.exit:                               ; preds = %bb.fb, %bb.fc
  %i.bdj = phi i32 [ %i.bci, %bb.fb ], [ %i.bdd, %bb.fc ] ; 4 uses
  %.0.i847 = phi i32 [ %i.bcl, %bb.fb ], [ %i.bdi, %bb.fc ]
  %i.bdk = add i32 %.0.i847, %.01031
  %i.bdl = lshr i32 %i.bdj, 3
  %i.bdm = zext nneg i32 %i.bdl to i64
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.atw, i64 %i.bdm
  %i.bdo = load i32, ptr %i.bdn, align 1, !tbaa !15
  %i.bdp = call i32 @llvm.bswap.i32(i32 %i.bdo)
  %i.bdq = and i32 %i.bdj, 7
  %i.bdr = shl i32 %i.bdp, %i.bdq                 ; 5 uses
  %i.bds = icmp ugt i32 %i.bdr, 134217727
  br i1 %i.bds, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %get_se_golomb.exit
  %i.bdt = lshr i32 %i.bdr, 23
  %i.bdu = zext nneg i32 %i.bdt to i64            ; 2 uses
  %i.bdv = getelementptr inbounds nuw i8, ptr @ff_golomb_vlc_len, i64 %i.bdu
  %i.bdw = load i8, ptr %i.bdv, align 1, !tbaa !15
  %i.bdx = zext i8 %i.bdw to i32
  %i.bdy = add i32 %i.bdj, %i.bdx
  store i32 %i.bdy, ptr %i.st, align 16, !tbaa !95
  %i.bdz = getelementptr inbounds nuw i8, ptr @ff_se_golomb_vlc_code, i64 %i.bdu
  %i.bea = load i8, ptr %i.bdz, align 1, !tbaa !15
  %i.beb = sext i8 %i.bea to i32
  br label %get_se_golomb.exit857

bb.fe:                                            ; preds = %get_se_golomb.exit
  %.not.i.i848 = icmp samesign ult i32 %i.bdr, 65536 ; 2 uses
  %i.bec = lshr i32 %i.bdr, 16
  %spec.select.i.i849 = select i1 %.not.i.i848, i32 %i.bdr, i32 %i.bec ; 3 uses
  %spec.select12.i.i850 = select i1 %.not.i.i848, i32 0, i32 16 ; 2 uses
  %.not11.i.i851 = icmp samesign ult i32 %spec.select.i.i849, 256 ; 2 uses
  %i.bed = lshr i32 %spec.select.i.i849, 8
  %i.bee = or disjoint i32 %spec.select12.i.i850, 8
  %.110.i.i852 = select i1 %.not11.i.i851, i32 %spec.select.i.i849, i32 %i.bed
  %.1.i.i853 = select i1 %.not11.i.i851, i32 %spec.select12.i.i850, i32 %i.bee
  %i.bef = zext nneg i32 %.110.i.i852 to i64
  %i.beg = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.bef
  %i.beh = load i8, ptr %i.beg, align 1, !tbaa !15
  %i.bei = zext i8 %i.beh to i32
  %i.bej = add nuw nsw i32 %.1.i.i853, %i.bei     ; 3 uses
  %reass.sub.i854 = sub i32 %i.bdj, %i.bej        ; 2 uses
  %i.bek = add i32 %reass.sub.i854, 31            ; 2 uses
  %i.bel = lshr i32 %i.bek, 3
  %i.bem = zext nneg i32 %i.bel to i64
  %i.ben = getelementptr inbounds nuw i8, ptr %i.atw, i64 %i.bem
  %i.beo = load i32, ptr %i.ben, align 1, !tbaa !15
  %i.bep = call i32 @llvm.bswap.i32(i32 %i.beo)
  %i.beq = and i32 %i.bek, 7
  %i.ber = shl i32 %i.bep, %i.beq
  %i.bes = lshr i32 %i.ber, %i.bej                ; 2 uses
  %reass.sub1309 = sub i32 %reass.sub.i854, %i.bej
  %i.bet = add i32 %reass.sub1309, 63
  store i32 %i.bet, ptr %i.st, align 16, !tbaa !95
  %i.beu = and i32 %i.bes, 1                      ; 2 uses
  %i.bev = sub nsw i32 0, %i.beu
  %i.bew = lshr i32 %i.bes, 1
  %i.bex = xor i32 %i.bew, %i.bev
  %i.bey = add i32 %i.bex, %i.beu
  br label %get_se_golomb.exit857

get_se_golomb.exit857:                            ; preds = %bb.fd, %bb.fe
  %.0.i856 = phi i32 [ %i.beb, %bb.fd ], [ %i.bey, %bb.fe ]
  %i.bez = add i32 %.0.i856, %.01030              ; 4 uses
  %.pre1482 = trunc i32 %i.bdk to i16             ; 6 uses
  br i1 %.not678, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %get_se_golomb.exit857
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.auh, i64 36
  store i16 %.pre1482, ptr %i.bfa, align 2, !tbaa !108
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.auh, i64 32
  store i16 %.pre1482, ptr %i.bfb, align 2, !tbaa !108
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.auh, i64 4
  store i16 %.pre1482, ptr %i.bfc, align 2, !tbaa !108
  %i.bfd = trunc i32 %i.bez to i16                ; 4 uses
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.auh, i64 38
  store i16 %i.bfd, ptr %i.bfe, align 2, !tbaa !108
  %i.bff = getelementptr inbounds nuw i8, ptr %i.auh, i64 34
  store i16 %i.bfd, ptr %i.bff, align 2, !tbaa !108
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.auh, i64 6
  store i16 %i.bfd, ptr %i.bfg, align 2, !tbaa !108
  br label %bb.fk

bb.fg:                                            ; preds = %get_se_golomb.exit857
  br i1 %.not679, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.auh, i64 4
  store i16 %.pre1482, ptr %i.bfh, align 2, !tbaa !108
  %i.bfi = trunc i32 %i.bez to i16                ; 2 uses
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.auh, i64 6
  store i16 %i.bfi, ptr %i.bfj, align 2, !tbaa !108
  br label %bb.fk

bb.fi:                                            ; preds = %bb.fg
  br i1 %.not680, label %._crit_edge1481, label %bb.fj

._crit_edge1481:                                  ; preds = %bb.fi
  %.pre1483 = trunc i32 %i.bez to i16
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.auh, i64 32
  store i16 %.pre1482, ptr %i.bfk, align 2, !tbaa !108
  %i.bfl = trunc i32 %i.bez to i16                ; 2 uses
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.auh, i64 34
  store i16 %i.bfl, ptr %i.bfm, align 2, !tbaa !108
  br label %bb.fk

bb.fk:                                            ; preds = %._crit_edge1481, %bb.fh, %bb.fj, %bb.ff
  %.pre-phi1484 = phi i16 [ %.pre1483, %._crit_edge1481 ], [ %i.bfi, %bb.fh ], [ %i.bfl, %bb.fj ], [ %i.bfd, %bb.ff ]
  store i16 %.pre1482, ptr %i.auh, align 2, !tbaa !108
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.auh, i64 2
  store i16 %.pre-phi1484, ptr %i.bfn, align 2, !tbaa !108
  %i.bfo = add nuw nsw i32 %.05881250, 1          ; 2 uses
  %exitcond1404.not = icmp eq i32 %i.bfo, %i.att
  br i1 %exitcond1404.not, label %.loopexit1177, label %bb.eg, !llvm.loop !144

bb.fl:                                            ; preds = %bb.ee
  %i.bfp = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %i.ati ; 4 uses
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.bfp, i64 36
  store i32 0, ptr %i.bfq, align 4, !tbaa !94
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.bfp, i64 32
  store i32 0, ptr %i.bfr, align 4, !tbaa !94
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.bfp, i64 4
  store i32 0, ptr %i.bfs, align 4, !tbaa !94
  store i32 0, ptr %i.bfp, align 4, !tbaa !94
  br label %.loopexit1177

.loopexit1177:                                    ; preds = %bb.fk, %bb.ef, %bb.fl, %bb.ed
  %indvars.iv.next1406 = add nuw nsw i64 %indvars.iv1405, 1 ; 2 uses
  %exitcond1408.not = icmp eq i64 %indvars.iv.next1406, 4
  br i1 %exitcond1408.not, label %bb.fm, label %bb.ec, !llvm.loop !145

bb.fm:                                            ; preds = %.loopexit1177
  %indvars.iv.next1410 = add nuw nsw i64 %indvars.iv1409, 1 ; 2 uses
  %exitcond1413.not = icmp eq i64 %indvars.iv.next1410, %wide.trip.count1412
  br i1 %exitcond1413.not, label %._crit_edge1255, label %.preheader1178, !llvm.loop !146

.thread1054:                                      ; preds = %bb.cy, %bb.ea, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %write_back_non_zero_count.exit

._crit_edge1255:                                  ; preds = %bb.fm, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %.thread1108

bb.fn:                                            ; preds = %bb.cw
  %i.bft = and i32 %i.vm, 256
  %.not661 = icmp eq i32 %i.bft, 0
  br i1 %.not661, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  call void @ff_h264_pred_direct_motion(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.c) #9
  %i.bfu = load ptr, ptr %i.j, align 8, !tbaa !75
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bfu, i64 72
  %i.bfw = load i32, ptr %i.bfv, align 8, !tbaa !141
  %i.bfx = and i32 %i.bfw, %i.i
  br label %.thread1108

bb.fp:                                            ; preds = %bb.fn
  %i.bfy = and i32 %i.vm, 8
  %.not662 = icmp eq i32 %i.bfy, 0
  br i1 %.not662, label %bb.gq, label %.preheader1193

.preheader1193:                                   ; preds = %bb.fp
  %i.bfz = getelementptr inbounds nuw i8, ptr %1, i64 22648
  %i.bga = load i32, ptr %i.bfz, align 8, !tbaa !139 ; 3 uses
  %.not1295 = icmp eq i32 %i.bga, 0
  br i1 %.not1295, label %.thread1108, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader1193
  %i.bgb = getelementptr inbounds nuw i8, ptr %1, i64 22640
  %i.bgc = getelementptr inbounds nuw i8, ptr %1, i64 21068
  %wide.trip.count = zext i32 %i.bga to i64
  br label %bb.fq

.lr.ph1222:                                       ; preds = %bb.fw
  %i.bgd = getelementptr inbounds nuw i8, ptr %1, i64 29056
  %i.bge = getelementptr inbounds nuw i8, ptr %1, i64 28736
  %wide.trip.count1345 = zext i32 %i.bga to i64
  br label %bb.fx

bb.fq:                                            ; preds = %.lr.ph, %bb.fw
  %indvars.iv1339 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next1340, %bb.fw ] ; 4 uses
  %indvars.iv1339.tr = trunc nuw nsw i64 %indvars.iv1339 to i32
  %i.bgf = shl nuw nsw i32 %indvars.iv1339.tr, 1
  %i.bgg = shl i32 4096, %i.bgf
  %i.bgh = and i32 %i.vm, %i.bgg
  %.not671 = icmp eq i32 %i.bgh, 0
  br i1 %.not671, label %bb.fw, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.bgi = getelementptr inbounds nuw [4 x i8], ptr %i.bgb, i64 %indvars.iv1339
  %i.bgj = load i32, ptr %i.bgi, align 4, !tbaa !94
  %i.bgk = load i32, ptr %i.bgc, align 4, !tbaa !101
  %i.bgl = shl i32 %i.bgj, %i.bgk                 ; 2 uses
  switch i32 %i.bgl, label %bb.ft [
    i32 1, label %bb.fu
    i32 2, label %bb.fs
  ]

bb.fs:                                            ; preds = %bb.fr
  %i.bgm = load i32, ptr %i.st, align 16, !tbaa !95 ; 3 uses
  %i.bgn = load ptr, ptr %i.ss, align 8, !tbaa !99
  %i.bgo = lshr i32 %i.bgm, 3
  %i.bgp = zext nneg i32 %i.bgo to i64
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bgn, i64 %i.bgp
  %i.bgr = load i8, ptr %i.bgq, align 1, !tbaa !15
  %i.bgs = and i32 %i.bgm, 7
  %i.bgt = zext i8 %i.bgr to i32
  %i.bgu = shl nuw nsw i32 %i.bgt, %i.bgs
  %i.bgv = lshr i32 %i.bgu, 7
  %i.bgw = add i32 %i.bgm, 1
  store i32 %i.bgw, ptr %i.st, align 16, !tbaa !95
  %i.bgx = and i32 %i.bgv, 1
  %i.bgy = xor i32 %i.bgx, 1
  br label %bb.fu

bb.ft:                                            ; preds = %bb.fr
  %i.bgz = load i32, ptr %i.st, align 16, !tbaa !95 ; 3 uses
  %i.bha = load ptr, ptr %i.ss, align 8, !tbaa !99
  %i.bhb = lshr i32 %i.bgz, 3
  %i.bhc = zext nneg i32 %i.bhb to i64
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.bha, i64 %i.bhc
  %i.bhe = load i32, ptr %i.bhd, align 1, !tbaa !15
  %i.bhf = tail call i32 @llvm.bswap.i32(i32 %i.bhe)
  %i.bhg = and i32 %i.bgz, 7
  %i.bhh = shl i32 %i.bhf, %i.bhg
  %i.bhi = lshr i32 %i.bhh, 23
  %i.bhj = zext nneg i32 %i.bhi to i64            ; 2 uses
  %i.bhk = getelementptr inbounds nuw i8, ptr @ff_golomb_vlc_len, i64 %i.bhj
  %i.bhl = load i8, ptr %i.bhk, align 1, !tbaa !15
  %i.bhm = zext i8 %i.bhl to i32
  %i.bhn = add i32 %i.bgz, %i.bhm
  store i32 %i.bhn, ptr %i.st, align 16, !tbaa !95
  %i.bho = getelementptr inbounds nuw i8, ptr @ff_ue_golomb_vlc_code, i64 %i.bhj
  %i.bhp = load i8, ptr %i.bho, align 1, !tbaa !15
  %i.bhq = zext i8 %i.bhp to i32                  ; 3 uses
  %.not672 = icmp ugt i32 %i.bgl, %i.bhq
  br i1 %.not672, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.fr, %bb.fs, %bb.ft
  %.0571 = phi i32 [ %i.bhq, %bb.ft ], [ %i.bgy, %bb.fs ], [ 0, %bb.fr ]
  %i.bhr = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv1339 ; 4 uses
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhr, i64 29068
  %i.bht = mul nuw i32 %.0571, 16843009           ; 4 uses
  store i32 %i.bht, ptr %i.bhs, align 4, !tbaa !94
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bhr, i64 29076
  store i32 %i.bht, ptr %i.bhu, align 4, !tbaa !94
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bhr, i64 29084
  store i32 %i.bht, ptr %i.bhv, align 4, !tbaa !94
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bhr, i64 29092
  store i32 %i.bht, ptr %i.bhw, align 4, !tbaa !94
  br label %bb.fw

bb.fv:                                            ; preds = %bb.ft
  %i.bhx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bhy = load ptr, ptr %i.bhx, align 8, !tbaa !97
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bhy, i32 noundef 16, ptr noundef nonnull @.str.5, i32 noundef %i.bhq) #9
  br label %write_back_non_zero_count.exit

bb.fw:                                            ; preds = %bb.fq, %bb.fu
  %indvars.iv.next1340 = add nuw nsw i64 %indvars.iv1339, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next1340, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph1222, label %bb.fq, !llvm.loop !147

bb.fx:                                            ; preds = %.lr.ph1222, %bb.gp
  %indvars.iv1342 = phi i64 [ 0, %.lr.ph1222 ], [ %indvars.iv.next1343, %bb.gp ] ; 6 uses
  %indvars.iv1342.tr = trunc nuw nsw i64 %indvars.iv1342 to i32
  %i.bhz = shl nuw nsw i32 %indvars.iv1342.tr, 1
  %i.bia = shl i32 4096, %i.bhz
  %i.bib = and i32 %i.vm, %i.bia
  %.not670 = icmp eq i32 %i.bib, 0
  br i1 %.not670, label %bb.gp, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.bic = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv1342
  %i.bid = getelementptr inbounds nuw i8, ptr %i.bic, i64 29068
  %i.bie = load i8, ptr %i.bid, align 1, !tbaa !15 ; 3 uses
  %i.bif = getelementptr inbounds nuw [40 x i8], ptr %i.bgd, i64 %indvars.iv1342 ; 4 uses
  %i.big = getelementptr inbounds nuw i8, ptr %i.bif, i64 4
  %i.bih = load i8, ptr %i.big, align 1, !tbaa !15 ; 2 uses
  %i.bii = getelementptr inbounds nuw i8, ptr %i.bif, i64 11
  %i.bij = load i8, ptr %i.bii, align 1, !tbaa !15 ; 2 uses
  %i.bik = getelementptr inbounds nuw [160 x i8], ptr %i.bge, i64 %indvars.iv1342 ; 11 uses
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bik, i64 44 ; 3 uses
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bik, i64 16 ; 3 uses
  %i.bin = getelementptr inbounds nuw i8, ptr %i.bif, i64 8
  %i.bio = load i8, ptr %i.bin, align 1, !tbaa !15 ; 2 uses
  %i.bip = icmp eq i8 %i.bio, -2
  br i1 %i.bip, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bik, i64 32
  br label %fetch_diagonal_mv.exit819

bb.ga:                                            ; preds = %bb.fy
  %i.bir = getelementptr inbounds nuw i8, ptr %i.bik, i64 12
  %i.bis = getelementptr inbounds nuw i8, ptr %i.bif, i64 3
  %i.bit = load i8, ptr %i.bis, align 1, !tbaa !15
  br label %fetch_diagonal_mv.exit819

fetch_diagonal_mv.exit819:                        ; preds = %bb.fz, %bb.ga
  %.01032 = phi ptr [ %i.bir, %bb.ga ], [ %i.biq, %bb.fz ] ; 6 uses
  %.3.i809.in = phi i8 [ %i.bit, %bb.ga ], [ %i.bio, %bb.fz ] ; 2 uses
  %i.biu = icmp eq i8 %.3.i809.in, %i.bie
  %i.biv = zext i1 %i.biu to i32
  %i.biw = icmp eq i8 %i.bie, %i.bih              ; 2 uses
  %i.bix = zext i1 %i.biw to i32
  %i.biy = icmp eq i8 %i.bie, %i.bij              ; 2 uses
  %i.biz = zext i1 %i.biy to i32
  %i.bja = add nuw nsw i32 %i.biz, %i.bix
  %i.bjb = add nuw nsw i32 %i.bja, %i.biv         ; 2 uses
  %i.bjc = icmp samesign ugt i32 %i.bjb, 1
  br i1 %i.bjc, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %fetch_diagonal_mv.exit819
  %i.bjd = load i16, ptr %i.bil, align 2, !tbaa !108
  %i.bje = sext i16 %i.bjd to i32                 ; 2 uses
  %i.bjf = load i16, ptr %i.bim, align 2, !tbaa !108
  %i.bjg = sext i16 %i.bjf to i32                 ; 2 uses
  %i.bjh = load i16, ptr %.01032, align 2, !tbaa !108
  %i.bji = sext i16 %i.bjh to i32
  %..i858 = tail call i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.bje, i32 range(i32 -32768, 32768) %i.bjg)
  %.20.i859 = tail call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.bje, i32 range(i32 -32768, 32768) %i.bjg)
  %i.bjj = tail call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.bji, i32 %..i858)
  %i.bjk = tail call range(i32 -32768, 32768) i32 @llvm.smax.i32(i32 %i.bjj, i32 %.20.i859)
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bik, i64 46
  %i.bjm = load i16, ptr %i.bjl, align 2, !tbaa !108
  %i.bjn = sext i16 %i.bjm to i32                 ; 2 uses
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bik, i64 18
  %i.bjp = load i16, ptr %i.bjo, align 2, !tbaa !108
  %i.bjq = sext i16 %i.bjp to i32                 ; 2 uses
  %i.bjr = getelementptr inbounds nuw i8, ptr %.01032, i64 2
  %i.bjs = load i16, ptr %i.bjr, align 2, !tbaa !108
  %i.bjt = sext i16 %i.bjs to i32
  %..i860 = tail call i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.bjn, i32 range(i32 -32768, 32768) %i.bjq)
  %.20.i861 = tail call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.bjn, i32 range(i32 -32768, 32768) %i.bjq)
  %i.bju = tail call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.bjt, i32 %..i860)
  %i.bjv = tail call range(i32 -32768, 32768) i32 @llvm.smax.i32(i32 %i.bju, i32 %.20.i861)
  br label %pred_motion.exit

bb.gc:                                            ; preds = %fetch_diagonal_mv.exit819
  %i.bjw = icmp eq i32 %i.bjb, 1
  br i1 %i.bjw, label %bb.gd, label %bb.gi

bb.gd:                                            ; preds = %bb.gc
  br i1 %i.biy, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.bjx = load i16, ptr %i.bil, align 2, !tbaa !108
  %i.bjy = zext i16 %i.bjx to i32
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.bik, i64 46
  %i.bka = load i16, ptr %i.bjz, align 2, !tbaa !108
  %i.bkb = zext i16 %i.bka to i32
  br label %pred_motion.exit

bb.gf:                                            ; preds = %bb.gd
  br i1 %i.biw, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.bkc = load i16, ptr %i.bim, align 2, !tbaa !108
  %i.bkd = zext i16 %i.bkc to i32
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bik, i64 18
  %i.bkf = load i16, ptr %i.bke, align 2, !tbaa !108
  %i.bkg = zext i16 %i.bkf to i32
  br label %pred_motion.exit

bb.gh:                                            ; preds = %bb.gf
  %i.bkh = load i16, ptr %.01032, align 2, !tbaa !108
  %i.bki = zext i16 %i.bkh to i32
  %i.bkj = getelementptr inbounds nuw i8, ptr %.01032, i64 2
  %i.bkk = load i16, ptr %i.bkj, align 2, !tbaa !108
  %i.bkl = zext i16 %i.bkk to i32
  br label %pred_motion.exit

bb.gi:                                            ; preds = %bb.gc
  %i.bkm = icmp eq i8 %i.bih, -2
  %i.bkn = icmp eq i8 %.3.i809.in, -2
  %or.cond.i = and i1 %i.bkm, %i.bkn
  %i.bko = icmp ne i8 %i.bij, -2
  %or.cond3.i = select i1 %or.cond.i, i1 %i.bko, i1 false
  %i.bkp = load i16, ptr %i.bil, align 2, !tbaa !108 ; 2 uses
  br i1 %or.cond3.i, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.bkq = zext i16 %i.bkp to i32
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.bik, i64 46
  %i.bks = load i16, ptr %i.bkr, align 2, !tbaa !108
  %i.bkt = zext i16 %i.bks to i32
  br label %pred_motion.exit

bb.gk:                                            ; preds = %bb.gi
  %i.bku = sext i16 %i.bkp to i32                 ; 2 uses
  %i.bkv = load i16, ptr %i.bim, align 2, !tbaa !108
  %i.bkw = sext i16 %i.bkv to i32                 ; 2 uses
  %i.bkx = load i16, ptr %.01032, align 2, !tbaa !108
  %i.bky = sext i16 %i.bkx to i32
  %..i862 = tail call i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.bku, i32 range(i32 -32768, 32768) %i.bkw)
  %.20.i863 = tail call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.bku, i32 range(i32 -32768, 32768) %i.bkw)
  %i.bkz = tail call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.bky, i32 %..i862)
  %i.bla = tail call range(i32 -32768, 32768) i32 @llvm.smax.i32(i32 %i.bkz, i32 %.20.i863)
  %i.blb = getelementptr inbounds nuw i8, ptr %i.bik, i64 46
  %i.blc = load i16, ptr %i.blb, align 2, !tbaa !108
  %i.bld = sext i16 %i.blc to i32                 ; 2 uses
  %i.ble = getelementptr inbounds nuw i8, ptr %i.bik, i64 18
  %i.blf = load i16, ptr %i.ble, align 2, !tbaa !108
  %i.blg = sext i16 %i.blf to i32                 ; 2 uses
  %i.blh = getelementptr inbounds nuw i8, ptr %.01032, i64 2
  %i.bli = load i16, ptr %i.blh, align 2, !tbaa !108
  %i.blj = sext i16 %i.bli to i32
  %..i864 = tail call i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.bld, i32 range(i32 -32768, 32768) %i.blg)
  %.20.i865 = tail call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.bld, i32 range(i32 -32768, 32768) %i.blg)
  %i.blk = tail call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.blj, i32 %..i864)
  %i.bll = tail call range(i32 -32768, 32768) i32 @llvm.smax.i32(i32 %i.blk, i32 %.20.i865)
  br label %pred_motion.exit

pred_motion.exit:                                 ; preds = %bb.gb, %bb.ge, %bb.gg, %bb.gh, %bb.gj, %bb.gk
  %.61021 = phi i32 [ %i.bjk, %bb.gb ], [ %i.bjy, %bb.ge ], [ %i.bkd, %bb.gg ], [ %i.bki, %bb.gh ], [ %i.bkq, %bb.gj ], [ %i.bla, %bb.gk ]
  %.61006 = phi i32 [ %i.bjv, %bb.gb ], [ %i.bkb, %bb.ge ], [ %i.bkg, %bb.gg ], [ %i.bkl, %bb.gh ], [ %i.bkt, %bb.gj ], [ %i.bll, %bb.gk ]
  %i.blm = load i32, ptr %i.st, align 16, !tbaa !95 ; 4 uses
  %i.bln = load ptr, ptr %i.ss, align 8, !tbaa !99 ; 4 uses
  %i.blo = lshr i32 %i.blm, 3
  %i.blp = zext nneg i32 %i.blo to i64
  %i.blq = getelementptr inbounds nuw i8, ptr %i.bln, i64 %i.blp
  %i.blr = load i32, ptr %i.blq, align 1, !tbaa !15
  %i.bls = tail call i32 @llvm.bswap.i32(i32 %i.blr)
  %i.blt = and i32 %i.blm, 7
  %i.blu = shl i32 %i.bls, %i.blt                 ; 5 uses
  %i.blv = icmp ugt i32 %i.blu, 134217727
  br i1 %i.blv, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %pred_motion.exit
  %i.blw = lshr i32 %i.blu, 23
  %i.blx = zext nneg i32 %i.blw to i64            ; 2 uses
  %i.bly = getelementptr inbounds nuw i8, ptr @ff_golomb_vlc_len, i64 %i.blx
  %i.blz = load i8, ptr %i.bly, align 1, !tbaa !15
  %i.bma = zext i8 %i.blz to i32
  %i.bmb = add i32 %i.blm, %i.bma                 ; 2 uses
  store i32 %i.bmb, ptr %i.st, align 16, !tbaa !95
  %i.bmc = getelementptr inbounds nuw i8, ptr @ff_se_golomb_vlc_code, i64 %i.blx
  %i.bmd = load i8, ptr %i.bmc, align 1, !tbaa !15
  %i.bme = sext i8 %i.bmd to i32
  br label %get_se_golomb.exit875

bb.gm:                                            ; preds = %pred_motion.exit
  %.not.i.i866 = icmp samesign ult i32 %i.blu, 65536 ; 2 uses
  %i.bmf = lshr i32 %i.blu, 16
  %spec.select.i.i867 = select i1 %.not.i.i866, i32 %i.blu, i32 %i.bmf ; 3 uses
  %spec.select12.i.i868 = select i1 %.not.i.i866, i32 0, i32 16 ; 2 uses
  %.not11.i.i869 = icmp samesign ult i32 %spec.select.i.i867, 256 ; 2 uses
  %i.bmg = lshr i32 %spec.select.i.i867, 8
  %i.bmh = or disjoint i32 %spec.select12.i.i868, 8
  %.110.i.i870 = select i1 %.not11.i.i869, i32 %spec.select.i.i867, i32 %i.bmg
  %.1.i.i871 = select i1 %.not11.i.i869, i32 %spec.select12.i.i868, i32 %i.bmh
  %i.bmi = zext nneg i32 %.110.i.i870 to i64
  %i.bmj = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.bmi
  %i.bmk = load i8, ptr %i.bmj, align 1, !tbaa !15
  %i.bml = zext i8 %i.bmk to i32
  %i.bmm = add nuw nsw i32 %.1.i.i871, %i.bml     ; 3 uses
  %reass.sub.i872 = sub i32 %i.blm, %i.bmm        ; 2 uses
  %i.bmn = add i32 %reass.sub.i872, 31            ; 2 uses
  %i.bmo = lshr i32 %i.bmn, 3
  %i.bmp = zext nneg i32 %i.bmo to i64
  %i.bmq = getelementptr inbounds nuw i8, ptr %i.bln, i64 %i.bmp
  %i.bmr = load i32, ptr %i.bmq, align 1, !tbaa !15
  %i.bms = tail call i32 @llvm.bswap.i32(i32 %i.bmr)
  %i.bmt = and i32 %i.bmn, 7
  %i.bmu = shl i32 %i.bms, %i.bmt
  %i.bmv = lshr i32 %i.bmu, %i.bmm                ; 2 uses
end_hunk_3
begin_hunk_4_@ff_h264_decode_mb_cavlc:bb.a
  %i.dnt = getelementptr inbounds [64 x i8], ptr %i.dns, i64 %i.dmg
  %i.dnu = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.dnp, i32 noundef 2, ptr noundef nonnull %i.dmx, ptr noundef %i.dnt, i32 noundef 15)
  %i.dnv = icmp sgt i32 %i.dnu, -1
  br i1 %i.dnv, label %bb.li, label %write_back_non_zero_count.exit

bb.li:                                            ; preds = %bb.lh
  %i.dnw = shl i32 48, %i.o
  %i.dnx = sext i32 %i.dnw to i64
  %i.dny = getelementptr inbounds [2 x i8], ptr %i.dmw, i64 %i.dnx
  %i.dnz = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.doa = getelementptr inbounds nuw i8, ptr %i.dnz, i64 173808
  %i.dob = load ptr, ptr %i.doa, align 8, !tbaa !155
  %i.doc = getelementptr inbounds [64 x i8], ptr %i.dob, i64 %i.dmg
  %i.dod = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.dny, i32 noundef 3, ptr noundef nonnull %i.dmx, ptr noundef %i.doc, i32 noundef 15)
  %i.doe = icmp sgt i32 %i.dod, -1
  br i1 %i.doe, label %.preheader1174.1, label %write_back_non_zero_count.exit

.preheader1174.1:                                 ; preds = %bb.li
  %i.dof = shl i32 64, %i.o
  %i.dog = sext i32 %i.dof to i64
  %i.doh = getelementptr inbounds [2 x i8], ptr %i.dmw, i64 %i.dog
  %i.doi = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.doj = getelementptr inbounds nuw i8, ptr %i.doi, i64 173808
  %i.dok = load ptr, ptr %i.doj, align 8, !tbaa !155
  %i.dol = getelementptr inbounds [64 x i8], ptr %i.dok, i64 %i.dmg
  %i.dom = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.doh, i32 noundef 4, ptr noundef nonnull %i.dmx, ptr noundef %i.dol, i32 noundef 15)
  %i.don = icmp sgt i32 %i.dom, -1
  br i1 %i.don, label %bb.lj, label %write_back_non_zero_count.exit

bb.lj:                                            ; preds = %.preheader1174.1
  %i.doo = shl i32 80, %i.o
  %i.dop = sext i32 %i.doo to i64
  %i.doq = getelementptr inbounds [2 x i8], ptr %i.dmw, i64 %i.dop
  %i.dor = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.dos = getelementptr inbounds nuw i8, ptr %i.dor, i64 173808
  %i.dot = load ptr, ptr %i.dos, align 8, !tbaa !155
  %i.dou = getelementptr inbounds [64 x i8], ptr %i.dot, i64 %i.dmg
  %i.dov = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.doq, i32 noundef 5, ptr noundef nonnull %i.dmx, ptr noundef %i.dou, i32 noundef 15)
  %i.dow = icmp sgt i32 %i.dov, -1
  br i1 %i.dow, label %bb.lk, label %write_back_non_zero_count.exit

bb.lk:                                            ; preds = %bb.lj
  %i.dox = shl i32 96, %i.o
  %i.doy = sext i32 %i.dox to i64
  %i.doz = getelementptr inbounds [2 x i8], ptr %i.dmw, i64 %i.doy
  %i.dpa = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.dpb = getelementptr inbounds nuw i8, ptr %i.dpa, i64 173808
  %i.dpc = load ptr, ptr %i.dpb, align 8, !tbaa !155
  %i.dpd = getelementptr inbounds [64 x i8], ptr %i.dpc, i64 %i.dmg
  %i.dpe = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.doz, i32 noundef 6, ptr noundef nonnull %i.dmx, ptr noundef %i.dpd, i32 noundef 15)
  %i.dpf = icmp sgt i32 %i.dpe, -1
  br i1 %i.dpf, label %bb.ll, label %write_back_non_zero_count.exit

bb.ll:                                            ; preds = %bb.lk
  %i.dpg = shl i32 112, %i.o
  %i.dph = sext i32 %i.dpg to i64
  %i.dpi = getelementptr inbounds [2 x i8], ptr %i.dmw, i64 %i.dph
  %i.dpj = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.dpk = getelementptr inbounds nuw i8, ptr %i.dpj, i64 173808
  %i.dpl = load ptr, ptr %i.dpk, align 8, !tbaa !155
  %i.dpm = getelementptr inbounds [64 x i8], ptr %i.dpl, i64 %i.dmg
  %i.dpn = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.dpi, i32 noundef 7, ptr noundef nonnull %i.dmx, ptr noundef %i.dpm, i32 noundef 15)
  %i.dpo = icmp sgt i32 %i.dpn, -1
  br i1 %i.dpo, label %.preheader1174.2, label %write_back_non_zero_count.exit

.preheader1174.2:                                 ; preds = %bb.ll
  %i.dpp = shl i32 128, %i.o
  %i.dpq = sext i32 %i.dpp to i64
  %i.dpr = getelementptr inbounds [2 x i8], ptr %i.dmw, i64 %i.dpq
  %i.dps = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.dpt = getelementptr inbounds nuw i8, ptr %i.dps, i64 173808
  %i.dpu = load ptr, ptr %i.dpt, align 8, !tbaa !155
  %i.dpv = getelementptr inbounds [64 x i8], ptr %i.dpu, i64 %i.dmg
  %i.dpw = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.dpr, i32 noundef 8, ptr noundef nonnull %i.dmx, ptr noundef %i.dpv, i32 noundef 15)
  %i.dpx = icmp sgt i32 %i.dpw, -1
  br i1 %i.dpx, label %bb.lm, label %write_back_non_zero_count.exit

bb.lm:                                            ; preds = %.preheader1174.2
  %i.dpy = shl i32 144, %i.o
  %i.dpz = sext i32 %i.dpy to i64
  %i.dqa = getelementptr inbounds [2 x i8], ptr %i.dmw, i64 %i.dpz
  %i.dqb = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.dqc = getelementptr inbounds nuw i8, ptr %i.dqb, i64 173808
  %i.dqd = load ptr, ptr %i.dqc, align 8, !tbaa !155
  %i.dqe = getelementptr inbounds [64 x i8], ptr %i.dqd, i64 %i.dmg
  %i.dqf = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.dqa, i32 noundef 9, ptr noundef nonnull %i.dmx, ptr noundef %i.dqe, i32 noundef 15)
  %i.dqg = icmp sgt i32 %i.dqf, -1
  br i1 %i.dqg, label %bb.ln, label %write_back_non_zero_count.exit

bb.ln:                                            ; preds = %bb.lm
  %i.dqh = shl i32 160, %i.o
  %i.dqi = sext i32 %i.dqh to i64
  %i.dqj = getelementptr inbounds [2 x i8], ptr %i.dmw, i64 %i.dqi
  %i.dqk = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.dql = getelementptr inbounds nuw i8, ptr %i.dqk, i64 173808
  %i.dqm = load ptr, ptr %i.dql, align 8, !tbaa !155
  %i.dqn = getelementptr inbounds [64 x i8], ptr %i.dqm, i64 %i.dmg
  %i.dqo = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.dqj, i32 noundef 10, ptr noundef nonnull %i.dmx, ptr noundef %i.dqn, i32 noundef 15)
  %i.dqp = icmp sgt i32 %i.dqo, -1
  br i1 %i.dqp, label %bb.lo, label %write_back_non_zero_count.exit

bb.lo:                                            ; preds = %bb.ln
  %i.dqq = shl i32 176, %i.o
  %i.dqr = sext i32 %i.dqq to i64
  %i.dqs = getelementptr inbounds [2 x i8], ptr %i.dmw, i64 %i.dqr
  %i.dqt = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.dqu = getelementptr inbounds nuw i8, ptr %i.dqt, i64 173808
  %i.dqv = load ptr, ptr %i.dqu, align 8, !tbaa !155
  %i.dqw = getelementptr inbounds [64 x i8], ptr %i.dqv, i64 %i.dmg
  %i.dqx = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.dqs, i32 noundef 11, ptr noundef nonnull %i.dmx, ptr noundef %i.dqw, i32 noundef 15)
  %i.dqy = icmp sgt i32 %i.dqx, -1
  br i1 %i.dqy, label %.preheader1174.3, label %write_back_non_zero_count.exit

.preheader1174.3:                                 ; preds = %bb.lo
  %i.dqz = shl i32 192, %i.o
  %i.dra = sext i32 %i.dqz to i64
  %i.drb = getelementptr inbounds [2 x i8], ptr %i.dmw, i64 %i.dra
  %i.drc = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.drd = getelementptr inbounds nuw i8, ptr %i.drc, i64 173808
  %i.dre = load ptr, ptr %i.drd, align 8, !tbaa !155
  %i.drf = getelementptr inbounds [64 x i8], ptr %i.dre, i64 %i.dmg
  %i.drg = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.drb, i32 noundef 12, ptr noundef nonnull %i.dmx, ptr noundef %i.drf, i32 noundef 15)
  %i.drh = icmp sgt i32 %i.drg, -1
  br i1 %i.drh, label %bb.lp, label %write_back_non_zero_count.exit

bb.lp:                                            ; preds = %.preheader1174.3
  %i.dri = shl i32 208, %i.o
  %i.drj = sext i32 %i.dri to i64
  %i.drk = getelementptr inbounds [2 x i8], ptr %i.dmw, i64 %i.drj
  %i.drl = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.drm = getelementptr inbounds nuw i8, ptr %i.drl, i64 173808
  %i.drn = load ptr, ptr %i.drm, align 8, !tbaa !155
  %i.dro = getelementptr inbounds [64 x i8], ptr %i.drn, i64 %i.dmg
  %i.drp = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.drk, i32 noundef 13, ptr noundef nonnull %i.dmx, ptr noundef %i.dro, i32 noundef 15)
  %i.drq = icmp sgt i32 %i.drp, -1
  br i1 %i.drq, label %bb.lq, label %write_back_non_zero_count.exit

bb.lq:                                            ; preds = %bb.lp
  %i.drr = shl i32 224, %i.o
  %i.drs = sext i32 %i.drr to i64
  %i.drt = getelementptr inbounds [2 x i8], ptr %i.dmw, i64 %i.drs
  %i.dru = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.drv = getelementptr inbounds nuw i8, ptr %i.dru, i64 173808
  %i.drw = load ptr, ptr %i.drv, align 8, !tbaa !155
  %i.drx = getelementptr inbounds [64 x i8], ptr %i.drw, i64 %i.dmg
  %i.dry = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.drt, i32 noundef 14, ptr noundef nonnull %i.dmx, ptr noundef %i.drx, i32 noundef 15)
  %i.drz = icmp sgt i32 %i.dry, -1
  br i1 %i.drz, label %bb.lr, label %write_back_non_zero_count.exit

bb.lr:                                            ; preds = %bb.lq
  %i.dsa = shl i32 240, %i.o
  %i.dsb = sext i32 %i.dsa to i64
  %i.dsc = getelementptr inbounds [2 x i8], ptr %i.dmw, i64 %i.dsb
  %i.dsd = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.dse = getelementptr inbounds nuw i8, ptr %i.dsd, i64 173808
  %i.dsf = load ptr, ptr %i.dse, align 8, !tbaa !155
  %i.dsg = getelementptr inbounds [64 x i8], ptr %i.dsf, i64 %i.dmg
  %i.dsh = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.dsc, i32 noundef 15, ptr noundef nonnull %i.dmx, ptr noundef %i.dsg, i32 noundef 15)
  %i.dsi = icmp sgt i32 %i.dsh, -1
  br i1 %i.dsi, label %decode_luma_residual.exit756.thread1115, label %write_back_non_zero_count.exit

bb.ls:                                            ; preds = %bb.lf
  %i.dsj = getelementptr inbounds nuw i8, ptr %1, i64 28628
  store i32 0, ptr %i.dsj, align 4, !tbaa !94
  %i.dsk = getelementptr inbounds nuw i8, ptr %1, i64 28636
  store i32 0, ptr %i.dsk, align 4, !tbaa !94
  %i.dsl = getelementptr inbounds nuw i8, ptr %1, i64 28644
  store i32 0, ptr %i.dsl, align 4, !tbaa !94
  %i.dsm = getelementptr inbounds nuw i8, ptr %1, i64 28652
  store i32 0, ptr %i.dsm, align 4, !tbaa !94
  br label %decode_luma_residual.exit756.thread1115

bb.lt:                                            ; preds = %bb.ld
  %i.dsn = and i32 %i.dmq, 5
  %.not135.i746 = icmp eq i32 %i.dsn, 0
  %i.dso = select i1 %.not135.i746, i64 3, i64 0  ; 8 uses
  %i.dsp = and i32 %i.dmq, 16777216
  %.not137.i750 = icmp eq i32 %i.dsp, 0
  %i.dsq = getelementptr inbounds nuw i8, ptr %1, i64 29344 ; 5 uses
  %i.dsr = getelementptr inbounds nuw i8, ptr %1, i64 28616 ; 6 uses
  %i.dss = getelementptr inbounds nuw i8, ptr %.0557, i64 16
  %i.dst = getelementptr inbounds nuw i8, ptr %.0557, i64 32
  %i.dsu = getelementptr inbounds nuw i8, ptr %.0557, i64 48
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %.loopexit1171
  %indvars.iv1424 = phi i64 [ 0, %bb.lt ], [ %indvars.iv.next1425, %.loopexit1171 ] ; 7 uses
  %.0120.i7481262 = phi i32 [ 0, %bb.lt ], [ %.4124.i753, %.loopexit1171 ] ; 3 uses
  %i.dsv = trunc nuw nsw i64 %indvars.iv1424 to i32 ; 3 uses
  %i.dsw = shl nuw nsw i32 1, %i.dsv
  %i.dsx = and i32 %i.dsw, %.1617
  %.not136.i749 = icmp eq i32 %i.dsx, 0
  br i1 %.not136.i749, label %bb.md, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.dsy = load ptr, ptr %i.f, align 8, !tbaa !22 ; 2 uses
  br i1 %.not137.i750, label %.preheader1170, label %bb.lw

.preheader1170:                                   ; preds = %bb.lv
  %i.dsz = shl nuw nsw i64 %indvars.iv1424, 2     ; 5 uses
  %indvars.iv1424.tr1592 = trunc nuw nsw i64 %indvars.iv1424 to i32
  %i.dta = shl nuw nsw i32 %indvars.iv1424.tr1592, 6
  %i.dtb = shl i32 %i.dta, %i.o
  %i.dtc = sext i32 %i.dtb to i64
  %i.dtd = getelementptr inbounds [2 x i8], ptr %i.dsq, i64 %i.dtc
  %i.dte = getelementptr inbounds nuw i8, ptr %i.dsy, i64 173808
  %i.dtf = getelementptr inbounds nuw [8 x i8], ptr %i.dte, i64 %i.dso
  %i.dtg = load ptr, ptr %i.dtf, align 8, !tbaa !155
  %i.dth = getelementptr inbounds [64 x i8], ptr %i.dtg, i64 %i.dmg
  %i.dti = trunc nuw nsw i64 %i.dsz to i32
  %i.dtj = call fastcc i32 @decode_residual(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.dtd, i32 noundef %i.dti, ptr noundef nonnull %.0558, ptr noundef %i.dth, i32 noundef 16)
  %i.dtk = icmp sgt i32 %i.dtj, -1
  br i1 %i.dtk, label %bb.ma, label %write_back_non_zero_count.exit

bb.lw:                                            ; preds = %bb.lv
  %indvars.iv1424.tr = trunc nuw nsw i64 %indvars.iv1424 to i32
  %i.dtl = shl nuw nsw i32 %indvars.iv1424.tr, 6
  %i.dtm = shl i32 %i.dtl, %i.o
  %i.dtn = sext i32 %i.dtm to i64
  %i.dto = getelementptr inbounds [2 x i8], ptr %i.dsq, i64 %i.dtn ; 4 uses
  %i.dtp = shl nuw nsw i64 %indvars.iv1424, 2     ; 5 uses
  %i.dtq = getelementptr inbounds nuw i8, ptr %i.dsy, i64 173856
  %i.dtr = getelementptr inbounds nuw [8 x i8], ptr %i.dtq, i64 %i.dso
  %i.dts = load ptr, ptr %i.dtr, align 8, !tbaa !155
  %i.dtt = getelementptr inbounds [256 x i8], ptr %i.dts, i64 %i.dmg
  %i.dtu = trunc nuw nsw i64 %i.dtp to i32
  %i.dtv = call fastcc i32 @decode_residual(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.dto, i32 noundef %i.dtu, ptr noundef nonnull %.0557, ptr noundef %i.dtt, i32 noundef 16)
  %i.dtw = icmp sgt i32 %i.dtv, -1
  br i1 %i.dtw, label %bb.lx, label %write_back_non_zero_count.exit

bb.lx:                                            ; preds = %bb.lw
  %i.dtx = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.dty = getelementptr inbounds nuw i8, ptr %i.dtx, i64 173856
  %i.dtz = getelementptr inbounds nuw [8 x i8], ptr %i.dty, i64 %i.dso
  %i.dua = load ptr, ptr %i.dtz, align 8, !tbaa !155
  %i.dub = getelementptr inbounds [256 x i8], ptr %i.dua, i64 %i.dmg
  %i.duc = trunc i64 %i.dtp to i32
  %i.dud = or disjoint i32 %i.duc, 1
  %i.due = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.dto, i32 noundef %i.dud, ptr noundef nonnull %i.dss, ptr noundef %i.dub, i32 noundef 16)
  %i.duf = icmp sgt i32 %i.due, -1
  br i1 %i.duf, label %bb.ly, label %write_back_non_zero_count.exit

bb.ly:                                            ; preds = %bb.lx
  %i.dug = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.duh = getelementptr inbounds nuw i8, ptr %i.dug, i64 173856
  %i.dui = getelementptr inbounds nuw [8 x i8], ptr %i.duh, i64 %i.dso
  %i.duj = load ptr, ptr %i.dui, align 8, !tbaa !155
  %i.duk = getelementptr inbounds [256 x i8], ptr %i.duj, i64 %i.dmg
  %i.dul = trunc i64 %i.dtp to i32
  %i.dum = or disjoint i32 %i.dul, 2
  %i.dun = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.dto, i32 noundef %i.dum, ptr noundef nonnull %i.dst, ptr noundef %i.duk, i32 noundef 16)
  %i.duo = icmp sgt i32 %i.dun, -1
  br i1 %i.duo, label %bb.lz, label %write_back_non_zero_count.exit

bb.lz:                                            ; preds = %bb.ly
  %i.dup = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.duq = getelementptr inbounds nuw i8, ptr %i.dup, i64 173856
  %i.dur = getelementptr inbounds nuw [8 x i8], ptr %i.duq, i64 %i.dso
  %i.dus = load ptr, ptr %i.dur, align 8, !tbaa !155
  %i.dut = getelementptr inbounds [256 x i8], ptr %i.dus, i64 %i.dmg
  %i.duu = trunc i64 %i.dtp to i32
  %i.duv = or disjoint i32 %i.duu, 3
  %i.duw = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.dto, i32 noundef %i.duv, ptr noundef nonnull %i.dsu, ptr noundef %i.dut, i32 noundef 16)
  %i.dux = icmp sgt i32 %i.duw, -1
  br i1 %i.dux, label %.thread1111, label %write_back_non_zero_count.exit

.thread1111:                                      ; preds = %bb.lz
  %i.duy = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.dtp
  %i.duz = load i8, ptr %i.duy, align 4, !tbaa !15
  %i.dva = zext i8 %i.duz to i64
  %i.dvb = getelementptr inbounds nuw i8, ptr %i.dsr, i64 %i.dva ; 5 uses
  %i.dvc = getelementptr inbounds nuw i8, ptr %i.dvb, i64 1
  %i.dvd = load i8, ptr %i.dvc, align 1, !tbaa !15
  %i.dve = getelementptr inbounds nuw i8, ptr %i.dvb, i64 8
  %i.dvf = load i8, ptr %i.dve, align 1, !tbaa !15
  %i.dvg = add i8 %i.dvf, %i.dvd
  %i.dvh = getelementptr inbounds nuw i8, ptr %i.dvb, i64 9
  %i.dvi = load i8, ptr %i.dvh, align 1, !tbaa !15
  %i.dvj = add i8 %i.dvg, %i.dvi
  %i.dvk = load i8, ptr %i.dvb, align 1, !tbaa !15
  %i.dvl = add i8 %i.dvj, %i.dvk                  ; 2 uses
  store i8 %i.dvl, ptr %i.dvb, align 1, !tbaa !15
  %i.dvm = icmp ne i8 %i.dvl, 0
  %i.dvn = zext i1 %i.dvm to i32
  %i.dvo = shl nuw nsw i32 %i.dvn, %i.dsv
  %i.dvp = or i32 %i.dvo, %.0120.i7481262
  br label %.loopexit1171

bb.ma:                                            ; preds = %.preheader1170
  %i.dvq = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.dsz
  %i.dvr = load i8, ptr %i.dvq, align 4, !tbaa !15
  %i.dvs = zext i8 %i.dvr to i64
  %i.dvt = getelementptr inbounds nuw i8, ptr %i.dsr, i64 %i.dvs
  %i.dvu = load i8, ptr %i.dvt, align 1, !tbaa !15
  %i.dvv = or disjoint i64 %i.dsz, 1              ; 3 uses
  %.tr1593 = trunc nuw nsw i64 %i.dvv to i32
  %i.dvw = shl nuw nsw i32 %.tr1593, 4
  %i.dvx = shl i32 %i.dvw, %i.o
  %i.dvy = sext i32 %i.dvx to i64
  %i.dvz = getelementptr inbounds [2 x i8], ptr %i.dsq, i64 %i.dvy
  %i.dwa = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.dwb = getelementptr inbounds nuw i8, ptr %i.dwa, i64 173808
  %i.dwc = getelementptr inbounds nuw [8 x i8], ptr %i.dwb, i64 %i.dso
  %i.dwd = load ptr, ptr %i.dwc, align 8, !tbaa !155
  %i.dwe = getelementptr inbounds [64 x i8], ptr %i.dwd, i64 %i.dmg
  %i.dwf = trunc nuw nsw i64 %i.dvv to i32
  %i.dwg = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.dvz, i32 noundef %i.dwf, ptr noundef nonnull %.0558, ptr noundef %i.dwe, i32 noundef 16)
  %i.dwh = icmp sgt i32 %i.dwg, -1
  br i1 %i.dwh, label %bb.mb, label %write_back_non_zero_count.exit

bb.mb:                                            ; preds = %bb.ma
  %i.dwi = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.dvv
  %i.dwj = load i8, ptr %i.dwi, align 1, !tbaa !15
  %i.dwk = zext i8 %i.dwj to i64
  %i.dwl = getelementptr inbounds nuw i8, ptr %i.dsr, i64 %i.dwk
  %i.dwm = load i8, ptr %i.dwl, align 1, !tbaa !15
  %i.dwn = or disjoint i64 %i.dsz, 2              ; 3 uses
  %.tr1594 = trunc nuw nsw i64 %i.dwn to i32
  %i.dwo = shl nuw nsw i32 %.tr1594, 4
  %i.dwp = shl i32 %i.dwo, %i.o
  %i.dwq = sext i32 %i.dwp to i64
  %i.dwr = getelementptr inbounds [2 x i8], ptr %i.dsq, i64 %i.dwq
  %i.dws = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.dwt = getelementptr inbounds nuw i8, ptr %i.dws, i64 173808
  %i.dwu = getelementptr inbounds nuw [8 x i8], ptr %i.dwt, i64 %i.dso
  %i.dwv = load ptr, ptr %i.dwu, align 8, !tbaa !155
  %i.dww = getelementptr inbounds [64 x i8], ptr %i.dwv, i64 %i.dmg
  %i.dwx = trunc nuw nsw i64 %i.dwn to i32
  %i.dwy = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.dwr, i32 noundef %i.dwx, ptr noundef nonnull %.0558, ptr noundef %i.dww, i32 noundef 16)
  %i.dwz = icmp sgt i32 %i.dwy, -1
  br i1 %i.dwz, label %bb.mc, label %write_back_non_zero_count.exit

bb.mc:                                            ; preds = %bb.mb
  %i.dxa = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.dwn
  %i.dxb = load i8, ptr %i.dxa, align 2, !tbaa !15
  %i.dxc = zext i8 %i.dxb to i64
  %i.dxd = getelementptr inbounds nuw i8, ptr %i.dsr, i64 %i.dxc
  %i.dxe = load i8, ptr %i.dxd, align 1, !tbaa !15
  %i.dxf = or disjoint i64 %i.dsz, 3              ; 3 uses
  %.tr1595 = trunc nuw nsw i64 %i.dxf to i32
  %i.dxg = shl nuw nsw i32 %.tr1595, 4
  %i.dxh = shl i32 %i.dxg, %i.o
  %i.dxi = sext i32 %i.dxh to i64
  %i.dxj = getelementptr inbounds [2 x i8], ptr %i.dsq, i64 %i.dxi
  %i.dxk = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.dxl = getelementptr inbounds nuw i8, ptr %i.dxk, i64 173808
  %i.dxm = getelementptr inbounds nuw [8 x i8], ptr %i.dxl, i64 %i.dso
  %i.dxn = load ptr, ptr %i.dxm, align 8, !tbaa !155
  %i.dxo = getelementptr inbounds [64 x i8], ptr %i.dxn, i64 %i.dmg
  %i.dxp = trunc nuw nsw i64 %i.dxf to i32
  %i.dxq = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.dxj, i32 noundef %i.dxp, ptr noundef nonnull %.0558, ptr noundef %i.dxo, i32 noundef 16)
  %i.dxr = icmp sgt i32 %i.dxq, -1
  br i1 %i.dxr, label %.loopexit1171.loopexit, label %write_back_non_zero_count.exit

.loopexit1171.loopexit:                           ; preds = %bb.mc
  %i.dxs = or i8 %i.dvu, %i.dwm
  %i.dxt = or i8 %i.dxs, %i.dxe
  %i.dxu = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.dxf
  %i.dxv = load i8, ptr %i.dxu, align 1, !tbaa !15
  %i.dxw = zext i8 %i.dxv to i64
  %i.dxx = getelementptr inbounds nuw i8, ptr %i.dsr, i64 %i.dxw
  %i.dxy = load i8, ptr %i.dxx, align 1, !tbaa !15
  %i.dxz = or i8 %i.dxt, %i.dxy
  %i.dya = zext i8 %i.dxz to i32
  %i.dyb = shl i32 %i.dya, %i.dsv
  %i.dyc = or i32 %i.dyb, %.0120.i7481262
  br label %.loopexit1171

bb.md:                                            ; preds = %bb.lu
  %i.dyd = shl nuw nsw i64 %indvars.iv1424, 2
  %i.dye = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.dyd
  %i.dyf = load i8, ptr %i.dye, align 4, !tbaa !15
  %i.dyg = zext i8 %i.dyf to i64
  %i.dyh = getelementptr inbounds nuw i8, ptr %i.dsr, i64 %i.dyg ; 4 uses
  %i.dyi = getelementptr inbounds nuw i8, ptr %i.dyh, i64 9
  store i8 0, ptr %i.dyi, align 1, !tbaa !15
  %i.dyj = getelementptr inbounds nuw i8, ptr %i.dyh, i64 8
  store i8 0, ptr %i.dyj, align 1, !tbaa !15
  %i.dyk = getelementptr inbounds nuw i8, ptr %i.dyh, i64 1
  store i8 0, ptr %i.dyk, align 1, !tbaa !15
  store i8 0, ptr %i.dyh, align 1, !tbaa !15
  br label %.loopexit1171

.loopexit1171:                                    ; preds = %.loopexit1171.loopexit, %.thread1111, %bb.md
  %.4124.i753 = phi i32 [ %i.dvp, %.thread1111 ], [ %.0120.i7481262, %bb.md ], [ %i.dyc, %.loopexit1171.loopexit ] ; 3 uses
  %indvars.iv.next1425 = add nuw nsw i64 %indvars.iv1424, 1 ; 2 uses
  %exitcond1427.not = icmp eq i64 %indvars.iv.next1425, 4
  br i1 %exitcond1427.not, label %decode_luma_residual.exit756, label %bb.lu, !llvm.loop !156

decode_luma_residual.exit756:                     ; preds = %.loopexit1171
  %i.dyl = icmp slt i32 %.4124.i753, 0
  br i1 %i.dyl, label %write_back_non_zero_count.exit, label %decode_luma_residual.exit756.thread1115

decode_luma_residual.exit756.thread1115:          ; preds = %bb.lr, %bb.ls, %decode_luma_residual.exit756
  %.11.i7441117 = phi i32 [ %.4124.i753, %decode_luma_residual.exit756 ], [ 0, %bb.ls ], [ 15, %bb.lr ]
  %i.dym = load ptr, ptr %i.djv, align 8, !tbaa !153
  %i.dyn = getelementptr inbounds [2 x i8], ptr %i.dym, i64 %i.vs ; 2 uses
  %i.dyo = load i16, ptr %i.dyn, align 2, !tbaa !108
  %.tr = trunc i32 %.11.i7441117 to i16
  %i.dyp = shl i16 %.tr, 12
  %i.dyq = or i16 %i.dyp, %i.dyo
  store i16 %i.dyq, ptr %i.dyn, align 2, !tbaa !108
  %i.dyr = load ptr, ptr %i.j, align 8, !tbaa !75
  %i.dys = getelementptr inbounds nuw i8, ptr %i.dyr, i64 12
  %i.dyt = load i32, ptr %i.dys, align 4, !tbaa !76 ; 6 uses
  %i.dyu = icmp eq i32 %i.dyt, 3
  br i1 %i.dyu, label %bb.me, label %bb.oe

bb.me:                                            ; preds = %decode_luma_residual.exit756.thread1115
  %i.dyv = load i32, ptr %i.c, align 4, !tbaa !94 ; 3 uses
  %i.dyw = load i32, ptr %i.dmk, align 4, !tbaa !94 ; 2 uses
  %i.dyx = and i32 %i.dyv, 2
  %.not.i724 = icmp eq i32 %i.dyx, 0
  br i1 %.not.i724, label %bb.mu, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.dyy = getelementptr inbounds nuw i8, ptr %1, i64 32480 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.dyy, i8 0, i64 64, i1 false)
  %i.dyz = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.dyy, i32 noundef 49, ptr noundef nonnull %.0558, ptr noundef null, i32 noundef 16)
  %i.dza = icmp slt i32 %i.dyz, 0
  br i1 %i.dza, label %write_back_non_zero_count.exit, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  br i1 %.not694, label %.preheader1160, label %bb.mt

.preheader1160:                                   ; preds = %bb.mg
  %i.dzb = getelementptr inbounds nuw i8, ptr %1, i64 29344 ; 16 uses
  %i.dzc = getelementptr inbounds nuw i8, ptr %.0558, i64 1 ; 16 uses
  %i.dzd = sext i32 %i.dyw to i64                 ; 16 uses
  %i.dze = shl i32 256, %i.o
  %i.dzf = sext i32 %i.dze to i64
  %i.dzg = getelementptr inbounds [2 x i8], ptr %i.dzb, i64 %i.dzf
  %i.dzh = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.dzi = getelementptr inbounds nuw i8, ptr %i.dzh, i64 173816
  %i.dzj = load ptr, ptr %i.dzi, align 8, !tbaa !155
  %i.dzk = getelementptr inbounds [64 x i8], ptr %i.dzj, i64 %i.dzd
  %i.dzl = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.dzg, i32 noundef 16, ptr noundef nonnull %i.dzc, ptr noundef %i.dzk, i32 noundef 15)
  %i.dzm = icmp sgt i32 %i.dzl, -1
  br i1 %i.dzm, label %bb.mh, label %write_back_non_zero_count.exit

bb.mh:                                            ; preds = %.preheader1160
  %i.dzn = shl i32 272, %i.o
  %i.dzo = sext i32 %i.dzn to i64
  %i.dzp = getelementptr inbounds [2 x i8], ptr %i.dzb, i64 %i.dzo
  %i.dzq = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.dzr = getelementptr inbounds nuw i8, ptr %i.dzq, i64 173816
  %i.dzs = load ptr, ptr %i.dzr, align 8, !tbaa !155
  %i.dzt = getelementptr inbounds [64 x i8], ptr %i.dzs, i64 %i.dzd
  %i.dzu = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.dzp, i32 noundef 17, ptr noundef nonnull %i.dzc, ptr noundef %i.dzt, i32 noundef 15)
  %i.dzv = icmp sgt i32 %i.dzu, -1
  br i1 %i.dzv, label %bb.mi, label %write_back_non_zero_count.exit

bb.mi:                                            ; preds = %bb.mh
  %i.dzw = shl i32 288, %i.o
  %i.dzx = sext i32 %i.dzw to i64
  %i.dzy = getelementptr inbounds [2 x i8], ptr %i.dzb, i64 %i.dzx
  %i.dzz = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.eaa = getelementptr inbounds nuw i8, ptr %i.dzz, i64 173816
  %i.eab = load ptr, ptr %i.eaa, align 8, !tbaa !155
  %i.eac = getelementptr inbounds [64 x i8], ptr %i.eab, i64 %i.dzd
  %i.ead = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.dzy, i32 noundef 18, ptr noundef nonnull %i.dzc, ptr noundef %i.eac, i32 noundef 15)
  %i.eae = icmp sgt i32 %i.ead, -1
  br i1 %i.eae, label %bb.mj, label %write_back_non_zero_count.exit

bb.mj:                                            ; preds = %bb.mi
  %i.eaf = shl i32 304, %i.o
  %i.eag = sext i32 %i.eaf to i64
  %i.eah = getelementptr inbounds [2 x i8], ptr %i.dzb, i64 %i.eag
  %i.eai = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.eaj = getelementptr inbounds nuw i8, ptr %i.eai, i64 173816
  %i.eak = load ptr, ptr %i.eaj, align 8, !tbaa !155
  %i.eal = getelementptr inbounds [64 x i8], ptr %i.eak, i64 %i.dzd
  %i.eam = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.eah, i32 noundef 19, ptr noundef nonnull %i.dzc, ptr noundef %i.eal, i32 noundef 15)
  %i.ean = icmp sgt i32 %i.eam, -1
  br i1 %i.ean, label %.preheader1158.1, label %write_back_non_zero_count.exit

.preheader1158.1:                                 ; preds = %bb.mj
  %i.eao = shl i32 320, %i.o
  %i.eap = sext i32 %i.eao to i64
  %i.eaq = getelementptr inbounds [2 x i8], ptr %i.dzb, i64 %i.eap
  %i.ear = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.eas = getelementptr inbounds nuw i8, ptr %i.ear, i64 173816
  %i.eat = load ptr, ptr %i.eas, align 8, !tbaa !155
  %i.eau = getelementptr inbounds [64 x i8], ptr %i.eat, i64 %i.dzd
  %i.eav = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.eaq, i32 noundef 20, ptr noundef nonnull %i.dzc, ptr noundef %i.eau, i32 noundef 15)
  %i.eaw = icmp sgt i32 %i.eav, -1
  br i1 %i.eaw, label %bb.mk, label %write_back_non_zero_count.exit

bb.mk:                                            ; preds = %.preheader1158.1
  %i.eax = shl i32 336, %i.o
  %i.eay = sext i32 %i.eax to i64
  %i.eaz = getelementptr inbounds [2 x i8], ptr %i.dzb, i64 %i.eay
  %i.eba = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.ebb = getelementptr inbounds nuw i8, ptr %i.eba, i64 173816
  %i.ebc = load ptr, ptr %i.ebb, align 8, !tbaa !155
  %i.ebd = getelementptr inbounds [64 x i8], ptr %i.ebc, i64 %i.dzd
  %i.ebe = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.eaz, i32 noundef 21, ptr noundef nonnull %i.dzc, ptr noundef %i.ebd, i32 noundef 15)
  %i.ebf = icmp sgt i32 %i.ebe, -1
  br i1 %i.ebf, label %bb.ml, label %write_back_non_zero_count.exit

bb.ml:                                            ; preds = %bb.mk
  %i.ebg = shl i32 352, %i.o
  %i.ebh = sext i32 %i.ebg to i64
  %i.ebi = getelementptr inbounds [2 x i8], ptr %i.dzb, i64 %i.ebh
  %i.ebj = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.ebk = getelementptr inbounds nuw i8, ptr %i.ebj, i64 173816
  %i.ebl = load ptr, ptr %i.ebk, align 8, !tbaa !155
  %i.ebm = getelementptr inbounds [64 x i8], ptr %i.ebl, i64 %i.dzd
  %i.ebn = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.ebi, i32 noundef 22, ptr noundef nonnull %i.dzc, ptr noundef %i.ebm, i32 noundef 15)
  %i.ebo = icmp sgt i32 %i.ebn, -1
  br i1 %i.ebo, label %bb.mm, label %write_back_non_zero_count.exit

bb.mm:                                            ; preds = %bb.ml
  %i.ebp = shl i32 368, %i.o
  %i.ebq = sext i32 %i.ebp to i64
  %i.ebr = getelementptr inbounds [2 x i8], ptr %i.dzb, i64 %i.ebq
  %i.ebs = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.ebt = getelementptr inbounds nuw i8, ptr %i.ebs, i64 173816
  %i.ebu = load ptr, ptr %i.ebt, align 8, !tbaa !155
  %i.ebv = getelementptr inbounds [64 x i8], ptr %i.ebu, i64 %i.dzd
  %i.ebw = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.ebr, i32 noundef 23, ptr noundef nonnull %i.dzc, ptr noundef %i.ebv, i32 noundef 15)
  %i.ebx = icmp sgt i32 %i.ebw, -1
  br i1 %i.ebx, label %.preheader1158.2, label %write_back_non_zero_count.exit

.preheader1158.2:                                 ; preds = %bb.mm
  %i.eby = shl i32 384, %i.o
  %i.ebz = sext i32 %i.eby to i64
  %i.eca = getelementptr inbounds [2 x i8], ptr %i.dzb, i64 %i.ebz
  %i.ecb = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.ecc = getelementptr inbounds nuw i8, ptr %i.ecb, i64 173816
  %i.ecd = load ptr, ptr %i.ecc, align 8, !tbaa !155
  %i.ece = getelementptr inbounds [64 x i8], ptr %i.ecd, i64 %i.dzd
  %i.ecf = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.eca, i32 noundef 24, ptr noundef nonnull %i.dzc, ptr noundef %i.ece, i32 noundef 15)
  %i.ecg = icmp sgt i32 %i.ecf, -1
  br i1 %i.ecg, label %bb.mn, label %write_back_non_zero_count.exit

bb.mn:                                            ; preds = %.preheader1158.2
  %i.ech = shl i32 400, %i.o
  %i.eci = sext i32 %i.ech to i64
  %i.ecj = getelementptr inbounds [2 x i8], ptr %i.dzb, i64 %i.eci
  %i.eck = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.ecl = getelementptr inbounds nuw i8, ptr %i.eck, i64 173816
  %i.ecm = load ptr, ptr %i.ecl, align 8, !tbaa !155
  %i.ecn = getelementptr inbounds [64 x i8], ptr %i.ecm, i64 %i.dzd
  %i.eco = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.ecj, i32 noundef 25, ptr noundef nonnull %i.dzc, ptr noundef %i.ecn, i32 noundef 15)
  %i.ecp = icmp sgt i32 %i.eco, -1
  br i1 %i.ecp, label %bb.mo, label %write_back_non_zero_count.exit

bb.mo:                                            ; preds = %bb.mn
  %i.ecq = shl i32 416, %i.o
  %i.ecr = sext i32 %i.ecq to i64
  %i.ecs = getelementptr inbounds [2 x i8], ptr %i.dzb, i64 %i.ecr
  %i.ect = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.ecu = getelementptr inbounds nuw i8, ptr %i.ect, i64 173816
  %i.ecv = load ptr, ptr %i.ecu, align 8, !tbaa !155
  %i.ecw = getelementptr inbounds [64 x i8], ptr %i.ecv, i64 %i.dzd
  %i.ecx = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.ecs, i32 noundef 26, ptr noundef nonnull %i.dzc, ptr noundef %i.ecw, i32 noundef 15)
  %i.ecy = icmp sgt i32 %i.ecx, -1
  br i1 %i.ecy, label %bb.mp, label %write_back_non_zero_count.exit

bb.mp:                                            ; preds = %bb.mo
  %i.ecz = shl i32 432, %i.o
  %i.eda = sext i32 %i.ecz to i64
  %i.edb = getelementptr inbounds [2 x i8], ptr %i.dzb, i64 %i.eda
  %i.edc = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.edd = getelementptr inbounds nuw i8, ptr %i.edc, i64 173816
  %i.ede = load ptr, ptr %i.edd, align 8, !tbaa !155
  %i.edf = getelementptr inbounds [64 x i8], ptr %i.ede, i64 %i.dzd
  %i.edg = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.edb, i32 noundef 27, ptr noundef nonnull %i.dzc, ptr noundef %i.edf, i32 noundef 15)
  %i.edh = icmp sgt i32 %i.edg, -1
  br i1 %i.edh, label %.preheader1158.3, label %write_back_non_zero_count.exit

.preheader1158.3:                                 ; preds = %bb.mp
  %i.edi = shl i32 448, %i.o
  %i.edj = sext i32 %i.edi to i64
  %i.edk = getelementptr inbounds [2 x i8], ptr %i.dzb, i64 %i.edj
  %i.edl = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.edm = getelementptr inbounds nuw i8, ptr %i.edl, i64 173816
  %i.edn = load ptr, ptr %i.edm, align 8, !tbaa !155
  %i.edo = getelementptr inbounds [64 x i8], ptr %i.edn, i64 %i.dzd
  %i.edp = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.edk, i32 noundef 28, ptr noundef nonnull %i.dzc, ptr noundef %i.edo, i32 noundef 15)
  %i.edq = icmp sgt i32 %i.edp, -1
  br i1 %i.edq, label %bb.mq, label %write_back_non_zero_count.exit

bb.mq:                                            ; preds = %.preheader1158.3
  %i.edr = shl i32 464, %i.o
  %i.eds = sext i32 %i.edr to i64
  %i.edt = getelementptr inbounds [2 x i8], ptr %i.dzb, i64 %i.eds
  %i.edu = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.edv = getelementptr inbounds nuw i8, ptr %i.edu, i64 173816
  %i.edw = load ptr, ptr %i.edv, align 8, !tbaa !155
  %i.edx = getelementptr inbounds [64 x i8], ptr %i.edw, i64 %i.dzd
  %i.edy = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.edt, i32 noundef 29, ptr noundef nonnull %i.dzc, ptr noundef %i.edx, i32 noundef 15)
  %i.edz = icmp sgt i32 %i.edy, -1
  br i1 %i.edz, label %bb.mr, label %write_back_non_zero_count.exit

bb.mr:                                            ; preds = %bb.mq
  %i.eea = shl i32 480, %i.o
  %i.eeb = sext i32 %i.eea to i64
  %i.eec = getelementptr inbounds [2 x i8], ptr %i.dzb, i64 %i.eeb
  %i.eed = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.eee = getelementptr inbounds nuw i8, ptr %i.eed, i64 173816
  %i.eef = load ptr, ptr %i.eee, align 8, !tbaa !155
  %i.eeg = getelementptr inbounds [64 x i8], ptr %i.eef, i64 %i.dzd
  %i.eeh = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.eec, i32 noundef 30, ptr noundef nonnull %i.dzc, ptr noundef %i.eeg, i32 noundef 15)
  %i.eei = icmp sgt i32 %i.eeh, -1
  br i1 %i.eei, label %bb.ms, label %write_back_non_zero_count.exit

bb.ms:                                            ; preds = %bb.mr
  %i.eej = shl i32 496, %i.o
  %i.eek = sext i32 %i.eej to i64
  %i.eel = getelementptr inbounds [2 x i8], ptr %i.dzb, i64 %i.eek
  %i.eem = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.een = getelementptr inbounds nuw i8, ptr %i.eem, i64 173816
  %i.eeo = load ptr, ptr %i.een, align 8, !tbaa !155
  %i.eep = getelementptr inbounds [64 x i8], ptr %i.eeo, i64 %i.dzd
  %i.eeq = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.eel, i32 noundef 31, ptr noundef nonnull %i.dzc, ptr noundef %i.eep, i32 noundef 15)
  %i.eer = icmp sgt i32 %i.eeq, -1
  br i1 %i.eer, label %decode_luma_residual.exit739.thread1122, label %write_back_non_zero_count.exit

bb.mt:                                            ; preds = %bb.mg
  %i.ees = getelementptr inbounds nuw i8, ptr %1, i64 28668
  store i32 0, ptr %i.ees, align 4, !tbaa !94
  %i.eet = getelementptr inbounds nuw i8, ptr %1, i64 28676
  store i32 0, ptr %i.eet, align 4, !tbaa !94
  %i.eeu = getelementptr inbounds nuw i8, ptr %1, i64 28684
  store i32 0, ptr %i.eeu, align 4, !tbaa !94
  %i.eev = getelementptr inbounds nuw i8, ptr %1, i64 28692
  store i32 0, ptr %i.eev, align 4, !tbaa !94
  br label %decode_luma_residual.exit739.thread1122

bb.mu:                                            ; preds = %bb.me
  %i.eew = and i32 %i.dyv, 5
  %.not135.i729 = icmp eq i32 %i.eew, 0
  %i.eex = select i1 %.not135.i729, i64 4, i64 1  ; 8 uses
  %i.eey = and i32 %i.dyv, 16777216
  %.not137.i733 = icmp eq i32 %i.eey, 0
  %i.eez = getelementptr inbounds nuw i8, ptr %1, i64 29344 ; 5 uses
  %i.efa = sext i32 %i.dyw to i64                 ; 8 uses
  %i.efb = getelementptr inbounds nuw i8, ptr %1, i64 28616 ; 6 uses
  %i.efc = getelementptr inbounds nuw i8, ptr %.0557, i64 16
  %i.efd = getelementptr inbounds nuw i8, ptr %.0557, i64 32
  %i.efe = getelementptr inbounds nuw i8, ptr %.0557, i64 48
  br label %bb.mv

bb.mv:                                            ; preds = %bb.mu, %.loopexit1155
  %indvars.iv1446 = phi i64 [ 0, %bb.mu ], [ %indvars.iv.next1447, %.loopexit1155 ] ; 6 uses
  %.0120.i7311281 = phi i32 [ 0, %bb.mu ], [ %.4124.i736, %.loopexit1155 ] ; 3 uses
  %i.eff = trunc nuw nsw i64 %indvars.iv1446 to i32 ; 3 uses
  %i.efg = shl nuw nsw i32 1, %i.eff
  %i.efh = and i32 %i.efg, %.1617
  %.not136.i732 = icmp eq i32 %i.efh, 0
  br i1 %.not136.i732, label %bb.ne, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  %i.efi = load ptr, ptr %i.f, align 8, !tbaa !22 ; 2 uses
  br i1 %.not137.i733, label %.preheader1154, label %bb.mx

.preheader1154:                                   ; preds = %bb.mw
  %i.efj = shl nuw nsw i64 %indvars.iv1446, 2     ; 4 uses
  %i.efk = add nuw nsw i64 %i.efj, 16             ; 3 uses
  %.tr1596 = trunc nuw nsw i64 %i.efk to i32
  %i.efl = shl nuw nsw i32 %.tr1596, 4
  %i.efm = shl i32 %i.efl, %i.o
  %i.efn = sext i32 %i.efm to i64
  %i.efo = getelementptr inbounds [2 x i8], ptr %i.eez, i64 %i.efn
  %i.efp = getelementptr inbounds nuw i8, ptr %i.efi, i64 173808
  %i.efq = getelementptr inbounds nuw [8 x i8], ptr %i.efp, i64 %i.eex
  %i.efr = load ptr, ptr %i.efq, align 8, !tbaa !155
  %i.efs = getelementptr inbounds [64 x i8], ptr %i.efr, i64 %i.efa
  %i.eft = trunc nuw nsw i64 %i.efk to i32
  %i.efu = call fastcc i32 @decode_residual(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.efo, i32 noundef %i.eft, ptr noundef nonnull %.0558, ptr noundef %i.efs, i32 noundef 16)
  %i.efv = icmp sgt i32 %i.efu, -1
  br i1 %i.efv, label %bb.nb, label %write_back_non_zero_count.exit

bb.mx:                                            ; preds = %bb.mw
  %indvars.iv1446.tr = trunc i64 %indvars.iv1446 to i32
  %i.efw = shl i32 %indvars.iv1446.tr, 6
  %i.efx = add i32 %i.efw, 256
  %i.efy = shl i32 %i.efx, %i.o
  %i.efz = sext i32 %i.efy to i64
  %i.ega = getelementptr inbounds [2 x i8], ptr %i.eez, i64 %i.efz ; 4 uses
  %i.egb = shl nuw nsw i64 %indvars.iv1446, 2     ; 5 uses
  %i.egc = getelementptr inbounds nuw i8, ptr %i.efi, i64 173856
  %i.egd = getelementptr inbounds nuw [8 x i8], ptr %i.egc, i64 %i.eex
  %i.ege = load ptr, ptr %i.egd, align 8, !tbaa !155
  %i.egf = getelementptr inbounds [256 x i8], ptr %i.ege, i64 %i.efa
  %i.egg = trunc i64 %i.egb to i32
  %i.egh = add i32 %i.egg, 16
  %i.egi = call fastcc i32 @decode_residual(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.ega, i32 noundef %i.egh, ptr noundef nonnull %.0557, ptr noundef %i.egf, i32 noundef 16)
  %i.egj = icmp sgt i32 %i.egi, -1
  br i1 %i.egj, label %bb.my, label %write_back_non_zero_count.exit

bb.my:                                            ; preds = %bb.mx
  %i.egk = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.egl = getelementptr inbounds nuw i8, ptr %i.egk, i64 173856
  %i.egm = getelementptr inbounds nuw [8 x i8], ptr %i.egl, i64 %i.eex
  %i.egn = load ptr, ptr %i.egm, align 8, !tbaa !155
  %i.ego = getelementptr inbounds [256 x i8], ptr %i.egn, i64 %i.efa
  %i.egp = trunc i64 %i.egb to i32
  %i.egq = add i32 %i.egp, 17
  %i.egr = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.ega, i32 noundef %i.egq, ptr noundef nonnull %i.efc, ptr noundef %i.ego, i32 noundef 16)
  %i.egs = icmp sgt i32 %i.egr, -1
  br i1 %i.egs, label %bb.mz, label %write_back_non_zero_count.exit

bb.mz:                                            ; preds = %bb.my
  %i.egt = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.egu = getelementptr inbounds nuw i8, ptr %i.egt, i64 173856
  %i.egv = getelementptr inbounds nuw [8 x i8], ptr %i.egu, i64 %i.eex
  %i.egw = load ptr, ptr %i.egv, align 8, !tbaa !155
  %i.egx = getelementptr inbounds [256 x i8], ptr %i.egw, i64 %i.efa
  %i.egy = trunc i64 %i.egb to i32
  %i.egz = add i32 %i.egy, 18
  %i.eha = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.ega, i32 noundef %i.egz, ptr noundef nonnull %i.efd, ptr noundef %i.egx, i32 noundef 16)
  %i.ehb = icmp sgt i32 %i.eha, -1
  br i1 %i.ehb, label %bb.na, label %write_back_non_zero_count.exit

bb.na:                                            ; preds = %bb.mz
  %i.ehc = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.ehd = getelementptr inbounds nuw i8, ptr %i.ehc, i64 173856
  %i.ehe = getelementptr inbounds nuw [8 x i8], ptr %i.ehd, i64 %i.eex
  %i.ehf = load ptr, ptr %i.ehe, align 8, !tbaa !155
  %i.ehg = getelementptr inbounds [256 x i8], ptr %i.ehf, i64 %i.efa
  %i.ehh = trunc i64 %i.egb to i32
  %i.ehi = add i32 %i.ehh, 19
  %i.ehj = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.ega, i32 noundef %i.ehi, ptr noundef nonnull %i.efe, ptr noundef %i.ehg, i32 noundef 16)
  %i.ehk = icmp sgt i32 %i.ehj, -1
  br i1 %i.ehk, label %.thread1118, label %write_back_non_zero_count.exit

.thread1118:                                      ; preds = %bb.na
  %i.ehl = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.egb
  %i.ehm = getelementptr inbounds nuw i8, ptr %i.ehl, i64 16
  %i.ehn = load i8, ptr %i.ehm, align 4, !tbaa !15
  %i.eho = zext i8 %i.ehn to i64
  %i.ehp = getelementptr inbounds nuw i8, ptr %i.efb, i64 %i.eho ; 5 uses
  %i.ehq = getelementptr inbounds nuw i8, ptr %i.ehp, i64 1
  %i.ehr = load i8, ptr %i.ehq, align 1, !tbaa !15
  %i.ehs = getelementptr inbounds nuw i8, ptr %i.ehp, i64 8
  %i.eht = load i8, ptr %i.ehs, align 1, !tbaa !15
  %i.ehu = add i8 %i.eht, %i.ehr
  %i.ehv = getelementptr inbounds nuw i8, ptr %i.ehp, i64 9
  %i.ehw = load i8, ptr %i.ehv, align 1, !tbaa !15
  %i.ehx = add i8 %i.ehu, %i.ehw
  %i.ehy = load i8, ptr %i.ehp, align 1, !tbaa !15
  %i.ehz = add i8 %i.ehx, %i.ehy                  ; 2 uses
  store i8 %i.ehz, ptr %i.ehp, align 1, !tbaa !15
  %i.eia = icmp ne i8 %i.ehz, 0
  %i.eib = zext i1 %i.eia to i32
  %i.eic = shl nuw nsw i32 %i.eib, %i.eff
  %i.eid = or i32 %i.eic, %.0120.i7311281
  br label %.loopexit1155

bb.nb:                                            ; preds = %.preheader1154
  %i.eie = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.efk
  %i.eif = load i8, ptr %i.eie, align 4, !tbaa !15
  %i.eig = zext i8 %i.eif to i64
  %i.eih = getelementptr inbounds nuw i8, ptr %i.efb, i64 %i.eig
  %i.eii = load i8, ptr %i.eih, align 1, !tbaa !15
  %i.eij = add nuw nsw i64 %i.efj, 17             ; 3 uses
  %.tr1597 = trunc nuw nsw i64 %i.eij to i32
  %i.eik = shl nuw nsw i32 %.tr1597, 4
  %i.eil = shl i32 %i.eik, %i.o
  %i.eim = sext i32 %i.eil to i64
  %i.ein = getelementptr inbounds [2 x i8], ptr %i.eez, i64 %i.eim
  %i.eio = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.eip = getelementptr inbounds nuw i8, ptr %i.eio, i64 173808
  %i.eiq = getelementptr inbounds nuw [8 x i8], ptr %i.eip, i64 %i.eex
  %i.eir = load ptr, ptr %i.eiq, align 8, !tbaa !155
  %i.eis = getelementptr inbounds [64 x i8], ptr %i.eir, i64 %i.efa
  %i.eit = trunc nuw nsw i64 %i.eij to i32
  %i.eiu = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.ein, i32 noundef %i.eit, ptr noundef nonnull %.0558, ptr noundef %i.eis, i32 noundef 16)
  %i.eiv = icmp sgt i32 %i.eiu, -1
  br i1 %i.eiv, label %bb.nc, label %write_back_non_zero_count.exit

bb.nc:                                            ; preds = %bb.nb
  %i.eiw = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.eij
  %i.eix = load i8, ptr %i.eiw, align 1, !tbaa !15
  %i.eiy = zext i8 %i.eix to i64
  %i.eiz = getelementptr inbounds nuw i8, ptr %i.efb, i64 %i.eiy
  %i.eja = load i8, ptr %i.eiz, align 1, !tbaa !15
  %i.ejb = add nuw nsw i64 %i.efj, 18             ; 3 uses
  %.tr1598 = trunc nuw nsw i64 %i.ejb to i32
  %i.ejc = shl nuw nsw i32 %.tr1598, 4
  %i.ejd = shl i32 %i.ejc, %i.o
  %i.eje = sext i32 %i.ejd to i64
  %i.ejf = getelementptr inbounds [2 x i8], ptr %i.eez, i64 %i.eje
  %i.ejg = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.ejh = getelementptr inbounds nuw i8, ptr %i.ejg, i64 173808
  %i.eji = getelementptr inbounds nuw [8 x i8], ptr %i.ejh, i64 %i.eex
  %i.ejj = load ptr, ptr %i.eji, align 8, !tbaa !155
  %i.ejk = getelementptr inbounds [64 x i8], ptr %i.ejj, i64 %i.efa
  %i.ejl = trunc nuw nsw i64 %i.ejb to i32
  %i.ejm = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.ejf, i32 noundef %i.ejl, ptr noundef nonnull %.0558, ptr noundef %i.ejk, i32 noundef 16)
  %i.ejn = icmp sgt i32 %i.ejm, -1
  br i1 %i.ejn, label %bb.nd, label %write_back_non_zero_count.exit

bb.nd:                                            ; preds = %bb.nc
  %i.ejo = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.ejb
  %i.ejp = load i8, ptr %i.ejo, align 2, !tbaa !15
  %i.ejq = zext i8 %i.ejp to i64
  %i.ejr = getelementptr inbounds nuw i8, ptr %i.efb, i64 %i.ejq
  %i.ejs = load i8, ptr %i.ejr, align 1, !tbaa !15
  %i.ejt = add nuw nsw i64 %i.efj, 19             ; 3 uses
  %.tr1599 = trunc nuw nsw i64 %i.ejt to i32
  %i.eju = shl nuw nsw i32 %.tr1599, 4
  %i.ejv = shl i32 %i.eju, %i.o
  %i.ejw = sext i32 %i.ejv to i64
  %i.ejx = getelementptr inbounds [2 x i8], ptr %i.eez, i64 %i.ejw
  %i.ejy = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.ejz = getelementptr inbounds nuw i8, ptr %i.ejy, i64 173808
  %i.eka = getelementptr inbounds nuw [8 x i8], ptr %i.ejz, i64 %i.eex
  %i.ekb = load ptr, ptr %i.eka, align 8, !tbaa !155
  %i.ekc = getelementptr inbounds [64 x i8], ptr %i.ekb, i64 %i.efa
  %i.ekd = trunc nuw nsw i64 %i.ejt to i32
  %i.eke = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.ejx, i32 noundef %i.ekd, ptr noundef nonnull %.0558, ptr noundef %i.ekc, i32 noundef 16)
  %i.ekf = icmp sgt i32 %i.eke, -1
  br i1 %i.ekf, label %.loopexit1155.loopexit, label %write_back_non_zero_count.exit

.loopexit1155.loopexit:                           ; preds = %bb.nd
  %i.ekg = or i8 %i.eii, %i.eja
  %i.ekh = or i8 %i.ekg, %i.ejs
  %i.eki = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.ejt
  %i.ekj = load i8, ptr %i.eki, align 1, !tbaa !15
  %i.ekk = zext i8 %i.ekj to i64
  %i.ekl = getelementptr inbounds nuw i8, ptr %i.efb, i64 %i.ekk
  %i.ekm = load i8, ptr %i.ekl, align 1, !tbaa !15
  %i.ekn = or i8 %i.ekh, %i.ekm
  %i.eko = zext i8 %i.ekn to i32
  %i.ekp = shl i32 %i.eko, %i.eff
  %i.ekq = or i32 %i.ekp, %.0120.i7311281
  br label %.loopexit1155

bb.ne:                                            ; preds = %bb.mv
  %i.ekr = shl nuw nsw i64 %indvars.iv1446, 2
  %i.eks = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.ekr
  %i.ekt = getelementptr inbounds nuw i8, ptr %i.eks, i64 16
  %i.eku = load i8, ptr %i.ekt, align 4, !tbaa !15
  %i.ekv = zext i8 %i.eku to i64
  %i.ekw = getelementptr inbounds nuw i8, ptr %i.efb, i64 %i.ekv ; 4 uses
  %i.ekx = getelementptr inbounds nuw i8, ptr %i.ekw, i64 9
  store i8 0, ptr %i.ekx, align 1, !tbaa !15
  %i.eky = getelementptr inbounds nuw i8, ptr %i.ekw, i64 8
  store i8 0, ptr %i.eky, align 1, !tbaa !15
  %i.ekz = getelementptr inbounds nuw i8, ptr %i.ekw, i64 1
  store i8 0, ptr %i.ekz, align 1, !tbaa !15
  store i8 0, ptr %i.ekw, align 1, !tbaa !15
  br label %.loopexit1155

.loopexit1155:                                    ; preds = %.loopexit1155.loopexit, %.thread1118, %bb.ne
  %.4124.i736 = phi i32 [ %i.eid, %.thread1118 ], [ %.0120.i7311281, %bb.ne ], [ %i.ekq, %.loopexit1155.loopexit ] ; 2 uses
  %indvars.iv.next1447 = add nuw nsw i64 %indvars.iv1446, 1 ; 2 uses
  %exitcond1451.not = icmp eq i64 %indvars.iv.next1447, 4
  br i1 %exitcond1451.not, label %decode_luma_residual.exit739, label %bb.mv, !llvm.loop !156

decode_luma_residual.exit739:                     ; preds = %.loopexit1155
  %i.ela = icmp slt i32 %.4124.i736, 0
  br i1 %i.ela, label %write_back_non_zero_count.exit, label %decode_luma_residual.exit739.thread1122

decode_luma_residual.exit739.thread1122:          ; preds = %bb.ms, %bb.mt, %decode_luma_residual.exit739
  %i.elb = load i32, ptr %i.c, align 4, !tbaa !94 ; 3 uses
  %i.elc = load i32, ptr %i.dmp, align 16, !tbaa !94 ; 2 uses
  %i.eld = and i32 %i.elb, 2
  %.not.i722 = icmp eq i32 %i.eld, 0
  br i1 %.not.i722, label %bb.nt, label %bb.nf

bb.nf:                                            ; preds = %decode_luma_residual.exit739.thread1122
  %i.ele = getelementptr inbounds nuw i8, ptr %1, i64 32544 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ele, i8 0, i64 64, i1 false)
  %i.elf = call fastcc i32 @decode_residual(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.ele, i32 noundef 50, ptr noundef nonnull %.0558, ptr noundef null, i32 noundef 16)
  %i.elg = icmp slt i32 %i.elf, 0
  br i1 %i.elg, label %write_back_non_zero_count.exit, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  br i1 %.not694, label %.preheader1153, label %decode_luma_residual.exit.thread1128.sink.split

.preheader1153:                                   ; preds = %bb.ng
  %i.elh = getelementptr inbounds nuw i8, ptr %1, i64 29344 ; 16 uses
  %i.eli = getelementptr inbounds nuw i8, ptr %.0558, i64 1 ; 16 uses
  %i.elj = sext i32 %i.elc to i64                 ; 16 uses
  %i.elk = shl i32 512, %i.o
  %i.ell = sext i32 %i.elk to i64
  %i.elm = getelementptr inbounds [2 x i8], ptr %i.elh, i64 %i.ell
  %i.eln = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.elo = getelementptr inbounds nuw i8, ptr %i.eln, i64 173824
  %i.elp = load ptr, ptr %i.elo, align 8, !tbaa !155
  %i.elq = getelementptr inbounds [64 x i8], ptr %i.elp, i64 %i.elj
  %i.elr = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.elm, i32 noundef 32, ptr noundef nonnull %i.eli, ptr noundef %i.elq, i32 noundef 15)
  %i.els = icmp sgt i32 %i.elr, -1
  br i1 %i.els, label %bb.nh, label %write_back_non_zero_count.exit

bb.nh:                                            ; preds = %.preheader1153
  %i.elt = shl i32 528, %i.o
  %i.elu = sext i32 %i.elt to i64
  %i.elv = getelementptr inbounds [2 x i8], ptr %i.elh, i64 %i.elu
  %i.elw = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.elx = getelementptr inbounds nuw i8, ptr %i.elw, i64 173824
  %i.ely = load ptr, ptr %i.elx, align 8, !tbaa !155
  %i.elz = getelementptr inbounds [64 x i8], ptr %i.ely, i64 %i.elj
  %i.ema = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.elv, i32 noundef 33, ptr noundef nonnull %i.eli, ptr noundef %i.elz, i32 noundef 15)
  %i.emb = icmp sgt i32 %i.ema, -1
  br i1 %i.emb, label %bb.ni, label %write_back_non_zero_count.exit

bb.ni:                                            ; preds = %bb.nh
  %i.emc = shl i32 544, %i.o
  %i.emd = sext i32 %i.emc to i64
  %i.eme = getelementptr inbounds [2 x i8], ptr %i.elh, i64 %i.emd
  %i.emf = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.emg = getelementptr inbounds nuw i8, ptr %i.emf, i64 173824
  %i.emh = load ptr, ptr %i.emg, align 8, !tbaa !155
  %i.emi = getelementptr inbounds [64 x i8], ptr %i.emh, i64 %i.elj
  %i.emj = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.eme, i32 noundef 34, ptr noundef nonnull %i.eli, ptr noundef %i.emi, i32 noundef 15)
  %i.emk = icmp sgt i32 %i.emj, -1
  br i1 %i.emk, label %bb.nj, label %write_back_non_zero_count.exit

bb.nj:                                            ; preds = %bb.ni
  %i.eml = shl i32 560, %i.o
  %i.emm = sext i32 %i.eml to i64
  %i.emn = getelementptr inbounds [2 x i8], ptr %i.elh, i64 %i.emm
  %i.emo = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.emp = getelementptr inbounds nuw i8, ptr %i.emo, i64 173824
  %i.emq = load ptr, ptr %i.emp, align 8, !tbaa !155
  %i.emr = getelementptr inbounds [64 x i8], ptr %i.emq, i64 %i.elj
  %i.ems = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.emn, i32 noundef 35, ptr noundef nonnull %i.eli, ptr noundef %i.emr, i32 noundef 15)
  %i.emt = icmp sgt i32 %i.ems, -1
  br i1 %i.emt, label %.preheader1151.1, label %write_back_non_zero_count.exit

.preheader1151.1:                                 ; preds = %bb.nj
  %i.emu = shl i32 576, %i.o
  %i.emv = sext i32 %i.emu to i64
  %i.emw = getelementptr inbounds [2 x i8], ptr %i.elh, i64 %i.emv
  %i.emx = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.emy = getelementptr inbounds nuw i8, ptr %i.emx, i64 173824
  %i.emz = load ptr, ptr %i.emy, align 8, !tbaa !155
  %i.ena = getelementptr inbounds [64 x i8], ptr %i.emz, i64 %i.elj
  %i.enb = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.emw, i32 noundef 36, ptr noundef nonnull %i.eli, ptr noundef %i.ena, i32 noundef 15)
  %i.enc = icmp sgt i32 %i.enb, -1
  br i1 %i.enc, label %bb.nk, label %write_back_non_zero_count.exit

bb.nk:                                            ; preds = %.preheader1151.1
  %i.end = shl i32 592, %i.o
  %i.ene = sext i32 %i.end to i64
  %i.enf = getelementptr inbounds [2 x i8], ptr %i.elh, i64 %i.ene
  %i.eng = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.enh = getelementptr inbounds nuw i8, ptr %i.eng, i64 173824
  %i.eni = load ptr, ptr %i.enh, align 8, !tbaa !155
  %i.enj = getelementptr inbounds [64 x i8], ptr %i.eni, i64 %i.elj
  %i.enk = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.enf, i32 noundef 37, ptr noundef nonnull %i.eli, ptr noundef %i.enj, i32 noundef 15)
  %i.enl = icmp sgt i32 %i.enk, -1
  br i1 %i.enl, label %bb.nl, label %write_back_non_zero_count.exit

bb.nl:                                            ; preds = %bb.nk
  %i.enm = shl i32 608, %i.o
  %i.enn = sext i32 %i.enm to i64
  %i.eno = getelementptr inbounds [2 x i8], ptr %i.elh, i64 %i.enn
  %i.enp = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.enq = getelementptr inbounds nuw i8, ptr %i.enp, i64 173824
  %i.enr = load ptr, ptr %i.enq, align 8, !tbaa !155
  %i.ens = getelementptr inbounds [64 x i8], ptr %i.enr, i64 %i.elj
  %i.ent = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.eno, i32 noundef 38, ptr noundef nonnull %i.eli, ptr noundef %i.ens, i32 noundef 15)
  %i.enu = icmp sgt i32 %i.ent, -1
  br i1 %i.enu, label %bb.nm, label %write_back_non_zero_count.exit

bb.nm:                                            ; preds = %bb.nl
  %i.env = shl i32 624, %i.o
  %i.enw = sext i32 %i.env to i64
  %i.enx = getelementptr inbounds [2 x i8], ptr %i.elh, i64 %i.enw
  %i.eny = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.enz = getelementptr inbounds nuw i8, ptr %i.eny, i64 173824
  %i.eoa = load ptr, ptr %i.enz, align 8, !tbaa !155
  %i.eob = getelementptr inbounds [64 x i8], ptr %i.eoa, i64 %i.elj
  %i.eoc = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.enx, i32 noundef 39, ptr noundef nonnull %i.eli, ptr noundef %i.eob, i32 noundef 15)
  %i.eod = icmp sgt i32 %i.eoc, -1
  br i1 %i.eod, label %.preheader1151.2, label %write_back_non_zero_count.exit

.preheader1151.2:                                 ; preds = %bb.nm
  %i.eoe = shl i32 640, %i.o
  %i.eof = sext i32 %i.eoe to i64
  %i.eog = getelementptr inbounds [2 x i8], ptr %i.elh, i64 %i.eof
  %i.eoh = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.eoi = getelementptr inbounds nuw i8, ptr %i.eoh, i64 173824
  %i.eoj = load ptr, ptr %i.eoi, align 8, !tbaa !155
  %i.eok = getelementptr inbounds [64 x i8], ptr %i.eoj, i64 %i.elj
  %i.eol = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.eog, i32 noundef 40, ptr noundef nonnull %i.eli, ptr noundef %i.eok, i32 noundef 15)
  %i.eom = icmp sgt i32 %i.eol, -1
  br i1 %i.eom, label %bb.nn, label %write_back_non_zero_count.exit

bb.nn:                                            ; preds = %.preheader1151.2
  %i.eon = shl i32 656, %i.o
  %i.eoo = sext i32 %i.eon to i64
  %i.eop = getelementptr inbounds [2 x i8], ptr %i.elh, i64 %i.eoo
  %i.eoq = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.eor = getelementptr inbounds nuw i8, ptr %i.eoq, i64 173824
  %i.eos = load ptr, ptr %i.eor, align 8, !tbaa !155
  %i.eot = getelementptr inbounds [64 x i8], ptr %i.eos, i64 %i.elj
  %i.eou = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.eop, i32 noundef 41, ptr noundef nonnull %i.eli, ptr noundef %i.eot, i32 noundef 15)
  %i.eov = icmp sgt i32 %i.eou, -1
  br i1 %i.eov, label %bb.no, label %write_back_non_zero_count.exit

bb.no:                                            ; preds = %bb.nn
  %i.eow = shl i32 672, %i.o
  %i.eox = sext i32 %i.eow to i64
  %i.eoy = getelementptr inbounds [2 x i8], ptr %i.elh, i64 %i.eox
  %i.eoz = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.epa = getelementptr inbounds nuw i8, ptr %i.eoz, i64 173824
  %i.epb = load ptr, ptr %i.epa, align 8, !tbaa !155
  %i.epc = getelementptr inbounds [64 x i8], ptr %i.epb, i64 %i.elj
  %i.epd = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.eoy, i32 noundef 42, ptr noundef nonnull %i.eli, ptr noundef %i.epc, i32 noundef 15)
  %i.epe = icmp sgt i32 %i.epd, -1
  br i1 %i.epe, label %bb.np, label %write_back_non_zero_count.exit

bb.np:                                            ; preds = %bb.no
  %i.epf = shl i32 688, %i.o
  %i.epg = sext i32 %i.epf to i64
  %i.eph = getelementptr inbounds [2 x i8], ptr %i.elh, i64 %i.epg
  %i.epi = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.epj = getelementptr inbounds nuw i8, ptr %i.epi, i64 173824
  %i.epk = load ptr, ptr %i.epj, align 8, !tbaa !155
  %i.epl = getelementptr inbounds [64 x i8], ptr %i.epk, i64 %i.elj
  %i.epm = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.eph, i32 noundef 43, ptr noundef nonnull %i.eli, ptr noundef %i.epl, i32 noundef 15)
  %i.epn = icmp sgt i32 %i.epm, -1
  br i1 %i.epn, label %.preheader1151.3, label %write_back_non_zero_count.exit

.preheader1151.3:                                 ; preds = %bb.np
  %i.epo = shl i32 704, %i.o
  %i.epp = sext i32 %i.epo to i64
  %i.epq = getelementptr inbounds [2 x i8], ptr %i.elh, i64 %i.epp
  %i.epr = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.eps = getelementptr inbounds nuw i8, ptr %i.epr, i64 173824
  %i.ept = load ptr, ptr %i.eps, align 8, !tbaa !155
  %i.epu = getelementptr inbounds [64 x i8], ptr %i.ept, i64 %i.elj
  %i.epv = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.epq, i32 noundef 44, ptr noundef nonnull %i.eli, ptr noundef %i.epu, i32 noundef 15)
  %i.epw = icmp sgt i32 %i.epv, -1
  br i1 %i.epw, label %bb.nq, label %write_back_non_zero_count.exit

bb.nq:                                            ; preds = %.preheader1151.3
  %i.epx = shl i32 720, %i.o
  %i.epy = sext i32 %i.epx to i64
  %i.epz = getelementptr inbounds [2 x i8], ptr %i.elh, i64 %i.epy
  %i.eqa = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.eqb = getelementptr inbounds nuw i8, ptr %i.eqa, i64 173824
  %i.eqc = load ptr, ptr %i.eqb, align 8, !tbaa !155
  %i.eqd = getelementptr inbounds [64 x i8], ptr %i.eqc, i64 %i.elj
  %i.eqe = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.epz, i32 noundef 45, ptr noundef nonnull %i.eli, ptr noundef %i.eqd, i32 noundef 15)
  %i.eqf = icmp sgt i32 %i.eqe, -1
  br i1 %i.eqf, label %bb.nr, label %write_back_non_zero_count.exit

bb.nr:                                            ; preds = %bb.nq
  %i.eqg = shl i32 736, %i.o
  %i.eqh = sext i32 %i.eqg to i64
  %i.eqi = getelementptr inbounds [2 x i8], ptr %i.elh, i64 %i.eqh
  %i.eqj = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.eqk = getelementptr inbounds nuw i8, ptr %i.eqj, i64 173824
  %i.eql = load ptr, ptr %i.eqk, align 8, !tbaa !155
  %i.eqm = getelementptr inbounds [64 x i8], ptr %i.eql, i64 %i.elj
  %i.eqn = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.eqi, i32 noundef 46, ptr noundef nonnull %i.eli, ptr noundef %i.eqm, i32 noundef 15)
  %i.eqo = icmp sgt i32 %i.eqn, -1
  br i1 %i.eqo, label %bb.ns, label %write_back_non_zero_count.exit

bb.ns:                                            ; preds = %bb.nr
  %i.eqp = shl i32 752, %i.o
  %i.eqq = sext i32 %i.eqp to i64
  %i.eqr = getelementptr inbounds [2 x i8], ptr %i.elh, i64 %i.eqq
  %i.eqs = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.eqt = getelementptr inbounds nuw i8, ptr %i.eqs, i64 173824
  %i.equ = load ptr, ptr %i.eqt, align 8, !tbaa !155
  %i.eqv = getelementptr inbounds [64 x i8], ptr %i.equ, i64 %i.elj
  %i.eqw = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.eqr, i32 noundef 47, ptr noundef nonnull %i.eli, ptr noundef %i.eqv, i32 noundef 15)
  %i.eqx = icmp sgt i32 %i.eqw, -1
  br i1 %i.eqx, label %decode_luma_residual.exit.thread1128, label %write_back_non_zero_count.exit

bb.nt:                                            ; preds = %decode_luma_residual.exit739.thread1122
  %i.eqy = and i32 %i.elb, 5
  %.not135.i = icmp eq i32 %i.eqy, 0
  %i.eqz = select i1 %.not135.i, i64 5, i64 2     ; 8 uses
  %i.era = and i32 %i.elb, 16777216
  %.not137.i = icmp eq i32 %i.era, 0
  %i.erb = getelementptr inbounds nuw i8, ptr %1, i64 29344 ; 5 uses
  %i.erc = sext i32 %i.elc to i64                 ; 8 uses
  %i.erd = getelementptr inbounds nuw i8, ptr %1, i64 28616 ; 6 uses
  %i.ere = getelementptr inbounds nuw i8, ptr %.0557, i64 16
  %i.erf = getelementptr inbounds nuw i8, ptr %.0557, i64 32
  %i.erg = getelementptr inbounds nuw i8, ptr %.0557, i64 48
  br label %bb.nu

bb.nu:                                            ; preds = %bb.nt, %.loopexit
  %indvars.iv1464 = phi i64 [ 0, %bb.nt ], [ %indvars.iv.next1465, %.loopexit ] ; 6 uses
  %.0120.i1294 = phi i32 [ 0, %bb.nt ], [ %.4124.i, %.loopexit ] ; 3 uses
  %i.erh = trunc nuw nsw i64 %indvars.iv1464 to i32 ; 3 uses
  %i.eri = shl nuw nsw i32 1, %i.erh
  %i.erj = and i32 %i.eri, %.1617
  %.not136.i = icmp eq i32 %i.erj, 0
  br i1 %.not136.i, label %bb.od, label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  %i.erk = load ptr, ptr %i.f, align 8, !tbaa !22 ; 2 uses
  br i1 %.not137.i, label %.preheader, label %bb.nw

.preheader:                                       ; preds = %bb.nv
  %i.erl = shl nuw nsw i64 %indvars.iv1464, 2     ; 4 uses
  %i.erm = add nuw nsw i64 %i.erl, 32             ; 3 uses
  %.tr1600 = trunc nuw nsw i64 %i.erm to i32
  %i.ern = shl nuw nsw i32 %.tr1600, 4
  %i.ero = shl i32 %i.ern, %i.o
  %i.erp = sext i32 %i.ero to i64
  %i.erq = getelementptr inbounds [2 x i8], ptr %i.erb, i64 %i.erp
  %i.err = getelementptr inbounds nuw i8, ptr %i.erk, i64 173808
  %i.ers = getelementptr inbounds nuw [8 x i8], ptr %i.err, i64 %i.eqz
  %i.ert = load ptr, ptr %i.ers, align 8, !tbaa !155
  %i.eru = getelementptr inbounds [64 x i8], ptr %i.ert, i64 %i.erc
  %i.erv = trunc nuw nsw i64 %i.erm to i32
  %i.erw = call fastcc i32 @decode_residual(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.erq, i32 noundef %i.erv, ptr noundef nonnull %.0558, ptr noundef %i.eru, i32 noundef 16)
  %i.erx = icmp sgt i32 %i.erw, -1
  br i1 %i.erx, label %bb.oa, label %write_back_non_zero_count.exit

bb.nw:                                            ; preds = %bb.nv
  %indvars.iv1464.tr = trunc i64 %indvars.iv1464 to i32
  %i.ery = shl i32 %indvars.iv1464.tr, 6
  %i.erz = add i32 %i.ery, 512
  %i.esa = shl i32 %i.erz, %i.o
  %i.esb = sext i32 %i.esa to i64
  %i.esc = getelementptr inbounds [2 x i8], ptr %i.erb, i64 %i.esb ; 4 uses
  %i.esd = shl nuw nsw i64 %indvars.iv1464, 2     ; 5 uses
  %i.ese = getelementptr inbounds nuw i8, ptr %i.erk, i64 173856
  %i.esf = getelementptr inbounds nuw [8 x i8], ptr %i.ese, i64 %i.eqz
  %i.esg = load ptr, ptr %i.esf, align 8, !tbaa !155
  %i.esh = getelementptr inbounds [256 x i8], ptr %i.esg, i64 %i.erc
  %i.esi = trunc i64 %i.esd to i32
  %i.esj = add i32 %i.esi, 32
  %i.esk = call fastcc i32 @decode_residual(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.esc, i32 noundef %i.esj, ptr noundef nonnull %.0557, ptr noundef %i.esh, i32 noundef 16)
  %i.esl = icmp sgt i32 %i.esk, -1
  br i1 %i.esl, label %bb.nx, label %write_back_non_zero_count.exit

bb.nx:                                            ; preds = %bb.nw
  %i.esm = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.esn = getelementptr inbounds nuw i8, ptr %i.esm, i64 173856
  %i.eso = getelementptr inbounds nuw [8 x i8], ptr %i.esn, i64 %i.eqz
  %i.esp = load ptr, ptr %i.eso, align 8, !tbaa !155
  %i.esq = getelementptr inbounds [256 x i8], ptr %i.esp, i64 %i.erc
  %i.esr = trunc i64 %i.esd to i32
  %i.ess = add i32 %i.esr, 33
  %i.est = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.esc, i32 noundef %i.ess, ptr noundef nonnull %i.ere, ptr noundef %i.esq, i32 noundef 16)
  %i.esu = icmp sgt i32 %i.est, -1
  br i1 %i.esu, label %bb.ny, label %write_back_non_zero_count.exit

bb.ny:                                            ; preds = %bb.nx
  %i.esv = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.esw = getelementptr inbounds nuw i8, ptr %i.esv, i64 173856
  %i.esx = getelementptr inbounds nuw [8 x i8], ptr %i.esw, i64 %i.eqz
  %i.esy = load ptr, ptr %i.esx, align 8, !tbaa !155
  %i.esz = getelementptr inbounds [256 x i8], ptr %i.esy, i64 %i.erc
  %i.eta = trunc i64 %i.esd to i32
  %i.etb = add i32 %i.eta, 34
  %i.etc = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.esc, i32 noundef %i.etb, ptr noundef nonnull %i.erf, ptr noundef %i.esz, i32 noundef 16)
  %i.etd = icmp sgt i32 %i.etc, -1
  br i1 %i.etd, label %bb.nz, label %write_back_non_zero_count.exit

bb.nz:                                            ; preds = %bb.ny
  %i.ete = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.etf = getelementptr inbounds nuw i8, ptr %i.ete, i64 173856
  %i.etg = getelementptr inbounds nuw [8 x i8], ptr %i.etf, i64 %i.eqz
  %i.eth = load ptr, ptr %i.etg, align 8, !tbaa !155
  %i.eti = getelementptr inbounds [256 x i8], ptr %i.eth, i64 %i.erc
  %i.etj = trunc i64 %i.esd to i32
  %i.etk = add i32 %i.etj, 35
  %i.etl = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.esc, i32 noundef %i.etk, ptr noundef nonnull %i.erg, ptr noundef %i.eti, i32 noundef 16)
  %i.etm = icmp sgt i32 %i.etl, -1
  br i1 %i.etm, label %.thread1124, label %write_back_non_zero_count.exit

.thread1124:                                      ; preds = %bb.nz
  %i.etn = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.esd
  %i.eto = getelementptr inbounds nuw i8, ptr %i.etn, i64 32
  %i.etp = load i8, ptr %i.eto, align 4, !tbaa !15
  %i.etq = zext i8 %i.etp to i64
  %i.etr = getelementptr inbounds nuw i8, ptr %i.erd, i64 %i.etq ; 5 uses
  %i.ets = getelementptr inbounds nuw i8, ptr %i.etr, i64 1
  %i.ett = load i8, ptr %i.ets, align 1, !tbaa !15
  %i.etu = getelementptr inbounds nuw i8, ptr %i.etr, i64 8
  %i.etv = load i8, ptr %i.etu, align 1, !tbaa !15
  %i.etw = add i8 %i.etv, %i.ett
  %i.etx = getelementptr inbounds nuw i8, ptr %i.etr, i64 9
  %i.ety = load i8, ptr %i.etx, align 1, !tbaa !15
  %i.etz = add i8 %i.etw, %i.ety
  %i.eua = load i8, ptr %i.etr, align 1, !tbaa !15
  %i.eub = add i8 %i.etz, %i.eua                  ; 2 uses
  store i8 %i.eub, ptr %i.etr, align 1, !tbaa !15
  %i.euc = icmp ne i8 %i.eub, 0
  %i.eud = zext i1 %i.euc to i32
  %i.eue = shl nuw nsw i32 %i.eud, %i.erh
  %i.euf = or i32 %i.eue, %.0120.i1294
  br label %.loopexit

bb.oa:                                            ; preds = %.preheader
  %i.eug = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.erm
  %i.euh = load i8, ptr %i.eug, align 4, !tbaa !15
  %i.eui = zext i8 %i.euh to i64
  %i.euj = getelementptr inbounds nuw i8, ptr %i.erd, i64 %i.eui
  %i.euk = load i8, ptr %i.euj, align 1, !tbaa !15
  %i.eul = add nuw nsw i64 %i.erl, 33             ; 3 uses
  %.tr1601 = trunc nuw nsw i64 %i.eul to i32
  %i.eum = shl nuw nsw i32 %.tr1601, 4
  %i.eun = shl i32 %i.eum, %i.o
  %i.euo = sext i32 %i.eun to i64
  %i.eup = getelementptr inbounds [2 x i8], ptr %i.erb, i64 %i.euo
  %i.euq = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.eur = getelementptr inbounds nuw i8, ptr %i.euq, i64 173808
  %i.eus = getelementptr inbounds nuw [8 x i8], ptr %i.eur, i64 %i.eqz
  %i.eut = load ptr, ptr %i.eus, align 8, !tbaa !155
  %i.euu = getelementptr inbounds [64 x i8], ptr %i.eut, i64 %i.erc
  %i.euv = trunc nuw nsw i64 %i.eul to i32
  %i.euw = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.eup, i32 noundef %i.euv, ptr noundef nonnull %.0558, ptr noundef %i.euu, i32 noundef 16)
  %i.eux = icmp sgt i32 %i.euw, -1
  br i1 %i.eux, label %bb.ob, label %write_back_non_zero_count.exit

bb.ob:                                            ; preds = %bb.oa
  %i.euy = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.eul
  %i.euz = load i8, ptr %i.euy, align 1, !tbaa !15
  %i.eva = zext i8 %i.euz to i64
  %i.evb = getelementptr inbounds nuw i8, ptr %i.erd, i64 %i.eva
  %i.evc = load i8, ptr %i.evb, align 1, !tbaa !15
  %i.evd = add nuw nsw i64 %i.erl, 34             ; 3 uses
  %.tr1602 = trunc nuw nsw i64 %i.evd to i32
  %i.eve = shl nuw nsw i32 %.tr1602, 4
  %i.evf = shl i32 %i.eve, %i.o
  %i.evg = sext i32 %i.evf to i64
  %i.evh = getelementptr inbounds [2 x i8], ptr %i.erb, i64 %i.evg
  %i.evi = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.evj = getelementptr inbounds nuw i8, ptr %i.evi, i64 173808
  %i.evk = getelementptr inbounds nuw [8 x i8], ptr %i.evj, i64 %i.eqz
  %i.evl = load ptr, ptr %i.evk, align 8, !tbaa !155
  %i.evm = getelementptr inbounds [64 x i8], ptr %i.evl, i64 %i.erc
  %i.evn = trunc nuw nsw i64 %i.evd to i32
  %i.evo = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.evh, i32 noundef %i.evn, ptr noundef nonnull %.0558, ptr noundef %i.evm, i32 noundef 16)
  %i.evp = icmp sgt i32 %i.evo, -1
  br i1 %i.evp, label %bb.oc, label %write_back_non_zero_count.exit

bb.oc:                                            ; preds = %bb.ob
  %i.evq = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.evd
  %i.evr = load i8, ptr %i.evq, align 2, !tbaa !15
  %i.evs = zext i8 %i.evr to i64
  %i.evt = getelementptr inbounds nuw i8, ptr %i.erd, i64 %i.evs
  %i.evu = load i8, ptr %i.evt, align 1, !tbaa !15
  %i.evv = add nuw nsw i64 %i.erl, 35             ; 3 uses
  %.tr1603 = trunc nuw nsw i64 %i.evv to i32
  %i.evw = shl nuw nsw i32 %.tr1603, 4
  %i.evx = shl i32 %i.evw, %i.o
  %i.evy = sext i32 %i.evx to i64
  %i.evz = getelementptr inbounds [2 x i8], ptr %i.erb, i64 %i.evy
  %i.ewa = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.ewb = getelementptr inbounds nuw i8, ptr %i.ewa, i64 173808
  %i.ewc = getelementptr inbounds nuw [8 x i8], ptr %i.ewb, i64 %i.eqz
  %i.ewd = load ptr, ptr %i.ewc, align 8, !tbaa !155
  %i.ewe = getelementptr inbounds [64 x i8], ptr %i.ewd, i64 %i.erc
  %i.ewf = trunc nuw nsw i64 %i.evv to i32
  %i.ewg = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.evz, i32 noundef %i.ewf, ptr noundef nonnull %.0558, ptr noundef %i.ewe, i32 noundef 16)
  %i.ewh = icmp sgt i32 %i.ewg, -1
  br i1 %i.ewh, label %.loopexit.loopexit, label %write_back_non_zero_count.exit

.loopexit.loopexit:                               ; preds = %bb.oc
  %i.ewi = or i8 %i.euk, %i.evc
  %i.ewj = or i8 %i.ewi, %i.evu
  %i.ewk = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.evv
  %i.ewl = load i8, ptr %i.ewk, align 1, !tbaa !15
  %i.ewm = zext i8 %i.ewl to i64
  %i.ewn = getelementptr inbounds nuw i8, ptr %i.erd, i64 %i.ewm
  %i.ewo = load i8, ptr %i.ewn, align 1, !tbaa !15
  %i.ewp = or i8 %i.ewj, %i.ewo
  %i.ewq = zext i8 %i.ewp to i32
  %i.ewr = shl i32 %i.ewq, %i.erh
  %i.ews = or i32 %i.ewr, %.0120.i1294
  br label %.loopexit

bb.od:                                            ; preds = %bb.nu
  %i.ewt = shl nuw nsw i64 %indvars.iv1464, 2
  %i.ewu = getelementptr inbounds nuw i8, ptr @scan8, i64 %i.ewt
  %i.ewv = getelementptr inbounds nuw i8, ptr %i.ewu, i64 32
  %i.eww = load i8, ptr %i.ewv, align 4, !tbaa !15
  %i.ewx = zext i8 %i.eww to i64
  %i.ewy = getelementptr inbounds nuw i8, ptr %i.erd, i64 %i.ewx ; 4 uses
  %i.ewz = getelementptr inbounds nuw i8, ptr %i.ewy, i64 9
  store i8 0, ptr %i.ewz, align 1, !tbaa !15
  %i.exa = getelementptr inbounds nuw i8, ptr %i.ewy, i64 8
  store i8 0, ptr %i.exa, align 1, !tbaa !15
  %i.exb = getelementptr inbounds nuw i8, ptr %i.ewy, i64 1
  store i8 0, ptr %i.exb, align 1, !tbaa !15
  store i8 0, ptr %i.ewy, align 1, !tbaa !15
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.thread1124, %bb.od
  %.4124.i = phi i32 [ %i.euf, %.thread1124 ], [ %.0120.i1294, %bb.od ], [ %i.ews, %.loopexit.loopexit ] ; 2 uses
  %indvars.iv.next1465 = add nuw nsw i64 %indvars.iv1464, 1 ; 2 uses
  %exitcond1469.not = icmp eq i64 %indvars.iv.next1465, 4
  br i1 %exitcond1469.not, label %decode_luma_residual.exit, label %bb.nu, !llvm.loop !156

decode_luma_residual.exit:                        ; preds = %.loopexit
  %i.exc = icmp slt i32 %.4124.i, 0
  br i1 %i.exc, label %write_back_non_zero_count.exit, label %decode_luma_residual.exit.thread1128

bb.oe:                                            ; preds = %decode_luma_residual.exit756.thread1115
  %i.exd = and i32 %.1617, 48
  %.not704 = icmp eq i32 %i.exd, 0
  br i1 %.not704, label %.loopexit1168, label %.preheader1167

.preheader1167:                                   ; preds = %bb.oe
  %i.exe = getelementptr inbounds nuw i8, ptr %1, i64 29344 ; 2 uses
  %i.exf = shl nsw i32 %i.dyt, 2                  ; 2 uses
  %i.exg = shl i32 256, %i.o
  %i.exh = sext i32 %i.exg to i64
  %i.exi = getelementptr inbounds [2 x i8], ptr %i.exe, i64 %i.exh
  %i.exj = icmp eq i32 %i.dyt, 2
  %i.exk = select i1 %i.exj, ptr @ff_h264_chroma422_dc_scan, ptr @ff_h264_chroma_dc_scan
  %i.exl = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.exi, i32 noundef 49, ptr noundef nonnull %i.exk, ptr noundef null, i32 noundef %i.exf)
  %i.exm = icmp slt i32 %i.exl, 0
  br i1 %i.exm, label %write_back_non_zero_count.exit, label %bb.of

bb.of:                                            ; preds = %.preheader1167
  %i.exn = shl i32 512, %i.o
  %i.exo = sext i32 %i.exn to i64
  %i.exp = getelementptr inbounds [2 x i8], ptr %i.exe, i64 %i.exo
  %i.exq = load ptr, ptr %i.j, align 8, !tbaa !75
  %i.exr = getelementptr inbounds nuw i8, ptr %i.exq, i64 12
  %i.exs = load i32, ptr %i.exr, align 4, !tbaa !76
  %i.ext = icmp eq i32 %i.exs, 2
  %i.exu = select i1 %i.ext, ptr @ff_h264_chroma422_dc_scan, ptr @ff_h264_chroma_dc_scan
  %i.exv = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef nonnull %i.exp, i32 noundef 50, ptr noundef nonnull %i.exu, ptr noundef null, i32 noundef %i.exf)
  %i.exw = icmp slt i32 %i.exv, 0
  br i1 %i.exw, label %write_back_non_zero_count.exit, label %.loopexit1168

.loopexit1168:                                    ; preds = %bb.of, %bb.oe
  %i.exx = and i32 %.1617, 32
  %.not705 = icmp eq i32 %i.exx, 0
  br i1 %.not705, label %decode_luma_residual.exit.thread1128.sink.split.sink.split, label %.preheader1164

.preheader1164:                                   ; preds = %.loopexit1168
  %i.exy = getelementptr inbounds nuw i8, ptr %1, i64 29344 ; 2 uses
  %.not7071266 = icmp sgt i32 %i.dyt, 0           ; 2 uses
  %i.exz = getelementptr inbounds nuw i8, ptr %.0558, i64 1 ; 8 uses
  %i.eya = shl i32 16, %i.o
  %i.eyb = sext i32 %i.eya to i64                 ; 8 uses
  %i.eyc = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.eyd = getelementptr inbounds nuw i8, ptr %i.eyc, i64 173808
  %i.eye = load i32, ptr %i.c, align 4, !tbaa !94
  %i.eyf = and i32 %i.eye, 7
  %.not706 = icmp eq i32 %i.eyf, 0
  %i.eyg = select i1 %.not706, i64 4, i64 1
  %i.eyh = getelementptr inbounds nuw [8 x i8], ptr %i.eyd, i64 %i.eyg
  %i.eyi = load ptr, ptr %i.eyh, align 8, !tbaa !155
  %i.eyj = load i32, ptr %i.dmk, align 4, !tbaa !94
  %i.eyk = sext i32 %i.eyj to i64
  %i.eyl = getelementptr inbounds [64 x i8], ptr %i.eyi, i64 %i.eyk ; 4 uses
  br i1 %.not7071266, label %.preheader1161.preheader, label %.loopexit1162

.preheader1161.preheader:                         ; preds = %.preheader1164
  %i.eym = shl i32 256, %i.o
  %i.eyn = sext i32 %i.eym to i64
  %i.eyo = getelementptr inbounds [2 x i8], ptr %i.exy, i64 %i.eyn
  br label %.preheader1161

.preheader1161:                                   ; preds = %.preheader1161.preheader, %bb.oj
  %.01268 = phi ptr [ %i.ezf, %bb.oj ], [ %i.eyo, %.preheader1161.preheader ] ; 2 uses
  %.05611267 = phi i32 [ %i.ezg, %bb.oj ], [ 0, %.preheader1161.preheader ] ; 2 uses
  %i.eyp = shl nuw nsw i32 %.05611267, 3          ; 4 uses
  %i.eyq = add nuw nsw i32 %i.eyp, 16
  %i.eyr = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef %.01268, i32 noundef %i.eyq, ptr noundef nonnull %i.exz, ptr noundef %i.eyl, i32 noundef 15)
  %i.eys = icmp sgt i32 %i.eyr, -1
  br i1 %i.eys, label %bb.og, label %write_back_non_zero_count.exit

bb.og:                                            ; preds = %.preheader1161
  %i.eyt = getelementptr inbounds [2 x i8], ptr %.01268, i64 %i.eyb ; 2 uses
  %i.eyu = add nuw nsw i32 %i.eyp, 17
  %i.eyv = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef %i.eyt, i32 noundef %i.eyu, ptr noundef nonnull %i.exz, ptr noundef %i.eyl, i32 noundef 15)
  %i.eyw = icmp sgt i32 %i.eyv, -1
  br i1 %i.eyw, label %bb.oh, label %write_back_non_zero_count.exit

bb.oh:                                            ; preds = %bb.og
  %i.eyx = getelementptr inbounds [2 x i8], ptr %i.eyt, i64 %i.eyb ; 2 uses
  %i.eyy = add nuw nsw i32 %i.eyp, 18
  %i.eyz = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef %i.eyx, i32 noundef %i.eyy, ptr noundef nonnull %i.exz, ptr noundef %i.eyl, i32 noundef 15)
  %i.eza = icmp sgt i32 %i.eyz, -1
  br i1 %i.eza, label %bb.oi, label %write_back_non_zero_count.exit

bb.oi:                                            ; preds = %bb.oh
  %i.ezb = getelementptr inbounds [2 x i8], ptr %i.eyx, i64 %i.eyb ; 2 uses
  %i.ezc = add nuw nsw i32 %i.eyp, 19
  %i.ezd = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef %i.ezb, i32 noundef %i.ezc, ptr noundef nonnull %i.exz, ptr noundef %i.eyl, i32 noundef 15)
  %i.eze = icmp sgt i32 %i.ezd, -1
  br i1 %i.eze, label %bb.oj, label %write_back_non_zero_count.exit

bb.oj:                                            ; preds = %bb.oi
  %i.ezf = getelementptr inbounds [2 x i8], ptr %i.ezb, i64 %i.eyb
  %i.ezg = add nuw nsw i32 %.05611267, 1          ; 2 uses
  %exitcond1429.not = icmp eq i32 %i.ezg, %i.dyt
  br i1 %exitcond1429.not, label %.loopexit1162, label %.preheader1161, !llvm.loop !157

.loopexit1162:                                    ; preds = %bb.oj, %.preheader1164
  %i.ezh = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.ezi = getelementptr inbounds nuw i8, ptr %i.ezh, i64 173808
  %i.ezj = load i32, ptr %i.c, align 4, !tbaa !94
  %i.ezk = and i32 %i.ezj, 7
  %.not706.1 = icmp eq i32 %i.ezk, 0
  %i.ezl = select i1 %.not706.1, i64 5, i64 2
  %i.ezm = getelementptr inbounds nuw [8 x i8], ptr %i.ezi, i64 %i.ezl
  %i.ezn = load ptr, ptr %i.ezm, align 8, !tbaa !155
  %i.ezo = getelementptr i8, ptr %1, i64 64
  %i.ezp = load i32, ptr %i.ezo, align 16, !tbaa !94
  %i.ezq = sext i32 %i.ezp to i64
  %i.ezr = getelementptr inbounds [64 x i8], ptr %i.ezn, i64 %i.ezq ; 4 uses
  br i1 %.not7071266, label %.preheader1161.preheader.1, label %decode_luma_residual.exit.thread1128

.preheader1161.preheader.1:                       ; preds = %.loopexit1162
  %i.ezs = shl i32 512, %i.o
  %i.ezt = sext i32 %i.ezs to i64
  %i.ezu = getelementptr inbounds [2 x i8], ptr %i.exy, i64 %i.ezt
  br label %.preheader1161.1

.preheader1161.1:                                 ; preds = %bb.on, %.preheader1161.preheader.1
  %.01268.1 = phi ptr [ %i.fal, %bb.on ], [ %i.ezu, %.preheader1161.preheader.1 ] ; 2 uses
  %.05611267.1 = phi i32 [ %i.fam, %bb.on ], [ 0, %.preheader1161.preheader.1 ] ; 2 uses
  %i.ezv = shl nuw nsw i32 %.05611267.1, 3        ; 4 uses
  %i.ezw = add nuw nsw i32 %i.ezv, 32
  %i.ezx = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef %.01268.1, i32 noundef %i.ezw, ptr noundef nonnull %i.exz, ptr noundef %i.ezr, i32 noundef 15)
  %i.ezy = icmp sgt i32 %i.ezx, -1
  br i1 %i.ezy, label %bb.ok, label %write_back_non_zero_count.exit

bb.ok:                                            ; preds = %.preheader1161.1
  %i.ezz = getelementptr inbounds [2 x i8], ptr %.01268.1, i64 %i.eyb ; 2 uses
  %i.faa = add nuw nsw i32 %i.ezv, 33
  %i.fab = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef %i.ezz, i32 noundef %i.faa, ptr noundef nonnull %i.exz, ptr noundef %i.ezr, i32 noundef 15)
  %i.fac = icmp sgt i32 %i.fab, -1
  br i1 %i.fac, label %bb.ol, label %write_back_non_zero_count.exit

bb.ol:                                            ; preds = %bb.ok
  %i.fad = getelementptr inbounds [2 x i8], ptr %i.ezz, i64 %i.eyb ; 2 uses
  %i.fae = add nuw nsw i32 %i.ezv, 34
  %i.faf = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef %i.fad, i32 noundef %i.fae, ptr noundef nonnull %i.exz, ptr noundef %i.ezr, i32 noundef 15)
  %i.fag = icmp sgt i32 %i.faf, -1
  br i1 %i.fag, label %bb.om, label %write_back_non_zero_count.exit

bb.om:                                            ; preds = %bb.ol
  %i.fah = getelementptr inbounds [2 x i8], ptr %i.fad, i64 %i.eyb ; 2 uses
  %i.fai = add nuw nsw i32 %i.ezv, 35
  %i.faj = call fastcc i32 @decode_residual(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ss, ptr noundef %i.fah, i32 noundef %i.fai, ptr noundef nonnull %i.exz, ptr noundef %i.ezr, i32 noundef 15)
  %i.fak = icmp sgt i32 %i.faj, -1
  br i1 %i.fak, label %bb.on, label %write_back_non_zero_count.exit

end_hunk_4
begin_hunk_5_@fill_decode_caches:bb.a
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !15
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 28643
  store i8 %i.id, ptr %i.ie, align 1, !tbaa !15
  %i.if = getelementptr inbounds nuw i8, ptr %i.b, i64 11 ; 5 uses
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !15
  %i.ih = zext i8 %i.ig to i64
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !15
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 28651
  store i8 %i.ij, ptr %i.ik, align 1, !tbaa !15
  %i.il = load ptr, ptr %i.eu, align 8, !tbaa !75
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 12
  %i.in = load i32, ptr %i.im, align 4, !tbaa !76
  switch i32 %i.in, label %bb.aq [
    i32 3, label %bb.ap
    i32 2, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an
  %i.io = load i8, ptr %i.hz, align 1, !tbaa !15
  %i.ip = zext i8 %i.io to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 14
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !15
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 28683
  store i8 %i.is, ptr %i.it, align 1, !tbaa !15
  %i.iu = load i8, ptr %i.if, align 1, !tbaa !15
  %i.iv = zext i8 %i.iu to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 14
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !15
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 28691
  store i8 %i.iy, ptr %i.iz, align 1, !tbaa !15
  %i.ja = load i8, ptr %i.hz, align 1, !tbaa !15
  %i.jb = zext i8 %i.ja to i64
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 30
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !15
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 28723
  store i8 %i.je, ptr %i.jf, align 1, !tbaa !15
  %i.jg = load i8, ptr %i.if, align 1, !tbaa !15
  %i.jh = zext i8 %i.jg to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 30
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !15
  br label %.loopexit587.sink.split

bb.ap:                                            ; preds = %bb.an
  %i.jl = load i8, ptr %i.hz, align 1, !tbaa !15
  %i.jm = zext i8 %i.jl to i64
  %i.jn = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.jm
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !15
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 28683
  store i8 %i.jp, ptr %i.jq, align 1, !tbaa !15
  %i.jr = load i8, ptr %i.if, align 1, !tbaa !15
  %i.js = zext i8 %i.jr to i64
  %i.jt = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.js
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !15
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 28691
  store i8 %i.jv, ptr %i.jw, align 1, !tbaa !15
  %i.jx = load i8, ptr %i.hz, align 1, !tbaa !15
  %i.jy = zext i8 %i.jx to i64
  %i.jz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.jy
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 32
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !15
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 28723
  store i8 %i.kb, ptr %i.kc, align 1, !tbaa !15
  %i.kd = load i8, ptr %i.if, align 1, !tbaa !15
  %i.ke = zext i8 %i.kd to i64
  %i.kf = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.ke
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 32
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !15
  br label %.loopexit587.sink.split

bb.aq:                                            ; preds = %bb.an
  %i.ki = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !15
  %i.kk = zext i8 %i.kj to i64
  %i.kl = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.kk
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !15
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 28675
  store i8 %i.km, ptr %i.kn, align 1, !tbaa !15
  %i.ko = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !15
  %i.kq = zext i8 %i.kp to i64
  %i.kr = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.kq
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !15
  br label %.loopexit587.sink.split

bb.ar:                                            ; preds = %bb.am
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 28731
  store i8 64, ptr %i.kt, align 1, !tbaa !15
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 28723
  store i8 64, ptr %i.ku, align 1, !tbaa !15
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 28691
  store i8 64, ptr %i.kv, align 1, !tbaa !15
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 28683
  store i8 64, ptr %i.kw, align 1, !tbaa !15
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 28651
  store i8 64, ptr %i.kx, align 1, !tbaa !15
  br label %.loopexit587.sink.split

.loopexit587.sink.split:                          ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %.sink646 = phi i64 [ 28731, %bb.ao ], [ 28731, %bb.ap ], [ 28715, %bb.aq ], [ 28643, %bb.ar ]
  %.sink644 = phi i8 [ %i.jk, %bb.ao ], [ %i.kh, %bb.ap ], [ %i.ks, %bb.aq ], [ 64, %bb.ar ]
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 %.sink646
  store i8 %.sink644, ptr %i.ky, align 1, !tbaa !15
  br label %.loopexit587

.loopexit587:                                     ; preds = %.loopexit587.sink.split, %bb.a
  %i.kz = and i32 %2, 120
  %.not540 = icmp eq i32 %i.kz, 0
  br i1 %.not540, label %bb.as, label %bb.au

bb.as:                                            ; preds = %.loopexit587
  %i.la = and i32 %2, 256
  %.not541 = icmp eq i32 %i.la, 0
  br i1 %.not541, label %.loopexit586, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 21080
  %i.lc = load i32, ptr %i.lb, align 8, !tbaa !103
  %.not542 = icmp eq i32 %i.lc, 0
  br i1 %.not542, label %.loopexit586, label %bb.au

bb.au:                                            ; preds = %bb.at, %.loopexit587
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 31048
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !105 ; 8 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 22648
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !139 ; 2 uses
  %.not593 = icmp eq i32 %i.lg, 0
  br i1 %.not593, label %.loopexit586, label %.lr.ph

.lr.ph:                                           ; preds = %bb.au
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 29056
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 28624
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 28736
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 28584
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 31032 ; 6 uses
  %i.lm = sext i32 %i.f to i64
  %i.ln = mul nsw i32 %i.le, 3                    ; 2 uses
  %i.lo = shl nsw i32 %i.f, 2
  %i.lp = sext i32 %i.lo to i64
  %.not546 = icmp eq i32 %i.p, 0
  %i.lq = select i1 %.not546, i32 -16843010, i32 -1
  %i.lr = and i32 %2, 80
  %.not547 = icmp eq i32 %i.lr, 0
  %i.ls = sext i32 %i.j to i64                    ; 2 uses
  %i.lt = shl nsw i32 %i.j, 2
  %i.lu = or disjoint i32 %i.lt, 1                ; 3 uses
  %.not549 = icmp eq i32 %i.t, 0
  %i.lv = select i1 %.not549, i8 -2, i8 -1        ; 3 uses
  %i.lw = sext i32 %i.h to i64
  %i.lx = shl nsw i32 %i.h, 2
  %i.ly = sext i32 %i.lx to i64
  %.not551 = icmp eq i32 %i.r, 0
  %i.lz = select i1 %.not551, i8 -2, i8 -1
  %i.ma = sext i32 %i.d to i64
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 20968
  %i.mc = shl nsw i32 %i.le, 1
  %i.md = add i32 %i.le, 3
  %i.me = shl nsw i32 %i.d, 2
  %.not553 = icmp eq i32 %i.n, 0
  %i.mf = select i1 %.not553, i8 -2, i8 -1
  %i.mg = and i32 %2, 131328
  %.not554 = icmp eq i32 %i.mg, 0
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 31064 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 21064
  %i.mj = and i32 %i.n, 128
  %.not563 = icmp eq i32 %i.mj, 0                 ; 2 uses
  %i.mk = and i32 %i.p, 128
  %.not564 = icmp eq i32 %i.mk, 0                 ; 2 uses
  %i.ml = and i32 %i.r, 128
  %.not565 = icmp eq i32 %i.ml, 0                 ; 2 uses
  %i.mm = and i32 %i.t, 128
  %.not566 = icmp eq i32 %i.mm, 0                 ; 2 uses
  %i.mn = and i32 %i.v, 128
  %.not567 = icmp eq i32 %i.mn, 0                 ; 2 uses
  %wide.trip.count = zext i32 %i.lg to i64
  %i.mo = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.mp = sext i32 %i.l to i64
  %i.mq = shl nsw i32 %i.l, 2
  %i.mr = or disjoint i32 %i.mq, 1                ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 2 uses
  %.not569.1 = icmp eq i32 %i.v, 0
  %i.mu = select i1 %.not569.1, i8 -2, i8 -1      ; 2 uses
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph, %.critedge577
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge577 ] ; 26 uses
  %i.mv = getelementptr inbounds nuw [40 x i8], ptr %i.lh, i64 %indvars.iv ; 32 uses
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %indvars.iv
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !93 ; 8 uses
  %i.my = getelementptr inbounds nuw [160 x i8], ptr %i.lj, i64 %indvars.iv ; 39 uses
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.lk, i64 %indvars.iv
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !104 ; 8 uses
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.nb = shl nuw nsw i32 %indvars.iv.tr, 1
  %i.nc = shl i32 12288, %i.nb                    ; 6 uses
  %i.nd = and i32 %i.nc, %2
  %.not544 = icmp eq i32 %i.nd, 0
  br i1 %.not544, label %.critedge577, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ne = and i32 %i.nc, %i.p
  %.not545 = icmp eq i32 %i.ne, 0
  br i1 %.not545, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.nf = load ptr, ptr %i.ll, align 8, !tbaa !107
  %i.ng = getelementptr inbounds [4 x i8], ptr %i.nf, i64 %i.lm
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !94
  %i.ni = add i32 %i.nh, %i.ln
  %i.nj = sext i32 %i.ni to i64
  %i.nk = getelementptr inbounds [4 x i8], ptr %i.na, i64 %i.nj ; 2 uses
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !15
  %i.nm = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  store i64 %i.nl, ptr %i.nm, align 8, !tbaa !15
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !15
  %i.np = getelementptr inbounds nuw i8, ptr %i.my, i64 24
  store i64 %i.no, ptr %i.np, align 8, !tbaa !15
  %i.nq = getelementptr i8, ptr %i.mx, i64 %i.lp  ; 2 uses
  %i.nr = getelementptr i8, ptr %i.nq, i64 2
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !15  ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.mv, i64 5
  store i8 %i.ns, ptr %i.nt, align 1, !tbaa !15
  %i.nu = getelementptr inbounds nuw i8, ptr %i.mv, i64 4
  store i8 %i.ns, ptr %i.nu, align 1, !tbaa !15
  %i.nv = getelementptr i8, ptr %i.nq, i64 3
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !15  ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.mv, i64 7
  store i8 %i.nw, ptr %i.nx, align 1, !tbaa !15
  %i.ny = getelementptr inbounds nuw i8, ptr %i.mv, i64 6
  store i8 %i.nw, ptr %i.ny, align 1, !tbaa !15
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.nz = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  %i.oa = getelementptr inbounds nuw i8, ptr %i.mv, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nz, i8 0, i64 16, i1 false)
  store i32 %i.lq, ptr %i.oa, align 4, !tbaa !15
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.ob = and i32 %i.nc, %i.t
  %.not548 = icmp eq i32 %i.ob, 0                 ; 2 uses
  br i1 %.not547, label %bb.be, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.az
  br i1 %.not548, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.preheader.preheader
  %i.oc = load ptr, ptr %i.ll, align 8, !tbaa !107
  %i.od = getelementptr inbounds [4 x i8], ptr %i.oc, i64 %i.ls
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !94
  %i.of = add i32 %i.oe, 3                        ; 2 uses
  %i.og = load i8, ptr %i.b, align 1, !tbaa !15
  %i.oh = zext i8 %i.og to i32
  %i.oi = mul nsw i32 %i.le, %i.oh
  %i.oj = add nsw i32 %i.oi, %i.of
  %i.ok = sext i32 %i.oj to i64
  %i.ol = getelementptr inbounds [4 x i8], ptr %i.na, i64 %i.ok
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !15
  %i.on = getelementptr inbounds nuw i8, ptr %i.my, i64 44
  store i32 %i.om, ptr %i.on, align 4, !tbaa !15
  %i.oo = load i8, ptr %i.mo, align 1, !tbaa !15
  %i.op = zext i8 %i.oo to i32
  %i.oq = mul nsw i32 %i.le, %i.op
  %i.or = add nsw i32 %i.oq, %i.of
  %i.os = sext i32 %i.or to i64
  %i.ot = getelementptr inbounds [4 x i8], ptr %i.na, i64 %i.os
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !15
  %i.ov = getelementptr inbounds nuw i8, ptr %i.my, i64 76
  store i32 %i.ou, ptr %i.ov, align 4, !tbaa !15
  %i.ow = load i8, ptr %i.b, align 1, !tbaa !15
  %i.ox = and i8 %i.ow, -2
  %i.oy = zext i8 %i.ox to i32
  %i.oz = add nsw i32 %i.lu, %i.oy
  %i.pa = sext i32 %i.oz to i64
  %i.pb = getelementptr inbounds i8, ptr %i.mx, i64 %i.pa
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !15
  %i.pd = getelementptr inbounds nuw i8, ptr %i.mv, i64 11
  store i8 %i.pc, ptr %i.pd, align 1, !tbaa !15
  %i.pe = load i8, ptr %i.mo, align 1, !tbaa !15
  %i.pf = and i8 %i.pe, -2
  %i.pg = zext i8 %i.pf to i32
  %i.ph = add nsw i32 %i.lu, %i.pg
  %i.pi = sext i32 %i.ph to i64
  %i.pj = getelementptr inbounds i8, ptr %i.mx, i64 %i.pi
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !15
  br label %.preheader.1

bb.bb:                                            ; preds = %.preheader.preheader
  %i.pl = getelementptr inbounds nuw i8, ptr %i.my, i64 44
  store i32 0, ptr %i.pl, align 4, !tbaa !15
  %i.pm = getelementptr inbounds nuw i8, ptr %i.my, i64 76
  store i32 0, ptr %i.pm, align 4, !tbaa !15
  %i.pn = getelementptr inbounds nuw i8, ptr %i.mv, i64 11
  store i8 %i.lv, ptr %i.pn, align 1, !tbaa !15
  br label %.preheader.1

.preheader.1:                                     ; preds = %bb.bb, %bb.ba
  %.sink = phi i8 [ %i.lv, %bb.bb ], [ %i.pk, %bb.ba ]
  %i.po = getelementptr inbounds nuw i8, ptr %i.mv, i64 19
  store i8 %.sink, ptr %i.po, align 1, !tbaa !15
  %i.pp = and i32 %i.v, %i.nc
  %.not568.1 = icmp eq i32 %i.pp, 0
  br i1 %.not568.1, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.preheader.1
  %i.pq = load ptr, ptr %i.ll, align 8, !tbaa !107
  %i.pr = getelementptr inbounds [4 x i8], ptr %i.pq, i64 %i.mp
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !94
  %i.pt = add i32 %i.ps, 3                        ; 2 uses
  %i.pu = load i8, ptr %i.ms, align 1, !tbaa !15
  %i.pv = zext i8 %i.pu to i32
  %i.pw = mul nsw i32 %i.le, %i.pv
  %i.px = add nsw i32 %i.pw, %i.pt
  %i.py = sext i32 %i.px to i64
  %i.pz = getelementptr inbounds [4 x i8], ptr %i.na, i64 %i.py
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !15
  %i.qb = getelementptr inbounds nuw i8, ptr %i.my, i64 108
  store i32 %i.qa, ptr %i.qb, align 4, !tbaa !15
  %i.qc = load i8, ptr %i.mt, align 1, !tbaa !15
  %i.qd = zext i8 %i.qc to i32
  %i.qe = mul nsw i32 %i.le, %i.qd
  %i.qf = add nsw i32 %i.qe, %i.pt
  %i.qg = sext i32 %i.qf to i64
  %i.qh = getelementptr inbounds [4 x i8], ptr %i.na, i64 %i.qg
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !15
  %i.qj = getelementptr inbounds nuw i8, ptr %i.my, i64 140
  store i32 %i.qi, ptr %i.qj, align 4, !tbaa !15
  %i.qk = load i8, ptr %i.ms, align 1, !tbaa !15
  %i.ql = and i8 %i.qk, -2
  %i.qm = zext i8 %i.ql to i32
  %i.qn = add nsw i32 %i.mr, %i.qm
  %i.qo = sext i32 %i.qn to i64
  %i.qp = getelementptr inbounds i8, ptr %i.mx, i64 %i.qo
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !15
  %i.qr = getelementptr inbounds nuw i8, ptr %i.mv, i64 27
  store i8 %i.qq, ptr %i.qr, align 1, !tbaa !15
  %i.qs = load i8, ptr %i.mt, align 1, !tbaa !15
  %i.qt = and i8 %i.qs, -2
  %i.qu = zext i8 %i.qt to i32
  %i.qv = add nsw i32 %i.mr, %i.qu
  %i.qw = sext i32 %i.qv to i64
  %i.qx = getelementptr inbounds i8, ptr %i.mx, i64 %i.qw
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !15
  br label %.loopexit

bb.bd:                                            ; preds = %.preheader.1
  %i.qz = getelementptr inbounds nuw i8, ptr %i.my, i64 108
  store i32 0, ptr %i.qz, align 4, !tbaa !15
  %i.ra = getelementptr inbounds nuw i8, ptr %i.my, i64 140
  store i32 0, ptr %i.ra, align 4, !tbaa !15
  %i.rb = getelementptr inbounds nuw i8, ptr %i.mv, i64 27
  store i8 %i.mu, ptr %i.rb, align 1, !tbaa !15
  br label %.loopexit

bb.be:                                            ; preds = %bb.az
  br i1 %.not548, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.rc = load ptr, ptr %i.ll, align 8, !tbaa !107
  %i.rd = getelementptr inbounds [4 x i8], ptr %i.rc, i64 %i.ls
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !94
  %i.rf = add i32 %i.re, 3
  %i.rg = load i8, ptr %i.b, align 1, !tbaa !15
  %i.rh = zext i8 %i.rg to i32
  %i.ri = mul nsw i32 %i.le, %i.rh
  %i.rj = add nsw i32 %i.rf, %i.ri
  %i.rk = sext i32 %i.rj to i64
  %i.rl = getelementptr inbounds [4 x i8], ptr %i.na, i64 %i.rk
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !15
  %i.rn = getelementptr inbounds nuw i8, ptr %i.my, i64 44
  store i32 %i.rm, ptr %i.rn, align 4, !tbaa !15
  %i.ro = load i8, ptr %i.b, align 1, !tbaa !15
  %i.rp = and i8 %i.ro, -2
  %i.rq = zext i8 %i.rp to i32
  %i.rr = add nsw i32 %i.lu, %i.rq
  %i.rs = sext i32 %i.rr to i64
  %i.rt = getelementptr inbounds i8, ptr %i.mx, i64 %i.rs
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !15
  br label %.loopexit

bb.bg:                                            ; preds = %bb.be
  %i.rv = getelementptr inbounds nuw i8, ptr %i.my, i64 44
  store i32 0, ptr %i.rv, align 4, !tbaa !15
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bc, %bb.bd, %bb.bf, %bb.bg
  %.sink648 = phi i64 [ 11, %bb.bg ], [ 11, %bb.bf ], [ 35, %bb.bd ], [ 35, %bb.bc ]
  %.sink608.sink = phi i8 [ %i.lv, %bb.bg ], [ %i.ru, %bb.bf ], [ %i.mu, %bb.bd ], [ %i.qy, %bb.bc ]
  %i.rw = getelementptr inbounds nuw i8, ptr %i.mv, i64 %.sink648
  store i8 %.sink608.sink, ptr %i.rw, align 1, !tbaa !15
  %i.rx = and i32 %i.nc, %i.r
  %.not550 = icmp eq i32 %i.rx, 0
end_hunk_5

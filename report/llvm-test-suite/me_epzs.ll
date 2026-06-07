inline.NumInlined: 242
inline.NumDeleted: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SubImageContainer = type { ptr, [2 x ptr] }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], ptr, ptr, i32, i16, [4 x i32], [4 x i32], ptr, [16 x i8], [16 x i8], i32, i64, i32, ptr, ptr, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }

@c_EPZSPattern = dso_local constant [6 x [20 x i8]] [[20 x i8] c"Diamond\00\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"Square\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"Extended Diamond\00\00\00\00", [20 x i8] c"Large Diamond\00\00\00\00\00\00\00", [20 x i8] c"SBP Large Diamond\00\00\00", [20 x i8] c"PMVFAST\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 16
@c_EPZSDualPattern = dso_local constant [7 x [20 x i8]] [[20 x i8] c"Disabled\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"Diamond\00\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"Square\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"Extended Diamond\00\00\00\00", [20 x i8] c"Large Diamond\00\00\00\00\00\00\00", [20 x i8] c"SBP Large Diamond\00\00\00", [20 x i8] c"PMVFAST\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 16
@c_EPZSFixed = dso_local constant [3 x [20 x i8]] [[20 x i8] c"Disabled\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"All P\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"All P + B\00\00\00\00\00\00\00\00\00\00\00"], align 16
@c_EPZSOther = dso_local constant [2 x [20 x i8]] [[20 x i8] c"Disabled\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"Enabled\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 16
@.str = private unnamed_addr constant [23 x i8] c"alloc_EPZScolocated: s\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"alloc_EPZSpattern: s\00", align 1
@mv_rescale = internal unnamed_addr global i32 0, align 4
@input = external local_unnamed_addr global ptr, align 8
@img = external local_unnamed_addr global ptr, align 8
@searcharray = internal unnamed_addr global i32 0, align 4
@medthres = internal unnamed_addr global [8 x i32] zeroinitializer, align 16
@maxthres = internal unnamed_addr global [8 x i32] zeroinitializer, align 16
@minthres = internal unnamed_addr global [8 x i32] zeroinitializer, align 16
@subthres = internal unnamed_addr global [8 x i32] zeroinitializer, align 16
@sdiamond = common dso_local local_unnamed_addr global ptr null, align 8
@square = common dso_local local_unnamed_addr global ptr null, align 8
@ediamond = common dso_local local_unnamed_addr global ptr null, align 8
@ldiamond = common dso_local local_unnamed_addr global ptr null, align 8
@sbdiamond = common dso_local local_unnamed_addr global ptr null, align 8
@pmvfast = common dso_local local_unnamed_addr global ptr null, align 8
@window_predictor = common dso_local local_unnamed_addr global ptr null, align 8
@window_predictor_extended = common dso_local local_unnamed_addr global ptr null, align 8
@predictor = common dso_local local_unnamed_addr global ptr null, align 8
@EPZSDistortion = common dso_local global ptr null, align 8
@EPZSMap = internal global ptr null, align 8
@EPZSMotion = common dso_local global ptr null, align 8
@active_sps = common dso_local local_unnamed_addr global ptr null, align 8
@EPZSCo_located = common dso_local local_unnamed_addr global ptr null, align 8
@searchPattern = common dso_local local_unnamed_addr global ptr null, align 8
@searchPatternD = common dso_local local_unnamed_addr global ptr null, align 8
@listXsize = external local_unnamed_addr global [6 x i32], align 16
@enc_picture = external local_unnamed_addr global ptr, align 8
@mv_scale = internal unnamed_addr global [6 x [32 x [32 x i32]]] zeroinitializer, align 16
@listX = external local_unnamed_addr global [6 x ptr], align 16
@active_pps = common dso_local local_unnamed_addr global ptr null, align 8
@EPZSBlkCount = internal unnamed_addr global i16 0, align 2
@ref_pic_sub = external local_unnamed_addr global %struct.SubImageContainer, align 8
@img_width = external local_unnamed_addr global i16, align 2
@img_height = external local_unnamed_addr global i16, align 2
@width_pad = common dso_local local_unnamed_addr global i32 0, align 4
@height_pad = common dso_local local_unnamed_addr global i32 0, align 4
@wp_weight = common dso_local local_unnamed_addr global ptr null, align 8
@weight_luma = external local_unnamed_addr global i32, align 4
@wp_offset = common dso_local local_unnamed_addr global ptr null, align 8
@offset_luma = external local_unnamed_addr global i32, align 4
@ChromaMEEnable = external local_unnamed_addr global i32, align 4
@width_pad_cr = common dso_local local_unnamed_addr global i32 0, align 4
@height_pad_cr = common dso_local local_unnamed_addr global i32 0, align 4
@weight_cr = external local_unnamed_addr global [2 x i32], align 4
@offset_cr = external local_unnamed_addr global [2 x i32], align 4
@ref_access_method = external local_unnamed_addr global i32, align 4
@mvbits = external local_unnamed_addr global ptr, align 8
@computeUniPred = external local_unnamed_addr global [6 x ptr], align 16
@ref_pic1_sub = external local_unnamed_addr global %struct.SubImageContainer, align 8
@ref_pic2_sub = external local_unnamed_addr global %struct.SubImageContainer, align 8
@wbp_weight = common dso_local local_unnamed_addr global ptr null, align 8
@weight1 = external local_unnamed_addr global i16, align 2
@weight2 = external local_unnamed_addr global i16, align 2
@offsetBi = external local_unnamed_addr global i16, align 2
@computeBiPred2 = external local_unnamed_addr global [3 x ptr], align 16
@computeBiPred = external local_unnamed_addr global ptr, align 8
@luma_log_weight_denom = common dso_local local_unnamed_addr global i32 0, align 4
@computeBiPred1 = external local_unnamed_addr global [3 x ptr], align 16
@weight1_cr = external local_unnamed_addr global [2 x i16], align 2
@weight2_cr = external local_unnamed_addr global [2 x i16], align 2
@offsetBi_cr = external local_unnamed_addr global [2 x i16], align 2
@chroma_log_weight_denom = common dso_local local_unnamed_addr global i32 0, align 4
@bipred2_access_method = external local_unnamed_addr global i32, align 4
@bipred1_access_method = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c" EPZS Pattern                 : %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c" EPZS Dual Pattern            : %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c" EPZS Fixed Predictors        : %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c" EPZS Temporal Predictors     : %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c" EPZS Spatial Predictors      : %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c" EPZS Thresholds (16x16)      : (%d %d %d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c" EPZS Subpel ME               : %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c" EPZS Subpel ME BiPred        : %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c" EPZS Pattern                      : %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c" EPZS Dual Pattern                 : %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c" EPZS Fixed Predictors             : %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c" EPZS Temporal Predictors          : %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c" EPZS Spatial Predictors           : %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c" EPZS Thresholds (16x16)           : (%d %d %d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c" EPZS Subpel ME                    : %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c" EPZS Subpel ME BiPred             : %s\0A\00", align 1
@start_me_refinement_hp = common dso_local local_unnamed_addr global i32 0, align 4
@start_me_refinement_qp = common dso_local local_unnamed_addr global i32 0, align 4
@search_point_hp = internal unnamed_addr constant [10 x [2 x i16]] [[2 x i16] zeroinitializer, [2 x i16] [i16 -2, i16 0], [2 x i16] [i16 0, i16 2], [2 x i16] [i16 2, i16 0], [2 x i16] [i16 0, i16 -2], [2 x i16] [i16 -2, i16 2], [2 x i16] [i16 2, i16 2], [2 x i16] [i16 2, i16 -2], [2 x i16] [i16 -2, i16 -2], [2 x i16] [i16 -2, i16 2]], align 16
@search_point_qp = internal unnamed_addr constant [10 x [2 x i16]] [[2 x i16] zeroinitializer, [2 x i16] [i16 -1, i16 0], [2 x i16] [i16 0, i16 1], [2 x i16] [i16 1, i16 0], [2 x i16] [i16 0, i16 -1], [2 x i16] [i16 -1, i16 1], [2 x i16] [i16 1, i16 1], [2 x i16] [i16 1, i16 -1], [2 x i16] [i16 -1, i16 -1], [2 x i16] [i16 -1, i16 1]], align 16
@color_formats = common dso_local local_unnamed_addr global i32 0, align 4
@top_pic = common dso_local local_unnamed_addr global ptr null, align 8
@bottom_pic = common dso_local local_unnamed_addr global ptr null, align 8
@frame_pic = common dso_local local_unnamed_addr global ptr null, align 8
@frame_pic_1 = common dso_local local_unnamed_addr global ptr null, align 8
@frame_pic_2 = common dso_local local_unnamed_addr global ptr null, align 8
@frame_pic_3 = common dso_local local_unnamed_addr global ptr null, align 8
@frame_pic_si = common dso_local local_unnamed_addr global ptr null, align 8
@Bit_Buffer = common dso_local local_unnamed_addr global ptr null, align 8
@imgY_org = common dso_local local_unnamed_addr global ptr null, align 8
@imgUV_org = common dso_local local_unnamed_addr global ptr null, align 8
@imgY_sub_tmp = common dso_local local_unnamed_addr global ptr null, align 8
@PicPos = common dso_local local_unnamed_addr global ptr null, align 8
@log2_max_frame_num_minus4 = common dso_local local_unnamed_addr global i32 0, align 4
@log2_max_pic_order_cnt_lsb_minus4 = common dso_local local_unnamed_addr global i32 0, align 4
@me_tot_time = common dso_local local_unnamed_addr global i64 0, align 8
@me_time = common dso_local local_unnamed_addr global i64 0, align 8
@dsr_new_search_range = common dso_local local_unnamed_addr global i32 0, align 4
@mb_adaptive = common dso_local local_unnamed_addr global i32 0, align 4
@MBPairIsField = common dso_local local_unnamed_addr global i32 0, align 4
@wp_luma_round = common dso_local local_unnamed_addr global i32 0, align 4
@wp_chroma_round = common dso_local local_unnamed_addr global i32 0, align 4
@imgY_org_top = common dso_local local_unnamed_addr global ptr null, align 8
@imgY_org_bot = common dso_local local_unnamed_addr global ptr null, align 8
@imgUV_org_top = common dso_local local_unnamed_addr global ptr null, align 8
@imgUV_org_bot = common dso_local local_unnamed_addr global ptr null, align 8
@imgY_org_frm = common dso_local local_unnamed_addr global ptr null, align 8
@imgUV_org_frm = common dso_local local_unnamed_addr global ptr null, align 8
@imgY_com = common dso_local local_unnamed_addr global ptr null, align 8
@imgUV_com = common dso_local local_unnamed_addr global ptr null, align 8
@direct_ref_idx = common dso_local local_unnamed_addr global ptr null, align 8
@direct_pdir = common dso_local local_unnamed_addr global ptr null, align 8
@pixel_map = common dso_local local_unnamed_addr global ptr null, align 8
@refresh_map = common dso_local local_unnamed_addr global ptr null, align 8
@intras = common dso_local local_unnamed_addr global i32 0, align 4
@frame_ctr = common dso_local local_unnamed_addr global [5 x i32] zeroinitializer, align 16
@frame_no = common dso_local local_unnamed_addr global i32 0, align 4
@nextP_tr_fld = common dso_local local_unnamed_addr global i32 0, align 4
@nextP_tr_frm = common dso_local local_unnamed_addr global i32 0, align 4
@tot_time = common dso_local local_unnamed_addr global i64 0, align 8
@errortext = common dso_local local_unnamed_addr global [300 x i8] zeroinitializer, align 16
@b8_ipredmode8x8 = common dso_local local_unnamed_addr global [4 x [4 x i8]] zeroinitializer, align 16
@b8_intra_pred_modes8x8 = common dso_local local_unnamed_addr global [16 x i8] zeroinitializer, align 16
@gop_structure = common dso_local local_unnamed_addr global ptr null, align 8
@rdopt = common dso_local local_unnamed_addr global ptr null, align 8
@rddata_top_frame_mb = common dso_local local_unnamed_addr global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_frame_mb = common dso_local local_unnamed_addr global %struct.RD_DATA zeroinitializer, align 8
@rddata_top_field_mb = common dso_local local_unnamed_addr global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_field_mb = common dso_local local_unnamed_addr global %struct.RD_DATA zeroinitializer, align 8
@p_stat = common dso_local local_unnamed_addr global ptr null, align 8
@p_log = common dso_local local_unnamed_addr global ptr null, align 8
@p_trace = common dso_local local_unnamed_addr global ptr null, align 8
@p_in = common dso_local local_unnamed_addr global i32 0, align 4
@p_dec = common dso_local local_unnamed_addr global i32 0, align 4
@mb16x16_cost_frame = common dso_local local_unnamed_addr global ptr null, align 8
@Bytes_After_Header = common dso_local local_unnamed_addr global i32 0, align 4
@encode_one_macroblock = common dso_local local_unnamed_addr global ptr null, align 8
@lrec = common dso_local local_unnamed_addr global ptr null, align 8
@lrec_uv = common dso_local local_unnamed_addr global ptr null, align 8
@si_frame_indicator = common dso_local local_unnamed_addr global i32 0, align 4
@sp2_frame_indicator = common dso_local local_unnamed_addr global i32 0, align 4
@number_sp2_frames = common dso_local local_unnamed_addr global i32 0, align 4
@giRDOpt_B8OnlyFlag = common dso_local local_unnamed_addr global i32 0, align 4
@imgY_tmp = common dso_local local_unnamed_addr global ptr null, align 8
@imgUV_tmp = common dso_local local_unnamed_addr global [2 x ptr] zeroinitializer, align 16
@frameNuminGOP = common dso_local local_unnamed_addr global i32 0, align 4
@redundant_coding = common dso_local local_unnamed_addr global i32 0, align 4
@key_frame = common dso_local local_unnamed_addr global i32 0, align 4
@redundant_ref_idx = common dso_local local_unnamed_addr global i32 0, align 4
@img_pad_size_uv_x = common dso_local local_unnamed_addr global i32 0, align 4
@img_pad_size_uv_y = common dso_local local_unnamed_addr global i32 0, align 4
@chroma_mask_mv_y = common dso_local local_unnamed_addr global i8 0, align 1
@chroma_mask_mv_x = common dso_local local_unnamed_addr global i8 0, align 1
@chroma_shift_y = common dso_local local_unnamed_addr global i32 0, align 4
@chroma_shift_x = common dso_local local_unnamed_addr global i32 0, align 4
@shift_cr_x = common dso_local local_unnamed_addr global i32 0, align 4
@shift_cr_y = common dso_local local_unnamed_addr global i32 0, align 4
@img_padded_size_x = common dso_local local_unnamed_addr global i32 0, align 4
@img_cr_padded_size_x = common dso_local local_unnamed_addr global i32 0, align 4
@getNeighbour = common dso_local local_unnamed_addr global ptr null, align 8
@get_mb_block_pos = common dso_local local_unnamed_addr global ptr null, align 8
@pattern_data = internal unnamed_addr constant <{ <{ [4 x i32], [4 x i32], [4 x i32], [4 x i32], [8 x [4 x i32]] }>, [12 x [4 x i32]], [12 x [4 x i32]], [12 x [4 x i32]], [12 x [4 x i32]] }> <{ <{ [4 x i32], [4 x i32], [4 x i32], [4 x i32], [8 x [4 x i32]] }> <{ [4 x i32] [i32 0, i32 4, i32 3, i32 3], [4 x i32] [i32 4, i32 0, i32 0, i32 3], [4 x i32] [i32 0, i32 -4, i32 1, i32 3], [4 x i32] [i32 -4, i32 0, i32 2, i32 3], [8 x [4 x i32]] zeroinitializer }>, [12 x [4 x i32]] [[4 x i32] [i32 0, i32 4, i32 7, i32 3], [4 x i32] [i32 4, i32 4, i32 7, i32 5], [4 x i32] [i32 4, i32 0, i32 1, i32 3], [4 x i32] [i32 4, i32 -4, i32 1, i32 5], [4 x i32] [i32 0, i32 -4, i32 3, i32 3], [4 x i32] [i32 -4, i32 -4, i32 3, i32 5], [4 x i32] [i32 -4, i32 0, i32 5, i32 3], [4 x i32] [i32 -4, i32 4, i32 5, i32 5], [4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] zeroinitializer], [12 x [4 x i32]] [[4 x i32] [i32 -4, i32 4, i32 10, i32 5], [4 x i32] [i32 0, i32 8, i32 10, i32 8], [4 x i32] [i32 0, i32 4, i32 10, i32 7], [4 x i32] [i32 4, i32 4, i32 1, i32 5], [4 x i32] [i32 8, i32 0, i32 1, i32 8], [4 x i32] [i32 4, i32 0, i32 1, i32 7], [4 x i32] [i32 4, i32 -4, i32 4, i32 5], [4 x i32] [i32 0, i32 -8, i32 4, i32 8], [4 x i32] [i32 0, i32 -4, i32 4, i32 7], [4 x i32] [i32 -4, i32 -4, i32 7, i32 5], [4 x i32] [i32 -8, i32 0, i32 7, i32 8], [4 x i32] [i32 -4, i32 0, i32 7, i32 7]], [12 x [4 x i32]] [[4 x i32] [i32 0, i32 8, i32 6, i32 5], [4 x i32] [i32 4, i32 4, i32 0, i32 3], [4 x i32] [i32 8, i32 0, i32 0, i32 5], [4 x i32] [i32 4, i32 -4, i32 2, i32 3], [4 x i32] [i32 0, i32 -8, i32 2, i32 5], [4 x i32] [i32 -4, i32 -4, i32 4, i32 3], [4 x i32] [i32 -8, i32 0, i32 4, i32 5], [4 x i32] [i32 -4, i32 4, i32 6, i32 3], [4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] zeroinitializer], [12 x [4 x i32]] [[4 x i32] [i32 0, i32 8, i32 6, i32 12], [4 x i32] [i32 4, i32 4, i32 0, i32 12], [4 x i32] [i32 8, i32 0, i32 0, i32 12], [4 x i32] [i32 4, i32 -4, i32 2, i32 12], [4 x i32] [i32 0, i32 -8, i32 2, i32 12], [4 x i32] [i32 -4, i32 -4, i32 4, i32 12], [4 x i32] [i32 -8, i32 0, i32 4, i32 12], [4 x i32] [i32 -4, i32 4, i32 6, i32 12], [4 x i32] [i32 0, i32 2, i32 6, i32 12], [4 x i32] [i32 2, i32 0, i32 0, i32 12], [4 x i32] [i32 0, i32 -2, i32 2, i32 12], [4 x i32] [i32 -2, i32 0, i32 4, i32 12]] }>, align 16
@blk_parent = internal unnamed_addr constant [8 x i16] [i16 1, i16 1, i16 1, i16 1, i16 2, i16 4, i16 4, i16 5], align 16
@switch.table.EPZSInit.4 = private unnamed_addr constant [5 x ptr] [ptr @square, ptr @ediamond, ptr @ldiamond, ptr @sbdiamond, ptr @pmvfast], align 8
@switch.table.EPZSSubPelBlockSearchBiPred = private unnamed_addr constant [8 x i32] [i32 5, i32 8, i32 5, i32 poison, i32 poison, i32 6, i32 poison, i32 7], align 4
@switch.table.EPZSSubPelBlockSearchBiPred.5 = private unnamed_addr constant [8 x i32] [i32 5, i32 10, i32 7, i32 poison, i32 poison, i32 8, i32 poison, i32 9], align 4
@switch.table.EPZSSubPelBlockSearchBiPred.6 = private unnamed_addr constant [7 x i32] [i32 8, i32 5, i32 poison, i32 poison, i32 6, i32 poison, i32 7], align 4
@switch.table.EPZSSubPelBlockSearchBiPred.7 = private unnamed_addr constant [7 x i32] [i32 10, i32 7, i32 poison, i32 poison, i32 8, i32 poison, i32 9], align 4

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @allocEPZScolocated(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(40) ptr @calloc(i64 noundef 1, i64 noundef 40) #12 ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %0, ptr %i.c, align 4, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %1, ptr %i.d, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = sdiv i32 %1, 4
  %i.g = sdiv i32 %0, 4                           ; 3 uses
  %i.h = tail call i32 @get_mem4Dshort(ptr noundef nonnull %i.e, i32 noundef 2, i32 noundef %i.f, i32 noundef %i.g, i32 noundef 2) #13 ; 0 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.j = sdiv i32 %1, 8                           ; 2 uses
  %i.k = tail call i32 @get_mem4Dshort(ptr noundef nonnull %i.i, i32 noundef 2, i32 noundef %i.j, i32 noundef %i.g, i32 noundef 2) #13 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.m = tail call i32 @get_mem4Dshort(ptr noundef nonnull %i.l, i32 noundef 2, i32 noundef %i.j, i32 noundef %i.g, i32 noundef 2) #13 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 %2, ptr %i.a, align 8, !tbaa !16
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #3

declare i32 @get_mem4Dshort(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @freeEPZScolocated(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !15
  %i.e = sdiv i32 %i.d, 4
  tail call void @free_mem4Dshort(ptr noundef %i.b, i32 noundef 2, i32 noundef %i.e) #13
  %i.f = load i32, ptr %0, align 8, !tbaa !16
  %.not9 = icmp eq i32 %i.f, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.i = load i32, ptr %i.c, align 8, !tbaa !15
  %i.j = sdiv i32 %i.i, 8
  tail call void @free_mem4Dshort(ptr noundef %i.h, i32 noundef 2, i32 noundef %i.j) #13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.m = load i32, ptr %i.c, align 8, !tbaa !15
  %i.n = sdiv i32 %i.m, 8
  tail call void @free_mem4Dshort(ptr noundef %i.l, i32 noundef 2, i32 noundef %i.n) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @free(ptr noundef nonnull %0) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

declare void @free_mem4Dshort(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @allocEPZSpattern(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #12 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i32 %0, ptr %i.a, align 8, !tbaa !20
  %i.c = sext i32 %0 to i64
  %i.d = tail call noalias ptr @calloc(i64 noundef %i.c, i64 noundef 16) #12
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !23
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @freeEPZSpattern(ptr noundef captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  tail call void @free(ptr noundef %i.b) #13
  tail call void @free(ptr noundef nonnull %0) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @assignEPZSpattern(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !20
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [192 x i8], ptr @pattern_data, i64 %i.c
  %i.e = load i32, ptr @mv_rescale, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = insertelement <2 x i32> poison, i32 %i.e, i64 0
  %i.i = shufflevector <2 x i32> %i.h, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.l = load <2 x i32>, ptr %i.j, align 16, !tbaa !4
  %i.m = ashr <2 x i32> %i.l, %i.i
  store <2 x i32> %i.m, ptr %i.k, align 4, !tbaa !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = load <2 x i32>, ptr %i.n, align 8, !tbaa !4
  store <2 x i32> %i.p, ptr %i.o, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = load i32, ptr %0, align 8, !tbaa !20
  %i.r = sext i32 %i.q to i64
  %i.s = icmp slt i64 %indvars.iv.next, %i.r
  br i1 %i.s, label %bb.b, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %i.t, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %3, ptr %i.u, align 4, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.v, align 8, !tbaa !28
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @EPZSWindowPredictorInit(i16 noundef signext %0, ptr nofree noundef captures(none) %1, i16 noundef signext %2) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @input, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4120
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30
  %.not = icmp eq i32 %i.c, 0
  %i.d = select i1 %.not, i32 0, i32 2            ; 3 uses
  %i.e = icmp eq i16 %2, 0
  %i.f = sext i16 %0 to i32                       ; 4 uses
  %i.g = mul nsw i32 %i.f, %i.f                   ; 2 uses
  br i1 %i.e, label %.preheader, label %.preheader159

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0.i = phi i32 [ %i.h, %.preheader ], [ 0, %bb.a ] ; 3 uses
  %i.h = add nuw nsw i32 %.0.i, 1                 ; 2 uses
  %i.i = shl nuw i32 2, %.0.i
  %.not.i = icmp sgt i32 %i.i, %i.g
  br i1 %.not.i, label %RoundLog2.exit, label %.preheader, !llvm.loop !35

RoundLog2.exit:                                   ; preds = %.preheader
  %i.j = icmp samesign ugt i32 %.0.i, 2
  br i1 %i.j, label %.lr.ph142, label %.loopexit

.lr.ph142:                                        ; preds = %RoundLog2.exit
  %i.k = lshr i32 %i.h, 1
end_hunk_0
begin_hunk_1_@EPZSSubPelBlockSearchBiPred:bb.a
  store <2 x i16> %i.fu, ptr @weight2_cr, align 2, !tbaa !118
  store i16 %.sink502, ptr @offsetBi_cr, align 2, !tbaa !118
  %.in375 = add nsw i32 %i.fs, 1
  %i.fv = lshr i32 %.in375, 1
  %i.fw = trunc i32 %i.fv to i16
  br label %.sink.split565

bb.q:                                             ; preds = %bb.l
  %i.fx = load i32, ptr @chroma_log_weight_denom, align 4, !tbaa !4
  %i.fy = shl nuw i32 1, %i.fx
  %i.fz = trunc i32 %i.fy to i16                  ; 4 uses
  store i16 %i.fz, ptr @weight1_cr, align 2, !tbaa !118
  store i16 %i.fz, ptr getelementptr inbounds nuw (i8, ptr @weight1_cr, i64 2), align 2, !tbaa !118
  store i16 %i.fz, ptr @weight2_cr, align 2, !tbaa !118
  store i16 %i.fz, ptr getelementptr inbounds nuw (i8, ptr @weight2_cr, i64 2), align 2, !tbaa !118
  store i16 0, ptr @offsetBi_cr, align 2, !tbaa !118
  br label %.sink.split565

.sink.split565:                                   ; preds = %bb.q, %bb.p
  %.sink566 = phi i16 [ %i.fw, %bb.p ], [ 0, %bb.q ]
  store i16 %.sink566, ptr getelementptr inbounds nuw (i8, ptr @offsetBi_cr, i64 2), align 2, !tbaa !118
  br label %bb.r

bb.r:                                             ; preds = %.sink.split565, %bb.k
  %i.ga = load i16, ptr %8, align 2, !tbaa !118
  %i.gb = sext i16 %i.ga to i32
  %i.gc = add nsw i32 %i.an, %i.gb                ; 2 uses
  %i.gd = icmp sgt i32 %i.gc, 1
  %i.ge = add i32 %i.bv, 159                      ; 2 uses
  %i.gf = icmp slt i32 %i.gc, %i.ge
  %or.cond388 = select i1 %i.gd, i1 %i.gf, i1 false
  br i1 %or.cond388, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.gg = getelementptr inbounds nuw i8, ptr %8, i64 2
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !118
  %i.gi = sext i16 %i.gh to i32
  %i.gj = add nsw i32 %i.ap, %i.gi                ; 2 uses
  %i.gk = icmp sgt i32 %i.gj, 1
  %i.gl = add i32 %i.ca, 159
  %i.gm = icmp slt i32 %i.gj, %i.gl
  %or.cond390 = select i1 %i.gk, i1 %i.gm, i1 false
  br i1 %or.cond390, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %storemerge376 = phi i32 [ 1, %bb.t ], [ 0, %bb.s ]
  store i32 %storemerge376, ptr @bipred2_access_method, align 4, !tbaa !4
  %i.gn = load i16, ptr %9, align 2, !tbaa !118
  %i.go = sext i16 %i.gn to i32
  %i.gp = add nsw i32 %i.an, %i.go                ; 2 uses
  %i.gq = icmp sgt i32 %i.gp, 1
  %i.gr = icmp slt i32 %i.gp, %i.ge
  %or.cond392 = select i1 %i.gq, i1 %i.gr, i1 false
  br i1 %or.cond392, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gs = load i16, ptr %i.bb, align 2, !tbaa !118
  %i.gt = sext i16 %i.gs to i32
  %i.gu = add nsw i32 %i.ap, %i.gt                ; 2 uses
  %i.gv = icmp sgt i32 %i.gu, 1
  %i.gw = add i32 %i.ca, 159
  %i.gx = icmp slt i32 %i.gu, %i.gw
  %or.cond394 = select i1 %i.gv, i1 %i.gx, i1 false
  br i1 %or.cond394, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %storemerge377 = phi i32 [ 1, %bb.w ], [ 0, %bb.v ]
  store i32 %storemerge377, ptr @bipred1_access_method, align 4, !tbaa !4
  %i.gy = icmp slt i32 %i.as, 5
  br i1 %i.gy, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.x
  %i.gz = getelementptr inbounds nuw i8, ptr %8, i64 2
  %i.ha = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.hb = getelementptr inbounds nuw i8, ptr %7, i64 2
  %i.hc = sext i32 %i.as to i64
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.aa
  %indvars.iv = phi i64 [ %i.hc, %.lr.ph ], [ %indvars.iv.next, %bb.aa ] ; 3 uses
  %.0323458 = phi i32 [ %12, %.lr.ph ], [ %.1324, %bb.aa ] ; 3 uses
  %.0329456 = phi i32 [ 0, %.lr.ph ], [ %.1330, %bb.aa ] ; 2 uses
  %.0339455 = phi i32 [ 0, %.lr.ph ], [ %.1340, %bb.aa ]
  %.0343454 = phi i32 [ 2147483647, %.lr.ph ], [ %.1344, %bb.aa ] ; 2 uses
  %i.hd = load i16, ptr %8, align 2, !tbaa !118
  %i.he = sext i16 %i.hd to i32
  %i.hf = getelementptr inbounds [4 x i8], ptr @search_point_hp, i64 %indvars.iv ; 2 uses
  %i.hg = load i16, ptr %i.hf, align 4, !tbaa !118
  %i.hh = sext i16 %i.hg to i32
  %i.hi = add nsw i32 %i.hh, %i.he                ; 2 uses
  %i.hj = load i16, ptr %i.gz, align 2, !tbaa !118
  %i.hk = sext i16 %i.hj to i32
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hf, i64 2
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !118
  %i.hn = sext i16 %i.hm to i32
  %i.ho = add nsw i32 %i.hn, %i.hk                ; 2 uses
  %i.hp = load ptr, ptr @mvbits, align 8, !tbaa !145 ; 4 uses
  %i.hq = load i16, ptr %6, align 2, !tbaa !118
  %i.hr = sext i16 %i.hq to i32
  %i.hs = sub nsw i32 %i.hi, %i.hr
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.ht
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !4
  %i.hw = load i16, ptr %i.ha, align 2, !tbaa !118
  %i.hx = sext i16 %i.hw to i32
  %i.hy = sub nsw i32 %i.ho, %i.hx
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !4
  %i.ic = add nsw i32 %i.ib, %i.hv
  %i.id = mul nsw i32 %i.ic, %i.cd
  %i.ie = ashr i32 %i.id, 16
  %i.if = load i16, ptr %9, align 2, !tbaa !118
  %i.ig = sext i16 %i.if to i64
  %i.ih = load i16, ptr %7, align 2, !tbaa !118
  %i.ii = sext i16 %i.ih to i64
  %i.ij = sub nsw i64 %i.ig, %i.ii
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !4
  %i.im = load i16, ptr %i.bb, align 2, !tbaa !118
  %i.in = sext i16 %i.im to i64
  %i.io = load i16, ptr %i.hb, align 2, !tbaa !118
  %i.ip = sext i16 %i.io to i64
  %i.iq = sub nsw i64 %i.in, %i.ip
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !4
  %i.it = add nsw i32 %i.is, %i.il
  %i.iu = mul nsw i32 %i.it, %i.cd
  %i.iv = ashr i32 %i.iu, 16
  %i.iw = load ptr, ptr @computeBiPred, align 8, !tbaa !29
  %i.ix = add nsw i32 %i.hi, %i.an
  %i.iy = add nsw i32 %i.ho, %i.ap
  %i.iz = tail call i32 %i.iw(ptr noundef %0, i32 noundef %i.al, i32 noundef %i.aj, i32 noundef 2147483647, i32 noundef %i.ba, i32 noundef %i.be, i32 noundef %i.ix, i32 noundef %i.iy) #13
  %i.ja = add i32 %i.iz, %i.ie
  %i.jb = add i32 %i.ja, %i.iv                    ; 4 uses
  %i.jc = icmp slt i32 %i.jb, %.0323458
  %i.jd = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.jc, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.je = icmp slt i32 %i.jb, %.0343454
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.jb, i32 %.0343454)
  %spec.select395 = select i1 %i.je, i32 %i.jd, i32 %.0339455
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.1344 = phi i32 [ %spec.select, %bb.z ], [ %.0323458, %bb.y ]
  %.1340 = phi i32 [ %spec.select395, %bb.z ], [ %.0329456, %bb.y ] ; 4 uses
  %.1330 = phi i32 [ %.0329456, %bb.z ], [ %i.jd, %bb.y ] ; 9 uses
  %.1324 = phi i32 [ %.0323458, %bb.z ], [ %i.jb, %bb.y ] ; 7 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.jf = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %i.jf, 5
  br i1 %exitcond.not, label %._crit_edge, label %bb.y, !llvm.loop !185

._crit_edge:                                      ; preds = %bb.aa
  %i.jg = icmp ne i32 %.1330, 0                   ; 2 uses
  %i.jh = icmp ne i32 %.1340, 0
  %or.cond3 = select i1 %i.jg, i1 %i.jh, i1 false
  br i1 %or.cond3, label %bb.ab, label %._crit_edge.thread

bb.ab:                                            ; preds = %._crit_edge
  %i.ji = xor i32 %.1330, %.1340
  switch i32 %i.ji, label %.thread433 [
    i32 1, label %.lr.ph464
    i32 3, label %bb.ac
    i32 5, label %bb.ad
    i32 7, label %bb.ae
  ]

bb.ac:                                            ; preds = %bb.ab
  br label %.lr.ph464

bb.ad:                                            ; preds = %bb.ab
  br label %.lr.ph464

bb.ae:                                            ; preds = %bb.ab
  br label %.lr.ph464

._crit_edge.thread:                               ; preds = %bb.x, %._crit_edge
  %i.jj = phi i1 [ %i.jg, %._crit_edge ], [ false, %bb.x ]
  %.0323.lcssa525 = phi i32 [ %.1324, %._crit_edge ], [ %12, %bb.x ] ; 3 uses
  %.0329.lcssa523 = phi i32 [ %.1330, %._crit_edge ], [ 0, %bb.x ] ; 3 uses
  %.0339.lcssa522 = phi i32 [ %.1340, %._crit_edge ], [ 0, %bb.x ]
  %i.jk = add nsw i32 %.0329.lcssa523, %.0339.lcssa522 ; 4 uses
  %i.jl = icmp ult i32 %i.jk, 8
  %switch.maskindex = trunc i32 %i.jk to i8
  %switch.shifted = lshr i8 -89, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond570 = select i1 %i.jl, i1 %switch.lobit, i1 false
  br i1 %or.cond570, label %switch.lookup, label %bb.af

switch.lookup:                                    ; preds = %._crit_edge.thread
  %i.jm = zext nneg i32 %i.jk to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.EPZSSubPelBlockSearchBiPred, i64 %i.jm
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.jn = zext nneg i32 %i.jk to i64
  %switch.gep568 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.EPZSSubPelBlockSearchBiPred.5, i64 %i.jn
  %switch.load569 = load i32, ptr %switch.gep568, align 4
  br label %bb.af

bb.af:                                            ; preds = %switch.lookup, %._crit_edge.thread
  %.0321 = phi i32 [ %switch.load, %switch.lookup ], [ 5, %._crit_edge.thread ] ; 2 uses
  %.0 = phi i32 [ %switch.load569, %switch.lookup ], [ %i.ax, %._crit_edge.thread ] ; 2 uses
  br i1 %i.jj, label %.thread433, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jo = load i16, ptr %6, align 2, !tbaa !118
  %i.jp = sext i16 %i.jo to i32
  %i.jq = load i16, ptr %8, align 2, !tbaa !118   ; 2 uses
  %i.jr = sext i16 %i.jq to i32
  %i.js = sub nsw i32 %i.jp, %i.jr
  %i.jt = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.js, i1 true)
  %i.ju = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.jv = load i16, ptr %i.ju, align 2, !tbaa !118
  %i.jw = sext i16 %i.jv to i32
  %i.jx = getelementptr inbounds nuw i8, ptr %8, i64 2
  %i.jy = load i16, ptr %i.jx, align 2, !tbaa !118
  %i.jz = sext i16 %i.jy to i32
  %i.ka = sub nsw i32 %i.jw, %i.jz
  %i.kb = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.ka, i1 true)
  %i.kc = sub nsw i32 0, %i.kb
  %.not378 = icmp eq i32 %i.jt, %i.kc
  br i1 %.not378, label %.thread438, label %.thread433

.thread433:                                       ; preds = %bb.ab, %bb.ag, %bb.af
  %.0323.lcssa526 = phi i32 [ %.0323.lcssa525, %bb.af ], [ %.0323.lcssa525, %bb.ag ], [ %.1324, %bb.ab ] ; 2 uses
  %.0329.lcssa524 = phi i32 [ %.0329.lcssa523, %bb.af ], [ %.0329.lcssa523, %bb.ag ], [ %.1330, %bb.ab ] ; 2 uses
  %.0437 = phi i32 [ %.0, %bb.af ], [ %.0, %bb.ag ], [ %i.ax, %bb.ab ] ; 2 uses
  %.0321436 = phi i32 [ %.0321, %bb.af ], [ %.0321, %bb.ag ], [ 5, %bb.ab ] ; 2 uses
  %i.kd = icmp slt i32 %.0321436, %.0437
  br i1 %i.kd, label %.lr.ph464, label %._crit_edge465

.lr.ph464:                                        ; preds = %bb.ab, %bb.ac, %bb.ad, %bb.ae, %.thread433
  %.0321436534 = phi i32 [ %.0321436, %.thread433 ], [ 7, %bb.ae ], [ 5, %bb.ac ], [ 8, %bb.ad ], [ 6, %bb.ab ]
  %.0437533 = phi i32 [ %.0437, %.thread433 ], [ 8, %bb.ae ], [ 6, %bb.ac ], [ 9, %bb.ad ], [ 7, %bb.ab ]
  %.0329.lcssa524532 = phi i32 [ %.0329.lcssa524, %.thread433 ], [ %.1330, %bb.ae ], [ %.1330, %bb.ac ], [ %.1330, %bb.ad ], [ %.1330, %bb.ab ]
  %.0323.lcssa526531 = phi i32 [ %.0323.lcssa526, %.thread433 ], [ %.1324, %bb.ae ], [ %.1324, %bb.ac ], [ %.1324, %bb.ad ], [ %.1324, %bb.ab ]
  %i.ke = getelementptr inbounds nuw i8, ptr %8, i64 2
  %i.kf = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.kg = getelementptr inbounds nuw i8, ptr %7, i64 2
  %i.kh = zext nneg i32 %.0321436534 to i64
  %.pre505 = load ptr, ptr @mvbits, align 8, !tbaa !145
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph464, %bb.aj
  %i.ki = phi ptr [ %.pre505, %.lr.ph464 ], [ %i.mk, %bb.aj ] ; 5 uses
  %indvars.iv487 = phi i64 [ %i.kh, %.lr.ph464 ], [ %indvars.iv.next488, %bb.aj ] ; 3 uses
  %.2463 = phi i32 [ %.0323.lcssa526531, %.lr.ph464 ], [ %.3, %bb.aj ] ; 5 uses
  %.2331461 = phi i32 [ %.0329.lcssa524532, %.lr.ph464 ], [ %.3332, %bb.aj ] ; 2 uses
  %i.kj = load i16, ptr %8, align 2, !tbaa !118
  %i.kk = sext i16 %i.kj to i32
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr @search_point_hp, i64 %indvars.iv487 ; 2 uses
  %i.km = load i16, ptr %i.kl, align 4, !tbaa !118
  %i.kn = sext i16 %i.km to i32
  %i.ko = add nsw i32 %i.kn, %i.kk                ; 2 uses
  %i.kp = load i16, ptr %i.ke, align 2, !tbaa !118
  %i.kq = sext i16 %i.kp to i32
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kl, i64 2
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !118
  %i.kt = sext i16 %i.ks to i32
  %i.ku = add nsw i32 %i.kt, %i.kq                ; 2 uses
  %i.kv = load i16, ptr %6, align 2, !tbaa !118
  %i.kw = sext i16 %i.kv to i32
  %i.kx = sub nsw i32 %i.ko, %i.kw
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr inbounds [4 x i8], ptr %i.ki, i64 %i.ky
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !4
  %i.lb = load i16, ptr %i.kf, align 2, !tbaa !118
  %i.lc = sext i16 %i.lb to i32
  %i.ld = sub nsw i32 %i.ku, %i.lc
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr inbounds [4 x i8], ptr %i.ki, i64 %i.le
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !4
  %i.lh = add nsw i32 %i.lg, %i.la
  %i.li = mul nsw i32 %i.lh, %i.cd
  %i.lj = ashr i32 %i.li, 16
  %i.lk = load i16, ptr %9, align 2, !tbaa !118
  %i.ll = sext i16 %i.lk to i64
  %i.lm = load i16, ptr %7, align 2, !tbaa !118
  %i.ln = sext i16 %i.lm to i64
  %i.lo = sub nsw i64 %i.ll, %i.ln
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.ki, i64 %i.lo
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !4
  %i.lr = load i16, ptr %i.bb, align 2, !tbaa !118
  %i.ls = sext i16 %i.lr to i64
  %i.lt = load i16, ptr %i.kg, align 2, !tbaa !118
  %i.lu = sext i16 %i.lt to i64
  %i.lv = sub nsw i64 %i.ls, %i.lu
  %i.lw = getelementptr inbounds [4 x i8], ptr %i.ki, i64 %i.lv
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !4
  %i.ly = add nsw i32 %i.lx, %i.lq
  %i.lz = mul nsw i32 %i.ly, %i.cd
  %i.ma = ashr i32 %i.lz, 16
  %i.mb = add nsw i32 %i.ma, %i.lj                ; 3 uses
  %.not386 = icmp slt i32 %i.mb, %.2463
  br i1 %.not386, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.mc = load ptr, ptr @computeBiPred, align 8, !tbaa !29
  %i.md = sub nsw i32 %.2463, %i.mb
  %i.me = add nsw i32 %i.ko, %i.an
  %i.mf = add nsw i32 %i.ku, %i.ap
  %i.mg = tail call i32 %i.mc(ptr noundef %0, i32 noundef %i.al, i32 noundef %i.aj, i32 noundef %i.md, i32 noundef %i.ba, i32 noundef %i.be, i32 noundef %i.me, i32 noundef %i.mf) #13
  %i.mh = add nsw i32 %i.mg, %i.mb                ; 2 uses
  %i.mi = icmp slt i32 %i.mh, %.2463
  %i.mj = trunc nuw i64 %indvars.iv487 to i32
  %spec.select396 = select i1 %i.mi, i32 %i.mj, i32 %.2331461
  %spec.select397 = tail call i32 @llvm.smin.i32(i32 %i.mh, i32 %.2463)
  %.pre = load ptr, ptr @mvbits, align 8, !tbaa !145
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.mk = phi ptr [ %i.ki, %bb.ah ], [ %.pre, %bb.ai ]
  %.3332 = phi i32 [ %.2331461, %bb.ah ], [ %spec.select396, %bb.ai ] ; 2 uses
  %.3 = phi i32 [ %.2463, %bb.ah ], [ %spec.select397, %bb.ai ] ; 2 uses
  %indvars.iv.next488 = add nuw nsw i64 %indvars.iv487, 1 ; 2 uses
  %lftr.wideiv490 = trunc i64 %indvars.iv.next488 to i32
  %exitcond491.not = icmp eq i32 %.0437533, %lftr.wideiv490
  br i1 %exitcond491.not, label %._crit_edge465, label %bb.ah, !llvm.loop !186

._crit_edge465:                                   ; preds = %bb.aj, %.thread433
  %.2331.lcssa = phi i32 [ %.0329.lcssa524, %.thread433 ], [ %.3332, %bb.aj ] ; 2 uses
  %.2.lcssa = phi i32 [ %.0323.lcssa526, %.thread433 ], [ %.3, %bb.aj ] ; 2 uses
  %.not379 = icmp eq i32 %.2331.lcssa, 0
  %.pre506 = load i16, ptr %8, align 2, !tbaa !118 ; 2 uses
  br i1 %.not379, label %.thread438, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge465
  %i.ml = sext i32 %.2331.lcssa to i64
  %i.mm = getelementptr inbounds [4 x i8], ptr @search_point_hp, i64 %i.ml ; 2 uses
  %i.mn = load i16, ptr %i.mm, align 4, !tbaa !118
  %i.mo = add i16 %.pre506, %i.mn                 ; 2 uses
  store i16 %i.mo, ptr %8, align 2, !tbaa !118
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 2
  %i.mq = load i16, ptr %i.mp, align 2, !tbaa !118
  %i.mr = getelementptr inbounds nuw i8, ptr %8, i64 2 ; 2 uses
  %i.ms = load i16, ptr %i.mr, align 2, !tbaa !118
  %i.mt = add i16 %i.ms, %i.mq
  store i16 %i.mt, ptr %i.mr, align 2, !tbaa !118
  br label %.thread438

.thread438:                                       ; preds = %bb.ag, %bb.ak, %._crit_edge465
  %i.mu = phi i16 [ %.pre506, %._crit_edge465 ], [ %i.mo, %bb.ak ], [ %i.jq, %bb.ag ]
  %.4442 = phi i32 [ %.2.lcssa, %._crit_edge465 ], [ %.2.lcssa, %bb.ak ], [ %.0323.lcssa525, %bb.ag ]
  %i.mv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @computeBiPred2, i64 16), align 16
  %i.mw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @computeBiPred1, i64 16), align 16
  %i.mx = select i1 %.not, ptr %i.mw, ptr %i.mv
  store ptr %i.mx, ptr @computeBiPred, align 8, !tbaa !29
  %i.my = sext i16 %i.mu to i32
  %i.mz = add nsw i32 %i.an, %i.my                ; 2 uses
  %i.na = icmp sgt i32 %i.mz, 0
  %i.nb = icmp slt i32 %i.mz, %i.bw
  %or.cond398 = select i1 %i.na, i1 %i.nb, i1 false
  br i1 %or.cond398, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.thread438
  %i.nc = getelementptr inbounds nuw i8, ptr %8, i64 2
  %i.nd = load i16, ptr %i.nc, align 2, !tbaa !118
  %i.ne = sext i16 %i.nd to i32
  %i.nf = add nsw i32 %i.ap, %i.ne                ; 2 uses
  %i.ng = icmp sgt i32 %i.nf, 0
  %i.nh = icmp slt i32 %i.nf, %i.cb
  %or.cond399 = select i1 %i.ng, i1 %i.nh, i1 false
  br i1 %or.cond399, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al, %.thread438
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  %storemerge380 = phi i32 [ 1, %bb.am ], [ 0, %bb.al ]
  store i32 %storemerge380, ptr @bipred2_access_method, align 4, !tbaa !4
  %i.ni = load i16, ptr %9, align 2, !tbaa !118
  %i.nj = sext i16 %i.ni to i32
  %i.nk = add nsw i32 %i.an, %i.nj                ; 2 uses
  %i.nl = icmp sgt i32 %i.nk, 0
  %i.nm = icmp slt i32 %i.nk, %i.bw
  %or.cond400 = select i1 %i.nl, i1 %i.nm, i1 false
  br i1 %or.cond400, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.nn = load i16, ptr %i.bb, align 2, !tbaa !118
  %i.no = sext i16 %i.nn to i32
  %i.np = add nsw i32 %i.ap, %i.no                ; 2 uses
  %i.nq = icmp sgt i32 %i.np, 0
  %i.nr = icmp slt i32 %i.np, %i.cb
  %or.cond401 = select i1 %i.nq, i1 %i.nr, i1 false
  br i1 %or.cond401, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %storemerge381 = phi i32 [ 1, %bb.ap ], [ 0, %bb.ao ]
  store i32 %storemerge381, ptr @bipred1_access_method, align 4, !tbaa !4
  %i.ns = load i32, ptr @start_me_refinement_qp, align 4, !tbaa !4 ; 3 uses
  %.not382 = icmp eq i32 %i.ns, 0
  %spec.select402 = select i1 %.not382, i32 2147483647, i32 %.4442 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !4  ; 4 uses
  %i.nv = icmp slt i32 %i.ns, 5
  br i1 %i.nv, label %.lr.ph474, label %._crit_edge475.thread

.lr.ph474:                                        ; preds = %bb.aq
  %i.nw = getelementptr inbounds nuw i8, ptr %8, i64 2
  %i.nx = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.ny = getelementptr inbounds nuw i8, ptr %7, i64 2
  %i.nz = sext i32 %i.ns to i64
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph474, %bb.at
  %indvars.iv492 = phi i64 [ %i.nz, %.lr.ph474 ], [ %indvars.iv.next493, %bb.at ] ; 3 uses
  %.6472 = phi i32 [ %spec.select402, %.lr.ph474 ], [ %.7, %bb.at ] ; 3 uses
  %.5334470 = phi i32 [ 0, %.lr.ph474 ], [ %.6335, %bb.at ] ; 2 uses
  %.2341469 = phi i32 [ 0, %.lr.ph474 ], [ %.3342, %bb.at ]
  %.2345468 = phi i32 [ 2147483647, %.lr.ph474 ], [ %.3346, %bb.at ] ; 2 uses
  %i.oa = load i16, ptr %8, align 2, !tbaa !118
  %i.ob = sext i16 %i.oa to i32
  %i.oc = getelementptr inbounds [4 x i8], ptr @search_point_qp, i64 %indvars.iv492 ; 2 uses
  %i.od = load i16, ptr %i.oc, align 4, !tbaa !118
  %i.oe = sext i16 %i.od to i32
  %i.of = add nsw i32 %i.oe, %i.ob                ; 2 uses
  %i.og = load i16, ptr %i.nw, align 2, !tbaa !118
  %i.oh = sext i16 %i.og to i32
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oc, i64 2
  %i.oj = load i16, ptr %i.oi, align 2, !tbaa !118
  %i.ok = sext i16 %i.oj to i32
  %i.ol = add nsw i32 %i.ok, %i.oh                ; 2 uses
  %i.om = load ptr, ptr @mvbits, align 8, !tbaa !145 ; 4 uses
  %i.on = load i16, ptr %6, align 2, !tbaa !118
  %i.oo = sext i16 %i.on to i32
  %i.op = sub nsw i32 %i.of, %i.oo
  %i.oq = sext i32 %i.op to i64
  %i.or = getelementptr inbounds [4 x i8], ptr %i.om, i64 %i.oq
  %i.os = load i32, ptr %i.or, align 4, !tbaa !4
  %i.ot = load i16, ptr %i.nx, align 2, !tbaa !118
  %i.ou = sext i16 %i.ot to i32
  %i.ov = sub nsw i32 %i.ol, %i.ou
  %i.ow = sext i32 %i.ov to i64
  %i.ox = getelementptr inbounds [4 x i8], ptr %i.om, i64 %i.ow
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !4
  %i.oz = add nsw i32 %i.oy, %i.os
  %i.pa = mul nsw i32 %i.oz, %i.nu
  %i.pb = ashr i32 %i.pa, 16
  %i.pc = load i16, ptr %9, align 2, !tbaa !118
  %i.pd = sext i16 %i.pc to i64
  %i.pe = load i16, ptr %7, align 2, !tbaa !118
  %i.pf = sext i16 %i.pe to i64
  %i.pg = sub nsw i64 %i.pd, %i.pf
  %i.ph = getelementptr inbounds [4 x i8], ptr %i.om, i64 %i.pg
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !4
  %i.pj = load i16, ptr %i.bb, align 2, !tbaa !118
  %i.pk = sext i16 %i.pj to i64
  %i.pl = load i16, ptr %i.ny, align 2, !tbaa !118
  %i.pm = sext i16 %i.pl to i64
  %i.pn = sub nsw i64 %i.pk, %i.pm
  %i.po = getelementptr inbounds [4 x i8], ptr %i.om, i64 %i.pn
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !4
  %i.pq = add nsw i32 %i.pp, %i.pi
  %i.pr = mul nsw i32 %i.pq, %i.nu
  %i.ps = ashr i32 %i.pr, 16
  %i.pt = load ptr, ptr @computeBiPred, align 8, !tbaa !29
  %i.pu = add nsw i32 %i.of, %i.an
  %i.pv = add nsw i32 %i.ol, %i.ap
  %i.pw = tail call i32 %i.pt(ptr noundef %0, i32 noundef %i.al, i32 noundef %i.aj, i32 noundef 2147483647, i32 noundef %i.ba, i32 noundef %i.be, i32 noundef %i.pu, i32 noundef %i.pv) #13
  %i.px = add i32 %i.pw, %i.pb
  %i.py = add i32 %i.px, %i.ps                    ; 4 uses
  %i.pz = icmp slt i32 %i.py, %.6472
  %i.qa = trunc nsw i64 %indvars.iv492 to i32     ; 2 uses
  br i1 %i.pz, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.qb = icmp slt i32 %i.py, %.2345468
  %spec.select403 = tail call i32 @llvm.smin.i32(i32 %i.py, i32 %.2345468)
  %spec.select404 = select i1 %i.qb, i32 %i.qa, i32 %.2341469
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.3346 = phi i32 [ %spec.select403, %bb.as ], [ %.6472, %bb.ar ]
  %.3342 = phi i32 [ %spec.select404, %bb.as ], [ %.5334470, %bb.ar ] ; 4 uses
  %.6335 = phi i32 [ %.5334470, %bb.as ], [ %i.qa, %bb.ar ] ; 9 uses
  %.7 = phi i32 [ %.6472, %bb.as ], [ %i.py, %bb.ar ] ; 7 uses
  %indvars.iv.next493 = add nsw i64 %indvars.iv492, 1 ; 2 uses
  %i.qc = and i64 %indvars.iv.next493, 4294967295
  %exitcond496.not = icmp eq i64 %i.qc, 5
  br i1 %exitcond496.not, label %._crit_edge475, label %bb.ar, !llvm.loop !187

._crit_edge475:                                   ; preds = %bb.at
  %i.qd = icmp ne i32 %.6335, 0                   ; 2 uses
  %i.qe = icmp ne i32 %.3342, 0
  %or.cond5 = select i1 %i.qd, i1 %i.qe, i1 false
  br i1 %or.cond5, label %bb.au, label %._crit_edge475.thread

bb.au:                                            ; preds = %._crit_edge475
  %i.qf = xor i32 %.6335, %.3342
  switch i32 %i.qf, label %.thread444 [
    i32 1, label %.lr.ph482
    i32 3, label %bb.av
    i32 5, label %bb.aw
    i32 7, label %bb.ax
  ]

bb.av:                                            ; preds = %bb.au
  br label %.lr.ph482

bb.aw:                                            ; preds = %bb.au
  br label %.lr.ph482

bb.ax:                                            ; preds = %bb.au
  br label %.lr.ph482

._crit_edge475.thread:                            ; preds = %bb.aq, %._crit_edge475
  %i.qg = phi i1 [ %i.qd, %._crit_edge475 ], [ false, %bb.aq ]
  %.6.lcssa542 = phi i32 [ %.7, %._crit_edge475 ], [ %spec.select402, %bb.aq ] ; 3 uses
  %.5334.lcssa540 = phi i32 [ %.6335, %._crit_edge475 ], [ 0, %bb.aq ] ; 3 uses
  %.2341.lcssa539 = phi i32 [ %.3342, %._crit_edge475 ], [ 0, %bb.aq ]
  %i.qh = add nsw i32 %.5334.lcssa540, %.2341.lcssa539
  %switch.tableidx = add i32 %i.qh, -1            ; 4 uses
  %i.qi = icmp ult i32 %switch.tableidx, 7
  %switch.maskindex573 = trunc i32 %switch.tableidx to i8
  %switch.shifted574 = lshr i8 83, %switch.maskindex573
  %switch.lobit575 = trunc i8 %switch.shifted574 to i1
  %or.cond580 = select i1 %i.qi, i1 %switch.lobit575, i1 false
  br i1 %or.cond580, label %switch.lookup572, label %bb.ay

switch.lookup572:                                 ; preds = %._crit_edge475.thread
  %i.qj = zext nneg i32 %switch.tableidx to i64
  %switch.gep576 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.EPZSSubPelBlockSearchBiPred.6, i64 %i.qj
  %switch.load577 = load i32, ptr %switch.gep576, align 4
  %i.qk = zext nneg i32 %switch.tableidx to i64
  %switch.gep578 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.EPZSSubPelBlockSearchBiPred.7, i64 %i.qk
  %switch.load579 = load i32, ptr %switch.gep578, align 4
  br label %bb.ay

bb.ay:                                            ; preds = %switch.lookup572, %._crit_edge475.thread
  %.1322 = phi i32 [ 5, %._crit_edge475.thread ], [ %switch.load577, %switch.lookup572 ] ; 2 uses
  %.1 = phi i32 [ %11, %._crit_edge475.thread ], [ %switch.load579, %switch.lookup572 ] ; 2 uses
  br i1 %i.qg, label %.thread444, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ql = load i16, ptr %6, align 2, !tbaa !118
  %i.qm = sext i16 %i.ql to i32
  %i.qn = load i16, ptr %8, align 2, !tbaa !118
  %i.qo = sext i16 %i.qn to i32
  %i.qp = sub nsw i32 %i.qm, %i.qo
  %i.qq = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.qp, i1 true)
  %i.qr = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.qs = load i16, ptr %i.qr, align 2, !tbaa !118
  %i.qt = sext i16 %i.qs to i32
  %i.qu = getelementptr inbounds nuw i8, ptr %8, i64 2
  %i.qv = load i16, ptr %i.qu, align 2, !tbaa !118
  %i.qw = sext i16 %i.qv to i32
  %i.qx = sub nsw i32 %i.qt, %i.qw
  %i.qy = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.qx, i1 true)
  %i.qz = sub nsw i32 0, %i.qy
  %.not383 = icmp eq i32 %i.qq, %i.qz
  br i1 %.not383, label %.thread449, label %.thread444

.thread444:                                       ; preds = %bb.au, %bb.az, %bb.ay
  %.6.lcssa543 = phi i32 [ %.6.lcssa542, %bb.ay ], [ %.6.lcssa542, %bb.az ], [ %.7, %bb.au ] ; 2 uses
  %.5334.lcssa541 = phi i32 [ %.5334.lcssa540, %bb.ay ], [ %.5334.lcssa540, %bb.az ], [ %.6335, %bb.au ] ; 2 uses
  %.1448 = phi i32 [ %.1, %bb.ay ], [ %.1, %bb.az ], [ %11, %bb.au ] ; 2 uses
  %.1322447 = phi i32 [ %.1322, %bb.ay ], [ %.1322, %bb.az ], [ 5, %bb.au ] ; 2 uses
  %i.ra = icmp slt i32 %.1322447, %.1448
  br i1 %i.ra, label %.lr.ph482, label %._crit_edge483

.lr.ph482:                                        ; preds = %bb.au, %bb.av, %bb.aw, %bb.ax, %.thread444
  %.1322447551 = phi i32 [ %.1322447, %.thread444 ], [ 7, %bb.ax ], [ 5, %bb.av ], [ 8, %bb.aw ], [ 6, %bb.au ]
  %.1448550 = phi i32 [ %.1448, %.thread444 ], [ 8, %bb.ax ], [ 6, %bb.av ], [ 9, %bb.aw ], [ 7, %bb.au ]
  %.5334.lcssa541549 = phi i32 [ %.5334.lcssa541, %.thread444 ], [ %.6335, %bb.ax ], [ %.6335, %bb.av ], [ %.6335, %bb.aw ], [ %.6335, %bb.au ]
  %.6.lcssa543548 = phi i32 [ %.6.lcssa543, %.thread444 ], [ %.7, %bb.ax ], [ %.7, %bb.av ], [ %.7, %bb.aw ], [ %.7, %bb.au ]
  %i.rb = getelementptr inbounds nuw i8, ptr %8, i64 2
  %i.rc = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.rd = getelementptr inbounds nuw i8, ptr %7, i64 2
  %i.re = zext nneg i32 %.1322447551 to i64
  %.pre508 = load ptr, ptr @mvbits, align 8, !tbaa !145
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph482, %bb.bc
  %i.rf = phi ptr [ %.pre508, %.lr.ph482 ], [ %i.th, %bb.bc ] ; 5 uses
  %indvars.iv497 = phi i64 [ %i.re, %.lr.ph482 ], [ %indvars.iv.next498, %bb.bc ] ; 3 uses
  %.8481 = phi i32 [ %.6.lcssa543548, %.lr.ph482 ], [ %.9, %bb.bc ] ; 5 uses
  %.7336479 = phi i32 [ %.5334.lcssa541549, %.lr.ph482 ], [ %.8337, %bb.bc ] ; 2 uses
  %i.rg = load i16, ptr %8, align 2, !tbaa !118
  %i.rh = sext i16 %i.rg to i32
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr @search_point_qp, i64 %indvars.iv497 ; 2 uses
  %i.rj = load i16, ptr %i.ri, align 4, !tbaa !118
  %i.rk = sext i16 %i.rj to i32
  %i.rl = add nsw i32 %i.rk, %i.rh                ; 2 uses
  %i.rm = load i16, ptr %i.rb, align 2, !tbaa !118
  %i.rn = sext i16 %i.rm to i32
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ri, i64 2
  %i.rp = load i16, ptr %i.ro, align 2, !tbaa !118
  %i.rq = sext i16 %i.rp to i32
  %i.rr = add nsw i32 %i.rq, %i.rn                ; 2 uses
  %i.rs = load i16, ptr %6, align 2, !tbaa !118
  %i.rt = sext i16 %i.rs to i32
  %i.ru = sub nsw i32 %i.rl, %i.rt
  %i.rv = sext i32 %i.ru to i64
  %i.rw = getelementptr inbounds [4 x i8], ptr %i.rf, i64 %i.rv
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !4
  %i.ry = load i16, ptr %i.rc, align 2, !tbaa !118
  %i.rz = sext i16 %i.ry to i32
  %i.sa = sub nsw i32 %i.rr, %i.rz
  %i.sb = sext i32 %i.sa to i64
  %i.sc = getelementptr inbounds [4 x i8], ptr %i.rf, i64 %i.sb
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !4
  %i.se = add nsw i32 %i.sd, %i.rx
  %i.sf = mul nsw i32 %i.se, %i.nu
  %i.sg = ashr i32 %i.sf, 16
  %i.sh = load i16, ptr %9, align 2, !tbaa !118
  %i.si = sext i16 %i.sh to i64
  %i.sj = load i16, ptr %7, align 2, !tbaa !118
  %i.sk = sext i16 %i.sj to i64
  %i.sl = sub nsw i64 %i.si, %i.sk
  %i.sm = getelementptr inbounds [4 x i8], ptr %i.rf, i64 %i.sl
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !4
  %i.so = load i16, ptr %i.bb, align 2, !tbaa !118
  %i.sp = sext i16 %i.so to i64
  %i.sq = load i16, ptr %i.rd, align 2, !tbaa !118
  %i.sr = sext i16 %i.sq to i64
  %i.ss = sub nsw i64 %i.sp, %i.sr
  %i.st = getelementptr inbounds [4 x i8], ptr %i.rf, i64 %i.ss
  %i.su = load i32, ptr %i.st, align 4, !tbaa !4
  %i.sv = add nsw i32 %i.su, %i.sn
  %i.sw = mul nsw i32 %i.sv, %i.nu
  %i.sx = ashr i32 %i.sw, 16
  %i.sy = add nsw i32 %i.sx, %i.sg                ; 3 uses
  %.not385 = icmp slt i32 %i.sy, %.8481
  br i1 %.not385, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.sz = load ptr, ptr @computeBiPred, align 8, !tbaa !29
  %i.ta = sub nsw i32 %.8481, %i.sy
  %i.tb = add nsw i32 %i.rl, %i.an
  %i.tc = add nsw i32 %i.rr, %i.ap
  %i.td = tail call i32 %i.sz(ptr noundef %0, i32 noundef %i.al, i32 noundef %i.aj, i32 noundef %i.ta, i32 noundef %i.ba, i32 noundef %i.be, i32 noundef %i.tb, i32 noundef %i.tc) #13
  %i.te = add nsw i32 %i.td, %i.sy                ; 2 uses
  %i.tf = icmp slt i32 %i.te, %.8481
  %i.tg = trunc nuw i64 %indvars.iv497 to i32
  %spec.select405 = select i1 %i.tf, i32 %i.tg, i32 %.7336479
  %spec.select406 = tail call i32 @llvm.smin.i32(i32 %i.te, i32 %.8481)
  %.pre507 = load ptr, ptr @mvbits, align 8, !tbaa !145
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.th = phi ptr [ %i.rf, %bb.ba ], [ %.pre507, %bb.bb ]
  %.8337 = phi i32 [ %.7336479, %bb.ba ], [ %spec.select405, %bb.bb ] ; 2 uses
  %.9 = phi i32 [ %.8481, %bb.ba ], [ %spec.select406, %bb.bb ] ; 2 uses
  %indvars.iv.next498 = add nuw nsw i64 %indvars.iv497, 1 ; 2 uses
  %lftr.wideiv500 = trunc i64 %indvars.iv.next498 to i32
  %exitcond501.not = icmp eq i32 %.1448550, %lftr.wideiv500
  br i1 %exitcond501.not, label %._crit_edge483, label %bb.ba, !llvm.loop !188

._crit_edge483:                                   ; preds = %bb.bc, %.thread444
  %.7336.lcssa = phi i32 [ %.5334.lcssa541, %.thread444 ], [ %.8337, %bb.bc ] ; 2 uses
  %.8.lcssa = phi i32 [ %.6.lcssa543, %.thread444 ], [ %.9, %bb.bc ] ; 2 uses
  %.not384 = icmp eq i32 %.7336.lcssa, 0
  br i1 %.not384, label %.thread449, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge483
  %i.ti = sext i32 %.7336.lcssa to i64
  %i.tj = getelementptr inbounds [4 x i8], ptr @search_point_qp, i64 %i.ti
  %i.tk = load <2 x i16>, ptr %i.tj, align 4, !tbaa !118
  %i.tl = load <2 x i16>, ptr %8, align 2, !tbaa !118
  %i.tm = add <2 x i16> %i.tl, %i.tk
  store <2 x i16> %i.tm, ptr %8, align 2, !tbaa !118
  br label %.thread449

.thread449:                                       ; preds = %bb.az, %bb.bd, %._crit_edge483
  %.10453 = phi i32 [ %.8.lcssa, %._crit_edge483 ], [ %.8.lcssa, %bb.bd ], [ %.6.lcssa542, %bb.az ]
  ret i32 %.10453
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 4}
!9 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!10 = !{!"p4 short", !11, i64 0}
!11 = !{!"any p4 pointer", !12, i64 0}
!12 = !{!"any p3 pointer", !13, i64 0}
!13 = !{!"any p2 pointer", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!9, !5, i64 8}
!16 = !{!9, !5, i64 0}
!17 = !{!9, !10, i64 16}
!18 = !{!9, !10, i64 24}
!19 = !{!9, !10, i64 32}
!20 = !{!21, !5, i64 0}
!21 = !{!"MEPatternNode", !5, i64 0, !14, i64 8, !5, i64 16, !5, i64 20, !22, i64 24}
!22 = !{!"p1 _ZTS13MEPatternNode", !14, i64 0}
!23 = !{!21, !14, i64 8}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!21, !5, i64 16}
!27 = !{!21, !5, i64 20}
!28 = !{!21, !22, i64 24}
!29 = !{!14, !14, i64 0}
!30 = !{!31, !5, i64 4120}
!31 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !6, i64 72, !6, i64 136, !6, i64 200, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !6, i64 280, !6, i64 536, !6, i64 792, !6, i64 1048, !6, i64 1304, !5, i64 1560, !5, i64 1564, !5, i64 1568, !5, i64 1572, !5, i64 1576, !5, i64 1580, !6, i64 1584, !5, i64 2084, !5, i64 2088, !5, i64 2092, !5, i64 2096, !5, i64 2100, !5, i64 2104, !5, i64 2108, !5, i64 2112, !5, i64 2116, !5, i64 2120, !5, i64 2124, !5, i64 2128, !5, i64 2132, !5, i64 2136, !5, i64 2140, !5, i64 2144, !5, i64 2148, !5, i64 2152, !5, i64 2156, !6, i64 2160, !6, i64 2416, !6, i64 2672, !5, i64 2928, !5, i64 2932, !5, i64 2936, !5, i64 2940, !5, i64 2944, !5, i64 2948, !5, i64 2952, !5, i64 2956, !5, i64 2960, !5, i64 2964, !5, i64 2968, !5, i64 2972, !6, i64 2976, !5, i64 4000, !5, i64 4004, !5, i64 4008, !5, i64 4012, !5, i64 4016, !5, i64 4020, !5, i64 4024, !5, i64 4028, !5, i64 4032, !5, i64 4036, !5, i64 4040, !5, i64 4044, !5, i64 4048, !5, i64 4052, !5, i64 4056, !5, i64 4060, !5, i64 4064, !5, i64 4068, !5, i64 4072, !5, i64 4076, !32, i64 4080, !5, i64 4088, !5, i64 4092, !5, i64 4096, !5, i64 4100, !5, i64 4104, !5, i64 4108, !5, i64 4112, !5, i64 4116, !5, i64 4120, !5, i64 4124, !5, i64 4128, !5, i64 4132, !5, i64 4136, !5, i64 4140, !5, i64 4144, !5, i64 4148, !5, i64 4152, !5, i64 4156, !5, i64 4160, !5, i64 4164, !5, i64 4168, !5, i64 4172, !5, i64 4176, !5, i64 4180, !5, i64 4184, !5, i64 4188, !6, i64 4192, !6, i64 4448, !5, i64 4704, !5, i64 4708, !5, i64 4712, !5, i64 4716, !5, i64 4720, !5, i64 4724, !5, i64 4728, !5, i64 4732, !5, i64 4736, !5, i64 4740, !5, i64 4744, !5, i64 4748, !5, i64 4752, !5, i64 4756, !5, i64 4760, !5, i64 4764, !5, i64 4768, !5, i64 4772, !6, i64 4776, !5, i64 5032, !5, i64 5036, !33, i64 5040, !33, i64 5048, !34, i64 5056, !33, i64 5064, !5, i64 5072, !5, i64 5076, !5, i64 5080, !5, i64 5084, !5, i64 5088, !5, i64 5092, !5, i64 5096, !5, i64 5100, !5, i64 5104, !5, i64 5108, !5, i64 5112, !5, i64 5116, !5, i64 5120, !5, i64 5124, !5, i64 5128, !5, i64 5132, !5, i64 5136, !32, i64 5144, !32, i64 5152, !32, i64 5160, !6, i64 5168, !5, i64 5208, !6, i64 5212, !5, i64 5244, !5, i64 5248, !5, i64 5252, !5, i64 5256, !5, i64 5260, !5, i64 5264, !5, i64 5268, !5, i64 5272, !5, i64 5276, !5, i64 5280, !5, i64 5284, !5, i64 5288, !6, i64 5296, !6, i64 5344, !6, i64 5392, !5, i64 5648, !5, i64 5652, !5, i64 5656, !5, i64 5660, !6, i64 5664, !6, i64 5704, !5, i64 5744, !5, i64 5748, !5, i64 5752, !5, i64 5756, !5, i64 5760, !5, i64 5764, !5, i64 5768, !5, i64 5772, !5, i64 5776, !6, i64 5780, !5, i64 5792}
end_hunk_1

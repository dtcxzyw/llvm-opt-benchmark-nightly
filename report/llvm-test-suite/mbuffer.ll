inline.NumInlined: 130
inline.NumDeleted: 29
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.decoded_picture_buffer = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], ptr, ptr, i32, i16, [4 x i32], [4 x i32], ptr, [16 x i8], [16 x i8], i32, i64, i32, ptr, ptr, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@Co_located = dso_local local_unnamed_addr global ptr null, align 8
@active_sps = common dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [16 x i8] c"undefined level\00", align 1
@dpb = common dso_local local_unnamed_addr global %struct.decoded_picture_buffer zeroinitializer, align 8
@img = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"Max. number of reference frames exceeded. Invalid stream.\00", align 1
@input = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [108 x i8] c"DPB size at specified level is smaller than the specified number of reference frames. This is not allowed.\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"init_dpb: dpb->fs\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"init_dpb: dpb->fs_ref\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"init_dpb: dpb->fs_ltref\00", align 1
@listX = common dso_local local_unnamed_addr global [6 x ptr] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [19 x i8] c"init_dpb: listX[i]\00", align 1
@listXsize = common dso_local local_unnamed_addr global [6 x i32] zeroinitializer, align 16
@.str.7 = private unnamed_addr constant [21 x i8] c"alloc_frame_store: f\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"alloc_storable_picture: s\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"alloc_storable_picture: s->mb_field\00", align 1
@img_pad_size_uv_x = common dso_local local_unnamed_addr global i32 0, align 4
@img_pad_size_uv_y = common dso_local local_unnamed_addr global i32 0, align 4
@log2_max_frame_num_minus4 = common dso_local local_unnamed_addr global i32 0, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"init_lists: fs_list0\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"init_lists: fs_listlt\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"init_lists: fs_list1\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"Invalid remapping_of_pic_nums_idc command\00", align 1
@p_dec = common dso_local local_unnamed_addr global i32 0, align 4
@.str.14 = private unnamed_addr constant [59 x i8] c"duplicate frame_num im short-term reference picture buffer\00", align 1
@.str.15 = private unnamed_addr constant [67 x i8] c"alloc_ref_pic_list_reordering_buffer: remapping_of_pic_nums_idc_l0\00", align 1
@.str.16 = private unnamed_addr constant [65 x i8] c"alloc_ref_pic_list_reordering_buffer: abs_diff_pic_num_minus1_l0\00", align 1
@.str.17 = private unnamed_addr constant [59 x i8] c"alloc_ref_pic_list_reordering_buffer: long_term_pic_idx_l0\00", align 1
@.str.18 = private unnamed_addr constant [67 x i8] c"alloc_ref_pic_list_reordering_buffer: remapping_of_pic_nums_idc_l1\00", align 1
@.str.19 = private unnamed_addr constant [65 x i8] c"alloc_ref_pic_list_reordering_buffer: abs_diff_pic_num_minus1_l1\00", align 1
@.str.20 = private unnamed_addr constant [59 x i8] c"alloc_ref_pic_list_reordering_buffer: long_term_pic_idx_l1\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"alloc_colocated: s\00", align 1
@enc_picture = external local_unnamed_addr global ptr, align 8
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
@log2_max_pic_order_cnt_lsb_minus4 = common dso_local local_unnamed_addr global i32 0, align 4
@me_tot_time = common dso_local local_unnamed_addr global i64 0, align 8
@me_time = common dso_local local_unnamed_addr global i64 0, align 8
@active_pps = common dso_local local_unnamed_addr global ptr null, align 8
@dsr_new_search_range = common dso_local local_unnamed_addr global i32 0, align 4
@mb_adaptive = common dso_local local_unnamed_addr global i32 0, align 4
@MBPairIsField = common dso_local local_unnamed_addr global i32 0, align 4
@wp_weight = common dso_local local_unnamed_addr global ptr null, align 8
@wp_offset = common dso_local local_unnamed_addr global ptr null, align 8
@wbp_weight = common dso_local local_unnamed_addr global ptr null, align 8
@luma_log_weight_denom = common dso_local local_unnamed_addr global i32 0, align 4
@chroma_log_weight_denom = common dso_local local_unnamed_addr global i32 0, align 4
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
@chroma_mask_mv_y = common dso_local local_unnamed_addr global i8 0, align 1
@chroma_mask_mv_x = common dso_local local_unnamed_addr global i8 0, align 1
@chroma_shift_y = common dso_local local_unnamed_addr global i32 0, align 4
@chroma_shift_x = common dso_local local_unnamed_addr global i32 0, align 4
@shift_cr_x = common dso_local local_unnamed_addr global i32 0, align 4
@shift_cr_y = common dso_local local_unnamed_addr global i32 0, align 4
@img_padded_size_x = common dso_local local_unnamed_addr global i32 0, align 4
@img_cr_padded_size_x = common dso_local local_unnamed_addr global i32 0, align 4
@start_me_refinement_hp = common dso_local local_unnamed_addr global i32 0, align 4
@start_me_refinement_qp = common dso_local local_unnamed_addr global i32 0, align 4
@.str.22 = private unnamed_addr constant [69 x i8] c"memory_management_control_operation = 0 not last operation in buffer\00", align 1
@.str.23 = private unnamed_addr constant [54 x i8] c"invalid memory_management_control_operation in buffer\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"field for long term marking not found\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"Cannot determine smallest POC, DPB empty.\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"invalid frame store type\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"Cannot output frame, DPB empty.\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"no frames for output available\00", align 1
@.str.32 = private unnamed_addr constant [38 x i8] c"output POC must be in ascending order\00", align 1
@str = private unnamed_addr constant [57 x i8] c"Warning: reference field for long term marking not found\00", align 1
@str.2 = private unnamed_addr constant [66 x i8] c"Warning: assigning long_term_frame_idx different from other field\00", align 1
@str.3 = private unnamed_addr constant [57 x i8] c"Warning: reference frame for long term marking not found\00", align 1
@switch.table.getDpbSize = private unnamed_addr constant [23 x i32] [i32 13369344, i32 12582912, i32 12582912, i32 12582912, i32 12582912, i32 13369344, i32 12582912, i32 12582912, i32 12582912, i32 12582912, i32 12582912, i32 13369344, i32 12582912, i32 12582912, i32 12582912, i32 12582912, i32 12582912, i32 12582912, i32 12582912, i32 12582912, i32 12582912, i32 12582912, i32 13369344], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @dump_dpb() local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -70778880, 17) i32 @getDpbSize() local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @active_sps, align 8, !tbaa !8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1140
  %i.c = load i32, ptr %i.b, align 4, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1144
  %i.e = load i32, ptr %i.d, align 4, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1148
  %i.g = load i32, ptr %i.f, align 4, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  switch i32 %i.i, label %bb.n [
    i32 9, label %bb.o
    i32 10, label %bb.o
    i32 11, label %bb.b
    i32 12, label %bb.e
    i32 13, label %bb.e
    i32 20, label %bb.e
    i32 21, label %bb.f
    i32 22, label %bb.g
    i32 30, label %bb.g
    i32 31, label %bb.h
    i32 32, label %bb.i
    i32 40, label %bb.k
    i32 41, label %bb.k
    i32 42, label %bb.j
    i32 50, label %bb.l
    i32 51, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !17
  %i.l = icmp ult i32 %i.k, 100
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !18
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.o

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  br label %bb.o

bb.g:                                             ; preds = %bb.a, %bb.a
  br label %bb.o

bb.h:                                             ; preds = %bb.a
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !17
  %0 = add i32 %i.q, -100                         ; 2 uses
  %1 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 31) ; 2 uses
  %2 = icmp ult i32 %1, 23
  br i1 %2, label %switch.lookup, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.a, %bb.a
  br label %bb.o

bb.l:                                             ; preds = %bb.a
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  tail call void @error(ptr noundef nonnull @.str, i32 noundef 500) #16
  br label %bb.o

switch.lookup:                                    ; preds = %bb.j
  %3 = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.getDpbSize, i64 %3
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.o

bb.o:                                             ; preds = %switch.lookup, %bb.c, %bb.a, %bb.a, %bb.k, %bb.d, %bb.n, %bb.m, %bb.l, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.0 = phi i32 [ 0, %bb.n ], [ 70778880, %bb.m ], [ 152064, %bb.a ], [ 152064, %bb.a ], [ 152064, %bb.d ], [ 912384, %bb.e ], [ 345600, %bb.c ], [ 42393600, %bb.l ], [ 1824768, %bb.f ], [ 3110400, %bb.g ], [ 12582912, %bb.k ], [ 6912000, %bb.h ], [ 7864320, %bb.i ], [ %switch.load, %switch.lookup ]
  %i.r = add i32 %i.c, 1
  %i.s = add i32 %i.e, 1
  %i.t = mul i32 %i.s, %i.r
  %.not = icmp eq i32 %i.g, 0
  %i.u = zext i1 %.not to i32
  %i.v = shl i32 %i.t, %i.u
  %i.w = mul i32 %i.v, 384
  %i.x = sdiv i32 %.0, %i.w
  %i.y = tail call noundef i32 @llvm.smin.i32(i32 %i.x, i32 16)
  ret i32 %i.y
}

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @check_num_ref() local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 36), align 4, !tbaa !19
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 32), align 8, !tbaa !24
  %i.c = add i32 %i.b, %i.a
  %i.d = load ptr, ptr @img, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !25
  %i.g = tail call noundef i32 @llvm.smax.i32(i32 %i.f, i32 1)
  %i.h = icmp sgt i32 %i.c, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef 500) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @init_dpb() local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 48), align 8, !tbaa !43
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free_dpb()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call i32 @getDpbSize()              ; 3 uses
  store i32 %i.b, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 24), align 8, !tbaa !44
  %i.c = load ptr, ptr @input, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !45
  %i.f = icmp ult i32 %i.b, %i.e
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @error(ptr noundef nonnull @.str.2, i32 noundef 1000) #16
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 24), align 8, !tbaa !44
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = phi i32 [ %.pre, %bb.d ], [ %i.b, %bb.c ]
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 28), align 4, !tbaa !48
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 56), align 8, !tbaa !49
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 32), align 8, !tbaa !24
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 36), align 4, !tbaa !19
  %i.h = zext i32 %i.g to i64
  %i.i = tail call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 8) #17 ; 2 uses
  store ptr %i.i, ptr @dpb, align 8, !tbaa !50
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 24), align 8, !tbaa !44
  %i.l = zext i32 %i.k to i64
  %i.m = tail call noalias ptr @calloc(i64 noundef %i.l, i64 noundef 8) #17 ; 2 uses
  store ptr %i.m, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 8), align 8, !tbaa !51
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 24), align 8, !tbaa !44
  %i.p = zext i32 %i.o to i64
  %i.q = tail call noalias ptr @calloc(i64 noundef %i.p, i64 noundef 8) #17 ; 2 uses
  store ptr %i.q, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 16), align 8, !tbaa !52
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 24), align 8, !tbaa !44
  %.not23 = icmp eq i32 %i.s, 0
  br i1 %.not23, label %.preheader18, label %.lr.ph

.preheader18:                                     ; preds = %alloc_frame_store.exit, %bb.k
  %i.t = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #17 ; 2 uses
  store ptr %i.t, ptr @listX, align 16, !tbaa !53
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.m, label %bb.n

.lr.ph:                                           ; preds = %bb.k, %alloc_frame_store.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %alloc_frame_store.exit ], [ 0, %bb.k ] ; 4 uses
  %i.v = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #17 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.l, label %alloc_frame_store.exit

bb.l:                                             ; preds = %.lr.ph
  tail call void @no_mem_exit(ptr noundef nonnull @.str.7) #16
  br label %alloc_frame_store.exit

alloc_frame_store.exit:                           ; preds = %.lr.ph, %bb.l
  %i.x = load ptr, ptr @dpb, align 8, !tbaa !50
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  store ptr %i.v, ptr %i.y, align 8, !tbaa !55
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 8), align 8, !tbaa !51
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  store ptr null, ptr %i.aa, align 8, !tbaa !55
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 16), align 8, !tbaa !52
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  store ptr null, ptr %i.ac, align 8, !tbaa !55
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 24), align 8, !tbaa !44
  %i.ae = zext i32 %i.ad to i64
  %i.af = icmp samesign ult i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %.lr.ph, label %.preheader18, !llvm.loop !56

bb.m:                                             ; preds = %.preheader18
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #16
  br label %bb.n

bb.n:                                             ; preds = %.preheader18, %bb.m
  %i.ag = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #17 ; 2 uses
  store ptr %i.ag, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 8), align 8, !tbaa !53
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ai = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #17 ; 2 uses
  store ptr %i.ai, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 16), align 16, !tbaa !53
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ak = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #17 ; 2 uses
  store ptr %i.ak, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 24), align 8, !tbaa !53
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #16
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.am = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #17 ; 2 uses
  store ptr %i.am, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 32), align 16, !tbaa !53
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ao = tail call noalias dereferenceable_or_null(264) ptr @calloc(i64 noundef 33, i64 noundef 8) #17 ; 3 uses
  store ptr %i.ao, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 40), align 8, !tbaa !53
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.w, label %.preheader.preheader

bb.w:                                             ; preds = %bb.v
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #16
  %.pre34 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 40), align 8, !tbaa !53
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.w, %bb.v
  %i.aq = phi ptr [ %.pre34, %bb.w ], [ %i.ao, %bb.v ]
  %i.ar = load ptr, ptr @listX, align 16, !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.ar, i8 0, i64 264, i1 false), !tbaa !58
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 8), align 8, !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.as, i8 0, i64 264, i1 false), !tbaa !58
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 16), align 16, !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.at, i8 0, i64 264, i1 false), !tbaa !58
end_hunk_0
begin_hunk_1_@unmark_long_term_field_for_reference_by_frame_idx:bb.a
  %i.gg = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !64 ; 3 uses
  %.not21.i105.us = icmp eq ptr %i.gh, null
  br i1 %.not21.i105.us, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 6380
  store i32 0, ptr %i.gi, align 4, !tbaa !101
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 6376
  store i32 0, ptr %i.gj, align 8, !tbaa !102
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu, %bb.ct
  %i.gk = and i32 %i.ge, 2
  %.not22.i106.us = icmp eq i32 %i.gk, 0
  br i1 %.not22.i106.us, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.gl = getelementptr inbounds nuw i8, ptr %i.dj, i64 56
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !65 ; 3 uses
  %.not23.i107.us = icmp eq ptr %i.gm, null
  br i1 %.not23.i107.us, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 6380
  store i32 0, ptr %i.gn, align 4, !tbaa !101
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 6376
  store i32 0, ptr %i.go, align 8, !tbaa !102
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %bb.cw
  %i.gp = icmp eq i32 %i.ge, 3
  br i1 %i.gp, label %bb.da, label %.sink.split168

bb.da:                                            ; preds = %bb.cz
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !64 ; 2 uses
  %.not24.i108.us = icmp eq ptr %i.gr, null
  br i1 %.not24.i108.us, label %.sink.split168.sink.split, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.gs = getelementptr inbounds nuw i8, ptr %i.dj, i64 56
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !65 ; 2 uses
  %.not25.i109.us = icmp eq ptr %i.gt, null
  br i1 %.not25.i109.us, label %.sink.split168.sink.split, label %.sink.split168.sink.split.sink.split

.sink.split168.sink.split.sink.split:             ; preds = %bb.db, %bb.cr, %bb.ci, %bb.bv, %bb.bm
  %.sink180 = phi ptr [ %i.fz, %bb.cr ], [ %i.fj, %bb.ci ], [ %i.es, %bb.bv ], [ %i.ec, %bb.bm ], [ %i.gr, %bb.db ] ; 2 uses
  %.sink178 = phi ptr [ %i.gb, %bb.cr ], [ %i.fl, %bb.ci ], [ %i.eu, %bb.bv ], [ %i.ee, %bb.bm ], [ %i.gt, %bb.db ] ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.sink180, i64 6380
  store i32 0, ptr %i.gu, align 4, !tbaa !101
  %i.gv = getelementptr inbounds nuw i8, ptr %.sink180, i64 6376
  store i32 0, ptr %i.gv, align 8, !tbaa !102
  %i.gw = getelementptr inbounds nuw i8, ptr %.sink178, i64 6380
  store i32 0, ptr %i.gw, align 4, !tbaa !101
  %i.gx = getelementptr inbounds nuw i8, ptr %.sink178, i64 6376
  store i32 0, ptr %i.gx, align 8, !tbaa !102
  br label %.sink.split168.sink.split

.sink.split168.sink.split:                        ; preds = %.sink.split168.sink.split.sink.split, %bb.da, %bb.db, %bb.cq, %bb.cr, %bb.ch, %bb.ci, %bb.bu, %bb.bv, %bb.bl, %bb.bm
  %i.gy = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !62 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 6380
  store i32 0, ptr %i.ha, align 4, !tbaa !101
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 6376
  store i32 0, ptr %i.hb, align 8, !tbaa !102
  br label %.sink.split168

.sink.split168:                                   ; preds = %.sink.split168.sink.split, %bb.cz, %bb.cp, %bb.cg, %bb.bt, %bb.bk
  %i.hc = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  store i32 0, ptr %i.hc, align 4, !tbaa !112
  store i32 0, ptr %i.dn, align 8, !tbaa !114
  br label %bb.dc

bb.dc:                                            ; preds = %.sink.split168, %bb.cs, %bb.bz, %bb.bc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.bc, !llvm.loop !322

._crit_edge:                                      ; preds = %bb.dc, %bb.bb, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @remove_frame_from_dpb(i32 noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @dpb, align 8, !tbaa !50
  %i.b = sext i32 %0 to i64                       ; 2 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55   ; 7 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !103
  switch i32 %i.e, label %bb.e [
    i32 3, label %bb.b
    i32 2, label %bb.c
    i32 1, label %bb.d
    i32 0, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !62
  tail call void @free_storable_picture(ptr noundef %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !64
  tail call void @free_storable_picture(ptr noundef %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !65
  tail call void @free_storable_picture(ptr noundef %i.k)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !65
  tail call void @free_storable_picture(ptr noundef %i.m)
  store ptr null, ptr %i.l, align 8, !tbaa !65
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !64
  tail call void @free_storable_picture(ptr noundef %i.o)
  store ptr null, ptr %i.n, align 8, !tbaa !64
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @error(ptr noundef nonnull @.str.29, i32 noundef 500) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.p = load ptr, ptr @dpb, align 8, !tbaa !50   ; 6 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.b
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !55
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 28), align 4, !tbaa !48
  %i.t = add i32 %i.s, -1                         ; 4 uses
  %i.u = icmp ult i32 %0, %i.t
  br i1 %i.u, label %.lr.ph.preheader, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.f
  %.pre = zext i32 %i.t to i64
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.v = zext i32 %0 to i64                       ; 4 uses
  %wide.trip.count = zext i32 %i.t to i64         ; 4 uses
  %i.w = sub nsw i64 %wide.trip.count, %i.v       ; 3 uses
  %min.iters.check = icmp ult i64 %i.w, 4
  br i1 %min.iters.check, label %.lr.ph.preheader28, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.w, -4                       ; 3 uses
  %i.x = add nsw i64 %n.vec, %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = add i64 %index, %i.v                     ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %wide.load = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !55
  %wide.load27 = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.y ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <2 x ptr> %wide.load, ptr %i.ac, align 8, !tbaa !55
  store <2 x ptr> %wide.load27, ptr %i.ad, align 8, !tbaa !55
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !323

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader28

.lr.ph.preheader28:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.v, %.lr.ph.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader28, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader28 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !55
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !55
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !324

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %wide.trip.count, %middle.block ], [ %wide.trip.count, %.lr.ph ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.pre-phi
  store ptr %i.r, ptr %i.ai, align 8, !tbaa !55
  store i32 %i.t, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 28), align 4, !tbaa !48
  ret void
}

declare void @write_stored_frame(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #13

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.smin.v2i64(<2 x i64>, <2 x i64>) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0,1) }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !5, i64 1140}
!11 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !6, i64 40, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !6, i64 108, !5, i64 1132, !5, i64 1136, !5, i64 1140, !5, i64 1144, !5, i64 1148, !5, i64 1152, !5, i64 1156, !5, i64 1160, !5, i64 1164, !5, i64 1168, !5, i64 1172, !5, i64 1176, !5, i64 1180, !12, i64 1184}
!12 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !13, i64 84, !5, i64 496, !13, i64 500, !5, i64 912, !5, i64 916, !5, i64 920, !5, i64 924, !5, i64 928, !5, i64 932, !5, i64 936, !5, i64 940, !5, i64 944}
!13 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !6, i64 12, !6, i64 140, !6, i64 268, !5, i64 396, !5, i64 400, !5, i64 404, !5, i64 408}
!14 = !{!11, !5, i64 1144}
!15 = !{!11, !5, i64 1148}
!16 = !{!11, !5, i64 24}
!17 = !{!11, !5, i64 4}
!18 = !{!11, !5, i64 20}
!19 = !{!20, !5, i64 36}
!20 = !{!"decoded_picture_buffer", !21, i64 0, !21, i64 8, !21, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !23, i64 56}
!21 = !{!"p2 _ZTS11frame_store", !22, i64 0}
!22 = !{!"any p2 pointer", !9, i64 0}
!23 = !{!"p1 _ZTS11frame_store", !9, i64 0}
!24 = !{!20, !5, i64 32}
!25 = !{!26, !5, i64 28}
!26 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !27, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !28, i64 128, !28, i64 136, !5, i64 144, !29, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !6, i64 208, !6, i64 4816, !6, i64 7376, !6, i64 8528, !6, i64 12624, !6, i64 13136, !31, i64 14160, !29, i64 14168, !29, i64 14176, !29, i64 14184, !31, i64 14192, !31, i64 14200, !9, i64 14208, !9, i64 14216, !33, i64 14224, !34, i64 14232, !34, i64 14240, !5, i64 14248, !5, i64 14252, !5, i64 14256, !5, i64 14260, !6, i64 14264, !5, i64 14328, !5, i64 14332, !5, i64 14336, !5, i64 14340, !5, i64 14344, !35, i64 14352, !5, i64 14360, !5, i64 14364, !5, i64 14368, !5, i64 14372, !36, i64 14376, !36, i64 14384, !36, i64 14392, !36, i64 14400, !6, i64 14408, !5, i64 14440, !5, i64 14444, !5, i64 14448, !5, i64 14452, !5, i64 14456, !5, i64 14460, !5, i64 14464, !5, i64 14468, !6, i64 14472, !5, i64 15240, !5, i64 15244, !5, i64 15248, !5, i64 15252, !5, i64 15256, !5, i64 15260, !5, i64 15264, !5, i64 15268, !5, i64 15272, !5, i64 15276, !5, i64 15280, !5, i64 15284, !5, i64 15288, !6, i64 15292, !5, i64 15296, !5, i64 15300, !6, i64 15304, !5, i64 15312, !5, i64 15316, !5, i64 15320, !5, i64 15324, !5, i64 15328, !5, i64 15332, !5, i64 15336, !5, i64 15340, !5, i64 15344, !5, i64 15348, !5, i64 15352, !5, i64 15356, !5, i64 15360, !5, i64 15364, !5, i64 15368, !5, i64 15372, !39, i64 15376, !5, i64 15384, !5, i64 15388, !5, i64 15392, !5, i64 15396, !5, i64 15400, !5, i64 15404, !5, i64 15408, !5, i64 15412, !5, i64 15416, !5, i64 15420, !5, i64 15424, !5, i64 15428, !5, i64 15432, !5, i64 15436, !5, i64 15440, !5, i64 15444, !5, i64 15448, !5, i64 15452, !5, i64 15456, !5, i64 15460, !5, i64 15464, !5, i64 15468, !5, i64 15472, !40, i64 15480, !41, i64 15488, !29, i64 15496, !40, i64 15504, !5, i64 15512, !5, i64 15516, !5, i64 15520, !5, i64 15524, !5, i64 15528, !5, i64 15532, !5, i64 15536, !5, i64 15540, !5, i64 15544, !5, i64 15548, !6, i64 15552, !6, i64 15576, !5, i64 15584, !5, i64 15588, !42, i64 15592, !5, i64 15596, !5, i64 15600, !5, i64 15604, !5, i64 15608, !5, i64 15612}
!27 = !{!"float", !6, i64 0}
!28 = !{!"p2 omnipotent char", !22, i64 0}
!29 = !{!"p3 int", !30, i64 0}
!30 = !{!"any p3 pointer", !22, i64 0}
!31 = !{!"p4 int", !32, i64 0}
!32 = !{!"any p4 pointer", !30, i64 0}
!33 = !{!"p1 _ZTS10macroblock", !9, i64 0}
!34 = !{!"p1 int", !9, i64 0}
!35 = !{!"double", !6, i64 0}
!36 = !{!"p6 short", !37, i64 0}
!37 = !{!"any p6 pointer", !38, i64 0}
!38 = !{!"any p5 pointer", !32, i64 0}
!39 = !{!"p1 _ZTS18DecRefPicMarking_s", !9, i64 0}
!40 = !{!"p2 double", !22, i64 0}
!41 = !{!"p3 double", !30, i64 0}
!42 = !{!"short", !6, i64 0}
!43 = !{!20, !5, i64 48}
!44 = !{!20, !5, i64 24}
!45 = !{!46, !5, i64 32}
!46 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !6, i64 72, !6, i64 136, !6, i64 200, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !6, i64 280, !6, i64 536, !6, i64 792, !6, i64 1048, !6, i64 1304, !5, i64 1560, !5, i64 1564, !5, i64 1568, !5, i64 1572, !5, i64 1576, !5, i64 1580, !6, i64 1584, !5, i64 2084, !5, i64 2088, !5, i64 2092, !5, i64 2096, !5, i64 2100, !5, i64 2104, !5, i64 2108, !5, i64 2112, !5, i64 2116, !5, i64 2120, !5, i64 2124, !5, i64 2128, !5, i64 2132, !5, i64 2136, !5, i64 2140, !5, i64 2144, !5, i64 2148, !5, i64 2152, !5, i64 2156, !6, i64 2160, !6, i64 2416, !6, i64 2672, !5, i64 2928, !5, i64 2932, !5, i64 2936, !5, i64 2940, !5, i64 2944, !5, i64 2948, !5, i64 2952, !5, i64 2956, !5, i64 2960, !5, i64 2964, !5, i64 2968, !5, i64 2972, !6, i64 2976, !5, i64 4000, !5, i64 4004, !5, i64 4008, !5, i64 4012, !5, i64 4016, !5, i64 4020, !5, i64 4024, !5, i64 4028, !5, i64 4032, !5, i64 4036, !5, i64 4040, !5, i64 4044, !5, i64 4048, !5, i64 4052, !5, i64 4056, !5, i64 4060, !5, i64 4064, !5, i64 4068, !5, i64 4072, !5, i64 4076, !35, i64 4080, !5, i64 4088, !5, i64 4092, !5, i64 4096, !5, i64 4100, !5, i64 4104, !5, i64 4108, !5, i64 4112, !5, i64 4116, !5, i64 4120, !5, i64 4124, !5, i64 4128, !5, i64 4132, !5, i64 4136, !5, i64 4140, !5, i64 4144, !5, i64 4148, !5, i64 4152, !5, i64 4156, !5, i64 4160, !5, i64 4164, !5, i64 4168, !5, i64 4172, !5, i64 4176, !5, i64 4180, !5, i64 4184, !5, i64 4188, !6, i64 4192, !6, i64 4448, !5, i64 4704, !5, i64 4708, !5, i64 4712, !5, i64 4716, !5, i64 4720, !5, i64 4724, !5, i64 4728, !5, i64 4732, !5, i64 4736, !5, i64 4740, !5, i64 4744, !5, i64 4748, !5, i64 4752, !5, i64 4756, !5, i64 4760, !5, i64 4764, !5, i64 4768, !5, i64 4772, !6, i64 4776, !5, i64 5032, !5, i64 5036, !34, i64 5040, !34, i64 5048, !47, i64 5056, !34, i64 5064, !5, i64 5072, !5, i64 5076, !5, i64 5080, !5, i64 5084, !5, i64 5088, !5, i64 5092, !5, i64 5096, !5, i64 5100, !5, i64 5104, !5, i64 5108, !5, i64 5112, !5, i64 5116, !5, i64 5120, !5, i64 5124, !5, i64 5128, !5, i64 5132, !5, i64 5136, !35, i64 5144, !35, i64 5152, !35, i64 5160, !6, i64 5168, !5, i64 5208, !6, i64 5212, !5, i64 5244, !5, i64 5248, !5, i64 5252, !5, i64 5256, !5, i64 5260, !5, i64 5264, !5, i64 5268, !5, i64 5272, !5, i64 5276, !5, i64 5280, !5, i64 5284, !5, i64 5288, !6, i64 5296, !6, i64 5344, !6, i64 5392, !5, i64 5648, !5, i64 5652, !5, i64 5656, !5, i64 5660, !6, i64 5664, !6, i64 5704, !5, i64 5744, !5, i64 5748, !5, i64 5752, !5, i64 5756, !5, i64 5760, !5, i64 5764, !5, i64 5768, !5, i64 5772, !5, i64 5776, !6, i64 5780, !5, i64 5792}
!47 = !{!"p1 omnipotent char", !9, i64 0}
!48 = !{!20, !5, i64 28}
!49 = !{!20, !23, i64 56}
!50 = !{!20, !21, i64 0}
!51 = !{!20, !21, i64 8}
!52 = !{!20, !21, i64 16}
!53 = !{!54, !54, i64 0}
!54 = !{!"p2 _ZTS16storable_picture", !22, i64 0}
!55 = !{!23, !23, i64 0}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!59, !59, i64 0}
!59 = !{!"p1 _ZTS16storable_picture", !9, i64 0}
!60 = !{!20, !5, i64 40}
!61 = !{!26, !5, i64 15428}
!62 = !{!63, !59, i64 40}
!63 = !{!"frame_store", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !59, i64 40, !59, i64 48, !59, i64 56}
!64 = !{!63, !59, i64 48}
!65 = !{!63, !59, i64 56}
!66 = distinct !{!66, !57}
!67 = !{!26, !5, i64 15536}
!68 = !{!26, !5, i64 15348}
!69 = !{!70, !47, i64 6480}
!70 = !{!"storable_picture", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !6, i64 24, !6, i64 1608, !6, i64 3192, !6, i64 4776, !5, i64 6360, !5, i64 6364, !5, i64 6368, !5, i64 6372, !5, i64 6376, !5, i64 6380, !5, i64 6384, !5, i64 6388, !5, i64 6392, !5, i64 6396, !5, i64 6400, !5, i64 6404, !5, i64 6408, !5, i64 6412, !5, i64 6416, !5, i64 6420, !5, i64 6424, !5, i64 6428, !5, i64 6432, !71, i64 6440, !72, i64 6448, !72, i64 6456, !73, i64 6464, !74, i64 6472, !47, i64 6480, !75, i64 6488, !76, i64 6496, !76, i64 6504, !72, i64 6512, !28, i64 6520, !28, i64 6528, !59, i64 6536, !59, i64 6544, !59, i64 6552, !5, i64 6560, !5, i64 6564, !5, i64 6568, !5, i64 6572, !5, i64 6576, !5, i64 6580, !5, i64 6584}
!71 = !{!"p2 short", !22, i64 0}
!72 = !{!"p4 short", !32, i64 0}
!73 = !{!"p5 short", !38, i64 0}
!74 = !{!"p3 short", !30, i64 0}
!75 = !{!"p3 omnipotent char", !30, i64 0}
!76 = !{!"p3 long long", !30, i64 0}
!77 = !{!70, !5, i64 0}
!78 = !{!70, !5, i64 6392}
!79 = !{!70, !5, i64 6396}
!80 = !{!70, !5, i64 6408}
!81 = !{!70, !5, i64 6412}
!82 = !{!70, !5, i64 6400}
!83 = !{!70, !5, i64 6404}
!84 = !{!26, !5, i64 15544}
!85 = !{!70, !5, i64 6416}
!86 = !{!26, !5, i64 15548}
!87 = !{!70, !5, i64 6420}
!88 = !{!70, !5, i64 6428}
!89 = !{!70, !5, i64 6432}
!90 = !{!70, !75, i64 6488}
!91 = !{!70, !76, i64 6496}
!92 = !{!70, !76, i64 6504}
!93 = !{!70, !72, i64 6512}
!94 = !{!70, !28, i64 6520}
!95 = !{!70, !28, i64 6528}
!96 = !{!70, !71, i64 6440}
!97 = !{!70, !72, i64 6448}
!98 = !{!70, !73, i64 6464}
!99 = !{!46, !5, i64 5772}
!100 = !{!70, !74, i64 6472}
!101 = !{!70, !5, i64 6380}
!102 = !{!70, !5, i64 6376}
!103 = !{!63, !5, i64 0}
!104 = !{!63, !5, i64 20}
!105 = !{!26, !5, i64 15332}
!106 = !{!63, !5, i64 24}
!107 = !{!70, !5, i64 6364}
!108 = distinct !{!108, !57}
!109 = !{!70, !5, i64 6372}
!110 = !{!70, !5, i64 6368}
!111 = distinct !{!111, !57}
!112 = !{!63, !5, i64 4}
!113 = distinct !{!113, !57}
!114 = !{!63, !5, i64 8}
!115 = distinct !{!115, !57}
!116 = distinct !{!116, !57}
!117 = distinct !{!117, !57}
!118 = distinct !{!118, !57}
!119 = distinct !{!119, !57}
!120 = distinct !{!120, !57}
!121 = distinct !{!121, !57}
!122 = distinct !{!122, !57}
!123 = distinct !{!123, !57}
!124 = distinct !{!124, !57}
!125 = distinct !{!125, !57, !126, !127}
!126 = !{!"llvm.loop.isvectorized", i32 1}
!127 = !{!"llvm.loop.unroll.runtime.disable"}
!128 = distinct !{!128, !129}
!129 = !{!"llvm.loop.unroll.disable"}
!130 = distinct !{!130, !57, !126}
!131 = !{!26, !5, i64 15324}
!132 = !{!70, !5, i64 4}
!133 = distinct !{!133, !57}
!134 = distinct !{!134, !57}
!135 = distinct !{!135, !57, !126, !127}
!136 = distinct !{!136, !129}
!137 = distinct !{!137, !57, !126, !127}
!138 = distinct !{!138, !129}
!139 = distinct !{!139, !57, !126}
!140 = distinct !{!140, !57, !126}
!141 = distinct !{!141, !57}
!142 = !{!26, !5, i64 15328}
!143 = !{!63, !5, i64 36}
!144 = distinct !{!144, !57}
!145 = distinct !{!145, !57}
!146 = distinct !{!146, !57, !126, !127}
!147 = distinct !{!147, !57, !127, !126}
end_hunk_1

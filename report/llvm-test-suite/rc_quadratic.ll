inline.NumInlined: 99
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], ptr, ptr, i32, i16, [4 x i32], [4 x i32], ptr, [16 x i8], [16 x i8], i32, i64, i32, ptr, ptr, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@img = external local_unnamed_addr global ptr, align 8
@input = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [28 x i8] c"init_global_buffers: (*prc)\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"rc_alloc: lprc->BUPFMAD\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"rc_alloc: lprc->BUCFMAD\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"rc_alloc: lprc->FCBUCFMAD\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"rc_alloc: lprc->FCBUPFMAD\00", align 1
@updateQP = common dso_local local_unnamed_addr global ptr null, align 8
@generic_RC = common dso_local local_unnamed_addr global ptr null, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [73 x i8] c"\0A RCUpdateMode=3 and HierarchicalCoding == 3 are currently not supported\00", align 1
@start_frame_no_in_this_IGOP = external local_unnamed_addr global i32, align 4
@gop_structure = common dso_local local_unnamed_addr global ptr null, align 8
@updateRCModel.m_rgRejected = internal global [21 x i32] zeroinitializer, align 16
@updateRCModel.error = internal unnamed_addr global [21 x double] zeroinitializer, align 16
@updateMADModel.PictureRejected = internal global [21 x i32] zeroinitializer, align 16
@updateMADModel.error = internal unnamed_addr global [21 x double] zeroinitializer, align 16
@active_sps = common dso_local local_unnamed_addr global ptr null, align 8
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
@start_me_refinement_hp = common dso_local local_unnamed_addr global i32 0, align 4
@start_me_refinement_qp = common dso_local local_unnamed_addr global i32 0, align 4
@diffy = common dso_local local_unnamed_addr global [16 x [16 x i32]] zeroinitializer, align 16
@qp_mbaff = common dso_local local_unnamed_addr global [2 x [2 x i32]] zeroinitializer, align 16
@delta_qp_mbaff = common dso_local local_unnamed_addr global [2 x [2 x i32]] zeroinitializer, align 16
@generic_RC_init = common dso_local local_unnamed_addr global ptr null, align 8
@generic_RC_best = common dso_local local_unnamed_addr global ptr null, align 8
@quadratic_RC = common dso_local local_unnamed_addr global ptr null, align 8
@quadratic_RC_init = common dso_local local_unnamed_addr global ptr null, align 8
@quadratic_RC_best = common dso_local local_unnamed_addr global ptr null, align 8
@switch.table.rc_init_seq = private unnamed_addr constant [3 x ptr] [ptr @updateQPRC1, ptr @updateQPRC2, ptr @updateQPRC3], align 8

; Function Attrs: nounwind uwtable
define dso_local void @rc_alloc(ptr noundef captures(none) initializes((0, 8)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 15352
  %i.c = load i32, ptr %i.b, align 8, !tbaa !10
  %i.d = load ptr, ptr @input, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 5128
  %i.f = load i32, ptr %i.e, align 8, !tbaa !29
  %i.g = udiv i32 %i.c, %i.f
  %i.h = tail call noalias dereferenceable_or_null(1600) ptr @malloc(i64 noundef 1600) #20 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !8
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #21
  %.pre = load ptr, ptr %0, align 8, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi ptr [ %.pre, %bb.b ], [ %i.h, %bb.a ] ; 21 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1424
  store double 1.000000e+00, ptr %i.k, align 8, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1400
  store double 1.000000e+00, ptr %i.l, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1512
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 1536
  store i32 0, ptr %i.n, align 8, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 1540
  store i32 0, ptr %i.o, align 4, !tbaa !38
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 1564
  store i32 0, ptr %i.p, align 4, !tbaa !39
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 1556
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store i32 2147483647, ptr %i.q, align 4, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 1560
  store i32 2147483647, ptr %i.r, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 1568
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.t = load ptr, ptr @input, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !42   ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 1384
  store i32 %i.v, ptr %i.w, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 1344
  store i32 %i.v, ptr %i.x, align 8, !tbaa !44
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 1456
  store i32 %i.v, ptr %i.y, align 8, !tbaa !45
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 1460
  store i32 %i.v, ptr %i.z, align 4, !tbaa !46
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 76
  store i32 %i.v, ptr %i.aa, align 4, !tbaa !47
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store i32 %i.v, ptr %i.ab, align 8, !tbaa !48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i32 51, ptr %i.ac, align 8, !tbaa !49
  %i.ad = load ptr, ptr @img, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 15452
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !50
  %i.ag = sub nsw i32 0, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 68
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !51
  %i.ai = sext i32 %i.g to i64                    ; 4 uses
  %i.aj = tail call noalias ptr @calloc(i64 noundef %i.ai, i64 noundef 8) #22 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 1472
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !52
  %i.al = icmp eq ptr %i.aj, null
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.am = tail call noalias ptr @calloc(i64 noundef %i.ai, i64 noundef 8) #22 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 1480
  store ptr %i.am, ptr %i.an, align 8, !tbaa !53
  %i.ao = icmp eq ptr %i.am, null
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ap = tail call noalias ptr @calloc(i64 noundef %i.ai, i64 noundef 8) #22 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 1488
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !54
  %i.ar = icmp eq ptr %i.ap, null
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.as = tail call noalias ptr @calloc(i64 noundef %i.ai, i64 noundef 8) #22 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 1496
  store ptr %i.as, ptr %i.at, align 8, !tbaa !55
  %i.au = icmp eq ptr %i.as, null
  br i1 %i.au, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #21
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @copy_rc_jvt(ptr noundef captures(none) initializes((0, 1472), (1504, 1600)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 15352
  %i.c = load i32, ptr %i.b, align 8, !tbaa !10
  %i.d = load ptr, ptr @input, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 5128
  %i.f = load i32, ptr %i.e, align 8, !tbaa !29
  %i.g = udiv i32 %i.c, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1472 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1496
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 3 uses
  %i.l = load <2 x ptr>, ptr %i.h, align 8, !tbaa !56
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.n = load <2 x ptr>, ptr %i.k, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1600) %0, ptr noundef nonnull align 1 dereferenceable(1600) %1, i64 1600, i1 false)
  store <2 x ptr> %i.l, ptr %i.h, align 8, !tbaa !56
  store <2 x ptr> %i.n, ptr %i.k, align 8, !tbaa !56
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1472
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52
  %i.q = sext i32 %i.g to i64
  %i.r = shl nsw i64 %i.q, 3                      ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.p, i64 %i.r, i1 false)
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !53
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1480
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !53
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.u, i64 %i.r, i1 false)
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !55
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1496
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !55
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.x, i64 %i.r, i1 false)
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 1488
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.aa, i64 %i.r, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @rc_free(ptr noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1472
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.c) #21
  %i.d = load ptr, ptr %0, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1472
  store ptr null, ptr %i.e, align 8, !tbaa !52
  %.pre = load ptr, ptr %0, align 8, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %.pre, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1480
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !53   ; 2 uses
  %.not19 = icmp eq ptr %i.h, null
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.h) #21
  %i.i = load ptr, ptr %0, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1480
  store ptr null, ptr %i.j, align 8, !tbaa !53
  %.pre23 = load ptr, ptr %0, align 8, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = phi ptr [ %.pre23, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1488
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54   ; 2 uses
  %.not20 = icmp eq ptr %i.m, null
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.m) #21
  %i.n = load ptr, ptr %0, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1488
  store ptr null, ptr %i.o, align 8, !tbaa !54
  %.pre24 = load ptr, ptr %0, align 8, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = phi ptr [ %.pre24, %bb.f ], [ %i.k, %bb.e ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1496
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !55   ; 2 uses
  %.not21 = icmp eq ptr %i.r, null
  br i1 %.not21, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.r) #21
  %i.s = load ptr, ptr %0, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1496
  store ptr null, ptr %i.t, align 8, !tbaa !55
  %.pr = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %.not22 = icmp eq ptr %.pr, null
  br i1 %.not22, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.g, %bb.h
  %i.u = phi ptr [ %.pr, %bb.h ], [ %i.p, %bb.g ]
  tail call void @free(ptr noundef nonnull %i.u) #21
  store ptr null, ptr %0, align 8, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @rc_init_seq(ptr noundef captures(none) initializes((0, 12), (16, 40), (104, 288), (960, 1296), (1312, 1328), (1336, 1344), (1348, 1352), (1372, 1376), (1380, 1384), (1440, 1448), (1528, 1536), (1596, 1600)) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @input, align 8, !tbaa !8  ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5136
  %i.c = load i32, ptr %i.b, align 8, !tbaa !57
  %switch.tableidx = add i32 %i.c, -1             ; 2 uses
  %i.d = icmp ult i32 %switch.tableidx, 3
  br i1 %i.d, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.e = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.rc_init_seq, i64 %i.e
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %updateQPRC0.sink = phi ptr [ %switch.load, %switch.lookup ], [ @updateQPRC0, %bb.a ]
  store ptr %updateQPRC0.sink, ptr @updateQP, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1528
  store i32 0, ptr %i.f, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1532
  store i32 0, ptr %i.g, align 4, !tbaa !59
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 5120
  %i.i = load i32, ptr %i.h, align 8, !tbaa !60
  %i.j = sitofp i32 %i.i to float                 ; 3 uses
  store float %i.j, ptr %0, align 8, !tbaa !61
  %i.k = load ptr, ptr @img, align 8, !tbaa !8    ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load float, ptr %i.l, align 8, !tbaa !62
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 2096
  %i.o = load i32, ptr %i.n, align 8, !tbaa !63   ; 2 uses
  %i.p = add nsw i32 %i.o, 1
  %i.q = sitofp i32 %i.p to float
  %i.r = fmul float %i.m, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !64
  %i.u = add nsw i32 %i.t, 1
  %i.v = sitofp i32 %i.u to float
  %i.w = fdiv float %i.r, %i.v                    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.w, ptr %i.x, align 4, !tbaa !65
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.j, ptr %i.y, align 8, !tbaa !66
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 5128 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !29  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 15352
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !10 ; 4 uses
  %i.ad = icmp ugt i32 %i.aa, %i.ac
  br i1 %i.ad, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  store i32 %i.ac, ptr %i.z, align 8, !tbaa !29
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ae = icmp ult i32 %i.aa, %i.ac
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = udiv i32 %i.ac, %i.aa
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1388
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !67
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d, %bb.c
  %i.ah = load ptr, ptr @generic_RC, align 8, !tbaa !8 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  store i64 0, ptr %i.ai, align 8, !tbaa !68
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double 0.000000e+00, ptr %i.aj, align 8, !tbaa !70
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1340
  store i32 0, ptr %i.ak, align 4, !tbaa !71
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1336
  store i32 0, ptr %i.al, align 8, !tbaa !72
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store i32 0, ptr %i.am, align 8, !tbaa !73
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 36
  store i32 0, ptr %i.an, align 4, !tbaa !74
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i32 0, ptr %i.ao, align 8, !tbaa !75
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  store i32 0, ptr %i.ap, align 8, !tbaa !76
  %i.aq = icmp sgt i32 %i.o, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = insertelement <2 x i1> poison, i1 %i.aq, i64 0
  %i.at = shufflevector <2 x i1> %i.as, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.au = select <2 x i1> %i.at, <2 x double> <double 2.500000e-01, double 9.000000e-01>, <2 x double> splat (double 5.000000e-01)
  store <2 x double> %i.au, ptr %i.ar, align 8, !tbaa !77
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1348
  store i32 0, ptr %i.av, align 4, !tbaa !78
  %i.aw = fpext float %i.j to double              ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1312
  store double %i.aw, ptr %i.ax, align 8, !tbaa !79
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1320
  store double 0.000000e+00, ptr %i.ay, align 8, !tbaa !80
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double 1.000000e+00, ptr %i.az, align 8, !tbaa !81
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1596
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.ba, i8 0, i64 176, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.bb, i8 0, i64 336, i1 false)
  store i32 2, ptr %i.bc, align 4, !tbaa !82
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1372
  store i32 0, ptr %i.bd, align 4, !tbaa !83
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1380
  store i32 0, ptr %i.be, align 4, !tbaa !84
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1388
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !67
  %i.bh = icmp sgt i32 %i.bg, 8
  %i.bi = select i1 %i.bh, i32 1, i32 2
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1440
  store i32 %i.bi, ptr %i.bj, align 8, !tbaa !85
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 15336
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !86
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1444
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !87
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 0, ptr %i.bn, align 4, !tbaa !88
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !89
  %i.bq = sitofp i32 %i.bp to float
  %i.br = fmul float %i.w, %i.bq
  %i.bs = fpext float %i.br to double
  %i.bt = fdiv double %i.aw, %i.bs                ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !90
  switch i32 %i.bv, label %bb.g [
    i32 176, label %bb.h
    i32 352, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.045 = phi double [ 1.400000e+00, %bb.g ], [ 6.000000e-01, %bb.f ], [ 3.000000e-01, %bb.e ]
  %.044 = phi double [ 2.400000e+00, %bb.g ], [ 1.200000e+00, %bb.f ], [ 6.000000e-01, %bb.e ]
  %.043 = phi double [ 6.000000e-01, %bb.g ], [ 2.000000e-01, %bb.f ], [ 1.000000e-01, %bb.e ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 5124 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !91
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bz = fcmp ugt double %i.bt, %.043
  br i1 %i.bz, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ca = fcmp ugt double %i.bt, %.045
  br i1 %i.ca, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cb = fcmp ugt double %i.bt, %.044
  %. = select i1 %i.cb, i32 10, i32 20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.042 = phi i32 [ 25, %bb.j ], [ 35, %bb.i ], [ %., %bb.k ]
  store i32 %.042, ptr %i.bw, align 4, !tbaa !91
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @updateQPRC0(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !8    ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 15404
  %i.c = load i32, ptr %i.b, align 4, !tbaa !92
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 15352
  %i.e = load i32, ptr %i.d, align 8, !tbaa !10
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.ar

bb.b:                                             ; preds = %bb.a
  %.not203 = icmp eq i32 %1, 0
  br i1 %.not203, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @generic_RC, align 8, !tbaa !8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !88
  %i.j = icmp eq i32 %i.i, 0
end_hunk_0
begin_hunk_1_@updateQPRC0:bb.a
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !97
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !98 ; 2 uses
  %i.by = sub nsw i32 %i.bv, %i.bx                ; 6 uses
  %i.bz = mul nsw i32 %i.r, -2                    ; 5 uses
  %i.ca = add nsw i32 %i.bz, -3
  %.not208 = icmp sgt i32 %i.by, %i.ca
  br i1 %.not208, label %bb.n, label %bb.r

bb.n:                                             ; preds = %updateQPInterlace.exit215
  %i.cb = add nsw i32 %i.bz, -2
  %i.cc = icmp eq i32 %i.by, %i.cb
  br i1 %i.cc, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cd = add nsw i32 %i.bz, -1
  %i.ce = icmp eq i32 %i.by, %i.cd
  br i1 %i.ce, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = icmp eq i32 %i.by, %i.bz
  br i1 %i.cf, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = or disjoint i32 %i.bz, 1
  %i.ch = icmp eq i32 %i.by, %i.cg
  %. = select i1 %i.ch, i32 1, i32 2
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %updateQPInterlace.exit215
  %.0181 = phi i32 [ 0, %bb.p ], [ -3, %updateQPInterlace.exit215 ], [ -2, %bb.n ], [ -1, %bb.o ], [ %., %bb.q ]
  %i.ci = add nsw i32 %.0181, %i.bx
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.ck = add nsw i32 %spec.select, -1            ; 3 uses
  %i.cl = mul nsw i32 %i.ck, -2
  %i.cm = shl nsw i32 %i.ck, 1
  %i.cn = mul nsw i32 %i.by, %i.ck
  %i.co = add nsw i32 %i.r, -1
  %i.cp = sdiv i32 %i.cn, %i.co
  %i.cq = tail call noundef i32 @llvm.smax.i32(i32 %i.cp, i32 %i.cl)
  %i.cr = tail call noundef i32 @llvm.smin.i32(i32 %i.cq, i32 %i.cm)
  %i.cs = add nsw i32 %i.ci, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !51
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !49
  %i.cx = tail call noundef i32 @llvm.smax.i32(i32 %i.cs, i32 %i.cu)
  %i.cy = tail call noundef i32 @llvm.smin.i32(i32 %i.cx, i32 %i.cw) ; 2 uses
  store i32 %i.cy, ptr %i.cj, align 8, !tbaa !44
  br label %updateQPNonPicAFF.exit

bb.s:                                             ; preds = %bb.d
  %i.cz = load ptr, ptr @generic_RC, align 8, !tbaa !8 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.db = load i32, ptr %i.da, align 8, !tbaa !100
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.dd = load i32, ptr %i.a, align 8, !tbaa !101
  %i.de = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4
  %.not205 = icmp eq i32 %i.dd, %i.de
  br i1 %.not205, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !48 ; 8 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i32 %i.dg, ptr %i.dh, align 8, !tbaa !44
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !88
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.v, label %updateQPNonPicAFF.exit

bb.v:                                             ; preds = %bb.u
  %i.dl = load ptr, ptr @active_sps, align 8, !tbaa !8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1148
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !102
  %.not.i = icmp eq i32 %i.dn, 0
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.do = getelementptr inbounds nuw i8, ptr %i.cz, i64 44 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !106
  %i.dq = add nsw i32 %i.dp, %i.dg
  store i32 %i.dq, ptr %i.do, align 4, !tbaa !106
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !97
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i32 %i.ds, ptr %i.dt, align 8, !tbaa !98
  store i32 %i.dg, ptr %i.dr, align 4, !tbaa !97
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1328
  store i32 %i.dg, ptr %i.du, align 8, !tbaa !107
  br label %updateQPNonPicAFF.exit

bb.x:                                             ; preds = %bb.v
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 1460
  store i32 %i.dg, ptr %i.dv, align 4, !tbaa !46
  br label %updateQPNonPicAFF.exit

bb.y:                                             ; preds = %bb.d, %bb.t, %bb.s
  %i.dw = load ptr, ptr @input, align 8, !tbaa !8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4704
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !94
  %i.dz = icmp eq i32 %i.dy, 2
  br i1 %i.dz, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 4708
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !95
  %.not206 = icmp eq i32 %i.eb, 0
  br i1 %.not206, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ec = load ptr, ptr @generic_RC, align 8, !tbaa !8 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !88
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %updateQPInterlaceBU.exit, label %bb.ab

updateQPInterlaceBU.exit:                         ; preds = %bb.aa
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !96
  %i.ei = icmp eq i32 %i.eh, 1
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 44 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !106
  %.sink7.in.i.v = select i1 %i.ei, i64 1460, i64 1456
  %.sink7.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink7.in.i.v
  %.sink7.i = load i32, ptr %.sink7.in.i, align 4, !tbaa !4 ; 2 uses
  %i.el = add nsw i32 %.sink7.i, %i.ek
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !106
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 1328
  store i32 %.sink7.i, ptr %i.em, align 8, !tbaa !107
  br label %bb.ab

bb.ab:                                            ; preds = %updateQPInterlaceBU.exit, %bb.aa, %bb.z
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.ep = load <2 x double>, ptr %i.en, align 8, !tbaa !77 ; 3 uses
  store <2 x double> %i.ep, ptr %i.eo, align 8, !tbaa !77
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.es = load <2 x double>, ptr %i.eq, align 8, !tbaa !77 ; 3 uses
  store <2 x double> %i.es, ptr %i.er, align 8, !tbaa !77
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.eu = load double, ptr %i.et, align 8, !tbaa !77 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.eu, ptr %i.ev, align 8, !tbaa !108
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 1596
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !82 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !107 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 1348
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !78
  %i.fc = extractelement <2 x double> %i.es, i64 0
  %i.fd = extractelement <2 x double> %i.es, i64 1
  %i.fe = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.eu, double %i.fd) ; 6 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 1400
  store double %i.fe, ptr %i.ff, align 8, !tbaa !36
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !37 ; 2 uses
  %i.fi = icmp slt i32 %i.fh, 0
  br i1 %i.fi, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fj = add nsw i32 %i.ez, %i.ex
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !51
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !49
  %i.fp = tail call noundef i32 @llvm.smax.i32(i32 %i.fj, i32 %i.fm)
  %i.fq = tail call noundef i32 @llvm.smin.i32(i32 %i.fp, i32 %i.fo) ; 2 uses
  store i32 %i.fq, ptr %i.fk, align 8, !tbaa !44
  br label %bb.ah

bb.ad:                                            ; preds = %bb.ab
  %i.fr = sub nsw i32 %i.fh, %i.fb
  %i.fs = load float, ptr %0, align 8, !tbaa !61
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !65
  %i.fv = fmul float %i.fu, 4.000000e+00
  %i.fw = fdiv float %i.fs, %i.fv
  %i.fx = fptosi float %i.fw to i32
  %i.fy = tail call noundef i32 @llvm.smax.i32(i32 %i.fr, i32 %i.fx)
  %i.fz = extractelement <2 x double> %i.ep, i64 0 ; 3 uses
  %i.ga = fmul double %i.fz, %i.fe                ; 2 uses
  %i.gb = fmul double %i.fe, %i.ga
  %i.gc = extractelement <2 x double> %i.ep, i64 1 ; 3 uses
  %i.gd = fmul double %i.gc, 4.000000e+00
  %i.ge = fmul double %i.gd, %i.fe
  %i.gf = sitofp i32 %i.fy to double              ; 2 uses
  %i.gg = fmul double %i.ge, %i.gf
  %i.gh = tail call double @llvm.fmuladd.f64(double %i.gb, double %i.fz, double %i.gg) ; 2 uses
  %i.gi = fcmp oeq double %i.gc, 0.000000e+00
  %i.gj = fcmp olt double %i.gh, 0.000000e+00
  %or.cond.i = select i1 %i.gi, i1 true, i1 %i.gj
  br i1 %or.cond.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gk = tail call double @sqrt(double noundef %i.gh) #21, !tbaa !4
  %i.gl = fneg double %i.fz
  %i.gm = tail call double @llvm.fmuladd.f64(double %i.gl, double %i.fe, double %i.gk) ; 2 uses
  %i.gn = fcmp ugt double %i.gm, 0.000000e+00
  br i1 %i.gn, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.go = fdiv double %i.ga, %i.gf
  br label %updateModelQPFrame.exit

bb.ag:                                            ; preds = %bb.ae
  %i.gp = fmul double %i.gc, 2.000000e+00
  %i.gq = fmul double %i.gp, %i.fe
  %i.gr = fdiv double %i.gq, %i.gm
  br label %updateModelQPFrame.exit

updateModelQPFrame.exit:                          ; preds = %bb.af, %bb.ag
  %.0.in.in.i = phi double [ %i.go, %bb.af ], [ %i.gr, %bb.ag ]
  %.0.in.i = fptrunc double %.0.in.in.i to float
  %.0.i = fpext float %.0.in.i to double
  %i.gs = tail call i32 @Qstep2QP(double noundef %.0.i) #21
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !51
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !49
  %i.gy = tail call noundef i32 @llvm.smax.i32(i32 %i.gs, i32 %i.gv)
  %i.gz = tail call noundef i32 @llvm.smin.i32(i32 %i.gy, i32 %i.gx)
  %i.ha = sub nsw i32 %i.ez, %i.ex
  %i.hb = add nsw i32 %i.ez, %i.ex
  %i.hc = tail call noundef i32 @llvm.smax.i32(i32 %i.gz, i32 %i.ha)
  %i.hd = tail call noundef i32 @llvm.smin.i32(i32 %i.hc, i32 %i.hb) ; 2 uses
  store i32 %i.hd, ptr %i.gt, align 8, !tbaa !44
  br label %bb.ah

bb.ah:                                            ; preds = %updateModelQPFrame.exit, %bb.ac
  %i.he = phi i32 [ %i.hd, %updateModelQPFrame.exit ], [ %i.fq, %bb.ac ] ; 7 uses
  %i.hf = load ptr, ptr @generic_RC, align 8, !tbaa !8 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !88
  %i.hi = icmp eq i32 %i.hh, 0
  br i1 %i.hi, label %bb.ai, label %updateQPNonPicAFF.exit

bb.ai:                                            ; preds = %bb.ah
  %i.hj = load ptr, ptr @active_sps, align 8, !tbaa !8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 1148
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !102
  %.not.i216 = icmp eq i32 %i.hl, 0
  br i1 %.not.i216, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hf, i64 44 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !106
  %i.ho = add nsw i32 %i.hn, %i.he
  store i32 %i.ho, ptr %i.hm, align 4, !tbaa !106
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !97
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i32 %i.hq, ptr %i.hr, align 8, !tbaa !98
  store i32 %i.he, ptr %i.hp, align 4, !tbaa !97
  store i32 %i.he, ptr %i.ey, align 8, !tbaa !107
  br label %updateQPNonPicAFF.exit

bb.ak:                                            ; preds = %bb.ai
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 1460
  store i32 %i.he, ptr %i.hs, align 4, !tbaa !46
  br label %updateQPNonPicAFF.exit

bb.al:                                            ; preds = %bb.c
  %i.ht = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !93
  %i.hv = icmp eq i32 %i.hu, 0
  br i1 %i.hv, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.hw = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !109
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.hz = load i32, ptr %i.a, align 8, !tbaa !101
  %i.ia = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4
  %.not204 = icmp eq i32 %i.hz, %i.ia
  br i1 %.not204, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ib = load ptr, ptr @input, align 8, !tbaa !8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 4704
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !94
  %i.ie = icmp eq i32 %i.id, 1
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !44 ; 3 uses
  br i1 %i.ie, label %bb.ap, label %updateBottomField.exit

bb.ap:                                            ; preds = %bb.ao
  %i.ih = getelementptr inbounds nuw i8, ptr %i.g, i64 44 ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !106
  %i.ij = add nsw i32 %i.ii, %i.ig
  store i32 %i.ij, ptr %i.ih, align 4, !tbaa !106
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !97
  %i.im = add nsw i32 %i.il, 1
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i32 %i.im, ptr %i.in, align 8, !tbaa !98
  store i32 %i.ig, ptr %i.ik, align 4, !tbaa !97
  br label %updateBottomField.exit

updateBottomField.exit:                           ; preds = %bb.ao, %bb.ap
  %.sink9.i = phi i64 [ 1328, %bb.ap ], [ 1456, %bb.ao ]
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.i
  store i32 %i.ig, ptr %i.io, align 8, !tbaa !4
  br label %bb.aq

bb.aq:                                            ; preds = %updateBottomField.exit, %bb.an, %bb.am, %bb.al
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !44
  br label %updateQPNonPicAFF.exit

bb.ar:                                            ; preds = %bb.a
  %i.ir = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !93 ; 2 uses
  %i.it = icmp eq i32 %i.is, 2
  br i1 %i.it, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.iu = load i32, ptr %i.a, align 8, !tbaa !101
  %i.iv = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4
  %.not = icmp eq i32 %i.iu, %i.iv
  br i1 %.not, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !48 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i32 %i.ix, ptr %i.iy, align 8, !tbaa !44
  br label %updateQPNonPicAFF.exit

bb.au:                                            ; preds = %bb.as
  switch i32 %i.is, label %bb.cb [
    i32 1, label %bb.av
    i32 0, label %bb.bo
  ]

bb.av:                                            ; preds = %bb.au
  %.not199 = icmp eq i32 %1, 0
  br i1 %.not199, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.iz = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 4
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !88
  %i.jc = icmp eq i32 %i.jb, 0
  br i1 %i.jc, label %bb.ax, label %bb.bn

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.jd = load ptr, ptr @input, align 8, !tbaa !8 ; 5 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 2096
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !63 ; 5 uses
  %i.jg = icmp eq i32 %i.jf, 1
  br i1 %i.jg, label %bb.ay, label %bb.be

bb.ay:                                            ; preds = %bb.ax
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 4704
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !94
  %i.jj = icmp eq i32 %i.ji, 2
  br i1 %i.jj, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jd, i64 4708
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !95
  %.not202 = icmp eq i32 %i.jl, 0
  br i1 %.not202, label %updateQPInterlace.exit221, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.jm = load ptr, ptr @generic_RC, align 8, !tbaa !8 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !88
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %.sink.split.i218, label %updateQPInterlace.exit221

.sink.split.i218:                                 ; preds = %bb.ba
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jr = load i32, ptr %i.jq, align 8, !tbaa !96
  %i.js = icmp eq i32 %i.jr, 1
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !97
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i32 %i.ju, ptr %i.jv, align 8, !tbaa !98
  %.sink.in.i219.v = select i1 %i.js, i64 1460, i64 1456
  %.sink.in.i219 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.in.i219.v
  %.sink.i220 = load i32, ptr %.sink.in.i219, align 4, !tbaa !4
  store i32 %.sink.i220, ptr %i.jt, align 4, !tbaa !97
  br label %updateQPInterlace.exit221

updateQPInterlace.exit221:                        ; preds = %.sink.split.i218, %bb.ba, %bb.az
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !98 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 1356
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !97 ; 2 uses
  %i.ka = icmp eq i32 %i.jx, %i.jz
  br i1 %i.ka, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %updateQPInterlace.exit221
  %i.kb = add nsw i32 %i.jx, 2
  br label %bb.bd

bb.bc:                                            ; preds = %updateQPInterlace.exit221
  %i.kc = add nsw i32 %i.jz, %i.jx
  %i.kd = sdiv i32 %i.kc, 2
  %i.ke = add nsw i32 %i.kd, 1
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.sink = phi i32 [ %i.kb, %bb.bb ], [ %i.ke, %bb.bc ]
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !51
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !49
  %i.kk = tail call noundef i32 @llvm.smax.i32(i32 %.sink, i32 %i.kh)
end_hunk_1
begin_hunk_2_@updateQPRC0:bb.a
  br i1 %i.oo, label %bb.bz, label %updateQPNonPicAFF.exit

bb.bz:                                            ; preds = %bb.by
  %i.op = load i32, ptr %i.ol, align 8, !tbaa !101
  %i.oq = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4
  %.not198 = icmp eq i32 %i.op, %i.oq
  br i1 %.not198, label %updateQPNonPicAFF.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  tail call void @updateLastBU(ptr noundef nonnull %0, i32 noundef %1)
  %.pre = load i32, ptr %i.od, align 8, !tbaa !44
  br label %updateQPNonPicAFF.exit

bb.cb:                                            ; preds = %bb.bq, %bb.au, %bb.br
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.os = load i32, ptr %i.or, align 8, !tbaa !44
  br label %updateQPNonPicAFF.exit

updateQPNonPicAFF.exit:                           ; preds = %bb.bx, %bb.by, %bb.bz, %bb.ca, %bb.bd, %bb.bm, %bb.ah, %bb.aj, %bb.ak, %updateQPInterlace.exit, %bb.r, %bb.u, %bb.w, %bb.x, %bb.cb, %bb.bw, %bb.bu, %bb.bs, %bb.bn, %bb.at, %bb.aq, %bb.e
  %.0 = phi i32 [ %i.n, %bb.e ], [ %i.dg, %bb.u ], [ %i.kl, %bb.bd ], [ %i.ay, %updateQPInterlace.exit ], [ %i.iq, %bb.aq ], [ %i.ix, %bb.at ], [ %i.he, %bb.ah ], [ %i.mn, %bb.bn ], [ %i.na, %bb.bs ], [ %i.os, %bb.cb ], [ %i.ns, %bb.bu ], [ %i.oc, %bb.bw ], [ %i.dg, %bb.x ], [ %i.dg, %bb.w ], [ %i.cy, %bb.r ], [ %i.he, %bb.ak ], [ %i.he, %bb.aj ], [ %i.ml, %bb.bm ], [ %.pre, %bb.ca ], [ %i.oe, %bb.bz ], [ %i.oe, %bb.by ], [ %i.oe, %bb.bx ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @updateQPRC1(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !8    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 15404
  %i.c = load i32, ptr %i.b, align 4, !tbaa !92
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 15352
  %i.e = load i32, ptr %i.d, align 8, !tbaa !10
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.ac

bb.b:                                             ; preds = %bb.a
  %.not98 = icmp eq i32 %1, 0
  br i1 %.not98, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @generic_RC, align 8, !tbaa !8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !88
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.x

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = load i32, ptr %i.a, align 8, !tbaa !101
  %i.l = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4
  %.not100 = icmp eq i32 %i.k, %i.l
  br i1 %.not100, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load i32, ptr %i.m, align 8, !tbaa !48   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i32 %i.n, ptr %i.o, align 8, !tbaa !44
  br label %updateQPNonPicAFF.exit

bb.f:                                             ; preds = %bb.d
  %i.p = load ptr, ptr @generic_RC, align 8, !tbaa !8 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load i32, ptr %i.q, align 8, !tbaa !100
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = load i32, ptr %i.t, align 8, !tbaa !48   ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i32 %i.u, ptr %i.v, align 8, !tbaa !44
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !88
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.h, label %updateQPNonPicAFF.exit

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr @active_sps, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1148
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !102
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 44 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !106
  %i.ae = add nsw i32 %i.ad, %i.u
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !106
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !97
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !98
  store i32 %i.u, ptr %i.af, align 4, !tbaa !97
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1328
  store i32 %i.u, ptr %i.ai, align 8, !tbaa !107
  br label %updateQPNonPicAFF.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1460
  store i32 %i.u, ptr %i.aj, align 4, !tbaa !46
  br label %updateQPNonPicAFF.exit

bb.k:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr @input, align 8, !tbaa !8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4704
  %i.am = load i32, ptr %i.al, align 8, !tbaa !94
  %i.an = icmp eq i32 %i.am, 2
  br i1 %i.an, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 4708
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !95
  %.not101 = icmp eq i32 %i.ap, 0
  br i1 %.not101, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !88
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %updateQPInterlaceBU.exit, label %bb.n

updateQPInterlaceBU.exit:                         ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !96
  %i.av = icmp eq i32 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.p, i64 44 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !106
  %.sink7.in.i.v = select i1 %i.av, i64 1460, i64 1456
  %.sink7.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink7.in.i.v
  %.sink7.i = load i32, ptr %.sink7.in.i, align 4, !tbaa !4 ; 2 uses
  %i.ay = add nsw i32 %.sink7.i, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !106
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1328
  store i32 %.sink7.i, ptr %i.az, align 8, !tbaa !107
  br label %bb.n

bb.n:                                             ; preds = %updateQPInterlaceBU.exit, %bb.m, %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.bc = load <2 x double>, ptr %i.ba, align 8, !tbaa !77 ; 3 uses
  store <2 x double> %i.bc, ptr %i.bb, align 8, !tbaa !77
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bf = load <2 x double>, ptr %i.bd, align 8, !tbaa !77 ; 3 uses
  store <2 x double> %i.bf, ptr %i.be, align 8, !tbaa !77
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !77 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.bh, ptr %i.bi, align 8, !tbaa !108
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1596
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !82 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !107 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1348
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !78
  %i.bp = extractelement <2 x double> %i.bf, i64 0
  %i.bq = extractelement <2 x double> %i.bf, i64 1
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.bh, double %i.bq) ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1400
  store double %i.br, ptr %i.bs, align 8, !tbaa !36
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !37 ; 2 uses
  %i.bv = icmp slt i32 %i.bu, 0
  br i1 %i.bv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bw = add nsw i32 %i.bm, %i.bk
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !51
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !49
  %i.cc = tail call noundef i32 @llvm.smax.i32(i32 %i.bw, i32 %i.bz)
  %i.cd = tail call noundef i32 @llvm.smin.i32(i32 %i.cc, i32 %i.cb) ; 2 uses
  store i32 %i.cd, ptr %i.bx, align 8, !tbaa !44
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  %i.ce = sub nsw i32 %i.bu, %i.bo
  %i.cf = load float, ptr %0, align 8, !tbaa !61
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !65
  %i.ci = fmul float %i.ch, 4.000000e+00
  %i.cj = fdiv float %i.cf, %i.ci
  %i.ck = fptosi float %i.cj to i32
  %i.cl = tail call noundef i32 @llvm.smax.i32(i32 %i.ce, i32 %i.ck)
  %i.cm = extractelement <2 x double> %i.bc, i64 0 ; 3 uses
  %i.cn = fmul double %i.cm, %i.br                ; 2 uses
  %i.co = fmul double %i.br, %i.cn
  %i.cp = extractelement <2 x double> %i.bc, i64 1 ; 3 uses
  %i.cq = fmul double %i.cp, 4.000000e+00
  %i.cr = fmul double %i.cq, %i.br
  %i.cs = sitofp i32 %i.cl to double              ; 2 uses
  %i.ct = fmul double %i.cr, %i.cs
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.co, double %i.cm, double %i.ct) ; 2 uses
  %i.cv = fcmp oeq double %i.cp, 0.000000e+00
  %i.cw = fcmp olt double %i.cu, 0.000000e+00
  %or.cond.i = select i1 %i.cv, i1 true, i1 %i.cw
  br i1 %or.cond.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cx = tail call double @sqrt(double noundef %i.cu) #21, !tbaa !4
  %i.cy = fneg double %i.cm
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.br, double %i.cx) ; 2 uses
  %i.da = fcmp ugt double %i.cz, 0.000000e+00
  br i1 %i.da, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.db = fdiv double %i.cn, %i.cs
  br label %updateModelQPFrame.exit

bb.s:                                             ; preds = %bb.q
  %i.dc = fmul double %i.cp, 2.000000e+00
  %i.dd = fmul double %i.dc, %i.br
  %i.de = fdiv double %i.dd, %i.cz
  br label %updateModelQPFrame.exit

updateModelQPFrame.exit:                          ; preds = %bb.r, %bb.s
  %.0.in.in.i = phi double [ %i.db, %bb.r ], [ %i.de, %bb.s ]
  %.0.in.i = fptrunc double %.0.in.in.i to float
  %.0.i = fpext float %.0.in.i to double
  %i.df = tail call i32 @Qstep2QP(double noundef %.0.i) #21
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !51
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !49
  %i.dl = tail call noundef i32 @llvm.smax.i32(i32 %i.df, i32 %i.di)
  %i.dm = tail call noundef i32 @llvm.smin.i32(i32 %i.dl, i32 %i.dk)
  %i.dn = sub nsw i32 %i.bm, %i.bk
  %i.do = add nsw i32 %i.bm, %i.bk
  %i.dp = tail call noundef i32 @llvm.smax.i32(i32 %i.dm, i32 %i.dn)
  %i.dq = tail call noundef i32 @llvm.smin.i32(i32 %i.dp, i32 %i.do) ; 2 uses
  store i32 %i.dq, ptr %i.dg, align 8, !tbaa !44
  %.pre114 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  br label %bb.t

bb.t:                                             ; preds = %updateModelQPFrame.exit, %bb.o
  %i.dr = phi i32 [ %i.dq, %updateModelQPFrame.exit ], [ %i.cd, %bb.o ] ; 7 uses
  %i.ds = phi ptr [ %.pre114, %updateModelQPFrame.exit ], [ %i.p, %bb.o ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !88
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.u, label %updateQPNonPicAFF.exit

bb.u:                                             ; preds = %bb.t
  %i.dw = load ptr, ptr @active_sps, align 8, !tbaa !8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 1148
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !102
  %.not.i102 = icmp eq i32 %i.dy, 0
  br i1 %.not.i102, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 44 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !106
  %i.eb = add nsw i32 %i.ea, %i.dr
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !106
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !97
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i32 %i.ed, ptr %i.ee, align 8, !tbaa !98
  store i32 %i.dr, ptr %i.ec, align 4, !tbaa !97
  store i32 %i.dr, ptr %i.bl, align 8, !tbaa !107
  br label %updateQPNonPicAFF.exit

bb.w:                                             ; preds = %bb.u
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 1460
  store i32 %i.dr, ptr %i.ef, align 4, !tbaa !46
  br label %updateQPNonPicAFF.exit

bb.x:                                             ; preds = %bb.c
  %i.eg = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !109
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.ej = load i32, ptr %i.a, align 8, !tbaa !101
  %i.ek = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4
  %.not99 = icmp eq i32 %i.ej, %i.ek
  br i1 %.not99, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.el = load ptr, ptr @input, align 8, !tbaa !8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4704
  %i.en = load i32, ptr %i.em, align 8, !tbaa !94
  %i.eo = icmp eq i32 %i.en, 1
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !44 ; 3 uses
  br i1 %i.eo, label %bb.aa, label %updateBottomField.exit

bb.aa:                                            ; preds = %bb.z
  %i.er = getelementptr inbounds nuw i8, ptr %i.g, i64 44 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !106
  %i.et = add nsw i32 %i.es, %i.eq
  store i32 %i.et, ptr %i.er, align 4, !tbaa !106
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !97
  %i.ew = add nsw i32 %i.ev, 1
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i32 %i.ew, ptr %i.ex, align 8, !tbaa !98
  store i32 %i.eq, ptr %i.eu, align 4, !tbaa !97
  br label %updateBottomField.exit

updateBottomField.exit:                           ; preds = %bb.z, %bb.aa
  %.sink9.i = phi i64 [ 1328, %bb.aa ], [ 1456, %bb.z ]
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.i
  store i32 %i.eq, ptr %i.ey, align 8, !tbaa !4
  br label %bb.ab

bb.ab:                                            ; preds = %updateBottomField.exit, %bb.y, %bb.x
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !44
  br label %updateQPNonPicAFF.exit

bb.ac:                                            ; preds = %bb.a
  %i.fb = load i32, ptr %i.a, align 8, !tbaa !101
  %i.fc = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4
  %.not = icmp eq i32 %i.fb, %i.fc
  br i1 %.not, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !48 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i32 %i.fe, ptr %i.ff, align 8, !tbaa !44
  br label %updateQPNonPicAFF.exit

bb.ae:                                            ; preds = %bb.ac
  %i.fg = load ptr, ptr @generic_RC, align 8, !tbaa !8 ; 13 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !75
  %i.fj = icmp eq i32 %i.fi, 1
  br i1 %i.fj, label %bb.af, label %bb.aq

bb.af:                                            ; preds = %bb.ae
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !100
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.ag, label %bb.aq

bb.ag:                                            ; preds = %bb.af
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !88 ; 2 uses
  switch i32 %i.fo, label %bb.bl [
    i32 0, label %bb.ai
    i32 1, label %bb.ah
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !109
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %bb.ai, label %bb.bl

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !48 ; 9 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i32 %i.ft, ptr %i.fu, align 8, !tbaa !44
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  store i32 0, ptr %i.fv, align 8, !tbaa !111
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fg, i64 28
  store i32 0, ptr %i.fw, align 4, !tbaa !112
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !110
  %i.fz = add nsw i32 %i.fy, -1                   ; 2 uses
  store i32 %i.fz, ptr %i.fx, align 8, !tbaa !110
  %.not.i104 = icmp eq i32 %1, 0
  %i.ga = icmp eq i32 %i.fz, 0
  %or.cond.i105 = select i1 %.not.i104, i1 %i.ga, i1 false
  br i1 %or.cond.i105, label %bb.aj, label %updateFirstP.exit

bb.aj:                                            ; preds = %bb.ai
  %i.gb = load ptr, ptr @active_sps, align 8, !tbaa !8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 1148
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !102
  %.not26.i = icmp eq i32 %i.gd, 0
  br i1 %.not26.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ge = load ptr, ptr @input, align 8, !tbaa !8 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4704
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !94
  switch i32 %i.gg, label %bb.am [
    i32 1, label %bb.al
    i32 2, label %bb.an
  ]

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fg, i64 44 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !106
  %i.gj = add nsw i32 %i.gi, %i.ft
  store i32 %i.gj, ptr %i.gh, align 4, !tbaa !106
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !97
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i32 %i.gl, ptr %i.gm, align 8, !tbaa !98
  store i32 %i.ft, ptr %i.gk, align 4, !tbaa !97
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store i32 %i.ft, ptr %i.gn, align 8, !tbaa !43
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !114
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 1380
  store i32 %i.gp, ptr %i.gq, align 4, !tbaa !84
  br label %updateFirstP.exit

bb.am:                                            ; preds = %bb.ak
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ge, i64 4708
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !95
  %.not27.i = icmp eq i32 %i.gs, 0
  br i1 %.not27.i, label %updateFirstP.exit, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak
  %i.gt = icmp eq i32 %i.fo, 0
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 1376 ; 2 uses
  br i1 %i.gt, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 1460
  store i32 %i.ft, ptr %i.gv, align 4, !tbaa !46
  %i.gw = load i32, ptr %i.gu, align 8, !tbaa !114
end_hunk_2
begin_hunk_3_@updateQPRC2:bb.a
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.sink.split.i154, label %updateQPInterlace.exit157

.sink.split.i154:                                 ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !96
  %i.bb = icmp eq i32 %i.ba, 1
  store i32 %i.an, ptr %i.ak, align 8, !tbaa !98
  %.sink.in.i155.v = select i1 %i.bb, i64 1460, i64 1456
  %.sink.in.i155 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.in.i155.v
  %.sink.i156 = load i32, ptr %.sink.in.i155, align 4, !tbaa !4
  store i32 %.sink.i156, ptr %i.am, align 4, !tbaa !97
  br label %updateQPInterlace.exit157

updateQPInterlace.exit157:                        ; preds = %.sink.split.i154, %bb.l, %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 2968
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !122
  %.not152 = icmp eq i32 %i.bd, 0
  br i1 %.not152, label %bb.o, label %bb.m

bb.m:                                             ; preds = %updateQPInterlace.exit157
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 14364
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !123 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 15612
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !124
  %i.bj = add nsw i32 %i.bi, %i.ao
  %i.bk = load ptr, ptr @gop_structure, align 8, !tbaa !8
  %i.bl = sext i32 %i.bf to i64
  %i.bm = getelementptr [24 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 -8
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !125
  %i.bp = sub i32 %i.bj, %i.bo
  br label %bb.p

bb.o:                                             ; preds = %updateQPInterlace.exit157
  %i.bq = add nsw i32 %i.ao, 2
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 15360
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !127
  %i.bt = sub i32 %i.bq, %i.bs
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o
  %i.bu = phi i32 [ %i.bt, %bb.o ], [ %i.bp, %bb.n ], [ %i.ao, %bb.m ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !51
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !49
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.ca = tail call noundef i32 @llvm.smax.i32(i32 %i.bu, i32 %i.bw)
  %i.cb = tail call noundef i32 @llvm.smin.i32(i32 %i.ca, i32 %i.by) ; 2 uses
  store i32 %i.cb, ptr %i.bz, align 8, !tbaa !44
  br label %updateQPNonPicAFF.exit

bb.q:                                             ; preds = %bb.f
  %i.cc = load ptr, ptr @generic_RC, align 8, !tbaa !8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !100
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !48 ; 8 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i32 %i.ch, ptr %i.ci, align 8, !tbaa !44
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !88
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.s, label %updateQPNonPicAFF.exit

bb.s:                                             ; preds = %bb.r
  %i.cm = load ptr, ptr @active_sps, align 8, !tbaa !8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1148
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !102
  %.not.i = icmp eq i32 %i.co, 0
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cc, i64 44 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !106
  %i.cr = add nsw i32 %i.cq, %i.ch
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !106
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !97
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i32 %i.ct, ptr %i.cu, align 8, !tbaa !98
  store i32 %i.ch, ptr %i.cs, align 4, !tbaa !97
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1328
  store i32 %i.ch, ptr %i.cv, align 8, !tbaa !107
  br label %updateQPNonPicAFF.exit

bb.u:                                             ; preds = %bb.s
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1460
  store i32 %i.ch, ptr %i.cw, align 4, !tbaa !46
  br label %updateQPNonPicAFF.exit

bb.v:                                             ; preds = %bb.f, %bb.q
  %i.cx = load ptr, ptr @input, align 8, !tbaa !8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4704
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !94
  %i.da = icmp eq i32 %i.cz, 2
  br i1 %i.da, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 4708
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !95
  %.not150 = icmp eq i32 %i.dc, 0
  br i1 %.not150, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dd = load ptr, ptr @generic_RC, align 8, !tbaa !8 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !88
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %updateQPInterlaceBU.exit, label %bb.y

updateQPInterlaceBU.exit:                         ; preds = %bb.x
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !96
  %i.dj = icmp eq i32 %i.di, 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 44 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !106
  %.sink7.in.i.v = select i1 %i.dj, i64 1460, i64 1456
  %.sink7.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink7.in.i.v
  %.sink7.i = load i32, ptr %.sink7.in.i, align 4, !tbaa !4 ; 2 uses
  %i.dm = add nsw i32 %.sink7.i, %i.dl
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !106
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1328
  store i32 %.sink7.i, ptr %i.dn, align 8, !tbaa !107
  br label %bb.y

bb.y:                                             ; preds = %updateQPInterlaceBU.exit, %bb.x, %bb.w
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.dq = load <2 x double>, ptr %i.do, align 8, !tbaa !77 ; 3 uses
  store <2 x double> %i.dq, ptr %i.dp, align 8, !tbaa !77
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dt = load <2 x double>, ptr %i.dr, align 8, !tbaa !77 ; 3 uses
  store <2 x double> %i.dt, ptr %i.ds, align 8, !tbaa !77
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dv = load double, ptr %i.du, align 8, !tbaa !77 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.dv, ptr %i.dw, align 8, !tbaa !108
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 1596
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !82 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !107 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 1348
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !78
  %i.ed = extractelement <2 x double> %i.dt, i64 0
  %i.ee = extractelement <2 x double> %i.dt, i64 1
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.ed, double %i.dv, double %i.ee) ; 6 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 1400
  store double %i.ef, ptr %i.eg, align 8, !tbaa !36
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !37 ; 2 uses
  %i.ej = icmp slt i32 %i.ei, 0
  br i1 %i.ej, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ek = add nsw i32 %i.ea, %i.dy
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.en = load i32, ptr %i.em, align 4, !tbaa !51
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !49
  %i.eq = tail call noundef i32 @llvm.smax.i32(i32 %i.ek, i32 %i.en)
  %i.er = tail call noundef i32 @llvm.smin.i32(i32 %i.eq, i32 %i.ep) ; 2 uses
  store i32 %i.er, ptr %i.el, align 8, !tbaa !44
  br label %bb.ae

bb.aa:                                            ; preds = %bb.y
  %i.es = sub nsw i32 %i.ei, %i.ec
  %i.et = load float, ptr %0, align 8, !tbaa !61
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !65
  %i.ew = fmul float %i.ev, 4.000000e+00
  %i.ex = fdiv float %i.et, %i.ew
  %i.ey = fptosi float %i.ex to i32
  %i.ez = tail call noundef i32 @llvm.smax.i32(i32 %i.es, i32 %i.ey)
  %i.fa = extractelement <2 x double> %i.dq, i64 0 ; 3 uses
  %i.fb = fmul double %i.fa, %i.ef                ; 2 uses
  %i.fc = fmul double %i.ef, %i.fb
  %i.fd = extractelement <2 x double> %i.dq, i64 1 ; 3 uses
  %i.fe = fmul double %i.fd, 4.000000e+00
  %i.ff = fmul double %i.fe, %i.ef
  %i.fg = sitofp i32 %i.ez to double              ; 2 uses
  %i.fh = fmul double %i.ff, %i.fg
  %i.fi = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.fa, double %i.fh) ; 2 uses
  %i.fj = fcmp oeq double %i.fd, 0.000000e+00
  %i.fk = fcmp olt double %i.fi, 0.000000e+00
  %or.cond.i = select i1 %i.fj, i1 true, i1 %i.fk
  br i1 %or.cond.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fl = tail call double @sqrt(double noundef %i.fi) #21, !tbaa !4
  %i.fm = fneg double %i.fa
  %i.fn = tail call double @llvm.fmuladd.f64(double %i.fm, double %i.ef, double %i.fl) ; 2 uses
  %i.fo = fcmp ugt double %i.fn, 0.000000e+00
  br i1 %i.fo, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fp = fdiv double %i.fb, %i.fg
  br label %updateModelQPFrame.exit

bb.ad:                                            ; preds = %bb.ab
  %i.fq = fmul double %i.fd, 2.000000e+00
  %i.fr = fmul double %i.fq, %i.ef
  %i.fs = fdiv double %i.fr, %i.fn
  br label %updateModelQPFrame.exit

updateModelQPFrame.exit:                          ; preds = %bb.ac, %bb.ad
  %.0.in.in.i = phi double [ %i.fp, %bb.ac ], [ %i.fs, %bb.ad ]
  %.0.in.i = fptrunc double %.0.in.in.i to float
  %.0.i = fpext float %.0.in.i to double
  %i.ft = tail call i32 @Qstep2QP(double noundef %.0.i) #21
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !51
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !49
  %i.fz = tail call noundef i32 @llvm.smax.i32(i32 %i.ft, i32 %i.fw)
  %i.ga = tail call noundef i32 @llvm.smin.i32(i32 %i.fz, i32 %i.fy)
  %i.gb = sub nsw i32 %i.ea, %i.dy
  %i.gc = add nsw i32 %i.ea, %i.dy
  %i.gd = tail call noundef i32 @llvm.smax.i32(i32 %i.ga, i32 %i.gb)
  %i.ge = tail call noundef i32 @llvm.smin.i32(i32 %i.gd, i32 %i.gc) ; 2 uses
  store i32 %i.ge, ptr %i.fu, align 8, !tbaa !44
  br label %bb.ae

bb.ae:                                            ; preds = %updateModelQPFrame.exit, %bb.z
  %i.gf = phi i32 [ %i.ge, %updateModelQPFrame.exit ], [ %i.er, %bb.z ] ; 7 uses
  %i.gg = load ptr, ptr @generic_RC, align 8, !tbaa !8 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !88
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %bb.af, label %updateQPNonPicAFF.exit

bb.af:                                            ; preds = %bb.ae
  %i.gk = load ptr, ptr @active_sps, align 8, !tbaa !8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 1148
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !102
  %.not.i158 = icmp eq i32 %i.gm, 0
  br i1 %.not.i158, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gg, i64 44 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !106
  %i.gp = add nsw i32 %i.go, %i.gf
  store i32 %i.gp, ptr %i.gn, align 4, !tbaa !106
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !97
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i32 %i.gr, ptr %i.gs, align 8, !tbaa !98
  store i32 %i.gf, ptr %i.gq, align 4, !tbaa !97
  store i32 %i.gf, ptr %i.dz, align 8, !tbaa !107
  br label %updateQPNonPicAFF.exit

bb.ah:                                            ; preds = %bb.af
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 1460
  store i32 %i.gf, ptr %i.gt, align 4, !tbaa !46
  br label %updateQPNonPicAFF.exit

bb.ai:                                            ; preds = %bb.c
  %i.gu = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !93
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.gx = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !109
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.ha = load i32, ptr %i.a, align 8, !tbaa !101
  %i.hb = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4
  %.not148 = icmp eq i32 %i.ha, %i.hb
  br i1 %.not148, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hc = load ptr, ptr @input, align 8, !tbaa !8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 4704
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !94
  %i.hf = icmp eq i32 %i.he, 1
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !44 ; 3 uses
  br i1 %i.hf, label %bb.am, label %updateBottomField.exit

bb.am:                                            ; preds = %bb.al
  %i.hi = getelementptr inbounds nuw i8, ptr %i.g, i64 44 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !106
  %i.hk = add nsw i32 %i.hj, %i.hh
  store i32 %i.hk, ptr %i.hi, align 4, !tbaa !106
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !97
  %i.hn = add nsw i32 %i.hm, 1
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i32 %i.hn, ptr %i.ho, align 8, !tbaa !98
  store i32 %i.hh, ptr %i.hl, align 4, !tbaa !97
  br label %updateBottomField.exit

updateBottomField.exit:                           ; preds = %bb.al, %bb.am
  %.sink9.i = phi i64 [ 1328, %bb.am ], [ 1456, %bb.al ]
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.i
  store i32 %i.hh, ptr %i.hp, align 8, !tbaa !4
  br label %bb.an

bb.an:                                            ; preds = %updateBottomField.exit, %bb.ak, %bb.aj, %bb.ai
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !44
  br label %updateQPNonPicAFF.exit

bb.ao:                                            ; preds = %bb.a
  %i.hs = load i32, ptr %i.a, align 8, !tbaa !101
  %i.ht = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4
  %.not = icmp eq i32 %i.hs, %i.ht
  br i1 %.not, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !48 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i32 %i.hv, ptr %i.hw, align 8, !tbaa !44
  br label %updateQPNonPicAFF.exit

bb.aq:                                            ; preds = %bb.ao
  %i.hx = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !93
  switch i32 %i.hy, label %bb.bw [
    i32 2, label %bb.ar
    i32 1, label %bb.au
    i32 0, label %bb.bb
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.hz = load ptr, ptr @input, align 8, !tbaa !8 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 4704
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !94
  %i.ic = icmp eq i32 %i.ib, 2
  br i1 %i.ic, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 4708
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !95
  %.not146 = icmp eq i32 %i.ie, 0
  br i1 %.not146, label %updateQPInterlace.exit163, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.if = load ptr, ptr @generic_RC, align 8, !tbaa !8 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !88
  %i.ii = icmp eq i32 %i.ih, 0
  br i1 %i.ii, label %.sink.split.i160, label %updateQPInterlace.exit163

.sink.split.i160:                                 ; preds = %bb.at
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !96
  %i.il = icmp eq i32 %i.ik, 1
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !97
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i32 %i.in, ptr %i.io, align 8, !tbaa !98
  %.sink.in.i161.v = select i1 %i.il, i64 1460, i64 1456
  %.sink.in.i161 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.in.i161.v
  %.sink.i162 = load i32, ptr %.sink.in.i161, align 4, !tbaa !4
  store i32 %.sink.i162, ptr %i.im, align 4, !tbaa !97
  br label %updateQPInterlace.exit163

updateQPInterlace.exit163:                        ; preds = %.sink.split.i160, %bb.at, %bb.as
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !98 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i32 %i.iq, ptr %i.ir, align 8, !tbaa !44
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 1356
  %i.it = load i32, ptr %i.is, align 4, !tbaa !97 ; 2 uses
  store i32 %i.it, ptr %i.ip, align 8, !tbaa !98
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store i32 %i.it, ptr %i.iu, align 8, !tbaa !43
  br label %updateQPNonPicAFF.exit

bb.au:                                            ; preds = %bb.aq
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !98
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !97 ; 2 uses
  %i.iz = tail call noundef i32 @llvm.smax.i32(i32 %i.iw, i32 %i.iy) ; 3 uses
  %i.ja = load ptr, ptr @input, align 8, !tbaa !8 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 4704
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !94
  %i.jd = icmp eq i32 %i.jc, 2
  br i1 %i.jd, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 4708
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !95
  %.not144 = icmp eq i32 %i.jf, 0
  br i1 %.not144, label %updateQPInterlace.exit167, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.jg = load ptr, ptr @generic_RC, align 8, !tbaa !8 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !88
  %i.jj = icmp eq i32 %i.ji, 0
  br i1 %i.jj, label %.sink.split.i164, label %updateQPInterlace.exit167

.sink.split.i164:                                 ; preds = %bb.aw
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !96
  %i.jm = icmp eq i32 %i.jl, 1
  store i32 %i.iy, ptr %i.iv, align 8, !tbaa !98
  %.sink.in.i165.v = select i1 %i.jm, i64 1460, i64 1456
  %.sink.in.i165 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.in.i165.v
  %.sink.i166 = load i32, ptr %.sink.in.i165, align 4, !tbaa !4
  store i32 %.sink.i166, ptr %i.ix, align 4, !tbaa !97
end_hunk_3
begin_hunk_4_@updateQPRC3:bb.a

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @generic_RC, align 8, !tbaa !8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !88
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.ak

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = load i32, ptr %i.a, align 8, !tbaa !101
  %i.n = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4
  %.not123 = icmp eq i32 %i.m, %i.n
  br i1 %.not123, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load i32, ptr %i.o, align 8, !tbaa !48   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i32 %i.p, ptr %i.q, align 8, !tbaa !44
  br label %updateQPNonPicAFF.exit

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !93   ; 3 uses
  %i.t = icmp eq i32 %i.s, 0                      ; 3 uses
  br i1 %i.t, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr @generic_RC, align 8, !tbaa !8 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !100
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load i32, ptr %i.y, align 8, !tbaa !48   ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !44
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !88
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %updateQPNonPicAFF.exit

bb.j:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr @active_sps, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1148
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !102
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 44 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !106
  %i.aj = add nsw i32 %i.ai, %i.z
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !106
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !97
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i32 %i.al, ptr %i.am, align 8, !tbaa !98
  store i32 %i.z, ptr %i.ak, align 4, !tbaa !97
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1328
  store i32 %i.z, ptr %i.an, align 8, !tbaa !107
  br label %updateQPNonPicAFF.exit

bb.l:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1460
  store i32 %i.z, ptr %i.ao, align 4, !tbaa !46
  br label %updateQPNonPicAFF.exit

bb.m:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr @input, align 8, !tbaa !8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4704
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !94
  %i.as = icmp eq i32 %i.ar, 2
  br i1 %i.as, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 4708
  %i.au = load i32, ptr %i.at, align 4, !tbaa !95
  %.not124 = icmp eq i32 %i.au, 0
  br i1 %.not124, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !88
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %updateQPInterlaceBU.exit, label %bb.p

updateQPInterlaceBU.exit:                         ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !96
  %i.ba = icmp eq i32 %i.az, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 44 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !106
  %.sink7.in.i.v = select i1 %i.ba, i64 1460, i64 1456
  %.sink7.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink7.in.i.v
  %.sink7.i = load i32, ptr %.sink7.in.i, align 4, !tbaa !4 ; 2 uses
  %i.bd = add nsw i32 %.sink7.i, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !106
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1328
  store i32 %.sink7.i, ptr %i.be, align 8, !tbaa !107
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %updateQPInterlaceBU.exit, %bb.o, %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.bh = load <2 x double>, ptr %i.bf, align 8, !tbaa !77 ; 3 uses
  store <2 x double> %i.bh, ptr %i.bg, align 8, !tbaa !77
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bk = load <2 x double>, ptr %i.bi, align 8, !tbaa !77 ; 3 uses
  store <2 x double> %i.bk, ptr %i.bj, align 8, !tbaa !77
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !77 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store double %i.bm, ptr %i.bn, align 8, !tbaa !108
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1596
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !82 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !107 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1348
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !78 ; 2 uses
  %i.bu = icmp uge i32 %i.c, %i.e                 ; 2 uses
  %brmerge = or i1 %i.bu, %i.t
  br i1 %brmerge, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !128 ; 2 uses
  store double %i.bw, ptr %i.bn, align 8, !tbaa !108
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.bx = phi double [ %i.bm, %bb.p ], [ %i.bw, %bb.q ]
  %i.by = icmp eq i32 %i.s, 2
  %spec.select = select i1 %i.by, i32 0, i32 %i.bt
  %i.bz = extractelement <2 x double> %i.bk, i64 0
  %i.ca = extractelement <2 x double> %i.bk, i64 1
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.bz, double %i.bx, double %i.ca) ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1400
  store double %i.cb, ptr %i.cc, align 8, !tbaa !36
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !37 ; 3 uses
  %i.cf = icmp slt i32 %i.ce, 0
  br i1 %i.cf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cg = add nsw i32 %i.br, %i.bp
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !51 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !49 ; 2 uses
  %i.cm = tail call noundef i32 @llvm.smax.i32(i32 %i.cg, i32 %i.cj)
  %i.cn = tail call noundef i32 @llvm.smin.i32(i32 %i.cm, i32 %i.cl) ; 2 uses
  store i32 %i.cn, ptr %i.ch, align 8, !tbaa !44
  br label %bb.ab

bb.t:                                             ; preds = %bb.r
  br i1 %i.t, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = sub nsw i32 %i.ce, %spec.select         ; 2 uses
  br i1 %i.bu, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1388
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !67
  %i.cr = sdiv i32 %i.co, %i.cq
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cs = sub nsw i32 %i.ce, %i.bt
  %i.ct = load float, ptr %0, align 8, !tbaa !61
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !65
  %i.cw = fmul float %i.cv, 4.000000e+00
  %i.cx = fdiv float %i.ct, %i.cw
  %i.cy = fptosi float %i.cx to i32
  %i.cz = tail call noundef i32 @llvm.smax.i32(i32 %i.cs, i32 %i.cy)
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.v, %bb.w
  %.0113 = phi i32 [ %i.cr, %bb.v ], [ %i.cz, %bb.w ], [ %i.co, %bb.u ]
  %i.da = extractelement <2 x double> %i.bh, i64 0 ; 3 uses
  %i.db = fmul double %i.da, %i.cb                ; 2 uses
  %i.dc = fmul double %i.cb, %i.db
  %i.dd = extractelement <2 x double> %i.bh, i64 1 ; 3 uses
  %i.de = fmul double %i.dd, 4.000000e+00
  %i.df = fmul double %i.de, %i.cb
  %i.dg = sitofp i32 %.0113 to double             ; 2 uses
  %i.dh = fmul double %i.df, %i.dg
  %i.di = tail call double @llvm.fmuladd.f64(double %i.dc, double %i.da, double %i.dh) ; 2 uses
  %i.dj = fcmp oeq double %i.dd, 0.000000e+00
  %i.dk = fcmp olt double %i.di, 0.000000e+00
  %or.cond.i = select i1 %i.dj, i1 true, i1 %i.dk
  br i1 %or.cond.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dl = tail call double @sqrt(double noundef %i.di) #21, !tbaa !4
  %i.dm = fneg double %i.da
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.cb, double %i.dl) ; 2 uses
  %i.do = fcmp ugt double %i.dn, 0.000000e+00
  br i1 %i.do, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dp = fdiv double %i.db, %i.dg
  br label %updateModelQPFrame.exit

bb.aa:                                            ; preds = %bb.y
  %i.dq = fmul double %i.dd, 2.000000e+00
  %i.dr = fmul double %i.dq, %i.cb
  %i.ds = fdiv double %i.dr, %i.dn
  br label %updateModelQPFrame.exit

updateModelQPFrame.exit:                          ; preds = %bb.z, %bb.aa
  %.0.in.in.i = phi double [ %i.dp, %bb.z ], [ %i.ds, %bb.aa ]
  %.0.in.i = fptrunc double %.0.in.in.i to float
  %.0.i = fpext float %.0.in.i to double
  %i.dt = tail call i32 @Qstep2QP(double noundef %.0.i) #21
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1344 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !51 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !49 ; 2 uses
  %i.dz = tail call noundef i32 @llvm.smax.i32(i32 %i.dt, i32 %i.dw)
  %i.ea = tail call noundef i32 @llvm.smin.i32(i32 %i.dz, i32 %i.dy) ; 3 uses
  store i32 %i.ea, ptr %i.du, align 8, !tbaa !44
  %i.eb = load ptr, ptr @img, align 8, !tbaa !8   ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 20
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !93 ; 2 uses
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %.thread, label %bb.ab

.thread:                                          ; preds = %updateModelQPFrame.exit
  %i.ef = sub nsw i32 %i.br, %i.bp
  %i.eg = add nsw i32 %i.br, %i.bp
  %i.eh = tail call noundef i32 @llvm.smax.i32(i32 %i.ea, i32 %i.ef)
  %i.ei = tail call noundef i32 @llvm.smin.i32(i32 %i.eh, i32 %i.eg) ; 2 uses
  store i32 %i.ei, ptr %i.du, align 8, !tbaa !44
  br label %bb.ac

bb.ab:                                            ; preds = %updateModelQPFrame.exit, %bb.s
  %i.ej = phi i32 [ %i.dy, %updateModelQPFrame.exit ], [ %i.cl, %bb.s ]
  %i.ek = phi i32 [ %i.dw, %updateModelQPFrame.exit ], [ %i.cj, %bb.s ]
  %i.el = phi i32 [ %i.ea, %updateModelQPFrame.exit ], [ %i.cn, %bb.s ] ; 5 uses
  %i.em = phi i32 [ %i.ed, %updateModelQPFrame.exit ], [ %i.s, %bb.s ]
  %i.en = phi ptr [ %i.eb, %updateModelQPFrame.exit ], [ %i.a, %bb.s ]
  switch i32 %i.em, label %updateQPNonPicAFF.exit [
    i32 0, label %bb.ac
    i32 1, label %bb.ag
  ]

bb.ac:                                            ; preds = %.thread, %bb.ab
  %i.eo = phi i32 [ %i.ei, %.thread ], [ %i.el, %bb.ab ] ; 7 uses
  %i.ep = load ptr, ptr @generic_RC, align 8, !tbaa !8 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !88
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.ad, label %updateQPNonPicAFF.exit

bb.ad:                                            ; preds = %bb.ac
  %i.et = load ptr, ptr @active_sps, align 8, !tbaa !8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 1148
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !102
  %.not.i130 = icmp eq i32 %i.ev, 0
  br i1 %.not.i130, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 44 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !106
  %i.ey = add nsw i32 %i.ex, %i.eo
  store i32 %i.ey, ptr %i.ew, align 4, !tbaa !106
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !97
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i32 %i.fa, ptr %i.fb, align 8, !tbaa !98
  store i32 %i.eo, ptr %i.ez, align 4, !tbaa !97
  store i32 %i.eo, ptr %i.bq, align 8, !tbaa !107
  br label %updateQPNonPicAFF.exit

bb.af:                                            ; preds = %bb.ad
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1460
  store i32 %i.eo, ptr %i.fc, align 4, !tbaa !46
  br label %updateQPNonPicAFF.exit

bb.ag:                                            ; preds = %bb.ab
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !98
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 1356
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !97
  %i.fh = add nsw i32 %i.fg, %i.fe
  %i.fi = ashr i32 %i.fh, 1                       ; 2 uses
  %i.fj = add nsw i32 %i.fi, 1
  %i.fk = load ptr, ptr @input, align 8, !tbaa !8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 2968
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !122
  %.not127 = icmp eq i32 %i.fm, 0
  br i1 %.not127, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fn = getelementptr inbounds nuw i8, ptr %i.en, i64 14364
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !123 ; 2 uses
  %.not128 = icmp eq i32 %i.fo, 0
  br i1 %.not128, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fp = load ptr, ptr @gop_structure, align 8, !tbaa !8
  %i.fq = sext i32 %i.fo to i64
  %i.fr = getelementptr [24 x i8], ptr %i.fp, i64 %i.fq
  %i.fs = getelementptr i8, ptr %i.fr, i64 -8
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !125
  %i.fu = sub nsw i32 %i.el, %i.ft
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.fv = phi i32 [ %i.fu, %bb.ai ], [ %i.el, %bb.ah ], [ %i.el, %bb.ag ]
  %.neg = phi i32 [ 0, %bb.ai ], [ 0, %bb.ah ], [ -5, %bb.ag ]
  %i.fw = add nsw i32 %i.fj, %.neg
  %i.fx = add nsw i32 %i.fi, 6
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.fz = tail call noundef i32 @llvm.smax.i32(i32 %i.fv, i32 %i.fw)
  %i.ga = tail call noundef i32 @llvm.smin.i32(i32 %i.fz, i32 %i.fx)
  %i.gb = tail call noundef i32 @llvm.smax.i32(i32 %i.ga, i32 %i.ek)
  %i.gc = tail call noundef i32 @llvm.smin.i32(i32 %i.gb, i32 %i.ej) ; 2 uses
  store i32 %i.gc, ptr %i.fy, align 8, !tbaa !44
  br label %updateQPNonPicAFF.exit

bb.ak:                                            ; preds = %bb.d
  %i.gd = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !93
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.gg = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !109
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.gj = load i32, ptr %i.a, align 8, !tbaa !101
  %i.gk = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4
  %.not122 = icmp eq i32 %i.gj, %i.gk
  br i1 %.not122, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gl = load ptr, ptr @input, align 8, !tbaa !8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4704
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !94
  %i.go = icmp eq i32 %i.gn, 1
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !44 ; 3 uses
  br i1 %i.go, label %bb.ao, label %updateBottomField.exit

bb.ao:                                            ; preds = %bb.an
  %i.gr = getelementptr inbounds nuw i8, ptr %i.i, i64 44 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !106
  %i.gt = add nsw i32 %i.gs, %i.gq
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !106
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !97
  %i.gw = add nsw i32 %i.gv, 1
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i32 %i.gw, ptr %i.gx, align 8, !tbaa !98
  store i32 %i.gq, ptr %i.gu, align 4, !tbaa !97
  br label %updateBottomField.exit

updateBottomField.exit:                           ; preds = %bb.an, %bb.ao
  %.sink9.i = phi i64 [ 1328, %bb.ao ], [ 1456, %bb.an ]
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.i
  store i32 %i.gq, ptr %i.gy, align 8, !tbaa !4
  br label %bb.ap

bb.ap:                                            ; preds = %updateBottomField.exit, %bb.am, %bb.al, %bb.ak
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !44
  br label %updateQPNonPicAFF.exit

bb.aq:                                            ; preds = %bb.b
  %i.hb = load i32, ptr %i.a, align 8, !tbaa !101
  %i.hc = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4
  %.not119 = icmp eq i32 %i.hb, %i.hc
  br i1 %.not119, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !48 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i32 %i.he, ptr %i.hf, align 8, !tbaa !44
  br label %updateQPNonPicAFF.exit

bb.as:                                            ; preds = %bb.aq
  %i.hg = load ptr, ptr @generic_RC, align 8, !tbaa !8 ; 10 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 40
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !75
  %i.hj = icmp eq i32 %i.hi, 1
  br i1 %i.hj, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 48
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !100
  %i.hm = icmp eq i32 %i.hl, 0
  br i1 %i.hm, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !88
  switch i32 %i.ho, label %bb.bt [
    i32 0, label %bb.aw
    i32 1, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hg, i64 12
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !109
  %i.hr = icmp eq i32 %i.hq, 0
  br i1 %i.hr, label %bb.aw, label %bb.bt

bb.aw:                                            ; preds = %bb.au, %bb.av
end_hunk_4
begin_hunk_5_@updateQPRC3:bb.a
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !43 ; 4 uses
  br i1 %i.jk, label %bb.bf, label %.sink.split31.i

bb.bf:                                            ; preds = %bb.be
  %i.jn = add nsw i32 %i.jm, 2
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !49
  %spec.store.select.i = tail call i32 @llvm.smin.i32(i32 %i.jn, i32 %i.jq) ; 4 uses
  store i32 %spec.store.select.i, ptr %i.jo, align 8
  %.not26.i = icmp eq i32 %1, 0
  br i1 %.not26.i, label %bb.bg, label %.sink.split31.i

bb.bg:                                            ; preds = %bb.bf
  %i.jr = load i32, ptr %i.id, align 4, !tbaa !88
  %i.js = icmp eq i32 %i.jr, 0
  br i1 %i.js, label %.sink.split31.i, label %updateFirstBU.exit

.sink.split31.i:                                  ; preds = %bb.bg, %bb.bf, %bb.be
  %.sink35.i = phi i64 [ 1504, %bb.bf ], [ 1504, %bb.bg ], [ 1344, %bb.be ]
  %.sink33.i = phi i32 [ 1, %bb.bf ], [ 1, %bb.bg ], [ %i.jm, %bb.be ]
  %.ph32.i = phi i32 [ %spec.store.select.i, %bb.bf ], [ %spec.store.select.i, %bb.bg ], [ %i.jm, %bb.be ]
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 %.sink35.i
  store i32 %.sink33.i, ptr %i.jt, align 8, !tbaa !4
  br label %updateFirstBU.exit

updateFirstBU.exit:                               ; preds = %bb.bg, %.sink.split31.i
  %i.ju = phi i32 [ %spec.store.select.i, %bb.bg ], [ %.ph32.i, %.sink.split31.i ] ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 1364 ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !113
  %i.jx = add nsw i32 %i.jw, %i.ju
  store i32 %i.jx, ptr %i.jv, align 4, !tbaa !113
  %i.jy = add nsw i32 %.0114, -1
  store i32 %i.jy, ptr %i.ij, align 8, !tbaa !110
  store i32 %i.jm, ptr %i.ib, align 8, !tbaa !107
  br label %updateQPNonPicAFF.exit

bb.bh:                                            ; preds = %bb.ax
  %i.jz = getelementptr inbounds nuw i8, ptr %i.hg, i64 24 ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !111
  %i.kb = getelementptr inbounds nuw i8, ptr %i.hg, i64 28 ; 2 uses
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !112
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !37
  %i.kf = add i32 %i.kc, %i.ka
  %i.kg = sub i32 %i.ke, %i.kf                    ; 2 uses
  store i32 %i.kg, ptr %i.kd, align 8, !tbaa !37
  store i32 0, ptr %i.jz, align 8, !tbaa !111
  store i32 0, ptr %i.kb, align 4, !tbaa !112
  %i.kh = icmp slt i32 %i.kg, 0
  br i1 %i.kh, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ki = tail call i32 @updateNegativeTarget(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.ic)
  br label %updateQPNonPicAFF.exit

bb.bj:                                            ; preds = %bb.bh
  %i.kj = load ptr, ptr @input, align 8, !tbaa !8 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 4704
  %i.kl = load i32, ptr %i.kk, align 8, !tbaa !94
  %i.km = icmp eq i32 %i.kl, 2
  br i1 %i.km, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kj, i64 4708
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !95
  %.not.i133 = icmp ne i32 %i.ko, 0
  %i.kp = icmp eq i32 %i.ie, 1
  %or.cond = and i1 %i.kp, %.not.i133
  br i1 %or.cond, label %bb.bm, label %bb.bo

bb.bl:                                            ; preds = %bb.bj
  %.old = icmp eq i32 %i.ie, 1
  br i1 %.old, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 1496
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !55 ; 2 uses
  %i.ks = sub nsw i32 %i.ih, %i.ik
  %i.kt = sext i32 %i.ks to i64                   ; 2 uses
  %i.ku = getelementptr inbounds [8 x i8], ptr %i.kr, i64 %i.kt
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !77
  %i.kw = tail call double @llvm.fmuladd.f64(double %i.ia, double %i.kv, double %i.hz)
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 1400
  store double %i.kw, ptr %i.kx, align 8, !tbaa !36
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 1416 ; 2 uses
  store double 0.000000e+00, ptr %i.ky, align 8, !tbaa !117
  %.not40.not46.i = icmp sgt i32 %i.ik, 0
  br i1 %.not40.not46.i, label %.lr.ph49.i, label %predictCurrPicMAD.exit

.lr.ph49.i:                                       ; preds = %bb.bm
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.la = sext i32 %i.ih to i64
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %.lr.ph49.i
  %indvars.iv52.i = phi i64 [ %i.la, %.lr.ph49.i ], [ %indvars.iv.next53.i, %bb.bn ]
  %storemerge4147.i = phi double [ 0.000000e+00, %.lr.ph49.i ], [ %i.le, %bb.bn ]
  %indvars.iv.next53.i = add nsw i64 %indvars.iv52.i, -1 ; 3 uses
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.kr, i64 %indvars.iv.next53.i
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !77
  %i.ld = tail call double @llvm.fmuladd.f64(double %i.ia, double %i.lc, double %i.hz) ; 3 uses
  store double %i.ld, ptr %i.kz, align 8, !tbaa !118
  %i.le = tail call double @llvm.fmuladd.f64(double %i.ld, double %i.ld, double %storemerge4147.i) ; 2 uses
  store double %i.le, ptr %i.ky, align 8, !tbaa !117
  %.not40.not.i = icmp sgt i64 %indvars.iv.next53.i, %i.kt
  br i1 %.not40.not.i, label %bb.bn, label %predictCurrPicMAD.exit, !llvm.loop !119

bb.bo:                                            ; preds = %bb.bl, %bb.bk
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !52 ; 2 uses
  %i.lh = sub nsw i32 %i.ih, %i.ik
  %i.li = sext i32 %i.lh to i64                   ; 2 uses
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.lg, i64 %i.li
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !77
  %i.ll = tail call double @llvm.fmuladd.f64(double %i.ia, double %i.lk, double %i.hz)
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 1400
  store double %i.ll, ptr %i.lm, align 8, !tbaa !36
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 1416 ; 2 uses
  store double 0.000000e+00, ptr %i.ln, align 8, !tbaa !117
  %.not39.not43.i = icmp sgt i32 %i.ik, 0
  br i1 %.not39.not43.i, label %.lr.ph.i, label %predictCurrPicMAD.exit

.lr.ph.i:                                         ; preds = %bb.bo
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.lp = sext i32 %i.ih to i64
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.lp, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.bp ]
  %storemerge44.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.lt, %bb.bp ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.lq = getelementptr inbounds [8 x i8], ptr %i.lg, i64 %indvars.iv.next.i
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !77
  %i.ls = tail call double @llvm.fmuladd.f64(double %i.ia, double %i.lr, double %i.hz) ; 3 uses
  store double %i.ls, ptr %i.lo, align 8, !tbaa !118
  %i.lt = tail call double @llvm.fmuladd.f64(double %i.ls, double %i.ls, double %storemerge44.i) ; 2 uses
  store double %i.lt, ptr %i.ln, align 8, !tbaa !117
  %.not39.not.i = icmp sgt i64 %indvars.iv.next.i, %i.li
  br i1 %.not39.not.i, label %bb.bp, label %predictCurrPicMAD.exit, !llvm.loop !121

predictCurrPicMAD.exit:                           ; preds = %bb.bp, %bb.bn, %bb.bm, %bb.bo
  tail call void @updateModelQPBU(ptr noundef nonnull %0, i32 poison, i32 noundef %i.ic)
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 1344 ; 2 uses
  %i.lv = load i32, ptr %i.lu, align 8, !tbaa !44 ; 5 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 1364 ; 2 uses
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !113
  %i.ly = add nsw i32 %i.lx, %i.lv
  store i32 %i.ly, ptr %i.lw, align 4, !tbaa !113
  store i32 %i.lv, ptr %i.ib, align 8, !tbaa !107
  %i.lz = load i32, ptr %i.ij, align 8, !tbaa !110
  %i.ma = add nsw i32 %i.lz, -1                   ; 2 uses
  store i32 %i.ma, ptr %i.ij, align 8, !tbaa !110
  %i.mb = icmp eq i32 %i.ma, 0
  br i1 %i.mb, label %bb.bq, label %updateQPNonPicAFF.exit

bb.bq:                                            ; preds = %predictCurrPicMAD.exit
  %i.mc = load ptr, ptr @img, align 8, !tbaa !8   ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 20
  %i.me = load i32, ptr %i.md, align 4, !tbaa !93
  %i.mf = icmp eq i32 %i.me, 0
  br i1 %i.mf, label %bb.br, label %updateQPNonPicAFF.exit

bb.br:                                            ; preds = %bb.bq
  %i.mg = load i32, ptr %i.mc, align 8, !tbaa !101
  %i.mh = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4
  %.not120 = icmp eq i32 %i.mg, %i.mh
  br i1 %.not120, label %updateQPNonPicAFF.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  tail call void @updateLastBU(ptr noundef nonnull %0, i32 noundef %1)
  %.pre = load i32, ptr %i.lu, align 8, !tbaa !44
  br label %updateQPNonPicAFF.exit

bb.bt:                                            ; preds = %bb.au, %bb.av
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.mj = load i32, ptr %i.mi, align 8, !tbaa !44
  br label %updateQPNonPicAFF.exit

updateQPNonPicAFF.exit:                           ; preds = %predictCurrPicMAD.exit, %bb.bq, %bb.br, %bb.bs, %bb.aj, %bb.af, %bb.ae, %bb.ac, %bb.ab, %bb.i, %bb.k, %bb.l, %bb.bt, %bb.bi, %updateFirstBU.exit, %bb.aw, %bb.ar, %bb.ap, %bb.f
  %.0 = phi i32 [ %i.he, %bb.ar ], [ %i.z, %bb.i ], [ %i.p, %bb.f ], [ %i.ha, %bb.ap ], [ %i.hs, %bb.aw ], [ %i.mj, %bb.bt ], [ %i.ju, %updateFirstBU.exit ], [ %i.ki, %bb.bi ], [ %i.gc, %bb.aj ], [ %i.z, %bb.l ], [ %i.z, %bb.k ], [ %i.el, %bb.ab ], [ %i.eo, %bb.ac ], [ %i.eo, %bb.ae ], [ %i.eo, %bb.af ], [ %.pre, %bb.bs ], [ %i.lv, %bb.br ], [ %i.lv, %bb.bq ], [ %i.lv, %predictCurrPicMAD.exit ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @rc_init_GOP(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [5 x i32], align 16               ; 10 uses
  %i.b = load ptr, ptr @input, align 8, !tbaa !8  ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !57
  %cond = icmp eq i32 %i.d, 3
  br i1 %cond, label %bb.b, label %._crit_edge156

._crit_edge156:                                   ; preds = %bb.a
  %.pre157 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  br label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 2096
  %i.f = load i32, ptr %i.e, align 8, !tbaa !63   ; 6 uses
  %i.g = add nsw i32 %i.f, 1                      ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 5168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i8 0, i64 40, i1 false), !tbaa !77
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2968
  %i.j = load i32, ptr %i.i, align 8, !tbaa !122
  switch i32 %i.j, label %bb.f [
    i32 1, label %bb.d
    i32 2, label %.preheader129.preheader
    i32 3, label %bb.e
  ]

.preheader129.preheader:                          ; preds = %bb.c
  %i.k = icmp sgt i32 %i.f, 0
  br i1 %i.k, label %.lr.ph, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.l = ashr i32 %i.f, 1                         ; 2 uses
  store i32 %i.l, ptr %i.a, align 16, !tbaa !4
  %i.m = sub nsw i32 %i.f, %i.l
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.m, i32 0)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %spec.select, ptr %i.n, align 4, !tbaa !4
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader129.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader129.preheader ] ; 3 uses
  %.1111130 = phi i32 [ %i.o, %.lr.ph ], [ %i.g, %.preheader129.preheader ] ; 2 uses
  %i.o = lshr i32 %.1111130, 1
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  %i.q = shl nuw i32 1, %i.p
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.q, ptr %i.r, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = icmp ugt i32 %.1111130, 3
  br i1 %i.s, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !129

bb.e:                                             ; preds = %bb.c
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !130
  %i.u = tail call i64 @fwrite(ptr nonnull @.str.5, i64 72, i64 1, ptr %i.t) #23 ; 0 uses
  tail call void @exit(i32 noundef 1) #24
  unreachable

bb.f:                                             ; preds = %bb.c
  store i32 %i.f, ptr %i.a, align 16, !tbaa !4
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.lr.ph
  %i.v = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.f, %.preheader129.preheader, %.loopexit.loopexit, %.preheader
  %.sink = phi i32 [ 0, %.preheader ], [ 2, %bb.d ], [ 1, %bb.f ], [ 0, %.preheader129.preheader ], [ %i.v, %.loopexit.loopexit ] ; 7 uses
  %i.w = load ptr, ptr @generic_RC, align 8, !tbaa !8 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  store i32 %.sink, ptr %i.x, align 8, !tbaa !132
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 1560 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !133  ; 2 uses
  %i.aa = tail call i32 @llvm.umax.i32(i32 %i.z, i32 1)
  %spec.select126 = mul nsw i32 %i.aa, %i.g
  %i.ab = sitofp i32 %spec.select126 to double
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 5120
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !60
  %i.ae = sitofp i32 %i.ad to double
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 4080
  %i.ag = load double, ptr %i.af, align 8, !tbaa !134
  %i.ah = fdiv double %i.ae, %i.ag
  %i.ai = fmul double %i.ah, %i.ab
  %i.aj = fptrunc double %i.ai to float
  %i.ak = icmp sgt i32 %.sink, 0                  ; 2 uses
  br i1 %i.ak, label %.lr.ph135, label %._crit_edge

.lr.ph135:                                        ; preds = %.loopexit
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 5168 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 116 ; 3 uses
  %wide.trip.count = zext nneg i32 %.sink to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.an = icmp eq i32 %.sink, 1
  br i1 %i.an, label %.epil.preheader, label %.lr.ph135.new

.lr.ph135.new:                                    ; preds = %.lr.ph135
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph135.new
  %indvars.iv146 = phi i64 [ 0, %.lr.ph135.new ], [ %indvars.iv.next147.1, %bb.g ] ; 5 uses
  %.0134 = phi float [ 0.000000e+00, %.lr.ph135.new ], [ %i.bf, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph135.new ], [ %niter.next.1, %bb.g ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv146
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !4  ; 2 uses
  %i.aq = sitofp i32 %i.ap to double
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv146
  %i.as = load double, ptr %i.ar, align 8, !tbaa !77
  %i.at = fmul double %i.as, %i.aq
  %i.au = fptrunc double %i.at to float
  %i.av = fadd float %.0134, %i.au
  %i.aw = mul nsw i32 %i.ap, %1
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv146
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !4
  %indvars.iv.next147 = or disjoint i64 %indvars.iv146, 1 ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next147
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4  ; 2 uses
  %i.ba = sitofp i32 %i.az to double
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next147
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !77
  %i.bd = fmul double %i.bc, %i.ba
  %i.be = fptrunc double %i.bd to float
  %i.bf = fadd float %i.av, %i.be                 ; 3 uses
  %i.bg = mul nsw i32 %i.az, %1
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.next147
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !4
  %indvars.iv.next147.1 = add nuw nsw i64 %indvars.iv146, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.g, !llvm.loop !135

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph135
  %indvars.iv146.epil.init = phi i64 [ 0, %.lr.ph135 ], [ %indvars.iv.next147.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.0134.epil.init = phi float [ 0.000000e+00, %.lr.ph135 ], [ %i.bf, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod174 = trunc i32 %.sink to i1
  tail call void @llvm.assume(i1 %lcmp.mod174)
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv146.epil.init
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4  ; 2 uses
  %i.bk = sitofp i32 %i.bj to double
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv146.epil.init
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !77
  %i.bn = fmul double %i.bm, %i.bk
  %i.bo = fptrunc double %i.bn to float
  %i.bp = fadd float %.0134.epil.init, %i.bo
  %i.bq = mul nsw i32 %i.bj, %1
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv146.epil.init
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !4
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.epil.preheader
  %.lcssa = phi float [ %i.bf, %._crit_edge.loopexit.unr-lcssa ], [ %i.bp, %.epil.preheader ]
  %.pre = load i32, ptr %i.y, align 8, !tbaa !133
  %i.bs = fadd float %.lcssa, 1.000000e+00
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit
  %i.bt = phi i32 [ %i.z, %.loopexit ], [ %.pre, %._crit_edge.loopexit ] ; 4 uses
  %.0.lcssa = phi float [ 1.000000e+00, %.loopexit ], [ %i.bs, %._crit_edge.loopexit ] ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.bv = uitofp nneg i32 %i.bt to float
  %i.bw = fmul float %.0.lcssa, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 5160
  %i.by = load double, ptr %i.bx, align 8, !tbaa !136
  %i.bz = fptrunc double %i.by to float
  %i.ca = fadd float %i.bz, -1.000000e+00
  %i.cb = fadd float %i.bw, %i.ca
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %.1 = phi float [ %i.cb, %bb.h ], [ %.0.lcssa, %._crit_edge ]
  %i.cc = fdiv float %i.aj, %.1
  %i.cd = fadd float %i.cc, 5.000000e-01
  %i.ce = tail call float @llvm.floor.f32(float %i.cd)
  %i.cf = fptosi float %i.ce to i32               ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.w, i64 84
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !137
  %.not121 = icmp eq i32 %i.bt, 0
  br i1 %.not121, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 5160
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !136
  %i.cj = sitofp i32 %i.cf to double
  %i.ck = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.cj, double 5.000000e-01)
  %i.cl = fptosi double %i.ck to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.cm = phi i32 [ %i.cl, %bb.j ], [ 0, %bb.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  store i32 %i.cm, ptr %i.cn, align 8, !tbaa !138
  br i1 %i.ak, label %.lr.ph139, label %._crit_edge140

.lr.ph139:                                        ; preds = %bb.k
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 5168 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.w, i64 92 ; 2 uses
  %wide.trip.count152 = zext nneg i32 %.sink to i64 ; 3 uses
  %i.cq = sitofp i32 %i.cf to double              ; 2 uses
  %min.iters.check = icmp eq i32 %.sink, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph139
  %n.vec = and i64 %wide.trip.count152, 2147483646 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cq, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %index
  %wide.load = load <2 x double>, ptr %i.cr, align 8, !tbaa !77
  %i.cs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %broadcast.splat, <2 x double> splat (double 5.000000e-01))
  %i.ct = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.cs)
  %i.cu = fptosi <2 x double> %i.ct to <2 x i32>
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %index
  store <2 x i32> %i.cu, ptr %i.cv, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count152
  br i1 %cmp.n, label %._crit_edge140.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph139, %middle.block
  %indvars.iv149.ph = phi i64 [ 0, %.lr.ph139 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %scalar.ph ], [ %indvars.iv149.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv149
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !77
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.cq, double 5.000000e-01)
  %i.da = tail call double @llvm.floor.f64(double %i.cz)
  %i.db = fptosi double %i.da to i32
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv149
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !4
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond153.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count152
  br i1 %exitcond153.not, label %._crit_edge140.loopexit, label %scalar.ph, !llvm.loop !142

._crit_edge140.loopexit:                          ; preds = %scalar.ph, %middle.block
  %.pre154 = load i32, ptr %i.y, align 8, !tbaa !133
  br label %._crit_edge140

._crit_edge140:                                   ; preds = %._crit_edge140.loopexit, %bb.k
  %i.dd = phi i32 [ %.pre154, %._crit_edge140.loopexit ], [ %i.bt, %bb.k ] ; 2 uses
  %.not122 = icmp eq i32 %i.dd, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre155 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !143 ; 2 uses
  br i1 %.not122, label %._crit_edge140._crit_edge, label %bb.l

bb.l:                                             ; preds = %._crit_edge140
  %i.de = add nsw i32 %.pre155, -1
  %i.df = sdiv i32 %i.de, %i.dd
  br label %._crit_edge140._crit_edge

._crit_edge140._crit_edge:                        ; preds = %._crit_edge140, %bb.l
  %i.dg = phi i32 [ %i.df, %bb.l ], [ 0, %._crit_edge140 ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.w, i64 140
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !144
  %i.di = xor i32 %i.dg, -1
  %i.dj = add i32 %.pre155, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  store i32 %i.dj, ptr %i.dk, align 8, !tbaa !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge156, %._crit_edge140._crit_edge
  %i.dl = phi ptr [ %.pre157, %._crit_edge156 ], [ %i.w, %._crit_edge140._crit_edge ] ; 11 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 80 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !76 ; 3 uses
  %i.do = sitofp i32 %i.dn to float
  %i.dp = load float, ptr %0, align 8, !tbaa !61  ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !65 ; 2 uses
  %i.ds = fdiv float %i.dp, %i.dr
  %i.dt = fadd float %i.ds, %i.do
  %i.du = fptosi float %i.dt to i32
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 1564
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !39
  %i.dw = sitofp i32 %i.dn to double
  %i.dx = fpext float %i.dp to double
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.dx, double 2.048000e+00, double %i.dw)
  %i.dz = fptosi double %i.dy to i32
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 1556
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !40
  %i.eb = add i32 %1, 1
  %i.ec = add i32 %i.eb, %2                       ; 2 uses
  %i.ed = sitofp i32 %i.ec to float
  %i.ee = fmul float %i.dp, %i.ed
  %i.ef = fdiv float %i.ee, %i.dr
  %i.eg = fpext float %i.ef to double
  %i.eh = fadd double %i.eg, 5.000000e-01
  %i.ei = tail call double @llvm.floor.f64(double %i.eh)
  %i.ej = fptosi double %i.ei to i32
  %i.ek = add nsw i32 %i.dn, %i.ej
  store i32 %i.ek, ptr %i.dm, align 8, !tbaa !76
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 1544
  store i32 %1, ptr %i.el, align 8, !tbaa !146
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 1548
  store i32 %2, ptr %i.em, align 4, !tbaa !147
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 1504
  store i32 0, ptr %i.en, align 8, !tbaa !148
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 4704
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !94 ; 2 uses
  %.not123 = icmp eq i32 %i.ep, 0
  br i1 %.not123, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 4708
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !95
  %.not124 = icmp eq i32 %i.er, 0
  br i1 %.not124, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 5128
  %i.et = load i32, ptr %i.es, align 8, !tbaa !29
  %i.eu = load ptr, ptr @img, align 8, !tbaa !8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 15352
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !10
  %i.ex = icmp eq i32 %i.et, %i.ew
  br i1 %i.ex, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  store i32 1, ptr %i.ey, align 4, !tbaa !109
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 1592
  store i32 %1, ptr %i.ez, align 8, !tbaa !149
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dl, i64 40 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !75 ; 2 uses
  %i.fc = add nsw i32 %i.fb, 1
  store i32 %i.fc, ptr %i.fa, align 8, !tbaa !75
  %i.fd = icmp eq i32 %i.fb, 0
  br i1 %i.fd, label %bb.q, label %bb.r

.thread:                                          ; preds = %bb.o
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  store i32 0, ptr %i.fe, align 4, !tbaa !109
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 1592
  store i32 %1, ptr %i.ff, align 8, !tbaa !149
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dl, i64 40 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !75 ; 2 uses
  %i.fi = add nsw i32 %i.fh, 1
  store i32 %i.fi, ptr %i.fg, align 8, !tbaa !75
  %i.fj = icmp eq i32 %i.fh, 0
  br i1 %i.fj, label %bb.q, label %.thread127.thread

bb.q:                                             ; preds = %.thread, %bb.p
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 5124
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !91 ; 8 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.fl, ptr %i.fm, align 8, !tbaa !48
  %i.fn = add nsw i32 %i.fl, -1
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 1356
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !97
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 1452
  store i32 %i.fl, ptr %i.fp, align 4, !tbaa !150
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store i32 %i.fl, ptr %i.fq, align 8, !tbaa !43
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i32 %i.fl, ptr %i.fr, align 8, !tbaa !44
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1456
  store i32 %i.fl, ptr %i.fs, align 8, !tbaa !45
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 1460
  store i32 %i.fl, ptr %i.ft, align 4, !tbaa !46
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.fl, ptr %i.fu, align 4, !tbaa !47
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.fv = icmp eq i32 %i.ep, 2
  br i1 %i.fv, label %.thread127.thread, label %.thread127

.thread127:                                       ; preds = %bb.r
  %.phi.trans.insert158 = getelementptr inbounds nuw i8, ptr %i.b, i64 4708
  %.pre159 = load i32, ptr %.phi.trans.insert158, align 4, !tbaa !95
  %i.fw = icmp eq i32 %.pre159, 0
  br i1 %i.fw, label %.thread127._crit_edge, label %.thread127.thread

.thread127._crit_edge:                            ; preds = %.thread127
  %.phi.trans.insert160 = getelementptr inbounds nuw i8, ptr %i.dl, i64 44
  %.pre161 = load i32, ptr %.phi.trans.insert160, align 4, !tbaa !106
  %.phi.trans.insert162 = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %.pre163 = load i32, ptr %.phi.trans.insert162, align 8, !tbaa !151
  br label %bb.u

.thread127.thread:                                ; preds = %.thread, %.thread127, %bb.r
  %i.fx = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !96
  %i.fz = icmp eq i32 %i.fy, 1
  %i.ga = getelementptr inbounds nuw i8, ptr %i.dl, i64 44 ; 3 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !106 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 2 uses
  br i1 %i.fz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread127.thread
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 1460
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !46 ; 3 uses
  %i.gf = add nsw i32 %i.gb, %i.ge                ; 2 uses
  store i32 %i.gf, ptr %i.ga, align 4, !tbaa !106
  store i32 %i.ge, ptr %i.gc, align 8, !tbaa !151
  br label %bb.u

bb.t:                                             ; preds = %.thread127.thread
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !45 ; 3 uses
  %i.gi = add nsw i32 %i.gb, %i.gh                ; 2 uses
  store i32 %i.gi, ptr %i.ga, align 4, !tbaa !106
  store i32 %i.gh, ptr %i.gc, align 8, !tbaa !151
  br label %bb.u

bb.u:                                             ; preds = %.thread127._crit_edge, %bb.s, %bb.t
  %i.gj = phi i32 [ %.pre163, %.thread127._crit_edge ], [ %i.ge, %bb.s ], [ %i.gh, %bb.t ]
  %i.gk = phi i32 [ %.pre161, %.thread127._crit_edge ], [ %i.gf, %bb.s ], [ %i.gi, %bb.t ]
  %i.gl = sitofp i32 %i.gk to double
  %i.gm = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !100
  %i.go = sitofp i32 %i.gn to double
  %i.gp = fdiv double %i.gl, %i.go
  %i.gq = fadd double %i.gp, 5.000000e-01
  %i.gr = fptosi double %i.gq to i32
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.gt = sitofp i32 %i.ec to double
  %i.gu = fdiv double %i.gt, 1.500000e+01
  %i.gv = fadd double %i.gu, 5.000000e-01
  %i.gw = fptosi double %i.gv to i32
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.gw, i32 2)
  %i.gx = sub nsw i32 %i.gr, %spec.store.select   ; 2 uses
  %i.gy = add nsw i32 %i.gj, -2
  %i.gz = icmp sgt i32 %i.gx, %i.gy
  %i.ha = sext i1 %i.gz to i32
  %spec.select172 = add nsw i32 %i.gx, %i.ha
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 1452 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !150 ; 2 uses
  %i.hd = add nsw i32 %i.hc, -2
  %i.he = add nsw i32 %i.hc, 2
  %i.hf = tail call noundef i32 @llvm.smax.i32(i32 %spec.select172, i32 %i.hd)
  %i.hg = tail call noundef i32 @llvm.smin.i32(i32 %i.hf, i32 %i.he)
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !51
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !49
  %i.hl = tail call noundef i32 @llvm.smax.i32(i32 %i.hg, i32 %i.hi)
  %i.hm = tail call noundef i32 @llvm.smin.i32(i32 %i.hl, i32 %i.hk) ; 6 uses
  store i32 %i.hm, ptr %i.gs, align 4, !tbaa !47
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.hm, ptr %i.hn, align 8, !tbaa !48
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 1328
  store i32 %i.hm, ptr %i.ho, align 8, !tbaa !107
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store i32 %i.hm, ptr %i.hp, align 8, !tbaa !43
  store i32 %i.hm, ptr %i.hb, align 4, !tbaa !150
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !97
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i32 %i.hr, ptr %i.hs, align 8, !tbaa !98
  %i.ht = add nsw i32 %i.hm, -1
  store i32 %i.ht, ptr %i.hq, align 4, !tbaa !97
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.q
  %i.hu = getelementptr inbounds nuw i8, ptr %i.dl, i64 44
  store i32 0, ptr %i.hu, align 4, !tbaa !106
  %i.hv = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  store i32 0, ptr %i.hv, align 8, !tbaa !100
end_hunk_5
begin_hunk_6_@rc_update_pict_frame:bb.a
bb.aa:                                            ; preds = %bb.z
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 1364
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !113
  %i.fq = sitofp i32 %i.fp to double
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 1388
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !67
  %i.ft = sitofp i32 %i.fs to double
  %i.fu = fdiv double %i.fq, %i.ft
  %i.fv = sitofp i32 %1 to double
  %i.fw = tail call double @llvm.fmuladd.f64(double %i.fv, double %i.fu, double 5.000000e-01)
  %i.fx = tail call double @llvm.floor.f64(double %i.fw)
  %i.fy = fptosi double %i.fx to i32
  br label %updateComplexity.exit28.thread.thread.thread

bb.ab:                                            ; preds = %.thread41
  switch i32 %i.ex, label %.thread39 [
    i32 1, label %.thread65
    i32 2, label %bb.ac
  ]

.thread65:                                        ; preds = %bb.ab
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !44
  %i.gb = mul nsw i32 %i.ga, %1
  %i.gc = sitofp i32 %i.gb to double
  %i.gd = fadd double %i.gc, 5.000000e-01
  %i.ge = tail call double @llvm.floor.f64(double %i.gd)
  %i.gf = fptosi double %i.ge to i32
  br label %bb.ai

updateComplexity.exit28:                          ; preds = %bb.x, %.thread41
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !44
  %i.gi = mul nsw i32 %i.gh, %1
  %i.gj = sitofp i32 %i.gi to double
  %i.gk = fadd double %i.gj, 5.000000e-01
  %i.gl = tail call double @llvm.floor.f64(double %i.gk)
  %i.gm = fptosi double %i.gl to i32              ; 2 uses
  %i.gn = icmp eq i32 %i.ex, 2
  br i1 %i.gn, label %bb.ac, label %updateComplexity.exit28.thread

bb.ac:                                            ; preds = %bb.ab, %updateComplexity.exit28
  %i.go = load i32, ptr %i.d, align 8, !tbaa !101
  %i.gp = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4
  %.not15 = icmp eq i32 %i.go, %i.gp
  br i1 %.not15, label %.thread39, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gq = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 140 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !144
  %i.gt = add nsw i32 %i.gs, -1
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !144
  br label %.thread39

updateComplexity.exit28.thread:                   ; preds = %updateComplexity.exit28
  br i1 %i.ey, label %updateComplexity.exit28.thread.thread, label %bb.ah

updateComplexity.exit28.thread.thread:            ; preds = %updateComplexity.exit28.thread
  %.pre = load i32, ptr %i.d, align 8, !tbaa !101
  %.pre72 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4
  %i.gu = icmp eq i32 %.pre, %.pre72
  br i1 %i.gu, label %.thread39, label %updateComplexity.exit28.thread.thread.thread

updateComplexity.exit28.thread.thread.thread:     ; preds = %bb.aa, %bb.z, %updateComplexity.exit28.thread.thread
  %.0.i27465890 = phi i32 [ %i.gm, %updateComplexity.exit28.thread.thread ], [ %i.fy, %bb.aa ], [ 0, %bb.z ] ; 2 uses
  %i.gv = load ptr, ptr @generic_RC, align 8, !tbaa !8 ; 6 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 12 ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !109
  %i.gy = icmp eq i32 %i.gx, 0
  br i1 %i.gy, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %updateComplexity.exit28.thread.thread.thread
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !88
  %i.hb = icmp eq i32 %i.ha, 0
  br i1 %i.hb, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %updateComplexity.exit28.thread.thread.thread
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 1528
  store i32 %.0.i27465890, ptr %i.hc, align 8, !tbaa !58
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 1544 ; 2 uses
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !146
  %i.hf = add nsw i32 %i.he, -1
  store i32 %i.hf, ptr %i.hd, align 8, !tbaa !146
  %i.hg = sitofp i32 %.0.i27465890 to double
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 1568
  store double %i.hg, ptr %i.hh, align 8, !tbaa !156
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !166
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 1332
  store i32 %i.hj, ptr %i.hk, align 4, !tbaa !170
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gv, i64 36 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !74
  %i.hn = add nsw i32 %i.hm, 1
  store i32 %i.hn, ptr %i.hl, align 4, !tbaa !74
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gv, i64 48 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !100
  %i.hq = add nsw i32 %i.hp, 1
  store i32 %i.hq, ptr %i.ho, align 8, !tbaa !100
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gv, i64 136 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !145
  %i.ht = add nsw i32 %i.hs, -1
  store i32 %i.ht, ptr %i.hr, align 8, !tbaa !145
  br label %.thread39

bb.ag:                                            ; preds = %bb.ae
  store i32 0, ptr %i.gw, align 4, !tbaa !109
  br label %.thread39

bb.ah:                                            ; preds = %updateComplexity.exit28.thread
  %i.hu = icmp eq i32 %i.ex, 1
  br i1 %i.hu, label %bb.ai, label %.thread39

bb.ai:                                            ; preds = %.thread65, %bb.ah
  %.0.i27464967 = phi i32 [ %i.gf, %.thread65 ], [ %i.gm, %bb.ah ] ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 1532
  store i32 %.0.i27464967, ptr %i.hv, align 4, !tbaa !59
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 1548 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !147
  %i.hy = add nsw i32 %i.hx, -1
  store i32 %i.hy, ptr %i.hw, align 4, !tbaa !147
  %i.hz = sitofp i32 %.0.i27464967 to float
  %i.ia = fdiv float %i.hz, 1.363600e+00
  %i.ib = fpext float %i.ia to double
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 1576
  store double %i.ib, ptr %i.ic, align 8, !tbaa !159
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 1360 ; 2 uses
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !99
  %i.if = add nsw i32 %i.ie, 1
  store i32 %i.if, ptr %i.id, align 8, !tbaa !99
  %i.ig = load ptr, ptr @generic_RC, align 8, !tbaa !8 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 32 ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !73
  %i.ij = add nsw i32 %i.ii, 1
  store i32 %i.ij, ptr %i.ih, align 8, !tbaa !73
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 116
  %i.il = getelementptr inbounds nuw i8, ptr %i.a, i64 2968
  %i.im = load i32, ptr %i.il, align 8, !tbaa !122
  %.not17 = icmp eq i32 %i.im, 0
  br i1 %.not17, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.in = getelementptr inbounds nuw i8, ptr %i.ig, i64 112
  %i.io = load i32, ptr %i.in, align 8, !tbaa !132
  %i.ip = load ptr, ptr @gop_structure, align 8, !tbaa !8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.d, i64 14364
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !123
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr [24 x i8], ptr %i.ip, i64 %i.is
  %i.iu = getelementptr i8, ptr %i.it, i64 -8
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !125
  %i.iw = xor i32 %i.iv, -1
  %i.ix = add i32 %i.io, %i.iw
  %i.iy = sext i32 %i.ix to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %i.iz = phi i64 [ %i.iy, %bb.aj ], [ 0, %bb.ai ]
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.ik, i64 %i.iz ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !4
  %i.jc = add nsw i32 %i.jb, -1
  store i32 %i.jc, ptr %i.ja, align 4, !tbaa !4
  br label %.thread39

.thread39:                                        ; preds = %bb.y, %bb.d, %bb.ab, %bb.g, %bb.ac, %bb.ad, %updateComplexity.exit28.thread.thread, %updateComplexity.exit.thread, %bb.ag, %bb.af, %bb.ak, %bb.ah, %updateComplexity.exit23, %bb.v, %bb.u, %bb.j, %bb.i, %bb.k, %updateComplexity.exit.thread37
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @updateRCModel(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !8    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !93
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @input, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 5136
  %i.g = load i32, ptr %i.f, align 8, !tbaa !57
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.z

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load i32, ptr %i.a, align 8, !tbaa !101
  %i.j = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4
  %.not = icmp eq i32 %i.i, %i.j
  br i1 %.not, label %bb.z, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 15404
  %i.l = load i32, ptr %i.k, align 4, !tbaa !92   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 15352
  %i.n = load i32, ptr %i.m, align 8, !tbaa !10
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = tail call double @ComputeFrameMAD() #21
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1400
  store double %i.p, ptr %i.q, align 8, !tbaa !36
  %i.r = load ptr, ptr @generic_RC, align 8, !tbaa !8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  %i.t = load i32, ptr %i.s, align 4, !tbaa !74
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.u = load ptr, ptr @generic_RC, align 8, !tbaa !8 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !168
  %i.x = ashr i64 %i.w, 8
  %i.y = zext i32 %i.l to i64
  %i.z = sdiv i64 %i.x, %i.y
  %i.aa = sitofp i64 %i.z to double               ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1400
  store double %i.aa, ptr %i.ab, align 8, !tbaa !36
  store i64 0, ptr %i.v, align 8, !tbaa !168
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1388
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !67 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !110 ; 4 uses
  %i.ag = sub nsw i32 %i.ad, %i.af                ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1392
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !171
  %i.ai = icmp sgt i32 %i.ag, 0
  br i1 %i.ai, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1372 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !83
  %i.al = add nsw i32 %i.ag, -1
  %i.am = mul nsw i32 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !111
  %i.ap = add nsw i32 %i.am, %i.ao
  %i.aq = sitofp i32 %i.ap to double
  %i.ar = uitofp nneg i32 %i.ag to double
  %i.as = fdiv double %i.aq, %i.ar
  %i.at = fadd double %i.as, 5.000000e-01
  %i.au = fptosi double %i.at to i32              ; 3 uses
  store i32 %i.au, ptr %i.aj, align 4, !tbaa !83
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1380
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !84 ; 2 uses
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = mul nsw i32 %i.ag, %i.au
  %i.az = mul nsw i32 %i.aw, %i.af
  %i.ba = add nsw i32 %i.ay, %i.az
  %i.bb = sitofp i32 %i.ba to double
  %i.bc = sitofp i32 %i.ad to double
  %i.bd = fdiv double %i.bb, %i.bc
  %i.be = fadd double %i.bd, 5.000000e-01
  %i.bf = fptosi double %i.be to i32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.h
  %.sink154 = phi i32 [ %i.bf, %bb.h ], [ %i.au, %bb.g ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1376
  store i32 %.sink154, ptr %i.bg, align 8, !tbaa !114
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.f
  %i.bh = load ptr, ptr @input, align 8, !tbaa !8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4704
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !94
  %i.bk = icmp eq i32 %i.bj, 2
  br i1 %i.bk, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 4708
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !95
  %.not127 = icmp eq i32 %i.bm, 0
  br i1 %.not127, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !88
  %i.bp = icmp eq i32 %i.bo, 1
  br i1 %i.bp, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sink162 = phi i64 [ 1480, %bb.l ], [ 1488, %bb.k ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %.sink162
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !56
  %i.bs = xor i32 %i.af, -1
  %i.bt = add i32 %i.ad, %i.bs
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bu
  store double %i.aa, ptr %i.bv, align 8, !tbaa !77
  %.not128 = icmp eq i32 %i.af, 0
  %i.bw = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !74 ; 2 uses
  br i1 %.not128, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = mul nsw i32 %i.bx, %i.ad
  %i.bz = add nsw i32 %i.by, %i.ag
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ca = add nsw i32 %i.bx, -1
  %i.cb = mul nsw i32 %i.ca, %i.ad
  %i.cc = add nsw i32 %i.cb, %i.ag
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.e
  %i.cd = phi ptr [ %i.r, %bb.e ], [ %i.u, %bb.n ], [ %i.u, %bb.o ]
  %.0116 = phi i32 [ %i.t, %bb.e ], [ %i.bz, %bb.n ], [ %i.cc, %bb.o ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !166
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1348
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !78
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !77 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1112
  store double %i.cm, ptr %i.cn, align 8, !tbaa !77
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 776
  store double %i.cm, ptr %i.co, align 8, !tbaa !77
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !77 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1280
  store double %i.cq, ptr %i.cr, align 8, !tbaa !77
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 944
  store double %i.cq, ptr %i.cs, align 8, !tbaa !77
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.cx = load <2 x double>, ptr %i.cv, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.cx, ptr %i.ct, align 8, !tbaa !77
  store <2 x double> %i.cx, ptr %i.cw, align 8, !tbaa !77
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.da = load <2 x double>, ptr %i.cy, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.da, ptr %i.cu, align 8, !tbaa !77
  store <2 x double> %i.da, ptr %i.cz, align 8, !tbaa !77
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.df = load <2 x double>, ptr %i.dd, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.df, ptr %i.db, align 8, !tbaa !77
  store <2 x double> %i.df, ptr %i.de, align 8, !tbaa !77
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.di = load <2 x double>, ptr %i.dg, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.di, ptr %i.dc, align 8, !tbaa !77
  store <2 x double> %i.di, ptr %i.dh, align 8, !tbaa !77
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.dn = load <2 x double>, ptr %i.dl, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.dn, ptr %i.dj, align 8, !tbaa !77
  store <2 x double> %i.dn, ptr %i.dm, align 8, !tbaa !77
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.dq = load <2 x double>, ptr %i.do, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.dq, ptr %i.dk, align 8, !tbaa !77
  store <2 x double> %i.dq, ptr %i.dp, align 8, !tbaa !77
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.dv = load <2 x double>, ptr %i.dt, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.dv, ptr %i.dr, align 8, !tbaa !77
  store <2 x double> %i.dv, ptr %i.du, align 8, !tbaa !77
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.dy = load <2 x double>, ptr %i.dw, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.dy, ptr %i.ds, align 8, !tbaa !77
  store <2 x double> %i.dy, ptr %i.dx, align 8, !tbaa !77
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.ed = load <2 x double>, ptr %i.eb, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.ed, ptr %i.dz, align 8, !tbaa !77
  store <2 x double> %i.ed, ptr %i.ec, align 8, !tbaa !77
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.eg = load <2 x double>, ptr %i.ee, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.eg, ptr %i.ea, align 8, !tbaa !77
  store <2 x double> %i.eg, ptr %i.ef, align 8, !tbaa !77
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.el = load <2 x double>, ptr %i.ej, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.el, ptr %i.eh, align 8, !tbaa !77
  store <2 x double> %i.el, ptr %i.ek, align 8, !tbaa !77
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.eo = load <2 x double>, ptr %i.em, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.eo, ptr %i.ei, align 8, !tbaa !77
  store <2 x double> %i.eo, ptr %i.en, align 8, !tbaa !77
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.et = load <2 x double>, ptr %i.er, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.et, ptr %i.ep, align 8, !tbaa !77
  store <2 x double> %i.et, ptr %i.es, align 8, !tbaa !77
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.ew = load <2 x double>, ptr %i.eu, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.ew, ptr %i.eq, align 8, !tbaa !77
  store <2 x double> %i.ew, ptr %i.ev, align 8, !tbaa !77
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.fb = load <2 x double>, ptr %i.ez, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.fb, ptr %i.ex, align 8, !tbaa !77
  store <2 x double> %i.fb, ptr %i.fa, align 8, !tbaa !77
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.fe = load <2 x double>, ptr %i.fc, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.fe, ptr %i.ey, align 8, !tbaa !77
  store <2 x double> %i.fe, ptr %i.fd, align 8, !tbaa !77
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.fi = load <2 x double>, ptr %i.ch, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.fi, ptr %i.ff, align 8, !tbaa !77
  store <2 x double> %i.fi, ptr %i.fh, align 8, !tbaa !77
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.fk = load <2 x double>, ptr %i.cj, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.fk, ptr %i.fg, align 8, !tbaa !77
  store <2 x double> %i.fk, ptr %i.fj, align 8, !tbaa !77
  %i.fl = icmp slt i32 %.0116, 2
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !44
  %i.fo = tail call double @QP2Qstep(i32 noundef %i.fn) #21 ; 2 uses
  store double %i.fo, ptr %i.ch, align 8, !tbaa !77
  %i.fp = load ptr, ptr @img, align 8, !tbaa !8   ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 15404
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !92
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 15352
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !10
  %i.fu = icmp eq i32 %i.fr, %i.ft
  %i.fv = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !36 ; 4 uses
  %. = select i1 %i.fu, i64 20, i64 28
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !4
  %i.ga = sitofp i32 %i.fz to double
  %i.gb = fdiv double %i.ga, %i.fx                ; 2 uses
  store double %i.gb, ptr %i.cj, align 8, !tbaa !77
  store double %i.fo, ptr %i.ci, align 8, !tbaa !77
  store double %i.gb, ptr %i.ck, align 8, !tbaa !77
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 1296 ; 2 uses
  %i.ge = load <2 x double>, ptr %i.gc, align 8, !tbaa !77
  store <2 x double> %i.ge, ptr %i.gd, align 8, !tbaa !77
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !32 ; 3 uses
  %i.gi = fcmp ogt double %i.fx, %i.gh
  %i.gj = fdiv double %i.gh, %i.fx
  %i.gk = fdiv double %i.fx, %i.gh
  %.in.in = select i1 %i.gi, double %i.gj, double %i.gk
  %.in = fmul double %.in.in, 2.000000e+01
  %i.gl = fptosi double %.in to i32
  %i.gm = tail call noundef i32 @llvm.smax.i32(i32 %i.gl, i32 1)
  %i.gn = tail call noundef i32 @llvm.smin.i32(i32 %i.gm, i32 %.0116)
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 1340 ; 3 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !71
  %i.gq = add nsw i32 %i.gp, 1
  %i.gr = tail call noundef i32 @llvm.smin.i32(i32 %i.gn, i32 %i.gq)
  %i.gs = tail call noundef i32 @llvm.smin.i32(i32 %i.gr, i32 20) ; 2 uses
  store i32 %i.gs, ptr %i.go, align 4, !tbaa !71
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) @updateRCModel.m_rgRejected, i8 0, i64 80, i1 false), !tbaa !4
  tail call void @RCModelEstimator(ptr noundef nonnull %0, i32 noundef %i.gs, ptr noundef nonnull @updateRCModel.m_rgRejected)
  %i.gt = load i32, ptr %i.go, align 4, !tbaa !71 ; 10 uses
  %i.gu = icmp sgt i32 %i.gt, 0
  br i1 %i.gu, label %.lr.ph, label %bb.r

.lr.ph:                                           ; preds = %bb.p
  %i.gv = load <2 x double>, ptr %i.gd, align 8, !tbaa !77 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.gt to i64   ; 4 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.gw = icmp eq i32 %i.gt, 1
  br i1 %i.gw, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.q ] ; 5 uses
  %.0117134 = phi double [ 0.000000e+00, %.lr.ph.new ], [ %i.hu, %bb.q ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.q ]
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !77 ; 3 uses
  %i.gz = fmul double %i.gy, %i.gy
  %i.ha = insertelement <2 x double> poison, double %i.gy, i64 0
  %i.hb = insertelement <2 x double> %i.ha, double %i.gz, i64 1
  %i.hc = fdiv <2 x double> %i.gv, %i.hb          ; 2 uses
  %shift = shufflevector <2 x double> %i.hc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.hc, %shift
  %i.hd = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv
  %i.hf = load double, ptr %i.he, align 8, !tbaa !77
  %i.hg = fsub double %i.hd, %i.hf                ; 3 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr @updateRCModel.error, i64 %indvars.iv
  store double %i.hg, ptr %i.hh, align 16, !tbaa !77
  %i.hi = tail call double @llvm.fmuladd.f64(double %i.hg, double %i.hg, double %.0117134)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !77 ; 3 uses
  %i.hl = fmul double %i.hk, %i.hk
  %i.hm = insertelement <2 x double> poison, double %i.hk, i64 0
  %i.hn = insertelement <2 x double> %i.hm, double %i.hl, i64 1
  %i.ho = fdiv <2 x double> %i.gv, %i.hn          ; 2 uses
  %shift.1 = shufflevector <2 x double> %i.ho, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.1 = fadd <2 x double> %i.ho, %shift.1
  %i.hp = extractelement <2 x double> %foldExtExtBinop.1, i64 0
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv.next
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !77
  %i.hs = fsub double %i.hp, %i.hr                ; 3 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr @updateRCModel.error, i64 %indvars.iv.next
  store double %i.hs, ptr %i.ht, align 8, !tbaa !77
  %i.hu = tail call double @llvm.fmuladd.f64(double %i.hs, double %i.hs, double %i.hi) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.q, !llvm.loop !172

._crit_edge.unr-lcssa:                            ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %.0117134.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.hu, %._crit_edge.unr-lcssa ]
  %lcmp.mod175 = trunc i32 %i.gt to i1
  tail call void @llvm.assume(i1 %lcmp.mod175)
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.epil.init
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !77 ; 3 uses
  %i.hx = fmul double %i.hw, %i.hw
  %i.hy = insertelement <2 x double> poison, double %i.hw, i64 0
  %i.hz = insertelement <2 x double> %i.hy, double %i.hx, i64 1
  %i.ia = fdiv <2 x double> %i.gv, %i.hz          ; 2 uses
  %shift.epil = shufflevector <2 x double> %i.ia, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.epil = fadd <2 x double> %i.ia, %shift.epil
  %i.ib = extractelement <2 x double> %foldExtExtBinop.epil, i64 0
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv.epil.init
  %i.id = load double, ptr %i.ic, align 8, !tbaa !77
  %i.ie = fsub double %i.ib, %i.id                ; 3 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr @updateRCModel.error, i64 %indvars.iv.epil.init
  store double %i.ie, ptr %i.if, align 8, !tbaa !77
  %i.ig = tail call double @llvm.fmuladd.f64(double %i.ie, double %i.ie, double %.0117134.epil.init)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.lcssa = phi double [ %i.hu, %._crit_edge.unr-lcssa ], [ %i.ig, %.epil.preheader ]
  %i.ih = icmp eq i32 %i.gt, 2
  br i1 %i.ih, label %.lr.ph137.preheader, label %.thread152

.thread152:                                       ; preds = %._crit_edge
  %i.ii = uitofp nneg i32 %i.gt to double
  %i.ij = fdiv double %.lcssa, %i.ii
  %i.ik = tail call double @sqrt(double noundef %i.ij) #21, !tbaa !4
  br label %.lr.ph137.preheader

bb.r:                                             ; preds = %bb.p
  %i.il = sitofp i32 %i.gt to double
  %i.im = fdiv double 0.000000e+00, %i.il
  %i.in = tail call double @sqrt(double noundef %i.im) #21, !tbaa !4 ; 0 uses
  br label %._crit_edge138

.lr.ph137.preheader:                              ; preds = %._crit_edge, %.thread152
  %i.io = phi double [ %i.ik, %.thread152 ], [ 0.000000e+00, %._crit_edge ] ; 2 uses
  %wide.trip.count145 = zext nneg i32 %i.gt to i64
  %min.iters.check = icmp ult i32 %i.gt, 4
  br i1 %min.iters.check, label %.lr.ph137.preheader173, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph137.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.io, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue171, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue171 ] ; 6 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr @updateRCModel.error, i64 %index ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %wide.load = load <2 x double>, ptr %i.ip, align 16, !tbaa !77
  %wide.load165 = load <2 x double>, ptr %i.iq, align 16, !tbaa !77
  %i.ir = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load)
  %i.is = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load165)
  %i.it = fcmp ogt <2 x double> %i.ir, %broadcast.splat ; 2 uses
  %i.iu = fcmp ogt <2 x double> %i.is, %broadcast.splat ; 2 uses
  %i.iv = extractelement <2 x i1> %i.it, i64 0
  br i1 %i.iv, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr @updateRCModel.m_rgRejected, i64 %index
  store i32 1, ptr %i.iw, align 16, !tbaa !4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ix = extractelement <2 x i1> %i.it, i64 1
  br i1 %i.ix, label %pred.store.if166, label %pred.store.continue167

pred.store.if166:                                 ; preds = %pred.store.continue
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr @updateRCModel.m_rgRejected, i64 %index
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  store i32 1, ptr %i.iz, align 4, !tbaa !4
  br label %pred.store.continue167

pred.store.continue167:                           ; preds = %pred.store.if166, %pred.store.continue
  %i.ja = extractelement <2 x i1> %i.iu, i64 0
  br i1 %i.ja, label %pred.store.if168, label %pred.store.continue169

pred.store.if168:                                 ; preds = %pred.store.continue167
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr @updateRCModel.m_rgRejected, i64 %index
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store i32 1, ptr %i.jc, align 8, !tbaa !4
  br label %pred.store.continue169

pred.store.continue169:                           ; preds = %pred.store.if168, %pred.store.continue167
  %i.jd = extractelement <2 x i1> %i.iu, i64 1
  br i1 %i.jd, label %pred.store.if170, label %pred.store.continue171

pred.store.if170:                                 ; preds = %pred.store.continue169
  %i.je = getelementptr inbounds nuw [4 x i8], ptr @updateRCModel.m_rgRejected, i64 %index
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 12
  store i32 1, ptr %i.jf, align 4, !tbaa !4
  br label %pred.store.continue171

pred.store.continue171:                           ; preds = %pred.store.if170, %pred.store.continue169
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jg = icmp eq i64 %index.next, %n.vec
  br i1 %i.jg, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %pred.store.continue171
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge138, label %.lr.ph137.preheader173

.lr.ph137.preheader173:                           ; preds = %.lr.ph137.preheader, %middle.block
  %indvars.iv142.ph = phi i64 [ 0, %.lr.ph137.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph137

.lr.ph137:                                        ; preds = %.lr.ph137.preheader173, %bb.t
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %bb.t ], [ %indvars.iv142.ph, %.lr.ph137.preheader173 ] ; 3 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr @updateRCModel.error, i64 %indvars.iv142
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !77
  %i.jj = tail call double @llvm.fabs.f64(double %i.ji)
  %i.jk = fcmp ogt double %i.jj, %i.io
  br i1 %i.jk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph137
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr @updateRCModel.m_rgRejected, i64 %indvars.iv142
  store i32 1, ptr %i.jl, align 4, !tbaa !4
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph137, %bb.s
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next143, %wide.trip.count145
  br i1 %exitcond146.not, label %._crit_edge138, label %.lr.ph137, !llvm.loop !174

._crit_edge138:                                   ; preds = %bb.t, %middle.block, %bb.r
  store i32 0, ptr @updateRCModel.m_rgRejected, align 16, !tbaa !4
  tail call void @RCModelEstimator(ptr noundef %0, i32 noundef %i.gt, ptr noundef nonnull @updateRCModel.m_rgRejected)
  br i1 %i.fl, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge138
  tail call void @updateMADModel(ptr noundef %0)
  br label %bb.z

bb.v:                                             ; preds = %._crit_edge138
  %i.jm = load ptr, ptr @img, align 8, !tbaa !8   ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 20
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !93
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.jq = load ptr, ptr @input, align 8, !tbaa !8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 5136
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !57
  %i.jt = icmp eq i32 %i.js, 1
  br i1 %i.jt, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ju = load i32, ptr %i.jm, align 8, !tbaa !101
  %i.jv = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4
  %.not130 = icmp eq i32 %i.ju, %i.jv
  br i1 %.not130, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.jw = load double, ptr %i.gf, align 8, !tbaa !36
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double %i.jw, ptr %i.jx, align 8, !tbaa !77
  br label %bb.z

bb.z:                                             ; preds = %bb.u, %bb.y, %bb.x, %bb.w, %bb.c, %bb.b
  ret void
}

declare double @ComputeFrameMAD() local_unnamed_addr #3

declare double @QP2Qstep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @RCModelEstimator(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %.preheader107.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader165, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %i.b = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %1, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.b, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi163 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %wide.load = load <4 x i32>, ptr %i.c, align 4, !tbaa !4
  %wide.load164 = load <4 x i32>, ptr %i.d, align 4, !tbaa !4
  %i.e = icmp ne <4 x i32> %wide.load, zeroinitializer
  %i.f = icmp ne <4 x i32> %wide.load164, zeroinitializer
  %i.g = sext <4 x i1> %i.e to <4 x i32>
  %i.h = sext <4 x i1> %i.f to <4 x i32>
  %i.i = add <4 x i32> %vec.phi, %i.g             ; 2 uses
  %i.j = add <4 x i32> %vec.phi163, %i.h          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !175

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.j, %i.i
  %i.l = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph113, label %.lr.ph.preheader165

.lr.ph.preheader165:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.082109.ph = phi i32 [ %1, %.lr.ph.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader165, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader165 ] ; 2 uses
  %.082109 = phi i32 [ %spec.select, %.lr.ph ], [ %.082109.ph, %.lr.ph.preheader165 ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %.not105 = icmp ne i32 %i.n, 0
  %i.o = sext i1 %.not105 to i32
  %spec.select = add nsw i32 %.082109, %i.o       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph113, label %.lr.ph, !llvm.loop !176

.preheader107.thread:                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  br label %._crit_edge118.thread

.lr.ph113:                                        ; preds = %.lr.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %i.l, %middle.block ], [ %spec.select, %.lr.ph ] ; 2 uses
end_hunk_6
begin_hunk_7_@RCModelEstimator:bb.a
bb.e:                                             ; preds = %bb.m, %.lr.ph113.new
  %indvars.iv136 = phi i64 [ 0, %.lr.ph113.new ], [ %indvars.iv.next137.3, %bb.m ] ; 6 uses
  %.096111 = phi double [ 0.000000e+00, %.lr.ph113.new ], [ %.197.3, %bb.m ]
  %niter = phi i64 [ 0, %.lr.ph113.new ], [ %niter.next.3, %bb.m ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv136
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %.not104 = icmp eq i32 %i.ac, 0
  br i1 %.not104, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv136
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !77
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.197 = phi double [ %.096111, %bb.e ], [ %i.ae, %bb.f ]
  %indvars.iv.next137 = or disjoint i64 %indvars.iv136, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next137
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %.not104.1 = icmp eq i32 %i.ag, 0
  br i1 %.not104.1, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next137
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !77
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.197.1 = phi double [ %.197, %bb.g ], [ %i.ai, %bb.h ]
  %indvars.iv.next137.1 = or disjoint i64 %indvars.iv136, 2 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next137.1
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %.not104.2 = icmp eq i32 %i.ak, 0
  br i1 %.not104.2, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next137.1
  %i.am = load double, ptr %i.al, align 8, !tbaa !77
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.197.2 = phi double [ %.197.1, %bb.i ], [ %i.am, %bb.j ]
  %indvars.iv.next137.2 = or disjoint i64 %indvars.iv136, 3 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next137.2
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %.not104.3 = icmp eq i32 %i.ao, 0
  br i1 %.not104.3, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next137.2
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !77
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.197.3 = phi double [ %.197.2, %bb.k ], [ %i.aq, %bb.l ] ; 3 uses
  %indvars.iv.next137.3 = add nuw nsw i64 %indvars.iv136, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph117.unr-lcssa, label %bb.e, !llvm.loop !179

._crit_edge151:                                   ; preds = %.lr.ph117, %bb.o
  %i.ar = phi double [ 0.000000e+00, %.lr.ph117 ], [ %i.bd, %bb.o ] ; 2 uses
  %indvars.iv141 = phi i64 [ 0, %.lr.ph117 ], [ %indvars.iv.next142, %bb.o ] ; 4 uses
  %.0116 = phi i32 [ 0, %.lr.ph117 ], [ %.1, %bb.o ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv141
  %i.at = load double, ptr %i.as, align 8, !tbaa !77 ; 2 uses
  %i.au = fcmp une double %i.at, %.197.lcssa
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv141
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4  ; 2 uses
  %.not102 = icmp eq i32 %i.aw, 0
  %i.ax = and i1 %i.au, %.not102
  %.1 = select i1 %i.ax, i32 1, i32 %.0116        ; 2 uses
  %.not103 = icmp eq i32 %i.aw, 0
  br i1 %.not103, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge151
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv141
  %i.az = load double, ptr %i.ay, align 8, !tbaa !77
  %i.ba = fmul double %i.at, %i.az
  %i.bb = fdiv double %i.ba, %i.aa
  %i.bc = fadd double %i.ar, %i.bb                ; 2 uses
  store double %i.bc, ptr %i.r, align 8, !tbaa !180
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge151, %bb.n
  %i.bd = phi double [ %i.ar, %._crit_edge151 ], [ %i.bc, %bb.n ] ; 2 uses
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next142, %wide.trip.count144
  br i1 %exitcond145.not, label %._crit_edge118, label %._crit_edge151, !llvm.loop !181

._crit_edge118:                                   ; preds = %bb.o
  %i.be = icmp ne i32 %.1, 0
  %i.bf = icmp sgt i32 %spec.select.lcssa, 0
  %or.cond = select i1 %i.bf, i1 %i.be, i1 false
  br i1 %or.cond, label %.lr.ph127, label %._crit_edge118.thread

.lr.ph127:                                        ; preds = %._crit_edge118
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 792
  %wide.trip.count149 = zext nneg i32 %1 to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph127, %bb.r
  %indvars.iv146 = phi i64 [ 0, %.lr.ph127 ], [ %indvars.iv.next147, %bb.r ] ; 4 uses
  %.084126 = phi double [ 0.000000e+00, %.lr.ph127 ], [ %.185, %bb.r ] ; 2 uses
  %.086125 = phi double [ 0.000000e+00, %.lr.ph127 ], [ %.187, %bb.r ] ; 2 uses
  %.088124 = phi double [ 0.000000e+00, %.lr.ph127 ], [ %.189, %bb.r ] ; 2 uses
  %.090123 = phi double [ 0.000000e+00, %.lr.ph127 ], [ %.191, %bb.r ]
  %.092122 = phi double [ 0.000000e+00, %.lr.ph127 ], [ %.193, %bb.r ] ; 2 uses
  %.094121 = phi double [ 0.000000e+00, %.lr.ph127 ], [ %.195, %bb.r ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv146
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4
  %.not101 = icmp eq i32 %i.bj, 0
  br i1 %.not101, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bk = fadd double %.094121, 1.000000e+00
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv146
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !77 ; 4 uses
  %i.bn = fdiv double 1.000000e+00, %i.bm
  %i.bo = fadd double %.092122, %i.bn             ; 2 uses
  %i.bp = fmul double %i.bm, %i.bm
  %i.bq = fdiv double 1.000000e+00, %i.bp
  %i.br = fadd double %.088124, %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv146
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !77 ; 2 uses
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.bt, double %.086125)
  %i.bv = fadd double %.084126, %i.bt
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.195 = phi double [ %.094121, %bb.p ], [ %i.bk, %bb.q ] ; 4 uses
  %.193 = phi double [ %.092122, %bb.p ], [ %i.bo, %bb.q ] ; 3 uses
  %.191 = phi double [ %.090123, %bb.p ], [ %i.bo, %bb.q ] ; 2 uses
  %.189 = phi double [ %.088124, %bb.p ], [ %i.br, %bb.q ] ; 3 uses
  %.187 = phi double [ %.086125, %bb.p ], [ %i.bu, %bb.q ] ; 4 uses
  %.185 = phi double [ %.084126, %bb.p ], [ %i.bv, %bb.q ] ; 3 uses
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %exitcond150.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count149
  br i1 %exitcond150.not, label %._crit_edge128, label %bb.p, !llvm.loop !182

._crit_edge128:                                   ; preds = %bb.r
  %i.bw = fneg double %.191                       ; 2 uses
  %i.bx = fmul double %.193, %i.bw
  %i.by = tail call double @llvm.fmuladd.f64(double %.195, double %.189, double %i.bx) ; 3 uses
  %i.bz = tail call double @llvm.fabs.f64(double %i.by)
  %i.ca = fcmp ogt double %i.bz, f0x3EB0C6F7A0B5ED8D
  br i1 %i.ca, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge128
  %i.cb = fneg double %.193
  %i.cc = fmul double %.185, %i.cb
  %i.cd = tail call double @llvm.fmuladd.f64(double %.187, double %.189, double %i.cc)
  %i.ce = fdiv double %i.cd, %i.by                ; 2 uses
  store double %i.ce, ptr %i.r, align 8, !tbaa !180
  %i.cf = fmul double %.187, %i.bw
  %i.cg = tail call double @llvm.fmuladd.f64(double %.185, double %.195, double %i.cf)
  %i.ch = fdiv double %i.cg, %i.by                ; 2 uses
  store double %i.ch, ptr %i.q, align 8, !tbaa !183
  br label %._crit_edge118.thread

bb.t:                                             ; preds = %._crit_edge128
  %i.ci = fdiv double %.187, %.195                ; 2 uses
  store double %i.ci, ptr %i.r, align 8, !tbaa !180
  store double 0.000000e+00, ptr %i.q, align 8, !tbaa !183
  br label %._crit_edge118.thread

._crit_edge118.thread:                            ; preds = %.preheader107.thread, %bb.s, %bb.t, %._crit_edge118
  %i.cj = phi double [ %i.ch, %bb.s ], [ 0.000000e+00, %bb.t ], [ 0.000000e+00, %._crit_edge118 ], [ 0.000000e+00, %.preheader107.thread ]
  %i.ck = phi double [ %i.ce, %bb.s ], [ %i.ci, %bb.t ], [ %i.bd, %._crit_edge118 ], [ 0.000000e+00, %.preheader107.thread ]
  %i.cl = load ptr, ptr @img, align 8, !tbaa !8   ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 20
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !93
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge118.thread
  %i.cp = load ptr, ptr @input, align 8, !tbaa !8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 5136
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !57
  %i.cs = icmp eq i32 %i.cr, 1
  br i1 %i.cs, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u, %._crit_edge118.thread
  %i.ct = load i32, ptr %i.cl, align 8, !tbaa !101
  %i.cu = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4
  %.not = icmp eq i32 %i.ct, %i.cu
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1312
  store double %i.ck, ptr %i.cv, align 8, !tbaa !79
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1320
  store double %i.cj, ptr %i.cw, align 8, !tbaa !80
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #11

; Function Attrs: nofree norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @updateMADModel(ptr noundef captures(none) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = load ptr, ptr @generic_RC, align 8, !tbaa !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.c = load i32, ptr %i.b, align 4, !tbaa !74   ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @img, align 8, !tbaa !8    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 15404
  %i.g = load i32, ptr %i.f, align 4, !tbaa !92
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 15352
  %i.i = load i32, ptr %i.h, align 8, !tbaa !10
  %i.j = icmp eq i32 %i.g, %i.i                   ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1388
  %i.l = load i32, ptr %i.k, align 4, !tbaa !67
  %i.m = mul nsw i32 %i.l, %i.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.o = load i32, ptr %i.n, align 8, !tbaa !171
  %i.p = add nsw i32 %i.m, %i.o
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ %i.p, %bb.c ], [ %i.c, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.u = load double, ptr %i.t, align 8, !tbaa !77 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 272
  store double %i.u, ptr %i.v, align 8, !tbaa !77
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 440
  store double %i.u, ptr %i.w, align 8, !tbaa !77
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.y = load double, ptr %i.x, align 8, !tbaa !77
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 608
  store double %i.y, ptr %i.z, align 8, !tbaa !77
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ad = load <2 x double>, ptr %i.ac, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.ad, ptr %i.aa, align 8, !tbaa !77
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 424
  store <2 x double> %i.ad, ptr %i.ae, align 8, !tbaa !77
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.ag = load <2 x double>, ptr %i.af, align 8, !tbaa !77
  store <2 x double> %i.ag, ptr %i.ab, align 8, !tbaa !77
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ak = load <2 x double>, ptr %i.aj, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.ak, ptr %i.ah, align 8, !tbaa !77
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 408
  store <2 x double> %i.ak, ptr %i.al, align 8, !tbaa !77
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.an = load <2 x double>, ptr %i.am, align 8, !tbaa !77
  store <2 x double> %i.an, ptr %i.ai, align 8, !tbaa !77
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ar = load <2 x double>, ptr %i.aq, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.ar, ptr %i.ao, align 8, !tbaa !77
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 392
  store <2 x double> %i.ar, ptr %i.as, align 8, !tbaa !77
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.au = load <2 x double>, ptr %i.at, align 8, !tbaa !77
  store <2 x double> %i.au, ptr %i.ap, align 8, !tbaa !77
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ay = load <2 x double>, ptr %i.ax, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.ay, ptr %i.av, align 8, !tbaa !77
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 376
  store <2 x double> %i.ay, ptr %i.az, align 8, !tbaa !77
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.bb = load <2 x double>, ptr %i.ba, align 8, !tbaa !77
  store <2 x double> %i.bb, ptr %i.aw, align 8, !tbaa !77
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bf = load <2 x double>, ptr %i.be, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.bf, ptr %i.bc, align 8, !tbaa !77
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 360
  store <2 x double> %i.bf, ptr %i.bg, align 8, !tbaa !77
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.bi = load <2 x double>, ptr %i.bh, align 8, !tbaa !77
  store <2 x double> %i.bi, ptr %i.bd, align 8, !tbaa !77
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bm = load <2 x double>, ptr %i.bl, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.bm, ptr %i.bj, align 8, !tbaa !77
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 344
  store <2 x double> %i.bm, ptr %i.bn, align 8, !tbaa !77
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bp = load <2 x double>, ptr %i.bo, align 8, !tbaa !77
  store <2 x double> %i.bp, ptr %i.bk, align 8, !tbaa !77
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bt = load <2 x double>, ptr %i.bs, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.bt, ptr %i.bq, align 8, !tbaa !77
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 328
  store <2 x double> %i.bt, ptr %i.bu, align 8, !tbaa !77
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.bw = load <2 x double>, ptr %i.bv, align 8, !tbaa !77
  store <2 x double> %i.bw, ptr %i.br, align 8, !tbaa !77
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ca = load <2 x double>, ptr %i.bz, align 8, !tbaa !77 ; 2 uses
  store <2 x double> %i.ca, ptr %i.bx, align 8, !tbaa !77
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 312
  store <2 x double> %i.ca, ptr %i.cb, align 8, !tbaa !77
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.cd = load <2 x double>, ptr %i.cc, align 8, !tbaa !77
  store <2 x double> %i.cd, ptr %i.by, align 8, !tbaa !77
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.cg = load <2 x double>, ptr %i.q, align 8, !tbaa !77 ; 3 uses
  store <2 x double> %i.cg, ptr %i.ce, align 8, !tbaa !77
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ci = extractelement <2 x double> %i.cg, i64 0
  store <2 x double> %i.cg, ptr %i.ch, align 8, !tbaa !77
  %i.cj = load <2 x double>, ptr %i.s, align 8, !tbaa !77
  store <2 x double> %i.cj, ptr %i.cf, align 8, !tbaa !77
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !36 ; 6 uses
  store double %i.cl, ptr %i.q, align 8, !tbaa !77
  store double %i.cl, ptr %i.r, align 8, !tbaa !77
  br i1 %i.j, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cm = load ptr, ptr @input, align 8, !tbaa !8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4704
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !94
  %i.cp = icmp eq i32 %i.co, 2
  br i1 %i.cp, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 4708
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !95
  %.not = icmp eq i32 %i.cr, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !88
  %i.cu = icmp eq i32 %i.ct, 1
  br i1 %i.cu, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.h
  %.sink117 = phi i64 [ 1472, %bb.h ], [ 1496, %bb.g ]
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 %.sink117
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !56
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1388
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !67
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !110
  %i.db = xor i32 %i.da, -1
  %i.dc = add i32 %i.cy, %i.db
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %i.dd
  %i.df = load double, ptr %i.de, align 8, !tbaa !77
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.d
  %.sink = phi double [ %i.ci, %bb.d ], [ %i.df, %.sink.split ]
  store double %.sink, ptr %i.s, align 8, !tbaa !77
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dj = load <2 x double>, ptr %i.dg, align 8, !tbaa !77
  store <2 x double> %i.dj, ptr %i.dh, align 8, !tbaa !77
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 1424 ; 2 uses
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !32 ; 3 uses
  %i.dm = fcmp ogt double %i.cl, %i.dl
  %i.dn = fmul double %i.dl, 2.000000e+01
  %i.do = fdiv double %i.dn, %i.cl
  %i.dp = fmul double %i.cl, 2.000000e+01
  %i.dq = fdiv double %i.dp, %i.dl
  %.in = select i1 %i.dm, double %i.do, double %i.dq
  %i.dr = fptosi double %.in to i32
  %i.ds = add nsw i32 %.0, -1
  %i.dt = tail call noundef i32 @llvm.smax.i32(i32 %i.dr, i32 1)
  %i.du = tail call noundef i32 @llvm.smin.i32(i32 %i.dt, i32 %i.ds)
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 1336 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !72
  %i.dx = tail call i32 @llvm.smin.i32(i32 %i.dw, i32 19)
  %i.dy = add nsw i32 %i.dx, 1
  %i.dz = tail call noundef i32 @llvm.smin.i32(i32 %i.du, i32 %i.dy) ; 12 uses
  store i32 %i.dz, ptr %i.dv, align 8, !tbaa !72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) @updateMADModel.PictureRejected, i8 0, i64 80, i1 false), !tbaa !4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !93
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ed = load ptr, ptr @input, align 8, !tbaa !8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 5136
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !57
  %i.eg = icmp eq i32 %i.ef, 1
  br i1 %i.eg, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.eh = load i32, ptr %i.e, align 8, !tbaa !101
  %i.ei = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4
  %.not84 = icmp eq i32 %i.eh, %i.ei
  br i1 %.not84, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store double %i.cl, ptr %i.dk, align 8, !tbaa !32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  tail call void @MADModelEstimator(ptr noundef nonnull %0, i32 noundef %i.dz, ptr noundef nonnull @updateMADModel.PictureRejected)
  %i.ej = icmp sgt i32 %i.dz, 0
  br i1 %i.ej, label %.lr.ph, label %bb.o

.lr.ph:                                           ; preds = %bb.m
  %i.ek = load double, ptr %i.dh, align 8, !tbaa !184 ; 3 uses
  %i.el = load double, ptr %i.di, align 8, !tbaa !185 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.dz to i64   ; 4 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.em = icmp eq i32 %i.dz, 1
  br i1 %i.em, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.n ] ; 5 uses
  %.07688 = phi double [ 0.000000e+00, %.lr.ph.new ], [ %i.fc, %bb.n ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.n ]
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.eo = load double, ptr %i.en, align 8, !tbaa !77
  %i.ep = tail call double @llvm.fmuladd.f64(double %i.ek, double %i.eo, double %i.el)
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.er = load double, ptr %i.eq, align 8, !tbaa !77
  %i.es = fsub double %i.ep, %i.er                ; 3 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr @updateMADModel.error, i64 %indvars.iv
  store double %i.es, ptr %i.et, align 16, !tbaa !77
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.es, double %i.es, double %.07688)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !77
  %i.ex = tail call double @llvm.fmuladd.f64(double %i.ek, double %i.ew, double %i.el)
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !77
  %i.fa = fsub double %i.ex, %i.ez                ; 3 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr @updateMADModel.error, i64 %indvars.iv.next
  store double %i.fa, ptr %i.fb, align 8, !tbaa !77
  %i.fc = tail call double @llvm.fmuladd.f64(double %i.fa, double %i.fa, double %i.eu) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.n, !llvm.loop !186

._crit_edge.unr-lcssa:                            ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %.07688.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.fc, %._crit_edge.unr-lcssa ]
  %lcmp.mod127 = trunc i32 %i.dz to i1
  tail call void @llvm.assume(i1 %lcmp.mod127)
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.epil.init
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !77
  %i.ff = tail call double @llvm.fmuladd.f64(double %i.ek, double %i.fe, double %i.el)
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.epil.init
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !77
  %i.fi = fsub double %i.ff, %i.fh                ; 3 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr @updateMADModel.error, i64 %indvars.iv.epil.init
  store double %i.fi, ptr %i.fj, align 8, !tbaa !77
  %i.fk = tail call double @llvm.fmuladd.f64(double %i.fi, double %i.fi, double %.07688.epil.init)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.lcssa = phi double [ %i.fc, %._crit_edge.unr-lcssa ], [ %i.fk, %.epil.preheader ]
  %i.fl = icmp eq i32 %i.dz, 2
  br i1 %i.fl, label %.lr.ph91.preheader, label %.thread105

.thread105:                                       ; preds = %._crit_edge
  %i.fm = uitofp nneg i32 %i.dz to double
  %i.fn = fdiv double %.lcssa, %i.fm
  %i.fo = tail call double @sqrt(double noundef %i.fn) #21, !tbaa !4
  br label %.lr.ph91.preheader

bb.o:                                             ; preds = %bb.m
  %i.fp = sitofp i32 %i.dz to double
  %i.fq = fdiv double 0.000000e+00, %i.fp
  %i.fr = tail call double @sqrt(double noundef %i.fq) #21, !tbaa !4 ; 0 uses
  br label %._crit_edge92

.lr.ph91.preheader:                               ; preds = %._crit_edge, %.thread105
  %i.fs = phi double [ %i.fo, %.thread105 ], [ 0.000000e+00, %._crit_edge ] ; 2 uses
  %wide.trip.count99 = zext nneg i32 %i.dz to i64
  %min.iters.check = icmp ult i32 %i.dz, 4
  br i1 %min.iters.check, label %.lr.ph91.preheader125, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph91.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fs, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue124, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue124 ] ; 6 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr @updateMADModel.error, i64 %index ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %wide.load = load <2 x double>, ptr %i.ft, align 16, !tbaa !77
  %wide.load118 = load <2 x double>, ptr %i.fu, align 16, !tbaa !77
  %i.fv = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load)
  %i.fw = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load118)
  %i.fx = fcmp ogt <2 x double> %i.fv, %broadcast.splat ; 2 uses
  %i.fy = fcmp ogt <2 x double> %i.fw, %broadcast.splat ; 2 uses
  %i.fz = extractelement <2 x i1> %i.fx, i64 0
  br i1 %i.fz, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr @updateMADModel.PictureRejected, i64 %index
  store i32 1, ptr %i.ga, align 16, !tbaa !4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.gb = extractelement <2 x i1> %i.fx, i64 1
  br i1 %i.gb, label %pred.store.if119, label %pred.store.continue120

pred.store.if119:                                 ; preds = %pred.store.continue
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr @updateMADModel.PictureRejected, i64 %index
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  store i32 1, ptr %i.gd, align 4, !tbaa !4
  br label %pred.store.continue120

pred.store.continue120:                           ; preds = %pred.store.if119, %pred.store.continue
  %i.ge = extractelement <2 x i1> %i.fy, i64 0
  br i1 %i.ge, label %pred.store.if121, label %pred.store.continue122

pred.store.if121:                                 ; preds = %pred.store.continue120
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr @updateMADModel.PictureRejected, i64 %index
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store i32 1, ptr %i.gg, align 8, !tbaa !4
  br label %pred.store.continue122

pred.store.continue122:                           ; preds = %pred.store.if121, %pred.store.continue120
  %i.gh = extractelement <2 x i1> %i.fy, i64 1
  br i1 %i.gh, label %pred.store.if123, label %pred.store.continue124

pred.store.if123:                                 ; preds = %pred.store.continue122
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr @updateMADModel.PictureRejected, i64 %index
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  store i32 1, ptr %i.gj, align 4, !tbaa !4
  br label %pred.store.continue124

pred.store.continue124:                           ; preds = %pred.store.if123, %pred.store.continue122
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gk = icmp eq i64 %index.next, %n.vec
  br i1 %i.gk, label %middle.block, label %vector.body, !llvm.loop !187

middle.block:                                     ; preds = %pred.store.continue124
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge92, label %.lr.ph91.preheader125

.lr.ph91.preheader125:                            ; preds = %.lr.ph91.preheader, %middle.block
  %indvars.iv96.ph = phi i64 [ 0, %.lr.ph91.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph91

.lr.ph91:                                         ; preds = %.lr.ph91.preheader125, %bb.q
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %bb.q ], [ %indvars.iv96.ph, %.lr.ph91.preheader125 ] ; 3 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr @updateMADModel.error, i64 %indvars.iv96
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !77
  %i.gn = tail call double @llvm.fabs.f64(double %i.gm)
  %i.go = fcmp ogt double %i.gn, %i.fs
  br i1 %i.go, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph91
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr @updateMADModel.PictureRejected, i64 %indvars.iv96
  store i32 1, ptr %i.gp, align 4, !tbaa !4
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph91, %bb.p
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count99
  br i1 %exitcond100.not, label %._crit_edge92, label %.lr.ph91, !llvm.loop !188

._crit_edge92:                                    ; preds = %bb.q, %middle.block, %bb.o
  store i32 0, ptr @updateMADModel.PictureRejected, align 16, !tbaa !4
  tail call void @MADModelEstimator(ptr noundef %0, i32 noundef %i.dz, ptr noundef nonnull @updateMADModel.PictureRejected)
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge92, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @MADModelEstimator(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %.preheader107.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader165, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %i.b = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %1, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.b, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi163 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %wide.load = load <4 x i32>, ptr %i.c, align 4, !tbaa !4
  %wide.load164 = load <4 x i32>, ptr %i.d, align 4, !tbaa !4
  %i.e = icmp ne <4 x i32> %wide.load, zeroinitializer
  %i.f = icmp ne <4 x i32> %wide.load164, zeroinitializer
  %i.g = sext <4 x i1> %i.e to <4 x i32>
  %i.h = sext <4 x i1> %i.f to <4 x i32>
  %i.i = add <4 x i32> %vec.phi, %i.g             ; 2 uses
  %i.j = add <4 x i32> %vec.phi163, %i.h          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !189

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.j, %i.i
  %i.l = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph113, label %.lr.ph.preheader165

.lr.ph.preheader165:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.082109.ph = phi i32 [ %1, %.lr.ph.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader165, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader165 ] ; 2 uses
  %.082109 = phi i32 [ %spec.select, %.lr.ph ], [ %.082109.ph, %.lr.ph.preheader165 ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %.not105 = icmp ne i32 %i.n, 0
  %i.o = sext i1 %.not105 to i32
  %spec.select = add nsw i32 %.082109, %i.o       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph113, label %.lr.ph, !llvm.loop !190

.preheader107.thread:                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  br label %._crit_edge118.thread

.lr.ph113:                                        ; preds = %.lr.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %i.l, %middle.block ], [ %spec.select, %.lr.ph ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.t = icmp ult i32 %1, 4
  br i1 %i.t, label %.epil.preheader, label %.lr.ph113.new

.lr.ph113.new:                                    ; preds = %.lr.ph113
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.e

.lr.ph117.unr-lcssa:                              ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph117, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph117.unr-lcssa, %.lr.ph113
  %indvars.iv136.epil.init = phi i64 [ 0, %.lr.ph113 ], [ %indvars.iv.next137.3, %.lr.ph117.unr-lcssa ]
  %.096111.epil.init = phi double [ 0.000000e+00, %.lr.ph113 ], [ %.197.3, %.lr.ph117.unr-lcssa ]
  %lcmp.mod170 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod170)
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv136.epil = phi i64 [ %indvars.iv136.epil.init, %.epil.preheader ], [ %indvars.iv.next137.epil, %bb.d ] ; 3 uses
  %.096111.epil = phi double [ %.096111.epil.init, %.epil.preheader ], [ %.197.epil, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv136.epil
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %.not104.epil = icmp eq i32 %i.v, 0
  br i1 %.not104.epil, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv136.epil
end_hunk_7
begin_hunk_8_@MADModelEstimator:bb.a
  br label %._crit_edge151

bb.e:                                             ; preds = %bb.m, %.lr.ph113.new
  %indvars.iv136 = phi i64 [ 0, %.lr.ph113.new ], [ %indvars.iv.next137.3, %bb.m ] ; 6 uses
  %.096111 = phi double [ 0.000000e+00, %.lr.ph113.new ], [ %.197.3, %bb.m ]
  %niter = phi i64 [ 0, %.lr.ph113.new ], [ %niter.next.3, %bb.m ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv136
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %.not104 = icmp eq i32 %i.ac, 0
  br i1 %.not104, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv136
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !77
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.197 = phi double [ %.096111, %bb.e ], [ %i.ae, %bb.f ]
  %indvars.iv.next137 = or disjoint i64 %indvars.iv136, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next137
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %.not104.1 = icmp eq i32 %i.ag, 0
  br i1 %.not104.1, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next137
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !77
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.197.1 = phi double [ %.197, %bb.g ], [ %i.ai, %bb.h ]
  %indvars.iv.next137.1 = or disjoint i64 %indvars.iv136, 2 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next137.1
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %.not104.2 = icmp eq i32 %i.ak, 0
  br i1 %.not104.2, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next137.1
  %i.am = load double, ptr %i.al, align 8, !tbaa !77
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.197.2 = phi double [ %.197.1, %bb.i ], [ %i.am, %bb.j ]
  %indvars.iv.next137.2 = or disjoint i64 %indvars.iv136, 3 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next137.2
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %.not104.3 = icmp eq i32 %i.ao, 0
  br i1 %.not104.3, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next137.2
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !77
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.197.3 = phi double [ %.197.2, %bb.k ], [ %i.aq, %bb.l ] ; 3 uses
  %indvars.iv.next137.3 = add nuw nsw i64 %indvars.iv136, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph117.unr-lcssa, label %bb.e, !llvm.loop !192

._crit_edge151:                                   ; preds = %.lr.ph117, %bb.o
  %i.ar = phi double [ 0.000000e+00, %.lr.ph117 ], [ %i.bd, %bb.o ] ; 2 uses
  %indvars.iv141 = phi i64 [ 0, %.lr.ph117 ], [ %indvars.iv.next142, %bb.o ] ; 4 uses
  %.0116 = phi i32 [ 0, %.lr.ph117 ], [ %.1, %bb.o ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv141
  %i.at = load double, ptr %i.as, align 8, !tbaa !77 ; 2 uses
  %i.au = fcmp une double %i.at, %.197.lcssa
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv141
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4  ; 2 uses
  %.not102 = icmp eq i32 %i.aw, 0
  %i.ax = and i1 %i.au, %.not102
  %.1 = select i1 %i.ax, i32 1, i32 %.0116        ; 2 uses
  %.not103 = icmp eq i32 %i.aw, 0
  br i1 %.not103, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge151
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv141
  %i.az = load double, ptr %i.ay, align 8, !tbaa !77
  %i.ba = fmul double %i.az, %i.aa
  %i.bb = fdiv double %i.at, %i.ba
  %i.bc = fadd double %i.ar, %i.bb                ; 2 uses
  store double %i.bc, ptr %i.r, align 8, !tbaa !184
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge151, %bb.n
  %i.bd = phi double [ %i.ar, %._crit_edge151 ], [ %i.bc, %bb.n ] ; 2 uses
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next142, %wide.trip.count144
  br i1 %exitcond145.not, label %._crit_edge118, label %._crit_edge151, !llvm.loop !193

._crit_edge118:                                   ; preds = %bb.o
  %i.be = icmp ne i32 %.1, 0
  %i.bf = icmp sgt i32 %spec.select.lcssa, 0
  %or.cond = select i1 %i.bf, i1 %i.be, i1 false
  br i1 %or.cond, label %.lr.ph127, label %._crit_edge118.thread

.lr.ph127:                                        ; preds = %._crit_edge118
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 288
  %wide.trip.count149 = zext nneg i32 %1 to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph127, %bb.r
  %indvars.iv146 = phi i64 [ 0, %.lr.ph127 ], [ %indvars.iv.next147, %bb.r ] ; 4 uses
  %.084126 = phi double [ 0.000000e+00, %.lr.ph127 ], [ %.185, %bb.r ] ; 2 uses
  %.086125 = phi double [ 0.000000e+00, %.lr.ph127 ], [ %.187, %bb.r ] ; 2 uses
  %.088124 = phi double [ 0.000000e+00, %.lr.ph127 ], [ %.189, %bb.r ] ; 2 uses
  %.090123 = phi double [ 0.000000e+00, %.lr.ph127 ], [ %.191, %bb.r ]
  %.092122 = phi double [ 0.000000e+00, %.lr.ph127 ], [ %.193, %bb.r ] ; 2 uses
  %.094121 = phi double [ 0.000000e+00, %.lr.ph127 ], [ %.195, %bb.r ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv146
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4
  %.not101 = icmp eq i32 %i.bj, 0
  br i1 %.not101, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bk = fadd double %.094121, 1.000000e+00
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv146
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !77 ; 4 uses
  %i.bn = fadd double %.092122, %i.bm             ; 2 uses
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.bm, double %.088124)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv146
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !77 ; 2 uses
  %i.br = fadd double %.086125, %i.bq
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.bm, double %.084126)
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.195 = phi double [ %.094121, %bb.p ], [ %i.bk, %bb.q ] ; 3 uses
  %.193 = phi double [ %.092122, %bb.p ], [ %i.bn, %bb.q ] ; 4 uses
  %.191 = phi double [ %.090123, %bb.p ], [ %i.bn, %bb.q ] ; 2 uses
  %.189 = phi double [ %.088124, %bb.p ], [ %i.bo, %bb.q ] ; 3 uses
  %.187 = phi double [ %.086125, %bb.p ], [ %i.br, %bb.q ] ; 4 uses
  %.185 = phi double [ %.084126, %bb.p ], [ %i.bs, %bb.q ] ; 3 uses
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %exitcond150.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count149
  br i1 %exitcond150.not, label %._crit_edge128, label %bb.p, !llvm.loop !194

._crit_edge128:                                   ; preds = %bb.r
  %i.bt = fneg double %.191                       ; 2 uses
  %i.bu = fmul double %.193, %i.bt
  %i.bv = tail call double @llvm.fmuladd.f64(double %.195, double %.189, double %i.bu) ; 3 uses
  %i.bw = tail call double @llvm.fabs.f64(double %i.bv)
  %i.bx = fcmp ogt double %i.bw, f0x3EB0C6F7A0B5ED8D
  br i1 %i.bx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge128
  %i.by = fneg double %.193
  %i.bz = fmul double %.185, %i.by
  %i.ca = tail call double @llvm.fmuladd.f64(double %.187, double %.189, double %i.bz)
  %i.cb = fdiv double %i.ca, %i.bv                ; 2 uses
  store double %i.cb, ptr %i.q, align 8, !tbaa !185
  %i.cc = fmul double %.187, %i.bt
  %i.cd = tail call double @llvm.fmuladd.f64(double %.185, double %.195, double %i.cc)
  %i.ce = fdiv double %i.cd, %i.bv                ; 2 uses
  store double %i.ce, ptr %i.r, align 8, !tbaa !184
  br label %._crit_edge118.thread

bb.t:                                             ; preds = %._crit_edge128
  %i.cf = fdiv double %.187, %.193                ; 2 uses
  store double %i.cf, ptr %i.r, align 8, !tbaa !184
  store double 0.000000e+00, ptr %i.q, align 8, !tbaa !185
  br label %._crit_edge118.thread

._crit_edge118.thread:                            ; preds = %.preheader107.thread, %bb.s, %bb.t, %._crit_edge118
  %i.cg = phi double [ %i.cb, %bb.s ], [ 0.000000e+00, %bb.t ], [ 0.000000e+00, %._crit_edge118 ], [ 0.000000e+00, %.preheader107.thread ]
  %i.ch = phi double [ %i.ce, %bb.s ], [ %i.cf, %bb.t ], [ %i.bd, %._crit_edge118 ], [ 0.000000e+00, %.preheader107.thread ]
  %i.ci = load ptr, ptr @img, align 8, !tbaa !8   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 20
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !93
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge118.thread
  %i.cm = load ptr, ptr @input, align 8, !tbaa !8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 5136
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !57
  %i.cp = icmp eq i32 %i.co, 1
  br i1 %i.cp, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u, %._crit_edge118.thread
  %i.cq = load i32, ptr %i.ci, align 8, !tbaa !101
  %i.cr = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4
  %.not = icmp eq i32 %i.cq, %i.cr
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double %i.ch, ptr %i.cs, align 8, !tbaa !81
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.cg, ptr %i.ct, align 8, !tbaa !195
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @updateQPInterlace(ptr noundef captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = load ptr, ptr @generic_RC, align 8, !tbaa !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !88
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.sink.split, label %bb.b

.sink.split:                                      ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !96
  %i.g = icmp eq i32 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !97
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i32 %i.i, ptr %i.j, align 8, !tbaa !98
  %. = select i1 %i.g, i64 1460, i64 1456
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.
  %.sink = load i32, ptr %i.k, align 4, !tbaa !4
  store i32 %.sink, ptr %i.h, align 4, !tbaa !97
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @updateQPNonPicAFF(ptr noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @active_sps, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1148
  %i.c = load i32, ptr %i.b, align 4, !tbaa !102
  %.not = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.e = load i32, ptr %i.d, align 8, !tbaa !44   ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 44 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !106
  %i.i = add nsw i32 %i.h, %i.e
  store i32 %i.i, ptr %i.g, align 4, !tbaa !106
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !97
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i32 %i.k, ptr %i.l, align 8, !tbaa !98
  store i32 %i.e, ptr %i.j, align 4, !tbaa !97
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1328
  store i32 %i.e, ptr %i.m, align 8, !tbaa !107
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1460
  store i32 %i.e, ptr %i.n, align 4, !tbaa !46
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @updateQPInterlaceBU(ptr noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @generic_RC, align 8, !tbaa !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !96
  %i.d = icmp eq i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 44 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !106
  %. = select i1 %i.d, i64 1460, i64 1456
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.
  %.sink7 = load i32, ptr %i.g, align 4, !tbaa !4 ; 2 uses
  %i.h = add nsw i32 %i.f, %.sink7
  store i32 %i.h, ptr %i.e, align 4, !tbaa !106
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1328
  store i32 %.sink7, ptr %i.i, align 8, !tbaa !107
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @updateModelQPFrame(ptr noundef captures(none) initializes((1344, 1348)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.b = load double, ptr %i.a, align 8, !tbaa !36 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.d = load double, ptr %i.c, align 8, !tbaa !180 ; 3 uses
  %i.e = fmul double %i.b, %i.d                   ; 2 uses
  %i.f = fmul double %i.b, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.h = load double, ptr %i.g, align 8, !tbaa !183 ; 3 uses
  %i.i = fmul double %i.h, 4.000000e+00
  %i.j = fmul double %i.b, %i.i
  %i.k = sitofp i32 %1 to double                  ; 2 uses
  %i.l = fmul double %i.j, %i.k
  %i.m = tail call double @llvm.fmuladd.f64(double %i.f, double %i.d, double %i.l) ; 2 uses
  %i.n = fcmp oeq double %i.h, 0.000000e+00
  %i.o = fcmp olt double %i.m, 0.000000e+00
  %or.cond = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = tail call double @sqrt(double noundef %i.m) #21, !tbaa !4
  %i.q = fneg double %i.d
  %i.r = tail call double @llvm.fmuladd.f64(double %i.q, double %i.b, double %i.p) ; 2 uses
  %i.s = fcmp ugt double %i.r, 0.000000e+00
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = fdiv double %i.e, %i.k
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.u = fmul double %i.h, 2.000000e+00
  %i.v = fmul double %i.b, %i.u
  %i.w = fdiv double %i.v, %i.r
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.in.in = phi double [ %i.t, %bb.c ], [ %i.w, %bb.d ]
  %.0.in = fptrunc double %.0.in.in to float
  %.0 = fpext float %.0.in to double
  %i.x = tail call i32 @Qstep2QP(double noundef %.0) #21
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i32 %i.x, ptr %i.y, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @updateBottomField(ptr noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @input, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4704
  %i.c = load i32, ptr %i.b, align 8, !tbaa !94
  %i.d = icmp eq i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.f = load i32, ptr %i.e, align 8, !tbaa !44   ; 3 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 44 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !106
  %i.j = add nsw i32 %i.i, %i.f
  store i32 %i.j, ptr %i.h, align 4, !tbaa !106
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !97
  %i.m = add nsw i32 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i32 %i.m, ptr %i.n, align 8, !tbaa !98
  store i32 %i.f, ptr %i.k, align 4, !tbaa !97
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink9 = phi i64 [ 1328, %bb.b ], [ 1456, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9
  store i32 %i.f, ptr %i.o, align 8, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @updateFirstP(ptr noundef captures(none) initializes((1328, 1332), (1344, 1348)) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !48   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i32 %i.b, ptr %i.c, align 8, !tbaa !44
  %i.d = load ptr, ptr @generic_RC, align 8, !tbaa !8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 0, ptr %i.e, align 8, !tbaa !111
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 0, ptr %i.f, align 4, !tbaa !112
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !110
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !110
  %.not = icmp eq i32 %1, 0
  %i.j = icmp eq i32 %i.i, 0
  %or.cond = select i1 %.not, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr @active_sps, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1148
  %i.m = load i32, ptr %i.l, align 4, !tbaa !102
  %.not26 = icmp eq i32 %i.m, 0
  br i1 %.not26, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr @input, align 8, !tbaa !8  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4704
  %i.p = load i32, ptr %i.o, align 8, !tbaa !94
  switch i32 %i.p, label %bb.e [
    i32 1, label %bb.d
    i32 2, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !106
  %i.s = add nsw i32 %i.r, %i.b
  store i32 %i.s, ptr %i.q, align 4, !tbaa !106
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !97
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i32 %i.u, ptr %i.v, align 8, !tbaa !98
  store i32 %i.b, ptr %i.t, align 4, !tbaa !97
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store i32 %i.b, ptr %i.w, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.y = load i32, ptr %i.x, align 8, !tbaa !114
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1380
  store i32 %i.y, ptr %i.z, align 4, !tbaa !84
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 4708
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !95
  %.not27 = icmp eq i32 %i.ab, 0
  br i1 %.not27, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !88
  %i.ae = icmp eq i32 %i.ad, 0
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1376 ; 2 uses
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1460
  store i32 %i.b, ptr %i.ag, align 4, !tbaa !46
  %i.ah = load i32, ptr %i.af, align 8, !tbaa !114
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1464
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !115
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1456
  store i32 %i.b, ptr %i.aj, align 8, !tbaa !45
  %i.ak = load i32, ptr %i.af, align 8, !tbaa !114
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1468
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !116
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.g, %bb.h, %bb.e, %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1328
  store i32 %i.b, ptr %i.am, align 8, !tbaa !107
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1364 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !113
  %i.ap = add nsw i32 %i.ao, %i.b
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !113
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @updateFirstBU(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @input, align 8, !tbaa !8  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4704
  %i.c = load i32, ptr %i.b, align 8, !tbaa !94
  %i.d = icmp eq i32 %i.c, 2
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4708
  %i.f = load i32, ptr %i.e, align 4, !tbaa !95
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr @generic_RC, align 8, !tbaa !8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !88
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !96
  %i.m = icmp eq i32 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !100
  %i.p = icmp sgt i32 %i.o, 0                     ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1460
  %i.r = load i32, ptr %i.q, align 4, !tbaa !46   ; 2 uses
  br i1 %i.p, label %.sink.split.sink.split, label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.t = load i32, ptr %i.s, align 8, !tbaa !45   ; 2 uses
  br i1 %i.p, label %.sink.split.sink.split, label %.sink.split

.sink.split.sink.split:                           ; preds = %bb.f, %bb.e
  %.sink42 = phi i32 [ %i.r, %bb.e ], [ %i.t, %bb.f ] ; 2 uses
  %.sink36.ph = phi i64 [ 1464, %bb.e ], [ 1468, %bb.f ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 44 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !106
  %i.w = add nsw i32 %i.v, %.sink42
  store i32 %i.w, ptr %i.u, align 4, !tbaa !106
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.f, %bb.e
  %.sink37 = phi i32 [ %i.t, %bb.f ], [ %i.r, %bb.e ], [ %.sink42, %.sink.split.sink.split ]
  %.sink36 = phi i64 [ 1468, %bb.f ], [ 1464, %bb.e ], [ %.sink36.ph, %.sink.split.sink.split ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store i32 %.sink37, ptr %i.x, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.sink36
  %.sink = load i32, ptr %i.y, align 4, !tbaa !4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1380
  store i32 %.sink, ptr %i.z, align 4, !tbaa !84
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.c, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !37
  %i.ac = icmp slt i32 %i.ab, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !43 ; 4 uses
  br i1 %i.ac, label %bb.h, label %.sink.split31

end_hunk_8
begin_hunk_9_@updateNegativeTarget:bb.a
  br label %bb.v

bb.r:                                             ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 4708
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !95
  %.not62 = icmp eq i32 %i.bx, 0
  br i1 %.not62, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.h, %bb.r
  %i.by = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !88
  %i.cb = icmp eq i32 %i.ca, 0
  %i.cc = sitofp i32 %i.w to double
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1388
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !67
  %i.cf = sitofp i32 %i.ce to double
  %i.cg = fdiv double %i.cc, %i.cf
  %i.ch = fadd double %i.cg, 5.000000e-01
  %i.ci = fptosi double %i.ch to i32              ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1376 ; 2 uses
  br i1 %i.cb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1460
  store i32 %i.ci, ptr %i.ck, align 4, !tbaa !46
  %i.cl = load i32, ptr %i.cj, align 8, !tbaa !114
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1464
  store i32 %i.cl, ptr %i.cm, align 8, !tbaa !115
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1456
  store i32 %i.ci, ptr %i.cn, align 8, !tbaa !45
  %i.co = load i32, ptr %i.cj, align 8, !tbaa !114
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1468
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !116
  br label %bb.v

bb.v:                                             ; preds = %bb.f, %bb.r, %bb.u, %bb.t, %.thread, %bb.d
  %i.cq = phi i32 [ %i.r, %bb.f ], [ %i.r, %bb.r ], [ %i.r, %bb.u ], [ %i.r, %bb.t ], [ %i.aq, %.thread ], [ %i.r, %bb.d ]
  %spec.select = select i1 %i.c, i32 %i.cq, i32 %i.t
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1328
  store i32 %spec.select, ptr %i.cr, align 8, !tbaa !107
  ret i32 %i.t
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @predictCurrPicMAD(ptr noundef captures(none) initializes((1400, 1408), (1416, 1424)) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = load ptr, ptr @input, align 8, !tbaa !8  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4704
  %i.c = load i32, ptr %i.b, align 8, !tbaa !94
  %i.d = icmp eq i32 %i.c, 2
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4708
  %i.f = load i32, ptr %i.e, align 4, !tbaa !95
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !88
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load double, ptr %i.k, align 8, !tbaa !184 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1496
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !55   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1388
  %i.p = load i32, ptr %i.o, align 4, !tbaa !67   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.r = load i32, ptr %i.q, align 8, !tbaa !110  ; 2 uses
  %i.s = sub nsw i32 %i.p, %i.r
  %i.t = sext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.t
  %i.v = load double, ptr %i.u, align 8, !tbaa !77
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load double, ptr %i.w, align 8, !tbaa !185 ; 2 uses
  %i.y = tail call double @llvm.fmuladd.f64(double %i.l, double %i.v, double %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1400
  store double %i.y, ptr %i.z, align 8, !tbaa !36
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1416 ; 2 uses
  store double 0.000000e+00, ptr %i.aa, align 8, !tbaa !117
  %.not40.not46 = icmp sgt i32 %i.r, 0
  br i1 %.not40.not46, label %.lr.ph49, label %.loopexit

.lr.ph49:                                         ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.ac = sext i32 %i.p to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph49, %bb.e
  %indvars.iv52 = phi i64 [ %i.ac, %.lr.ph49 ], [ %indvars.iv.next53, %bb.e ]
  %storemerge4147 = phi double [ 0.000000e+00, %.lr.ph49 ], [ %i.ag, %bb.e ]
  %indvars.iv.next53 = add nsw i64 %indvars.iv52, -1 ; 3 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv.next53
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !77
  %i.af = tail call double @llvm.fmuladd.f64(double %i.l, double %i.ae, double %i.x) ; 3 uses
  store double %i.af, ptr %i.ab, align 8, !tbaa !118
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.af, double %i.af, double %storemerge4147) ; 2 uses
  store double %i.ag, ptr %i.aa, align 8, !tbaa !117
  %.not40.not = icmp sgt i64 %indvars.iv.next53, %i.t
  br i1 %.not40.not, label %bb.e, label %.loopexit, !llvm.loop !119

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !184 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !52 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1388
  %i.am = load i32, ptr %i.al, align 4, !tbaa !67 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !110 ; 2 uses
  %i.ap = sub nsw i32 %i.am, %i.ao
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.aq
  %i.as = load double, ptr %i.ar, align 8, !tbaa !77
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.au = load double, ptr %i.at, align 8, !tbaa !185 ; 2 uses
  %i.av = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.as, double %i.au)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1400
  store double %i.av, ptr %i.aw, align 8, !tbaa !36
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1416 ; 2 uses
  store double 0.000000e+00, ptr %i.ax, align 8, !tbaa !117
  %.not39.not43 = icmp sgt i32 %i.ao, 0
  br i1 %.not39.not43, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.az = sext i32 %i.am to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ %i.az, %.lr.ph ], [ %indvars.iv.next, %bb.g ]
  %storemerge44 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.bd, %bb.g ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv.next
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !77
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.bb, double %i.au) ; 3 uses
  store double %i.bc, ptr %i.ay, align 8, !tbaa !118
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.bc, double %storemerge44) ; 2 uses
  store double %i.bd, ptr %i.ax, align 8, !tbaa !117
  %.not39.not = icmp sgt i64 %indvars.iv.next, %i.aq
  br i1 %.not39.not, label %bb.g, label %.loopexit, !llvm.loop !121

.loopexit:                                        ; preds = %bb.g, %bb.e, %bb.f, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @updateModelQPBU(ptr noundef captures(none) initializes((1344, 1348)) %0, i32 %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.b = load i32, ptr %i.a, align 8, !tbaa !37
  %i.c = sitofp i32 %i.b to double
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.e = load double, ptr %i.d, align 8, !tbaa !36 ; 7 uses
  %i.f = fmul double %i.e, %i.c
  %i.g = fmul double %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.i = load double, ptr %i.h, align 8, !tbaa !117
  %i.j = fdiv double %i.g, %i.i
  %i.k = fptosi double %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.m = load i32, ptr %i.l, align 8, !tbaa !114
  %i.n = sub nsw i32 %i.k, %i.m
  %i.o = load float, ptr %0, align 8, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !65
  %i.r = fmul float %i.q, 4.000000e+00
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1388
  %i.t = load i32, ptr %i.s, align 4, !tbaa !67
  %i.u = sitofp i32 %i.t to float
  %i.v = fmul float %i.r, %i.u
  %i.w = fdiv float %i.o, %i.v
  %i.x = fptosi float %i.w to i32
  %i.y = tail call noundef i32 @llvm.smax.i32(i32 %i.n, i32 %i.x)
  %i.z = fmul double %i.e, %i.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !180 ; 5 uses
  %i.ac = fmul double %i.z, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !183 ; 3 uses
  %i.af = fmul double %i.ae, 4.000000e+00
  %i.ag = fmul double %i.e, %i.af
  %i.ah = sitofp i32 %i.y to double               ; 3 uses
  %i.ai = fmul double %i.ag, %i.ah
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ab, double %i.ai) ; 2 uses
  %i.ak = fcmp oeq double %i.ae, 0.000000e+00
  %i.al = fcmp olt double %i.aj, 0.000000e+00
  %or.cond = select i1 %i.ak, i1 true, i1 %i.al
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.am = tail call double @sqrt(double noundef %i.aj) #21, !tbaa !4
  %i.an = fneg double %i.ab
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.an, double %i.e, double %i.am) ; 2 uses
  %i.ap = fcmp ugt double %i.ao, 0.000000e+00
  br i1 %i.ap, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aq = fmul double %i.ae, 2.000000e+00
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sink66 = phi double [ %i.aq, %bb.c ], [ %i.ab, %bb.b ], [ %i.ab, %bb.a ]
  %.sink65 = phi double [ %i.ao, %bb.c ], [ %i.ah, %bb.b ], [ %i.ah, %bb.a ]
  %i.ar = fmul double %i.e, %.sink66
  %i.as = fdiv double %i.ar, %.sink65
  %.0.in = fptrunc double %i.as to float
  %.0 = fpext float %.0.in to double
  %i.at = tail call i32 @Qstep2QP(double noundef %.0) #21
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !85 ; 2 uses
  %i.ax = add nsw i32 %i.aw, %2
  %i.ay = tail call noundef i32 @llvm.smin.i32(i32 %i.ax, i32 %i.at)
  %i.az = load ptr, ptr @input, align 8, !tbaa !8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 5128
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !29
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1444
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !87
  %.not = icmp ult i32 %i.bb, %i.bd               ; 2 uses
  %. = select i1 %.not, i32 3, i32 6
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !43 ; 2 uses
  %i.bg = add nsw i32 %i.bf, %.
  %i.bh = tail call noundef i32 @llvm.smin.i32(i32 %i.bg, i32 %i.ay)
  %i.bi = sub nsw i32 %2, %i.aw
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !49
  %i.bl = tail call noundef i32 @llvm.smax.i32(i32 %i.bh, i32 %i.bi)
  %i.bm = tail call noundef i32 @llvm.smin.i32(i32 %i.bl, i32 %i.bk)
  %.sink69 = select i1 %.not, i32 -3, i32 -6
  %i.bn = add nsw i32 %i.bf, %.sink69
  %i.bo = tail call noundef i32 @llvm.smax.i32(i32 %i.bn, i32 %i.bm)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !51
  %i.br = tail call noundef i32 @llvm.smax.i32(i32 %i.bq, i32 %i.bo)
  store i32 %i.br, ptr %i.au, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @updateLastBU(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !88
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr @active_sps, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1148
  %i.g = load i32, ptr %i.f, align 4, !tbaa !102
  %.not25 = icmp eq i32 %i.g, 0
  %.pre = load ptr, ptr @input, align 8, !tbaa !8 ; 3 uses
  br i1 %.not25, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.pre, i64 4704
  %i.i = load i32, ptr %i.h, align 8, !tbaa !94
  switch i32 %i.i, label %bb.h [
    i32 1, label %bb.e
    i32 2, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1364
  %i.k = load i32, ptr %i.j, align 4, !tbaa !113
  %i.l = sitofp i32 %i.k to double
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1388
  %i.n = load i32, ptr %i.m, align 4, !tbaa !67
  %i.o = sitofp i32 %i.n to double
  %i.p = fdiv double %i.l, %i.o
  %i.q = fadd double %i.p, 5.000000e-01
  %i.r = fptosi double %i.q to i32                ; 4 uses
  %i.s = load ptr, ptr @generic_RC, align 8, !tbaa !8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = load i32, ptr %i.t, align 8, !tbaa !100
  %i.v = getelementptr inbounds nuw i8, ptr %.pre, i64 1560
  %i.w = load i32, ptr %i.v, align 8, !tbaa !133
  %i.x = add nsw i32 %i.w, -2
  %i.y = icmp eq i32 %i.u, %i.x
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1448
  store i32 %i.r, ptr %i.z, align 8, !tbaa !151
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 44 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !106
  %i.ac = add nsw i32 %i.ab, %i.r
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !106
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !97
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !98
  store i32 %i.r, ptr %i.ad, align 4, !tbaa !97
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store i32 %i.r, ptr %i.ag, align 8, !tbaa !43
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !114
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1380
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !84
  br label %bb.l

bb.h:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre, i64 4708
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !95
  %.not26 = icmp eq i32 %i.al, 0
  br i1 %.not26, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h
  %i.am = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !88
  %i.ap = icmp eq i32 %i.ao, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1364
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !113
  %i.as = sitofp i32 %i.ar to double
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1388
  %i.au = load i32, ptr %i.at, align 4, !tbaa !67
  %i.av = sitofp i32 %i.au to double
  %i.aw = fdiv double %i.as, %i.av
  %i.ax = fadd double %i.aw, 5.000000e-01
  %i.ay = fptosi double %i.ax to i32              ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1376 ; 2 uses
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1460
  store i32 %i.ay, ptr %i.ba, align 4, !tbaa !46
  %i.bb = load i32, ptr %i.az, align 8, !tbaa !114
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1464
  store i32 %i.bb, ptr %i.bc, align 8, !tbaa !115
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1456
  store i32 %i.ay, ptr %i.bd, align 8, !tbaa !45
  %i.be = load i32, ptr %i.az, align 8, !tbaa !114
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1468
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !116
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.j, %bb.k, %bb.h, %bb.b
  ret void
}

declare i32 @Qstep2QP(double noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind }
attributes #22 = { nounwind allocsize(0,1) }
attributes #23 = { cold }
attributes #24 = { cold noreturn nounwind }

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
!10 = !{!11, !5, i64 15352}
!11 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !12, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !13, i64 128, !13, i64 136, !5, i64 144, !15, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !6, i64 208, !6, i64 4816, !6, i64 7376, !6, i64 8528, !6, i64 12624, !6, i64 13136, !17, i64 14160, !15, i64 14168, !15, i64 14176, !15, i64 14184, !17, i64 14192, !17, i64 14200, !9, i64 14208, !9, i64 14216, !19, i64 14224, !20, i64 14232, !20, i64 14240, !5, i64 14248, !5, i64 14252, !5, i64 14256, !5, i64 14260, !6, i64 14264, !5, i64 14328, !5, i64 14332, !5, i64 14336, !5, i64 14340, !5, i64 14344, !21, i64 14352, !5, i64 14360, !5, i64 14364, !5, i64 14368, !5, i64 14372, !22, i64 14376, !22, i64 14384, !22, i64 14392, !22, i64 14400, !6, i64 14408, !5, i64 14440, !5, i64 14444, !5, i64 14448, !5, i64 14452, !5, i64 14456, !5, i64 14460, !5, i64 14464, !5, i64 14468, !6, i64 14472, !5, i64 15240, !5, i64 15244, !5, i64 15248, !5, i64 15252, !5, i64 15256, !5, i64 15260, !5, i64 15264, !5, i64 15268, !5, i64 15272, !5, i64 15276, !5, i64 15280, !5, i64 15284, !5, i64 15288, !6, i64 15292, !5, i64 15296, !5, i64 15300, !6, i64 15304, !5, i64 15312, !5, i64 15316, !5, i64 15320, !5, i64 15324, !5, i64 15328, !5, i64 15332, !5, i64 15336, !5, i64 15340, !5, i64 15344, !5, i64 15348, !5, i64 15352, !5, i64 15356, !5, i64 15360, !5, i64 15364, !5, i64 15368, !5, i64 15372, !25, i64 15376, !5, i64 15384, !5, i64 15388, !5, i64 15392, !5, i64 15396, !5, i64 15400, !5, i64 15404, !5, i64 15408, !5, i64 15412, !5, i64 15416, !5, i64 15420, !5, i64 15424, !5, i64 15428, !5, i64 15432, !5, i64 15436, !5, i64 15440, !5, i64 15444, !5, i64 15448, !5, i64 15452, !5, i64 15456, !5, i64 15460, !5, i64 15464, !5, i64 15468, !5, i64 15472, !26, i64 15480, !27, i64 15488, !15, i64 15496, !26, i64 15504, !5, i64 15512, !5, i64 15516, !5, i64 15520, !5, i64 15524, !5, i64 15528, !5, i64 15532, !5, i64 15536, !5, i64 15540, !5, i64 15544, !5, i64 15548, !6, i64 15552, !6, i64 15576, !5, i64 15584, !5, i64 15588, !28, i64 15592, !5, i64 15596, !5, i64 15600, !5, i64 15604, !5, i64 15608, !5, i64 15612}
!12 = !{!"float", !6, i64 0}
!13 = !{!"p2 omnipotent char", !14, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p3 int", !16, i64 0}
!16 = !{!"any p3 pointer", !14, i64 0}
!17 = !{!"p4 int", !18, i64 0}
!18 = !{!"any p4 pointer", !16, i64 0}
!19 = !{!"p1 _ZTS10macroblock", !9, i64 0}
!20 = !{!"p1 int", !9, i64 0}
!21 = !{!"double", !6, i64 0}
!22 = !{!"p6 short", !23, i64 0}
!23 = !{!"any p6 pointer", !24, i64 0}
!24 = !{!"any p5 pointer", !18, i64 0}
!25 = !{!"p1 _ZTS18DecRefPicMarking_s", !9, i64 0}
!26 = !{!"p2 double", !14, i64 0}
!27 = !{!"p3 double", !16, i64 0}
!28 = !{!"short", !6, i64 0}
!29 = !{!30, !5, i64 5128}
!30 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !6, i64 72, !6, i64 136, !6, i64 200, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !6, i64 280, !6, i64 536, !6, i64 792, !6, i64 1048, !6, i64 1304, !5, i64 1560, !5, i64 1564, !5, i64 1568, !5, i64 1572, !5, i64 1576, !5, i64 1580, !6, i64 1584, !5, i64 2084, !5, i64 2088, !5, i64 2092, !5, i64 2096, !5, i64 2100, !5, i64 2104, !5, i64 2108, !5, i64 2112, !5, i64 2116, !5, i64 2120, !5, i64 2124, !5, i64 2128, !5, i64 2132, !5, i64 2136, !5, i64 2140, !5, i64 2144, !5, i64 2148, !5, i64 2152, !5, i64 2156, !6, i64 2160, !6, i64 2416, !6, i64 2672, !5, i64 2928, !5, i64 2932, !5, i64 2936, !5, i64 2940, !5, i64 2944, !5, i64 2948, !5, i64 2952, !5, i64 2956, !5, i64 2960, !5, i64 2964, !5, i64 2968, !5, i64 2972, !6, i64 2976, !5, i64 4000, !5, i64 4004, !5, i64 4008, !5, i64 4012, !5, i64 4016, !5, i64 4020, !5, i64 4024, !5, i64 4028, !5, i64 4032, !5, i64 4036, !5, i64 4040, !5, i64 4044, !5, i64 4048, !5, i64 4052, !5, i64 4056, !5, i64 4060, !5, i64 4064, !5, i64 4068, !5, i64 4072, !5, i64 4076, !21, i64 4080, !5, i64 4088, !5, i64 4092, !5, i64 4096, !5, i64 4100, !5, i64 4104, !5, i64 4108, !5, i64 4112, !5, i64 4116, !5, i64 4120, !5, i64 4124, !5, i64 4128, !5, i64 4132, !5, i64 4136, !5, i64 4140, !5, i64 4144, !5, i64 4148, !5, i64 4152, !5, i64 4156, !5, i64 4160, !5, i64 4164, !5, i64 4168, !5, i64 4172, !5, i64 4176, !5, i64 4180, !5, i64 4184, !5, i64 4188, !6, i64 4192, !6, i64 4448, !5, i64 4704, !5, i64 4708, !5, i64 4712, !5, i64 4716, !5, i64 4720, !5, i64 4724, !5, i64 4728, !5, i64 4732, !5, i64 4736, !5, i64 4740, !5, i64 4744, !5, i64 4748, !5, i64 4752, !5, i64 4756, !5, i64 4760, !5, i64 4764, !5, i64 4768, !5, i64 4772, !6, i64 4776, !5, i64 5032, !5, i64 5036, !20, i64 5040, !20, i64 5048, !31, i64 5056, !20, i64 5064, !5, i64 5072, !5, i64 5076, !5, i64 5080, !5, i64 5084, !5, i64 5088, !5, i64 5092, !5, i64 5096, !5, i64 5100, !5, i64 5104, !5, i64 5108, !5, i64 5112, !5, i64 5116, !5, i64 5120, !5, i64 5124, !5, i64 5128, !5, i64 5132, !5, i64 5136, !21, i64 5144, !21, i64 5152, !21, i64 5160, !6, i64 5168, !5, i64 5208, !6, i64 5212, !5, i64 5244, !5, i64 5248, !5, i64 5252, !5, i64 5256, !5, i64 5260, !5, i64 5264, !5, i64 5268, !5, i64 5272, !5, i64 5276, !5, i64 5280, !5, i64 5284, !5, i64 5288, !6, i64 5296, !6, i64 5344, !6, i64 5392, !5, i64 5648, !5, i64 5652, !5, i64 5656, !5, i64 5660, !6, i64 5664, !6, i64 5704, !5, i64 5744, !5, i64 5748, !5, i64 5752, !5, i64 5756, !5, i64 5760, !5, i64 5764, !5, i64 5768, !5, i64 5772, !5, i64 5776, !6, i64 5780, !5, i64 5792}
!31 = !{!"p1 omnipotent char", !9, i64 0}
!32 = !{!33, !21, i64 1424}
!33 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !21, i64 80, !21, i64 88, !21, i64 96, !21, i64 104, !21, i64 112, !6, i64 120, !6, i64 288, !6, i64 456, !6, i64 624, !6, i64 792, !6, i64 960, !6, i64 1128, !21, i64 1296, !21, i64 1304, !21, i64 1312, !21, i64 1320, !5, i64 1328, !5, i64 1332, !5, i64 1336, !5, i64 1340, !5, i64 1344, !5, i64 1348, !5, i64 1352, !5, i64 1356, !5, i64 1360, !5, i64 1364, !5, i64 1368, !5, i64 1372, !5, i64 1376, !5, i64 1380, !5, i64 1384, !5, i64 1388, !5, i64 1392, !21, i64 1400, !21, i64 1408, !21, i64 1416, !21, i64 1424, !21, i64 1432, !5, i64 1440, !5, i64 1444, !5, i64 1448, !5, i64 1452, !5, i64 1456, !5, i64 1460, !5, i64 1464, !5, i64 1468, !34, i64 1472, !34, i64 1480, !34, i64 1488, !34, i64 1496, !5, i64 1504, !35, i64 1512, !35, i64 1520, !5, i64 1528, !5, i64 1532, !5, i64 1536, !5, i64 1540, !5, i64 1544, !5, i64 1548, !5, i64 1552, !5, i64 1556, !5, i64 1560, !5, i64 1564, !21, i64 1568, !21, i64 1576, !21, i64 1584, !5, i64 1592, !5, i64 1596}
!34 = !{!"p1 double", !9, i64 0}
!35 = !{!"long long", !6, i64 0}
!36 = !{!33, !21, i64 1400}
!37 = !{!33, !5, i64 1536}
!38 = !{!33, !5, i64 1540}
!39 = !{!33, !5, i64 1564}
!40 = !{!33, !5, i64 1556}
!41 = !{!33, !5, i64 1560}
!42 = !{!30, !5, i64 12}
!43 = !{!33, !5, i64 1384}
!44 = !{!33, !5, i64 1344}
!45 = !{!33, !5, i64 1456}
!46 = !{!33, !5, i64 1460}
!47 = !{!33, !5, i64 76}
!48 = !{!33, !5, i64 72}
!49 = !{!33, !5, i64 64}
!50 = !{!11, !5, i64 15452}
!51 = !{!33, !5, i64 68}
!52 = !{!33, !34, i64 1472}
!53 = !{!33, !34, i64 1480}
!54 = !{!33, !34, i64 1488}
!55 = !{!33, !34, i64 1496}
!56 = !{!34, !34, i64 0}
!57 = !{!30, !5, i64 5136}
!58 = !{!33, !5, i64 1528}
!59 = !{!33, !5, i64 1532}
!60 = !{!30, !5, i64 5120}
!61 = !{!33, !12, i64 0}
!62 = !{!11, !12, i64 48}
!63 = !{!30, !5, i64 2096}
!64 = !{!30, !5, i64 20}
!65 = !{!33, !12, i64 4}
!66 = !{!33, !12, i64 8}
!67 = !{!33, !5, i64 1388}
!68 = !{!69, !35, i64 72}
!69 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !35, i64 56, !20, i64 64, !35, i64 72, !5, i64 80, !5, i64 84, !5, i64 88, !6, i64 92, !5, i64 112, !6, i64 116, !5, i64 136, !5, i64 140}
!70 = !{!33, !21, i64 32}
!71 = !{!33, !5, i64 1340}
!72 = !{!33, !5, i64 1336}
!73 = !{!69, !5, i64 32}
!74 = !{!69, !5, i64 36}
!75 = !{!69, !5, i64 40}
!76 = !{!69, !5, i64 80}
!77 = !{!21, !21, i64 0}
!78 = !{!33, !5, i64 1348}
!79 = !{!33, !21, i64 1312}
!80 = !{!33, !21, i64 1320}
!81 = !{!33, !21, i64 104}
!82 = !{!33, !5, i64 1596}
!83 = !{!33, !5, i64 1372}
!84 = !{!33, !5, i64 1380}
!85 = !{!33, !5, i64 1440}
!86 = !{!11, !5, i64 15336}
!87 = !{!33, !5, i64 1444}
!88 = !{!69, !5, i64 4}
!89 = !{!11, !5, i64 88}
!90 = !{!11, !5, i64 52}
!91 = !{!30, !5, i64 5124}
!92 = !{!11, !5, i64 15404}
!93 = !{!11, !5, i64 20}
!94 = !{!30, !5, i64 4704}
!95 = !{!30, !5, i64 4708}
!96 = !{!69, !5, i64 8}
!97 = !{!33, !5, i64 1356}
!98 = !{!33, !5, i64 1352}
!99 = !{!33, !5, i64 1360}
!100 = !{!69, !5, i64 48}
!101 = !{!11, !5, i64 0}
!102 = !{!103, !5, i64 1148}
!103 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !6, i64 40, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !6, i64 108, !5, i64 1132, !5, i64 1136, !5, i64 1140, !5, i64 1144, !5, i64 1148, !5, i64 1152, !5, i64 1156, !5, i64 1160, !5, i64 1164, !5, i64 1168, !5, i64 1172, !5, i64 1176, !5, i64 1180, !104, i64 1184}
!104 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !105, i64 84, !5, i64 496, !105, i64 500, !5, i64 912, !5, i64 916, !5, i64 920, !5, i64 924, !5, i64 928, !5, i64 932, !5, i64 936, !5, i64 940, !5, i64 944}
!105 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !6, i64 12, !6, i64 140, !6, i64 268, !5, i64 396, !5, i64 400, !5, i64 404, !5, i64 408}
!106 = !{!69, !5, i64 44}
!107 = !{!33, !5, i64 1328}
!108 = !{!33, !21, i64 80}
!109 = !{!69, !5, i64 12}
!110 = !{!33, !5, i64 1368}
!111 = !{!69, !5, i64 24}
!112 = !{!69, !5, i64 28}
!113 = !{!33, !5, i64 1364}
!114 = !{!33, !5, i64 1376}
!115 = !{!33, !5, i64 1464}
!116 = !{!33, !5, i64 1468}
!117 = !{!33, !21, i64 1416}
!118 = !{!33, !21, i64 1408}
!119 = distinct !{!119, !120}
!120 = !{!"llvm.loop.mustprogress"}
!121 = distinct !{!121, !120}
!122 = !{!30, !5, i64 2968}
!123 = !{!11, !5, i64 14364}
!124 = !{!11, !5, i64 15612}
!125 = !{!126, !5, i64 16}
!126 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!127 = !{!11, !5, i64 15360}
!128 = !{!33, !21, i64 1432}
!129 = distinct !{!129, !120}
!130 = !{!131, !131, i64 0}
!131 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!132 = !{!69, !5, i64 112}
!133 = !{!30, !5, i64 1560}
!134 = !{!30, !21, i64 4080}
!135 = distinct !{!135, !120}
!136 = !{!30, !21, i64 5160}
!137 = !{!69, !5, i64 84}
!138 = !{!69, !5, i64 88}
!139 = distinct !{!139, !120, !140, !141}
!140 = !{!"llvm.loop.isvectorized", i32 1}
!141 = !{!"llvm.loop.unroll.runtime.disable"}
!142 = distinct !{!142, !120, !141, !140}
!143 = !{!30, !5, i64 8}
!144 = !{!69, !5, i64 140}
!145 = !{!69, !5, i64 136}
!146 = !{!33, !5, i64 1544}
!147 = !{!33, !5, i64 1548}
!148 = !{!33, !5, i64 1504}
!149 = !{!33, !5, i64 1592}
!150 = !{!33, !5, i64 1452}
!151 = !{!33, !5, i64 1448}
!152 = !{!11, !5, i64 15388}
!153 = !{!30, !5, i64 5132}
!154 = !{!33, !21, i64 1584}
!155 = !{!33, !21, i64 40}
!156 = !{!33, !21, i64 1568}
!157 = !{!33, !21, i64 48}
!158 = !{!33, !21, i64 56}
!159 = !{!33, !21, i64 1576}
!160 = distinct !{!160, !120, !140, !141}
!161 = distinct !{!161, !120, !141, !140}
!162 = !{!30, !21, i64 5152}
!163 = !{!30, !21, i64 5144}
!164 = !{!33, !21, i64 16}
!165 = !{!33, !21, i64 24}
!166 = !{!69, !5, i64 16}
!167 = !{!69, !5, i64 20}
!168 = !{!69, !35, i64 56}
!169 = !{!33, !5, i64 1552}
!170 = !{!33, !5, i64 1332}
!171 = !{!33, !5, i64 1392}
!172 = distinct !{!172, !120}
!173 = distinct !{!173, !120, !140, !141}
!174 = distinct !{!174, !120, !141, !140}
!175 = distinct !{!175, !120, !140, !141}
!176 = distinct !{!176, !120, !141, !140}
!177 = distinct !{!177, !178}
!178 = !{!"llvm.loop.unroll.disable"}
!179 = distinct !{!179, !120}
!180 = !{!33, !21, i64 1296}
!181 = distinct !{!181, !120}
!182 = distinct !{!182, !120}
!183 = !{!33, !21, i64 1304}
!184 = !{!33, !21, i64 88}
!185 = !{!33, !21, i64 96}
!186 = distinct !{!186, !120}
!187 = distinct !{!187, !120, !140, !141}
!188 = distinct !{!188, !120, !141, !140}
!189 = distinct !{!189, !120, !140, !141}
!190 = distinct !{!190, !120, !141, !140}
!191 = distinct !{!191, !178}
!192 = distinct !{!192, !120}
!193 = distinct !{!193, !120}
!194 = distinct !{!194, !120}
end_hunk_9

inline.NumInlined: 4
inline.NumDeleted: 3
begin_hunk_0
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
@start_me_refinement_hp = common dso_local local_unnamed_addr global i32 0, align 4
@start_me_refinement_qp = common dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @reset_pic_bin_count() local_unnamed_addr #0 {
bb.a:
  store i32 0, ptr @pic_bin_count, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @get_pic_bin_count() local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @pic_bin_count, align 4, !tbaa !4
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @arienco_create_encoding_environment() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #12 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @arienco_delete_encoding_environment(ptr noundef captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(33) @errortext, ptr noundef nonnull align 1 dereferenceable(33) @.str.1, i64 33, i1 false)
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 200) #13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %0) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @arienco_start_encoding(ptr nofree noundef writeonly captures(none) initializes((0, 20), (24, 48)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.c, align 8, !tbaa !14
  store <4 x i32> <i32 0, i32 510, i32 0, i32 9>, ptr %0, align 8, !tbaa !4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.d, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.e, align 4, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @arienco_bits_written(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4
  %i.d = shl nsw i32 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !17
  %i.i = add i32 %i.f, 8
  %i.j = add i32 %i.i, %i.d
  %i.k = sub i32 %i.j, %i.h
  ret i32 %i.k
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @arienco_done_encoding(ptr nofree noundef captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18
  %i.c = shl i32 %i.b, 1
  %i.d = load i32, ptr %0, align 8, !tbaa !19
  %i.e = lshr i32 %i.d, 9
  %i.f = and i32 %i.e, 1
  %i.g = or disjoint i32 %i.f, %i.c               ; 2 uses
  store i32 %i.g, ptr %i.a, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 10 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !17
  %i.j = add i32 %i.i, -1                         ; 3 uses
  store i32 %i.j, ptr %i.h, align 4, !tbaa !17
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %.loopexit69

bb.b:                                             ; preds = %bb.a
  %i.l = trunc i32 %i.g to i8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !14   ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4    ; 2 uses
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !4
  %i.s = sext i32 %i.q to i64
  %i.t = getelementptr inbounds i8, ptr %i.n, i64 %i.s
  store i8 %i.l, ptr %i.t, align 1, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.promoted = load i32, ptr %i.u, align 8, !tbaa !15 ; 3 uses
  %i.v = icmp sgt i32 %.promoted, 7
  br i1 %i.v, label %.lr.ph, label %.loopexit69

.lr.ph:                                           ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %.promoted70 = load i32, ptr %i.w, align 4, !tbaa !16
  %i.x = add nsw i32 %.promoted, -8
  %i.y = tail call i32 @llvm.usub.sat.i32(i32 %.promoted, i32 15)
  %i.z = add nuw i32 %i.y, 7                      ; 2 uses
  %1 = and i32 %i.z, -8
  %2 = sub nsw i32 %i.x, %1
  %3 = lshr i32 %i.z, 3
  %i.aa = add i32 %.promoted70, %3
  %i.ab = add i32 %i.aa, 1
  store i32 %2, ptr %i.u, align 8, !tbaa !15
  store i32 %i.ab, ptr %i.w, align 4, !tbaa !16
  br label %.loopexit69

.loopexit69:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %i.ac = phi i32 [ 8, %bb.b ], [ 8, %.lr.ph ], [ %i.j, %bb.a ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !8  ; 2 uses
  %.not77 = icmp eq i32 %i.ae, 0
  br i1 %.not77, label %._crit_edge, label %.lr.ph78

.lr.ph78:                                         ; preds = %.loopexit69
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph78, %.loopexit68
  %i.aj = phi i32 [ %i.ac, %.lr.ph78 ], [ %i.bj, %.loopexit68 ]
  %i.ak = phi i32 [ %i.ae, %.lr.ph78 ], [ %i.bk, %.loopexit68 ]
  %i.al = add i32 %i.ak, -1
  store i32 %i.al, ptr %i.ad, align 8, !tbaa !8
  %i.am = load i32, ptr %i.a, align 8, !tbaa !18
  %i.an = shl i32 %i.am, 1
  %i.ao = load i32, ptr %0, align 8, !tbaa !19
  %i.ap = lshr i32 %i.ao, 9
  %.lobit = and i32 %i.ap, 1
  %i.aq = or disjoint i32 %.lobit, %i.an
  %i.ar = xor i32 %i.aq, 1                        ; 2 uses
  store i32 %i.ar, ptr %i.a, align 8, !tbaa !18
  %i.as = add i32 %i.aj, -1                       ; 3 uses
  store i32 %i.as, ptr %i.h, align 4, !tbaa !17
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.d, label %.loopexit68

bb.d:                                             ; preds = %bb.c
  %i.au = trunc i32 %i.ar to i8
  %i.av = load ptr, ptr %i.af, align 8, !tbaa !13
  %i.aw = load ptr, ptr %i.ag, align 8, !tbaa !14 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4  ; 2 uses
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !4
  %i.az = sext i32 %i.ax to i64
  %i.ba = getelementptr inbounds i8, ptr %i.av, i64 %i.az
  store i8 %i.au, ptr %i.ba, align 1, !tbaa !20
  store i32 8, ptr %i.h, align 4, !tbaa !17
  %.promoted72 = load i32, ptr %i.ah, align 8, !tbaa !15 ; 3 uses
  %i.bb = icmp sgt i32 %.promoted72, 7
  br i1 %i.bb, label %.lr.ph73, label %.loopexit68

.lr.ph73:                                         ; preds = %bb.d
  %.promoted75 = load i32, ptr %i.ai, align 4, !tbaa !16
  %i.bc = add nsw i32 %.promoted72, -8
  %i.bd = tail call i32 @llvm.usub.sat.i32(i32 %.promoted72, i32 15)
  %i.be = add nuw i32 %i.bd, 7                    ; 2 uses
  %i.bf = and i32 %i.be, -8
  %i.bg = sub nsw i32 %i.bc, %i.bf
  %i.bh = add i32 %.promoted75, 1
  %4 = lshr i32 %i.be, 3
  %i.bi = add i32 %i.bh, %4
  store i32 %i.bg, ptr %i.ah, align 8, !tbaa !15
  store i32 %i.bi, ptr %i.ai, align 4, !tbaa !16
  br label %.loopexit68

.loopexit68:                                      ; preds = %bb.d, %.lr.ph73, %bb.c
  %i.bj = phi i32 [ 8, %bb.d ], [ 8, %.lr.ph73 ], [ %i.as, %bb.c ] ; 2 uses
  %i.bk = load i32, ptr %i.ad, align 8, !tbaa !8  ; 2 uses
  %.not = icmp eq i32 %i.bk, 0
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !21

._crit_edge:                                      ; preds = %.loopexit68, %.loopexit69
  %i.bl = phi i32 [ %i.ac, %.loopexit69 ], [ %i.bj, %.loopexit68 ]
  %i.bm = load i32, ptr %i.a, align 8, !tbaa !18
  %i.bn = shl i32 %i.bm, 1
  %i.bo = load i32, ptr %0, align 8, !tbaa !19
  %i.bp = lshr i32 %i.bo, 8
  %i.bq = and i32 %i.bp, 1
  %i.br = or disjoint i32 %i.bq, %i.bn            ; 2 uses
  store i32 %i.br, ptr %i.a, align 8, !tbaa !18
  %i.bs = add i32 %i.bl, -1                       ; 3 uses
  store i32 %i.bs, ptr %i.h, align 4, !tbaa !17
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.e, label %.loopexit67

bb.e:                                             ; preds = %._crit_edge
  %i.bu = trunc i32 %i.br to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !13
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !14 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4  ; 2 uses
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !4
  %i.cb = sext i32 %i.bz to i64
  %i.cc = getelementptr inbounds i8, ptr %i.bw, i64 %i.cb
  store i8 %i.bu, ptr %i.cc, align 1, !tbaa !20
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.promoted79 = load i32, ptr %i.cd, align 8, !tbaa !15 ; 3 uses
  %i.ce = icmp sgt i32 %.promoted79, 7
  br i1 %i.ce, label %.lr.ph81, label %.loopexit67

.lr.ph81:                                         ; preds = %bb.e
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %.promoted83 = load i32, ptr %i.cf, align 4, !tbaa !16
  %i.cg = add nsw i32 %.promoted79, -8
  %i.ch = tail call i32 @llvm.usub.sat.i32(i32 %.promoted79, i32 15)
  %i.ci = add nuw i32 %i.ch, 7                    ; 2 uses
  %5 = and i32 %i.ci, -8
  %6 = sub nsw i32 %i.cg, %5
  %7 = lshr i32 %i.ci, 3
  %i.cj = add i32 %.promoted83, %7
  %i.ck = add i32 %i.cj, 1
  store i32 %6, ptr %i.cd, align 8, !tbaa !15
  store i32 %i.ck, ptr %i.cf, align 4, !tbaa !16
  br label %.loopexit67

.loopexit67:                                      ; preds = %bb.e, %.lr.ph81, %._crit_edge
  %i.cl = phi i32 [ 8, %bb.e ], [ 8, %.lr.ph81 ], [ %i.bs, %._crit_edge ]
  %i.cm = load i32, ptr %i.a, align 8, !tbaa !18
  %i.cn = shl i32 %i.cm, 1
  %i.co = or disjoint i32 %i.cn, 1                ; 2 uses
  store i32 %i.co, ptr %i.a, align 8, !tbaa !18
  %i.cp = add i32 %i.cl, -1                       ; 3 uses
  store i32 %i.cp, ptr %i.h, align 4, !tbaa !17
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.f, label %.loopexit66

bb.f:                                             ; preds = %.loopexit67
  %i.cr = trunc i32 %i.co to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !13
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !14 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !4  ; 2 uses
  %i.cx = add nsw i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !4
  %i.cy = sext i32 %i.cw to i64
  %i.cz = getelementptr inbounds i8, ptr %i.ct, i64 %i.cy
  store i8 %i.cr, ptr %i.cz, align 1, !tbaa !20
  store i32 8, ptr %i.h, align 4, !tbaa !17
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.promoted85 = load i32, ptr %i.da, align 8, !tbaa !15 ; 3 uses
  %i.db = icmp sgt i32 %.promoted85, 7
  br i1 %i.db, label %.lr.ph87, label %.loopexit66

.lr.ph87:                                         ; preds = %bb.f
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %.promoted89 = load i32, ptr %i.dc, align 4, !tbaa !16
  %i.dd = add nsw i32 %.promoted85, -8
  %i.de = tail call i32 @llvm.usub.sat.i32(i32 %.promoted85, i32 15)
  %i.df = add nuw i32 %i.de, 7                    ; 2 uses
  %8 = and i32 %i.df, -8
  %9 = sub nsw i32 %i.dd, %8
  %10 = lshr i32 %i.df, 3
  %i.dg = add i32 %.promoted89, %10
  %i.dh = add i32 %i.dg, 1
  store i32 %9, ptr %i.da, align 8, !tbaa !15
  store i32 %i.dh, ptr %i.dc, align 4, !tbaa !16
  br label %.loopexit66

.loopexit66:                                      ; preds = %bb.f, %.lr.ph87, %.loopexit67
  %i.di = phi i32 [ 8, %bb.f ], [ 8, %.lr.ph87 ], [ %i.cp, %.loopexit67 ] ; 3 uses
  %i.dj = sub i32 8, %i.di
  %i.dk = zext i32 %i.dj to i64
  %i.dl = load ptr, ptr @stats, align 8, !tbaa !23
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1960
  %i.dn = load ptr, ptr @img, align 8, !tbaa !23
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 20
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !24
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.dq ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !42
  %i.dt = add nsw i64 %i.ds, %i.dk
  store i64 %i.dt, ptr %i.dr, align 8, !tbaa !42
  %.not6497 = icmp eq i32 %i.di, 8
  br i1 %.not6497, label %._crit_edge100, label %.lr.ph99

.lr.ph99:                                         ; preds = %.loopexit66
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %.promoted125 = load i32, ptr %i.a, align 8, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph99
  %i.dy = phi i32 [ %.promoted125, %.lr.ph99 ], [ %i.ea, %bb.g ]
  %i.dz = phi i32 [ %i.di, %.lr.ph99 ], [ %i.eb, %bb.g ]
  %i.ea = shl i32 %i.dy, 1                        ; 4 uses
  %i.eb = add i32 %i.dz, -1                       ; 4 uses
  switch i32 %i.eb, label %bb.g [
    i32 0, label %bb.h
    i32 8, label %._crit_edge100.loopexit
  ]

bb.h:                                             ; preds = %bb.g
  store i32 %i.ea, ptr %i.a, align 8, !tbaa !18
  store i32 %i.eb, ptr %i.h, align 4, !tbaa !17
  %i.ec = trunc i32 %i.ea to i8
  %i.ed = load ptr, ptr %i.du, align 8, !tbaa !13
  %i.ee = load ptr, ptr %i.dv, align 8, !tbaa !14 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !4  ; 2 uses
  %i.eg = add nsw i32 %i.ef, 1
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !4
  %i.eh = sext i32 %i.ef to i64
  %i.ei = getelementptr inbounds i8, ptr %i.ed, i64 %i.eh
  store i8 %i.ec, ptr %i.ei, align 1, !tbaa !20
  store i32 8, ptr %i.h, align 4, !tbaa !17
  %.promoted91 = load i32, ptr %i.dw, align 8, !tbaa !15 ; 3 uses
  %i.ej = icmp sgt i32 %.promoted91, 7
  br i1 %i.ej, label %.lr.ph93, label %._crit_edge100

.lr.ph93:                                         ; preds = %bb.h
  %.promoted95 = load i32, ptr %i.dx, align 4, !tbaa !16
  %i.ek = add nsw i32 %.promoted91, -8
  %i.el = tail call i32 @llvm.usub.sat.i32(i32 %.promoted91, i32 15)
  %i.em = add nuw i32 %i.el, 7                    ; 2 uses
  %i.en = and i32 %i.em, -8
  %i.eo = sub nsw i32 %i.ek, %i.en
  %i.ep = add i32 %.promoted95, 1
  %11 = lshr i32 %i.em, 3
  %i.eq = add i32 %i.ep, %11
  store i32 %i.eo, ptr %i.dw, align 8, !tbaa !15
  store i32 %i.eq, ptr %i.dx, align 4, !tbaa !16
  br label %._crit_edge100

._crit_edge100.loopexit:                          ; preds = %bb.g
  store i32 %i.ea, ptr %i.a, align 8, !tbaa !18
  store i32 %i.eb, ptr %i.h, align 4, !tbaa !17
  br label %._crit_edge100

._crit_edge100:                                   ; preds = %._crit_edge100.loopexit, %.lr.ph93, %bb.h, %.loopexit66
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.es = load i32, ptr %i.er, align 4, !tbaa !16
  %i.et = shl nsw i32 %i.es, 3
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !15
  %i.ew = add nsw i32 %i.et, %i.ev
  %i.ex = load i32, ptr @pic_bin_count, align 4, !tbaa !4
  %i.ey = add nsw i32 %i.ew, %i.ex
  store i32 %i.ey, ptr @pic_bin_count, align 4, !tbaa !4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @biari_encode_symbol(ptr nofree noundef captures(none) %0, i16 noundef signext %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !44   ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !19     ; 3 uses
  %i.d = load i16, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.e = zext i16 %i.d to i64                     ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @rLPS_table_64x4, i64 %i.e
  %i.g = lshr i32 %i.b, 6
  %i.h = and i32 %i.g, 3
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !20
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = sub i32 %i.b, %i.l                       ; 4 uses
  %i.n = load i32, ptr @cabac_encoding, align 4, !tbaa !4
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !48
  %i.r = add i64 %i.q, %i.o
  store i64 %i.r, ptr %i.p, align 8, !tbaa !48
  %i.s = icmp ne i16 %1, 0
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.u = load i8, ptr %i.t, align 2, !tbaa !49    ; 2 uses
  %i.v = zext i1 %i.s to i8
  %.not = icmp eq i8 %i.u, %i.v
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = add i32 %i.m, %i.c
  %.not85 = icmp eq i16 %i.d, 0
  br i1 %.not85, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.x = xor i8 %i.u, 1
  store i8 %i.x, ptr %i.t, align 2, !tbaa !49
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %i.y = getelementptr inbounds nuw [2 x i8], ptr @AC_next_state_LPS_64, i64 %i.e
  %storemerge143 = load i16, ptr %i.y, align 2, !tbaa !50
  store i16 %storemerge143, ptr %2, align 8, !tbaa !45
  br label %.lr.ph116

bb.d:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw [2 x i8], ptr @AC_next_state_MPS_64, i64 %i.e
  %storemerge = load i16, ptr %i.z, align 2, !tbaa !50
  store i16 %storemerge, ptr %2, align 8, !tbaa !45
  %i.aa = icmp ult i32 %i.m, 256
  br i1 %i.aa, label %.lr.ph116, label %._crit_edge117

.lr.ph116:                                        ; preds = %.thread, %bb.d
  %.0145 = phi i32 [ %i.l, %.thread ], [ %i.m, %bb.d ]
  %.076144 = phi i32 [ %i.w, %.thread ], [ %i.c, %bb.d ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 10 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph116, %.loopexit90
  %.1114 = phi i32 [ %.0145, %.lr.ph116 ], [ %i.ef, %.loopexit90 ] ; 2 uses
  %.177113 = phi i32 [ %.076144, %.lr.ph116 ], [ %i.ee, %.loopexit90 ] ; 6 uses
  %i.ai = icmp ugt i32 %.177113, 511
  br i1 %i.ai, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !18
  %i.ak = shl i32 %i.aj, 1
  %i.al = or disjoint i32 %i.ak, 1                ; 2 uses
  store i32 %i.al, ptr %i.ac, align 8, !tbaa !18
  %i.am = load i32, ptr %i.ad, align 4, !tbaa !17
  %i.an = add i32 %i.am, -1                       ; 3 uses
  store i32 %i.an, ptr %i.ad, align 4, !tbaa !17
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.g, label %.loopexit89

bb.g:                                             ; preds = %bb.f
  %i.ap = trunc i32 %i.al to i8
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !13
  %i.ar = load ptr, ptr %i.af, align 8, !tbaa !14 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4  ; 2 uses
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !4
  %i.au = sext i32 %i.as to i64
  %i.av = getelementptr inbounds i8, ptr %i.aq, i64 %i.au
  store i8 %i.ap, ptr %i.av, align 1, !tbaa !20
  store i32 8, ptr %i.ad, align 4, !tbaa !17
  %.promoted101 = load i32, ptr %i.ag, align 8, !tbaa !15 ; 3 uses
  %i.aw = icmp sgt i32 %.promoted101, 7
  br i1 %i.aw, label %.lr.ph102, label %.loopexit89

.lr.ph102:                                        ; preds = %bb.g
  %.promoted104 = load i32, ptr %i.ah, align 4, !tbaa !16
  %i.ax = add nsw i32 %.promoted101, -8
  %i.ay = tail call i32 @llvm.usub.sat.i32(i32 %.promoted101, i32 15)
  %i.az = add nuw i32 %i.ay, 7                    ; 2 uses
  %i.ba = and i32 %i.az, -8
  %i.bb = sub nsw i32 %i.ax, %i.ba
  %i.bc = add i32 %.promoted104, 1
  %3 = lshr i32 %i.az, 3
  %i.bd = add i32 %i.bc, %3
  store i32 %i.bb, ptr %i.ag, align 8, !tbaa !15
  store i32 %i.bd, ptr %i.ah, align 4, !tbaa !16
  br label %.loopexit89

.loopexit89:                                      ; preds = %bb.g, %.lr.ph102, %bb.f
  %i.be = phi i32 [ 8, %bb.g ], [ 8, %.lr.ph102 ], [ %i.an, %bb.f ]
  %i.bf = load i32, ptr %i.ab, align 8, !tbaa !8  ; 2 uses
  %.not87111 = icmp eq i32 %i.bf, 0
  br i1 %.not87111, label %._crit_edge, label %.lr.ph112

.lr.ph112:                                        ; preds = %.loopexit89, %.loopexit
  %i.bg = phi i32 [ %i.cc, %.loopexit ], [ %i.be, %.loopexit89 ]
  %i.bh = phi i32 [ %i.cd, %.loopexit ], [ %i.bf, %.loopexit89 ]
  %i.bi = add i32 %i.bh, -1
  store i32 %i.bi, ptr %i.ab, align 8, !tbaa !8
  %i.bj = load i32, ptr %i.ac, align 8, !tbaa !18
  %i.bk = shl i32 %i.bj, 1                        ; 2 uses
  store i32 %i.bk, ptr %i.ac, align 8, !tbaa !18
  %i.bl = add i32 %i.bg, -1                       ; 3 uses
  store i32 %i.bl, ptr %i.ad, align 4, !tbaa !17
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.lr.ph112
  %i.bn = trunc i32 %i.bk to i8
  %i.bo = load ptr, ptr %i.ae, align 8, !tbaa !13
  %i.bp = load ptr, ptr %i.af, align 8, !tbaa !14 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4  ; 2 uses
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !4
  %i.bs = sext i32 %i.bq to i64
  %i.bt = getelementptr inbounds i8, ptr %i.bo, i64 %i.bs
  store i8 %i.bn, ptr %i.bt, align 1, !tbaa !20
  store i32 8, ptr %i.ad, align 4, !tbaa !17
  %.promoted106 = load i32, ptr %i.ag, align 8, !tbaa !15 ; 3 uses
  %i.bu = icmp sgt i32 %.promoted106, 7
  br i1 %i.bu, label %.lr.ph107, label %.loopexit

.lr.ph107:                                        ; preds = %bb.h
  %.promoted109 = load i32, ptr %i.ah, align 4, !tbaa !16
  %i.bv = add nsw i32 %.promoted106, -8
  %i.bw = tail call i32 @llvm.usub.sat.i32(i32 %.promoted106, i32 15)
  %i.bx = add nuw i32 %i.bw, 7                    ; 2 uses
  %i.by = and i32 %i.bx, -8
  %i.bz = sub nsw i32 %i.bv, %i.by
  %i.ca = add i32 %.promoted109, 1
  %4 = lshr i32 %i.bx, 3
  %i.cb = add i32 %i.ca, %4
  store i32 %i.bz, ptr %i.ag, align 8, !tbaa !15
  store i32 %i.cb, ptr %i.ah, align 4, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %.lr.ph107, %.lr.ph112
  %i.cc = phi i32 [ 8, %bb.h ], [ 8, %.lr.ph107 ], [ %i.bl, %.lr.ph112 ]
  %i.cd = load i32, ptr %i.ab, align 8, !tbaa !8  ; 2 uses
  %.not87 = icmp eq i32 %i.cd, 0
  br i1 %.not87, label %._crit_edge, label %.lr.ph112, !llvm.loop !51

._crit_edge:                                      ; preds = %.loopexit, %.loopexit89
  %i.ce = add i32 %.177113, -512
  br label %.loopexit90

bb.i:                                             ; preds = %bb.e
  %i.cf = icmp samesign ult i32 %.177113, 256
  br i1 %i.cf, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.cg = load i32, ptr %i.ac, align 8, !tbaa !18
  %i.ch = shl i32 %i.cg, 1                        ; 2 uses
  store i32 %i.ch, ptr %i.ac, align 8, !tbaa !18
  %i.ci = load i32, ptr %i.ad, align 4, !tbaa !17
  %i.cj = add i32 %i.ci, -1                       ; 3 uses
  store i32 %i.cj, ptr %i.ad, align 4, !tbaa !17
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.k, label %.loopexit91

bb.k:                                             ; preds = %bb.j
  %i.cl = trunc i32 %i.ch to i8
  %i.cm = load ptr, ptr %i.ae, align 8, !tbaa !13
  %i.cn = load ptr, ptr %i.af, align 8, !tbaa !14 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !4  ; 2 uses
  %i.cp = add nsw i32 %i.co, 1
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !4
  %i.cq = sext i32 %i.co to i64
  %i.cr = getelementptr inbounds i8, ptr %i.cm, i64 %i.cq
  store i8 %i.cl, ptr %i.cr, align 1, !tbaa !20
  store i32 8, ptr %i.ad, align 4, !tbaa !17
  %.promoted = load i32, ptr %i.ag, align 8, !tbaa !15 ; 3 uses
  %i.cs = icmp sgt i32 %.promoted, 7
  br i1 %i.cs, label %.lr.ph, label %.loopexit91

.lr.ph:                                           ; preds = %bb.k
  %.promoted92 = load i32, ptr %i.ah, align 4, !tbaa !16
  %i.ct = add nsw i32 %.promoted, -8
  %i.cu = tail call i32 @llvm.usub.sat.i32(i32 %.promoted, i32 15)
  %i.cv = add nuw i32 %i.cu, 7                    ; 2 uses
  %i.cw = and i32 %i.cv, -8
  %i.cx = sub nsw i32 %i.ct, %i.cw
  %i.cy = add i32 %.promoted92, 1
  %5 = lshr i32 %i.cv, 3
  %i.cz = add i32 %i.cy, %5
  store i32 %i.cx, ptr %i.ag, align 8, !tbaa !15
  store i32 %i.cz, ptr %i.ah, align 4, !tbaa !16
  br label %.loopexit91

.loopexit91:                                      ; preds = %bb.k, %.lr.ph, %bb.j
  %i.da = phi i32 [ 8, %bb.k ], [ 8, %.lr.ph ], [ %i.cj, %bb.j ]
  %i.db = load i32, ptr %i.ab, align 8, !tbaa !8  ; 2 uses
  %.not8699 = icmp eq i32 %i.db, 0
  br i1 %.not8699, label %.loopexit90, label %.lr.ph100

.lr.ph100:                                        ; preds = %.loopexit91, %.loopexit88
  %i.dc = phi i32 [ %i.dz, %.loopexit88 ], [ %i.da, %.loopexit91 ]
  %i.dd = phi i32 [ %i.ea, %.loopexit88 ], [ %i.db, %.loopexit91 ]
  %i.de = add i32 %i.dd, -1
  store i32 %i.de, ptr %i.ab, align 8, !tbaa !8
  %i.df = load i32, ptr %i.ac, align 8, !tbaa !18
  %i.dg = shl i32 %i.df, 1
  %i.dh = or disjoint i32 %i.dg, 1                ; 2 uses
  store i32 %i.dh, ptr %i.ac, align 8, !tbaa !18
  %i.di = add i32 %i.dc, -1                       ; 3 uses
  store i32 %i.di, ptr %i.ad, align 4, !tbaa !17
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.l, label %.loopexit88

bb.l:                                             ; preds = %.lr.ph100
  %i.dk = trunc i32 %i.dh to i8
  %i.dl = load ptr, ptr %i.ae, align 8, !tbaa !13
  %i.dm = load ptr, ptr %i.af, align 8, !tbaa !14 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !4  ; 2 uses
  %i.do = add nsw i32 %i.dn, 1
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !4
  %i.dp = sext i32 %i.dn to i64
  %i.dq = getelementptr inbounds i8, ptr %i.dl, i64 %i.dp
  store i8 %i.dk, ptr %i.dq, align 1, !tbaa !20
  store i32 8, ptr %i.ad, align 4, !tbaa !17
  %.promoted94 = load i32, ptr %i.ag, align 8, !tbaa !15 ; 3 uses
  %i.dr = icmp sgt i32 %.promoted94, 7
  br i1 %i.dr, label %.lr.ph95, label %.loopexit88

.lr.ph95:                                         ; preds = %bb.l
  %.promoted97 = load i32, ptr %i.ah, align 4, !tbaa !16
  %i.ds = add nsw i32 %.promoted94, -8
  %i.dt = tail call i32 @llvm.usub.sat.i32(i32 %.promoted94, i32 15)
  %i.du = add nuw i32 %i.dt, 7                    ; 2 uses
  %i.dv = and i32 %i.du, -8
  %i.dw = sub nsw i32 %i.ds, %i.dv
  %i.dx = add i32 %.promoted97, 1
  %6 = lshr i32 %i.du, 3
  %i.dy = add i32 %i.dx, %6
  store i32 %i.dw, ptr %i.ag, align 8, !tbaa !15
  store i32 %i.dy, ptr %i.ah, align 4, !tbaa !16
  br label %.loopexit88

.loopexit88:                                      ; preds = %bb.l, %.lr.ph95, %.lr.ph100
  %i.dz = phi i32 [ 8, %bb.l ], [ 8, %.lr.ph95 ], [ %i.di, %.lr.ph100 ]
  %i.ea = load i32, ptr %i.ab, align 8, !tbaa !8  ; 2 uses
  %.not86 = icmp eq i32 %i.ea, 0
  br i1 %.not86, label %.loopexit90, label %.lr.ph100, !llvm.loop !52

bb.m:                                             ; preds = %bb.i
  %i.eb = load i32, ptr %i.ab, align 8, !tbaa !8
  %i.ec = add i32 %i.eb, 1
  store i32 %i.ec, ptr %i.ab, align 8, !tbaa !8
  %i.ed = add nsw i32 %.177113, -256
  br label %.loopexit90

.loopexit90:                                      ; preds = %.loopexit88, %.loopexit91, %bb.m, %._crit_edge
  %.2 = phi i32 [ %i.ce, %._crit_edge ], [ %i.ed, %bb.m ], [ %.177113, %.loopexit91 ], [ %.177113, %.loopexit88 ]
  %i.ee = shl i32 %.2, 1                          ; 2 uses
  %i.ef = shl nuw nsw i32 %.1114, 1               ; 2 uses
  %i.eg = icmp ult i32 %.1114, 128
  br i1 %i.eg, label %bb.e, label %._crit_edge117, !llvm.loop !53

._crit_edge117:                                   ; preds = %.loopexit90, %bb.d
  %.177.lcssa = phi i32 [ %i.c, %bb.d ], [ %i.ee, %.loopexit90 ]
  %.1.lcssa = phi i32 [ %i.m, %bb.d ], [ %i.ef, %.loopexit90 ]
  store i32 %.1.lcssa, ptr %i.a, align 4, !tbaa !44
  store i32 %.177.lcssa, ptr %0, align 8, !tbaa !19
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !15
  %i.ej = add nsw i32 %i.ei, 1
  store i32 %i.ej, ptr %i.eh, align 8, !tbaa !15
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @biari_encode_symbol_eq_prob(ptr nofree noundef captures(none) %0, i16 noundef signext %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !19
  %i.b = shl i32 %i.a, 1                          ; 2 uses
  %.not = icmp eq i16 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !44
  %i.e = add i32 %i.d, %i.b
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.e, %bb.b ], [ %i.b, %bb.a ]  ; 6 uses
  %i.f = icmp ugt i32 %.0, 1023
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !18
  %i.i = shl i32 %i.h, 1
  %i.j = or disjoint i32 %i.i, 1                  ; 2 uses
  store i32 %i.j, ptr %i.g, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !17
  %i.m = add i32 %i.l, -1                         ; 3 uses
  store i32 %i.m, ptr %i.k, align 4, !tbaa !17
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %.loopexit63

bb.e:                                             ; preds = %bb.d
  %i.o = trunc i32 %i.j to i8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !14   ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4    ; 2 uses
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !4
  %i.v = sext i32 %i.t to i64
  %i.w = getelementptr inbounds i8, ptr %i.q, i64 %i.v
  store i8 %i.o, ptr %i.w, align 1, !tbaa !20
  store i32 8, ptr %i.k, align 4, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.promoted76 = load i32, ptr %i.x, align 8, !tbaa !15 ; 3 uses
  %i.y = icmp sgt i32 %.promoted76, 7
  br i1 %i.y, label %.lr.ph77, label %.loopexit63

.lr.ph77:                                         ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %.promoted79 = load i32, ptr %i.z, align 4, !tbaa !16
  %i.aa = add nsw i32 %.promoted76, -8
  %i.ab = tail call i32 @llvm.usub.sat.i32(i32 %.promoted76, i32 15)
  %i.ac = add nuw i32 %i.ab, 7                    ; 2 uses
  %2 = and i32 %i.ac, -8
  %3 = sub nsw i32 %i.aa, %2
  %4 = lshr i32 %i.ac, 3
  %i.ad = add i32 %.promoted79, %4
  %i.ae = add i32 %i.ad, 1
  store i32 %3, ptr %i.x, align 8, !tbaa !15
  store i32 %i.ae, ptr %i.z, align 4, !tbaa !16
  br label %.loopexit63

.loopexit63:                                      ; preds = %bb.e, %.lr.ph77, %bb.d
  %i.af = phi i32 [ 8, %bb.e ], [ 8, %.lr.ph77 ], [ %i.m, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !8  ; 2 uses
  %.not6286 = icmp eq i32 %i.ah, 0
  br i1 %.not6286, label %._crit_edge, label %.lr.ph87

.lr.ph87:                                         ; preds = %.loopexit63
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph87, %.loopexit
  %i.am = phi i32 [ %i.af, %.lr.ph87 ], [ %i.bi, %.loopexit ]
  %i.an = phi i32 [ %i.ah, %.lr.ph87 ], [ %i.bj, %.loopexit ]
  %i.ao = add i32 %i.an, -1
  store i32 %i.ao, ptr %i.ag, align 8, !tbaa !8
  %i.ap = load i32, ptr %i.g, align 8, !tbaa !18
  %i.aq = shl i32 %i.ap, 1                        ; 2 uses
  store i32 %i.aq, ptr %i.g, align 8, !tbaa !18
  %i.ar = add i32 %i.am, -1                       ; 3 uses
  store i32 %i.ar, ptr %i.k, align 4, !tbaa !17
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.at = trunc i32 %i.aq to i8
  %i.au = load ptr, ptr %i.ai, align 8, !tbaa !13
  %i.av = load ptr, ptr %i.aj, align 8, !tbaa !14 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4  ; 2 uses
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !4
  %i.ay = sext i32 %i.aw to i64
  %i.az = getelementptr inbounds i8, ptr %i.au, i64 %i.ay
  store i8 %i.at, ptr %i.az, align 1, !tbaa !20
  store i32 8, ptr %i.k, align 4, !tbaa !17
  %.promoted81 = load i32, ptr %i.ak, align 8, !tbaa !15 ; 3 uses
  %i.ba = icmp sgt i32 %.promoted81, 7
  br i1 %i.ba, label %.lr.ph82, label %.loopexit

.lr.ph82:                                         ; preds = %bb.g
  %.promoted84 = load i32, ptr %i.al, align 4, !tbaa !16
  %i.bb = add nsw i32 %.promoted81, -8
  %i.bc = tail call i32 @llvm.usub.sat.i32(i32 %.promoted81, i32 15)
  %i.bd = add nuw i32 %i.bc, 7                    ; 2 uses
  %i.be = and i32 %i.bd, -8
  %i.bf = sub nsw i32 %i.bb, %i.be
  %i.bg = add i32 %.promoted84, 1
  %5 = lshr i32 %i.bd, 3
  %i.bh = add i32 %i.bg, %5
  store i32 %i.bf, ptr %i.ak, align 8, !tbaa !15
  store i32 %i.bh, ptr %i.al, align 4, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %.lr.ph82, %bb.f
  %i.bi = phi i32 [ 8, %bb.g ], [ 8, %.lr.ph82 ], [ %i.ar, %bb.f ]
  %i.bj = load i32, ptr %i.ag, align 8, !tbaa !8  ; 2 uses
  %.not62 = icmp eq i32 %i.bj, 0
  br i1 %.not62, label %._crit_edge, label %bb.f, !llvm.loop !54

._crit_edge:                                      ; preds = %.loopexit, %.loopexit63
  %i.bk = add i32 %.0, -1024
  br label %.loopexit65

bb.h:                                             ; preds = %bb.c
  %i.bl = icmp samesign ult i32 %.0, 512
  br i1 %i.bl, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !18
  %i.bo = shl i32 %i.bn, 1                        ; 2 uses
  store i32 %i.bo, ptr %i.bm, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !17
  %i.br = add i32 %i.bq, -1                       ; 3 uses
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !17
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.j, label %.loopexit66

bb.j:                                             ; preds = %bb.i
  %i.bt = trunc i32 %i.bo to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !13
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !14 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !4  ; 2 uses
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !4
  %i.ca = sext i32 %i.by to i64
  %i.cb = getelementptr inbounds i8, ptr %i.bv, i64 %i.ca
  store i8 %i.bt, ptr %i.cb, align 1, !tbaa !20
  store i32 8, ptr %i.bp, align 4, !tbaa !17
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.promoted = load i32, ptr %i.cc, align 8, !tbaa !15 ; 3 uses
  %i.cd = icmp sgt i32 %.promoted, 7
  br i1 %i.cd, label %.lr.ph, label %.loopexit66

.lr.ph:                                           ; preds = %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %.promoted67 = load i32, ptr %i.ce, align 4, !tbaa !16
  %i.cf = add nsw i32 %.promoted, -8
  %i.cg = tail call i32 @llvm.usub.sat.i32(i32 %.promoted, i32 15)
  %i.ch = add nuw i32 %i.cg, 7                    ; 2 uses
  %6 = and i32 %i.ch, -8
  %7 = sub nsw i32 %i.cf, %6
  %8 = lshr i32 %i.ch, 3
  %i.ci = add i32 %.promoted67, %8
  %i.cj = add i32 %i.ci, 1
  store i32 %7, ptr %i.cc, align 8, !tbaa !15
  store i32 %i.cj, ptr %i.ce, align 4, !tbaa !16
  br label %.loopexit66

.loopexit66:                                      ; preds = %bb.j, %.lr.ph, %bb.i
  %i.ck = phi i32 [ 8, %bb.j ], [ 8, %.lr.ph ], [ %i.br, %bb.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !8  ; 2 uses
  %.not6174 = icmp eq i32 %i.cm, 0
  br i1 %.not6174, label %.loopexit65, label %.lr.ph75

.lr.ph75:                                         ; preds = %.loopexit66
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph75, %.loopexit64
  %i.cr = phi i32 [ %i.ck, %.lr.ph75 ], [ %i.do, %.loopexit64 ]
  %i.cs = phi i32 [ %i.cm, %.lr.ph75 ], [ %i.dp, %.loopexit64 ]
  %i.ct = add i32 %i.cs, -1
  store i32 %i.ct, ptr %i.cl, align 8, !tbaa !8
  %i.cu = load i32, ptr %i.bm, align 8, !tbaa !18
  %i.cv = shl i32 %i.cu, 1
  %i.cw = or disjoint i32 %i.cv, 1                ; 2 uses
  store i32 %i.cw, ptr %i.bm, align 8, !tbaa !18
  %i.cx = add i32 %i.cr, -1                       ; 3 uses
  store i32 %i.cx, ptr %i.bp, align 4, !tbaa !17
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.l, label %.loopexit64

bb.l:                                             ; preds = %bb.k
  %i.cz = trunc i32 %i.cw to i8
  %i.da = load ptr, ptr %i.cn, align 8, !tbaa !13
  %i.db = load ptr, ptr %i.co, align 8, !tbaa !14 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !4  ; 2 uses
  %i.dd = add nsw i32 %i.dc, 1
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !4
  %i.de = sext i32 %i.dc to i64
  %i.df = getelementptr inbounds i8, ptr %i.da, i64 %i.de
  store i8 %i.cz, ptr %i.df, align 1, !tbaa !20
  store i32 8, ptr %i.bp, align 4, !tbaa !17
  %.promoted69 = load i32, ptr %i.cp, align 8, !tbaa !15 ; 3 uses
  %i.dg = icmp sgt i32 %.promoted69, 7
  br i1 %i.dg, label %.lr.ph70, label %.loopexit64

.lr.ph70:                                         ; preds = %bb.l
  %.promoted72 = load i32, ptr %i.cq, align 4, !tbaa !16
  %i.dh = add nsw i32 %.promoted69, -8
  %i.di = tail call i32 @llvm.usub.sat.i32(i32 %.promoted69, i32 15)
  %i.dj = add nuw i32 %i.di, 7                    ; 2 uses
  %i.dk = and i32 %i.dj, -8
  %i.dl = sub nsw i32 %i.dh, %i.dk
  %i.dm = add i32 %.promoted72, 1
  %9 = lshr i32 %i.dj, 3
  %i.dn = add i32 %i.dm, %9
  store i32 %i.dl, ptr %i.cp, align 8, !tbaa !15
  store i32 %i.dn, ptr %i.cq, align 4, !tbaa !16
  br label %.loopexit64

.loopexit64:                                      ; preds = %bb.l, %.lr.ph70, %bb.k
  %i.do = phi i32 [ 8, %bb.l ], [ 8, %.lr.ph70 ], [ %i.cx, %bb.k ]
  %i.dp = load i32, ptr %i.cl, align 8, !tbaa !8  ; 2 uses
  %.not61 = icmp eq i32 %i.dp, 0
  br i1 %.not61, label %.loopexit65, label %bb.k, !llvm.loop !55

bb.m:                                             ; preds = %bb.h
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !8
  %i.ds = add i32 %i.dr, 1
  store i32 %i.ds, ptr %i.dq, align 8, !tbaa !8
  %i.dt = add nsw i32 %.0, -512
  br label %.loopexit65

.loopexit65:                                      ; preds = %.loopexit64, %.loopexit66, %bb.m, %._crit_edge
  %.1 = phi i32 [ %i.bk, %._crit_edge ], [ %i.dt, %bb.m ], [ %.0, %.loopexit66 ], [ %.0, %.loopexit64 ]
  store i32 %.1, ptr %0, align 8, !tbaa !19
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !15
  %i.dw = add nsw i32 %i.dv, 1
  store i32 %i.dw, ptr %i.du, align 8, !tbaa !15
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @biari_encode_symbol_final(ptr nofree noundef captures(none) %0, i16 noundef signext %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !44
  %i.c = add i32 %i.b, -2                         ; 3 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !19
  %.not = icmp eq i16 %1, 0                       ; 2 uses
  %spec.select = select i1 %.not, i32 %i.c, i32 2 ; 2 uses
  %i.e = select i1 %.not, i32 0, i32 %i.c
  %spec.select72 = add i32 %i.e, %i.d             ; 2 uses
  %i.f = icmp ult i32 %spec.select, 256
  br i1 %i.f, label %.lr.ph101, label %select.unfold._crit_edge

.lr.ph101:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph101, %select.unfold
  %.199 = phi i32 [ %spec.select72, %.lr.ph101 ], [ %i.dj, %select.unfold ] ; 6 uses
  %.16298 = phi i32 [ %spec.select, %.lr.ph101 ], [ %i.dk, %select.unfold ] ; 2 uses
  %i.n = icmp ugt i32 %.199, 511
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.h, align 8, !tbaa !18
  %i.p = shl i32 %i.o, 1
  %i.q = or disjoint i32 %i.p, 1                  ; 2 uses
  store i32 %i.q, ptr %i.h, align 8, !tbaa !18
  %i.r = load i32, ptr %i.i, align 4, !tbaa !17
  %i.s = add i32 %i.r, -1                         ; 3 uses
  store i32 %i.s, ptr %i.i, align 4, !tbaa !17
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.d, label %.loopexit74

bb.d:                                             ; preds = %bb.c
  %i.u = trunc i32 %i.q to i8
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !14   ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4    ; 2 uses
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4, !tbaa !4
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 %i.z
  store i8 %i.u, ptr %i.aa, align 1, !tbaa !20
  store i32 8, ptr %i.i, align 4, !tbaa !17
  %.promoted86 = load i32, ptr %i.l, align 8, !tbaa !15 ; 3 uses
  %i.ab = icmp sgt i32 %.promoted86, 7
  br i1 %i.ab, label %.lr.ph87, label %.loopexit74

.lr.ph87:                                         ; preds = %bb.d
  %.promoted89 = load i32, ptr %i.m, align 4, !tbaa !16
  %i.ac = add nsw i32 %.promoted86, -8
  %i.ad = tail call i32 @llvm.usub.sat.i32(i32 %.promoted86, i32 15)
  %i.ae = add nuw i32 %i.ad, 7                    ; 2 uses
  %i.af = and i32 %i.ae, -8
  %i.ag = sub nsw i32 %i.ac, %i.af
  %i.ah = add i32 %.promoted89, 1
  %2 = lshr i32 %i.ae, 3
  %i.ai = add i32 %i.ah, %2
  store i32 %i.ag, ptr %i.l, align 8, !tbaa !15
  store i32 %i.ai, ptr %i.m, align 4, !tbaa !16
  br label %.loopexit74

.loopexit74:                                      ; preds = %bb.d, %.lr.ph87, %bb.c
  %i.aj = phi i32 [ 8, %bb.d ], [ 8, %.lr.ph87 ], [ %i.s, %bb.c ]
  %i.ak = load i32, ptr %i.g, align 8, !tbaa !8   ; 2 uses
  %.not7096 = icmp eq i32 %i.ak, 0
  br i1 %.not7096, label %._crit_edge, label %.lr.ph97

.lr.ph97:                                         ; preds = %.loopexit74, %.loopexit
  %i.al = phi i32 [ %i.bh, %.loopexit ], [ %i.aj, %.loopexit74 ]
  %i.am = phi i32 [ %i.bi, %.loopexit ], [ %i.ak, %.loopexit74 ]
  %i.an = add i32 %i.am, -1
  store i32 %i.an, ptr %i.g, align 8, !tbaa !8
  %i.ao = load i32, ptr %i.h, align 8, !tbaa !18
  %i.ap = shl i32 %i.ao, 1                        ; 2 uses
  store i32 %i.ap, ptr %i.h, align 8, !tbaa !18
  %i.aq = add i32 %i.al, -1                       ; 3 uses
  store i32 %i.aq, ptr %i.i, align 4, !tbaa !17
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.lr.ph97
  %i.as = trunc i32 %i.ap to i8
  %i.at = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.au = load ptr, ptr %i.k, align 8, !tbaa !14  ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4  ; 2 uses
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !4
  %i.ax = sext i32 %i.av to i64
  %i.ay = getelementptr inbounds i8, ptr %i.at, i64 %i.ax
  store i8 %i.as, ptr %i.ay, align 1, !tbaa !20
  store i32 8, ptr %i.i, align 4, !tbaa !17
  %.promoted91 = load i32, ptr %i.l, align 8, !tbaa !15 ; 3 uses
  %i.az = icmp sgt i32 %.promoted91, 7
  br i1 %i.az, label %.lr.ph92, label %.loopexit

.lr.ph92:                                         ; preds = %bb.e
  %.promoted94 = load i32, ptr %i.m, align 4, !tbaa !16
  %i.ba = add nsw i32 %.promoted91, -8
  %i.bb = tail call i32 @llvm.usub.sat.i32(i32 %.promoted91, i32 15)
  %i.bc = add nuw i32 %i.bb, 7                    ; 2 uses
  %i.bd = and i32 %i.bc, -8
  %i.be = sub nsw i32 %i.ba, %i.bd
  %i.bf = add i32 %.promoted94, 1
  %3 = lshr i32 %i.bc, 3
  %i.bg = add i32 %i.bf, %3
  store i32 %i.be, ptr %i.l, align 8, !tbaa !15
  store i32 %i.bg, ptr %i.m, align 4, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.lr.ph92, %.lr.ph97
  %i.bh = phi i32 [ 8, %bb.e ], [ 8, %.lr.ph92 ], [ %i.aq, %.lr.ph97 ]
  %i.bi = load i32, ptr %i.g, align 8, !tbaa !8   ; 2 uses
  %.not70 = icmp eq i32 %i.bi, 0
  br i1 %.not70, label %._crit_edge, label %.lr.ph97, !llvm.loop !56

._crit_edge:                                      ; preds = %.loopexit, %.loopexit74
  %i.bj = add i32 %.199, -512
  br label %select.unfold

bb.f:                                             ; preds = %bb.b
  %i.bk = icmp samesign ult i32 %.199, 256
  br i1 %i.bk, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.bl = load i32, ptr %i.h, align 8, !tbaa !18
  %i.bm = shl i32 %i.bl, 1                        ; 2 uses
  store i32 %i.bm, ptr %i.h, align 8, !tbaa !18
  %i.bn = load i32, ptr %i.i, align 4, !tbaa !17
  %i.bo = add i32 %i.bn, -1                       ; 3 uses
  store i32 %i.bo, ptr %i.i, align 4, !tbaa !17
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.h, label %.loopexit76

bb.h:                                             ; preds = %bb.g
  %i.bq = trunc i32 %i.bm to i8
  %i.br = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.bs = load ptr, ptr %i.k, align 8, !tbaa !14  ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4  ; 2 uses
  %i.bu = add nsw i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !4
  %i.bv = sext i32 %i.bt to i64
  %i.bw = getelementptr inbounds i8, ptr %i.br, i64 %i.bv
  store i8 %i.bq, ptr %i.bw, align 1, !tbaa !20
  store i32 8, ptr %i.i, align 4, !tbaa !17
  %.promoted = load i32, ptr %i.l, align 8, !tbaa !15 ; 3 uses
  %i.bx = icmp sgt i32 %.promoted, 7
  br i1 %i.bx, label %.lr.ph, label %.loopexit76

.lr.ph:                                           ; preds = %bb.h
  %.promoted77 = load i32, ptr %i.m, align 4, !tbaa !16
  %i.by = add nsw i32 %.promoted, -8
  %i.bz = tail call i32 @llvm.usub.sat.i32(i32 %.promoted, i32 15)
  %i.ca = add nuw i32 %i.bz, 7                    ; 2 uses
  %i.cb = and i32 %i.ca, -8
  %i.cc = sub nsw i32 %i.by, %i.cb
  %i.cd = add i32 %.promoted77, 1
  %4 = lshr i32 %i.ca, 3
  %i.ce = add i32 %i.cd, %4
  store i32 %i.cc, ptr %i.l, align 8, !tbaa !15
  store i32 %i.ce, ptr %i.m, align 4, !tbaa !16
  br label %.loopexit76

.loopexit76:                                      ; preds = %bb.h, %.lr.ph, %bb.g
  %i.cf = phi i32 [ 8, %bb.h ], [ 8, %.lr.ph ], [ %i.bo, %bb.g ]
  %i.cg = load i32, ptr %i.g, align 8, !tbaa !8   ; 2 uses
  %.not6984 = icmp eq i32 %i.cg, 0
  br i1 %.not6984, label %select.unfold, label %.lr.ph85

.lr.ph85:                                         ; preds = %.loopexit76, %.loopexit73
  %i.ch = phi i32 [ %i.de, %.loopexit73 ], [ %i.cf, %.loopexit76 ]
  %i.ci = phi i32 [ %i.df, %.loopexit73 ], [ %i.cg, %.loopexit76 ]
  %i.cj = add i32 %i.ci, -1
  store i32 %i.cj, ptr %i.g, align 8, !tbaa !8
  %i.ck = load i32, ptr %i.h, align 8, !tbaa !18
  %i.cl = shl i32 %i.ck, 1
  %i.cm = or disjoint i32 %i.cl, 1                ; 2 uses
  store i32 %i.cm, ptr %i.h, align 8, !tbaa !18
  %i.cn = add i32 %i.ch, -1                       ; 3 uses
  store i32 %i.cn, ptr %i.i, align 4, !tbaa !17
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.i, label %.loopexit73

bb.i:                                             ; preds = %.lr.ph85
  %i.cp = trunc i32 %i.cm to i8
  %i.cq = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.cr = load ptr, ptr %i.k, align 8, !tbaa !14  ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !4  ; 2 uses
  %i.ct = add nsw i32 %i.cs, 1
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !4
  %i.cu = sext i32 %i.cs to i64
  %i.cv = getelementptr inbounds i8, ptr %i.cq, i64 %i.cu
  store i8 %i.cp, ptr %i.cv, align 1, !tbaa !20
  store i32 8, ptr %i.i, align 4, !tbaa !17
  %.promoted79 = load i32, ptr %i.l, align 8, !tbaa !15 ; 3 uses
  %i.cw = icmp sgt i32 %.promoted79, 7
  br i1 %i.cw, label %.lr.ph80, label %.loopexit73

.lr.ph80:                                         ; preds = %bb.i
  %.promoted82 = load i32, ptr %i.m, align 4, !tbaa !16
  %i.cx = add nsw i32 %.promoted79, -8
  %i.cy = tail call i32 @llvm.usub.sat.i32(i32 %.promoted79, i32 15)
  %i.cz = add nuw i32 %i.cy, 7                    ; 2 uses
  %i.da = and i32 %i.cz, -8
  %i.db = sub nsw i32 %i.cx, %i.da
  %i.dc = add i32 %.promoted82, 1
  %5 = lshr i32 %i.cz, 3
  %i.dd = add i32 %i.dc, %5
  store i32 %i.db, ptr %i.l, align 8, !tbaa !15
  store i32 %i.dd, ptr %i.m, align 4, !tbaa !16
  br label %.loopexit73

.loopexit73:                                      ; preds = %bb.i, %.lr.ph80, %.lr.ph85
  %i.de = phi i32 [ 8, %bb.i ], [ 8, %.lr.ph80 ], [ %i.cn, %.lr.ph85 ]
  %i.df = load i32, ptr %i.g, align 8, !tbaa !8   ; 2 uses
  %.not69 = icmp eq i32 %i.df, 0
  br i1 %.not69, label %select.unfold, label %.lr.ph85, !llvm.loop !57

bb.j:                                             ; preds = %bb.f
  %i.dg = load i32, ptr %i.g, align 8, !tbaa !8
  %i.dh = add i32 %i.dg, 1
  store i32 %i.dh, ptr %i.g, align 8, !tbaa !8
  %i.di = add nsw i32 %.199, -256
  br label %select.unfold

select.unfold:                                    ; preds = %.loopexit73, %.loopexit76, %bb.j, %._crit_edge
  %.2 = phi i32 [ %i.bj, %._crit_edge ], [ %i.di, %bb.j ], [ %.199, %.loopexit76 ], [ %.199, %.loopexit73 ]
  %i.dj = shl i32 %.2, 1                          ; 2 uses
  %i.dk = shl nuw nsw i32 %.16298, 1              ; 2 uses
  %i.dl = icmp ult i32 %.16298, 128
  br i1 %i.dl, label %bb.b, label %select.unfold._crit_edge, !llvm.loop !58

select.unfold._crit_edge:                         ; preds = %select.unfold, %bb.a
  %.162.lcssa = phi i32 [ %i.c, %bb.a ], [ %i.dk, %select.unfold ]
  %.1.lcssa = phi i32 [ %spec.select72, %bb.a ], [ %i.dj, %select.unfold ]
  store i32 %.162.lcssa, ptr %i.a, align 4, !tbaa !44
  store i32 %.1.lcssa, ptr %0, align 8, !tbaa !19
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !15
  %i.do = add nsw i32 %i.dn, 1
  store i32 %i.do, ptr %i.dm, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @biari_init_context(ptr nofree noundef writeonly captures(none) initializes((0, 3), (8, 16)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !4
  %i.b = load ptr, ptr @img, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 14216
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !60
  %i.g = tail call noundef i32 @llvm.smax.i32(i32 %i.f, i32 0)
  %i.h = mul nsw i32 %i.g, %i.a
  %i.i = ashr i32 %i.h, 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4
  %i.l = add nsw i32 %i.i, %i.k                   ; 2 uses
  %i.m = tail call noundef i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %i.n = tail call range(i32 1, 127) i32 @llvm.umin.i32(i32 %i.m, i32 126)
  %i.o = icmp sgt i32 %i.l, 63                    ; 2 uses
  %i.p = trunc nuw nsw i32 %i.n to i16            ; 2 uses
  %i.q = add nsw i16 %i.p, -64
  %i.r = sub nuw nsw i16 63, %i.p
  %.sink9 = select i1 %i.o, i16 %i.q, i16 %i.r
  %.sink = zext i1 %i.o to i8
  store i16 %.sink9, ptr %0, align 8, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.sink, ptr %i.s, align 2, !tbaa !49
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.t, align 8, !tbaa !48
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
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
!8 = !{!9, !5, i64 16}
!9 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !10, i64 24, !12, i64 32, !5, i64 40, !5, i64 44}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!9, !10, i64 24}
!14 = !{!9, !12, i64 32}
!15 = !{!9, !5, i64 40}
!16 = !{!9, !5, i64 44}
!17 = !{!9, !5, i64 12}
!18 = !{!9, !5, i64 8}
!19 = !{!9, !5, i64 0}
!20 = !{!6, !6, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!11, !11, i64 0}
!24 = !{!25, !5, i64 20}
!25 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !26, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !27, i64 128, !27, i64 136, !5, i64 144, !29, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !6, i64 208, !6, i64 4816, !6, i64 7376, !6, i64 8528, !6, i64 12624, !6, i64 13136, !31, i64 14160, !29, i64 14168, !29, i64 14176, !29, i64 14184, !31, i64 14192, !31, i64 14200, !11, i64 14208, !11, i64 14216, !33, i64 14224, !12, i64 14232, !12, i64 14240, !5, i64 14248, !5, i64 14252, !5, i64 14256, !5, i64 14260, !6, i64 14264, !5, i64 14328, !5, i64 14332, !5, i64 14336, !5, i64 14340, !5, i64 14344, !34, i64 14352, !5, i64 14360, !5, i64 14364, !5, i64 14368, !5, i64 14372, !35, i64 14376, !35, i64 14384, !35, i64 14392, !35, i64 14400, !6, i64 14408, !5, i64 14440, !5, i64 14444, !5, i64 14448, !5, i64 14452, !5, i64 14456, !5, i64 14460, !5, i64 14464, !5, i64 14468, !6, i64 14472, !5, i64 15240, !5, i64 15244, !5, i64 15248, !5, i64 15252, !5, i64 15256, !5, i64 15260, !5, i64 15264, !5, i64 15268, !5, i64 15272, !5, i64 15276, !5, i64 15280, !5, i64 15284, !5, i64 15288, !6, i64 15292, !5, i64 15296, !5, i64 15300, !6, i64 15304, !5, i64 15312, !5, i64 15316, !5, i64 15320, !5, i64 15324, !5, i64 15328, !5, i64 15332, !5, i64 15336, !5, i64 15340, !5, i64 15344, !5, i64 15348, !5, i64 15352, !5, i64 15356, !5, i64 15360, !5, i64 15364, !5, i64 15368, !5, i64 15372, !38, i64 15376, !5, i64 15384, !5, i64 15388, !5, i64 15392, !5, i64 15396, !5, i64 15400, !5, i64 15404, !5, i64 15408, !5, i64 15412, !5, i64 15416, !5, i64 15420, !5, i64 15424, !5, i64 15428, !5, i64 15432, !5, i64 15436, !5, i64 15440, !5, i64 15444, !5, i64 15448, !5, i64 15452, !5, i64 15456, !5, i64 15460, !5, i64 15464, !5, i64 15468, !5, i64 15472, !39, i64 15480, !40, i64 15488, !29, i64 15496, !39, i64 15504, !5, i64 15512, !5, i64 15516, !5, i64 15520, !5, i64 15524, !5, i64 15528, !5, i64 15532, !5, i64 15536, !5, i64 15540, !5, i64 15544, !5, i64 15548, !6, i64 15552, !6, i64 15576, !5, i64 15584, !5, i64 15588, !41, i64 15592, !5, i64 15596, !5, i64 15600, !5, i64 15604, !5, i64 15608, !5, i64 15612}
!26 = !{!"float", !6, i64 0}
!27 = !{!"p2 omnipotent char", !28, i64 0}
!28 = !{!"any p2 pointer", !11, i64 0}
!29 = !{!"p3 int", !30, i64 0}
!30 = !{!"any p3 pointer", !28, i64 0}
!31 = !{!"p4 int", !32, i64 0}
!32 = !{!"any p4 pointer", !30, i64 0}
!33 = !{!"p1 _ZTS10macroblock", !11, i64 0}
!34 = !{!"double", !6, i64 0}
!35 = !{!"p6 short", !36, i64 0}
!36 = !{!"any p6 pointer", !37, i64 0}
!37 = !{!"any p5 pointer", !32, i64 0}
!38 = !{!"p1 _ZTS18DecRefPicMarking_s", !11, i64 0}
!39 = !{!"p2 double", !28, i64 0}
!40 = !{!"p3 double", !30, i64 0}
!41 = !{!"short", !6, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"long long", !6, i64 0}
!44 = !{!9, !5, i64 4}
!45 = !{!46, !41, i64 0}
!46 = !{!"", !41, i64 0, !6, i64 2, !47, i64 8}
!47 = !{!"long", !6, i64 0}
!48 = !{!46, !47, i64 8}
!49 = !{!46, !6, i64 2}
!50 = !{!41, !41, i64 0}
!51 = distinct !{!51, !22}
!52 = distinct !{!52, !22}
!53 = distinct !{!53, !22}
!54 = distinct !{!54, !22}
!55 = distinct !{!55, !22}
!56 = distinct !{!56, !22}
!57 = distinct !{!57, !22}
!58 = distinct !{!58, !22}
!59 = !{!25, !11, i64 14216}
!60 = !{!61, !5, i64 4}
!61 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !62, i64 24, !11, i64 32, !11, i64 40, !5, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !5, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !11, i64 112, !6, i64 120}
!62 = !{!"p1 _ZTS13datapartition", !11, i64 0}
end_hunk_0

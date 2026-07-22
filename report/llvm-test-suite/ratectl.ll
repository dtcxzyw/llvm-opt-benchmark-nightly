inline.NumInlined: 5
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
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
@generic_RC_init = common dso_local local_unnamed_addr global ptr null, align 8
@generic_RC_best = common dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: nounwind uwtable
define dso_local void @update_rc(ptr noundef %0, i16 noundef signext %1) local_unnamed_addr #0 {
bb.a:
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %.preheader.i ] ; 2 uses
  %.013.i = phi i32 [ 0, %bb.a ], [ %op.rdx, %.preheader.i ]
  %i.a = getelementptr inbounds nuw [64 x i8], ptr @diffy, i64 %indvars.iv.i
  %i.b = load <16 x i32>, ptr %i.a, align 16, !tbaa !4
  %i.c = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.b, i1 true)
  %i.d = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.c)
  %op.rdx = add i32 %i.d, %.013.i                 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 16
  br i1 %exitcond.not.i, label %calc_MAD.exit, label %.preheader.i, !llvm.loop !8

calc_MAD.exit:                                    ; preds = %.preheader.i
  %i.e = load ptr, ptr @generic_RC, align 8, !tbaa !10 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12   ; 2 uses
  %i.h = load ptr, ptr @img, align 8, !tbaa !10   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !16
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.k
  store i32 %op.rdx, ptr %i.l, align 4, !tbaa !4
  %i.m = load ptr, ptr @input, align 8, !tbaa !10 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 5128
  %i.o = load i32, ptr %i.n, align 8, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 15352
  %i.q = load i32, ptr %i.p, align 8, !tbaa !37
  %i.r = icmp ult i32 %i.o, %i.q
  br i1 %i.r, label %bb.b, label %bb.f

bb.b:                                             ; preds = %calc_MAD.exit
  %i.s = load i32, ptr %i.i, align 4, !tbaa !16
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !38
  %i.z = add nsw i64 %i.y, %i.w
  store i64 %i.z, ptr %i.x, align 8, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !39
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = icmp eq i16 %1, 10
  %or.cond = or i1 %i.ad, %i.ac
  %i.ae = icmp ne i16 %1, 14
  %or.cond5 = and i1 %i.ae, %or.cond
  br i1 %or.cond5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.af, align 4, !tbaa !41
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !42 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !43
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !44
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ak = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]      ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !45
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 4708
  %i.an = load i32, ptr %i.am, align 4, !tbaa !46
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !41 ; 2 uses
  %i.aq = load ptr, ptr @rdopt, align 8, !tbaa !10 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1740
  store i32 %i.ap, ptr %i.ar, align 4, !tbaa !47
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !43
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 1728
  store i32 %i.at, ptr %i.au, align 8, !tbaa !49
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 1744
  store i32 %i.ak, ptr %i.av, align 8, !tbaa !50
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !51
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [8 x i8], ptr @delta_qp_mbaff, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 15412 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !52
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.bc
  store i32 %i.ap, ptr %i.bd, align 4, !tbaa !4
  %i.be = load i32, ptr %i.as, align 8, !tbaa !43
  %i.bf = load i32, ptr %i.aw, align 8, !tbaa !51
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr @qp_mbaff, i64 %i.bg
  %i.bi = load i32, ptr %i.ba, align 4, !tbaa !52
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bj
  store i32 %i.be, ptr %i.bk, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %calc_MAD.exit
  tail call void @set_chroma_qp(ptr noundef %0) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, -2147483648) i32 @calc_MAD() local_unnamed_addr #1 {
bb.a:
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.preheader ] ; 2 uses
  %.013 = phi i32 [ 0, %bb.a ], [ %op.rdx, %.preheader ]
  %i.a = getelementptr inbounds nuw [64 x i8], ptr @diffy, i64 %indvars.iv
  %i.b = load <16 x i32>, ptr %i.a, align 16, !tbaa !4
  %i.c = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.b, i1 true)
  %i.d = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.c)
  %op.rdx = add i32 %i.d, %.013                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.b, label %.preheader, !llvm.loop !8

bb.b:                                             ; preds = %.preheader
  ret i32 %op.rdx
}

declare void @set_chroma_qp(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local double @QP2Qstep(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = srem i32 %0, 6
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [8 x i8], ptr @QP2Qstep.QP2QSTEP, i64 %i.b
  %i.d = load double, ptr %i.c, align 8, !tbaa !53 ; 3 uses
  %1 = udiv i32 %0, 6                             ; 3 uses
  %i.e = icmp sgt i32 %0, 5
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = add nsw i32 %1, -1
  %xtraiter = and i32 %1, 7                       ; 3 uses
  %i.g = icmp ult i32 %i.f, 7
  br i1 %i.g, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %1, 536870904
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.07 = phi double [ %i.d, %.lr.ph.preheader.new ], [ %i.o, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.h = fmul double %.07, 2.000000e+00
  %i.i = fmul double %i.h, 2.000000e+00
  %i.j = fmul double %i.i, 2.000000e+00
  %i.k = fmul double %i.j, 2.000000e+00
  %i.l = fmul double %i.k, 2.000000e+00
  %i.m = fmul double %i.l, 2.000000e+00
  %i.n = fmul double %i.m, 2.000000e+00
  %i.o = fmul double %i.n, 2.000000e+00           ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !54

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.07.epil.init = phi double [ %i.d, %.lr.ph.preheader ], [ %i.o, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod9 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod9)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.07.epil = phi double [ %i.p, %.lr.ph.epil ], [ %.07.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.p = fmul double %.07.epil, 2.000000e+00      ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !55

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.0.lcssa = phi double [ %i.d, %bb.a ], [ %i.o, %._crit_edge.loopexit.unr-lcssa ], [ %i.p, %.lr.ph.epil ]
  ret double %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local range(i32 0, -2147483648) i32 @Qstep2QP(double noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = fcmp olt double %0, 6.250000e-01
  br i1 %i.a, label %bb.g, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = fcmp ogt double %0, 2.240000e+02
  br i1 %i.b, label %bb.g, label %.preheader

.preheader:                                       ; preds = %.lr.ph.i.preheader
  %i.c = fcmp ogt double %0, 1.125000e+00
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.01217 = phi i32 [ %i.e, %.lr.ph ], [ 0, %.preheader ]
  %.01316 = phi double [ %i.d, %.lr.ph ], [ %0, %.preheader ]
  %i.d = fmul nnan double %.01316, 5.000000e-01   ; 3 uses
  %i.e = add nuw nsw i32 %.01217, 1               ; 2 uses
  %i.f = fcmp ogt double %i.d, 1.125000e+00
  br i1 %i.f, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !57

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.g = mul nuw nsw i32 %i.e, 6
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.013.lcssa = phi double [ %0, %.preheader ], [ %i.d, %._crit_edge.loopexit ] ; 5 uses
  %.012.lcssa = phi i32 [ 0, %.preheader ], [ %i.g, %._crit_edge.loopexit ]
  %i.h = fcmp ugt double %.013.lcssa, 6.562500e-01
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %._crit_edge
  %i.i = fcmp ugt double %.013.lcssa, 7.500000e-01
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = fcmp ugt double %.013.lcssa, 8.437500e-01
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = fcmp ugt double %.013.lcssa, 9.375000e-01
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = fcmp ugt double %.013.lcssa, 1.062500e+00
  %. = select i1 %i.l, i32 5, i32 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %._crit_edge
  %.0 = phi i32 [ 3, %bb.d ], [ 0, %._crit_edge ], [ 1, %bb.b ], [ 2, %bb.c ], [ %., %bb.e ]
  %i.m = add nuw nsw i32 %.0, %.012.lcssa
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.preheader, %bb.a, %bb.f
  %.014 = phi i32 [ %i.m, %bb.f ], [ 0, %bb.a ], [ 51, %.lr.ph.i.preheader ]
  ret i32 %.014
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @ComputeFrameMAD() local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 15352
  %i.c = load i32, ptr %i.b, align 8, !tbaa !37   ; 4 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr @generic_RC, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12   ; 2 uses
  %wide.trip.count = zext i32 %i.c to i64         ; 3 uses
  %min.iters.check = icmp ult i32 %i.c, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi11 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %wide.load = load <2 x i32>, ptr %i.g, align 4, !tbaa !4
  %wide.load12 = load <2 x i32>, ptr %i.h, align 4, !tbaa !4
  %i.i = sext <2 x i32> %wide.load to <2 x i64>
  %i.j = sext <2 x i32> %wide.load12 to <2 x i64>
  %i.k = add <2 x i64> %vec.phi, %i.i             ; 2 uses
  %i.l = add <2 x i64> %vec.phi11, %i.j           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.l, %i.k
  %i.n = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.057.ph = phi i64 [ 0, %.lr.ph ], [ %i.n, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.057 = phi i64 [ %i.r, %scalar.ph ], [ %.057.ph, %scalar.ph.preheader ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4
  %i.q = sext i32 %i.p to i64
  %i.r = add nsw i64 %.057, %i.q                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %scalar.ph, !llvm.loop !61

._crit_edge.loopexit:                             ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.n, %middle.block ], [ %i.r, %scalar.ph ]
  %i.s = sitofp i64 %.lcssa to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.05.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.s, %._crit_edge.loopexit ]
  %i.t = uitofp i32 %i.c to double
  %i.u = fmul nnan double %i.t, 2.560000e+02
  %i.v = fdiv double %.05.lcssa, %i.u
  ret double %i.v
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @copy_rc_generic(ptr nofree noundef captures(none) initializes((0, 64), (72, 144)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(144) %0, ptr noundef nonnull align 1 dereferenceable(144) %1, i64 144, i1 false)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.e = load ptr, ptr @img, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 15352
  %i.g = load i32, ptr %i.f, align 8, !tbaa !37
  %i.h = zext i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.b, ptr align 1 %i.d, i64 %i.i, i1 false)
  ret void
}

end_hunk_0

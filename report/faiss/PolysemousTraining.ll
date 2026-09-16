Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/PolysemousTraining?download=true
inline.NumInlined: 769
inline.NumDeleted: 383
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN5faiss27ReproduceDistancesObjective21set_affine_target_disEPKd:bb.a
  %i.s = fadd double %i.n, %i.r
  %i.t = tail call double @llvm.fmuladd.f64(double %i.r, double %i.r, double %i.o)
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02325.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load double, ptr %i.v, align 8, !tbaa !20 ; 3 uses
  %i.x = fadd double %i.s, %i.w                   ; 3 uses
  %i.y = tail call double @llvm.fmuladd.f64(double %i.w, double %i.w, double %i.t) ; 3 uses
  %i.z = add nuw i64 %.02325.i, 4                 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5faiss27ReproduceDistancesObjective18compute_mean_stdevEPKdmPdS3_.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !4

_ZN5faiss27ReproduceDistancesObjective18compute_mean_stdevEPKdmPdS3_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5faiss27ReproduceDistancesObjective18compute_mean_stdevEPKdmPdS3_.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5faiss27ReproduceDistancesObjective18compute_mean_stdevEPKdmPdS3_.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.027.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.x, %_ZN5faiss27ReproduceDistancesObjective18compute_mean_stdevEPKdmPdS3_.exit.loopexit.unr-lcssa ]
  %.02226.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.y, %_ZN5faiss27ReproduceDistancesObjective18compute_mean_stdevEPKdmPdS3_.exit.loopexit.unr-lcssa ]
  %.02325.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.z, %_ZN5faiss27ReproduceDistancesObjective18compute_mean_stdevEPKdmPdS3_.exit.loopexit.unr-lcssa ]
  %lcmp.mod57 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod57)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.027.i.epil = phi double [ %i.ac, %.lr.ph.i.epil ], [ %.027.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.02226.i.epil = phi double [ %i.ad, %.lr.ph.i.epil ], [ %.02226.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.02325.i.epil = phi i64 [ %i.ae, %.lr.ph.i.epil ], [ %.02325.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02325.i.epil
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !20 ; 3 uses
  %i.ac = fadd double %.027.i.epil, %i.ab         ; 2 uses
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.ab, double %.02226.i.epil) ; 2 uses
  %i.ae = add nuw i64 %.02325.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5faiss27ReproduceDistancesObjective18compute_mean_stdevEPKdmPdS3_.exit, label %.lr.ph.i.epil, !llvm.loop !117

_ZN5faiss27ReproduceDistancesObjective18compute_mean_stdevEPKdmPdS3_.exit: ; preds = %_ZN5faiss27ReproduceDistancesObjective18compute_mean_stdevEPKdmPdS3_.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %.022.lcssa.i = phi double [ 0.000000e+00, %bb.a ], [ %i.y, %_ZN5faiss27ReproduceDistancesObjective18compute_mean_stdevEPKdmPdS3_.exit.loopexit.unr-lcssa ], [ %i.ad, %.lr.ph.i.epil ]
  %.0.lcssa.i = phi double [ 0.000000e+00, %bb.a ], [ %i.x, %_ZN5faiss27ReproduceDistancesObjective18compute_mean_stdevEPKdmPdS3_.exit.loopexit.unr-lcssa ], [ %i.ac, %.lr.ph.i.epil ]
  %i.af = uitofp nneg i32 %i.c to double
  %i.ag = insertelement <2 x double> poison, double %.0.lcssa.i, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %.022.lcssa.i, i64 1
  %i.ai = insertelement <2 x double> poison, double %i.af, i64 0
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ak = fdiv <2 x double> %i.ah, %i.aj          ; 2 uses
  %i.al = extractelement <2 x double> %i.ak, i64 0 ; 4 uses
  %i.am = fneg double %i.al
  %i.an = extractelement <2 x double> %i.ak, i64 1
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.am, double %i.al, double %i.an)
  %i.ap = tail call double @sqrt(double noundef %i.ao) #22 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !60 ; 5 uses
  br i1 %.not.i, label %_ZN5faiss27ReproduceDistancesObjective18compute_mean_stdevEPKdmPdS3_.exit21, label %.lr.ph.i14.preheader

.lr.ph.i14.preheader:                             ; preds = %_ZN5faiss27ReproduceDistancesObjective18compute_mean_stdevEPKdmPdS3_.exit
  %xtraiter58 = and i64 %i.d, 3                   ; 3 uses
  %i.as = add i32 %i.c, -1
  %i.at = icmp ult i32 %i.as, 3
  br i1 %i.at, label %.lr.ph.i14.epil.preheader, label %.lr.ph.i14.preheader.new

.lr.ph.i14.preheader.new:                         ; preds = %.lr.ph.i14.preheader
  %unroll_iter64 = and i64 %i.d, 4294967292
  br label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %.lr.ph.i14, %.lr.ph.i14.preheader.new
  %.027.i15 = phi double [ 0.000000e+00, %.lr.ph.i14.preheader.new ], [ %i.bl, %.lr.ph.i14 ]
  %.02226.i16 = phi double [ 0.000000e+00, %.lr.ph.i14.preheader.new ], [ %i.bm, %.lr.ph.i14 ]
  %.02325.i17 = phi i64 [ 0, %.lr.ph.i14.preheader.new ], [ %i.bn, %.lr.ph.i14 ] ; 5 uses
  %niter65 = phi i64 [ 0, %.lr.ph.i14.preheader.new ], [ %niter65.next.3, %.lr.ph.i14 ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.02325.i17
  %i.av = load double, ptr %i.au, align 8, !tbaa !20 ; 3 uses
  %i.aw = fadd double %.027.i15, %i.av
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.av, double %i.av, double %.02226.i16)
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.02325.i17
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load double, ptr %i.az, align 8, !tbaa !20 ; 3 uses
  %i.bb = fadd double %i.aw, %i.ba
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.ba, double %i.ax)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.02325.i17
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load double, ptr %i.be, align 8, !tbaa !20 ; 3 uses
  %i.bg = fadd double %i.bb, %i.bf
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.bf, double %i.bc)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.02325.i17
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !20 ; 3 uses
  %i.bl = fadd double %i.bg, %i.bk                ; 3 uses
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bk, double %i.bk, double %i.bh) ; 3 uses
  %i.bn = add nuw i64 %.02325.i17, 4              ; 2 uses
  %niter65.next.3 = add i64 %niter65, 4           ; 2 uses
  %niter65.ncmp.3 = icmp eq i64 %niter65.next.3, %unroll_iter64
  br i1 %niter65.ncmp.3, label %_ZN5faiss27ReproduceDistancesObjective18compute_mean_stdevEPKdmPdS3_.exit21.loopexit.unr-lcssa, label %.lr.ph.i14, !llvm.loop !4

_ZN5faiss27ReproduceDistancesObjective18compute_mean_stdevEPKdmPdS3_.exit21.loopexit.unr-lcssa: ; preds = %.lr.ph.i14
  %lcmp.mod60.not = icmp eq i64 %xtraiter58, 0
  br i1 %lcmp.mod60.not, label %_ZN5faiss27ReproduceDistancesObjective18compute_mean_stdevEPKdmPdS3_.exit21, label %.lr.ph.i14.epil.preheader

.lr.ph.i14.epil.preheader:                        ; preds = %_ZN5faiss27ReproduceDistancesObjective18compute_mean_stdevEPKdmPdS3_.exit21.loopexit.unr-lcssa, %.lr.ph.i14.preheader
  %.027.i15.epil.init = phi double [ 0.000000e+00, %.lr.ph.i14.preheader ], [ %i.bl, %_ZN5faiss27ReproduceDistancesObjective18compute_mean_stdevEPKdmPdS3_.exit21.loopexit.unr-lcssa ]
  %.02226.i16.epil.init = phi double [ 0.000000e+00, %.lr.ph.i14.preheader ], [ %i.bm, %_ZN5faiss27ReproduceDistancesObjective18compute_mean_stdevEPKdmPdS3_.exit21.loopexit.unr-lcssa ]
  %.02325.i17.epil.init = phi i64 [ 0, %.lr.ph.i14.preheader ], [ %i.bn, %_ZN5faiss27ReproduceDistancesObjective18compute_mean_stdevEPKdmPdS3_.exit21.loopexit.unr-lcssa ]
  %lcmp.mod63 = icmp ne i64 %xtraiter58, 0
  tail call void @llvm.assume(i1 %lcmp.mod63)
  br label %.lr.ph.i14.epil

.lr.ph.i14.epil:                                  ; preds = %.lr.ph.i14.epil, %.lr.ph.i14.epil.preheader
  %.027.i15.epil = phi double [ %i.bq, %.lr.ph.i14.epil ], [ %.027.i15.epil.init, %.lr.ph.i14.epil.preheader ]
  %.02226.i16.epil = phi double [ %i.br, %.lr.ph.i14.epil ], [ %.02226.i16.epil.init, %.lr.ph.i14.epil.preheader ]
  %.02325.i17.epil = phi i64 [ %i.bs, %.lr.ph.i14.epil ], [ %.02325.i17.epil.init, %.lr.ph.i14.epil.preheader ] ; 2 uses
  %epil.iter59 = phi i64 [ %epil.iter59.next, %.lr.ph.i14.epil ], [ 0, %.lr.ph.i14.epil.preheader ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.02325.i17.epil
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !20 ; 3 uses
  %i.bq = fadd double %.027.i15.epil, %i.bp       ; 2 uses
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.bp, double %.02226.i16.epil) ; 2 uses
  %i.bs = add nuw i64 %.02325.i17.epil, 1
  %epil.iter59.next = add i64 %epil.iter59, 1     ; 2 uses
  %epil.iter59.cmp.not = icmp eq i64 %epil.iter59.next, %xtraiter58
  br i1 %epil.iter59.cmp.not, label %_ZN5faiss27ReproduceDistancesObjective18compute_mean_stdevEPKdmPdS3_.exit21, label %.lr.ph.i14.epil, !llvm.loop !118

_ZN5faiss27ReproduceDistancesObjective18compute_mean_stdevEPKdmPdS3_.exit21: ; preds = %_ZN5faiss27ReproduceDistancesObjective18compute_mean_stdevEPKdmPdS3_.exit21.loopexit.unr-lcssa, %.lr.ph.i14.epil, %_ZN5faiss27ReproduceDistancesObjective18compute_mean_stdevEPKdmPdS3_.exit
  %.022.lcssa.i19 = phi double [ 0.000000e+00, %_ZN5faiss27ReproduceDistancesObjective18compute_mean_stdevEPKdmPdS3_.exit ], [ %i.bm, %_ZN5faiss27ReproduceDistancesObjective18compute_mean_stdevEPKdmPdS3_.exit21.loopexit.unr-lcssa ], [ %i.br, %.lr.ph.i14.epil ]
  %.0.lcssa.i20 = phi double [ 0.000000e+00, %_ZN5faiss27ReproduceDistancesObjective18compute_mean_stdevEPKdmPdS3_.exit ], [ %i.bl, %_ZN5faiss27ReproduceDistancesObjective18compute_mean_stdevEPKdmPdS3_.exit21.loopexit.unr-lcssa ], [ %i.bq, %.lr.ph.i14.epil ]
  %i.bt = insertelement <2 x double> poison, double %.0.lcssa.i20, i64 0
  %i.bu = insertelement <2 x double> %i.bt, double %.022.lcssa.i19, i64 1
  %i.bv = fdiv <2 x double> %i.bu, %i.aj          ; 2 uses
  %i.bw = extractelement <2 x double> %i.bv, i64 0 ; 4 uses
  %i.bx = fneg double %i.bw
  %i.by = extractelement <2 x double> %i.bv, i64 1
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.bw, double %i.by)
  %i.ca = tail call double @sqrt(double noundef %i.bz) #22 ; 2 uses
  %i.cb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, double noundef %i.al, double noundef %i.ap, double noundef %i.bw, double noundef %i.ca) ; 0 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !62 ; 2 uses
  %i.cf = load ptr, ptr %i.cc, align 8, !tbaa !25 ; 2 uses
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = ashr exact i64 %i.ci, 3                 ; 3 uses
  %i.ck = icmp ult i64 %i.cj, %i.d
  br i1 %i.ck, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5faiss27ReproduceDistancesObjective18compute_mean_stdevEPKdmPdS3_.exit21
  %i.cl = sub nuw nsw i64 %i.d, %i.cj
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 noundef %i.cl)
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.c:                                             ; preds = %_ZN5faiss27ReproduceDistancesObjective18compute_mean_stdevEPKdmPdS3_.exit21
  %i.cm = icmp ugt i64 %i.cj, %i.d
  br i1 %i.cm, label %bb.d, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.d ; 2 uses
  %.not.i.i = icmp eq ptr %i.ce, %i.cn
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.cn, ptr %i.cd, align 8, !tbaa !62
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !62 ; 2 uses
  %i.cr = load ptr, ptr %i.co, align 8, !tbaa !25 ; 2 uses
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = ashr exact i64 %i.cu, 3                 ; 3 uses
  %i.cw = icmp ult i64 %i.cv, %i.d
  br i1 %i.cw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.cx = sub nuw nsw i64 %i.d, %i.cv
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 noundef %i.cx)
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit24

bb.f:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.cy = icmp ugt i64 %i.cv, %i.d
  br i1 %i.cy, label %bb.g, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit24

bb.g:                                             ; preds = %bb.f
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.d ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.cq, %i.cz
  br i1 %.not.i.i22, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit24, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i23

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i23:      ; preds = %bb.g
  store ptr %i.cz, ptr %i.cp, align 8, !tbaa !62
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit24

_ZNSt6vectorIdSaIdEE6resizeEm.exit24:             ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i23
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit24
  %i.da = load ptr, ptr %i.cc, align 8, !tbaa !25
  %i.db = load ptr, ptr %i.aq, align 8, !tbaa !60
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dd = load ptr, ptr %i.co, align 8, !tbaa !25
  %umax = tail call i32 @llvm.smax.i32(i32 %i.c, i32 1)
  %wide.trip.count = zext nneg i32 %umax to i64
  br label %bb.h

._crit_edge:                                      ; preds = %bb.h, %_ZNSt6vectorIdSaIdEE6resizeEm.exit24
  ret void

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 5 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.df = load double, ptr %i.de, align 8, !tbaa !20
  %i.dg = fsub double %i.df, %i.al
  %i.dh = fdiv double %i.dg, %i.ap
  %i.di = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.ca, double %i.bw)
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv
  store double %i.di, ptr %i.dj, align 8, !tbaa !20
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !20
  %i.dm = load double, ptr %i.dc, align 8, !tbaa !59
  %i.dn = fneg double %i.dm
  %i.do = fmul double %i.dl, %i.dn
  %i.dp = tail call noundef double @exp(double noundef %i.do) #22
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv
  store double %i.dp, ptr %i.dq, align 8, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !119
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZN5faiss27ReproduceDistancesObjective18compute_mean_stdevEPKdmPdS3_(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #19 align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.a = icmp ult i64 %1, 4
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %1, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.027.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ai, %._crit_edge.loopexit.unr-lcssa ]
  %.02226.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.aj, %._crit_edge.loopexit.unr-lcssa ]
  %.02325.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ak, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod35 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod35)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.027.epil = phi double [ %i.d, %.lr.ph.epil ], [ %.027.epil.init, %.lr.ph.epil.preheader ]
  %.02226.epil = phi double [ %i.e, %.lr.ph.epil ], [ %.02226.epil.init, %.lr.ph.epil.preheader ]
  %.02325.epil = phi i64 [ %i.f, %.lr.ph.epil ], [ %.02325.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.02325.epil
  %i.c = load double, ptr %i.b, align 8, !tbaa !20 ; 3 uses
  %i.d = fadd double %.027.epil, %i.c             ; 2 uses
  %i.e = tail call double @llvm.fmuladd.f64(double %i.c, double %i.c, double %.02226.epil) ; 2 uses
  %i.f = add nuw i64 %.02325.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !120

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.022.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.aj, %._crit_edge.loopexit.unr-lcssa ], [ %i.e, %.lr.ph.epil ]
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.ai, %._crit_edge.loopexit.unr-lcssa ], [ %i.d, %.lr.ph.epil ]
  %i.g = uitofp i64 %1 to double
  %i.h = insertelement <2 x double> poison, double %.0.lcssa, i64 0
  %i.i = insertelement <2 x double> %i.h, double %.022.lcssa, i64 1
  %i.j = insertelement <2 x double> poison, double %i.g, i64 0
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = fdiv <2 x double> %i.i, %i.k             ; 2 uses
  %i.m = extractelement <2 x double> %i.l, i64 0  ; 3 uses
  %i.n = fneg double %i.m
  %i.o = extractelement <2 x double> %i.l, i64 1
  %i.p = tail call double @llvm.fmuladd.f64(double %i.n, double %i.m, double %i.o)
  %i.q = tail call double @sqrt(double noundef %i.p) #22
  store double %i.m, ptr %2, align 8, !tbaa !20
  store double %i.q, ptr %3, align 8, !tbaa !20
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.027 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.ai, %.lr.ph ]
  %.02226 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.aj, %.lr.ph ]
  %.02325 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ak, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.02325
  %i.s = load double, ptr %i.r, align 8, !tbaa !20 ; 3 uses
  %i.t = fadd double %.027, %i.s
  %i.u = tail call double @llvm.fmuladd.f64(double %i.s, double %i.s, double %.02226)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.02325
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load double, ptr %i.w, align 8, !tbaa !20 ; 3 uses
  %i.y = fadd double %i.t, %i.x
  %i.z = tail call double @llvm.fmuladd.f64(double %i.x, double %i.x, double %i.u)
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.02325
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !20 ; 3 uses
  %i.ad = fadd double %i.y, %i.ac
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ac, double %i.z)
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.02325
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !20 ; 3 uses
  %i.ai = fadd double %i.ad, %i.ah                ; 3 uses
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.ah, double %i.ae) ; 3 uses
  %i.ak = add nuw i64 %.02325, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !25     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !20
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !62
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #29
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #30 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !20
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !20
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_112IndirectSortEEEEvT_S8_T0_T1_:bb.a
bb.q:                                             ; preds = %bb.o
  store i32 %.val34.i.i, ptr %0, align 4, !tbaa !18
  store i32 %i.et, ptr %i.e, align 4, !tbaa !18
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_112IndirectSortEEEEvT_S8_S8_S8_T0_.exit.i.preheader

bb.r:                                             ; preds = %.lr.ph51
  %i.eu = fcmp olt float %i.ei, %i.ep
  br i1 %i.eu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ev = load i32, ptr %0, align 4, !tbaa !18
  store i32 %.val34.i.i, ptr %0, align 4, !tbaa !18
  store i32 %i.ev, ptr %i.e, align 4, !tbaa !18
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_112IndirectSortEEEEvT_S8_S8_S8_T0_.exit.i.preheader

bb.t:                                             ; preds = %bb.r
  %i.ew = fcmp olt float %i.el, %i.ep
  %i.ex = load i32, ptr %0, align 4, !tbaa !18    ; 2 uses
  br i1 %i.ew, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 %.val32.i.i, ptr %0, align 4, !tbaa !18
  store i32 %i.ex, ptr %i.ef, align 4, !tbaa !18
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_112IndirectSortEEEEvT_S8_S8_S8_T0_.exit.i.preheader

bb.v:                                             ; preds = %bb.t
  store i32 %.val35.i.i, ptr %0, align 4, !tbaa !18
  store i32 %i.ex, ptr %i.ee, align 4, !tbaa !18
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_112IndirectSortEEEEvT_S8_S8_S8_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_112IndirectSortEEEEvT_S8_S8_S8_T0_.exit.i.preheader: ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %bb.p, %bb.n
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_112IndirectSortEEEEvT_S8_S8_S8_T0_.exit.i

_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_112IndirectSortEEEEvT_S8_S8_S8_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_112IndirectSortEEEEvT_S8_S8_S8_T0_.exit.i.preheader, %bb.y
  %.013.i.i = phi ptr [ %.114.i.i, %bb.y ], [ %.02449, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_112IndirectSortEEEEvT_S8_S8_S8_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.ff, %bb.y ], [ %i.e, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_112IndirectSortEEEEvT_S8_S8_S8_T0_.exit.i.preheader ]
  %.val17.i.i = load i32, ptr %0, align 4, !tbaa !18
  %i.ey = sext i32 %.val17.i.i to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ey
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !86 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_112IndirectSortEEEEvT_S8_S8_S8_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_112IndirectSortEEEEvT_S8_S8_S8_T0_.exit.i ], [ %i.ff, %bb.w ] ; 8 uses
  %.1.val.i.i = load i32, ptr %.1.i.i, align 4, !tbaa !18 ; 2 uses
  %i.fb = sext i32 %.1.val.i.i to i64
  %i.fc = getelementptr inbounds [4 x i8], ptr %3, i64 %i.fb
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !86
  %i.fe = fcmp olt float %i.fd, %i.fa
  %i.ff = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4 ; 2 uses
  br i1 %i.fe, label %bb.w, label %.preheader.i.i, !llvm.loop !194

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.w ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -4 ; 5 uses
  %.114.val.i.i = load i32, ptr %.114.i.i, align 4, !tbaa !18 ; 2 uses
  %i.fg = sext i32 %.114.val.i.i to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %3, i64 %i.fg
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !86
  %i.fj = fcmp olt float %i.fa, %i.fi
  br i1 %i.fj, label %.preheader.i.i, label %bb.x, !llvm.loop !195

bb.x:                                             ; preds = %.preheader.i.i
  %i.fk = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.fk, label %bb.y, label %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_112IndirectSortEEEET_S8_S8_T0_.exit

bb.y:                                             ; preds = %bb.x
  store i32 %.114.val.i.i, ptr %.1.i.i, align 4, !tbaa !18
  store i32 %.1.val.i.i, ptr %.114.i.i, align 4, !tbaa !18
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_112IndirectSortEEEEvT_S8_S8_S8_T0_.exit.i, !llvm.loop !196

_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_112IndirectSortEEEET_S8_S8_T0_.exit: ; preds = %bb.x
  tail call fastcc void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_112IndirectSortEEEEvT_S8_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02449, i64 noundef %i.ec, ptr nonnull %3)
  %i.fl = ptrtoint ptr %.1.i.i to i64
  %i.fm = sub i64 %i.fl, %i.a                     ; 3 uses
  %i.fn = icmp sgt i64 %i.fm, 64
  br i1 %i.fn, label %bb.b, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_112IndirectSortEEEEvT_S8_S8_T0_.exit, !llvm.loop !189

_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_112IndirectSortEEEEvT_S8_S8_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_112IndirectSortEEEET_S8_S8_T0_.exit, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_112IndirectSortEEEEvT_S8_S8_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #24

; Function Attrs: mustprogress uwtable
define void @_ZNK5faiss18PolysemousTraining23optimize_pq_for_hammingERNS_16ProductQuantizerEmPKf(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(224) %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !65
  switch i32 %i.b, label %bb.c [
    i32 0, label %bb.d
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK5faiss18PolysemousTraining28optimize_reproduce_distancesERNS_16ProductQuantizerE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(224) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNK5faiss18PolysemousTraining16optimize_rankingERNS_16ProductQuantizerEmPKf(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(224) %1, i64 noundef %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN5faiss16ProductQuantizer17compute_sdc_tableEv(ptr noundef nonnull align 8 dereferenceable(224) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !39
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.30) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #29
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !45

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !44
  store i64 %i.c, ptr %i.a, align 8, !tbaa !43
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !43
  store i8 %i.j, ptr %i.i, align 1, !tbaa !43
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !43
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #25

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #28

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64>) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nounwind }
attributes #23 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nofree nounwind }
attributes #29 = { noreturn }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { builtin nounwind }
attributes #32 = { noreturn nounwind }
attributes #33 = { cold nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !21}
!1 = distinct !{!1, !21}
!2 = distinct !{!2, !21}
!3 = distinct !{!3, !21}
!4 = distinct !{!4, !21}
!5 = !{i32 7, !"openmp", i32 51}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"vtable pointer", !9, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"_ZTSN5faiss20PermutationObjectiveE", !11, i64 8}
!17 = !{!16, !11, i64 8}
!18 = !{!11, !11, i64 0}
!19 = !{!"double", !10, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"any pointer", !10, i64 0}
!23 = !{!"p1 double", !22, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!25 = !{!24, !23, i64 0}
!26 = !{!24, !23, i64 16}
!27 = !{!"bool", !10, i64 0}
!28 = !{!"_ZTSN5faiss28SimulatedAnnealingParametersE", !19, i64 0, !19, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !27, i64 32, !27, i64 33}
!29 = !{!"p1 _ZTSN5faiss20PermutationObjectiveE", !22, i64 0}
!30 = !{!"p1 _ZTS8_IO_FILE", !22, i64 0}
!31 = !{!"p1 _ZTSN5faiss15RandomGeneratorE", !22, i64 0}
!32 = !{!"_ZTSN5faiss27SimulatedAnnealingOptimizerE", !28, i64 8, !29, i64 48, !11, i64 56, !30, i64 64, !31, i64 72, !19, i64 80}
!33 = !{!32, !29, i64 48}
!34 = !{!32, !11, i64 56}
!35 = !{!32, !30, i64 64}
!36 = !{!32, !31, i64 72}
!37 = !{!"p1 omnipotent char", !22, i64 0}
!38 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !37, i64 0}
!39 = !{!38, !37, i64 0}
!40 = !{!"long", !10, i64 0}
!41 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !38, i64 0, !40, i64 8, !10, i64 16}
!42 = !{!41, !40, i64 8}
!43 = !{!10, !10, i64 0}
!44 = !{!41, !37, i64 0}
!45 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!46 = !{!"llvm.loop.isvectorized", i32 1}
!47 = !{!"llvm.loop.unroll.runtime.disable"}
!48 = !{!28, !27, i64 33}
!49 = !{i8 0, i8 2}
!50 = !{}
!51 = !{!28, !11, i64 28}
!52 = !{!32, !19, i64 80}
!53 = !{!28, !27, i64 32}
!54 = !{!30, !30, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !24, i64 0}
!56 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !55, i64 0}
!57 = !{!"_ZTSSt6vectorIdSaIdEE", !56, i64 0}
!58 = !{!"_ZTSN5faiss27ReproduceDistancesObjectiveE", !16, i64 0, !19, i64 16, !57, i64 24, !23, i64 48, !57, i64 56}
!59 = !{!58, !19, i64 16}
!60 = !{!58, !23, i64 48}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = !{!24, !23, i64 8}
!63 = !{!"_ZTSN5faiss18PolysemousTraining19Optimization_type_tE", !10, i64 0}
!64 = !{!"_ZTSN5faiss18PolysemousTrainingE", !28, i64 0, !63, i64 36, !11, i64 40, !19, i64 48, !40, i64 56, !41, i64 64}
!65 = !{!64, !63, i64 36}
!66 = !{!64, !19, i64 48}
!67 = !{!64, !40, i64 56}
!68 = !{!"_ZTSN5faiss9QuantizerE", !40, i64 8, !40, i64 16}
!69 = !{!"_ZTSN5faiss16ProductQuantizer12train_type_tE", !10, i64 0}
!70 = !{!"_ZTSN5faiss20ClusteringInitMethodE", !10, i64 0}
!71 = !{!"short", !10, i64 0}
!72 = !{!"_ZTSN5faiss20ClusteringParametersE", !11, i64 0, !11, i64 4, !27, i64 8, !27, i64 9, !27, i64 10, !27, i64 11, !27, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !40, i64 32, !27, i64 40, !27, i64 41, !70, i64 42, !71, i64 44, !19, i64 48}
!73 = !{!"p1 _ZTSN5faiss5IndexE", !22, i64 0}
!74 = !{!"p1 float", !22, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!76 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !75, i64 0}
!77 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !76, i64 0}
!78 = !{!"_ZTSSt6vectorIfSaIfEE", !77, i64 0}
!79 = !{!"_ZTSN5faiss16ProductQuantizerE", !68, i64 0, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !27, i64 56, !69, i64 60, !72, i64 64, !73, i64 120, !78, i64 128, !78, i64 152, !78, i64 176, !78, i64 200}
!80 = !{!79, !40, i64 40}
!81 = !{!79, !40, i64 48}
!82 = !{!79, !40, i64 32}
!83 = !{!79, !40, i64 24}
!84 = !{!75, !74, i64 0}
!85 = !{!"float", !10, i64 0}
!86 = !{!85, !85, i64 0}
!87 = !{ptr @_ZN5faiss12_GLOBAL__N_129ReproduceWithHammingObjectiveD2Ev}
!88 = !{i64 2, i64 -1, i64 -1, i1 true}
!89 = !{!88}
!90 = !{!40, !40, i64 0}
!91 = !{!74, !74, i64 0}
!92 = !{!68, !40, i64 16}
!93 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!94 = !{!93, !37, i64 0}
!95 = !{!75, !74, i64 16}
!96 = !{ptr @_ZN5faiss12_GLOBAL__N_114Score3ComputerIfdED2Ev}
!97 = !{ptr @_ZN5faiss27ReproduceDistancesObjectiveD2Ev}
!98 = !{!27, !27, i64 0}
!99 = !{i64 0, i64 8, !20, i64 8, i64 8, !20, i64 16, i64 4, !18, i64 20, i64 4, !18, i64 24, i64 4, !18, i64 28, i64 4, !18, i64 32, i64 1, !98, i64 33, i64 1, !98}
!100 = !{!28, !11, i64 24}
!101 = distinct !{!101, !21, !46, !47}
!102 = distinct !{!102, !21, !47, !46}
!103 = distinct !{!103, !21}
!104 = distinct !{!104, !21}
!105 = !{!28, !11, i64 20}
!106 = distinct !{!106, !21}
!107 = distinct !{!107, !21}
!108 = !{!28, !11, i64 16}
!109 = !{!28, !19, i64 0}
!110 = !{!28, !19, i64 8}
!111 = distinct !{!111, !21}
!112 = distinct !{!112, !21}
!113 = distinct !{!113, !21}
!114 = distinct !{!114, !21}
!115 = distinct !{!115, !21}
!116 = distinct !{!116, !21}
!117 = distinct !{!117, !61}
!118 = distinct !{!118, !61}
!119 = distinct !{!119, !21}
!120 = distinct !{!120, !61}
!121 = !{!64, !11, i64 40}
!122 = distinct !{!122, !21, !129}
!123 = distinct !{!123, !21}
!124 = distinct !{!124, !61}
!125 = distinct !{!125, !21}
!126 = distinct !{!126, !21}
!127 = distinct !{!127, !21}
!128 = distinct !{!128, !21}
!129 = !{!"llvm.loop.unswitch.partial.disable"}
!130 = !{!"_ZTSN5faiss12_GLOBAL__N_129ReproduceWithHammingObjectiveE", !16, i64 0, !11, i64 12, !19, i64 16, !57, i64 24, !57, i64 48}
!131 = !{!130, !11, i64 12}
!132 = !{!130, !19, i64 16}
!133 = !{!93, !37, i64 16}
!134 = !{!93, !37, i64 8}
!135 = distinct !{!135, !"LVerDomain"}
!136 = distinct !{!136, !135}
!137 = distinct !{!137, !135}
!138 = distinct !{!138, !21, !46, !47}
!139 = distinct !{!139, !61}
!140 = distinct !{!140, !21}
!141 = distinct !{!141, !21, !46}
!142 = distinct !{!142, !21, !46, !47}
!143 = distinct !{!143, !21, !47, !46}
!144 = distinct !{!144, !21, !46, !47}
!145 = distinct !{!145, !21}
!146 = distinct !{!146, !21}
!147 = distinct !{!147, !21}
!148 = distinct !{!148, !21, !47, !46}
!149 = distinct !{!149, !21}
!150 = distinct !{!150, !21}
!151 = distinct !{!151, !21}
!152 = distinct !{!152, !21, !46, !47}
!153 = distinct !{!153, !21, !47, !46}
!154 = distinct !{!154, !21}
!155 = distinct !{!155, !21}
end_hunk_1

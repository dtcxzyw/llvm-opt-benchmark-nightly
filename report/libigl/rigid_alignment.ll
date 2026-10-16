Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/rigid_alignment?download=true
inline.NumInlined: 13524
inline.NumDeleted: 6899
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 128
loop-unroll.NumUnrolled: 143
begin_hunk_0_@_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE29applyZAdjointOnTheLeftInPlaceINS1_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_:bb.a
  %vec.phi128 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ba, %vector.body ]
  %i.w = or disjoint i64 %index, 1                ; 2 uses
  %i.x = or disjoint i64 %index, 2                ; 2 uses
  %i.y = or disjoint i64 %index, 3                ; 2 uses
  %i.z = mul nsw i64 %index, %i.v
  %i.aa = mul nsw i64 %i.w, %i.v
  %i.ab = mul nsw i64 %i.x, %i.v
  %i.ac = mul nsw i64 %i.y, %i.v
  %i.ad = getelementptr [8 x i8], ptr %i.t, i64 %index
  %i.ae = getelementptr [8 x i8], ptr %i.t, i64 %i.w
  %i.af = getelementptr [8 x i8], ptr %i.t, i64 %i.x
  %i.ag = getelementptr [8 x i8], ptr %i.t, i64 %i.y
  %i.ah = getelementptr [8 x i8], ptr %i.ad, i64 %i.z
  %i.ai = getelementptr [8 x i8], ptr %i.ae, i64 %i.aa
  %i.aj = getelementptr [8 x i8], ptr %i.af, i64 %i.ab
  %i.ak = getelementptr [8 x i8], ptr %i.ag, i64 %i.ac
  %i.al = load double, ptr %i.ah, align 8, !tbaa !21
  %i.am = load double, ptr %i.ai, align 8, !tbaa !21
  %i.an = insertelement <2 x double> poison, double %i.al, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.am, i64 1
  %i.ap = load double, ptr %i.aj, align 8, !tbaa !21
  %i.aq = load double, ptr %i.ak, align 8, !tbaa !21
  %i.ar = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %i.aq, i64 1
  %i.at = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ao)
  %i.au = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.as)
  %i.av = fcmp ogt <2 x double> %i.at, %broadcast.splat
  %i.aw = fcmp ogt <2 x double> %i.au, %broadcast.splat
  %i.ax = zext <2 x i1> %i.av to <2 x i64>
  %i.ay = zext <2 x i1> %i.aw to <2 x i64>
  %i.az = add <2 x i64> %vec.phi, %i.ax           ; 2 uses
  %i.ba = add <2 x i64> %vec.phi128, %i.ay        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !1166

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ba, %i.az
  %i.bc = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  %.078.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bc, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i = phi i64 [ %i.bl, %scalar.ph ], [ %.09.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.078.i.i = phi i64 [ %i.bk, %scalar.ph ], [ %.078.i.i.ph, %scalar.ph.preheader ]
  %i.bd = mul nsw i64 %.09.i.i, %i.v
  %i.be = getelementptr [8 x i8], ptr %i.t, i64 %.09.i.i
  %i.bf = getelementptr [8 x i8], ptr %i.be, i64 %i.bd
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !21
  %i.bh = tail call noundef double @llvm.fabs.f64(double %i.bg)
  %i.bi = fcmp ogt double %i.bh, %i.p
  %i.bj = zext i1 %i.bi to i64
  %i.bk = add nuw nsw i64 %.078.i.i, %i.bj        ; 2 uses
  %i.bl = add nuw nsw i64 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bl, %i.r
  br i1 %exitcond.not.i.i, label %.loopexit, label %scalar.ph, !llvm.loop !1167

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.lcssa127 = phi i64 [ %i.bc, %middle.block ], [ %i.bk, %scalar.ph ] ; 11 uses
  %i.bm = icmp sgt i64 %i.b, 2305843009213693951
  br i1 %i.bm, label %.invoke.i, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.preheader

.loopexit.thread:                                 ; preds = %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i.i
  %i.bn = icmp sgt i64 %i.b, 2305843009213693951
  br i1 %i.bn, label %.invoke.i, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.preheader: ; preds = %.loopexit
  %.not124 = icmp eq i64 %.lcssa127, 0
  br i1 %.not124, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.preheader
  %i.bo = add i64 %.lcssa127, -1                  ; 10 uses
  %i.bp = sub i64 %i.b, %.lcssa127                ; 6 uses
  %i.bq = load ptr, ptr %1, align 8, !tbaa !19, !noalias !1188 ; 6 uses
  %i.br = getelementptr [8 x i8], ptr %i.bq, i64 %i.bo ; 18 uses
  %i.bs = load ptr, ptr %0, align 8, !tbaa !25, !noalias !1189 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !16, !noalias !1190 ; 10 uses
  %i.bv = mul nsw i64 %i.bu, %.lcssa127
  %invariant.gep = getelementptr [8 x i8], ptr %i.bs, i64 %i.bv
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !19 ; 5 uses
  %i.by = icmp eq i64 %i.b, %.lcssa127
  %i.bz = getelementptr i8, ptr %i.br, i64 8      ; 11 uses
  %i.ca = icmp sgt i64 %i.bp, 1
  %i.cb = icmp sgt i64 %i.bp, 0
  br i1 %i.by, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.cc = shl i64 %i.b, 3                         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bq, i64 %i.cc
  %i.cd = shl i64 %.lcssa127, 3                   ; 2 uses
  %scevgep129 = getelementptr i8, ptr %i.bs, i64 %i.cd
  %i.ce = getelementptr i8, ptr %i.bs, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 %i.cc
  %scevgep130 = getelementptr i8, ptr %i.cf, i64 -8
  %i.cg = xor i64 %.lcssa127, -1
  %i.ch = add i64 %i.b, %i.cg                     ; 2 uses
  %i.ci = add i64 %i.b, -2
  %i.cj = sub i64 %i.ci, %.lcssa127
  %i.ck = xor i64 %.lcssa127, -1
  %i.cl = add i64 %i.b, %i.ck
  %xtraiter = and i64 %i.ch, 3                    ; 3 uses
  %i.cm = icmp ult i64 %i.cj, 3
  %unroll_iter = and i64 %i.ch, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod155 = icmp ne i64 %xtraiter, 0
  %min.iters.check132 = icmp ugt i64 %i.bp, 3
  %ident.check.not = icmp eq i64 %i.bu, 1
  %or.cond = select i1 %min.iters.check132, i1 %ident.check.not, i1 false
  %bound0 = icmp ult ptr %i.bz, %scevgep130
  %bound1 = icmp ult ptr %scevgep129, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec134 = and i64 %i.bp, -4                   ; 3 uses
  %cmp.n146 = icmp eq i64 %i.bp, %n.vec134
  %i.cn = sub i64 %i.b, %.lcssa127
  %xtraiter156 = and i64 %i.cn, 1
  %lcmp.mod157.not = icmp eq i64 %xtraiter156, 0
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.co = ptrtoint ptr %i.br to i64
  %i.cp = and i64 %i.co, 15
  %.not164 = icmp eq i64 %i.cp, 0
  br i1 %.not164, label %.lr.ph.split.us.split.preheader, label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  %.not116 = icmp eq i64 %i.bo, 0
  br i1 %.not116, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge.loopexit100.peel.begin, label %.lr.ph.split.us.split.preheader.split

.lr.ph.split.us.split.preheader.split:            ; preds = %.lr.ph.split.us.split.preheader
  %i.cq = load ptr, ptr %1, align 8, !tbaa !19, !noalias !1191 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.bo ; 2 uses
  %i.cs = add nsw i64 %i.b, -2
  br label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us.us
  %.02899.us.us = phi i64 [ %i.di, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us.us ], [ 0, %.lr.ph.split.us ] ; 5 uses
  %.not.us.us = icmp eq i64 %.02899.us.us, %i.bo  ; 2 uses
  br i1 %.not.us.us, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.us.us, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us.split.us
  %i.ct = load ptr, ptr %1, align 8, !tbaa !19, !noalias !1191 ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.02899.us.us ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.bo ; 2 uses
  %i.cw = load double, ptr %i.cu, align 8, !tbaa !21
  %i.cx = load double, ptr %i.cv, align 8, !tbaa !21
  store double %i.cx, ptr %i.cu, align 8, !tbaa !21
  store double %i.cw, ptr %i.cv, align 8, !tbaa !21
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.us.us

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.us.us: ; preds = %bb.d, %.lr.ph.split.us.split.us
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.02899.us.us
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !21
  %i.da = fsub double 1.000000e+00, %i.cz
  br label %.lr.ph.i.i.i.i.i.i.i.i.us.us.epil

.lr.ph.i.i.i.i.i.i.i.i.us.us.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.us.epil, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.us.us
  %.05.i.i.i.i.i.i.i.i.us.us.epil = phi i64 [ %i.de, %.lr.ph.i.i.i.i.i.i.i.i.us.us.epil ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.us.us ] ; 2 uses
  %epil.iter159 = phi i64 [ %epil.iter159.next, %.lr.ph.i.i.i.i.i.i.i.i.us.us.epil ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.us.us ] ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.05.i.i.i.i.i.i.i.i.us.us.epil ; 2 uses
  %i.dc = load double, ptr %i.db, align 8, !tbaa !21
  %i.dd = fmul double %i.da, %i.dc
  store double %i.dd, ptr %i.db, align 8, !tbaa !21
  %i.de = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.us.us.epil, 1
  %epil.iter159.next = add i64 %epil.iter159, 1
  %epil.iter159.cmp.not = icmp eq i64 %epil.iter159, 0
  br i1 %epil.iter159.cmp.not, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.loopexit.us.us, label %.lr.ph.i.i.i.i.i.i.i.i.us.us.epil, !llvm.loop !1176

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.loopexit.us.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.us.epil
  br i1 %.not.us.us, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us.us, label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.loopexit.us.us
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.02899.us.us ; 2 uses
  %i.dg = load double, ptr %i.df, align 8, !tbaa !21
  %i.dh = load double, ptr %i.br, align 8, !tbaa !21
  store double %i.dh, ptr %i.df, align 8, !tbaa !21
  store double %i.dg, ptr %i.br, align 8, !tbaa !21
  br label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us.us

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us.us: ; preds = %bb.e, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.loopexit.us.us
  %i.di = add nuw nsw i64 %.02899.us.us, 1        ; 2 uses
  %exitcond104.not = icmp eq i64 %i.di, %i.b
  br i1 %exitcond104.not, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge, label %.lr.ph.split.us.split.us, !llvm.loop !1177

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us: ; preds = %.lr.ph.split.us.split.preheader.split, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us
  %.02899.us = phi i64 [ %i.dt, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us ], [ 0, %.lr.ph.split.us.split.preheader.split ] ; 5 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %.02899.us ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !21
  %i.dl = load double, ptr %i.cr, align 8, !tbaa !21
  store double %i.dl, ptr %i.dj, align 8, !tbaa !21
  store double %i.dk, ptr %i.cr, align 8, !tbaa !21
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.02899.us
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !21
  %i.do = fsub double 1.000000e+00, %i.dn
  %i.dp = load double, ptr %i.br, align 16, !tbaa !21
  %i.dq = fmul double %i.do, %i.dp                ; 2 uses
  store double %i.dq, ptr %i.br, align 16, !tbaa !21
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.02899.us ; 2 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !21
  store double %i.dq, ptr %i.dr, align 8, !tbaa !21
  store double %i.ds, ptr %i.br, align 16, !tbaa !21
  %i.dt = add nuw nsw i64 %.02899.us, 1           ; 2 uses
  %exitcond103.not = icmp eq i64 %.02899.us, %i.cs
  br i1 %exitcond103.not, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge.loopexit100.peel.begin, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us, !llvm.loop !1178

.invoke.i:                                        ; preds = %.loopexit.thread, %.loopexit
  %i.du = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.du, align 8, !tbaa !27
  tail call void @__cxa_throw(ptr nonnull %i.du, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
  unreachable

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge.loopexit100.peel.begin: ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us, %.lr.ph.split.us.split.preheader
  %i.dv = phi i64 [ 0, %.lr.ph.split.us.split.preheader ], [ %i.dt, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us ] ; 4 uses
  %.not.us.peel = icmp eq i64 %i.dv, %i.bo
  br i1 %.not.us.peel, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us.critedge.peel, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.us.peel

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.us.peel: ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge.loopexit100.peel.begin
  %i.dw = load ptr, ptr %1, align 8, !tbaa !19, !noalias !1191 ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dv ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.bo ; 2 uses
  %i.dz = load double, ptr %i.dx, align 8, !tbaa !21
  %i.ea = load double, ptr %i.dy, align 8, !tbaa !21
  store double %i.ea, ptr %i.dx, align 8, !tbaa !21
  store double %i.dz, ptr %i.dy, align 8, !tbaa !21
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.dv
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !21
  %i.ed = fsub double 1.000000e+00, %i.ec
  %i.ee = load double, ptr %i.br, align 16, !tbaa !21
  %i.ef = fmul double %i.ed, %i.ee                ; 2 uses
  store double %i.ef, ptr %i.br, align 16, !tbaa !21
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.dv ; 2 uses
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !21
  store double %i.ef, ptr %i.eg, align 8, !tbaa !21
  br label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us.peel

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us.critedge.peel: ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge.loopexit100.peel.begin
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bo
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !21
  %i.ek = fsub double 1.000000e+00, %i.ej
  %i.el = load double, ptr %i.br, align 16, !tbaa !21
  %i.em = fmul double %i.ek, %i.el
  br label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us.peel

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us.peel: ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us.critedge.peel, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.us.peel
  %storemerge.peel = phi double [ %i.eh, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.us.peel ], [ %i.em, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us.critedge.peel ]
  store double %storemerge.peel, ptr %i.br, align 16, !tbaa !21
  br label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge: ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us.us, %.loopexit.thread, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us.peel, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.preheader
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit
  %.02899 = phi i64 [ %i.im, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit ], [ 0, %.lr.ph.split.preheader ] ; 6 uses
  %.not = icmp eq i64 %.02899, %i.bo              ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split
  %i.en = load ptr, ptr %1, align 8, !tbaa !19, !noalias !1191 ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %.02899 ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.bo ; 2 uses
  %i.eq = load double, ptr %i.eo, align 8, !tbaa !21
  %i.er = load double, ptr %i.ep, align 8, !tbaa !21
  store double %i.er, ptr %i.eo, align 8, !tbaa !21
  store double %i.eq, ptr %i.ep, align 8, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.02899 ; 10 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.02899 ; 2 uses
  %i.et = load double, ptr %i.es, align 8, !tbaa !21 ; 3 uses
  %i.eu = fcmp une double %i.et, 0.000000e+00
  br i1 %i.eu, label %bb.h, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit

bb.h:                                             ; preds = %bb.g
  %i.ev = load double, ptr %gep, align 8, !tbaa !21
  %i.ew = load double, ptr %i.bz, align 8, !tbaa !21
  %i.ex = fmul double %i.ev, %i.ew                ; 3 uses
  br i1 %i.ca, label %.lr.ph.i.i.i.i.i.i.i8.i.preheader, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i

.lr.ph.i.i.i.i.i.i.i8.i.preheader:                ; preds = %bb.h
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i.i.i8.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i8.i

.lr.ph.i.i.i.i.i.i.i8.i:                          ; preds = %.lr.ph.i.i.i.i.i.i.i8.i.preheader, %.lr.ph.i.i.i.i.i.i.i8.i
  %.01724.i.i.i.i.i.i.i.i = phi i64 [ %i.gd, %.lr.ph.i.i.i.i.i.i.i8.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i8.i.preheader ] ; 6 uses
  %.02223.i.i.i.i.i.i.i.i = phi double [ %i.gc, %.lr.ph.i.i.i.i.i.i.i8.i ], [ %i.ex, %.lr.ph.i.i.i.i.i.i.i8.i.preheader ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.i8.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i8.i.preheader ]
  %i.ey = mul nsw i64 %.01724.i.i.i.i.i.i.i.i, %i.bu
  %i.ez = getelementptr [8 x i8], ptr %gep, i64 %i.ey
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !21
  %i.fb = getelementptr [8 x i8], ptr %i.bz, i64 %.01724.i.i.i.i.i.i.i.i
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !21
  %i.fd = fmul double %i.fa, %i.fc
  %i.fe = fadd double %.02223.i.i.i.i.i.i.i.i, %i.fd
  %i.ff = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.fg = mul nsw i64 %i.ff, %i.bu
  %i.fh = getelementptr [8 x i8], ptr %gep, i64 %i.fg
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !21
  %i.fj = getelementptr [8 x i8], ptr %i.bz, i64 %i.ff
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !21
  %i.fl = fmul double %i.fi, %i.fk
  %i.fm = fadd double %i.fe, %i.fl
  %i.fn = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.fo = mul nsw i64 %i.fn, %i.bu
  %i.fp = getelementptr [8 x i8], ptr %gep, i64 %i.fo
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !21
  %i.fr = getelementptr [8 x i8], ptr %i.bz, i64 %i.fn
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !21
  %i.ft = fmul double %i.fq, %i.fs
  %i.fu = fadd double %i.fm, %i.ft
  %i.fv = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.fw = mul nsw i64 %i.fv, %i.bu
  %i.fx = getelementptr [8 x i8], ptr %gep, i64 %i.fw
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !21
  %i.fz = getelementptr [8 x i8], ptr %i.bz, i64 %i.fv
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !21
  %i.gb = fmul double %i.fy, %i.ga
  %i.gc = fadd double %i.fu, %i.gb                ; 3 uses
  %i.gd = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.thread.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i8.i, !llvm.loop !1179

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.thread.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i8.i
  br i1 %lcmp.mod.not, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.thread, label %.lr.ph.i.i.i.i.i.i.i8.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i8.i.epil.preheader:           ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.thread.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i8.i.preheader
  %.01724.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i8.i.preheader ], [ %i.gd, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.thread.unr-lcssa ]
  %.02223.i.i.i.i.i.i.i.i.epil.init = phi double [ %i.ex, %.lr.ph.i.i.i.i.i.i.i8.i.preheader ], [ %i.gc, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.thread.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod155)
  br label %.lr.ph.i.i.i.i.i.i.i8.i.epil

.lr.ph.i.i.i.i.i.i.i8.i.epil:                     ; preds = %.lr.ph.i.i.i.i.i.i.i8.i.epil, %.lr.ph.i.i.i.i.i.i.i8.i.epil.preheader
  %.01724.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.gl, %.lr.ph.i.i.i.i.i.i.i8.i.epil ], [ %.01724.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i8.i.epil.preheader ] ; 3 uses
  %.02223.i.i.i.i.i.i.i.i.epil = phi double [ %i.gk, %.lr.ph.i.i.i.i.i.i.i8.i.epil ], [ %.02223.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i8.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i8.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i8.i.epil.preheader ]
  %i.ge = mul nsw i64 %.01724.i.i.i.i.i.i.i.i.epil, %i.bu
  %i.gf = getelementptr [8 x i8], ptr %gep, i64 %i.ge
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !21
  %i.gh = getelementptr [8 x i8], ptr %i.bz, i64 %.01724.i.i.i.i.i.i.i.i.epil
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !21
  %i.gj = fmul double %i.gg, %i.gi
  %i.gk = fadd double %.02223.i.i.i.i.i.i.i.i.epil, %i.gj ; 2 uses
  %i.gl = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.thread, label %.lr.ph.i.i.i.i.i.i.i8.i.epil, !llvm.loop !1180

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i8.i.epil, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.thread.unr-lcssa
  %.lcssa150 = phi double [ %i.gc, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.thread.unr-lcssa ], [ %i.gk, %.lr.ph.i.i.i.i.i.i.i8.i.epil ]
  %i.gm = load double, ptr %i.br, align 8, !tbaa !21 ; 2 uses
  %i.gn = fadd double %.lcssa150, %i.gm           ; 2 uses
  %i.go = fmul double %i.gn, %i.et
  %i.gp = fsub double %i.gm, %i.go
  store double %i.gp, ptr %i.br, align 8, !tbaa !21
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i: ; preds = %bb.h
  %i.gq = load double, ptr %i.br, align 8, !tbaa !21 ; 2 uses
  %i.gr = fadd double %i.ex, %i.gq                ; 2 uses
  %i.gs = fmul double %i.gr, %i.et
  %i.gt = fsub double %i.gq, %i.gs
  store double %i.gt, ptr %i.br, align 8, !tbaa !21
  br i1 %i.cb, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.thread, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i
  %i.gu = phi double [ %i.gn, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.thread ], [ %i.gr, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i ] ; 4 uses
  %i.gv = load double, ptr %i.es, align 8, !tbaa !21, !noalias !1193 ; 4 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader148, label %vector.ph133

vector.ph133:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %broadcast.splatinsert135 = insertelement <2 x double> poison, double %i.gu, i64 0
  %broadcast.splat136 = shufflevector <2 x double> %broadcast.splatinsert135, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert137 = insertelement <2 x double> poison, double %i.gv, i64 0
  %broadcast.splat138 = shufflevector <2 x double> %broadcast.splatinsert137, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph133
  %index140 = phi i64 [ 0, %vector.ph133 ], [ %index.next144, %vector.body139 ] ; 3 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %index140 ; 3 uses
  %i.gx = getelementptr [8 x i8], ptr %gep, i64 %index140 ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gx, i64 16
  %wide.load = load <2 x double>, ptr %i.gx, align 8, !tbaa !21, !alias.scope !1194
  %wide.load141 = load <2 x double>, ptr %i.gy, align 8, !tbaa !21, !alias.scope !1194
  %i.gz = fmul <2 x double> %broadcast.splat138, %wide.load
  %i.ha = fmul <2 x double> %broadcast.splat138, %wide.load141
  %i.hb = fmul <2 x double> %i.gz, %broadcast.splat136
  %i.hc = fmul <2 x double> %i.ha, %broadcast.splat136
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 2 uses
  %wide.load142 = load <2 x double>, ptr %i.gw, align 8, !tbaa !21, !alias.scope !1195, !noalias !1194
  %wide.load143 = load <2 x double>, ptr %i.hd, align 8, !tbaa !21, !alias.scope !1195, !noalias !1194
  %i.he = fsub <2 x double> %wide.load142, %i.hb
  %i.hf = fsub <2 x double> %wide.load143, %i.hc
  store <2 x double> %i.he, ptr %i.gw, align 8, !tbaa !21, !alias.scope !1195, !noalias !1194
  store <2 x double> %i.hf, ptr %i.hd, align 8, !tbaa !21, !alias.scope !1195, !noalias !1194
  %index.next144 = add nuw i64 %index140, 4       ; 2 uses
  %i.hg = icmp eq i64 %index.next144, %n.vec134
  br i1 %i.hg, label %middle.block145, label %vector.body139, !llvm.loop !1186

middle.block145:                                  ; preds = %vector.body139
  br i1 %cmp.n146, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader148

.lr.ph.i.i.i.i.i.i.i.i.i.preheader148:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block145
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %n.vec134, %middle.block145 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 5 uses
  br i1 %lcmp.mod157.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader148
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.05.i.i.i.i.i.i.i.i.i.ph ; 2 uses
  %i.hi = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.ph, %i.bu
  %i.hj = getelementptr [8 x i8], ptr %gep, i64 %i.hi
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !21
  %i.hl = fmul double %i.gv, %i.hk
  %i.hm = fmul double %i.hl, %i.gu
  %i.hn = load double, ptr %i.hh, align 8, !tbaa !21
  %i.ho = fsub double %i.hn, %i.hm
  store double %i.ho, ptr %i.hh, align 8, !tbaa !21
  %i.hp = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader148
  %.05.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader148 ], [ %i.hp, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.hq = icmp eq i64 %i.cl, %.05.i.i.i.i.i.i.i.i.i.ph
  br i1 %i.hq, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ii, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.05.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.hs = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i, %i.bu
  %i.ht = getelementptr [8 x i8], ptr %gep, i64 %i.hs
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !21
  %i.hv = fmul double %i.gv, %i.hu
  %i.hw = fmul double %i.hv, %i.gu
  %i.hx = load double, ptr %i.hr, align 8, !tbaa !21
  %i.hy = fsub double %i.hx, %i.hw
  store double %i.hy, ptr %i.hr, align 8, !tbaa !21
  %i.hz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.hz ; 2 uses
  %i.ib = mul nsw i64 %i.hz, %i.bu
  %i.ic = getelementptr [8 x i8], ptr %gep, i64 %i.ib
  %i.id = load double, ptr %i.ic, align 8, !tbaa !21
  %i.ie = fmul double %i.gv, %i.id
  %i.if = fmul double %i.ie, %i.gu
  %i.ig = load double, ptr %i.ia, align 8, !tbaa !21
  %i.ih = fsub double %i.ig, %i.if
  store double %i.ih, ptr %i.ia, align 8, !tbaa !21
end_hunk_0

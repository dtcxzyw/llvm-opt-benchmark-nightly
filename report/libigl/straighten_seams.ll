Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/straighten_seams?download=true
inline.NumInlined: 5387
inline.NumDeleted: 2526
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 81
loop-unroll.NumUnrolled: 87
begin_hunk_0_@_ZNK5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_16PartialReduxExprINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEENS0_15member_maxCoeffIddEELi0EEEKNS5_IS7_NS0_15member_minCoeffIddEELi0EEEEENS0_10IndexBasedESH_ddE5coeffEll:bb.a

.lr.ph.i.i.i.i.i.i.i27:                           ; preds = %.lr.ph.i.i.i.i.i.i.i27, %.lr.ph.preheader.i.i.i.i.i.i.i25
  %.05482.i.i.i.i.i.i.i28 = phi i64 [ %.054.i.i.i.i.i.i.i32, %.lr.ph.i.i.i.i.i.i.i27 ], [ %.05478.i.i.i.i.i.i.i26, %.lr.ph.preheader.i.i.i.i.i.i.i25 ] ; 3 uses
  %.054.in81.i.i.i.i.i.i.i29 = phi i64 [ %.05482.i.i.i.i.i.i.i28, %.lr.ph.i.i.i.i.i.i.i27 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i6, %.lr.ph.preheader.i.i.i.i.i.i.i25 ]
  %.07380.i.i.i.i.i.i.i30 = phi <2 x double> [ %i.ed, %.lr.ph.i.i.i.i.i.i.i27 ], [ %i.du, %.lr.ph.preheader.i.i.i.i.i.i.i25 ]
  %.07679.i.i.i.i.i.i.i31 = phi <2 x double> [ %i.eh, %.lr.ph.i.i.i.i.i.i.i27 ], [ %i.dx, %.lr.ph.preheader.i.i.i.i.i.i.i25 ]
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %.05482.i.i.i.i.i.i.i28
  %i.ec = load <2 x double>, ptr %i.eb, align 1, !tbaa !48
  %i.ed = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.07380.i.i.i.i.i.i.i30, <2 x double> %i.ec) #28, !srcloc !184 ; 2 uses
  %i.ee = getelementptr [8 x i8], ptr %i.dg, i64 %.054.in81.i.i.i.i.i.i.i29
  %i.ef = getelementptr i8, ptr %i.ee, i64 48
  %i.eg = load <2 x double>, ptr %i.ef, align 1, !tbaa !48
  %i.eh = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.07679.i.i.i.i.i.i.i31, <2 x double> %i.eg) #28, !srcloc !184 ; 2 uses
  %.054.i.i.i.i.i.i.i32 = add nsw i64 %.05482.i.i.i.i.i.i.i28, 4 ; 2 uses
  %i.ei = icmp slt i64 %.054.i.i.i.i.i.i.i32, %i.dr
  br i1 %i.ei, label %.lr.ph.i.i.i.i.i.i.i27, label %._crit_edge.i.i.i.i.i.i.i22, !llvm.loop !784

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i22
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.dr
  %i.ek = load <2 x double>, ptr %i.ej, align 1, !tbaa !48
  %i.el = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dz, <2 x double> %i.ek) #28, !srcloc !184
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i.i.i.i22, %bb.i
  %.275.i.i.i.i.i.i.i9 = phi <2 x double> [ %i.du, %bb.i ], [ %i.el, %bb.k ], [ %i.dz, %._crit_edge.i.i.i.i.i.i.i22 ] ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i10 = extractelement <2 x double> %.275.i.i.i.i.i.i.i9, i64 1 ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i11 = extractelement <2 x double> %.275.i.i.i.i.i.i.i9, i64 0 ; 2 uses
  %i.em = fcmp olt double %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i10, %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i11
  %i.en = select i1 %i.em, double %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i10, double %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i11 ; 3 uses
  %i.eo = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i6, 0
  br i1 %i.eo, label %.lr.ph87.i.i.i.i.i.i.i18.preheader, label %.preheader.i.i.i.i.i.i.i12

.lr.ph87.i.i.i.i.i.i.i18.preheader:               ; preds = %bb.l
  %xtraiter108 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i6, 3 ; 3 uses
  %i.ep = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i6, 4
  br i1 %i.ep, label %.lr.ph87.i.i.i.i.i.i.i18.epil.preheader, label %.lr.ph87.i.i.i.i.i.i.i18.preheader.new

.lr.ph87.i.i.i.i.i.i.i18.preheader.new:           ; preds = %.lr.ph87.i.i.i.i.i.i.i18.preheader
  %unroll_iter113 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i6, 9223372036854775804
  br label %.lr.ph87.i.i.i.i.i.i.i18

.preheader.i.i.i.i.i.i.i12.loopexit.unr-lcssa:    ; preds = %.lr.ph87.i.i.i.i.i.i.i18
  %lcmp.mod110.not = icmp eq i64 %xtraiter108, 0
  br i1 %lcmp.mod110.not, label %.preheader.i.i.i.i.i.i.i12, label %.lr.ph87.i.i.i.i.i.i.i18.epil.preheader

.lr.ph87.i.i.i.i.i.i.i18.epil.preheader:          ; preds = %.preheader.i.i.i.i.i.i.i12.loopexit.unr-lcssa, %.lr.ph87.i.i.i.i.i.i.i18.preheader
  %.05385.i.i.i.i.i.i.i19.epil.init = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i18.preheader ], [ %i.fp, %.preheader.i.i.i.i.i.i.i12.loopexit.unr-lcssa ]
  %.07284.i.i.i.i.i.i.i20.epil.init = phi double [ %i.en, %.lr.ph87.i.i.i.i.i.i.i18.preheader ], [ %i.fo, %.preheader.i.i.i.i.i.i.i12.loopexit.unr-lcssa ]
  %lcmp.mod112 = icmp ne i64 %xtraiter108, 0
  tail call void @llvm.assume(i1 %lcmp.mod112)
  br label %.lr.ph87.i.i.i.i.i.i.i18.epil

.lr.ph87.i.i.i.i.i.i.i18.epil:                    ; preds = %.lr.ph87.i.i.i.i.i.i.i18.epil, %.lr.ph87.i.i.i.i.i.i.i18.epil.preheader
  %.05385.i.i.i.i.i.i.i19.epil = phi i64 [ %i.eu, %.lr.ph87.i.i.i.i.i.i.i18.epil ], [ %.05385.i.i.i.i.i.i.i19.epil.init, %.lr.ph87.i.i.i.i.i.i.i18.epil.preheader ] ; 2 uses
  %.07284.i.i.i.i.i.i.i20.epil = phi double [ %i.et, %.lr.ph87.i.i.i.i.i.i.i18.epil ], [ %.07284.i.i.i.i.i.i.i20.epil.init, %.lr.ph87.i.i.i.i.i.i.i18.epil.preheader ] ; 2 uses
  %epil.iter109 = phi i64 [ %epil.iter109.next, %.lr.ph87.i.i.i.i.i.i.i18.epil ], [ 0, %.lr.ph87.i.i.i.i.i.i.i18.epil.preheader ]
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.05385.i.i.i.i.i.i.i19.epil
  %i.er = load double, ptr %i.eq, align 8, !tbaa !105 ; 2 uses
  %i.es = fcmp olt double %i.er, %.07284.i.i.i.i.i.i.i20.epil
  %i.et = select i1 %i.es, double %i.er, double %.07284.i.i.i.i.i.i.i20.epil ; 2 uses
  %i.eu = add nuw nsw i64 %.05385.i.i.i.i.i.i.i19.epil, 1
  %epil.iter109.next = add i64 %epil.iter109, 1   ; 2 uses
  %epil.iter109.cmp.not = icmp eq i64 %epil.iter109.next, %xtraiter108
  br i1 %epil.iter109.cmp.not, label %.preheader.i.i.i.i.i.i.i12, label %.lr.ph87.i.i.i.i.i.i.i18.epil, !llvm.loop !785

.preheader.i.i.i.i.i.i.i12:                       ; preds = %.preheader.i.i.i.i.i.i.i12.loopexit.unr-lcssa, %.lr.ph87.i.i.i.i.i.i.i18.epil, %bb.l
  %.072.lcssa.i.i.i.i.i.i.i13 = phi double [ %i.en, %bb.l ], [ %i.fo, %.preheader.i.i.i.i.i.i.i12.loopexit.unr-lcssa ], [ %i.et, %.lr.ph87.i.i.i.i.i.i.i18.epil ] ; 2 uses
  %i.ev = icmp slt i64 %i.ds, %i.de
  br i1 %i.ev, label %.lr.ph91.i.i.i.i.i.i.i15, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEENS0_15member_minCoeffIddEELi0EEEE5coeffEll.exit

.lr.ph87.i.i.i.i.i.i.i18:                         ; preds = %.lr.ph87.i.i.i.i.i.i.i18, %.lr.ph87.i.i.i.i.i.i.i18.preheader.new
  %.05385.i.i.i.i.i.i.i19 = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i18.preheader.new ], [ %i.fp, %.lr.ph87.i.i.i.i.i.i.i18 ] ; 5 uses
  %.07284.i.i.i.i.i.i.i20 = phi double [ %i.en, %.lr.ph87.i.i.i.i.i.i.i18.preheader.new ], [ %i.fo, %.lr.ph87.i.i.i.i.i.i.i18 ] ; 2 uses
  %niter114 = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i18.preheader.new ], [ %niter114.next.3, %.lr.ph87.i.i.i.i.i.i.i18 ]
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.05385.i.i.i.i.i.i.i19
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !105 ; 2 uses
  %i.ey = fcmp olt double %i.ex, %.07284.i.i.i.i.i.i.i20
  %i.ez = select i1 %i.ey, double %i.ex, double %.07284.i.i.i.i.i.i.i20 ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.05385.i.i.i.i.i.i.i19
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !105 ; 2 uses
  %i.fd = fcmp olt double %i.fc, %i.ez
  %i.fe = select i1 %i.fd, double %i.fc, double %i.ez ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.05385.i.i.i.i.i.i.i19
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !105 ; 2 uses
  %i.fi = fcmp olt double %i.fh, %i.fe
  %i.fj = select i1 %i.fi, double %i.fh, double %i.fe ; 2 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.05385.i.i.i.i.i.i.i19
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !105 ; 2 uses
  %i.fn = fcmp olt double %i.fm, %i.fj
  %i.fo = select i1 %i.fn, double %i.fm, double %i.fj ; 3 uses
  %i.fp = add nuw nsw i64 %.05385.i.i.i.i.i.i.i19, 4 ; 2 uses
  %niter114.next.3 = add nuw nsw i64 %niter114, 4 ; 2 uses
  %niter114.ncmp.3 = icmp eq i64 %niter114.next.3, %unroll_iter113
  br i1 %niter114.ncmp.3, label %.preheader.i.i.i.i.i.i.i12.loopexit.unr-lcssa, label %.lr.ph87.i.i.i.i.i.i.i18, !llvm.loop !786

.lr.ph91.i.i.i.i.i.i.i15:                         ; preds = %.preheader.i.i.i.i.i.i.i12, %.lr.ph91.i.i.i.i.i.i.i15
  %.05290.i.i.i.i.i.i.i16 = phi i64 [ %i.fu, %.lr.ph91.i.i.i.i.i.i.i15 ], [ %i.ds, %.preheader.i.i.i.i.i.i.i12 ] ; 2 uses
  %.189.i.i.i.i.i.i.i17 = phi double [ %i.ft, %.lr.ph91.i.i.i.i.i.i.i15 ], [ %.072.lcssa.i.i.i.i.i.i.i13, %.preheader.i.i.i.i.i.i.i12 ] ; 2 uses
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %.05290.i.i.i.i.i.i.i16
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !105 ; 2 uses
  %i.fs = fcmp olt double %i.fr, %.189.i.i.i.i.i.i.i17
  %i.ft = select i1 %i.fs, double %i.fr, double %.189.i.i.i.i.i.i.i17 ; 2 uses
  %i.fu = add nsw i64 %.05290.i.i.i.i.i.i.i16, 1  ; 2 uses
  %i.fv = icmp slt i64 %i.fu, %i.de
  br i1 %i.fv, label %.lr.ph91.i.i.i.i.i.i.i15, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEENS0_15member_minCoeffIddEELi0EEEE5coeffEll.exit, !llvm.loop !787

bb.m:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i5
  %i.fw = load double, ptr %i.dg, align 8, !tbaa !105 ; 3 uses
  %i.fx = icmp sgt i64 %i.de, 1
  br i1 %i.fx, label %.lr.ph96.i.i.i.i.i.i.i33.preheader, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEENS0_15member_minCoeffIddEELi0EEEE5coeffEll.exit

.lr.ph96.i.i.i.i.i.i.i33.preheader:               ; preds = %bb.m
  %i.fy = add nsw i64 %i.de, -1                   ; 2 uses
  %i.fz = add nsw i64 %i.de, -2
  %xtraiter115 = and i64 %i.fy, 3                 ; 3 uses
  %i.ga = icmp ult i64 %i.fz, 3
  br i1 %i.ga, label %.lr.ph96.i.i.i.i.i.i.i33.epil.preheader, label %.lr.ph96.i.i.i.i.i.i.i33.preheader.new

.lr.ph96.i.i.i.i.i.i.i33.preheader.new:           ; preds = %.lr.ph96.i.i.i.i.i.i.i33.preheader
  %unroll_iter120 = and i64 %i.fy, -4
  br label %.lr.ph96.i.i.i.i.i.i.i33

.lr.ph96.i.i.i.i.i.i.i33:                         ; preds = %.lr.ph96.i.i.i.i.i.i.i33, %.lr.ph96.i.i.i.i.i.i.i33.preheader.new
  %.094.i.i.i.i.i.i.i34 = phi i64 [ 1, %.lr.ph96.i.i.i.i.i.i.i33.preheader.new ], [ %i.gu, %.lr.ph96.i.i.i.i.i.i.i33 ] ; 5 uses
  %.293.i.i.i.i.i.i.i35 = phi double [ %i.fw, %.lr.ph96.i.i.i.i.i.i.i33.preheader.new ], [ %i.gt, %.lr.ph96.i.i.i.i.i.i.i33 ] ; 2 uses
  %niter121 = phi i64 [ 0, %.lr.ph96.i.i.i.i.i.i.i33.preheader.new ], [ %niter121.next.3, %.lr.ph96.i.i.i.i.i.i.i33 ]
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.094.i.i.i.i.i.i.i34
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !105 ; 2 uses
  %i.gd = fcmp olt double %i.gc, %.293.i.i.i.i.i.i.i35
  %i.ge = select i1 %i.gd, double %i.gc, double %.293.i.i.i.i.i.i.i35 ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.094.i.i.i.i.i.i.i34
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !105 ; 2 uses
  %i.gi = fcmp olt double %i.gh, %i.ge
  %i.gj = select i1 %i.gi, double %i.gh, double %i.ge ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.094.i.i.i.i.i.i.i34
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !105 ; 2 uses
  %i.gn = fcmp olt double %i.gm, %i.gj
  %i.go = select i1 %i.gn, double %i.gm, double %i.gj ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.094.i.i.i.i.i.i.i34
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !105 ; 2 uses
  %i.gs = fcmp olt double %i.gr, %i.go
  %i.gt = select i1 %i.gs, double %i.gr, double %i.go ; 3 uses
  %i.gu = add nuw nsw i64 %.094.i.i.i.i.i.i.i34, 4 ; 2 uses
  %niter121.next.3 = add nuw i64 %niter121, 4     ; 2 uses
  %niter121.ncmp.3 = icmp eq i64 %niter121.next.3, %unroll_iter120
  br i1 %niter121.ncmp.3, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEENS0_15member_minCoeffIddEELi0EEEE5coeffEll.exit.loopexit.unr-lcssa, label %.lr.ph96.i.i.i.i.i.i.i33, !llvm.loop !788

_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEENS0_15member_minCoeffIddEELi0EEEE5coeffEll.exit.loopexit.unr-lcssa: ; preds = %.lr.ph96.i.i.i.i.i.i.i33
  %lcmp.mod117.not = icmp eq i64 %xtraiter115, 0
  br i1 %lcmp.mod117.not, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEENS0_15member_minCoeffIddEELi0EEEE5coeffEll.exit, label %.lr.ph96.i.i.i.i.i.i.i33.epil.preheader

.lr.ph96.i.i.i.i.i.i.i33.epil.preheader:          ; preds = %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEENS0_15member_minCoeffIddEELi0EEEE5coeffEll.exit.loopexit.unr-lcssa, %.lr.ph96.i.i.i.i.i.i.i33.preheader
  %.094.i.i.i.i.i.i.i34.epil.init = phi i64 [ 1, %.lr.ph96.i.i.i.i.i.i.i33.preheader ], [ %i.gu, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEENS0_15member_minCoeffIddEELi0EEEE5coeffEll.exit.loopexit.unr-lcssa ]
  %.293.i.i.i.i.i.i.i35.epil.init = phi double [ %i.fw, %.lr.ph96.i.i.i.i.i.i.i33.preheader ], [ %i.gt, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEENS0_15member_minCoeffIddEELi0EEEE5coeffEll.exit.loopexit.unr-lcssa ]
  %lcmp.mod119 = icmp ne i64 %xtraiter115, 0
  tail call void @llvm.assume(i1 %lcmp.mod119)
  br label %.lr.ph96.i.i.i.i.i.i.i33.epil

.lr.ph96.i.i.i.i.i.i.i33.epil:                    ; preds = %.lr.ph96.i.i.i.i.i.i.i33.epil, %.lr.ph96.i.i.i.i.i.i.i33.epil.preheader
  %.094.i.i.i.i.i.i.i34.epil = phi i64 [ %i.gz, %.lr.ph96.i.i.i.i.i.i.i33.epil ], [ %.094.i.i.i.i.i.i.i34.epil.init, %.lr.ph96.i.i.i.i.i.i.i33.epil.preheader ] ; 2 uses
  %.293.i.i.i.i.i.i.i35.epil = phi double [ %i.gy, %.lr.ph96.i.i.i.i.i.i.i33.epil ], [ %.293.i.i.i.i.i.i.i35.epil.init, %.lr.ph96.i.i.i.i.i.i.i33.epil.preheader ] ; 2 uses
  %epil.iter116 = phi i64 [ %epil.iter116.next, %.lr.ph96.i.i.i.i.i.i.i33.epil ], [ 0, %.lr.ph96.i.i.i.i.i.i.i33.epil.preheader ]
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.094.i.i.i.i.i.i.i34.epil
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !105 ; 2 uses
  %i.gx = fcmp olt double %i.gw, %.293.i.i.i.i.i.i.i35.epil
  %i.gy = select i1 %i.gx, double %i.gw, double %.293.i.i.i.i.i.i.i35.epil ; 2 uses
  %i.gz = add nuw nsw i64 %.094.i.i.i.i.i.i.i34.epil, 1
  %epil.iter116.next = add i64 %epil.iter116, 1   ; 2 uses
  %epil.iter116.cmp.not = icmp eq i64 %epil.iter116.next, %xtraiter115
  br i1 %epil.iter116.cmp.not, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEENS0_15member_minCoeffIddEELi0EEEE5coeffEll.exit, label %.lr.ph96.i.i.i.i.i.i.i33.epil, !llvm.loop !789

_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEENS0_15member_minCoeffIddEELi0EEEE5coeffEll.exit: ; preds = %.lr.ph91.i.i.i.i.i.i.i15, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEENS0_15member_minCoeffIddEELi0EEEE5coeffEll.exit.loopexit.unr-lcssa, %.lr.ph96.i.i.i.i.i.i.i33.epil, %.preheader.i.i.i.i.i.i.i12, %bb.m
  %.3.i.i.i.i.i.i.i14 = phi double [ %i.gy, %.lr.ph96.i.i.i.i.i.i.i33.epil ], [ %i.fw, %bb.m ], [ %.072.lcssa.i.i.i.i.i.i.i13, %.preheader.i.i.i.i.i.i.i12 ], [ %i.gt, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEENS0_15member_minCoeffIddEELi0EEEE5coeffEll.exit.loopexit.unr-lcssa ], [ %i.ft, %.lr.ph91.i.i.i.i.i.i.i15 ]
  %i.ha = fsub double %.3.i.i.i.i.i.i.i, %.3.i.i.i.i.i.i.i14
  ret double %i.ha
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !123    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 2 uses
  %mul2 = shl nsw i64 %i.h, 1
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 384307168202282325)
  %i.k = select i1 %i.i, i64 384307168202282325, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = mul nuw nsw i64 %i.k, 24
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #27 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 2 uses
  %i.q = load <2 x ptr>, ptr %2, align 8, !tbaa !125
  store <2 x ptr> %i.q, ptr %i.p, align 8, !tbaa !125
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !66
  store ptr %i.t, ptr %i.r, align 8, !tbaa !66
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.o, %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !803)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !125, !alias.scope !804, !noalias !803
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !tbaa !125, !alias.scope !803, !noalias !804
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !66, !alias.scope !804, !noalias !803
  store ptr %i.x, ptr %i.v, align 8, !tbaa !66, !alias.scope !803, !noalias !804
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !804, !noalias !803
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !799

_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.z, %.lr.ph.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %i.aa, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  %.0911.i.i.i19 = phi ptr [ %i.af, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !805)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !806)
  %i.ab = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !125, !alias.scope !806, !noalias !805
  store <2 x ptr> %i.ab, ptr %.012.i.i.i18, align 8, !tbaa !125, !alias.scope !805, !noalias !806
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !66, !alias.scope !806, !noalias !805
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !66, !alias.scope !805, !noalias !806
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i19, i8 0, i64 24, i1 false), !alias.scope !806, !noalias !805
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.af, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !799

_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.aa, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ag, %.lr.ph.i.i.i17 ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !112
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ak) #26
  br label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.c
  store ptr %i.o, ptr %0, align 8, !tbaa !123
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !111
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.k
  store ptr %i.al, ptr %i.ah, align 8, !tbaa !112
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIbLi1EiEENS_9TransposeINS2_IbLi0EiEEEEEEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::SparseMatrix.271", align 8 ; 20 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135, !nonnull !61, !align !65 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !75   ; 9 uses
  %i.e = load i8, ptr %1, align 8, !tbaa !815, !range !60, !noundef !61
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !134
  tail call void @_ZN5Eigen12SparseMatrixIbLi1EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.d, i64 noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  store i64 0, ptr %i.i, align 8, !tbaa !139
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !117
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !141
  %i.n = shl i64 %i.m, 2
  %i.o = add i64 %i.n, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %i.o, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !118  ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIbLi1EiE7setZeroEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.l, align 8, !tbaa !141
  %i.s = shl i64 %i.r, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.q, i8 0, i64 %i.s, i1 false)
  br label %_ZN5Eigen12SparseMatrixIbLi1EiE7setZeroEv.exit

_ZN5Eigen12SparseMatrixIbLi1EiE7setZeroEv.exit:   ; preds = %bb.b, %bb.c
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !135, !nonnull !61, !align !65 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !75   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !134  ; 2 uses
  %i.y = mul nsw i64 %i.x, %i.v
  %.sroa.speculated122 = tail call i64 @llvm.smax.i64(i64 %i.v, i64 %i.x)
  %i.z = shl nsw i64 %.sroa.speculated122, 1
  %.sroa.speculated127 = tail call i64 @llvm.smin.i64(i64 %i.z, i64 %i.y)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call void @_ZN5Eigen8internal17CompressedStorageIbiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 noundef %.sroa.speculated127)
  %i.ab = icmp sgt i64 %i.d, 0
  br i1 %i.ab, label %.lr.ph148, label %_ZN5Eigen12SparseMatrixIbLi1EiE7reserveEl.exit._crit_edge

.lr.ph148:                                        ; preds = %_ZN5Eigen12SparseMatrixIbLi1EiE7setZeroEv.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  br label %bb.g

_ZN5Eigen12SparseMatrixIbLi1EiE7reserveEl.exit._crit_edge: ; preds = %_ZN5Eigen12SparseMatrixIbLi1EiE7reserveEl.exit, %_ZN5Eigen12SparseMatrixIbLi1EiE7setZeroEv.exit
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !118
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.d, label %_ZN5Eigen12SparseMatrixIbLi1EiE8finalizeEv.exit

bb.d:                                             ; preds = %_ZN5Eigen12SparseMatrixIbLi1EiE7reserveEl.exit._crit_edge
  %i.aj = load i64, ptr %i.i, align 8, !tbaa !139
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  %i.al = load i64, ptr %i.l, align 8, !tbaa !141 ; 5 uses
  %i.am = icmp sgt i64 %i.al, -1
  br i1 %i.am, label %.lr.ph.i, label %_ZN5Eigen12SparseMatrixIbLi1EiE8finalizeEv.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !117 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %.08.i = phi i64 [ %i.al, %.lr.ph.i ], [ %i.ar, %bb.f ] ; 4 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.08.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !43
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.ar = add nsw i64 %.08.i, -1
  %i.as = icmp sgt i64 %.08.i, 0
  br i1 %i.as, label %bb.e, label %.critedge.i, !llvm.loop !2

.critedge.i:                                      ; preds = %bb.f, %bb.e
  %.0.lcssa.i = phi i64 [ -1, %bb.f ], [ %.08.i, %bb.e ] ; 5 uses
  %.not.not11.i = icmp slt i64 %.0.lcssa.i, %i.al
  br i1 %.not.not11.i, label %.lr.ph13.i.preheader, label %_ZN5Eigen12SparseMatrixIbLi1EiE8finalizeEv.exit

.lr.ph13.i.preheader:                             ; preds = %.critedge.i
  %i.at = sub i64 %i.al, %.0.lcssa.i              ; 3 uses
  %min.iters.check180 = icmp ult i64 %i.at, 8
  br i1 %min.iters.check180, label %.lr.ph13.i.preheader191, label %vector.ph181

vector.ph181:                                     ; preds = %.lr.ph13.i.preheader
  %n.vec182 = and i64 %i.at, -8                   ; 3 uses
  %i.au = add i64 %.0.lcssa.i, %n.vec182
  %broadcast.splatinsert183 = insertelement <4 x i32> poison, i32 %i.ak, i64 0
  %broadcast.splat184 = shufflevector <4 x i32> %broadcast.splatinsert183, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.av = getelementptr [4 x i8], ptr %i.an, i64 %.0.lcssa.i
  br label %vector.body185

vector.body185:                                   ; preds = %vector.body185, %vector.ph181
  %index186 = phi i64 [ 0, %vector.ph181 ], [ %index.next187, %vector.body185 ] ; 2 uses
  %i.aw = getelementptr [4 x i8], ptr %i.av, i64 %index186 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 4
  %i.ay = getelementptr i8, ptr %i.aw, i64 20
  store <4 x i32> %broadcast.splat184, ptr %i.ax, align 4, !tbaa !43
  store <4 x i32> %broadcast.splat184, ptr %i.ay, align 4, !tbaa !43
  %index.next187 = add nuw i64 %index186, 8       ; 2 uses
  %i.az = icmp eq i64 %index.next187, %n.vec182
  br i1 %i.az, label %middle.block188, label %vector.body185, !llvm.loop !807

middle.block188:                                  ; preds = %vector.body185
  %cmp.n189 = icmp eq i64 %i.at, %n.vec182
  br i1 %cmp.n189, label %_ZN5Eigen12SparseMatrixIbLi1EiE8finalizeEv.exit, label %.lr.ph13.i.preheader191

.lr.ph13.i.preheader191:                          ; preds = %.lr.ph13.i.preheader, %middle.block188
  %.1.in12.i.ph = phi i64 [ %.0.lcssa.i, %.lr.ph13.i.preheader ], [ %i.au, %middle.block188 ]
end_hunk_0
begin_hunk_1_@_ZNK5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_16PartialReduxExprINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEKNS5_IS7_NS0_15member_minCoeffIddEELi0EEEEENS0_10IndexBasedESH_ddE5coeffEll:bb.a
  %i.ef = getelementptr i8, ptr %i.ee, i64 48
  %i.eg = load <2 x double>, ptr %i.ef, align 1, !tbaa !48
  %i.eh = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.07679.i.i.i.i.i.i.i31, <2 x double> %i.eg) #28, !srcloc !184 ; 2 uses
  %.054.i.i.i.i.i.i.i32 = add nsw i64 %.05482.i.i.i.i.i.i.i28, 4 ; 2 uses
  %i.ei = icmp slt i64 %.054.i.i.i.i.i.i.i32, %i.dr
  br i1 %i.ei, label %.lr.ph.i.i.i.i.i.i.i27, label %._crit_edge.i.i.i.i.i.i.i22, !llvm.loop !835

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i22
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.dr
  %i.ek = load <2 x double>, ptr %i.ej, align 1, !tbaa !48
  %i.el = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dz, <2 x double> %i.ek) #28, !srcloc !184
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i.i.i.i22, %bb.i
  %.275.i.i.i.i.i.i.i9 = phi <2 x double> [ %i.du, %bb.i ], [ %i.el, %bb.k ], [ %i.dz, %._crit_edge.i.i.i.i.i.i.i22 ] ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i10 = extractelement <2 x double> %.275.i.i.i.i.i.i.i9, i64 1 ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i11 = extractelement <2 x double> %.275.i.i.i.i.i.i.i9, i64 0 ; 2 uses
  %i.em = fcmp olt double %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i10, %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i11
  %i.en = select i1 %i.em, double %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i10, double %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i11 ; 3 uses
  %i.eo = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i6, 0
  br i1 %i.eo, label %.lr.ph87.i.i.i.i.i.i.i18.preheader, label %.preheader.i.i.i.i.i.i.i12

.lr.ph87.i.i.i.i.i.i.i18.preheader:               ; preds = %bb.l
  %xtraiter108 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i6, 3 ; 3 uses
  %i.ep = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i6, 4
  br i1 %i.ep, label %.lr.ph87.i.i.i.i.i.i.i18.epil.preheader, label %.lr.ph87.i.i.i.i.i.i.i18.preheader.new

.lr.ph87.i.i.i.i.i.i.i18.preheader.new:           ; preds = %.lr.ph87.i.i.i.i.i.i.i18.preheader
  %unroll_iter113 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i6, 9223372036854775804
  br label %.lr.ph87.i.i.i.i.i.i.i18

.preheader.i.i.i.i.i.i.i12.loopexit.unr-lcssa:    ; preds = %.lr.ph87.i.i.i.i.i.i.i18
  %lcmp.mod110.not = icmp eq i64 %xtraiter108, 0
  br i1 %lcmp.mod110.not, label %.preheader.i.i.i.i.i.i.i12, label %.lr.ph87.i.i.i.i.i.i.i18.epil.preheader

.lr.ph87.i.i.i.i.i.i.i18.epil.preheader:          ; preds = %.preheader.i.i.i.i.i.i.i12.loopexit.unr-lcssa, %.lr.ph87.i.i.i.i.i.i.i18.preheader
  %.05385.i.i.i.i.i.i.i19.epil.init = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i18.preheader ], [ %i.fp, %.preheader.i.i.i.i.i.i.i12.loopexit.unr-lcssa ]
  %.07284.i.i.i.i.i.i.i20.epil.init = phi double [ %i.en, %.lr.ph87.i.i.i.i.i.i.i18.preheader ], [ %i.fo, %.preheader.i.i.i.i.i.i.i12.loopexit.unr-lcssa ]
  %lcmp.mod112 = icmp ne i64 %xtraiter108, 0
  tail call void @llvm.assume(i1 %lcmp.mod112)
  br label %.lr.ph87.i.i.i.i.i.i.i18.epil

.lr.ph87.i.i.i.i.i.i.i18.epil:                    ; preds = %.lr.ph87.i.i.i.i.i.i.i18.epil, %.lr.ph87.i.i.i.i.i.i.i18.epil.preheader
  %.05385.i.i.i.i.i.i.i19.epil = phi i64 [ %i.eu, %.lr.ph87.i.i.i.i.i.i.i18.epil ], [ %.05385.i.i.i.i.i.i.i19.epil.init, %.lr.ph87.i.i.i.i.i.i.i18.epil.preheader ] ; 2 uses
  %.07284.i.i.i.i.i.i.i20.epil = phi double [ %i.et, %.lr.ph87.i.i.i.i.i.i.i18.epil ], [ %.07284.i.i.i.i.i.i.i20.epil.init, %.lr.ph87.i.i.i.i.i.i.i18.epil.preheader ] ; 2 uses
  %epil.iter109 = phi i64 [ %epil.iter109.next, %.lr.ph87.i.i.i.i.i.i.i18.epil ], [ 0, %.lr.ph87.i.i.i.i.i.i.i18.epil.preheader ]
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.05385.i.i.i.i.i.i.i19.epil
  %i.er = load double, ptr %i.eq, align 8, !tbaa !105 ; 2 uses
  %i.es = fcmp olt double %i.er, %.07284.i.i.i.i.i.i.i20.epil
  %i.et = select i1 %i.es, double %i.er, double %.07284.i.i.i.i.i.i.i20.epil ; 2 uses
  %i.eu = add nuw nsw i64 %.05385.i.i.i.i.i.i.i19.epil, 1
  %epil.iter109.next = add i64 %epil.iter109, 1   ; 2 uses
  %epil.iter109.cmp.not = icmp eq i64 %epil.iter109.next, %xtraiter108
  br i1 %epil.iter109.cmp.not, label %.preheader.i.i.i.i.i.i.i12, label %.lr.ph87.i.i.i.i.i.i.i18.epil, !llvm.loop !836

.preheader.i.i.i.i.i.i.i12:                       ; preds = %.preheader.i.i.i.i.i.i.i12.loopexit.unr-lcssa, %.lr.ph87.i.i.i.i.i.i.i18.epil, %bb.l
  %.072.lcssa.i.i.i.i.i.i.i13 = phi double [ %i.en, %bb.l ], [ %i.fo, %.preheader.i.i.i.i.i.i.i12.loopexit.unr-lcssa ], [ %i.et, %.lr.ph87.i.i.i.i.i.i.i18.epil ] ; 2 uses
  %i.ev = icmp slt i64 %i.ds, %i.de
  br i1 %i.ev, label %.lr.ph91.i.i.i.i.i.i.i15, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEE5coeffEll.exit

.lr.ph87.i.i.i.i.i.i.i18:                         ; preds = %.lr.ph87.i.i.i.i.i.i.i18, %.lr.ph87.i.i.i.i.i.i.i18.preheader.new
  %.05385.i.i.i.i.i.i.i19 = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i18.preheader.new ], [ %i.fp, %.lr.ph87.i.i.i.i.i.i.i18 ] ; 5 uses
  %.07284.i.i.i.i.i.i.i20 = phi double [ %i.en, %.lr.ph87.i.i.i.i.i.i.i18.preheader.new ], [ %i.fo, %.lr.ph87.i.i.i.i.i.i.i18 ] ; 2 uses
  %niter114 = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i18.preheader.new ], [ %niter114.next.3, %.lr.ph87.i.i.i.i.i.i.i18 ]
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.05385.i.i.i.i.i.i.i19
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !105 ; 2 uses
  %i.ey = fcmp olt double %i.ex, %.07284.i.i.i.i.i.i.i20
  %i.ez = select i1 %i.ey, double %i.ex, double %.07284.i.i.i.i.i.i.i20 ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.05385.i.i.i.i.i.i.i19
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !105 ; 2 uses
  %i.fd = fcmp olt double %i.fc, %i.ez
  %i.fe = select i1 %i.fd, double %i.fc, double %i.ez ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.05385.i.i.i.i.i.i.i19
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !105 ; 2 uses
  %i.fi = fcmp olt double %i.fh, %i.fe
  %i.fj = select i1 %i.fi, double %i.fh, double %i.fe ; 2 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.05385.i.i.i.i.i.i.i19
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !105 ; 2 uses
  %i.fn = fcmp olt double %i.fm, %i.fj
  %i.fo = select i1 %i.fn, double %i.fm, double %i.fj ; 3 uses
  %i.fp = add nuw nsw i64 %.05385.i.i.i.i.i.i.i19, 4 ; 2 uses
  %niter114.next.3 = add nuw nsw i64 %niter114, 4 ; 2 uses
  %niter114.ncmp.3 = icmp eq i64 %niter114.next.3, %unroll_iter113
  br i1 %niter114.ncmp.3, label %.preheader.i.i.i.i.i.i.i12.loopexit.unr-lcssa, label %.lr.ph87.i.i.i.i.i.i.i18, !llvm.loop !837

.lr.ph91.i.i.i.i.i.i.i15:                         ; preds = %.preheader.i.i.i.i.i.i.i12, %.lr.ph91.i.i.i.i.i.i.i15
  %.05290.i.i.i.i.i.i.i16 = phi i64 [ %i.fu, %.lr.ph91.i.i.i.i.i.i.i15 ], [ %i.ds, %.preheader.i.i.i.i.i.i.i12 ] ; 2 uses
  %.189.i.i.i.i.i.i.i17 = phi double [ %i.ft, %.lr.ph91.i.i.i.i.i.i.i15 ], [ %.072.lcssa.i.i.i.i.i.i.i13, %.preheader.i.i.i.i.i.i.i12 ] ; 2 uses
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %.05290.i.i.i.i.i.i.i16
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !105 ; 2 uses
  %i.fs = fcmp olt double %i.fr, %.189.i.i.i.i.i.i.i17
  %i.ft = select i1 %i.fs, double %i.fr, double %.189.i.i.i.i.i.i.i17 ; 2 uses
  %i.fu = add nsw i64 %.05290.i.i.i.i.i.i.i16, 1  ; 2 uses
  %i.fv = icmp slt i64 %i.fu, %i.de
  br i1 %i.fv, label %.lr.ph91.i.i.i.i.i.i.i15, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEE5coeffEll.exit, !llvm.loop !838

bb.m:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i5
  %i.fw = load double, ptr %i.dg, align 8, !tbaa !105 ; 3 uses
  %i.fx = icmp sgt i64 %i.de, 1
  br i1 %i.fx, label %.lr.ph96.i.i.i.i.i.i.i33.preheader, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEE5coeffEll.exit

.lr.ph96.i.i.i.i.i.i.i33.preheader:               ; preds = %bb.m
  %i.fy = add nsw i64 %i.de, -1                   ; 2 uses
  %i.fz = add nsw i64 %i.de, -2
  %xtraiter115 = and i64 %i.fy, 3                 ; 3 uses
  %i.ga = icmp ult i64 %i.fz, 3
  br i1 %i.ga, label %.lr.ph96.i.i.i.i.i.i.i33.epil.preheader, label %.lr.ph96.i.i.i.i.i.i.i33.preheader.new

.lr.ph96.i.i.i.i.i.i.i33.preheader.new:           ; preds = %.lr.ph96.i.i.i.i.i.i.i33.preheader
  %unroll_iter120 = and i64 %i.fy, -4
  br label %.lr.ph96.i.i.i.i.i.i.i33

.lr.ph96.i.i.i.i.i.i.i33:                         ; preds = %.lr.ph96.i.i.i.i.i.i.i33, %.lr.ph96.i.i.i.i.i.i.i33.preheader.new
  %.094.i.i.i.i.i.i.i34 = phi i64 [ 1, %.lr.ph96.i.i.i.i.i.i.i33.preheader.new ], [ %i.gu, %.lr.ph96.i.i.i.i.i.i.i33 ] ; 5 uses
  %.293.i.i.i.i.i.i.i35 = phi double [ %i.fw, %.lr.ph96.i.i.i.i.i.i.i33.preheader.new ], [ %i.gt, %.lr.ph96.i.i.i.i.i.i.i33 ] ; 2 uses
  %niter121 = phi i64 [ 0, %.lr.ph96.i.i.i.i.i.i.i33.preheader.new ], [ %niter121.next.3, %.lr.ph96.i.i.i.i.i.i.i33 ]
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.094.i.i.i.i.i.i.i34
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !105 ; 2 uses
  %i.gd = fcmp olt double %i.gc, %.293.i.i.i.i.i.i.i35
  %i.ge = select i1 %i.gd, double %i.gc, double %.293.i.i.i.i.i.i.i35 ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.094.i.i.i.i.i.i.i34
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !105 ; 2 uses
  %i.gi = fcmp olt double %i.gh, %i.ge
  %i.gj = select i1 %i.gi, double %i.gh, double %i.ge ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.094.i.i.i.i.i.i.i34
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !105 ; 2 uses
  %i.gn = fcmp olt double %i.gm, %i.gj
  %i.go = select i1 %i.gn, double %i.gm, double %i.gj ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.094.i.i.i.i.i.i.i34
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !105 ; 2 uses
  %i.gs = fcmp olt double %i.gr, %i.go
  %i.gt = select i1 %i.gs, double %i.gr, double %i.go ; 3 uses
  %i.gu = add nuw nsw i64 %.094.i.i.i.i.i.i.i34, 4 ; 2 uses
  %niter121.next.3 = add nuw i64 %niter121, 4     ; 2 uses
  %niter121.ncmp.3 = icmp eq i64 %niter121.next.3, %unroll_iter120
  br i1 %niter121.ncmp.3, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEE5coeffEll.exit.loopexit.unr-lcssa, label %.lr.ph96.i.i.i.i.i.i.i33, !llvm.loop !839

_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEE5coeffEll.exit.loopexit.unr-lcssa: ; preds = %.lr.ph96.i.i.i.i.i.i.i33
  %lcmp.mod117.not = icmp eq i64 %xtraiter115, 0
  br i1 %lcmp.mod117.not, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEE5coeffEll.exit, label %.lr.ph96.i.i.i.i.i.i.i33.epil.preheader

.lr.ph96.i.i.i.i.i.i.i33.epil.preheader:          ; preds = %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEE5coeffEll.exit.loopexit.unr-lcssa, %.lr.ph96.i.i.i.i.i.i.i33.preheader
  %.094.i.i.i.i.i.i.i34.epil.init = phi i64 [ 1, %.lr.ph96.i.i.i.i.i.i.i33.preheader ], [ %i.gu, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEE5coeffEll.exit.loopexit.unr-lcssa ]
  %.293.i.i.i.i.i.i.i35.epil.init = phi double [ %i.fw, %.lr.ph96.i.i.i.i.i.i.i33.preheader ], [ %i.gt, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEE5coeffEll.exit.loopexit.unr-lcssa ]
  %lcmp.mod119 = icmp ne i64 %xtraiter115, 0
  tail call void @llvm.assume(i1 %lcmp.mod119)
  br label %.lr.ph96.i.i.i.i.i.i.i33.epil

.lr.ph96.i.i.i.i.i.i.i33.epil:                    ; preds = %.lr.ph96.i.i.i.i.i.i.i33.epil, %.lr.ph96.i.i.i.i.i.i.i33.epil.preheader
  %.094.i.i.i.i.i.i.i34.epil = phi i64 [ %i.gz, %.lr.ph96.i.i.i.i.i.i.i33.epil ], [ %.094.i.i.i.i.i.i.i34.epil.init, %.lr.ph96.i.i.i.i.i.i.i33.epil.preheader ] ; 2 uses
  %.293.i.i.i.i.i.i.i35.epil = phi double [ %i.gy, %.lr.ph96.i.i.i.i.i.i.i33.epil ], [ %.293.i.i.i.i.i.i.i35.epil.init, %.lr.ph96.i.i.i.i.i.i.i33.epil.preheader ] ; 2 uses
  %epil.iter116 = phi i64 [ %epil.iter116.next, %.lr.ph96.i.i.i.i.i.i.i33.epil ], [ 0, %.lr.ph96.i.i.i.i.i.i.i33.epil.preheader ]
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.094.i.i.i.i.i.i.i34.epil
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !105 ; 2 uses
  %i.gx = fcmp olt double %i.gw, %.293.i.i.i.i.i.i.i35.epil
  %i.gy = select i1 %i.gx, double %i.gw, double %.293.i.i.i.i.i.i.i35.epil ; 2 uses
  %i.gz = add nuw nsw i64 %.094.i.i.i.i.i.i.i34.epil, 1
  %epil.iter116.next = add i64 %epil.iter116, 1   ; 2 uses
  %epil.iter116.cmp.not = icmp eq i64 %epil.iter116.next, %xtraiter115
  br i1 %epil.iter116.cmp.not, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEE5coeffEll.exit, label %.lr.ph96.i.i.i.i.i.i.i33.epil, !llvm.loop !840

_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEE5coeffEll.exit: ; preds = %.lr.ph91.i.i.i.i.i.i.i15, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEE5coeffEll.exit.loopexit.unr-lcssa, %.lr.ph96.i.i.i.i.i.i.i33.epil, %.preheader.i.i.i.i.i.i.i12, %bb.m
  %.3.i.i.i.i.i.i.i14 = phi double [ %i.gy, %.lr.ph96.i.i.i.i.i.i.i33.epil ], [ %i.fw, %bb.m ], [ %.072.lcssa.i.i.i.i.i.i.i13, %.preheader.i.i.i.i.i.i.i12 ], [ %i.gt, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEE5coeffEll.exit.loopexit.unr-lcssa ], [ %i.ft, %.lr.ph91.i.i.i.i.i.i.i15 ]
  %i.ha = fsub double %.3.i.i.i.i.i.i.i, %.3.i.i.i.i.i.i.i14
  ret double %i.ha
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress noinline uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nounwind }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { noreturn }
attributes #26 = { builtin nounwind }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { nounwind memory(none) }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{!0, !44}
!1 = distinct !{!1, !44}
!2 = distinct !{!2, !44}
!3 = distinct !{!3, !44}
!4 = distinct !{!4, !44}
!5 = distinct !{!5, !44}
!6 = distinct !{!6, !44}
!7 = distinct !{!7, !44}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"any pointer", !13, i64 0}
!18 = !{!"p1 int", !17, i64 0}
!19 = !{!"long", !13, i64 0}
!20 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EEE", !18, i64 0, !19, i64 8, !19, i64 16}
!21 = !{!20, !19, i64 8}
!22 = !{!20, !18, i64 0}
!23 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi2ELi0EEE", !18, i64 0, !19, i64 8}
!24 = !{!23, !18, i64 0}
!25 = !{!23, !19, i64 8}
!26 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLin1EEE", !19, i64 0}
!27 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEELi0EEE", !18, i64 0, !26, i64 8, !26, i64 16}
!28 = !{!27, !18, i64 0}
!29 = !{!26, !19, i64 0}
!30 = !{!"p1 _ZTSN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEE", !17, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEELi1EEE", !27, i64 0}
!33 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0ELb1EEE", !32, i64 0, !30, i64 24, !26, i64 32, !26, i64 40, !19, i64 48}
!34 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLi1EEE"}
!35 = !{!"_ZTSN5Eigen8internal17mapbase_evaluatorINS_5BlockIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEE", !18, i64 0, !34, i64 8, !26, i64 16}
!36 = !{!35, !18, i64 0}
!37 = !{!"_ZTSN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEENS3_IiLin1ELin1ELi0ELin1ELi2EEEEE", !18, i64 0, !34, i64 8, !26, i64 16}
!38 = !{!37, !18, i64 0}
!39 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEEE", !17, i64 0}
!40 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_5BlockIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEE", !17, i64 0}
!41 = !{!"p1 _ZTSN5Eigen8internal9assign_opIiiEE", !17, i64 0}
!42 = !{!"p1 _ZTSN5Eigen5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEE", !17, i64 0}
!43 = !{!14, !14, i64 0}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = !{!13, !13, i64 0}
!49 = !{!"vtable pointer", !12, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EEE", !18, i64 0, !19, i64 8}
!52 = !{!51, !18, i64 0}
!53 = !{!"p1 bool", !17, i64 0}
!54 = !{!"_ZTSN5Eigen12DenseStorageIbLin1ELin1ELi1ELi0EEE", !53, i64 0, !19, i64 8}
!55 = !{!54, !19, i64 8}
!56 = !{!54, !53, i64 0}
!57 = !{!"bool", !13, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!"branch_weights", i32 8, i32 24}
!60 = !{i8 0, i8 2}
!61 = !{}
!62 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!63 = !{!62, !18, i64 8}
!64 = !{!62, !18, i64 0}
!65 = !{i64 8}
!66 = !{!62, !18, i64 16}
!67 = !{!20, !19, i64 16}
!68 = !{!"p1 _ZTSN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEE", !17, i64 0}
!69 = !{!51, !19, i64 8}
!70 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_12SparseMatrixIbLi0EiEEEE", !57, i64 0}
!71 = !{!70, !57, i64 0}
!72 = !{!"_ZTSN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEEE", !70, i64 0}
!73 = !{!"_ZTSN5Eigen8internal17CompressedStorageIbiEE", !53, i64 0, !18, i64 8, !19, i64 16, !19, i64 24}
!74 = !{!"_ZTSN5Eigen12SparseMatrixIbLi0EiEE", !72, i64 0, !19, i64 8, !19, i64 16, !18, i64 24, !18, i64 32, !73, i64 40}
!75 = !{!74, !19, i64 8}
!76 = !{!74, !18, i64 24}
!77 = !{!"_ZTSN5Eigen8internal18scalar_constant_opIbEE", !57, i64 0}
!78 = !{!77, !57, i64 0}
!79 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_7ProductINS_12SparseMatrixIbLi0EiEENS_9TransposeIS3_EELi2EEEEE", !57, i64 0}
!80 = !{!"p1 _ZTSN5Eigen12SparseMatrixIbLi0EiEE", !17, i64 0}
!81 = !{!74, !18, i64 32}
!82 = !{!73, !53, i64 0}
!83 = !{!73, !18, i64 8}
!84 = !{!"p1 double", !17, i64 0}
!85 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !84, i64 0, !19, i64 8, !19, i64 16}
!86 = !{!85, !19, i64 8}
!87 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi1EEE", !84, i64 0, !19, i64 8, !19, i64 16}
!88 = !{!87, !19, i64 8}
!89 = !{!"_ZTSN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEE", !51, i64 0}
!90 = !{!"_ZTSN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEE", !89, i64 0}
!91 = !{!"p1 _ZTSN5Eigen5ArrayIbLin1ELi1ELi0ELin1ELi1EEE", !17, i64 0}
!92 = !{!68, !68, i64 0}
!93 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_7ProductINS_12SparseMatrixIbLi0EiEES3_Li2EEEEE", !57, i64 0}
!94 = !{!93, !57, i64 0}
!95 = !{!91, !91, i64 0}
!96 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_7ProductINS1_INS_12SparseMatrixIbLi0EiEENS_15DiagonalWrapperIKNS_13MatrixWrapperIKNS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIbbLNS7_14ComparisonNameE4EEEKNS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIbEESC_EEEEEEEELi0EEES3_Li2EEEEE", !57, i64 0}
!97 = !{!96, !57, i64 0}
!98 = !{!19, !19, i64 0}
!99 = !{!"p1 _ZTSN5Eigen5ArrayIiLin1ELi1ELi0ELin1ELi1EEE", !17, i64 0}
!100 = !{!99, !99, i64 0}
!101 = !{!"p1 _ZTSN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEE", !17, i64 0}
!102 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi2ELi0EEE", !84, i64 0, !19, i64 8}
!103 = !{!102, !84, i64 0}
!104 = !{!"double", !13, i64 0}
!105 = !{!104, !104, i64 0}
!106 = !{!102, !19, i64 8}
!107 = !{!87, !19, i64 16}
!108 = !{!87, !84, i64 0}
!109 = !{!"p1 _ZTSSt6vectorIiSaIiEE", !17, i64 0}
!110 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataE", !109, i64 0, !109, i64 8, !109, i64 16}
!111 = !{!110, !109, i64 8}
!112 = !{!110, !109, i64 16}
!113 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_12SparseMatrixIbLi1EiEEEE", !57, i64 0}
!114 = !{!113, !57, i64 0}
!115 = !{!"_ZTSN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi1EiEEEE", !113, i64 0}
!116 = !{!"_ZTSN5Eigen12SparseMatrixIbLi1EiEE", !115, i64 0, !19, i64 8, !19, i64 16, !18, i64 24, !18, i64 32, !73, i64 40}
!117 = !{!116, !18, i64 24}
!118 = !{!116, !18, i64 32}
!119 = !{!85, !84, i64 0}
!120 = !{!"p1 _ZTSN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE", !17, i64 0}
!121 = !{!"p1 _ZTSN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEE", !17, i64 0}
!122 = !{!"_ZTSN5Eigen8internal8AllRangeILin1EEE", !26, i64 0}
!123 = !{!110, !109, i64 0}
!124 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!125 = !{!18, !18, i64 0}
!126 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!127 = !{!"branch_weights", !"expected", i32 1073473, i32 2146410175}
!128 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!129 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_9TransposeINS_12SparseMatrixIbLi0EiEEEEEE", !57, i64 0}
!130 = !{!"_ZTSN5Eigen20SparseCompressedBaseINS_9TransposeINS_12SparseMatrixIbLi0EiEEEEEE", !129, i64 0}
!131 = !{!"_ZTSN5Eigen8internal19SparseTransposeImplINS_12SparseMatrixIbLi0EiEELi1024EEE", !130, i64 0}
!132 = !{!"_ZTSN5Eigen13TransposeImplINS_12SparseMatrixIbLi0EiEENS_6SparseEEE", !131, i64 0}
!133 = !{!"_ZTSN5Eigen9TransposeINS_12SparseMatrixIbLi0EiEEEE", !132, i64 0, !80, i64 8}
!134 = !{!74, !19, i64 16}
!135 = !{!133, !80, i64 8}
!136 = !{!17, !17, i64 0}
!137 = !{!"p1 _ZTSN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEE", !17, i64 0}
!138 = !{!121, !121, i64 0}
!139 = !{!73, !19, i64 16}
!140 = !{!116, !19, i64 16}
!141 = !{!116, !19, i64 8}
!142 = !{!73, !19, i64 24}
!143 = !{!53, !53, i64 0}
!144 = !{!"_ZTSN5Eigen13MatrixWrapperINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEEE", !91, i64 0}
!145 = !{!"_ZTSN5Eigen7ProductINS_12SparseMatrixIbLi0EiEENS_13MatrixWrapperINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEEELi0EEE", !80, i64 0, !144, i64 8}
!146 = !{!"_ZTSN5Eigen8internal30plainobjectbase_evaluator_dataIbLi0EEE", !53, i64 0}
!147 = !{!146, !53, i64 0}
!148 = !{!145, !80, i64 0}
!149 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_7ProductINS_12SparseMatrixIbLi0EiEENS_15DiagonalWrapperIKNS_13MatrixWrapperIKNS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIbbLNS7_14ComparisonNameE4EEEKNS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIbEESC_EEEEEEEELi0EEEEE", !57, i64 0}
!150 = !{!"_ZTSN5Eigen11ProductImplINS_12SparseMatrixIbLi0EiEENS_15DiagonalWrapperIKNS_13MatrixWrapperIKNS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIbbLNS6_14ComparisonNameE4EEEKNS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIbEESB_EEEEEEEELi0ENS_6SparseEEE", !149, i64 0}
!151 = !{!"_ZTSN5Eigen14CwiseNullaryOpINS_8internal18scalar_constant_opIbEENS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEEE", !26, i64 0, !34, i64 8, !77, i64 9}
!152 = !{!"_ZTSN5Eigen8internal13scalar_cmp_opIbbLNS0_14ComparisonNameE4EEE"}
!153 = !{!"_ZTSN5Eigen13CwiseBinaryOpINS_8internal13scalar_cmp_opIbbLNS1_14ComparisonNameE4EEEKNS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEKNS_14CwiseNullaryOpINS1_18scalar_constant_opIbEES6_EEEE", !91, i64 0, !151, i64 8, !152, i64 24}
!154 = !{!"_ZTSN5Eigen13MatrixWrapperIKNS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIbbLNS2_14ComparisonNameE4EEEKNS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIbEES7_EEEEEE", !153, i64 0}
!155 = !{!"_ZTSN5Eigen15DiagonalWrapperIKNS_13MatrixWrapperIKNS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIbbLNS3_14ComparisonNameE4EEEKNS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEKNS_14CwiseNullaryOpINS3_18scalar_constant_opIbEES8_EEEEEEEE", !154, i64 8}
!156 = !{!"_ZTSN5Eigen7ProductINS_12SparseMatrixIbLi0EiEENS_15DiagonalWrapperIKNS_13MatrixWrapperIKNS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIbbLNS6_14ComparisonNameE4EEEKNS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIbEESB_EEEEEEEELi0EEE", !150, i64 0, !80, i64 8, !155, i64 16}
!157 = !{!156, !80, i64 8}
!158 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_12SparseMatrixIbLi0ElEEEE", !57, i64 0}
!159 = !{!158, !57, i64 0}
end_hunk_1

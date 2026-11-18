Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/per_edge_normals?download=true
inline.NumInlined: 2720
inline.NumDeleted: 1550
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 76
begin_hunk_0_@_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS3_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_:bb.a
  %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = call noundef double @llvm.sqrt.f64(double %i.cw)
  store double %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, ptr %i.cx, align 8, !tbaa !22
  %i.cy = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.cy, %.pr.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEEEC2ERKSO_.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !402

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %.015.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fs, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cz = load i64, ptr %i.j, align 8, !tbaa !18  ; 9 uses
  %i.da = load i64, ptr %i.p, align 8, !tbaa !19  ; 7 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dc = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.dd = add nsw i64 %i.da, -1
  %i.de = and i64 %i.dd, -4
  %i.df = getelementptr [8 x i8], ptr %i.dc, i64 %.015.i.i.i.i.i.i.i.i.i.i.i.i.i ; 10 uses
  %i.dg = load <2 x double>, ptr %i.df, align 1, !tbaa !72 ; 2 uses
  %i.dh = fmul <2 x double> %i.dg, %i.dg          ; 2 uses
  %i.di = icmp sgt i64 %i.da, 4
  br i1 %i.di, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.c
  %.037.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.dh, %bb.c ], [ %i.ep, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.c ], [ %i.eq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.dj = icmp slt i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.da
  br i1 %i.dj, label %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dk = sub i64 %i.da, %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.dk, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:  ; preds = %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.dq, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.13842.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi <2 x double> [ %i.dp, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.037.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.dl = mul nsw i64 %.143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %i.cz
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.dl
  %i.dn = load <2 x double>, ptr %i.dm, align 1, !tbaa !72 ; 2 uses
  %i.do = fmul <2 x double> %i.dn, %i.dn
  %i.dp = fadd <2 x double> %.13842.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %i.do ; 3 uses
  %i.dq = add nuw nsw i64 %.143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !403

.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.lcssa74.unr = phi <2 x double> [ poison, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dp, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dq, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.13842.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi <2 x double> [ %.037.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dp, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.dr = sub i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.da
  %i.ds = icmp ugt i64 %i.dr, -4
  br i1 %i.ds, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.040.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.eq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %bb.c ] ; 5 uses
  %.03739.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.ep, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.dh, %bb.c ]
  %i.dt = mul nsw i64 %.040.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.cz
  %i.du = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.dt
  %i.dv = load <2 x double>, ptr %i.du, align 1, !tbaa !72 ; 2 uses
  %i.dw = fmul <2 x double> %i.dv, %i.dv
  %i.dx = add nuw nsw i64 %.040.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.dy = mul nsw i64 %i.dx, %i.cz
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.dy
  %i.ea = load <2 x double>, ptr %i.dz, align 1, !tbaa !72 ; 2 uses
  %i.eb = fmul <2 x double> %i.ea, %i.ea
  %i.ec = fadd <2 x double> %i.dw, %i.eb
  %i.ed = add nuw nsw i64 %.040.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.ee = mul nsw i64 %i.ed, %i.cz
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.ee
  %i.eg = load <2 x double>, ptr %i.ef, align 1, !tbaa !72 ; 2 uses
  %i.eh = fmul <2 x double> %i.eg, %i.eg
  %i.ei = add nuw nsw i64 %.040.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.ej = mul nsw i64 %i.ei, %i.cz
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.ej
  %i.el = load <2 x double>, ptr %i.ek, align 1, !tbaa !72 ; 2 uses
  %i.em = fmul <2 x double> %i.el, %i.el
  %i.en = fadd <2 x double> %i.eh, %i.em
  %i.eo = fadd <2 x double> %i.ec, %i.en
  %i.ep = fadd <2 x double> %.03739.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.eo ; 2 uses
  %i.eq = add nuw nsw i64 %.040.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 3 uses
  %i.er = icmp slt i64 %i.eq, %i.de
  br i1 %i.er, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !404

.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fp, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.13842.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.fo, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.13842.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.es = mul nsw i64 %.143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.cz
  %i.et = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.es
  %i.eu = load <2 x double>, ptr %i.et, align 1, !tbaa !72 ; 2 uses
  %i.ev = fmul <2 x double> %i.eu, %i.eu
  %i.ew = fadd <2 x double> %.13842.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ev
  %i.ex = add nuw nsw i64 %.143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.ey = mul nsw i64 %i.ex, %i.cz
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.ey
  %i.fa = load <2 x double>, ptr %i.ez, align 1, !tbaa !72 ; 2 uses
  %i.fb = fmul <2 x double> %i.fa, %i.fa
  %i.fc = fadd <2 x double> %i.ew, %i.fb
  %i.fd = add nuw nsw i64 %.143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.fe = mul nsw i64 %i.fd, %i.cz
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.fe
  %i.fg = load <2 x double>, ptr %i.ff, align 1, !tbaa !72 ; 2 uses
  %i.fh = fmul <2 x double> %i.fg, %i.fg
  %i.fi = fadd <2 x double> %i.fc, %i.fh
  %i.fj = add nuw nsw i64 %.143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.fk = mul nsw i64 %i.fj, %i.cz
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.fk
  %i.fm = load <2 x double>, ptr %i.fl, align 1, !tbaa !72 ; 2 uses
  %i.fn = fmul <2 x double> %i.fm, %i.fm
  %i.fo = fadd <2 x double> %i.fi, %i.fn          ; 2 uses
  %i.fp = add nuw nsw i64 %.143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.fp, %i.da
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !405

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.025.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ zeroinitializer, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.037.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa74.unr, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.fo, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i.i.i, i64 %.015.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fr = call noundef <2 x double> @llvm.sqrt.v2f64(<2 x double> %.025.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  store <2 x double> %i.fr, ptr %i.fq, align 16, !tbaa !72
  %i.fs = add nuw nsw i64 %.015.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ft = icmp slt i64 %i.fs, %i.n
  br i1 %i.ft, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !406

common.resume:                                    ; preds = %bb.h, %.body.i.i.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.fu, %.body.i.i.i.i.i.i ], [ %i.ip, %bb.h ]
  resume { ptr, i32 } %common.resume.op

.body.i.i.i.i.i.i:                                ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fu = landingpad { ptr, i32 }
          cleanup
  %i.fv = load ptr, ptr %i.g, align 8, !tbaa !33
  call void @free(ptr noundef %i.fv) #13
  br label %common.resume

_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEEEC2ERKSO_.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %bb.a, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.fx = load ptr, ptr %i.g, align 8, !tbaa !33
  store ptr %i.fx, ptr %i.fw, align 8, !tbaa !74
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.fz = load ptr, ptr %i.h, align 8, !tbaa !421, !nonnull !23, !align !66
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !18 ; 7 uses
  store i64 %i.gb, ptr %i.fy, align 8, !tbaa !75
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !75 ; 6 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !18
  %.not.i = icmp eq i64 %i.gf, %i.gb
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gh = load i64, ptr %i.gg, align 8
  %.not8.i = icmp eq i64 %i.gh, %i.gd
  %or.cond.i = select i1 %.not.i, i1 %.not8.i, i1 false
  br i1 %or.cond.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEEEC2ERKSO_.exit
  %i.gi = icmp eq i64 %i.gb, 0
  %i.gj = icmp eq i64 %i.gd, 0
  %or.cond.i.i.i = or i1 %i.gi, %i.gj
  br i1 %or.cond.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.gk = sdiv i64 9223372036854775807, %i.gd
  %i.gl = icmp sgt i64 %i.gb, %i.gk
  br i1 %i.gl, label %bb.f, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

bb.f:                                             ; preds = %bb.e
  %i.gm = call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.gm, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.gm, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.e, %bb.d
  %i.gn = mul nsw i64 %i.gd, %i.gb
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.gn, i64 noundef %i.gb, i64 noundef %i.gd)
          to label %thread-pre-split unwind label %bb.h

thread-pre-split:                                 ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %.pr = load i64, ptr %i.gg, align 8, !tbaa !19
  %.pre = load i64, ptr %i.ge, align 8, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %thread-pre-split, %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEEEC2ERKSO_.exit
  %i.go = phi i64 [ %.pre, %thread-pre-split ], [ %i.gb, %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEEEC2ERKSO_.exit ] ; 11 uses
  %i.gp = phi i64 [ %.pr, %thread-pre-split ], [ %i.gd, %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEEEC2ERKSO_.exit ] ; 4 uses
  %i.gq = load ptr, ptr %0, align 8, !tbaa !20    ; 4 uses
  %i.gr = icmp sgt i64 %i.gp, 0
  %i.gs = icmp sgt i64 %i.go, 0
  %or.cond = select i1 %i.gr, i1 %i.gs, i1 false
  br i1 %or.cond, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS5_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNSC_INS0_14scalar_abs2_opIdEESA_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSV_.exit

.preheader.lr.ph.split.i:                         ; preds = %bb.g
  %i.gt = load ptr, ptr %i.a, align 8, !tbaa !424 ; 3 uses
  %i.gu = load i64, ptr %i.f, align 8, !tbaa !69  ; 3 uses
  %i.gv = load ptr, ptr %i.fw, align 8, !tbaa !77 ; 8 uses
  %i.gw = add nuw i64 %i.gp, 2305843009213693951
  %i.gx = mul i64 %i.gu, %i.gw
  %4 = shl i64 %i.go, 3                           ; 2 uses
  %i.gy = add i64 %i.gx, %i.go
  %i.gz = shl i64 %i.gy, 3
  %scevgep = getelementptr i8, ptr %i.gt, i64 %i.gz
  %scevgep50 = getelementptr i8, ptr %i.gv, i64 %4
  %i.ha = mul i64 %i.gp, %i.go
  %i.hb = shl i64 %i.ha, 3
  %scevgep51 = getelementptr i8, ptr %i.gq, i64 %i.hb ; 2 uses
  %min.iters.check53 = icmp ult i64 %i.go, 2
  %bound0 = icmp ult ptr %i.gq, %scevgep50
  %bound1 = icmp ult ptr %i.gv, %scevgep51
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %4, 0
  %i.hc = or i1 %found.conflict, %stride.check
  %bound055 = icmp ult ptr %i.gq, %scevgep
  %bound156 = icmp ult ptr %i.gt, %scevgep51
  %found.conflict57 = and i1 %bound055, %bound156
  %.mask = and i64 %i.gu, 1152921504606846976
  %stride.check58 = icmp ne i64 %.mask, 0
  %i.hd = or i1 %found.conflict57, %stride.check58
  %conflict.rdx = or i1 %i.hc, %i.hd
  %n.vec60 = and i64 %i.go, 9223372036854775806   ; 3 uses
  %cmp.n67 = icmp eq i64 %i.go, %n.vec60
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0812.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.ht, %._crit_edge.i ] ; 3 uses
  %i.he = mul nuw nsw i64 %.0812.i, %i.go
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.gq, i64 %i.he ; 6 uses
  %i.hf = mul nsw i64 %.0812.i, %i.gu
  %invariant.gep10.i = getelementptr [8 x i8], ptr %i.gt, i64 %i.hf ; 6 uses
  %brmerge = select i1 %min.iters.check53, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph52.preheader, label %vector.body61

vector.body61:                                    ; preds = %.preheader.i, %vector.body61
  %index62 = phi i64 [ %index.next65, %vector.body61 ], [ 0, %.preheader.i ] ; 4 uses
  %i.hg = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index62
  %i.hh = getelementptr [8 x i8], ptr %invariant.gep10.i, i64 %index62
  %i.hi = getelementptr [8 x i8], ptr %i.gv, i64 %index62
  %wide.load63 = load <2 x double>, ptr %i.hi, align 8, !tbaa !22, !alias.scope !425
  %wide.load64 = load <2 x double>, ptr %i.hh, align 8, !tbaa !22, !alias.scope !426
  %i.hj = fdiv <2 x double> %wide.load64, %wide.load63
  store <2 x double> %i.hj, ptr %i.hg, align 8, !tbaa !22, !alias.scope !427, !noalias !428
  %index.next65 = add nuw i64 %index62, 2         ; 2 uses
  %i.hk = icmp eq i64 %index.next65, %n.vec60
  br i1 %i.hk, label %middle.block66, label %vector.body61, !llvm.loop !411

middle.block66:                                   ; preds = %vector.body61
  br i1 %cmp.n67, label %._crit_edge.i, label %scalar.ph52.preheader

scalar.ph52.preheader:                            ; preds = %.preheader.i, %middle.block66
  %.09.i.ph = phi i64 [ %n.vec60, %middle.block66 ], [ 0, %.preheader.i ] ; 4 uses
  %i.hl = sub nsw i64 %i.go, %.09.i.ph
  %xtraiter82 = and i64 %i.hl, 3                  ; 2 uses
  %lcmp.mod83.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod83.not, label %scalar.ph52.prol.loopexit, label %scalar.ph52.prol

scalar.ph52.prol:                                 ; preds = %scalar.ph52.preheader, %scalar.ph52.prol
  %.09.i.prol = phi i64 [ %i.hq, %scalar.ph52.prol ], [ %.09.i.ph, %scalar.ph52.preheader ] ; 4 uses
  %prol.iter84 = phi i64 [ %prol.iter84.next, %scalar.ph52.prol ], [ 0, %scalar.ph52.preheader ]
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %.09.i.prol
  %gep11.i.prol = getelementptr [8 x i8], ptr %invariant.gep10.i, i64 %.09.i.prol
  %i.hm = getelementptr [8 x i8], ptr %i.gv, i64 %.09.i.prol
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !22
  %i.ho = load double, ptr %gep11.i.prol, align 8, !tbaa !22
  %i.hp = fdiv double %i.ho, %i.hn
  store double %i.hp, ptr %gep.i.prol, align 8, !tbaa !22
  %i.hq = add nuw nsw i64 %.09.i.prol, 1          ; 2 uses
  %prol.iter84.next = add i64 %prol.iter84, 1     ; 2 uses
  %prol.iter84.cmp.not = icmp eq i64 %prol.iter84.next, %xtraiter82
  br i1 %prol.iter84.cmp.not, label %scalar.ph52.prol.loopexit, label %scalar.ph52.prol, !llvm.loop !412

scalar.ph52.prol.loopexit:                        ; preds = %scalar.ph52.prol, %scalar.ph52.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph52.preheader ], [ %i.hq, %scalar.ph52.prol ]
  %i.hr = sub nsw i64 %.09.i.ph, %i.go
  %i.hs = icmp ugt i64 %i.hr, -4
  br i1 %i.hs, label %._crit_edge.i, label %scalar.ph52

._crit_edge.i:                                    ; preds = %scalar.ph52.prol.loopexit, %scalar.ph52, %middle.block66
  %i.ht = add nuw nsw i64 %.0812.i, 1             ; 2 uses
  %exitcond14.not.i = icmp eq i64 %i.ht, %i.gp
  br i1 %exitcond14.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS5_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNSC_INS0_14scalar_abs2_opIdEESA_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSV_.exit, label %.preheader.i, !llvm.loop !413

scalar.ph52:                                      ; preds = %scalar.ph52.prol.loopexit, %scalar.ph52
  %.09.i = phi i64 [ %i.in, %scalar.ph52 ], [ %.09.i.unr, %scalar.ph52.prol.loopexit ] ; 7 uses
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %.09.i
  %gep11.i = getelementptr [8 x i8], ptr %invariant.gep10.i, i64 %.09.i
  %i.hu = getelementptr [8 x i8], ptr %i.gv, i64 %.09.i
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !22
  %i.hw = load double, ptr %gep11.i, align 8, !tbaa !22
  %i.hx = fdiv double %i.hw, %i.hv
  store double %i.hx, ptr %gep.i, align 8, !tbaa !22
  %i.hy = add nuw nsw i64 %.09.i, 1               ; 3 uses
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.hy
  %gep11.i.1 = getelementptr [8 x i8], ptr %invariant.gep10.i, i64 %i.hy
  %i.hz = getelementptr [8 x i8], ptr %i.gv, i64 %i.hy
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !22
  %i.ib = load double, ptr %gep11.i.1, align 8, !tbaa !22
  %i.ic = fdiv double %i.ib, %i.ia
  store double %i.ic, ptr %gep.i.1, align 8, !tbaa !22
  %i.id = add nuw nsw i64 %.09.i, 2               ; 3 uses
  %gep.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.id
  %gep11.i.2 = getelementptr [8 x i8], ptr %invariant.gep10.i, i64 %i.id
  %i.ie = getelementptr [8 x i8], ptr %i.gv, i64 %i.id
  %i.if = load double, ptr %i.ie, align 8, !tbaa !22
  %i.ig = load double, ptr %gep11.i.2, align 8, !tbaa !22
  %i.ih = fdiv double %i.ig, %i.if
  store double %i.ih, ptr %gep.i.2, align 8, !tbaa !22
  %i.ii = add nuw nsw i64 %.09.i, 3               ; 3 uses
  %gep.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ii
  %gep11.i.3 = getelementptr [8 x i8], ptr %invariant.gep10.i, i64 %i.ii
  %i.ij = getelementptr [8 x i8], ptr %i.gv, i64 %i.ii
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !22
  %i.il = load double, ptr %gep11.i.3, align 8, !tbaa !22
  %i.im = fdiv double %i.il, %i.ik
  store double %i.im, ptr %gep.i.3, align 8, !tbaa !22
  %i.in = add nuw nsw i64 %.09.i, 4               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.in, %i.go
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph52, !llvm.loop !414

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS5_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNSC_INS0_14scalar_abs2_opIdEESA_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSV_.exit: ; preds = %._crit_edge.i, %bb.g
  %i.io = load ptr, ptr %i.g, align 8, !tbaa !33
  call void @free(ptr noundef %i.io) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void

bb.h:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, %bb.f
  %i.ip = landingpad { ptr, i32 }
          cleanup
  %i.iq = load ptr, ptr %i.g, align 8, !tbaa !33
  call void @free(ptr noundef %i.iq) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !70
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !33
  tail call void @free(ptr noundef %i.i) #13
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 3
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #15 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !33
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !70
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #9
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS3_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELi3EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_:bb.a
  %i.gm = load double, ptr %gep11.2.i.1, align 8, !tbaa !22
  %i.gn = fdiv double %i.gm, %i.gl
  store double %i.gn, ptr %gep.2.i.1, align 8, !tbaa !22
  %i.go = add nuw nsw i64 %.09.2.i, 2             ; 3 uses
  %gep.2.i.2 = getelementptr [8 x i8], ptr %invariant.gep.2.i, i64 %i.go
  %gep11.2.i.2 = getelementptr [8 x i8], ptr %invariant.gep10.2.i, i64 %i.go
  %i.gp = getelementptr [8 x i8], ptr %i.dk, i64 %i.go
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !22
  %i.gr = load double, ptr %gep11.2.i.2, align 8, !tbaa !22
  %i.gs = fdiv double %i.gr, %i.gq
  store double %i.gs, ptr %gep.2.i.2, align 8, !tbaa !22
  %i.gt = add nuw nsw i64 %.09.2.i, 3             ; 3 uses
  %gep.2.i.3 = getelementptr [8 x i8], ptr %invariant.gep.2.i, i64 %i.gt
  %gep11.2.i.3 = getelementptr [8 x i8], ptr %invariant.gep10.2.i, i64 %i.gt
  %i.gu = getelementptr [8 x i8], ptr %i.dk, i64 %i.gt
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !22
  %i.gw = load double, ptr %gep11.2.i.3, align 8, !tbaa !22
  %i.gx = fdiv double %i.gw, %i.gv
  store double %i.gx, ptr %gep.2.i.3, align 8, !tbaa !22
  %i.gy = add nuw nsw i64 %.09.2.i, 4             ; 2 uses
  %exitcond.2.not.i.3 = icmp eq i64 %i.gy, %i.dd
  br i1 %exitcond.2.not.i.3, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEEENS3_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS5_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNSC_INS0_14scalar_abs2_opIdEESA_EENS0_10member_sumIddEELi1EEEEELi1ELi3EEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSV_.exit, label %scalar.ph69, !llvm.loop !490

scalar.ph29:                                      ; preds = %scalar.ph29.prol.loopexit, %scalar.ph29
  %.09.i = phi i64 [ %i.hs, %scalar.ph29 ], [ %.09.i.unr, %scalar.ph29.prol.loopexit ] ; 7 uses
  %gep.i = getelementptr [8 x i8], ptr %i.de, i64 %.09.i
  %gep11.i = getelementptr [8 x i8], ptr %i.dh, i64 %.09.i
  %i.gz = getelementptr [8 x i8], ptr %i.dk, i64 %.09.i
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !22
  %i.hb = load double, ptr %gep11.i, align 8, !tbaa !22
  %i.hc = fdiv double %i.hb, %i.ha
  store double %i.hc, ptr %gep.i, align 8, !tbaa !22
  %i.hd = add nuw nsw i64 %.09.i, 1               ; 3 uses
  %gep.i.1 = getelementptr [8 x i8], ptr %i.de, i64 %i.hd
  %gep11.i.1 = getelementptr [8 x i8], ptr %i.dh, i64 %i.hd
  %i.he = getelementptr [8 x i8], ptr %i.dk, i64 %i.hd
  %i.hf = load double, ptr %i.he, align 8, !tbaa !22
  %i.hg = load double, ptr %gep11.i.1, align 8, !tbaa !22
  %i.hh = fdiv double %i.hg, %i.hf
  store double %i.hh, ptr %gep.i.1, align 8, !tbaa !22
  %i.hi = add nuw nsw i64 %.09.i, 2               ; 3 uses
  %gep.i.2 = getelementptr [8 x i8], ptr %i.de, i64 %i.hi
  %gep11.i.2 = getelementptr [8 x i8], ptr %i.dh, i64 %i.hi
  %i.hj = getelementptr [8 x i8], ptr %i.dk, i64 %i.hi
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !22
  %i.hl = load double, ptr %gep11.i.2, align 8, !tbaa !22
  %i.hm = fdiv double %i.hl, %i.hk
  store double %i.hm, ptr %gep.i.2, align 8, !tbaa !22
  %i.hn = add nuw nsw i64 %.09.i, 3               ; 3 uses
  %gep.i.3 = getelementptr [8 x i8], ptr %i.de, i64 %i.hn
  %gep11.i.3 = getelementptr [8 x i8], ptr %i.dh, i64 %i.hn
  %i.ho = getelementptr [8 x i8], ptr %i.dk, i64 %i.hn
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !22
  %i.hq = load double, ptr %gep11.i.3, align 8, !tbaa !22
  %i.hr = fdiv double %i.hq, %i.hp
  store double %i.hr, ptr %gep.i.3, align 8, !tbaa !22
  %i.hs = add nuw nsw i64 %.09.i, 4               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.hs, %i.dd
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph29, !llvm.loop !491

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEEENS3_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS5_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNSC_INS0_14scalar_abs2_opIdEESA_EENS0_10member_sumIddEELi1EEEEELi1ELi3EEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSV_.exit: ; preds = %scalar.ph69.prol.loopexit, %scalar.ph69, %middle.block82, %bb.d
  %i.ht = load ptr, ptr %i.g, align 8, !tbaa !33
  call void @free(ptr noundef %i.ht) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void

bb.e:                                             ; preds = %bb.c
  %i.hu = landingpad { ptr, i32 }
          cleanup
  %i.hv = load ptr, ptr %i.g, align 8, !tbaa !33
  call void @free(ptr noundef %i.hv) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !49
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !50
  tail call void @free(ptr noundef %i.f) #13
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #15 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !48
  store i64 %3, ptr %i.c, align 8, !tbaa !49
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKS3_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIfEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIfEES7_EENS0_10member_sumIffEELi1EEEEELi1ELin1EEEEENS0_9assign_opIffEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::evaluator.570", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !513, !nonnull !23, !align !66 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !48
  store ptr %i.c, ptr %i.a, align 8, !tbaa !85
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 %i.e, ptr %i.f, align 8, !tbaa !86
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5Eigen8internal15unary_evaluatorINS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIfEEKNS_16PartialReduxExprIKNS3_INS0_14scalar_abs2_opIfEEKNS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIffEELi1EEEEELi1ELin1EEENS0_10IndexBasedEfEC2ERKSJ_(ptr noundef nonnull align 8 dereferenceable(33) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !87, !nonnull !23, !align !66
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !48   ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !75   ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !48
  %.not.i = icmp eq i64 %i.p, %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  %.not8.i = icmp eq i64 %i.r, %i.n
  %or.cond.i = select i1 %.not.i, i1 %.not8.i, i1 false
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = icmp eq i64 %i.l, 0
  %i.t = icmp eq i64 %i.n, 0
  %or.cond.i.i.i = or i1 %i.s, %i.t
  br i1 %or.cond.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = sdiv i64 9223372036854775807, %i.n
  %i.v = icmp sgt i64 %i.l, %i.u
  br i1 %i.v, label %bb.d, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

bb.d:                                             ; preds = %bb.c
  %i.w = call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.w, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.c, %bb.b
  %i.x = mul nsw i64 %i.n, %i.l
  invoke void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.x, i64 noundef %i.l, i64 noundef %i.n)
          to label %thread-pre-split unwind label %bb.f

thread-pre-split:                                 ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %.pr = load i64, ptr %i.q, align 8, !tbaa !49
  %.pre = load i64, ptr %i.o, align 8, !tbaa !48
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split, %bb.a
  %i.y = phi i64 [ %.pre, %thread-pre-split ], [ %i.l, %bb.a ] ; 11 uses
  %i.z = phi i64 [ %.pr, %thread-pre-split ], [ %i.n, %bb.a ] ; 4 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !50    ; 4 uses
  %i.ab = icmp sgt i64 %i.z, 0
  %i.ac = icmp sgt i64 %i.y, 0
  %or.cond = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %or.cond, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKS5_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIfEEKNS_16PartialReduxExprIKNSC_INS0_14scalar_abs2_opIfEESA_EENS0_10member_sumIffEELi1EEEEELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEELi0ELi0EE3runERSV_.exit

.preheader.lr.ph.split.i:                         ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !515 ; 3 uses
  %i.af = load i64, ptr %i.f, align 8, !tbaa !86  ; 3 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !90 ; 8 uses
  %i.ah = add nuw i64 %i.z, 4611686018427387903
  %i.ai = mul i64 %i.af, %i.ah
  %4 = shl i64 %i.y, 2                            ; 2 uses
  %i.aj = add i64 %i.ai, %i.y
  %i.ak = shl i64 %i.aj, 2
  %scevgep = getelementptr i8, ptr %i.ae, i64 %i.ak
  %scevgep24 = getelementptr i8, ptr %i.ag, i64 %4
  %i.al = mul i64 %i.z, %i.y
  %i.am = shl i64 %i.al, 2
  %scevgep25 = getelementptr i8, ptr %i.aa, i64 %i.am ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 4
  %bound0 = icmp ult ptr %i.aa, %scevgep24
  %bound1 = icmp ult ptr %i.ag, %scevgep25
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %4, 0
  %i.an = or i1 %found.conflict, %stride.check
  %bound026 = icmp ult ptr %i.aa, %scevgep
  %bound127 = icmp ult ptr %i.ae, %scevgep25
  %found.conflict28 = and i1 %bound026, %bound127
  %.mask = and i64 %i.af, 2305843009213693952
  %stride.check29 = icmp ne i64 %.mask, 0
  %i.ao = or i1 %found.conflict28, %stride.check29
  %conflict.rdx = or i1 %i.an, %i.ao
  %n.vec = and i64 %i.y, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.y, %n.vec
  %xtraiter = and i64 %i.y, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0812.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.bd, %._crit_edge.i ] ; 3 uses
  %i.ap = mul nuw nsw i64 %.0812.i, %i.y
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.aa, i64 %i.ap ; 6 uses
  %i.aq = mul nsw i64 %.0812.i, %i.af
  %invariant.gep10.i = getelementptr [4 x i8], ptr %i.ae, i64 %i.aq ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i ] ; 4 uses
  %i.ar = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index
  %i.as = getelementptr [4 x i8], ptr %invariant.gep10.i, i64 %index
  %i.at = getelementptr [4 x i8], ptr %i.ag, i64 %index
  %wide.load = load <4 x float>, ptr %i.at, align 4, !tbaa !52, !alias.scope !516
  %wide.load30 = load <4 x float>, ptr %i.as, align 4, !tbaa !52, !alias.scope !517
  %i.au = fdiv <4 x float> %wide.load30, %wide.load
  store <4 x float> %i.au, ptr %i.ar, align 4, !tbaa !52, !alias.scope !518, !noalias !519
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !505

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.09.i.prol = phi i64 [ %i.ba, %scalar.ph.prol ], [ %.09.i.ph, %scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.09.i.prol
  %gep11.i.prol = getelementptr [4 x i8], ptr %invariant.gep10.i, i64 %.09.i.prol
  %i.aw = getelementptr [4 x i8], ptr %i.ag, i64 %.09.i.prol
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !52
  %i.ay = load float, ptr %gep11.i.prol, align 4, !tbaa !52
  %i.az = fdiv float %i.ay, %i.ax
  store float %i.az, ptr %gep.i.prol, align 4, !tbaa !52
  %i.ba = add nuw nsw i64 %.09.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !506

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.ba, %scalar.ph.prol ]
  %i.bb = sub nsw i64 %.09.i.ph, %i.y
  %i.bc = icmp ugt i64 %i.bb, -4
  br i1 %i.bc, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bd = add nuw nsw i64 %.0812.i, 1             ; 2 uses
  %exitcond14.not.i = icmp eq i64 %i.bd, %i.z
  br i1 %exitcond14.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKS5_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIfEEKNS_16PartialReduxExprIKNSC_INS0_14scalar_abs2_opIfEESA_EENS0_10member_sumIffEELi1EEEEELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEELi0ELi0EE3runERSV_.exit, label %.preheader.i, !llvm.loop !507

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.bx, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.09.i
  %gep11.i = getelementptr [4 x i8], ptr %invariant.gep10.i, i64 %.09.i
  %i.be = getelementptr [4 x i8], ptr %i.ag, i64 %.09.i
  %i.bf = load float, ptr %i.be, align 4, !tbaa !52
  %i.bg = load float, ptr %gep11.i, align 4, !tbaa !52
  %i.bh = fdiv float %i.bg, %i.bf
  store float %i.bh, ptr %gep.i, align 4, !tbaa !52
  %i.bi = add nuw nsw i64 %.09.i, 1               ; 3 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bi
  %gep11.i.1 = getelementptr [4 x i8], ptr %invariant.gep10.i, i64 %i.bi
  %i.bj = getelementptr [4 x i8], ptr %i.ag, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !52
  %i.bl = load float, ptr %gep11.i.1, align 4, !tbaa !52
  %i.bm = fdiv float %i.bl, %i.bk
  store float %i.bm, ptr %gep.i.1, align 4, !tbaa !52
  %i.bn = add nuw nsw i64 %.09.i, 2               ; 3 uses
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bn
  %gep11.i.2 = getelementptr [4 x i8], ptr %invariant.gep10.i, i64 %i.bn
  %i.bo = getelementptr [4 x i8], ptr %i.ag, i64 %i.bn
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !52
  %i.bq = load float, ptr %gep11.i.2, align 4, !tbaa !52
  %i.br = fdiv float %i.bq, %i.bp
  store float %i.br, ptr %gep.i.2, align 4, !tbaa !52
  %i.bs = add nuw nsw i64 %.09.i, 3               ; 3 uses
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bs
  %gep11.i.3 = getelementptr [4 x i8], ptr %invariant.gep10.i, i64 %i.bs
  %i.bt = getelementptr [4 x i8], ptr %i.ag, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !52
  %i.bv = load float, ptr %gep11.i.3, align 4, !tbaa !52
  %i.bw = fdiv float %i.bv, %i.bu
  store float %i.bw, ptr %gep.i.3, align 4, !tbaa !52
  %i.bx = add nuw nsw i64 %.09.i, 4               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bx, %i.y
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !508

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKS5_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIfEEKNS_16PartialReduxExprIKNSC_INS0_14scalar_abs2_opIfEESA_EENS0_10member_sumIffEELi1EEEEELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEELi0ELi0EE3runERSV_.exit: ; preds = %._crit_edge.i, %bb.e
  %i.by = load ptr, ptr %i.g, align 8, !tbaa !92
  call void @free(ptr noundef %i.by) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void

bb.f:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, %bb.d
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %i.g, align 8, !tbaa !92
  call void @free(ptr noundef %i.ca) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %i.bz
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal15unary_evaluatorINS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIfEEKNS_16PartialReduxExprIKNS3_INS0_14scalar_abs2_opIfEEKNS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIffEELi1EEEEELi1ELin1EEENS0_10IndexBasedEfEC2ERKSJ_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87, !nonnull !23, !align !66 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !48   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit, label %thread-pre-split.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i:                     ; preds = %bb.a
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.d, i64 noundef 1)
          to label %bb.b unwind label %.body

bb.b:                                             ; preds = %thread-pre-split.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !93 ; 10 uses
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !92  ; 10 uses
  %.pre.i30 = ptrtoaddr ptr %.pre.i to i64
  %i.f = sdiv i64 %.pr.i.i.i.i.i.i, 4             ; 2 uses
  %i.g = shl nsw i64 %i.f, 2                      ; 8 uses
  %i.h = icmp sgt i64 %.pr.i.i.i.i.i.i, 3
  br i1 %i.h, label %.lr.ph.i.preheader.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i:                   ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %.lr.ph.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIfEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIfEEKNS3_IfLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIffEELi1EEEEEEENS0_9assign_opIffEELi0EE12assignPacketILi16ELi0EDv4_fEEvl.exit.i.i.i.i.i.i.i, %bb.b
  %i.j = icmp slt i64 %i.g, %.pr.i.i.i.i.i.i
  br i1 %i.j, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !49, !noalias !532 ; 4 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIfEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIfEEKNS3_IfLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIffEELi1EEEEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.us.preheader.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIfEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIfEEKNS3_IfLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIffEELi1EEEEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.us.preheader.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.n = shl i64 %i.f, 4
  %scevgep.i.i.i.i.i.i.i.i = getelementptr i8, ptr %.pre.i, i64 %i.n
  %i.o = sub i64 %.pr.i.i.i.i.i.i, %i.g
  %i.p = shl i64 %i.o, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i.i.i.i.i.i.i, i8 0, i64 %i.p, i1 false), !tbaa !52
  br label %.loopexit

.lr.ph.split.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.q = icmp sgt i64 %i.l, 1
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !50   ; 8 uses
  %i.s = load i64, ptr %i.c, align 8, !tbaa !48   ; 5 uses
  br i1 %i.q, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIfEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIfEEKNS3_IfLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIffEELi1EEEEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i
  %i.t = add nsw i64 %i.l, -1                     ; 2 uses
  %i.u = add nsw i64 %i.l, -2
  %xtraiter39 = and i64 %i.t, 3                   ; 3 uses
  %i.v = icmp ult i64 %i.u, 3
  %unroll_iter = and i64 %i.t, -4
  %lcmp.mod40.not = icmp eq i64 %xtraiter39, 0
  %lcmp.mod42 = icmp ne i64 %xtraiter39, 0
  br label %.lr.ph.i.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIfEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIfEEKNS3_IfLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIffEELi1EEEEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i
  %i.w = ptrtoaddr ptr %i.r to i64
  %i.x = sub i64 %.pr.i.i.i.i.i.i, %i.g           ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 4
end_hunk_1

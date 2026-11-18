Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/edge_vectors?download=true
inline.NumInlined: 1708
inline.NumDeleted: 1040
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS3_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_:bb.a
  %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = call noundef double @llvm.sqrt.f64(double %i.cw)
  store double %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, ptr %i.cx, align 8, !tbaa !23
  %i.cy = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.cy, %.pr.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEEEC2ERKSO_.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !98

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %.015.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fs, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cz = load i64, ptr %i.j, align 8, !tbaa !17  ; 9 uses
  %i.da = load i64, ptr %i.p, align 8, !tbaa !18  ; 7 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dc = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.dd = add nsw i64 %i.da, -1
  %i.de = and i64 %i.dd, -4
  %i.df = getelementptr [8 x i8], ptr %i.dc, i64 %.015.i.i.i.i.i.i.i.i.i.i.i.i.i ; 10 uses
  %i.dg = load <2 x double>, ptr %i.df, align 1, !tbaa !11 ; 2 uses
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
  %i.dn = load <2 x double>, ptr %i.dm, align 1, !tbaa !11 ; 2 uses
  %i.do = fmul <2 x double> %i.dn, %i.dn
  %i.dp = fadd <2 x double> %.13842.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %i.do ; 3 uses
  %i.dq = add nuw nsw i64 %.143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !99

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
  %i.dv = load <2 x double>, ptr %i.du, align 1, !tbaa !11 ; 2 uses
  %i.dw = fmul <2 x double> %i.dv, %i.dv
  %i.dx = add nuw nsw i64 %.040.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.dy = mul nsw i64 %i.dx, %i.cz
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.dy
  %i.ea = load <2 x double>, ptr %i.dz, align 1, !tbaa !11 ; 2 uses
  %i.eb = fmul <2 x double> %i.ea, %i.ea
  %i.ec = fadd <2 x double> %i.dw, %i.eb
  %i.ed = add nuw nsw i64 %.040.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.ee = mul nsw i64 %i.ed, %i.cz
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.ee
  %i.eg = load <2 x double>, ptr %i.ef, align 1, !tbaa !11 ; 2 uses
  %i.eh = fmul <2 x double> %i.eg, %i.eg
  %i.ei = add nuw nsw i64 %.040.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.ej = mul nsw i64 %i.ei, %i.cz
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.ej
  %i.el = load <2 x double>, ptr %i.ek, align 1, !tbaa !11 ; 2 uses
  %i.em = fmul <2 x double> %i.el, %i.el
  %i.en = fadd <2 x double> %i.eh, %i.em
  %i.eo = fadd <2 x double> %i.ec, %i.en
  %i.ep = fadd <2 x double> %.03739.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.eo ; 2 uses
  %i.eq = add nuw nsw i64 %.040.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 3 uses
  %i.er = icmp slt i64 %i.eq, %i.de
  br i1 %i.er, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !100

.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fp, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.13842.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.fo, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.13842.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.es = mul nsw i64 %.143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.cz
  %i.et = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.es
  %i.eu = load <2 x double>, ptr %i.et, align 1, !tbaa !11 ; 2 uses
  %i.ev = fmul <2 x double> %i.eu, %i.eu
  %i.ew = fadd <2 x double> %.13842.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ev
  %i.ex = add nuw nsw i64 %.143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.ey = mul nsw i64 %i.ex, %i.cz
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.ey
  %i.fa = load <2 x double>, ptr %i.ez, align 1, !tbaa !11 ; 2 uses
  %i.fb = fmul <2 x double> %i.fa, %i.fa
  %i.fc = fadd <2 x double> %i.ew, %i.fb
  %i.fd = add nuw nsw i64 %.143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.fe = mul nsw i64 %i.fd, %i.cz
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.fe
  %i.fg = load <2 x double>, ptr %i.ff, align 1, !tbaa !11 ; 2 uses
  %i.fh = fmul <2 x double> %i.fg, %i.fg
  %i.fi = fadd <2 x double> %i.fc, %i.fh
  %i.fj = add nuw nsw i64 %.143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.fk = mul nsw i64 %i.fj, %i.cz
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.fk
  %i.fm = load <2 x double>, ptr %i.fl, align 1, !tbaa !11 ; 2 uses
  %i.fn = fmul <2 x double> %i.fm, %i.fm
  %i.fo = fadd <2 x double> %i.fi, %i.fn          ; 2 uses
  %i.fp = add nuw nsw i64 %.143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.fp, %i.da
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !101

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.025.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ zeroinitializer, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.037.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa74.unr, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.fo, %.lr.ph44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i.i.i, i64 %.015.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fr = call noundef <2 x double> @llvm.sqrt.v2f64(<2 x double> %.025.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  store <2 x double> %i.fr, ptr %i.fq, align 16, !tbaa !11
  %i.fs = add nuw nsw i64 %.015.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ft = icmp slt i64 %i.fs, %i.n
  br i1 %i.ft, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !102

common.resume:                                    ; preds = %bb.h, %.body.i.i.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.fu, %.body.i.i.i.i.i.i ], [ %i.ip, %bb.h ]
  resume { ptr, i32 } %common.resume.op

.body.i.i.i.i.i.i:                                ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fu = landingpad { ptr, i32 }
          cleanup
  %i.fv = load ptr, ptr %i.g, align 8, !tbaa !31
  call void @free(ptr noundef %i.fv) #14
  br label %common.resume

_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEEEC2ERKSO_.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %bb.a, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS6_INS0_14scalar_abs2_opIdEEKNS3_IdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.fx = load ptr, ptr %i.g, align 8, !tbaa !31
  store ptr %i.fx, ptr %i.fw, align 8, !tbaa !131
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.fz = load ptr, ptr %i.h, align 8, !tbaa !128, !nonnull !123, !align !124
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !17 ; 7 uses
  store i64 %i.gb, ptr %i.fy, align 8, !tbaa !132
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !132 ; 6 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !17
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
  %i.gm = call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.gm, align 8, !tbaa !20
  invoke void @__cxa_throw(ptr nonnull %i.gm, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #16
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.e, %bb.d
  %i.gn = mul nsw i64 %i.gd, %i.gb
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.gn, i64 noundef %i.gb, i64 noundef %i.gd)
          to label %thread-pre-split unwind label %bb.h

thread-pre-split:                                 ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %.pr = load i64, ptr %i.gg, align 8, !tbaa !18
  %.pre = load i64, ptr %i.ge, align 8, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %thread-pre-split, %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEEEC2ERKSO_.exit
  %i.go = phi i64 [ %.pre, %thread-pre-split ], [ %i.gb, %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEEEC2ERKSO_.exit ] ; 11 uses
  %i.gp = phi i64 [ %.pr, %thread-pre-split ], [ %i.gd, %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEEEC2ERKSO_.exit ] ; 4 uses
  %i.gq = load ptr, ptr %0, align 8, !tbaa !21    ; 4 uses
  %i.gr = icmp sgt i64 %i.gp, 0
  %i.gs = icmp sgt i64 %i.go, 0
  %or.cond = select i1 %i.gr, i1 %i.gs, i1 false
  br i1 %or.cond, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS5_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNSC_INS0_14scalar_abs2_opIdEESA_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSV_.exit

.preheader.lr.ph.split.i:                         ; preds = %bb.g
  %i.gt = load ptr, ptr %i.a, align 8, !tbaa !134 ; 3 uses
  %i.gu = load i64, ptr %i.f, align 8, !tbaa !127 ; 3 uses
  %i.gv = load ptr, ptr %i.fw, align 8, !tbaa !136 ; 8 uses
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
  %wide.load63 = load <2 x double>, ptr %i.hi, align 8, !tbaa !23, !alias.scope !137
  %wide.load64 = load <2 x double>, ptr %i.hh, align 8, !tbaa !23, !alias.scope !138
  %i.hj = fdiv <2 x double> %wide.load64, %wide.load63
  store <2 x double> %i.hj, ptr %i.hg, align 8, !tbaa !23, !alias.scope !139, !noalias !140
  %index.next65 = add nuw i64 %index62, 2         ; 2 uses
  %i.hk = icmp eq i64 %index.next65, %n.vec60
  br i1 %i.hk, label %middle.block66, label %vector.body61, !llvm.loop !107

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
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !23
  %i.ho = load double, ptr %gep11.i.prol, align 8, !tbaa !23
  %i.hp = fdiv double %i.ho, %i.hn
  store double %i.hp, ptr %gep.i.prol, align 8, !tbaa !23
  %i.hq = add nuw nsw i64 %.09.i.prol, 1          ; 2 uses
  %prol.iter84.next = add i64 %prol.iter84, 1     ; 2 uses
  %prol.iter84.cmp.not = icmp eq i64 %prol.iter84.next, %xtraiter82
  br i1 %prol.iter84.cmp.not, label %scalar.ph52.prol.loopexit, label %scalar.ph52.prol, !llvm.loop !108

scalar.ph52.prol.loopexit:                        ; preds = %scalar.ph52.prol, %scalar.ph52.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph52.preheader ], [ %i.hq, %scalar.ph52.prol ]
  %i.hr = sub nsw i64 %.09.i.ph, %i.go
  %i.hs = icmp ugt i64 %i.hr, -4
  br i1 %i.hs, label %._crit_edge.i, label %scalar.ph52

._crit_edge.i:                                    ; preds = %scalar.ph52.prol.loopexit, %scalar.ph52, %middle.block66
  %i.ht = add nuw nsw i64 %.0812.i, 1             ; 2 uses
  %exitcond14.not.i = icmp eq i64 %i.ht, %i.gp
  br i1 %exitcond14.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS5_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNSC_INS0_14scalar_abs2_opIdEESA_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSV_.exit, label %.preheader.i, !llvm.loop !109

scalar.ph52:                                      ; preds = %scalar.ph52.prol.loopexit, %scalar.ph52
  %.09.i = phi i64 [ %i.in, %scalar.ph52 ], [ %.09.i.unr, %scalar.ph52.prol.loopexit ] ; 7 uses
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %.09.i
  %gep11.i = getelementptr [8 x i8], ptr %invariant.gep10.i, i64 %.09.i
  %i.hu = getelementptr [8 x i8], ptr %i.gv, i64 %.09.i
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !23
  %i.hw = load double, ptr %gep11.i, align 8, !tbaa !23
  %i.hx = fdiv double %i.hw, %i.hv
  store double %i.hx, ptr %gep.i, align 8, !tbaa !23
  %i.hy = add nuw nsw i64 %.09.i, 1               ; 3 uses
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.hy
  %gep11.i.1 = getelementptr [8 x i8], ptr %invariant.gep10.i, i64 %i.hy
  %i.hz = getelementptr [8 x i8], ptr %i.gv, i64 %i.hy
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !23
  %i.ib = load double, ptr %gep11.i.1, align 8, !tbaa !23
  %i.ic = fdiv double %i.ib, %i.ia
  store double %i.ic, ptr %gep.i.1, align 8, !tbaa !23
  %i.id = add nuw nsw i64 %.09.i, 2               ; 3 uses
  %gep.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.id
  %gep11.i.2 = getelementptr [8 x i8], ptr %invariant.gep10.i, i64 %i.id
  %i.ie = getelementptr [8 x i8], ptr %i.gv, i64 %i.id
  %i.if = load double, ptr %i.ie, align 8, !tbaa !23
  %i.ig = load double, ptr %gep11.i.2, align 8, !tbaa !23
  %i.ih = fdiv double %i.ig, %i.if
  store double %i.ih, ptr %gep.i.2, align 8, !tbaa !23
  %i.ii = add nuw nsw i64 %.09.i, 3               ; 3 uses
  %gep.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ii
  %gep11.i.3 = getelementptr [8 x i8], ptr %invariant.gep10.i, i64 %i.ii
  %i.ij = getelementptr [8 x i8], ptr %i.gv, i64 %i.ii
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !23
  %i.il = load double, ptr %gep11.i.3, align 8, !tbaa !23
  %i.im = fdiv double %i.il, %i.ik
  store double %i.im, ptr %gep.i.3, align 8, !tbaa !23
  %i.in = add nuw nsw i64 %.09.i, 4               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.in, %i.go
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph52, !llvm.loop !110

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS5_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNSC_INS0_14scalar_abs2_opIdEESA_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSV_.exit: ; preds = %._crit_edge.i, %bb.g
  %i.io = load ptr, ptr %i.g, align 8, !tbaa !31
  call void @free(ptr noundef %i.io) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void

bb.h:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, %bb.f
  %i.ip = landingpad { ptr, i32 }
          cleanup
  %i.iq = load ptr, ptr %i.g, align 8, !tbaa !31
  call void @free(ptr noundef %i.iq) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
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
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !20
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #16
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !30
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !31
  tail call void @free(ptr noundef %i.i) #14
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !20
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #16
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 3
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #15 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !20
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #16
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !31
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !30
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/quadprog?download=true
inline.NumInlined: 4879
inline.NumDeleted: 2278
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 87
begin_hunk_0_@"_ZZN3igl8copyleft8quadprogERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IdLin1ELi1ELi0ELin1ELi1EEES5_S8_S5_S8_RS6_ENK3$_5clERS3_SB_RNS2_IiLin1ELi1ELi0ELin1ELi1EEES9_iRii":bb.a
.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader121, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader121 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader121 ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.au = load double, ptr %i.at, align 8, !tbaa !32
  store double %i.au, ptr %i.as, align 8, !tbaa !32
  %i.av = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !283

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader121
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader121 ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.aw = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ax = icmp ugt i64 %i.aw, -4
  br i1 %i.ax, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ba = load double, ptr %i.az, align 8, !tbaa !32
  store double %i.ba, ptr %i.ay, align 8, !tbaa !32
  %i.bb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.bb
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.bb
  %i.be = load double, ptr %i.bd, align 8, !tbaa !32
  store double %i.be, ptr %i.bc, align 8, !tbaa !32
  %i.bf = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.bf
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.bf
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !32
  store double %i.bi, ptr %i.bg, align 8, !tbaa !32
  %i.bj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.bj
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.bj
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !32
  store double %i.bm, ptr %i.bk, align 8, !tbaa !32
  %i.bn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bn, %.0.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !284

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block91, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.bo = icmp sgt i64 %i.ah, 1
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.bp = icmp slt i64 %i.ak, %i.x
  br i1 %i.bp, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSERKS3_.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.bq = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, %i.aj
  %i.br = sub i64 %i.x, %i.bq                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.br, 6
  %i.bs = shl i64 %i.x, 3
  %diff.check = icmp ugt i64 %i.bs, -32
  %or.cond118 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond118, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader120, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.br, -4                      ; 3 uses
  %i.bt = add i64 %i.ak, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = add i64 %i.ak, %index                   ; 2 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.bu ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load = load <2 x double>, ptr %i.bw, align 8, !tbaa !32
  %wide.load79 = load <2 x double>, ptr %i.bx, align 8, !tbaa !32
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <2 x double> %wide.load, ptr %i.bv, align 8, !tbaa !32
  store <2 x double> %wide.load79, ptr %i.by, align 8, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !285

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.br, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSERKS3_.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader120

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader120:    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ak, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bt, %middle.block ] ; 4 uses
  %i.ca = sub i64 %i.x, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter124 = and i64 %i.ca, 3                 ; 2 uses
  %lcmp.mod125.not = icmp eq i64 %xtraiter124, 0
  br i1 %lcmp.mod125.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol:            ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader120, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ce, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader120 ] ; 3 uses
  %prol.iter126 = phi i64 [ %prol.iter126.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader120 ]
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !32
  store double %i.cd, ptr %i.cb, align 8, !tbaa !32
  %i.ce = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter126.next = add i64 %prol.iter126, 1   ; 2 uses
  %prol.iter126.cmp.not = icmp eq i64 %prol.iter126.next, %xtraiter124
  br i1 %prol.iter126.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !286

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:   ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader120
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader120 ], [ %i.ce, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.cf = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph, %i.x
  %i.cg = icmp ugt i64 %i.cf, -4
  br i1 %i.cg, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSERKS3_.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cw, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !32
  store double %i.cj, ptr %i.ch, align 8, !tbaa !32
  %i.ck = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ck
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ck
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !32
  store double %i.cn, ptr %i.cl, align 8, !tbaa !32
  %i.co = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.co
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.co
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !32
  store double %i.cr, ptr %i.cp, align 8, !tbaa !32
  %i.cs = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.cs
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.cs
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !32
  store double %i.cv, ptr %i.ct, align 8, !tbaa !32
  %i.cw = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.cw, %i.x
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSERKS3_.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !287

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.da, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %.021.i.i.i.i.i.i.i.i.i.i.i
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.021.i.i.i.i.i.i.i.i.i.i.i
  %i.cz = load <2 x double>, ptr %i.cy, align 1, !tbaa !45
  store <2 x double> %i.cz, ptr %i.cx, align 16, !tbaa !45
  %i.da = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.db = icmp slt i64 %i.da, %i.ak
  br i1 %i.db, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !288

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSERKS3_.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.dc = load i32, ptr %5, align 4, !tbaa !47    ; 2 uses
  %i.dd = add nsw i32 %i.dc, -1
  %i.de = sext i32 %i.dd to i64                   ; 2 uses
  %i.df = icmp slt i64 %indvars.iv.next37, %i.de
  br i1 %i.df, label %.lr.ph16, label %._crit_edge17, !llvm.loop !289

._crit_edge17:                                    ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSERKS3_.exit, %._crit_edge.._crit_edge17_crit_edge
  %.pre-phi = phi i64 [ %.pre, %._crit_edge.._crit_edge17_crit_edge ], [ %i.de, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSERKS3_.exit ]
  %.lcssa10 = phi i32 [ %i.d, %._crit_edge.._crit_edge17_crit_edge ], [ %i.dc, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSERKS3_.exit ]
  %i.dg = sext i32 %.lcssa10 to i64
  %i.dh = load ptr, ptr %2, align 8, !tbaa !28    ; 3 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.dg
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !47
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %.pre-phi
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !47
  %i.dl = load i32, ptr %5, align 4, !tbaa !47
  %i.dm = sext i32 %i.dl to i64                   ; 2 uses
  %i.dn = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.do = getelementptr [8 x i8], ptr %i.dn, i64 %i.dm ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !32
  %i.dq = getelementptr i8, ptr %i.do, i64 -8
  store double %i.dp, ptr %i.dq, align 8, !tbaa !32
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.dm
  store i32 0, ptr %i.dr, align 4, !tbaa !47
  %i.ds = load i32, ptr %5, align 4, !tbaa !47    ; 4 uses
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.dt
  store double 0.000000e+00, ptr %i.du, align 8, !tbaa !32
  %i.dv = icmp sgt i32 %i.ds, 0
  %i.dw = add nsw i32 %i.ds, -1                   ; 7 uses
  br i1 %i.dv, label %.lr.ph22, label %._crit_edge23

.lr.ph22:                                         ; preds = %._crit_edge17
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = load ptr, ptr %0, align 8, !tbaa !19
  %i.dz = load i64, ptr %i.a, align 8, !tbaa !14
  %i.ea = mul nsw i64 %i.dz, %i.dx
  %invariant.gep = getelementptr [8 x i8], ptr %i.dy, i64 %i.ea
  %i.eb = zext nneg i32 %i.ds to i64
  %i.ec = shl nuw nsw i64 %i.eb, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %invariant.gep, i8 0, i64 %i.ec, i1 false), !tbaa !32
  br label %._crit_edge23

._crit_edge23:                                    ; preds = %._crit_edge17, %.lr.ph22
  store i32 %i.dw, ptr %5, align 4, !tbaa !47
  %i.ed = icmp ne i32 %i.dw, 0
  %i.ee = icmp slt i32 %.0130, %i.dw
  %or.cond = and i1 %i.ed, %i.ee
  br i1 %or.cond, label %.lr.ph30, label %.loopexit9

.lr.ph30:                                         ; preds = %._crit_edge23
  %i.ef = load ptr, ptr %0, align 8, !tbaa !19    ; 3 uses
  %i.eg = load i64, ptr %i.a, align 8, !tbaa !14  ; 4 uses
  %i.eh = icmp sgt i32 %i.c, 0
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ej = sext i32 %.0130 to i64                  ; 3 uses
  %i.ek = sext i32 %i.dw to i64                   ; 2 uses
  %wide.trip.count = and i64 %i.b, 2147483647     ; 4 uses
  %i.el = shl nuw nsw i64 %wide.trip.count, 3
  %ident.check.not = icmp eq i64 %i.eg, 1
  %i.em = load ptr, ptr %1, align 8               ; 5 uses
  %i.en = load i64, ptr %i.ei, align 8            ; 4 uses
  %min.iters.check100 = icmp samesign ult i64 %wide.trip.count, 2
  %scevgep95 = getelementptr i8, ptr %i.em, i64 %i.el ; 2 uses
  %n.vec102 = and i64 %i.b, 2147483646            ; 3 uses
  %cmp.n113 = icmp eq i64 %wide.trip.count, %n.vec102
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph30, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph30 ], [ %indvar.next, %.loopexit ] ; 2 uses
  %indvars.iv53 = phi i64 [ %i.ej, %.lr.ph30 ], [ %indvars.iv.next54, %.loopexit ] ; 4 uses
  %indvars.iv42.in = phi i64 [ %i.ej, %.lr.ph30 ], [ %indvars.iv42, %.loopexit ] ; 3 uses
  %i.eo = shl i64 %indvars.iv42.in, 4
  %7 = getelementptr i8, ptr %i.ef, i64 %i.eo
  %scevgep116 = getelementptr i8, ptr %7, i64 8
  %i.ep = shl i64 %indvars.iv42.in, 3
  %i.eq = add i64 %indvar, %i.ej
  %8 = shl i64 %i.eq, 3
  %i.er = add i64 %8, 8
  %indvars.iv42 = add nsw i64 %indvars.iv42.in, 1 ; 3 uses
  %i.es = mul nsw i64 %i.eg, %indvars.iv53        ; 2 uses
  %i.et = getelementptr [8 x i8], ptr %i.ef, i64 %indvars.iv53 ; 3 uses
  %i.eu = getelementptr [8 x i8], ptr %i.et, i64 %i.es ; 2 uses
  %indvars.iv.next54 = add nsw i64 %indvars.iv53, 1 ; 5 uses
  %i.ev = getelementptr [8 x i8], ptr %i.ef, i64 %indvars.iv.next54 ; 3 uses
  %i.ew = getelementptr [8 x i8], ptr %i.ev, i64 %i.es
  %i.ex = load <2 x double>, ptr %i.eu, align 8, !tbaa !32 ; 2 uses
  %i.ey = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ex) ; 2 uses
  %i.ez = extractelement <2 x double> %i.ey, i64 1 ; 5 uses
  %i.fa = extractelement <2 x double> %i.ey, i64 0 ; 6 uses
  %i.fb = fcmp ogt double %i.fa, %i.ez
  br i1 %i.fb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.fc = fdiv double %i.ez, %i.fa                ; 2 uses
  %i.fd = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.fc, double 1.000000e+00)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.fd)
  %i.fe = fmul double %i.fa, %sqrt.i
  br label %"_ZZN3igl8copyleft8quadprogERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IdLin1ELi1ELi0ELin1ELi1EEES5_S8_S5_S8_RS6_ENK3$_0clEdd.exit"

bb.g:                                             ; preds = %bb.e
  %i.ff = fcmp ogt double %i.ez, %i.fa
  br i1 %i.ff, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.fg = fdiv double %i.fa, %i.ez                ; 2 uses
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.fg, double %i.fg, double 1.000000e+00)
  %sqrt1.i = tail call double @llvm.sqrt.f64(double %i.fh)
  %i.fi = fmul double %i.ez, %sqrt1.i
  br label %"_ZZN3igl8copyleft8quadprogERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IdLin1ELi1ELi0ELin1ELi1EEES5_S8_S5_S8_RS6_ENK3$_0clEdd.exit"

bb.i:                                             ; preds = %bb.g
  %i.fj = fmul double %i.fa, f0x3FF6A09E667F3BCD
  br label %"_ZZN3igl8copyleft8quadprogERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IdLin1ELi1ELi0ELin1ELi1EEES5_S8_S5_S8_RS6_ENK3$_0clEdd.exit"

"_ZZN3igl8copyleft8quadprogERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IdLin1ELi1ELi0ELin1ELi1EEES5_S8_S5_S8_RS6_ENK3$_0clEdd.exit": ; preds = %bb.f, %bb.h, %bb.i
  %.0.i = phi double [ %i.fe, %bb.f ], [ %i.fi, %bb.h ], [ %i.fj, %bb.i ] ; 4 uses
  %i.fk = fcmp oeq double %.0.i, 0.000000e+00
  br i1 %i.fk, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %"_ZZN3igl8copyleft8quadprogERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IdLin1ELi1ELi0ELin1ELi1EEES5_S8_S5_S8_RS6_ENK3$_0clEdd.exit"
  %i.fl = insertelement <2 x double> poison, double %.0.i, i64 0
  %i.fm = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fn = fdiv <2 x double> %i.ex, %i.fm          ; 2 uses
  store double 0.000000e+00, ptr %i.ew, align 8, !tbaa !32
  %i.fo = extractelement <2 x double> %i.fn, i64 0 ; 3 uses
  %i.fp = fcmp olt double %i.fo, 0.000000e+00     ; 3 uses
  %i.fq = fneg double %.0.i
  %i.fr = fneg double %i.fo
  %i.fs = extractelement <2 x double> %i.fn, i64 1 ; 2 uses
  %i.ft = fneg double %i.fs
  %.0.i.sink = select i1 %i.fp, double %i.fq, double %.0.i
  %.0129 = select i1 %i.fp, double %i.fr, double %i.fo ; 5 uses
  %.0 = select i1 %i.fp, double %i.ft, double %i.fs ; 5 uses
  store double %.0.i.sink, ptr %i.eu, align 8, !tbaa !32
  %i.fu = fadd double %.0129, 1.000000e+00
  %i.fv = fdiv double %.0, %i.fu                  ; 4 uses
  %i.fw = icmp slt i64 %indvars.iv.next54, %i.ek
  br i1 %i.fw, label %.lr.ph26.lver.check, label %.preheader

.lr.ph26.lver.check:                              ; preds = %bb.j
  br i1 %ident.check.not, label %.lr.ph26.ph, label %.lr.ph26.lver.orig

.lr.ph26.lver.orig:                               ; preds = %.lr.ph26.lver.check, %.lr.ph26.lver.orig
  %indvars.iv44.lver.orig = phi i64 [ %indvars.iv.next45.lver.orig, %.lr.ph26.lver.orig ], [ %indvars.iv42, %.lr.ph26.lver.check ] ; 2 uses
  %i.fx = mul nsw i64 %i.eg, %indvars.iv44.lver.orig ; 2 uses
  %i.fy = getelementptr [8 x i8], ptr %i.et, i64 %i.fx ; 2 uses
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !32 ; 2 uses
  %i.ga = getelementptr [8 x i8], ptr %i.ev, i64 %i.fx ; 2 uses
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !32 ; 2 uses
  %i.gc = fmul double %.0, %i.gb
  %i.gd = tail call double @llvm.fmuladd.f64(double %i.fz, double %.0129, double %i.gc) ; 2 uses
  store double %i.gd, ptr %i.fy, align 8, !tbaa !32
  %i.ge = fadd double %i.fz, %i.gd
  %i.gf = fneg double %i.gb
  %i.gg = tail call double @llvm.fmuladd.f64(double %i.fv, double %i.ge, double %i.gf)
  store double %i.gg, ptr %i.ga, align 8, !tbaa !32
  %indvars.iv.next45.lver.orig = add nsw i64 %indvars.iv44.lver.orig, 1 ; 2 uses
  %lftr.wideiv47.lver.orig = trunc i64 %indvars.iv.next45.lver.orig to i32
  %exitcond48.not.lver.orig = icmp eq i32 %i.dw, %lftr.wideiv47.lver.orig
  br i1 %exitcond48.not.lver.orig, label %.preheader, label %.lr.ph26.lver.orig, !llvm.loop !290

.lr.ph26.ph:                                      ; preds = %.lr.ph26.lver.check
  %load_initial = load double, ptr %scevgep116, align 8
  br label %.lr.ph26

.preheader:                                       ; preds = %.lr.ph26.lver.orig, %.lr.ph26, %bb.j
  br i1 %i.eh, label %.lr.ph28, label %.loopexit

.lr.ph28:                                         ; preds = %.preheader
  %i.gh = mul nsw i64 %i.en, %indvars.iv53        ; 2 uses
  %i.gi = mul nsw i64 %i.en, %indvars.iv.next54   ; 2 uses
  br i1 %min.iters.check100, label %scalar.ph99.preheader, label %vector.memcheck94

vector.memcheck94:                                ; preds = %.lr.ph28
  %i.gj = mul i64 %i.en, %i.ep                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.em, i64 %i.gj
  %scevgep96 = getelementptr i8, ptr %scevgep95, i64 %i.gj
  %i.gk = mul i64 %i.en, %i.er                    ; 2 uses
  %scevgep97 = getelementptr i8, ptr %i.em, i64 %i.gk
  %scevgep98 = getelementptr i8, ptr %scevgep95, i64 %i.gk
  %bound0 = icmp ult ptr %scevgep, %scevgep98
  %bound1 = icmp ult ptr %scevgep97, %scevgep96
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph99.preheader, label %vector.ph101

vector.ph101:                                     ; preds = %vector.memcheck94
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.0, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert103 = insertelement <2 x double> poison, double %.0129, i64 0
  %broadcast.splat104 = shufflevector <2 x double> %broadcast.splatinsert103, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert105 = insertelement <2 x double> poison, double %i.fv, i64 0
  %broadcast.splat106 = shufflevector <2 x double> %broadcast.splatinsert105, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body107

vector.body107:                                   ; preds = %vector.body107, %vector.ph101
  %index108 = phi i64 [ 0, %vector.ph101 ], [ %index.next111, %vector.body107 ] ; 2 uses
  %i.gl = getelementptr [8 x i8], ptr %i.em, i64 %index108 ; 2 uses
  %i.gm = getelementptr [8 x i8], ptr %i.gl, i64 %i.gh ; 2 uses
  %wide.load109 = load <2 x double>, ptr %i.gm, align 8, !tbaa !32, !alias.scope !291, !noalias !294 ; 2 uses
  %i.gn = getelementptr [8 x i8], ptr %i.gl, i64 %i.gi ; 2 uses
  %wide.load110 = load <2 x double>, ptr %i.gn, align 8, !tbaa !32, !alias.scope !294 ; 2 uses
  %i.go = fmul <2 x double> %broadcast.splat, %wide.load110
  %i.gp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load109, <2 x double> %broadcast.splat104, <2 x double> %i.go) ; 2 uses
  store <2 x double> %i.gp, ptr %i.gm, align 8, !tbaa !32, !alias.scope !291, !noalias !294
  %i.gq = fadd <2 x double> %wide.load109, %i.gp
  %i.gr = fneg <2 x double> %wide.load110
  %i.gs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat106, <2 x double> %i.gq, <2 x double> %i.gr)
  store <2 x double> %i.gs, ptr %i.gn, align 8, !tbaa !32, !alias.scope !294
  %index.next111 = add nuw i64 %index108, 2       ; 2 uses
  %i.gt = icmp eq i64 %index.next111, %n.vec102
  br i1 %i.gt, label %middle.block112, label %vector.body107, !llvm.loop !296

middle.block112:                                  ; preds = %vector.body107
  br i1 %cmp.n113, label %.loopexit, label %scalar.ph99.preheader

scalar.ph99.preheader:                            ; preds = %vector.memcheck94, %.lr.ph28, %middle.block112
  %indvars.iv49.ph = phi i64 [ 0, %vector.memcheck94 ], [ 0, %.lr.ph28 ], [ %n.vec102, %middle.block112 ]
  br label %scalar.ph99

.lr.ph26:                                         ; preds = %.lr.ph26.ph, %.lr.ph26
  %store_forwarded = phi double [ %load_initial, %.lr.ph26.ph ], [ %i.hc, %.lr.ph26 ] ; 2 uses
  %indvars.iv44 = phi i64 [ %indvars.iv42, %.lr.ph26.ph ], [ %indvars.iv.next45, %.lr.ph26 ] ; 2 uses
  %i.gu = mul nuw nsw i64 %i.eg, %indvars.iv44    ; 2 uses
  %i.gv = getelementptr [8 x i8], ptr %i.et, i64 %i.gu
  %i.gw = getelementptr [8 x i8], ptr %i.ev, i64 %i.gu ; 2 uses
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !32 ; 2 uses
  %i.gy = fmul double %.0, %i.gx
  %i.gz = tail call double @llvm.fmuladd.f64(double %store_forwarded, double %.0129, double %i.gy) ; 2 uses
  store double %i.gz, ptr %i.gv, align 8, !tbaa !32
  %i.ha = fadd double %store_forwarded, %i.gz
  %i.hb = fneg double %i.gx
  %i.hc = tail call double @llvm.fmuladd.f64(double %i.fv, double %i.ha, double %i.hb) ; 2 uses
  store double %i.hc, ptr %i.gw, align 8, !tbaa !32
  %indvars.iv.next45 = add nsw i64 %indvars.iv44, 1 ; 2 uses
  %lftr.wideiv47 = trunc i64 %indvars.iv.next45 to i32
  %exitcond48.not = icmp eq i32 %i.dw, %lftr.wideiv47
  br i1 %exitcond48.not, label %.preheader, label %.lr.ph26, !llvm.loop !290

scalar.ph99:                                      ; preds = %scalar.ph99.preheader, %scalar.ph99
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %scalar.ph99 ], [ %indvars.iv49.ph, %scalar.ph99.preheader ] ; 2 uses
  %i.hd = getelementptr [8 x i8], ptr %i.em, i64 %indvars.iv49 ; 2 uses
  %i.he = getelementptr [8 x i8], ptr %i.hd, i64 %i.gh ; 2 uses
  %i.hf = load double, ptr %i.he, align 8, !tbaa !32 ; 2 uses
  %i.hg = getelementptr [8 x i8], ptr %i.hd, i64 %i.gi ; 2 uses
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !32 ; 2 uses
  %i.hi = fmul double %.0, %i.hh
  %i.hj = tail call double @llvm.fmuladd.f64(double %i.hf, double %.0129, double %i.hi) ; 2 uses
  store double %i.hj, ptr %i.he, align 8, !tbaa !32
  %i.hk = fadd double %i.hf, %i.hj
  %i.hl = fneg double %i.hh
  %i.hm = tail call double @llvm.fmuladd.f64(double %i.fv, double %i.hk, double %i.hl)
  store double %i.hm, ptr %i.hg, align 8, !tbaa !32
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %exitcond52.not = icmp eq i64 %indvars.iv.next50, %wide.trip.count
  br i1 %exitcond52.not, label %.loopexit, label %scalar.ph99, !llvm.loop !297

.loopexit:                                        ; preds = %scalar.ph99, %middle.block112, %.preheader, %"_ZZN3igl8copyleft8quadprogERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IdLin1ELi1ELi0ELin1ELi1EEES5_S8_S5_S8_RS6_ENK3$_0clEdd.exit"
  %exitcond57.not = icmp eq i64 %indvars.iv.next54, %i.ek
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond57.not, label %.loopexit9, label %bb.e, !llvm.loop !298

.loopexit9:                                       ; preds = %.loopexit, %._crit_edge23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_7ProductINS_9TransposeIKNS2_IdLin1ELin1ELi0ELin1ELin1EEEEES3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISE_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Transpose", align 8  ; 4 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %5 = alloca %"class.Eigen::Matrix", align 8     ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.b = load ptr, ptr %1, align 8, !tbaa !299, !nonnull !302, !align !303
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !304, !nonnull !302, !align !303
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef %i.d, i64 noundef 1)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b
  %.pr.i.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !9 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !304, !nonnull !302, !align !303 ; 2 uses
  %i.j = icmp slt i64 %.pr.i.i.i.i.i, 1
  br i1 %i.j, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.k = load ptr, ptr %5, align 8, !tbaa !27
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.pr.i.i.i.i.i, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !32
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i.i: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i.i, %bb.c, %.thread.i
  %i.l = phi i64 [ 0, %.thread.i ], [ %.pr.i.i.i.i.i, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i.i ], [ %.pr.i.i.i.i.i, %bb.c ]
  %i.m = phi ptr [ %i.g, %.thread.i ], [ %i.i, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !32
  %i.n = load ptr, ptr %1, align 8                ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !16
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.d, label %bb.k

bb.d:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i.i
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !19, !noalias !306 ; 11 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !27, !noalias !309 ; 11 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !9, !noalias !309 ; 10 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEEE3dotINS1_IKNS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = sdiv i64 %i.u, 4
  %i.x = shl nsw i64 %i.w, 2                      ; 4 uses
  %i.y = sdiv i64 %i.u, 2
  %i.z = shl nsw i64 %i.y, 1                      ; 6 uses
  %.off.i.i.i.i.i.i.i.i.i.i.i.i.i = add i64 %i.u, 1
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load <2 x double>, ptr %i.r, align 1, !tbaa !45
  %i.ab = load <2 x double>, ptr %i.s, align 1, !tbaa !45
  %i.ac = fmul <2 x double> %i.aa, %i.ab          ; 3 uses
  %i.ad = icmp sgt i64 %i.u, 3
  br i1 %i.ad, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.af = load <2 x double>, ptr %i.ae, align 1, !tbaa !45
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ah = load <2 x double>, ptr %i.ag, align 1, !tbaa !45
  %i.ai = fmul <2 x double> %i.af, %i.ah          ; 2 uses
  %i.aj = icmp samesign ugt i64 %i.u, 7
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.g
  %.075.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.ai, %bb.g ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.072.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.ac, %bb.g ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ak = fadd <2 x double> %.075.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, %.072.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.al = icmp sgt i64 %i.z, %i.x
  br i1 %i.al, label %bb.h, label %bb.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05480.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 4, %bb.g ] ; 4 uses
  %.054.in79.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.05480.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.g ]
  %.07278.i.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ac, %bb.g ]
  %.07577.i.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ai, %bb.g ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.05480.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.an = load <2 x double>, ptr %i.am, align 1, !tbaa !45
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.05480.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ap = load <2 x double>, ptr %i.ao, align 1, !tbaa !45
  %i.aq = fmul <2 x double> %i.an, %i.ap
  %i.ar = fadd <2 x double> %.07278.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.aq ; 2 uses
  %i.as = add nuw nsw i64 %.054.in79.i.i.i.i.i.i.i.i.i.i.i.i.i, 6 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.as
  %i.au = load <2 x double>, ptr %i.at, align 1, !tbaa !45
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.as
  %i.aw = load <2 x double>, ptr %i.av, align 1, !tbaa !45
  %i.ax = fmul <2 x double> %i.au, %i.aw
  %i.ay = fadd <2 x double> %.07577.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ax ; 2 uses
  %.054.i.i.i.i.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/vertex_ellipse?download=true
inline.NumInlined: 7129
inline.NumDeleted: 3730
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RfSC_:bb.a
  %.182.i.i.i.i.unr = phi float [ %i.aj, %.lr.ph85.i.i.i.i.preheader ], [ %i.ar, %.lr.ph85.i.i.i.i.prol ]
  %i.at = icmp ult i64 %i.an, 3
  br i1 %i.at, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, label %.lr.ph85.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i
  %.05283.i.i.i.i = phi i64 [ %i.bn, %.lr.ph85.i.i.i.i ], [ %.05283.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i = phi float [ %i.bm, %.lr.ph85.i.i.i.i ], [ %.182.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ]
  %i.au = getelementptr inbounds [4 x i8], ptr %i.f, i64 %.05283.i.i.i.i
  %i.av = load float, ptr %i.au, align 4, !tbaa !19 ; 2 uses
  %i.aw = fmul float %i.av, %i.av
  %i.ax = fadd float %.182.i.i.i.i, %i.aw
  %i.ay = getelementptr [4 x i8], ptr %i.f, i64 %.05283.i.i.i.i
  %i.az = getelementptr i8, ptr %i.ay, i64 4
  %i.ba = load float, ptr %i.az, align 4, !tbaa !19 ; 2 uses
  %i.bb = fmul float %i.ba, %i.ba
  %i.bc = fadd float %i.ax, %i.bb
  %i.bd = getelementptr [4 x i8], ptr %i.f, i64 %.05283.i.i.i.i
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %i.bf = load float, ptr %i.be, align 4, !tbaa !19 ; 2 uses
  %i.bg = fmul float %i.bf, %i.bf
  %i.bh = fadd float %i.bc, %i.bg
  %i.bi = getelementptr [4 x i8], ptr %i.f, i64 %.05283.i.i.i.i
  %i.bj = getelementptr i8, ptr %i.bi, i64 12
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !19 ; 2 uses
  %i.bl = fmul float %i.bk, %i.bk
  %i.bm = fadd float %i.bh, %i.bl                 ; 2 uses
  %i.bn = add nsw i64 %.05283.i.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.bn, %i.c
  br i1 %exitcond.not.i.i.i.i.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, label %.lr.ph85.i.i.i.i, !llvm.loop !115

bb.g:                                             ; preds = %bb.b
  %i.bo = load float, ptr %i.f, align 4, !tbaa !19 ; 2 uses
  %i.bp = fmul float %i.bo, %i.bo                 ; 3 uses
  %i.bq = icmp sgt i64 %i.b, 2
  br i1 %i.bq, label %.lr.ph90.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit

.lr.ph90.i.i.i.i.preheader:                       ; preds = %bb.g
  %i.br = add nsw i64 %i.b, -2                    ; 2 uses
  %i.bs = add nsw i64 %i.b, -3
  %xtraiter72 = and i64 %i.br, 3                  ; 3 uses
  %i.bt = icmp ult i64 %i.bs, 3
  br i1 %i.bt, label %.lr.ph90.i.i.i.i.epil.preheader, label %.lr.ph90.i.i.i.i.preheader.new

.lr.ph90.i.i.i.i.preheader.new:                   ; preds = %.lr.ph90.i.i.i.i.preheader
  %unroll_iter = and i64 %i.br, -4
  br label %.lr.ph90.i.i.i.i

.lr.ph90.i.i.i.i:                                 ; preds = %.lr.ph90.i.i.i.i, %.lr.ph90.i.i.i.i.preheader.new
  %.088.i.i.i.i = phi i64 [ 1, %.lr.ph90.i.i.i.i.preheader.new ], [ %i.cn, %.lr.ph90.i.i.i.i ] ; 5 uses
  %.287.i.i.i.i = phi float [ %i.bp, %.lr.ph90.i.i.i.i.preheader.new ], [ %i.cm, %.lr.ph90.i.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph90.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph90.i.i.i.i ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.088.i.i.i.i
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !19 ; 2 uses
  %i.bw = fmul float %i.bv, %i.bv
  %i.bx = fadd float %.287.i.i.i.i, %i.bw
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.088.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !19 ; 2 uses
  %i.cb = fmul float %i.ca, %i.ca
  %i.cc = fadd float %i.bx, %i.cb
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.088.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !19 ; 2 uses
  %i.cg = fmul float %i.cf, %i.cf
  %i.ch = fadd float %i.cc, %i.cg
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.088.i.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !19 ; 2 uses
  %i.cl = fmul float %i.ck, %i.ck
  %i.cm = fadd float %i.ch, %i.cl                 ; 3 uses
  %i.cn = add nuw nsw i64 %.088.i.i.i.i, 4        ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa, label %.lr.ph90.i.i.i.i, !llvm.loop !116

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread: ; preds = %bb.a
  %i.co = load float, ptr %i.d, align 4, !tbaa !19
  br label %bb.h

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph90.i.i.i.i
  %lcmp.mod73.not = icmp eq i64 %xtraiter72, 0
  br i1 %lcmp.mod73.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, label %.lr.ph90.i.i.i.i.epil.preheader

.lr.ph90.i.i.i.i.epil.preheader:                  ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa, %.lr.ph90.i.i.i.i.preheader
  %.088.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph90.i.i.i.i.preheader ], [ %i.cn, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa ]
  %.287.i.i.i.i.epil.init = phi float [ %i.bp, %.lr.ph90.i.i.i.i.preheader ], [ %i.cm, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod75 = icmp ne i64 %xtraiter72, 0
  tail call void @llvm.assume(i1 %lcmp.mod75)
  br label %.lr.ph90.i.i.i.i.epil

.lr.ph90.i.i.i.i.epil:                            ; preds = %.lr.ph90.i.i.i.i.epil, %.lr.ph90.i.i.i.i.epil.preheader
  %.088.i.i.i.i.epil = phi i64 [ %i.ct, %.lr.ph90.i.i.i.i.epil ], [ %.088.i.i.i.i.epil.init, %.lr.ph90.i.i.i.i.epil.preheader ] ; 2 uses
  %.287.i.i.i.i.epil = phi float [ %i.cs, %.lr.ph90.i.i.i.i.epil ], [ %.287.i.i.i.i.epil.init, %.lr.ph90.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph90.i.i.i.i.epil ], [ 0, %.lr.ph90.i.i.i.i.epil.preheader ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.088.i.i.i.i.epil
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !19 ; 2 uses
  %i.cr = fmul float %i.cq, %i.cq
  %i.cs = fadd float %.287.i.i.i.i.epil, %i.cr    ; 2 uses
  %i.ct = add nuw nsw i64 %.088.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter72
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, label %.lr.ph90.i.i.i.i.epil, !llvm.loop !117

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit: ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa, %.lr.ph90.i.i.i.i.epil, %bb.g, %bb.f
  %i.cu = phi float [ %i.aj, %bb.f ], [ %i.cs, %.lr.ph90.i.i.i.i.epil ], [ %i.bp, %bb.g ], [ %i.cm, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa ], [ %.lcssa69.unr, %.lr.ph85.i.i.i.i.prol.loopexit ], [ %i.bm, %.lr.ph85.i.i.i.i ] ; 2 uses
  %i.cv = load float, ptr %i.d, align 4, !tbaa !19 ; 6 uses
  %i.cw = fcmp ugt float %i.cu, f0x00800000
  br i1 %i.cw, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread
  %i.cx = phi float [ %i.co, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread ], [ %i.cv, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit ]
  store float 0.000000e+00, ptr %2, align 4, !tbaa !19
  store float %i.cx, ptr %3, align 4, !tbaa !19
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cz = load ptr, ptr %1, align 8, !tbaa !92    ; 4 uses
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !81 ; 4 uses
  %i.db = ptrtoint ptr %i.cz to i64               ; 2 uses
  %i.dc = and i64 %i.db, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.dd = lshr exact i64 %i.db, 2
  %i.de = sub nsw i64 0, %i.dd
  %i.df = and i64 %i.de, 3
  %i.dg = tail call i64 @llvm.smin.i64(i64 %i.df, i64 %i.da)
  br label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dg, %bb.i ], [ %i.da, %bb.h ] ; 8 uses
  %i.dh = sub i64 %i.da, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.di = sdiv i64 %i.dh, 4                       ; 2 uses
  %i.dj = shl nsw i64 %i.di, 2                    ; 2 uses
  %i.dk = add i64 %i.dj, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.dl = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dl, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dm = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cz, i8 0, i64 %i.dm, i1 false), !tbaa !19
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dn = icmp sgt i64 %i.dh, 3
  br i1 %i.dn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.do = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %scevgep.i = getelementptr i8, ptr %i.cz, i64 %i.do
  %i.dp = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  %smax.i = tail call i64 @llvm.smax.i64(i64 %i.dk, i64 %i.dp)
  %i.dq = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.dr = add i64 %smax.i, %i.dq
  %i.ds = shl i64 %i.dr, 2
  %i.dt = and i64 %i.ds, -16
  %i.du = add i64 %i.dt, 16
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.du, i1 false), !tbaa !47
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dv = icmp slt i64 %i.dk, %i.da
  br i1 %i.dv, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dw = shl i64 %i.di, 4
  %i.dx = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.dy = getelementptr i8, ptr %i.cz, i64 %i.dw
  %scevgep1.i = getelementptr i8, ptr %i.dy, i64 %i.dx
  %i.dz = sub i64 %i.dh, %i.dj
  %i.ea = shl nuw i64 %i.dz, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i, i8 0, i64 %i.ea, i1 false), !tbaa !19
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit

.critedge:                                        ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit
  %i.eb = fmul float %i.cv, %i.cv
  %i.ec = fadd float %i.cu, %i.eb
  %i.ed = tail call noundef float @sqrtf(float noundef %i.ec) #26 ; 2 uses
  %i.ee = fcmp ult float %i.cv, 0.000000e+00
  %i.ef = fneg float %i.ed
  %storemerge = select i1 %i.ee, float %i.ed, float %i.ef ; 2 uses
  store float %storemerge, ptr %3, align 4, !tbaa !19
  %i.eg = fsub float %i.cv, %storemerge           ; 13 uses
  %i.eh = load ptr, ptr %1, align 8, !tbaa !92    ; 14 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !81 ; 8 uses
  %i.ek = ptrtoint ptr %i.eh to i64               ; 4 uses
  %i.el = and i64 %i.ek, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.el, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %.critedge
  %i.em = lshr exact i64 %i.ek, 2
  %i.en = sub nsw i64 0, %i.em
  %i.eo = and i64 %i.en, 3
  %i.ep = tail call i64 @llvm.smin.i64(i64 %i.eo, i64 %i.ej)
  br label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %.critedge
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ep, %bb.j ], [ %i.ej, %.critedge ] ; 11 uses
  %i.eq = sub nsw i64 %i.ej, %.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.er = sdiv i64 %i.eq, 4                       ; 2 uses
  %i.es = shl nsw i64 %i.er, 2
  %i.et = add nsw i64 %i.es, %.0.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.eu = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.eu, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader67, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.ev = sub i64 %i.ek, %i.e
  %i.ew = add i64 %i.ev, -5
  %diff.check = icmp ult i64 %i.ew, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader67, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.eg, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %index ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %wide.load = load <4 x float>, ptr %i.ey, align 4, !tbaa !19
  %wide.load48 = load <4 x float>, ptr %i.ez, align 4, !tbaa !19
  %i.fa = fdiv <4 x float> %wide.load, %broadcast.splat
  %i.fb = fdiv <4 x float> %wide.load48, %broadcast.splat
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store <4 x float> %i.fa, ptr %i.ex, align 4, !tbaa !19
  store <4 x float> %i.fb, ptr %i.fc, align 4, !tbaa !19
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fd = icmp eq i64 %index.next, %n.vec
  br i1 %i.fd, label %middle.block, label %vector.body, !llvm.loop !118

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader67

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader67:         ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter76 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod77.not = icmp eq i64 %xtraiter76, 0
  br i1 %lcmp.mod77.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader67, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.fi, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader67 ] ; 3 uses
  %prol.iter78 = phi i64 [ %prol.iter78.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader67 ]
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !19
  %i.fh = fdiv float %i.fg, %i.eg
  store float %i.fh, ptr %i.fe, align 4, !tbaa !19
  %i.fi = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter78.next = add i64 %prol.iter78, 1     ; 2 uses
  %prol.iter78.cmp.not = icmp eq i64 %prol.iter78.next, %xtraiter76
  br i1 %prol.iter78.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !119

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader67
  %.05.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader67 ], [ %i.fi, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.fj = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i.i.i.i.i
  %i.fk = icmp ugt i64 %i.fj, -4
  br i1 %i.fk, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ge, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !19
  %i.fo = fdiv float %i.fn, %i.eg
  store float %i.fo, ptr %i.fl, align 4, !tbaa !19
  %i.fp = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.fp
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fp
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !19
  %i.ft = fdiv float %i.fs, %i.eg
  store float %i.ft, ptr %i.fq, align 4, !tbaa !19
  %i.fu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.fu
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fu
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !19
  %i.fy = fdiv float %i.fx, %i.eg
  store float %i.fy, ptr %i.fv, align 4, !tbaa !19
  %i.fz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.fz
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fz
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !19
  %i.gd = fdiv float %i.gc, %i.eg
  store float %i.gd, ptr %i.ga, align 4, !tbaa !19
  %i.ge = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ge, %.0.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !120

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.gf = icmp sgt i64 %i.eq, 3
  br i1 %i.gf, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i:             ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.gg = insertelement <4 x float> poison, float %i.eg, i64 0
  %i.gh = shufflevector <4 x float> %i.gg, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.gi = icmp slt i64 %i.et, %i.ej
  br i1 %i.gi, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLin1ELi1ELi0ELi2ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %4 = shl nsw i64 %i.er, 2
  %i.gj = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %4
  %i.gk = sub i64 %i.ej, %i.gj                    ; 3 uses
  %min.iters.check52 = icmp ult i64 %i.gk, 8
  br i1 %min.iters.check52, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader66, label %vector.memcheck49

vector.memcheck49:                                ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader
  %i.gl = sub i64 %i.ek, %i.e
  %i.gm = add i64 %i.gl, -5
  %diff.check50 = icmp ult i64 %i.gm, 31
  br i1 %diff.check50, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader66, label %vector.ph53

vector.ph53:                                      ; preds = %vector.memcheck49
  %n.vec54 = and i64 %i.gk, -8                    ; 3 uses
  %i.gn = add i64 %i.et, %n.vec54
  %broadcast.splatinsert55 = insertelement <4 x float> poison, float %i.eg, i64 0
  %broadcast.splat56 = shufflevector <4 x float> %broadcast.splatinsert55, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body57

vector.body57:                                    ; preds = %vector.body57, %vector.ph53
  %index58 = phi i64 [ 0, %vector.ph53 ], [ %index.next61, %vector.body57 ] ; 2 uses
  %i.go = add i64 %i.et, %index58                 ; 2 uses
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.go ; 2 uses
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.go ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %wide.load59 = load <4 x float>, ptr %i.gq, align 4, !tbaa !19
  %wide.load60 = load <4 x float>, ptr %i.gr, align 4, !tbaa !19
  %i.gs = fdiv <4 x float> %wide.load59, %broadcast.splat56
  %i.gt = fdiv <4 x float> %wide.load60, %broadcast.splat56
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store <4 x float> %i.gs, ptr %i.gp, align 4, !tbaa !19
  store <4 x float> %i.gt, ptr %i.gu, align 4, !tbaa !19
  %index.next61 = add nuw i64 %index58, 8         ; 2 uses
  %i.gv = icmp eq i64 %index.next61, %n.vec54
  br i1 %i.gv, label %middle.block62, label %vector.body57, !llvm.loop !121

middle.block62:                                   ; preds = %vector.body57
  %cmp.n63 = icmp eq i64 %i.gk, %n.vec54
  br i1 %cmp.n63, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLin1ELi1ELi0ELi2ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader66

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader66:       ; preds = %vector.memcheck49, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block62
  %.05.i18.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.et, %vector.memcheck49 ], [ %i.et, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.gn, %middle.block62 ] ; 4 uses
  %i.gw = sub i64 %i.ej, %.05.i18.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter79 = and i64 %i.gw, 3                  ; 2 uses
  %lcmp.mod80.not = icmp eq i64 %xtraiter79, 0
  br i1 %lcmp.mod80.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader66, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.hb, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader66 ] ; 3 uses
  %prol.iter81 = phi i64 [ %prol.iter81.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader66 ]
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.prol
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.f, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.prol
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !19
  %i.ha = fdiv float %i.gz, %i.eg
  store float %i.ha, ptr %i.gx, align 4, !tbaa !19
  %i.hb = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter81.next = add i64 %prol.iter81, 1     ; 2 uses
  %prol.iter81.cmp.not = icmp eq i64 %prol.iter81.next, %xtraiter79
  br i1 %prol.iter81.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !122

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit:     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader66
  %.05.i18.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader66 ], [ %i.hb, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.hc = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, %i.ej
  %i.hd = icmp ugt i64 %i.hc, -4
  br i1 %i.hd, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLin1ELi1ELi0ELi2ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hx, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.he = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.f, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !19
  %i.hh = fdiv float %i.hg, %i.eg
  store float %i.hh, ptr %i.he, align 4, !tbaa !19
  %i.hi = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.hi
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.hi
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !19
  %i.hm = fdiv float %i.hl, %i.eg
  store float %i.hm, ptr %i.hj, align 4, !tbaa !19
  %i.hn = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.hn
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.hn
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !19
  %i.hr = fdiv float %i.hq, %i.eg
  store float %i.hr, ptr %i.ho, align 4, !tbaa !19
  %i.hs = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.hs
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.hs
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !19
  %i.hw = fdiv float %i.hv, %i.eg
  store float %i.hw, ptr %i.ht, align 4, !tbaa !19
  %i.hx = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.hx, %i.ej
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLin1ELi1ELi0ELi2ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, !llvm.loop !123

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ic, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.f, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.ia = load <4 x float>, ptr %i.hz, align 1, !tbaa !47
  %i.ib = fdiv <4 x float> %i.ia, %i.gh
  store <4 x float> %i.ib, ptr %i.hy, align 16, !tbaa !47
  %i.ic = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.id = icmp slt i64 %i.ic, %i.et
  br i1 %i.id, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, !llvm.loop !124

_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLin1ELi1ELi0ELi2ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, %middle.block62, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ie = load float, ptr %3, align 4, !tbaa !19  ; 2 uses
  %i.if = fsub float %i.ie, %i.cv
  %i.ig = fdiv float %i.if, %i.ie
  store float %i.ig, ptr %2, align 4, !tbaa !19
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLin1ELi1ELi0ELi2ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal24selfadjoint_product_implINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi17ELb0ENS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS3_IfLin1ELi1ELi0ELi2ELi1EEEEEKNS2_INS2_IS4_Li2ELi1ELb1EEELin1ELi1ELb0EEEEELi0ELb1EE3runINS2_INS3_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEEEvRT_RKS5_RKSJ_RKf(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(121) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load float, ptr %3, align 4, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !102
  %i.e = fmul float %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !81   ; 4 uses
  %i.h = icmp ugt i64 %i.g, 4611686018427387903
  br i1 %i.h, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit39

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !8
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit39: ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !104    ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit39
  %i.k = shl nuw i64 %i.g, 2                      ; 2 uses
  %i.l = icmp samesign ult i64 %i.g, 32769
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = add nuw nsw i64 %i.k, 15
  %i.n = alloca i8, i64 %i.m, align 16            ; 2 uses
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.e:                                             ; preds = %bb.c
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.k) #29 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.f:                                             ; preds = %bb.e
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !8
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.e, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit39, %bb.d
  %i.r = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit39 ], [ %i.n, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %i.s = phi ptr [ %i.j, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit39 ], [ %i.n, %bb.d ], [ %i.o, %bb.e ]
  %i.t = icmp samesign ugt i64 %i.g, 32768        ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !81   ; 4 uses
  %i.w = icmp ugt i64 %i.v, 4611686018427387903
  br i1 %i.w, label %bb.g, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.x, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
          to label %.noexc40 unwind label %bb.p

.noexc40:                                         ; preds = %bb.g
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %.not35 = icmp eq ptr %i.y, null
  br i1 %.not35, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit
  %i.z = shl nuw i64 %i.v, 2                      ; 2 uses
  %i.aa = icmp samesign ult i64 %i.v, 32769
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = add nuw nsw i64 %i.z, 15
  %i.ac = alloca i8, i64 %i.ab, align 16          ; 2 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.z) #29 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.k, label %bb.l
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal33selfadjoint_matrix_vector_productIflLi0ELi1ELb0ELb0ELi0EE3runElPKflS4_Pff:bb.a
  %.0199205 = phi <4 x float> [ %i.dk, %.lr.ph213 ], [ zeroinitializer, %.lr.ph213.preheader ]
  %i.cw = load <4 x float>, ptr %.0143207, align 1, !tbaa !47 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0143207, i64 16
  %i.cy = load <4 x float>, ptr %.0142208, align 1, !tbaa !47 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0142208, i64 16
  %i.da = load <4 x float>, ptr %.0141209, align 1, !tbaa !47 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0141209, i64 16
  %i.dc = load <4 x float>, ptr %.0140210, align 16, !tbaa !47
  %i.dd = fmul <4 x float> %i.ai, %i.cy
  %i.de = fadd <4 x float> %i.dd, %i.dc
  %i.df = fmul <4 x float> %i.ad, %i.cw
  %i.dg = fadd <4 x float> %i.df, %i.de
  %i.dh = fmul <4 x float> %i.cw, %i.da
  %i.di = fadd <4 x float> %.0196206, %i.dh       ; 2 uses
  %i.dj = fmul <4 x float> %i.cy, %i.da
  %i.dk = fadd <4 x float> %.0199205, %i.dj       ; 2 uses
  store <4 x float> %i.dg, ptr %.0140210, align 16, !tbaa !47
  %i.dl = getelementptr inbounds nuw i8, ptr %.0140210, i64 16
  %i.dm = add nsw i64 %.0139211, 4                ; 2 uses
  %i.dn = icmp slt i64 %i.dm, %i.av
  br i1 %i.dn, label %.lr.ph213, label %.preheader200, !llvm.loop !128

._crit_edge220:                                   ; preds = %.lr.ph219, %.preheader200
  %i.do = phi <2 x float> [ %i.bs, %.preheader200 ], [ %i.eu, %.lr.ph219 ]
  %i.dp = shufflevector <4 x float> %.0196.lcssa, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.dq = fadd <4 x float> %.0196.lcssa, %i.dp    ; 2 uses
  %i.dr = shufflevector <4 x float> %.0199.lcssa, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ds = fadd <4 x float> %.0199.lcssa, %i.dr    ; 2 uses
  %i.dt = shufflevector <4 x float> %i.dq, <4 x float> %i.ds, <2 x i32> <i32 0, i32 4>
  %i.du = shufflevector <4 x float> %i.dq, <4 x float> %i.ds, <2 x i32> <i32 1, i32 5>
  %i.dv = fadd <2 x float> %i.dt, %i.du
  %i.dw = fadd <2 x float> %i.dv, %i.do
  %i.dx = load <2 x float>, ptr %i.az, align 4, !tbaa !19
  %i.dy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.f, <2 x float> %i.dw, <2 x float> %i.dx)
  store <2 x float> %i.dy, ptr %i.az, align 4, !tbaa !19
  %i.dz = icmp samesign ult i64 %i.aj, %i.b
  br i1 %i.dz, label %.lr.ph225, label %.preheader, !llvm.loop !129

.lr.ph219:                                        ; preds = %.preheader200, %.lr.ph219
  %.0138218 = phi i64 [ %i.ev, %.lr.ph219 ], [ %i.av, %.preheader200 ] ; 5 uses
  %i.ea = phi <2 x float> [ %i.eu, %.lr.ph219 ], [ %i.bs, %.preheader200 ]
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.v, i64 %.0138218 ; 2 uses
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !19
  %i.ed = fmul float %i.ab, %i.ec
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.y, i64 %.0138218 ; 2 uses
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !19
  %i.eg = fmul float %i.ag, %i.ef
  %i.eh = fadd float %i.ed, %i.eg
  %i.ei = getelementptr inbounds [4 x i8], ptr %4, i64 %.0138218 ; 2 uses
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !19
  %i.ek = fadd float %i.ej, %i.eh
  store float %i.ek, ptr %i.ei, align 4, !tbaa !19
  %i.el = getelementptr inbounds [4 x i8], ptr %3, i64 %.0138218
  %i.em = load float, ptr %i.eb, align 4, !tbaa !19
  %i.en = load float, ptr %i.el, align 4, !tbaa !19
  %i.eo = load float, ptr %i.ee, align 4, !tbaa !19
  %i.ep = insertelement <2 x float> poison, float %i.en, i64 0
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> zeroinitializer
  %i.er = insertelement <2 x float> poison, float %i.em, i64 0
  %i.es = insertelement <2 x float> %i.er, float %i.eo, i64 1
  %i.et = fmul <2 x float> %i.eq, %i.es
  %i.eu = fadd <2 x float> %i.ea, %i.et           ; 2 uses
  %i.ev = add nsw i64 %.0138218, 1                ; 2 uses
  %i.ew = icmp slt i64 %i.ev, %0
  br i1 %i.ew, label %.lr.ph219, label %._crit_edge220, !llvm.loop !130

._crit_edge234:                                   ; preds = %._crit_edge230.thread, %.preheader
  ret void

.lr.ph229.preheader:                              ; preds = %.lr.ph233.preheader, %._crit_edge230
  %i.ex = phi i64 [ %i.fp, %._crit_edge230 ], [ %i.s, %.lr.ph233.preheader ] ; 6 uses
  %i.ey = phi ptr [ %i.fm, %._crit_edge230 ], [ %i.p, %.lr.ph233.preheader ] ; 2 uses
  %i.ez = phi float [ %i.fi, %._crit_edge230 ], [ %i.l, %.lr.ph233.preheader ]
  %i.fa = phi i64 [ %i.fe, %._crit_edge230 ], [ %i.h, %.lr.ph233.preheader ]
  %i.fb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fa
  br label %.lr.ph229

._crit_edge230.thread:                            ; preds = %._crit_edge230, %.lr.ph233.preheader
  %.lcssa256 = phi ptr [ %i.p, %.lr.ph233.preheader ], [ %i.fm, %._crit_edge230 ]
  %.lcssa255 = phi float [ %i.r, %.lr.ph233.preheader ], [ %i.fo, %._crit_edge230 ]
  %i.fc = tail call float @llvm.fmuladd.f32(float %5, float 0.000000e+00, float %.lcssa255)
  store float %i.fc, ptr %.lcssa256, align 4, !tbaa !19
  br label %._crit_edge234

._crit_edge230:                                   ; preds = %.lr.ph229
  %.pre = load float, ptr %i.ey, align 4, !tbaa !19
  %i.fd = tail call float @llvm.fmuladd.f32(float %5, float %i.gb, float %.pre)
  store float %i.fd, ptr %i.ey, align 4, !tbaa !19
  %i.fe = mul nsw i64 %i.ex, %2                   ; 2 uses
  %i.ff = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fe
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ex
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !19
  %i.fi = fmul float %5, %i.fh                    ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.ex
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !19
  %i.fl = fmul float %i.fk, %i.fi
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ex ; 4 uses
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !19
  %i.fo = fadd float %i.fn, %i.fl                 ; 2 uses
  store float %i.fo, ptr %i.fm, align 4, !tbaa !19
  %i.fp = add nuw nsw i64 %i.ex, 1                ; 2 uses
  %i.fq = icmp slt i64 %i.fp, %0
  br i1 %i.fq, label %.lr.ph229.preheader, label %._crit_edge230.thread

.lr.ph229:                                        ; preds = %.lr.ph229.preheader, %.lr.ph229
  %.0227 = phi i64 [ %i.gc, %.lr.ph229 ], [ %i.ex, %.lr.ph229.preheader ] ; 4 uses
  %.0136226 = phi float [ %i.gb, %.lr.ph229 ], [ 0.000000e+00, %.lr.ph229.preheader ]
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %.0227 ; 2 uses
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !19
  %i.ft = fmul float %i.ez, %i.fs
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.0227 ; 2 uses
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !19
  %i.fw = fadd float %i.fv, %i.ft
  store float %i.fw, ptr %i.fu, align 4, !tbaa !19
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0227
  %i.fy = load float, ptr %i.fr, align 4, !tbaa !19
  %i.fz = load float, ptr %i.fx, align 4, !tbaa !19
  %i.ga = fmul float %i.fy, %i.fz
  %i.gb = fadd float %.0136226, %i.ga             ; 2 uses
  %i.gc = add nuw nsw i64 %.0227, 1               ; 2 uses
  %i.gd = icmp slt i64 %i.gc, %0
  br i1 %i.gd, label %.lr.ph229, label %._crit_edge230, !llvm.loop !131
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #14

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal33selfadjoint_rank2_update_selectorIflNS_5BlockINS2_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEENS2_INS3_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELi1EE3runEPflRKS6_RKS8_RKf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !81   ; 5 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = ptrtoaddr ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = and i64 %i.d, 3
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.f, 0
  %i.g = shl i64 %i.b, 2
  %i.h = shl i64 %1, 2
  %i.i = getelementptr i8, ptr %0, i64 %i.g
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS9_INSA_17scalar_product_opIffEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSM_INS2_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_KNSF_ISH_KNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSM_IKNSM_INSM_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS9_INSA_17scalar_product_opIffEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSM_INS2_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_KNSF_ISH_KNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSM_IKNSM_INSM_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit
  %.062 = phi i64 [ 0, %.lr.ph ], [ %i.fv, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS9_INSA_17scalar_product_opIffEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSM_INS2_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_KNSF_ISH_KNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSM_IKNSM_INSM_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit ] ; 8 uses
  %i.j = xor i64 %.062, -1
  %i.k = add nsw i64 %i.b, %i.j
  %i.l = mul i64 %i.h, %.062
  %scevgep66 = getelementptr i8, ptr %i.i, i64 %i.l ; 2 uses
  %i.m = load float, ptr %4, align 4, !tbaa !19   ; 2 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !73     ; 5 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.062
  %i.p = load float, ptr %i.o, align 4, !tbaa !19
  %i.q = fmul float %i.m, %i.p                    ; 9 uses
  %i.r = sub nsw i64 %i.b, %.062                  ; 9 uses
  %i.s = load i64, ptr %i.e, align 8, !tbaa !81, !noalias !132 ; 2 uses
  %i.t = sub i64 %i.s, %i.r                       ; 3 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !104, !noalias !132 ; 5 uses
  %i.v = getelementptr [4 x i8], ptr %i.u, i64 %i.t ; 10 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.062
  %i.x = load float, ptr %i.w, align 4, !tbaa !19
  %i.y = fmul float %i.m, %i.x                    ; 9 uses
  %i.z = load i64, ptr %i.a, align 8, !tbaa !81, !noalias !135 ; 2 uses
  %i.aa = sub i64 %i.z, %i.r                      ; 3 uses
  %i.ab = getelementptr [4 x i8], ptr %i.n, i64 %i.aa ; 10 uses
  %i.ac = mul i64 %.062, %1
  %i.ad = getelementptr [4 x i8], ptr %0, i64 %i.ac
  %i.ae = getelementptr [4 x i8], ptr %i.ad, i64 %.062 ; 14 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = lshr exact i64 %i.af, 2
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = and i64 %i.ah, 3
  %i.aj = tail call i64 @llvm.smin.i64(i64 %i.ai, i64 %i.r)
  br label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.aj, %bb.c ], [ %i.r, %bb.b ] ; 15 uses
  %i.ak = sub nsw i64 %i.r, %.0.i.i.i.i.i.i.i     ; 2 uses
  %i.al = sdiv i64 %i.ak, 4                       ; 3 uses
  %i.am = shl nsw i64 %i.al, 2
  %i.an = add nsw i64 %i.am, %.0.i.i.i.i.i.i.i    ; 6 uses
  %i.ao = icmp sgt i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIffEEKNSD_INS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSP_INS7_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_KNSI_ISK_KNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSP_IKNSP_INSP_INS7_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check93 = icmp ult i64 %.0.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check93, label %.lr.ph.i.i.i.i.i.i.i.preheader113, label %vector.memcheck81

vector.memcheck81:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ap = shl i64 %.0.i.i.i.i.i.i.i, 2
  %scevgep82 = getelementptr i8, ptr %i.ae, i64 %i.ap ; 2 uses
  %i.aq = add i64 %.0.i.i.i.i.i.i.i, %i.t
  %i.ar = shl i64 %i.aq, 2
  %scevgep83 = getelementptr i8, ptr %i.u, i64 %i.ar
  %i.as = add i64 %.0.i.i.i.i.i.i.i, %i.aa
  %i.at = shl i64 %i.as, 2
  %scevgep84 = getelementptr i8, ptr %i.n, i64 %i.at
  %bound085 = icmp ult ptr %i.ae, %scevgep83
  %bound186 = icmp ult ptr %i.v, %scevgep82
  %found.conflict87 = and i1 %bound085, %bound186
  %bound088 = icmp ult ptr %i.ae, %scevgep84
  %bound189 = icmp ult ptr %i.ab, %scevgep82
  %found.conflict90 = and i1 %bound088, %bound189
  %conflict.rdx91 = or i1 %found.conflict87, %found.conflict90
  br i1 %conflict.rdx91, label %.lr.ph.i.i.i.i.i.i.i.preheader113, label %vector.ph94

vector.ph94:                                      ; preds = %vector.memcheck81
  %n.vec95 = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %broadcast.splatinsert96 = insertelement <4 x float> poison, float %i.q, i64 0
  %broadcast.splat97 = shufflevector <4 x float> %broadcast.splatinsert96, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert98 = insertelement <4 x float> poison, float %i.y, i64 0
  %broadcast.splat99 = shufflevector <4 x float> %broadcast.splatinsert98, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body100

vector.body100:                                   ; preds = %vector.body100, %vector.ph94
  %index101 = phi i64 [ 0, %vector.ph94 ], [ %index.next108, %vector.body100 ] ; 4 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index101 ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index101 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load102 = load <4 x float>, ptr %i.av, align 4, !tbaa !19, !alias.scope !138
  %wide.load103 = load <4 x float>, ptr %i.aw, align 4, !tbaa !19, !alias.scope !138
  %i.ax = fmul <4 x float> %broadcast.splat97, %wide.load102
  %i.ay = fmul <4 x float> %broadcast.splat97, %wide.load103
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index101 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load104 = load <4 x float>, ptr %i.az, align 4, !tbaa !19, !alias.scope !141
  %wide.load105 = load <4 x float>, ptr %i.ba, align 4, !tbaa !19, !alias.scope !141
  %i.bb = fmul <4 x float> %broadcast.splat99, %wide.load104
  %i.bc = fmul <4 x float> %broadcast.splat99, %wide.load105
  %i.bd = fadd <4 x float> %i.ax, %i.bb
  %i.be = fadd <4 x float> %i.ay, %i.bc
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %wide.load106 = load <4 x float>, ptr %i.au, align 4, !tbaa !19, !alias.scope !143, !noalias !145
  %wide.load107 = load <4 x float>, ptr %i.bf, align 4, !tbaa !19, !alias.scope !143, !noalias !145
  %i.bg = fadd <4 x float> %wide.load106, %i.bd
  %i.bh = fadd <4 x float> %wide.load107, %i.be
  store <4 x float> %i.bg, ptr %i.au, align 4, !tbaa !19, !alias.scope !143, !noalias !145
  store <4 x float> %i.bh, ptr %i.bf, align 4, !tbaa !19, !alias.scope !143, !noalias !145
  %index.next108 = add nuw i64 %index101, 8       ; 2 uses
  %i.bi = icmp eq i64 %index.next108, %n.vec95
  br i1 %i.bi, label %middle.block109, label %vector.body100, !llvm.loop !146

middle.block109:                                  ; preds = %vector.body100
  %cmp.n110 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec95
  br i1 %cmp.n110, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIffEEKNSD_INS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSP_INS7_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_KNSI_ISK_KNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSP_IKNSP_INSP_INS7_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader113

.lr.ph.i.i.i.i.i.i.i.preheader113:                ; preds = %vector.memcheck81, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block109
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck81 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec95, %middle.block109 ] ; 6 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader113
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.05.i.i.i.i.i.i.i.ph
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !19
  %i.bm = fmul float %i.q, %i.bl
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.05.i.i.i.i.i.i.i.ph
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !19
  %i.bp = fmul float %i.y, %i.bo
  %i.bq = fadd float %i.bm, %i.bp
  %i.br = load float, ptr %i.bj, align 4, !tbaa !19
  %i.bs = fadd float %i.br, %i.bq
  store float %i.bs, ptr %i.bj, align 4, !tbaa !19
  %i.bt = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader113
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader113 ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.bu = icmp eq i64 %.0.i.i.i.i.i.i.i, %.neg
  br i1 %i.bu, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIffEEKNSD_INS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSP_INS7_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_KNSI_ISK_KNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSP_IKNSP_INSP_INS7_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.cq, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.05.i.i.i.i.i.i.i
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !19
  %i.by = fmul float %i.q, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.05.i.i.i.i.i.i.i
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !19
  %i.cb = fmul float %i.y, %i.ca
  %i.cc = fadd float %i.by, %i.cb
  %i.cd = load float, ptr %i.bv, align 4, !tbaa !19
  %i.ce = fadd float %i.cd, %i.cc
  store float %i.ce, ptr %i.bv, align 4, !tbaa !19
  %i.cf = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 3 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.cf
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !19
  %i.cj = fmul float %i.q, %i.ci
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.cf
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !19
  %i.cm = fmul float %i.y, %i.cl
  %i.cn = fadd float %i.cj, %i.cm
  %i.co = load float, ptr %i.cg, align 4, !tbaa !19
  %i.cp = fadd float %i.co, %i.cn
  store float %i.cp, ptr %i.cg, align 4, !tbaa !19
  %i.cq = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.cq, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIffEEKNSD_INS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSP_INS7_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_KNSI_ISK_KNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSP_IKNSP_INSP_INS7_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !147

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIffEEKNSD_INS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSP_INS7_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_KNSI_ISK_KNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSP_IKNSP_INSP_INS7_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block109, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.cr = icmp sgt i64 %i.ak, 3
  br i1 %i.cr, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIffEEKNSD_INS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSP_INS7_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_KNSI_ISK_KNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSP_IKNSP_INSP_INS7_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.cs = insertelement <1 x float> poison, float %i.q, i64 0
  %i.ct = shufflevector <1 x float> %i.cs, <1 x float> poison, <4 x i32> zeroinitializer
  %i.cu = insertelement <1 x float> poison, float %i.y, i64 0
  %i.cv = shufflevector <1 x float> %i.cu, <1 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIffEEKNSD_INS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSP_INS7_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_KNSI_ISK_KNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSP_IKNSP_INSP_INS7_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.cw = icmp slt i64 %i.an, %i.r
  br i1 %i.cw, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS9_INSA_17scalar_product_opIffEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSM_INS2_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_KNSF_ISH_KNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSM_IKNSM_INSM_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %5 = shl nsw i64 %i.al, 2
  %i.cx = add i64 %.0.i.i.i.i.i.i.i, %5
  %i.cy = sub i64 %i.r, %i.cx                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.cy, 8
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader112, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.cz = shl i64 %i.al, 4                        ; 2 uses
  %i.da = shl i64 %.0.i.i.i.i.i.i.i, 2            ; 2 uses
  %i.db = add i64 %i.cz, %i.da                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ae, i64 %i.db ; 2 uses
  %i.dc = shl i64 %i.t, 2
  %i.dd = getelementptr i8, ptr %i.u, i64 %i.db
  %scevgep67 = getelementptr i8, ptr %i.dd, i64 %i.dc
  %i.de = shl i64 %i.s, 2
  %scevgep68 = getelementptr i8, ptr %i.u, i64 %i.de
  %i.df = shl i64 %i.aa, 2
  %i.dg = getelementptr i8, ptr %i.n, i64 %i.cz
  %i.dh = getelementptr i8, ptr %i.dg, i64 %i.da
  %scevgep69 = getelementptr i8, ptr %i.dh, i64 %i.df
  %i.di = shl i64 %i.z, 2
  %scevgep70 = getelementptr i8, ptr %i.n, i64 %i.di
  %bound0 = icmp ult ptr %scevgep, %scevgep68
  %bound1 = icmp ult ptr %scevgep67, %scevgep66
  %found.conflict = and i1 %bound0, %bound1
  %bound071 = icmp ult ptr %scevgep, %scevgep70
  %bound172 = icmp ult ptr %scevgep69, %scevgep66
  %found.conflict73 = and i1 %bound071, %bound172
  %conflict.rdx = or i1 %found.conflict, %found.conflict73
  br i1 %conflict.rdx, label %.lr.ph.i17.i.i.i.i.i.i.preheader112, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cy, -8                      ; 3 uses
  %i.dj = add i64 %i.an, %n.vec
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.q, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert74 = insertelement <4 x float> poison, float %i.y, i64 0
  %broadcast.splat75 = shufflevector <4 x float> %broadcast.splatinsert74, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dk = add i64 %i.an, %index                   ; 3 uses
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.dk ; 3 uses
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.dk ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %wide.load = load <4 x float>, ptr %i.dm, align 4, !tbaa !19, !alias.scope !148
  %wide.load76 = load <4 x float>, ptr %i.dn, align 4, !tbaa !19, !alias.scope !148
  %i.do = fmul <4 x float> %broadcast.splat, %wide.load
  %i.dp = fmul <4 x float> %broadcast.splat, %wide.load76
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.dk ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load77 = load <4 x float>, ptr %i.dq, align 4, !tbaa !19, !alias.scope !151
  %wide.load78 = load <4 x float>, ptr %i.dr, align 4, !tbaa !19, !alias.scope !151
  %i.ds = fmul <4 x float> %broadcast.splat75, %wide.load77
  %i.dt = fmul <4 x float> %broadcast.splat75, %wide.load78
  %i.du = fadd <4 x float> %i.do, %i.ds
  %i.dv = fadd <4 x float> %i.dp, %i.dt
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %wide.load79 = load <4 x float>, ptr %i.dl, align 4, !tbaa !19, !alias.scope !153, !noalias !155
  %wide.load80 = load <4 x float>, ptr %i.dw, align 4, !tbaa !19, !alias.scope !153, !noalias !155
  %i.dx = fadd <4 x float> %wide.load79, %i.du
  %i.dy = fadd <4 x float> %wide.load80, %i.dv
  store <4 x float> %i.dx, ptr %i.dl, align 4, !tbaa !19, !alias.scope !153, !noalias !155
  store <4 x float> %i.dy, ptr %i.dw, align 4, !tbaa !19, !alias.scope !153, !noalias !155
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !156

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cy, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS9_INSA_17scalar_product_opIffEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSM_INS2_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_KNSF_ISH_KNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSM_IKNSM_INSM_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader112

.lr.ph.i17.i.i.i.i.i.i.preheader112:              ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.dj, %middle.block ] ; 7 uses
  %i.ea = sub i64 %i.r, %.05.i18.i.i.i.i.i.i.ph
  %xtraiter114 = and i64 %i.ea, 1
  %lcmp.mod115.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod115.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader112
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.v, i64 %.05.i18.i.i.i.i.i.i.ph
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !19
  %i.ee = fmul float %i.q, %i.ed
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %.05.i18.i.i.i.i.i.i.ph
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !19
  %i.eh = fmul float %i.y, %i.eg
  %i.ei = fadd float %i.ee, %i.eh
  %i.ej = load float, ptr %i.eb, align 4, !tbaa !19
  %i.ek = fadd float %i.ej, %i.ei
  store float %i.ek, ptr %i.eb, align 4, !tbaa !19
  %i.el = add nsw i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader112
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader112 ], [ %i.el, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.em = icmp eq i64 %i.k, %.05.i18.i.i.i.i.i.i.ph
  br i1 %i.em, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS9_INSA_17scalar_product_opIffEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSM_INS2_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_KNSF_ISH_KNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSM_IKNSM_INSM_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.fi, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.en = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.v, i64 %.05.i18.i.i.i.i.i.i
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !19
  %i.eq = fmul float %i.q, %i.ep
  %i.er = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %.05.i18.i.i.i.i.i.i
  %i.es = load float, ptr %i.er, align 4, !tbaa !19
  %i.et = fmul float %i.y, %i.es
  %i.eu = fadd float %i.eq, %i.et
  %i.ev = load float, ptr %i.en, align 4, !tbaa !19
  %i.ew = fadd float %i.ev, %i.eu
  store float %i.ew, ptr %i.en, align 4, !tbaa !19
  %i.ex = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 3 uses
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ex ; 2 uses
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ex
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !19
  %i.fb = fmul float %i.q, %i.fa
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ex
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !19
  %i.fe = fmul float %i.y, %i.fd
  %i.ff = fadd float %i.fb, %i.fe
  %i.fg = load float, ptr %i.ey, align 4, !tbaa !19
  %i.fh = fadd float %i.fg, %i.ff
  store float %i.fh, ptr %i.ey, align 4, !tbaa !19
  %i.fi = add nsw i64 %.05.i18.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.fi, %i.r
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS9_INSA_17scalar_product_opIffEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSM_INS2_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_KNSF_ISH_KNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSM_IKNSM_INSM_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !157

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.ft, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 4 uses
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.v, i64 %.021.i.i.i.i.i.i
  %i.fl = load <4 x float>, ptr %i.fk, align 1, !tbaa !47
  %i.fm = fmul <4 x float> %i.ct, %i.fl
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %.021.i.i.i.i.i.i
  %i.fo = load <4 x float>, ptr %i.fn, align 1, !tbaa !47
  %i.fp = fmul <4 x float> %i.cv, %i.fo
  %i.fq = fadd <4 x float> %i.fm, %i.fp
  %i.fr = load <4 x float>, ptr %i.fj, align 16, !tbaa !47
  %i.fs = fadd <4 x float> %i.fr, %i.fq
  store <4 x float> %i.fs, ptr %i.fj, align 16, !tbaa !47
  %i.ft = add nsw i64 %.021.i.i.i.i.i.i, 4        ; 2 uses
  %i.fu = icmp slt i64 %i.ft, %i.an
  br i1 %i.fu, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !158

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS9_INSA_17scalar_product_opIffEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSM_INS2_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_KNSF_ISH_KNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSM_IKNSM_INSM_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i
  %i.fv = add nuw nsw i64 %.062, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.fv, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !159
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEENS1_IfLi1ELi1ELi0ELi1ELi1EEELi1EE6evalToIS2_NS1_IfLi2ELi1ELi0ELi2ELi1EEEEEvRT_RT0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Block.161", align 8  ; 10 uses
  %4 = alloca %"class.Eigen::Block.439", align 8  ; 9 uses
  %5 = alloca %"class.Eigen::Block.161", align 8  ; 10 uses
  %6 = alloca %"class.Eigen::Block.439", align 8  ; 9 uses
  %7 = alloca %"class.Eigen::Block.161", align 8  ; 10 uses
  %8 = alloca %"class.Eigen::Block.439", align 8  ; 9 uses
  %9 = alloca %"class.Eigen::Block.161", align 8  ; 10 uses
  %10 = alloca %"class.Eigen::Block.439", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45   ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !160, !nonnull !161, !align !162
  %i.d = icmp eq ptr %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  store float 1.000000e+00, ptr %1, align 16, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.e, align 8, !tbaa !19
  %i.f = icmp sgt i64 %i.b, 0
  br i1 %i.f, label %.lr.ph108, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader

.lr.ph108:                                        ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 48
end_hunk_1
begin_hunk_2_@_ZNK5Eigen19HouseholderSequenceINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEENS1_IfLi1ELi1ELi0ELi1ELi1EEELi1EE6evalToIS2_NS1_IfLi2ELi1ELi0ELi2ELi1EEEEEvRT_RT0_:bb.a
  store ptr %i.en, ptr %7, align 8, !tbaa !125, !alias.scope !195
  store i64 %i.ej, ptr %i.dw, align 8, !tbaa !81, !alias.scope !195
  store i64 %i.ej, ptr %i.dx, align 8, !tbaa !81, !alias.scope !195
  store ptr %1, ptr %i.dy, align 8, !tbaa !38, !alias.scope !195
  store i64 %i.ei, ptr %i.dz, align 8, !tbaa !81, !alias.scope !195
  store i64 %i.ei, ptr %i.ea, align 8, !tbaa !81, !alias.scope !195
  store i64 2, ptr %i.eb, align 8, !tbaa !167, !alias.scope !195
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.eq = load ptr, ptr %0, align 8, !tbaa !160, !noalias !204, !nonnull !161, !align !162 ; 2 uses
  %i.er = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.eo
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 %.idx.i.i.i.i.i70
  store ptr %i.es, ptr %8, align 8, !tbaa !177, !alias.scope !204
  store i64 %i.ep, ptr %i.ec, align 8, !tbaa !81, !alias.scope !204
  store ptr %i.eq, ptr %i.ed, align 8, !tbaa !38, !alias.scope !204
  store i64 %i.eo, ptr %i.ee, align 8, !tbaa !81, !alias.scope !204
  store i64 %.0104, ptr %i.ef, align 8, !tbaa !81, !alias.scope !204
  store i64 2, ptr %i.eg, align 8, !tbaa !179, !alias.scope !204
  %i.et = load ptr, ptr %i.dv, align 8, !tbaa !181, !nonnull !161, !align !182
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.et, i64 %.0104
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.eu, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store ptr %i.en, ptr %9, align 8, !tbaa !125, !alias.scope !205
  store i64 %i.ej, ptr %i.dk, align 8, !tbaa !81, !alias.scope !205
  store i64 %i.ej, ptr %i.dl, align 8, !tbaa !81, !alias.scope !205
  store ptr %1, ptr %i.dm, align 8, !tbaa !38, !alias.scope !205
  store i64 %i.ei, ptr %i.dn, align 8, !tbaa !81, !alias.scope !205
  store i64 %i.ei, ptr %i.do, align 8, !tbaa !81, !alias.scope !205
  store i64 2, ptr %i.dp, align 8, !tbaa !167, !alias.scope !205
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.ev = load ptr, ptr %0, align 8, !tbaa !160, !noalias !214, !nonnull !161, !align !162 ; 2 uses
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.eo
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 %.idx.i.i.i.i.i70
  store ptr %i.ex, ptr %10, align 8, !tbaa !177, !alias.scope !214
  store i64 %i.ep, ptr %i.dq, align 8, !tbaa !81, !alias.scope !214
  store ptr %i.ev, ptr %i.dr, align 8, !tbaa !38, !alias.scope !214
  store i64 %i.eo, ptr %i.ds, align 8, !tbaa !81, !alias.scope !214
  store i64 %.0104, ptr %i.dt, align 8, !tbaa !81, !alias.scope !214
  store i64 2, ptr %i.du, align 8, !tbaa !179, !alias.scope !214
  %i.ey = load ptr, ptr %i.dv, align 8, !tbaa !181, !nonnull !161, !align !182
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %.0104
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 4 dereferenceable(4) %i.ez, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.fa = icmp samesign ugt i64 %.0.in103, 1
  br i1 %i.fa, label %bb.i, label %.loopexit, !llvm.loop !215

.loopexit:                                        ; preds = %bb.l, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68, %bb.h, %.preheader, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.660", align 8 ; 19 uses
  %5 = alloca %"struct.Eigen::internal::evaluator.551", align 8 ; 14 uses
  %6 = alloca %"struct.Eigen::internal::evaluator.570", align 8 ; 5 uses
  %7 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.574", align 8 ; 7 uses
  %8 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %9 = alloca %"class.Eigen::Map.462", align 8    ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !81   ; 5 uses
  %i.c = icmp eq i64 %i.b, 1
  %i.d = load float, ptr %2, align 4, !tbaa !19   ; 2 uses
  br i1 %i.c, label %.preheader.lr.ph.i.i.i.i.i.i, label %bb.b

.preheader.lr.ph.i.i.i.i.i.i:                     ; preds = %bb.a
  %i.e = fsub float 1.000000e+00, %i.d            ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !81   ; 5 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEmLERKf.exit

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.lr.ph.i.i.i.i.i.i
  %i.i = load ptr, ptr %0, align 8, !tbaa !125    ; 2 uses
  %min.iters.check176 = icmp ult i64 %i.g, 8
  br i1 %min.iters.check176, label %scalar.ph175.preheader, label %vector.ph177

vector.ph177:                                     ; preds = %.preheader.i.i.i.i.i.i
  %n.vec178 = and i64 %i.g, 9223372036854775800   ; 3 uses
  %broadcast.splatinsert179 = insertelement <4 x float> poison, float %i.e, i64 0
  %broadcast.splat180 = shufflevector <4 x float> %broadcast.splatinsert179, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph177
  %index182 = phi i64 [ 0, %vector.ph177 ], [ %index.next185, %vector.body181 ] ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %i.i, i64 %index182 ; 3 uses
  %i.k = getelementptr i8, ptr %i.j, i64 16       ; 2 uses
  %wide.load183 = load <4 x float>, ptr %i.j, align 4, !tbaa !19
  %wide.load184 = load <4 x float>, ptr %i.k, align 4, !tbaa !19
  %i.l = fmul <4 x float> %broadcast.splat180, %wide.load183
  %i.m = fmul <4 x float> %broadcast.splat180, %wide.load184
  store <4 x float> %i.l, ptr %i.j, align 4, !tbaa !19
  store <4 x float> %i.m, ptr %i.k, align 4, !tbaa !19
  %index.next185 = add nuw i64 %index182, 8       ; 2 uses
  %i.n = icmp eq i64 %index.next185, %n.vec178
  br i1 %i.n, label %middle.block186, label %vector.body181, !llvm.loop !216

middle.block186:                                  ; preds = %vector.body181
  %cmp.n187 = icmp eq i64 %i.g, %n.vec178
  br i1 %cmp.n187, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEmLERKf.exit, label %scalar.ph175.preheader

scalar.ph175.preheader:                           ; preds = %.preheader.i.i.i.i.i.i, %middle.block186
  %.09.i.i.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ %n.vec178, %middle.block186 ]
  br label %scalar.ph175

scalar.ph175:                                     ; preds = %scalar.ph175.preheader, %scalar.ph175
  %.09.i.i.i.i.i.i = phi i64 [ %i.r, %scalar.ph175 ], [ %.09.i.i.i.i.i.i.ph, %scalar.ph175.preheader ] ; 2 uses
  %i.o = getelementptr [4 x i8], ptr %i.i, i64 %.09.i.i.i.i.i.i ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !19
  %i.q = fmul float %i.e, %i.p
  store float %i.q, ptr %i.o, align 4, !tbaa !19
  %i.r = add nuw nsw i64 %.09.i.i.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.r, %i.g
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEmLERKf.exit, label %scalar.ph175, !llvm.loop !217

bb.b:                                             ; preds = %bb.a
  %i.s = fcmp une float %i.d, 0.000000e+00
  br i1 %i.s, label %bb.c, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEmLERKf.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !81   ; 11 uses
  store ptr %3, ptr %9, align 8, !tbaa !218
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 %i.u, ptr %i.v, align 8, !tbaa !81
  %i.w = add nsw i64 %i.b, -1                     ; 3 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !125    ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8        ; 5 uses
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.z, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  store ptr %i.y, ptr %5, align 8
  %.sroa.048.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.u, ptr %.sroa.048.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %.sroa.4.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.w, ptr %.sroa.4.0..sroa_idx3.i.i.i.i, align 8
  %.sroa.550.sroa.4.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i64 0, ptr %.sroa.550.sroa.4.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  %.sroa.550.sroa.5.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i64 1, ptr %.sroa.550.sroa.5.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  %.sroa.550.sroa.6.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 96
  store i64 2, ptr %.sroa.550.sroa.6.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 160
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !220
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !177
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !222
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 192
  store i64 %i.w, ptr %i.ad, align 8, !tbaa !224
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr %3, ptr %6, align 8, !tbaa !239
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.u, ptr %i.ae, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %6, ptr %7, align 8, !tbaa !241
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.af, align 8, !tbaa !243
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %8, ptr %i.ag, align 8, !tbaa !245
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %9, ptr %i.ah, align 8, !tbaa !247
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductINS_5BlockINSC_INS5_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSC_IKSD_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EEELi3ELi0EE3runERSM_(ptr noundef nonnull align 8 dereferenceable(32) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.ai = load ptr, ptr %0, align 8, !tbaa !125, !noalias !249 ; 17 uses
  %i.aj = load ptr, ptr %9, align 8, !tbaa !218   ; 18 uses
  %i.ak = load i64, ptr %i.v, align 8, !tbaa !81  ; 9 uses
  %i.al = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.am = and i64 %i.al, 3
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.an = lshr exact i64 %i.al, 2
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = and i64 %i.ao, 3
  %i.aq = call i64 @llvm.smin.i64(i64 %i.ap, i64 %i.ak)
  br label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.aq, %bb.d ], [ %i.ak, %bb.c ] ; 13 uses
  %i.ar = sub nsw i64 %i.ak, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.as = sdiv i64 %i.ar, 4                       ; 3 uses
  %i.at = shl nsw i64 %i.as, 2
  %i.au = add nsw i64 %i.at, %.0.i.i.i.i.i.i.i    ; 6 uses
  %i.av = icmp sgt i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_5BlockINSD_INS7_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader194, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.aw = shl i64 %.0.i.i.i.i.i.i.i, 2            ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aj, i64 %i.aw
  %scevgep63 = getelementptr i8, ptr %i.ai, i64 %i.aw
  %bound0 = icmp ult ptr %i.aj, %scevgep63
  %bound1 = icmp ult ptr %i.ai, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader194, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load = load <4 x float>, ptr %i.ay, align 4, !tbaa !19, !alias.scope !252
  %wide.load64 = load <4 x float>, ptr %i.az, align 4, !tbaa !19, !alias.scope !252
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %wide.load65 = load <4 x float>, ptr %i.ax, align 4, !tbaa !19, !alias.scope !255, !noalias !252
  %wide.load66 = load <4 x float>, ptr %i.ba, align 4, !tbaa !19, !alias.scope !255, !noalias !252
  %i.bb = fadd <4 x float> %wide.load, %wide.load65
  %i.bc = fadd <4 x float> %wide.load64, %wide.load66
  store <4 x float> %i.bb, ptr %i.ax, align 4, !tbaa !19, !alias.scope !255, !noalias !252
  store <4 x float> %i.bc, ptr %i.ba, align 4, !tbaa !19, !alias.scope !255, !noalias !252
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !257

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_5BlockINSD_INS7_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader194

.lr.ph.i.i.i.i.i.i.i.preheader194:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i, 3        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader194, %.lr.ph.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.prol = phi i64 [ %i.bj, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader194 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader194 ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.05.i.i.i.i.i.i.i.prol ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.05.i.i.i.i.i.i.i.prol
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !19
  %i.bh = load float, ptr %i.be, align 4, !tbaa !19
  %i.bi = fadd float %i.bg, %i.bh
  store float %i.bi, ptr %i.be, align 4, !tbaa !19
  %i.bj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !258

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader194
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader194 ], [ %i.bj, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.bk = sub nsw i64 %.05.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i
  %i.bl = icmp ugt i64 %i.bk, -4
  br i1 %i.bl, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_5BlockINSD_INS7_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.cj, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.05.i.i.i.i.i.i.i
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !19
  %i.bp = load float, ptr %i.bm, align 4, !tbaa !19
  %i.bq = fadd float %i.bo, %i.bp
  store float %i.bq, ptr %i.bm, align 4, !tbaa !19
  %i.br = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.br
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !19
  %i.bv = load float, ptr %i.bs, align 4, !tbaa !19
  %i.bw = fadd float %i.bu, %i.bv
  store float %i.bw, ptr %i.bs, align 4, !tbaa !19
  %i.bx = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bx
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !19
  %i.cb = load float, ptr %i.by, align 4, !tbaa !19
  %i.cc = fadd float %i.ca, %i.cb
  store float %i.cc, ptr %i.by, align 4, !tbaa !19
  %i.cd = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 3   ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.cd ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.cd
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !19
  %i.ch = load float, ptr %i.ce, align 4, !tbaa !19
  %i.ci = fadd float %i.cg, %i.ch
  store float %i.ci, ptr %i.ce, align 4, !tbaa !19
  %i.cj = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.cj, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_5BlockINSD_INS7_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !259

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_5BlockINSD_INS7_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.ck = icmp sgt i64 %i.ar, 3
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i8

._crit_edge.i.i.i.i.i.i8:                         ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_5BlockINSD_INS7_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.cl = icmp slt i64 %i.au, %i.ak
  br i1 %i.cl, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEERS6_RKNS0_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i8
  %10 = shl nsw i64 %i.as, 2
  %i.cm = add i64 %.0.i.i.i.i.i.i.i, %10
  %i.cn = sub i64 %i.ak, %i.cm                    ; 3 uses
  %min.iters.check76 = icmp ult i64 %i.cn, 12
  br i1 %min.iters.check76, label %.lr.ph.i17.i.i.i.i.i.i.preheader193, label %vector.memcheck67

vector.memcheck67:                                ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.co = shl i64 %i.as, 4
  %i.cp = shl i64 %.0.i.i.i.i.i.i.i, 2
  %i.cq = add i64 %i.co, %i.cp                    ; 2 uses
  %scevgep68 = getelementptr i8, ptr %i.aj, i64 %i.cq
  %i.cr = shl i64 %i.ak, 2                        ; 2 uses
  %scevgep69 = getelementptr i8, ptr %i.aj, i64 %i.cr
  %scevgep70 = getelementptr i8, ptr %i.ai, i64 %i.cq
  %scevgep71 = getelementptr i8, ptr %i.ai, i64 %i.cr
  %bound072 = icmp ult ptr %scevgep68, %scevgep71
  %bound173 = icmp ult ptr %scevgep70, %scevgep69
  %found.conflict74 = and i1 %bound072, %bound173
  br i1 %found.conflict74, label %.lr.ph.i17.i.i.i.i.i.i.preheader193, label %vector.ph77

vector.ph77:                                      ; preds = %vector.memcheck67
  %n.vec78 = and i64 %i.cn, -8                    ; 3 uses
  %i.cs = add i64 %i.au, %n.vec78
  br label %vector.body79

vector.body79:                                    ; preds = %vector.body79, %vector.ph77
  %index80 = phi i64 [ 0, %vector.ph77 ], [ %index.next85, %vector.body79 ] ; 2 uses
  %i.ct = add i64 %i.au, %index80                 ; 2 uses
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.ct ; 3 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.ct ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %wide.load81 = load <4 x float>, ptr %i.cv, align 4, !tbaa !19, !alias.scope !260
  %wide.load82 = load <4 x float>, ptr %i.cw, align 4, !tbaa !19, !alias.scope !260
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %wide.load83 = load <4 x float>, ptr %i.cu, align 4, !tbaa !19, !alias.scope !263, !noalias !260
  %wide.load84 = load <4 x float>, ptr %i.cx, align 4, !tbaa !19, !alias.scope !263, !noalias !260
  %i.cy = fadd <4 x float> %wide.load81, %wide.load83
  %i.cz = fadd <4 x float> %wide.load82, %wide.load84
  store <4 x float> %i.cy, ptr %i.cu, align 4, !tbaa !19, !alias.scope !263, !noalias !260
  store <4 x float> %i.cz, ptr %i.cx, align 4, !tbaa !19, !alias.scope !263, !noalias !260
  %index.next85 = add nuw i64 %index80, 8         ; 2 uses
  %i.da = icmp eq i64 %index.next85, %n.vec78
  br i1 %i.da, label %middle.block86, label %vector.body79, !llvm.loop !265

middle.block86:                                   ; preds = %vector.body79
  %cmp.n87 = icmp eq i64 %i.cn, %n.vec78
  br i1 %cmp.n87, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEERS6_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader193

.lr.ph.i17.i.i.i.i.i.i.preheader193:              ; preds = %vector.memcheck67, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block86
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.au, %vector.memcheck67 ], [ %i.au, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.cs, %middle.block86 ] ; 4 uses
  %i.db = sub i64 %i.ak, %.05.i18.i.i.i.i.i.i.ph
  %xtraiter195 = and i64 %i.db, 3                 ; 2 uses
  %lcmp.mod196.not = icmp eq i64 %xtraiter195, 0
  br i1 %lcmp.mod196.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader193, %.lr.ph.i17.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.prol = phi i64 [ %i.dh, %.lr.ph.i17.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader193 ] ; 3 uses
  %prol.iter197 = phi i64 [ %prol.iter197.next, %.lr.ph.i17.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.preheader193 ]
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %.05.i18.i.i.i.i.i.i.prol ; 2 uses
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %.05.i18.i.i.i.i.i.i.prol
  %i.de = load float, ptr %i.dd, align 4, !tbaa !19
  %i.df = load float, ptr %i.dc, align 4, !tbaa !19
  %i.dg = fadd float %i.de, %i.df
  store float %i.dg, ptr %i.dc, align 4, !tbaa !19
  %i.dh = add nsw i64 %.05.i18.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter197.next = add i64 %prol.iter197, 1   ; 2 uses
  %prol.iter197.cmp.not = icmp eq i64 %prol.iter197.next, %xtraiter195
  br i1 %prol.iter197.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol, !llvm.loop !266

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader193
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader193 ], [ %i.dh, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.di = sub i64 %.05.i18.i.i.i.i.i.i.ph, %i.ak
  %i.dj = icmp ugt i64 %i.di, -4
  br i1 %i.dj, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEERS6_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.eh, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %.05.i18.i.i.i.i.i.i
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !19
  %i.dn = load float, ptr %i.dk, align 4, !tbaa !19
  %i.do = fadd float %i.dm, %i.dn
  store float %i.do, ptr %i.dk, align 4, !tbaa !19
  %i.dp = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.dp
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !19
  %i.dt = load float, ptr %i.dq, align 4, !tbaa !19
  %i.du = fadd float %i.ds, %i.dt
  store float %i.du, ptr %i.dq, align 4, !tbaa !19
  %i.dv = add nsw i64 %.05.i18.i.i.i.i.i.i, 2     ; 2 uses
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.dv ; 2 uses
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.dv
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !19
  %i.dz = load float, ptr %i.dw, align 4, !tbaa !19
  %i.ea = fadd float %i.dy, %i.dz
  store float %i.ea, ptr %i.dw, align 4, !tbaa !19
  %i.eb = add nsw i64 %.05.i18.i.i.i.i.i.i, 3     ; 2 uses
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.eb ; 2 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.eb
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !19
  %i.ef = load float, ptr %i.ec, align 4, !tbaa !19
  %i.eg = fadd float %i.ee, %i.ef
  store float %i.eg, ptr %i.ec, align 4, !tbaa !19
  %i.eh = add nsw i64 %.05.i18.i.i.i.i.i.i, 4     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.3 = icmp eq i64 %i.eh, %i.ak
  br i1 %exitcond.not.i19.i.i.i.i.i.i.3, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEERS6_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !267

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_5BlockINSD_INS7_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.en, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_5BlockINSD_INS7_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i ] ; 3 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %.021.i.i.i.i.i.i
  %i.ek = load <4 x float>, ptr %i.ej, align 1, !tbaa !47
  %i.el = load <4 x float>, ptr %i.ei, align 16, !tbaa !47
  %i.em = fadd <4 x float> %i.ek, %i.el
  store <4 x float> %i.em, ptr %i.ei, align 16, !tbaa !47
  %i.en = add nsw i64 %.021.i.i.i.i.i.i, 4        ; 2 uses
  %i.eo = icmp slt i64 %i.en, %i.au
  br i1 %i.eo, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i8, !llvm.loop !268

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEERS6_RKNS0_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i, %middle.block86, %._crit_edge.i.i.i.i.i.i8
  %i.ep = load float, ptr %2, align 4, !tbaa !19, !noalias !269 ; 9 uses
  %.sroa.538.24.copyload = load ptr, ptr %9, align 8 ; 13 uses
  %i.eq = load ptr, ptr %0, align 8, !tbaa !125, !noalias !272 ; 14 uses
  %i.er = load i64, ptr %i.t, align 8, !tbaa !81, !noalias !272 ; 9 uses
  %i.es = ptrtoint ptr %i.eq to i64               ; 2 uses
  %i.et = and i64 %i.es, 3
  %.not.i.i.i.i.i.i.i9 = icmp eq i64 %i.et, 0
  br i1 %.not.i.i.i.i.i.i.i9, label %bb.e, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i10

bb.e:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEERS6_RKNS0_IT_EE.exit
  %i.eu = lshr exact i64 %i.es, 2
  %i.ev = sub nsw i64 0, %i.eu
  %i.ew = and i64 %i.ev, 3
  %i.ex = call i64 @llvm.smin.i64(i64 %i.ew, i64 %i.er)
  br label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i10

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i10: ; preds = %bb.e, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEERS6_RKNS0_IT_EE.exit
  %.0.i.i.i.i.i.i.i11 = phi i64 [ %i.ex, %bb.e ], [ %i.er, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEERS6_RKNS0_IT_EE.exit ] ; 13 uses
  %i.ey = sub nsw i64 %i.er, %.0.i.i.i.i.i.i.i11  ; 2 uses
  %i.ez = sdiv i64 %i.ey, 4                       ; 3 uses
  %i.fa = shl nsw i64 %i.ez, 2
  %i.fb = add nsw i64 %i.fa, %.0.i.i.i.i.i.i.i11  ; 6 uses
  %i.fc = icmp sgt i64 %.0.i.i.i.i.i.i.i11, 0
  br i1 %i.fc, label %.lr.ph.i.i.i.i.i.i.i18.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEKNS_3MapISI_Li0ENS_6StrideILi0ELi0EEEEEEEEENS0_13sub_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i18.preheader:                 ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i10
  %min.iters.check96 = icmp ult i64 %.0.i.i.i.i.i.i.i11, 8
  br i1 %min.iters.check96, label %.lr.ph.i.i.i.i.i.i.i18.preheader192, label %vector.memcheck89

vector.memcheck89:                                ; preds = %.lr.ph.i.i.i.i.i.i.i18.preheader
  %i.fd = shl i64 %.0.i.i.i.i.i.i.i11, 2          ; 2 uses
  %scevgep90 = getelementptr i8, ptr %i.eq, i64 %i.fd
  %scevgep91 = getelementptr i8, ptr %.sroa.538.24.copyload, i64 %i.fd
  %bound092 = icmp ult ptr %i.eq, %scevgep91
  %bound193 = icmp ult ptr %.sroa.538.24.copyload, %scevgep90
  %found.conflict94 = and i1 %bound092, %bound193
  br i1 %found.conflict94, label %.lr.ph.i.i.i.i.i.i.i18.preheader192, label %vector.ph97

vector.ph97:                                      ; preds = %vector.memcheck89
  %n.vec98 = and i64 %.0.i.i.i.i.i.i.i11, 9223372036854775800 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ep, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph97
  %index100 = phi i64 [ 0, %vector.ph97 ], [ %index.next105, %vector.body99 ] ; 3 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %index100 ; 3 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.sroa.538.24.copyload, i64 %index100 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %wide.load101 = load <4 x float>, ptr %i.ff, align 4, !tbaa !19, !alias.scope !275
  %wide.load102 = load <4 x float>, ptr %i.fg, align 4, !tbaa !19, !alias.scope !275
  %i.fh = fmul <4 x float> %broadcast.splat, %wide.load101
  %i.fi = fmul <4 x float> %broadcast.splat, %wide.load102
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 16 ; 2 uses
  %wide.load103 = load <4 x float>, ptr %i.fe, align 4, !tbaa !19, !alias.scope !278, !noalias !275
  %wide.load104 = load <4 x float>, ptr %i.fj, align 4, !tbaa !19, !alias.scope !278, !noalias !275
  %i.fk = fsub <4 x float> %wide.load103, %i.fh
  %i.fl = fsub <4 x float> %wide.load104, %i.fi
  store <4 x float> %i.fk, ptr %i.fe, align 4, !tbaa !19, !alias.scope !278, !noalias !275
  store <4 x float> %i.fl, ptr %i.fj, align 4, !tbaa !19, !alias.scope !278, !noalias !275
  %index.next105 = add nuw i64 %index100, 8       ; 2 uses
  %i.fm = icmp eq i64 %index.next105, %n.vec98
  br i1 %i.fm, label %middle.block106, label %vector.body99, !llvm.loop !280

middle.block106:                                  ; preds = %vector.body99
  %cmp.n107 = icmp eq i64 %.0.i.i.i.i.i.i.i11, %n.vec98
  br i1 %cmp.n107, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEKNS_3MapISI_Li0ENS_6StrideILi0ELi0EEEEEEEEENS0_13sub_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i18.preheader192

.lr.ph.i.i.i.i.i.i.i18.preheader192:              ; preds = %vector.memcheck89, %.lr.ph.i.i.i.i.i.i.i18.preheader, %middle.block106
  %.05.i.i.i.i.i.i.i19.ph = phi i64 [ 0, %vector.memcheck89 ], [ 0, %.lr.ph.i.i.i.i.i.i.i18.preheader ], [ %n.vec98, %middle.block106 ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.i19.ph, 1
  %xtraiter198 = and i64 %.0.i.i.i.i.i.i.i11, 1
  %lcmp.mod199.not = icmp eq i64 %xtraiter198, 0
  br i1 %lcmp.mod199.not, label %.lr.ph.i.i.i.i.i.i.i18.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i18.prol

.lr.ph.i.i.i.i.i.i.i18.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i18.preheader192
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %.05.i.i.i.i.i.i.i19.ph ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.538.24.copyload, i64 %.05.i.i.i.i.i.i.i19.ph
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !19
  %i.fq = fmul float %i.ep, %i.fp
  %i.fr = load float, ptr %i.fn, align 4, !tbaa !19
  %i.fs = fsub float %i.fr, %i.fq
  store float %i.fs, ptr %i.fn, align 4, !tbaa !19
  %i.ft = or disjoint i64 %.05.i.i.i.i.i.i.i19.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i18.prol.loopexit

.lr.ph.i.i.i.i.i.i.i18.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i18.prol, %.lr.ph.i.i.i.i.i.i.i18.preheader192
  %.05.i.i.i.i.i.i.i19.unr = phi i64 [ %.05.i.i.i.i.i.i.i19.ph, %.lr.ph.i.i.i.i.i.i.i18.preheader192 ], [ %i.ft, %.lr.ph.i.i.i.i.i.i.i18.prol ]
  %i.fu = icmp eq i64 %.0.i.i.i.i.i.i.i11, %.neg
  br i1 %i.fu, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEKNS_3MapISI_Li0ENS_6StrideILi0ELi0EEEEEEEEENS0_13sub_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i18

.lr.ph.i.i.i.i.i.i.i18:                           ; preds = %.lr.ph.i.i.i.i.i.i.i18.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i18
  %.05.i.i.i.i.i.i.i19 = phi i64 [ %i.gi, %.lr.ph.i.i.i.i.i.i.i18 ], [ %.05.i.i.i.i.i.i.i19.unr, %.lr.ph.i.i.i.i.i.i.i18.prol.loopexit ] ; 4 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %.05.i.i.i.i.i.i.i19 ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.538.24.copyload, i64 %.05.i.i.i.i.i.i.i19
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !19
  %i.fy = fmul float %i.ep, %i.fx
  %i.fz = load float, ptr %i.fv, align 4, !tbaa !19
  %i.ga = fsub float %i.fz, %i.fy
  store float %i.ga, ptr %i.fv, align 4, !tbaa !19
  %i.gb = add nuw nsw i64 %.05.i.i.i.i.i.i.i19, 1 ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.gb ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.538.24.copyload, i64 %i.gb
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !19
  %i.gf = fmul float %i.ep, %i.ge
  %i.gg = load float, ptr %i.gc, align 4, !tbaa !19
  %i.gh = fsub float %i.gg, %i.gf
  store float %i.gh, ptr %i.gc, align 4, !tbaa !19
  %i.gi = add nuw nsw i64 %.05.i.i.i.i.i.i.i19, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i20.1 = icmp eq i64 %i.gi, %.0.i.i.i.i.i.i.i11
  br i1 %exitcond.not.i.i.i.i.i.i.i20.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEKNS_3MapISI_Li0ENS_6StrideILi0ELi0EEEEEEEEENS0_13sub_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i18, !llvm.loop !281

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEKNS_3MapISI_Li0ENS_6StrideILi0ELi0EEEEEEEEENS0_13sub_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i18.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i18, %middle.block106, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i10
  %i.gj = icmp sgt i64 %i.ey, 3
  br i1 %i.gj, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i12

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEKNS_3MapISI_Li0ENS_6StrideILi0ELi0EEEEEEEEENS0_13sub_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.gk = insertelement <1 x float> poison, float %i.ep, i64 0
  %i.gl = shufflevector <1 x float> %i.gk, <1 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i16

._crit_edge.i.i.i.i.i.i12:                        ; preds = %.lr.ph.i.i.i.i.i.i16, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEKNS_3MapISI_Li0ENS_6StrideILi0ELi0EEEEEEEEENS0_13sub_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.gm = icmp slt i64 %i.fb, %i.er
  br i1 %i.gm, label %.lr.ph.i17.i.i.i.i.i.i13.preheader, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i13.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i12
  %11 = shl nsw i64 %i.ez, 2
  %i.gn = add i64 %.0.i.i.i.i.i.i.i11, %11
  %i.go = sub i64 %i.er, %i.gn                    ; 3 uses
  %min.iters.check118 = icmp ult i64 %i.go, 12
  br i1 %min.iters.check118, label %.lr.ph.i17.i.i.i.i.i.i13.preheader191, label %vector.memcheck109

vector.memcheck109:                               ; preds = %.lr.ph.i17.i.i.i.i.i.i13.preheader
  %i.gp = shl i64 %i.ez, 4
  %i.gq = shl i64 %.0.i.i.i.i.i.i.i11, 2
  %i.gr = add i64 %i.gp, %i.gq                    ; 2 uses
  %scevgep110 = getelementptr i8, ptr %i.eq, i64 %i.gr
  %i.gs = shl i64 %i.er, 2                        ; 2 uses
  %scevgep111 = getelementptr i8, ptr %i.eq, i64 %i.gs
  %scevgep112 = getelementptr i8, ptr %.sroa.538.24.copyload, i64 %i.gr
  %scevgep113 = getelementptr i8, ptr %.sroa.538.24.copyload, i64 %i.gs
  %bound0114 = icmp ult ptr %scevgep110, %scevgep113
  %bound1115 = icmp ult ptr %scevgep112, %scevgep111
  %found.conflict116 = and i1 %bound0114, %bound1115
  br i1 %found.conflict116, label %.lr.ph.i17.i.i.i.i.i.i13.preheader191, label %vector.ph119

vector.ph119:                                     ; preds = %vector.memcheck109
  %n.vec120 = and i64 %i.go, -8                   ; 3 uses
  %i.gt = add i64 %i.fb, %n.vec120
  %broadcast.splatinsert121 = insertelement <4 x float> poison, float %i.ep, i64 0
  %broadcast.splat122 = shufflevector <4 x float> %broadcast.splatinsert121, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph119
  %index124 = phi i64 [ 0, %vector.ph119 ], [ %index.next129, %vector.body123 ] ; 2 uses
  %i.gu = add i64 %i.fb, %index124                ; 2 uses
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.gu ; 3 uses
  %i.gw = getelementptr inbounds [4 x i8], ptr %.sroa.538.24.copyload, i64 %i.gu ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %wide.load125 = load <4 x float>, ptr %i.gw, align 4, !tbaa !19, !alias.scope !282
  %wide.load126 = load <4 x float>, ptr %i.gx, align 4, !tbaa !19, !alias.scope !282
  %i.gy = fmul <4 x float> %broadcast.splat122, %wide.load125
  %i.gz = fmul <4 x float> %broadcast.splat122, %wide.load126
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 16 ; 2 uses
  %wide.load127 = load <4 x float>, ptr %i.gv, align 4, !tbaa !19, !alias.scope !285, !noalias !282
  %wide.load128 = load <4 x float>, ptr %i.ha, align 4, !tbaa !19, !alias.scope !285, !noalias !282
  %i.hb = fsub <4 x float> %wide.load127, %i.gy
  %i.hc = fsub <4 x float> %wide.load128, %i.gz
  store <4 x float> %i.hb, ptr %i.gv, align 4, !tbaa !19, !alias.scope !285, !noalias !282
  store <4 x float> %i.hc, ptr %i.ha, align 4, !tbaa !19, !alias.scope !285, !noalias !282
  %index.next129 = add nuw i64 %index124, 8       ; 2 uses
  %i.hd = icmp eq i64 %index.next129, %n.vec120
  br i1 %i.hd, label %middle.block130, label %vector.body123, !llvm.loop !287

middle.block130:                                  ; preds = %vector.body123
  %cmp.n131 = icmp eq i64 %i.go, %n.vec120
  br i1 %cmp.n131, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i13.preheader191

.lr.ph.i17.i.i.i.i.i.i13.preheader191:            ; preds = %vector.memcheck109, %.lr.ph.i17.i.i.i.i.i.i13.preheader, %middle.block130
  %.05.i18.i.i.i.i.i.i14.ph = phi i64 [ %i.fb, %vector.memcheck109 ], [ %i.fb, %.lr.ph.i17.i.i.i.i.i.i13.preheader ], [ %i.gt, %middle.block130 ] ; 6 uses
  %i.he = sub i64 %i.er, %.05.i18.i.i.i.i.i.i14.ph
  %.neg212 = add i64 %.05.i18.i.i.i.i.i.i14.ph, 1
  %xtraiter201 = and i64 %i.he, 1
  %lcmp.mod202.not = icmp eq i64 %xtraiter201, 0
  br i1 %lcmp.mod202.not, label %.lr.ph.i17.i.i.i.i.i.i13.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i13.prol

.lr.ph.i17.i.i.i.i.i.i13.prol:                    ; preds = %.lr.ph.i17.i.i.i.i.i.i13.preheader191
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %.05.i18.i.i.i.i.i.i14.ph ; 2 uses
  %i.hg = getelementptr inbounds [4 x i8], ptr %.sroa.538.24.copyload, i64 %.05.i18.i.i.i.i.i.i14.ph
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !19
  %i.hi = fmul float %i.ep, %i.hh
  %i.hj = load float, ptr %i.hf, align 4, !tbaa !19
  %i.hk = fsub float %i.hj, %i.hi
  store float %i.hk, ptr %i.hf, align 4, !tbaa !19
  %i.hl = add nsw i64 %.05.i18.i.i.i.i.i.i14.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i13.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i13.prol.loopexit:           ; preds = %.lr.ph.i17.i.i.i.i.i.i13.prol, %.lr.ph.i17.i.i.i.i.i.i13.preheader191
  %.05.i18.i.i.i.i.i.i14.unr = phi i64 [ %.05.i18.i.i.i.i.i.i14.ph, %.lr.ph.i17.i.i.i.i.i.i13.preheader191 ], [ %i.hl, %.lr.ph.i17.i.i.i.i.i.i13.prol ]
  %i.hm = icmp eq i64 %i.er, %.neg212
  br i1 %i.hm, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i13

.lr.ph.i17.i.i.i.i.i.i13:                         ; preds = %.lr.ph.i17.i.i.i.i.i.i13.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i13
  %.05.i18.i.i.i.i.i.i14 = phi i64 [ %i.ia, %.lr.ph.i17.i.i.i.i.i.i13 ], [ %.05.i18.i.i.i.i.i.i14.unr, %.lr.ph.i17.i.i.i.i.i.i13.prol.loopexit ] ; 4 uses
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %.05.i18.i.i.i.i.i.i14 ; 2 uses
  %i.ho = getelementptr inbounds [4 x i8], ptr %.sroa.538.24.copyload, i64 %.05.i18.i.i.i.i.i.i14
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !19
  %i.hq = fmul float %i.ep, %i.hp
  %i.hr = load float, ptr %i.hn, align 4, !tbaa !19
  %i.hs = fsub float %i.hr, %i.hq
  store float %i.hs, ptr %i.hn, align 4, !tbaa !19
  %i.ht = add nsw i64 %.05.i18.i.i.i.i.i.i14, 1   ; 2 uses
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.ht ; 2 uses
  %i.hv = getelementptr inbounds [4 x i8], ptr %.sroa.538.24.copyload, i64 %i.ht
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !19
  %i.hx = fmul float %i.ep, %i.hw
  %i.hy = load float, ptr %i.hu, align 4, !tbaa !19
  %i.hz = fsub float %i.hy, %i.hx
  store float %i.hz, ptr %i.hu, align 4, !tbaa !19
  %i.ia = add nsw i64 %.05.i18.i.i.i.i.i.i14, 2   ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i15.1 = icmp eq i64 %i.ia, %i.er
  br i1 %exitcond.not.i19.i.i.i.i.i.i15.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i13, !llvm.loop !288

.lr.ph.i.i.i.i.i.i16:                             ; preds = %.lr.ph.i.i.i.i.i.i16, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i17 = phi i64 [ %i.ih, %.lr.ph.i.i.i.i.i.i16 ], [ %.0.i.i.i.i.i.i.i11, %.lr.ph.i.preheader.i.i.i.i.i ] ; 3 uses
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %.021.i.i.i.i.i.i17 ; 2 uses
  %i.ic = getelementptr inbounds [4 x i8], ptr %.sroa.538.24.copyload, i64 %.021.i.i.i.i.i.i17
  %i.id = load <4 x float>, ptr %i.ic, align 1, !tbaa !47
  %i.ie = fmul <4 x float> %i.gl, %i.id
  %i.if = load <4 x float>, ptr %i.ib, align 16, !tbaa !47
  %i.ig = fsub <4 x float> %i.if, %i.ie
  store <4 x float> %i.ig, ptr %i.ib, align 16, !tbaa !47
  %i.ih = add nsw i64 %.021.i.i.i.i.i.i17, 4      ; 2 uses
  %i.ii = icmp slt i64 %i.ih, %i.fb
  br i1 %i.ii, label %.lr.ph.i.i.i.i.i.i16, label %._crit_edge.i.i.i.i.i.i12, !llvm.loop !289

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i13.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i13, %middle.block130, %._crit_edge.i.i.i.i.i.i12
  %i.ij = load float, ptr %2, align 4, !tbaa !19, !noalias !290 ; 9 uses
  %.sroa.6.sroa.0.0.copyload = load ptr, ptr %9, align 8 ; 10 uses
  %.sroa.6.sroa.0.0.copyload134 = ptrtoaddr ptr %.sroa.6.sroa.0.0.copyload to i64
  %.sroa.6.sroa.4.0.copyload = load i64, ptr %i.v, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ik = ptrtoint ptr %4 to i64                  ; 2 uses
  %i.il = lshr exact i64 %i.ik, 2
  %i.im = sub nsw i64 0, %i.il
  %i.in = and i64 %i.im, 2
  %i.io = call i64 @llvm.smin.i64(i64 %i.in, i64 %.sroa.6.sroa.4.0.copyload) ; 6 uses
  %i.ip = sub i64 %.sroa.6.sroa.4.0.copyload, %i.io ; 2 uses
  %i.iq = and i64 %i.ip, -4                       ; 2 uses
  %i.ir = add nsw i64 %i.iq, %i.io                ; 5 uses
  %i.is = icmp sgt i64 %i.io, 0
  br i1 %i.is, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKS7_EEKNS_3MapIS7_Li0ENS_6StrideILi0ELi0EEEEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit
  %i.it = load float, ptr %.sroa.6.sroa.0.0.copyload, align 4, !tbaa !19
  %i.iu = fmul float %i.ij, %i.it
  store float %i.iu, ptr %4, align 8, !tbaa !19
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.io, 1
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKS7_EEKNS_3MapIS7_Li0ENS_6StrideILi0ELi0EEEEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.iv = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.6.sroa.0.0.copyload, i64 4
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !19
  %i.iy = fmul float %i.ij, %i.ix
  store float %i.iy, ptr %i.iv, align 4, !tbaa !19
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKS7_EEKNS_3MapIS7_Li0ENS_6StrideILi0ELi0EEEEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKS7_EEKNS_3MapIS7_Li0ENS_6StrideILi0ELi0EEEEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit
  %.not.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.iq, 0
  br i1 %.not.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKS7_EEKNS_3MapIS7_Li0ENS_6StrideILi0ELi0EEEEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.iz = insertelement <1 x float> poison, float %i.ij, i64 0
  %i.ja = shufflevector <1 x float> %i.iz, <1 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKS7_EEKNS_3MapIS7_Li0ENS_6StrideILi0ELi0EEEEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jb = icmp slt i64 %i.ir, %.sroa.6.sroa.4.0.copyload
  br i1 %i.jb, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.loopexit.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %12 = and i64 %i.ip, -4
  %i.jc = add i64 %i.io, %12
  %i.jd = sub i64 %.sroa.6.sroa.4.0.copyload, %i.jc ; 3 uses
  %min.iters.check136 = icmp ult i64 %i.jd, 8
  %i.je = sub i64 %.sroa.6.sroa.0.0.copyload134, %i.ik
  %diff.check = icmp ugt i64 %i.je, -32
  %or.cond189 = select i1 %min.iters.check136, i1 true, i1 %diff.check
  br i1 %or.cond189, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader190, label %vector.ph137

vector.ph137:                                     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec138 = and i64 %i.jd, -8                   ; 3 uses
  %i.jf = add i64 %i.ir, %n.vec138
  %broadcast.splatinsert139 = insertelement <4 x float> poison, float %i.ij, i64 0
  %broadcast.splat140 = shufflevector <4 x float> %broadcast.splatinsert139, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph137
  %index142 = phi i64 [ 0, %vector.ph137 ], [ %index.next145, %vector.body141 ] ; 2 uses
  %i.jg = add i64 %i.ir, %index142                ; 2 uses
  %i.jh = getelementptr inbounds [4 x i8], ptr %4, i64 %i.jg ; 2 uses
  %i.ji = getelementptr inbounds [4 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.jg ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %wide.load143 = load <4 x float>, ptr %i.ji, align 4, !tbaa !19
  %wide.load144 = load <4 x float>, ptr %i.jj, align 4, !tbaa !19
  %i.jk = fmul <4 x float> %broadcast.splat140, %wide.load143
  %i.jl = fmul <4 x float> %broadcast.splat140, %wide.load144
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  store <4 x float> %i.jk, ptr %i.jh, align 4, !tbaa !19
  store <4 x float> %i.jl, ptr %i.jm, align 4, !tbaa !19
  %index.next145 = add nuw i64 %index142, 8       ; 2 uses
  %i.jn = icmp eq i64 %index.next145, %n.vec138
  br i1 %i.jn, label %middle.block146, label %vector.body141, !llvm.loop !293

middle.block146:                                  ; preds = %vector.body141
  %cmp.n147 = icmp eq i64 %i.jd, %n.vec138
  br i1 %cmp.n147, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader190

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader190: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block146
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ir, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.jf, %middle.block146 ] ; 4 uses
  %i.jo = sub i64 %.sroa.6.sroa.4.0.copyload, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter204 = and i64 %i.jo, 3                 ; 2 uses
  %lcmp.mod205.not = icmp eq i64 %xtraiter204, 0
  br i1 %lcmp.mod205.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader190, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.jt, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader190 ] ; 3 uses
  %prol.iter206 = phi i64 [ %prol.iter206.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader190 ]
  %i.jp = getelementptr inbounds [4 x i8], ptr %4, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.jq = getelementptr inbounds [4 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !19
  %i.js = fmul float %i.ij, %i.jr
  store float %i.js, ptr %i.jp, align 4, !tbaa !19
  %i.jt = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter206.next = add i64 %prol.iter206, 1   ; 2 uses
  %prol.iter206.cmp.not = icmp eq i64 %prol.iter206.next, %xtraiter204
  br i1 %prol.iter206.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !294

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader190
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader190 ], [ %i.jt, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ju = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.sroa.6.sroa.4.0.copyload
  %i.jv = icmp ugt i64 %i.ju, -4
  br i1 %i.jv, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.kp, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.jw = getelementptr inbounds [4 x i8], ptr %4, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jx = getelementptr inbounds [4 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !19
  %i.jz = fmul float %i.ij, %i.jy
  store float %i.jz, ptr %i.jw, align 4, !tbaa !19
  %i.ka = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.kb = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ka
  %i.kc = getelementptr inbounds [4 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.ka
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !19
  %i.ke = fmul float %i.ij, %i.kd
  store float %i.ke, ptr %i.kb, align 4, !tbaa !19
  %i.kf = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.kg = getelementptr inbounds [4 x i8], ptr %4, i64 %i.kf
  %i.kh = getelementptr inbounds [4 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.kf
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !19
  %i.kj = fmul float %i.ij, %i.ki
  store float %i.kj, ptr %i.kg, align 4, !tbaa !19
  %i.kk = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.kl = getelementptr inbounds [4 x i8], ptr %4, i64 %i.kk
  %i.km = getelementptr inbounds [4 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.kk
  %i.kn = load float, ptr %i.km, align 4, !tbaa !19
  %i.ko = fmul float %i.ij, %i.kn
  store float %i.ko, ptr %i.kl, align 4, !tbaa !19
  %i.kp = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.kp, %.sroa.6.sroa.4.0.copyload
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !295

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ku, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.io, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.kq = getelementptr inbounds [4 x i8], ptr %4, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kr = getelementptr inbounds [4 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ks = load <4 x float>, ptr %i.kr, align 1, !tbaa !47
  %i.kt = fmul <4 x float> %i.ja, %i.ks
  store <4 x float> %i.kt, ptr %i.kq, align 16, !tbaa !47
  %i.ku = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.kv = icmp slt i64 %i.ku, %i.ir
  br i1 %i.kv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !296

.loopexit.i.i.i.i.i.i.i:                          ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block146, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.kw, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !177 ; 3 uses
  %i.ky = icmp sgt i64 %i.b, 1
  %i.kz = icmp sgt i64 %i.u, 0
  %or.cond = select i1 %i.ky, i1 %i.kz, i1 false
  br i1 %or.cond, label %.preheader.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNS1_IKS3_Lin1ELi1ELb0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit

.preheader.i.i.i.i.i.i.i.i.preheader:             ; preds = %.loopexit.i.i.i.i.i.i.i
  %i.la = shl i64 %i.b, 3
  %i.lb = shl i64 %i.u, 2                         ; 2 uses
  %i.lc = getelementptr i8, ptr %i.x, i64 %i.la
  %i.ld = getelementptr i8, ptr %i.lc, i64 %i.lb
  %scevgep150 = getelementptr i8, ptr %i.ld, i64 -8 ; 2 uses
  %scevgep151 = getelementptr i8, ptr %4, i64 %i.lb
  %i.le = shl i64 %i.b, 2
  %i.lf = getelementptr i8, ptr %i.kx, i64 %i.le
  %scevgep152 = getelementptr i8, ptr %i.lf, i64 -4
  %min.iters.check160 = icmp ult i64 %i.u, 8
  %bound0153 = icmp ult ptr %i.y, %scevgep151
  %bound1154 = icmp ult ptr %4, %scevgep150
  %found.conflict155 = and i1 %bound0153, %bound1154
  %bound0156 = icmp ult ptr %i.y, %scevgep152
  %bound1157 = icmp ult ptr %i.kx, %scevgep150
  %found.conflict158 = and i1 %bound0156, %bound1157
  %conflict.rdx = or i1 %found.conflict155, %found.conflict158
  %n.vec162 = and i64 %i.u, 9223372036854775800   ; 3 uses
  %cmp.n173 = icmp eq i64 %i.u, %n.vec162
  %xtraiter207 = and i64 %i.u, 1
  %lcmp.mod208.not = icmp eq i64 %xtraiter207, 0
  br label %.preheader.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i
  %.0810.i.i.i.i.i.i.i.i = phi i64 [ %i.mb, %._crit_edge.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.0810.i.i.i.i.i.i.i.i, 3
  %i.lg = getelementptr i8, ptr %i.y, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %.0810.i.i.i.i.i.i.i.i ; 4 uses
  %brmerge = select i1 %min.iters.check160, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph159.preheader, label %vector.ph161

vector.ph161:                                     ; preds = %.preheader.i.i.i.i.i.i.i.i
  %i.li = load float, ptr %i.lh, align 4, !tbaa !19, !alias.scope !297
  %broadcast.splatinsert167 = insertelement <4 x float> poison, float %i.li, i64 0
  %broadcast.splat168 = shufflevector <4 x float> %broadcast.splatinsert167, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %vector.ph161
  %index164 = phi i64 [ 0, %vector.ph161 ], [ %index.next171, %vector.body163 ] ; 3 uses
  %i.lj = getelementptr [4 x i8], ptr %i.lg, i64 %index164 ; 3 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index164 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %wide.load165 = load <4 x float>, ptr %i.lk, align 8, !tbaa !19, !alias.scope !300
  %wide.load166 = load <4 x float>, ptr %i.ll, align 8, !tbaa !19, !alias.scope !300
  %i.lm = fmul <4 x float> %wide.load165, %broadcast.splat168
  %i.ln = fmul <4 x float> %wide.load166, %broadcast.splat168
  %i.lo = getelementptr i8, ptr %i.lj, i64 16     ; 2 uses
  %wide.load169 = load <4 x float>, ptr %i.lj, align 4, !tbaa !19, !alias.scope !302, !noalias !304
  %wide.load170 = load <4 x float>, ptr %i.lo, align 4, !tbaa !19, !alias.scope !302, !noalias !304
  %i.lp = fsub <4 x float> %wide.load169, %i.lm
  %i.lq = fsub <4 x float> %wide.load170, %i.ln
  store <4 x float> %i.lp, ptr %i.lj, align 4, !tbaa !19, !alias.scope !302, !noalias !304
  store <4 x float> %i.lq, ptr %i.lo, align 4, !tbaa !19, !alias.scope !302, !noalias !304
  %index.next171 = add nuw i64 %index164, 8       ; 2 uses
  %i.lr = icmp eq i64 %index.next171, %n.vec162
  br i1 %i.lr, label %middle.block172, label %vector.body163, !llvm.loop !305

middle.block172:                                  ; preds = %vector.body163
  br i1 %cmp.n173, label %._crit_edge.i.i.i.i.i.i.i.i, label %scalar.ph159.preheader

scalar.ph159.preheader:                           ; preds = %.preheader.i.i.i.i.i.i.i.i, %middle.block172
  %.09.i.i.i.i.i.i.i.i.ph = phi i64 [ %n.vec162, %middle.block172 ], [ 0, %.preheader.i.i.i.i.i.i.i.i ] ; 5 uses
  %.neg213 = or disjoint i64 %.09.i.i.i.i.i.i.i.i.ph, 1
  br i1 %lcmp.mod208.not, label %scalar.ph159.prol.loopexit, label %scalar.ph159.prol

scalar.ph159.prol:                                ; preds = %scalar.ph159.preheader
  %i.ls = getelementptr [4 x i8], ptr %i.lg, i64 %.09.i.i.i.i.i.i.i.i.ph ; 2 uses
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.09.i.i.i.i.i.i.i.i.ph
  %i.lu = load float, ptr %i.lt, align 8, !tbaa !19
  %i.lv = load float, ptr %i.lh, align 4, !tbaa !19
  %i.lw = fmul float %i.lu, %i.lv
  %i.lx = load float, ptr %i.ls, align 4, !tbaa !19
  %i.ly = fsub float %i.lx, %i.lw
  store float %i.ly, ptr %i.ls, align 4, !tbaa !19
  %i.lz = or disjoint i64 %.09.i.i.i.i.i.i.i.i.ph, 1
  br label %scalar.ph159.prol.loopexit

scalar.ph159.prol.loopexit:                       ; preds = %scalar.ph159.prol, %scalar.ph159.preheader
  %.09.i.i.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.ph, %scalar.ph159.preheader ], [ %i.lz, %scalar.ph159.prol ]
  %i.ma = icmp eq i64 %i.u, %.neg213
  br i1 %i.ma, label %._crit_edge.i.i.i.i.i.i.i.i, label %scalar.ph159

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %scalar.ph159.prol.loopexit, %scalar.ph159, %middle.block172
  %i.mb = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.mb, %i.w
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNS1_IKS3_Lin1ELi1ELb0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i, !llvm.loop !306

scalar.ph159:                                     ; preds = %scalar.ph159.prol.loopexit, %scalar.ph159
  %.09.i.i.i.i.i.i.i.i = phi i64 [ %i.mr, %scalar.ph159 ], [ %.09.i.i.i.i.i.i.i.i.unr, %scalar.ph159.prol.loopexit ] ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKfPf:bb.a
  %n.vec = sub nsw i64 %i.au, %i.bb               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %index ; 3 uses
  %i.bd = shl nuw nsw i64 %index, 3
  %i.be = shl i64 %index, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bd
  %i.bg = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.be
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %wide.vec = load <8 x float>, ptr %i.bf, align 4, !tbaa !19, !alias.scope !328
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec55 = load <8 x float>, ptr %i.bh, align 4, !tbaa !19, !alias.scope !328
  %strided.vec56 = shufflevector <8 x float> %wide.vec55, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.bc, align 4, !tbaa !19, !alias.scope !331, !noalias !328
  %wide.load57 = load <4 x float>, ptr %i.bi, align 4, !tbaa !19, !alias.scope !331, !noalias !328
  %i.bj = fadd <4 x float> %strided.vec, %wide.load
  %i.bk = fadd <4 x float> %strided.vec56, %wide.load57
  store <4 x float> %i.bj, ptr %i.bc, align 4, !tbaa !19, !alias.scope !331, !noalias !328
  store <4 x float> %i.bk, ptr %i.bi, align 4, !tbaa !19, !alias.scope !331, !noalias !328
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i.i.preheader120, label %vector.body, !llvm.loop !333

.lr.ph.i.i.i.i.i.i.preheader120:                  ; preds = %vector.body, %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %n.vec, %vector.body ] ; 6 uses
  %i.bm = sub i64 %i.au, %.05.i.i.i.i.i.i.ph
  %.neg = add i64 %.05.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %i.bm, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader120
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.05.i.i.i.i.i.i.ph ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.prol = shl nuw nsw i64 %.05.i.i.i.i.i.i.ph, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i.i.i.i.i.i.i.i.prol
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !19
  %i.bq = load float, ptr %i.bn, align 4, !tbaa !19
  %i.br = fadd float %i.bp, %i.bq
  store float %i.br, ptr %i.bn, align 4, !tbaa !19
  %i.bs = add nuw nsw i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader120
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader120 ], [ %i.bs, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.bt = icmp eq i64 %i.au, %.neg
  br i1 %i.bt, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.05.i.i.i.i.i.i ; 2 uses
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.05.i.i.i.i.i.i, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i.i.i.i.i.i.i.i
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !19
  %i.bx = load float, ptr %i.bu, align 4, !tbaa !19
  %i.by = fadd float %i.bw, %i.bx
  store float %i.by, ptr %i.bu, align 4, !tbaa !19
  %i.bz = add nuw nsw i64 %.05.i.i.i.i.i.i, 1     ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.bz ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.1 = shl nuw nsw i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i.i.i.i.i.i.i.i.1
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !19
  %i.cd = load float, ptr %i.ca, align 4, !tbaa !19
  %i.ce = fadd float %i.cc, %i.cd
  store float %i.ce, ptr %i.ca, align 4, !tbaa !19
  %i.cf = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i8.1 = icmp eq i64 %i.cf, %i.au
  br i1 %exitcond.not.i.i.i.i.i.i8.1, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !334

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %.sroa.529.32.copyload.pre = load ptr, ptr %9, align 8
  br label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit: ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.loopexit, %bb.d
  %.sroa.529.32.copyload = phi ptr [ %.sroa.529.32.copyload.pre, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.loopexit ], [ %i.at, %bb.d ] ; 6 uses
  %i.cg = load float, ptr %2, align 4, !tbaa !19, !noalias !335 ; 5 uses
  %i.ch = load i64, ptr %i.ae, align 8, !tbaa !81, !noalias !338 ; 9 uses
  %i.ci = icmp sgt i64 %i.ch, 0
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i.i9.preheader, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit

.lr.ph.i.i.i.i.i.i9.preheader:                    ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit
  %min.iters.check65 = icmp ult i64 %i.ch, 9
  br i1 %min.iters.check65, label %.lr.ph.i.i.i.i.i.i9.preheader119, label %vector.memcheck58

vector.memcheck58:                                ; preds = %.lr.ph.i.i.i.i.i.i9.preheader
  %i.cj = shl i64 %i.ch, 3
  %i.ck = getelementptr i8, ptr %i.as, i64 %i.cj
  %scevgep59 = getelementptr i8, ptr %i.ck, i64 -4
  %i.cl = shl i64 %i.ch, 2
  %scevgep60 = getelementptr i8, ptr %.sroa.529.32.copyload, i64 %i.cl
  %bound061 = icmp ult ptr %i.as, %scevgep60
  %bound162 = icmp ult ptr %.sroa.529.32.copyload, %scevgep59
  %found.conflict63 = and i1 %bound061, %bound162
  br i1 %found.conflict63, label %.lr.ph.i.i.i.i.i.i9.preheader119, label %vector.ph66

vector.ph66:                                      ; preds = %vector.memcheck58
  %i.cm = and i64 %i.ch, 3                        ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 0
  %i.co = select i1 %i.cn, i64 4, i64 %i.cm
  %n.vec67 = sub nsw i64 %i.ch, %i.co             ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cg, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %vector.ph66
  %index69 = phi i64 [ 0, %vector.ph66 ], [ %index.next73, %vector.body68 ] ; 6 uses
  %i.cp = shl nuw nsw i64 %index69, 3
  %i.cq = shl i64 %index69, 3
  %i.cr = shl i64 %index69, 3
  %i.cs = shl i64 %index69, 3
  %i.ct = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.cp ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.cq
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.cr
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.cs
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.sroa.529.32.copyload, i64 %index69
  %wide.load70 = load <4 x float>, ptr %i.da, align 4, !tbaa !19, !alias.scope !341
  %i.db = fmul <4 x float> %broadcast.splat, %wide.load70
  %wide.vec71 = load <8 x float>, ptr %i.ct, align 4, !tbaa !19, !alias.scope !344, !noalias !341
  %strided.vec72 = shufflevector <8 x float> %wide.vec71, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.dc = fsub <4 x float> %strided.vec72, %i.db  ; 4 uses
  %i.dd = extractelement <4 x float> %i.dc, i64 0
  store float %i.dd, ptr %i.ct, align 4, !tbaa !19, !alias.scope !344, !noalias !341
  %i.de = extractelement <4 x float> %i.dc, i64 1
  store float %i.de, ptr %i.cv, align 4, !tbaa !19, !alias.scope !344, !noalias !341
  %i.df = extractelement <4 x float> %i.dc, i64 2
  store float %i.df, ptr %i.cx, align 4, !tbaa !19, !alias.scope !344, !noalias !341
  %i.dg = extractelement <4 x float> %i.dc, i64 3
  store float %i.dg, ptr %i.cz, align 4, !tbaa !19, !alias.scope !344, !noalias !341
  %index.next73 = add nuw i64 %index69, 4         ; 2 uses
  %i.dh = icmp eq i64 %index.next73, %n.vec67
  br i1 %i.dh, label %.lr.ph.i.i.i.i.i.i9.preheader119, label %vector.body68, !llvm.loop !346

.lr.ph.i.i.i.i.i.i9.preheader119:                 ; preds = %vector.body68, %vector.memcheck58, %.lr.ph.i.i.i.i.i.i9.preheader
  %.05.i.i.i.i.i.i10.ph = phi i64 [ 0, %vector.memcheck58 ], [ 0, %.lr.ph.i.i.i.i.i.i9.preheader ], [ %n.vec67, %vector.body68 ] ; 6 uses
  %i.di = sub i64 %i.ch, %.05.i.i.i.i.i.i10.ph
  %.neg132 = add i64 %.05.i.i.i.i.i.i10.ph, 1
  %xtraiter121 = and i64 %i.di, 1
  %lcmp.mod122.not = icmp eq i64 %xtraiter121, 0
  br i1 %lcmp.mod122.not, label %.lr.ph.i.i.i.i.i.i9.prol.loopexit, label %.lr.ph.i.i.i.i.i.i9.prol

.lr.ph.i.i.i.i.i.i9.prol:                         ; preds = %.lr.ph.i.i.i.i.i.i9.preheader119
  %.idx.i.i.i.i.i.i.i.i11.prol = shl nuw nsw i64 %.05.i.i.i.i.i.i10.ph, 3
  %i.dj = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i.i.i.i.i.i.i.i11.prol ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.529.32.copyload, i64 %.05.i.i.i.i.i.i10.ph
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !19
  %i.dm = fmul float %i.cg, %i.dl
  %i.dn = load float, ptr %i.dj, align 4, !tbaa !19
  %i.do = fsub float %i.dn, %i.dm
  store float %i.do, ptr %i.dj, align 4, !tbaa !19
  %i.dp = add nuw nsw i64 %.05.i.i.i.i.i.i10.ph, 1
  br label %.lr.ph.i.i.i.i.i.i9.prol.loopexit

.lr.ph.i.i.i.i.i.i9.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i.i9.prol, %.lr.ph.i.i.i.i.i.i9.preheader119
  %.05.i.i.i.i.i.i10.unr = phi i64 [ %.05.i.i.i.i.i.i10.ph, %.lr.ph.i.i.i.i.i.i9.preheader119 ], [ %i.dp, %.lr.ph.i.i.i.i.i.i9.prol ]
  %i.dq = icmp eq i64 %i.ch, %.neg132
  br i1 %i.dq, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i9

.lr.ph.i.i.i.i.i.i9:                              ; preds = %.lr.ph.i.i.i.i.i.i9.prol.loopexit, %.lr.ph.i.i.i.i.i.i9
  %.05.i.i.i.i.i.i10 = phi i64 [ %i.ee, %.lr.ph.i.i.i.i.i.i9 ], [ %.05.i.i.i.i.i.i10.unr, %.lr.ph.i.i.i.i.i.i9.prol.loopexit ] ; 4 uses
  %.idx.i.i.i.i.i.i.i.i11 = shl nuw nsw i64 %.05.i.i.i.i.i.i10, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i.i.i.i.i.i.i.i11 ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.sroa.529.32.copyload, i64 %.05.i.i.i.i.i.i10
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !19
  %i.du = fmul float %i.cg, %i.dt
  %i.dv = load float, ptr %i.dr, align 4, !tbaa !19
  %i.dw = fsub float %i.dv, %i.du
  store float %i.dw, ptr %i.dr, align 4, !tbaa !19
  %i.dx = add nuw nsw i64 %.05.i.i.i.i.i.i10, 1   ; 2 uses
  %.idx.i.i.i.i.i.i.i.i11.1 = shl nuw nsw i64 %i.dx, 3
  %i.dy = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i.i.i.i.i.i.i.i11.1 ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.529.32.copyload, i64 %i.dx
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !19
  %i.eb = fmul float %i.cg, %i.ea
  %i.ec = load float, ptr %i.dy, align 4, !tbaa !19
  %i.ed = fsub float %i.ec, %i.eb
  store float %i.ed, ptr %i.dy, align 4, !tbaa !19
  %i.ee = add nuw nsw i64 %.05.i.i.i.i.i.i10, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i12.1 = icmp eq i64 %i.ee, %i.ch
  br i1 %exitcond.not.i.i.i.i.i.i12.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i9, !llvm.loop !347

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i9, %.lr.ph.i.i.i.i.i.i9.prol.loopexit
  %.pre = load float, ptr %2, align 4, !tbaa !19, !noalias !348
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit: ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit
  %i.ef = phi float [ %.pre, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit ], [ %i.cg, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit ] ; 9 uses
  %.sroa.6.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 10 uses
  %.sroa.6.sroa.0.0.copyload77 = ptrtoaddr ptr %.sroa.6.sroa.0.0.copyload to i64
  %.sroa.6.sroa.4.0.copyload = load i64, ptr %.sroa.040.sroa.4.0..sroa_idx, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.eg = ptrtoint ptr %4 to i64                  ; 2 uses
  %i.eh = lshr exact i64 %i.eg, 2
  %i.ei = sub nsw i64 0, %i.eh
  %i.ej = and i64 %i.ei, 2
  %i.ek = call i64 @llvm.smin.i64(i64 %i.ej, i64 %.sroa.6.sroa.4.0.copyload) ; 6 uses
  %i.el = sub i64 %.sroa.6.sroa.4.0.copyload, %i.ek ; 2 uses
  %i.em = and i64 %i.el, -4                       ; 2 uses
  %i.en = add nsw i64 %i.em, %i.ek                ; 5 uses
  %i.eo = icmp sgt i64 %i.ek, 0
  br i1 %i.eo, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKS7_EEKNS_5BlockIKNS6_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit
  %i.ep = load float, ptr %.sroa.6.sroa.0.0.copyload, align 4, !tbaa !19
  %i.eq = fmul float %i.ef, %i.ep
  store float %i.eq, ptr %4, align 8, !tbaa !19
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ek, 1
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKS7_EEKNS_5BlockIKNS6_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.6.sroa.0.0.copyload, i64 4
  %i.et = load float, ptr %i.es, align 4, !tbaa !19
  %i.eu = fmul float %i.ef, %i.et
  store float %i.eu, ptr %i.er, align 4, !tbaa !19
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKS7_EEKNS_5BlockIKNS6_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKS7_EEKNS_5BlockIKNS6_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit
  %.not.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.em, 0
  br i1 %.not.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKS7_EEKNS_5BlockIKNS6_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ev = insertelement <1 x float> poison, float %i.ef, i64 0
  %i.ew = shufflevector <1 x float> %i.ev, <1 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKS7_EEKNS_5BlockIKNS6_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ex = icmp slt i64 %i.en, %.sroa.6.sroa.4.0.copyload
  br i1 %i.ex, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.loopexit.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %10 = and i64 %i.el, -4
  %i.ey = add i64 %i.ek, %10
  %i.ez = sub i64 %.sroa.6.sroa.4.0.copyload, %i.ey ; 3 uses
  %min.iters.check79 = icmp ult i64 %i.ez, 8
  %i.fa = sub i64 %.sroa.6.sroa.0.0.copyload77, %i.eg
  %diff.check = icmp ugt i64 %i.fa, -32
  %or.cond117 = select i1 %min.iters.check79, i1 true, i1 %diff.check
  br i1 %or.cond117, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader118, label %vector.ph80

vector.ph80:                                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec81 = and i64 %i.ez, -8                    ; 3 uses
  %i.fb = add i64 %i.en, %n.vec81
  %broadcast.splatinsert82 = insertelement <4 x float> poison, float %i.ef, i64 0
  %broadcast.splat83 = shufflevector <4 x float> %broadcast.splatinsert82, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body84

vector.body84:                                    ; preds = %vector.body84, %vector.ph80
  %index85 = phi i64 [ 0, %vector.ph80 ], [ %index.next88, %vector.body84 ] ; 2 uses
  %i.fc = add i64 %i.en, %index85                 ; 2 uses
  %i.fd = getelementptr inbounds [4 x i8], ptr %4, i64 %i.fc ; 2 uses
  %i.fe = getelementptr inbounds [4 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.fc ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %wide.load86 = load <4 x float>, ptr %i.fe, align 4, !tbaa !19
  %wide.load87 = load <4 x float>, ptr %i.ff, align 4, !tbaa !19
  %i.fg = fmul <4 x float> %broadcast.splat83, %wide.load86
  %i.fh = fmul <4 x float> %broadcast.splat83, %wide.load87
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store <4 x float> %i.fg, ptr %i.fd, align 4, !tbaa !19
  store <4 x float> %i.fh, ptr %i.fi, align 4, !tbaa !19
  %index.next88 = add nuw i64 %index85, 8         ; 2 uses
  %i.fj = icmp eq i64 %index.next88, %n.vec81
  br i1 %i.fj, label %middle.block89, label %vector.body84, !llvm.loop !351

middle.block89:                                   ; preds = %vector.body84
  %cmp.n = icmp eq i64 %i.ez, %n.vec81
  br i1 %cmp.n, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader118

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader118: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block89
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.en, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.fb, %middle.block89 ] ; 4 uses
  %i.fk = sub i64 %.sroa.6.sroa.4.0.copyload, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter123 = and i64 %i.fk, 3                 ; 2 uses
  %lcmp.mod124.not = icmp eq i64 %xtraiter123, 0
  br i1 %lcmp.mod124.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader118, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.fp, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader118 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader118 ]
  %i.fl = getelementptr inbounds [4 x i8], ptr %4, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.fm = getelementptr inbounds [4 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !19
  %i.fo = fmul float %i.ef, %i.fn
  store float %i.fo, ptr %i.fl, align 4, !tbaa !19
  %i.fp = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter123
  br i1 %prol.iter.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !352

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader118
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader118 ], [ %i.fp, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.fq = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.sroa.6.sroa.4.0.copyload
  %i.fr = icmp ugt i64 %i.fq, -4
  br i1 %i.fr, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gl, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.fs = getelementptr inbounds [4 x i8], ptr %4, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ft = getelementptr inbounds [4 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !19
  %i.fv = fmul float %i.ef, %i.fu
  store float %i.fv, ptr %i.fs, align 4, !tbaa !19
  %i.fw = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.fx = getelementptr inbounds [4 x i8], ptr %4, i64 %i.fw
  %i.fy = getelementptr inbounds [4 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.fw
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !19
  %i.ga = fmul float %i.ef, %i.fz
  store float %i.ga, ptr %i.fx, align 4, !tbaa !19
  %i.gb = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.gc = getelementptr inbounds [4 x i8], ptr %4, i64 %i.gb
  %i.gd = getelementptr inbounds [4 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.gb
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !19
  %i.gf = fmul float %i.ef, %i.ge
  store float %i.gf, ptr %i.gc, align 4, !tbaa !19
  %i.gg = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.gh = getelementptr inbounds [4 x i8], ptr %4, i64 %i.gg
  %i.gi = getelementptr inbounds [4 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.gg
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !19
  %i.gk = fmul float %i.ef, %i.gj
  store float %i.gk, ptr %i.gh, align 4, !tbaa !19
  %i.gl = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.gl, %.sroa.6.sroa.4.0.copyload
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !353

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ek, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gm = getelementptr inbounds [4 x i8], ptr %4, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gn = getelementptr inbounds [4 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.go = load <4 x float>, ptr %i.gn, align 1, !tbaa !47
  %i.gp = fmul <4 x float> %i.ew, %i.go
  store <4 x float> %i.gp, ptr %i.gm, align 16, !tbaa !47
  %i.gq = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.gr = icmp slt i64 %i.gq, %i.en
  br i1 %i.gr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !354

.loopexit.i.i.i.i.i.i.i:                          ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block89, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gs, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !309 ; 3 uses
  %i.gu = icmp sgt i64 %i.af, 0
  %i.gv = icmp sgt i64 %i.b, 1
  %or.cond = and i1 %i.gv, %i.gu
  br i1 %or.cond, label %.preheader.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNS1_IKS3_Lin1ELi1ELb0EEEEENS_3MapINS2_IfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit

.preheader.i.i.i.i.i.i.i.i.preheader:             ; preds = %.loopexit.i.i.i.i.i.i.i
  %i.gw = shl i64 %i.af, 3
  %i.gx = shl i64 %i.b, 2                         ; 2 uses
  %i.gy = getelementptr i8, ptr %i.ai, i64 %i.gw
  %i.gz = getelementptr i8, ptr %i.gy, i64 %i.gx
  %scevgep92 = getelementptr i8, ptr %i.gz, i64 -8 ; 2 uses
  %i.ha = getelementptr i8, ptr %4, i64 %i.gx
  %scevgep93 = getelementptr i8, ptr %i.ha, i64 -4
  %i.hb = shl i64 %i.af, 2
  %scevgep94 = getelementptr i8, ptr %i.gt, i64 %i.hb
  %i.hc = add nsw i64 %i.b, -2
  %min.iters.check102 = icmp ult i64 %i.b, 9
  %bound095 = icmp ult ptr %i.aj, %scevgep93
  %bound196 = icmp ult ptr %4, %scevgep92
  %found.conflict97 = and i1 %bound095, %bound196
  %bound098 = icmp ult ptr %i.aj, %scevgep94
  %bound199 = icmp ult ptr %i.gt, %scevgep92
  %found.conflict100 = and i1 %bound098, %bound199
  %conflict.rdx = or i1 %found.conflict97, %found.conflict100
  %n.vec104 = and i64 %i.ah, -8                   ; 3 uses
  %cmp.n115 = icmp eq i64 %i.ah, %n.vec104
  %i.hd = and i64 %i.b, 1
  %lcmp.mod126.not.not = icmp eq i64 %i.hd, 0
  br label %.preheader.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i
  %.0810.i.i.i.i.i.i.i.i = phi i64 [ %i.hz, %._crit_edge.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.0810.i.i.i.i.i.i.i.i, 3
  %i.he = getelementptr i8, ptr %i.aj, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %.0810.i.i.i.i.i.i.i.i ; 4 uses
  %brmerge = select i1 %min.iters.check102, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph101.preheader, label %vector.ph103

vector.ph103:                                     ; preds = %.preheader.i.i.i.i.i.i.i.i
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !19, !alias.scope !355
  %broadcast.splatinsert109 = insertelement <4 x float> poison, float %i.hg, i64 0
  %broadcast.splat110 = shufflevector <4 x float> %broadcast.splatinsert109, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph103
  %index106 = phi i64 [ 0, %vector.ph103 ], [ %index.next113, %vector.body105 ] ; 3 uses
  %i.hh = getelementptr [4 x i8], ptr %i.he, i64 %index106 ; 3 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index106 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %wide.load107 = load <4 x float>, ptr %i.hi, align 8, !tbaa !19, !alias.scope !358
  %wide.load108 = load <4 x float>, ptr %i.hj, align 8, !tbaa !19, !alias.scope !358
  %i.hk = fmul <4 x float> %wide.load107, %broadcast.splat110
  %i.hl = fmul <4 x float> %wide.load108, %broadcast.splat110
  %i.hm = getelementptr i8, ptr %i.hh, i64 16     ; 2 uses
  %wide.load111 = load <4 x float>, ptr %i.hh, align 4, !tbaa !19, !alias.scope !360, !noalias !362
  %wide.load112 = load <4 x float>, ptr %i.hm, align 4, !tbaa !19, !alias.scope !360, !noalias !362
  %i.hn = fsub <4 x float> %wide.load111, %i.hk
  %i.ho = fsub <4 x float> %wide.load112, %i.hl
  store <4 x float> %i.hn, ptr %i.hh, align 4, !tbaa !19, !alias.scope !360, !noalias !362
  store <4 x float> %i.ho, ptr %i.hm, align 4, !tbaa !19, !alias.scope !360, !noalias !362
  %index.next113 = add nuw i64 %index106, 8       ; 2 uses
  %i.hp = icmp eq i64 %index.next113, %n.vec104
  br i1 %i.hp, label %middle.block114, label %vector.body105, !llvm.loop !363

middle.block114:                                  ; preds = %vector.body105
  br i1 %cmp.n115, label %._crit_edge.i.i.i.i.i.i.i.i, label %scalar.ph101.preheader

scalar.ph101.preheader:                           ; preds = %.preheader.i.i.i.i.i.i.i.i, %middle.block114
  %.09.i.i.i.i.i.i.i.i.ph = phi i64 [ %n.vec104, %middle.block114 ], [ 0, %.preheader.i.i.i.i.i.i.i.i ] ; 5 uses
  br i1 %lcmp.mod126.not.not, label %scalar.ph101.prol, label %scalar.ph101.prol.loopexit

scalar.ph101.prol:                                ; preds = %scalar.ph101.preheader
  %i.hq = getelementptr [4 x i8], ptr %i.he, i64 %.09.i.i.i.i.i.i.i.i.ph ; 2 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.09.i.i.i.i.i.i.i.i.ph
  %i.hs = load float, ptr %i.hr, align 8, !tbaa !19
  %i.ht = load float, ptr %i.hf, align 4, !tbaa !19
  %i.hu = fmul float %i.hs, %i.ht
  %i.hv = load float, ptr %i.hq, align 4, !tbaa !19
  %i.hw = fsub float %i.hv, %i.hu
  store float %i.hw, ptr %i.hq, align 4, !tbaa !19
  %i.hx = or disjoint i64 %.09.i.i.i.i.i.i.i.i.ph, 1
  br label %scalar.ph101.prol.loopexit

scalar.ph101.prol.loopexit:                       ; preds = %scalar.ph101.prol, %scalar.ph101.preheader
  %.09.i.i.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.ph, %scalar.ph101.preheader ], [ %i.hx, %scalar.ph101.prol ]
  %i.hy = icmp eq i64 %i.hc, %.09.i.i.i.i.i.i.i.i.ph
  br i1 %i.hy, label %._crit_edge.i.i.i.i.i.i.i.i, label %scalar.ph101

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %scalar.ph101.prol.loopexit, %scalar.ph101, %middle.block114
  %i.hz = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.hz, %i.af
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNS1_IKS3_Lin1ELi1ELb0EEEEENS_3MapINS2_IfLi1ELin1ELi1ELi1ELi2EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i, !llvm.loop !364

scalar.ph101:                                     ; preds = %scalar.ph101.prol.loopexit, %scalar.ph101
  %.09.i.i.i.i.i.i.i.i = phi i64 [ %i.ip, %scalar.ph101 ], [ %.09.i.i.i.i.i.i.i.i.unr, %scalar.ph101.prol.loopexit ] ; 4 uses
end_hunk_3
begin_hunk_4_@_ZNK5Eigen19HouseholderSequenceINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEENS1_IfLi1ELi1ELi0ELi1ELi1EEELi1EE18applyThisOnTheLeftIS2_NS1_IfLi2ELi1ELi0ELi2ELi1EEEEEvRT_RT0_b:bb.a
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.idx.i.i.i.i.us
  store ptr %i.ae, ptr %7, align 8, !tbaa !125, !alias.scope !367
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !81, !alias.scope !367
  store i64 %i.ac, ptr %i.j, align 8, !tbaa !81, !alias.scope !367
  store ptr %1, ptr %i.k, align 8, !tbaa !38, !alias.scope !367
  store i64 %i.ab, ptr %i.l, align 8, !tbaa !81, !alias.scope !367
  store i64 %i.ab, ptr %i.m, align 8, !tbaa !81, !alias.scope !367
  store i64 2, ptr %i.n, align 8, !tbaa !167, !alias.scope !367
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !370)
  call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.af = add i64 %i.ab, 1                        ; 2 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !160, !noalias !376, !nonnull !161, !align !162 ; 2 uses
  %i.ah = sub i64 1, %i.ab
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.af
  %.idx.i.i.i.i.i.us = shl nsw i64 %i.z, 3
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %.idx.i.i.i.i.i.us
  store ptr %i.aj, ptr %8, align 8, !tbaa !177, !alias.scope !376
  store i64 %i.ah, ptr %i.o, align 8, !tbaa !81, !alias.scope !376
  store ptr %i.ag, ptr %i.p, align 8, !tbaa !38, !alias.scope !376
  store i64 %i.af, ptr %i.q, align 8, !tbaa !81, !alias.scope !376
  store i64 %i.z, ptr %i.r, align 8, !tbaa !81, !alias.scope !376
  store i64 2, ptr %i.s, align 8, !tbaa !179, !alias.scope !376
  %i.ak = load ptr, ptr %i.t, align 8, !tbaa !181, !nonnull !161, !align !182
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.z
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.am = add nuw nsw i64 %.063.us, 1             ; 2 uses
  %i.an = load i64, ptr %i.d, align 8, !tbaa !45  ; 2 uses
  %i.ao = icmp slt i64 %i.am, %i.an
  br i1 %i.ao, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !377

.lr.ph65:                                         ; preds = %bb.a
  %i.ap = icmp samesign ult i64 %i.e, 96
  %.lhs.trunc = add nuw i64 %i.e, 1
  %i.aq = lshr i64 %.lhs.trunc, 1
  %.zext = and i64 %i.aq, 127
  %i.ar = select i1 %i.ap, i64 %.zext, i64 48     ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph65, %bb.d
  %i.bk = phi i64 [ %i.e, %.lr.ph65 ], [ %i.cf, %bb.d ] ; 2 uses
  %.04764 = phi i64 [ 0, %.lr.ph65 ], [ %.pre-phi, %bb.d ] ; 4 uses
  %i.bl = load i8, ptr %i.a, align 8, !tbaa !42, !range !163, !noundef !161
  %i.bm = trunc nuw i8 %i.bl to i1                ; 2 uses
  br i1 %i.bm, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.bn = add nuw nsw i64 %.04764, %i.ar          ; 2 uses
  %.sroa.speculated58 = call i64 @llvm.smin.i64(i64 %i.bn, i64 %i.bk)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bo = sub nsw i64 %i.bk, %.04764              ; 2 uses
  %i.bp = sub nsw i64 %i.bo, %i.ar
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %i.bp, i64 0)
  %.pre = add nuw nsw i64 %.04764, %i.ar
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %.pre-phi = phi i64 [ %i.bn, %.thread ], [ %.pre, %bb.c ] ; 2 uses
  %i.bq = phi i64 [ %.sroa.speculated58, %.thread ], [ %i.bo, %bb.c ]
  %i.br = phi i64 [ %.04764, %.thread ], [ %.sroa.speculated, %bb.c ] ; 6 uses
  %i.bs = sub nsw i64 %i.bq, %i.br                ; 2 uses
  %i.bt = load i64, ptr %i.as, align 8, !tbaa !46
  %i.bu = add i64 %i.bt, %i.br                    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.bv = load ptr, ptr %0, align 8, !tbaa !160, !nonnull !161, !align !162 ; 2 uses
  %i.bw = sub i64 2, %i.bu                        ; 3 uses
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.bu
  %.idx.i.i.i = shl nsw i64 %i.br, 3
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %.idx.i.i.i
  store ptr %i.by, ptr %4, align 8, !tbaa !125
  store i64 %i.bw, ptr %i.at, align 8, !tbaa !81
  store i64 %i.bs, ptr %i.au, align 8, !tbaa !81
  store ptr %i.bv, ptr %i.av, align 8, !tbaa !38
  store i64 %i.bu, ptr %i.aw, align 8, !tbaa !81
  store i64 %i.br, ptr %i.ax, align 8, !tbaa !81
  store i64 2, ptr %i.ay, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.bz = select i1 %.048.shrunk, i64 %i.bu, i64 0 ; 2 uses
  %spec.select = select i1 %.048.shrunk, i64 %i.bw, i64 2
  %i.ca = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bu
  %.idx.i.i.i54 = shl nsw i64 %i.bz, 3
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %.idx.i.i.i54
  store ptr %i.cb, ptr %5, align 8, !tbaa !125
  store i64 %i.bw, ptr %i.az, align 8, !tbaa !81
  store i64 %spec.select, ptr %i.ba, align 8, !tbaa !81
  store ptr %1, ptr %i.bb, align 8, !tbaa !38
  store i64 %i.bu, ptr %i.bc, align 8, !tbaa !81
  store i64 %i.bz, ptr %i.bd, align 8, !tbaa !81
  store i64 2, ptr %i.be, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.cc = load ptr, ptr %i.bf, align 8, !tbaa !181, !nonnull !161, !align !182 ; 2 uses
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.br
  store ptr %i.cd, ptr %6, align 8, !tbaa !378, !alias.scope !380
  store i64 %i.bs, ptr %i.bg, align 8, !tbaa !81, !alias.scope !380
  store ptr %i.cc, ptr %i.bh, align 8, !tbaa !40, !alias.scope !380
  store i64 %i.br, ptr %i.bi, align 8, !tbaa !81, !alias.scope !380
  store i64 1, ptr %i.bj, align 8, !tbaa !383, !alias.scope !380
  %i.ce = xor i1 %i.bm, true
  call void @_ZN5Eigen8internal35apply_block_householder_on_the_leftINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEES5_NS_11VectorBlockIKNS3_IfLi1ELi1ELi0ELi1ELi1EEELin1EEEEEvRT_RKT0_RKT1_b(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %6, i1 noundef zeroext %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.cf = load i64, ptr %i.d, align 8, !tbaa !45  ; 2 uses
  %i.cg = icmp slt i64 %.pre-phi, %i.cf
  br i1 %i.cg, label %bb.b, label %.loopexit, !llvm.loop !385

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.ch = phi i64 [ %i.cz, %.lr.ph.split ], [ %i.e, %.lr.ph ]
  %.063 = phi i64 [ %i.cy, %.lr.ph.split ], [ 0, %.lr.ph ] ; 3 uses
  %i.ci = load i8, ptr %i.a, align 8, !tbaa !42, !range !163, !noundef !161
  %i.cj = trunc nuw i8 %i.ci to i1
  %i.ck = xor i64 %.063, -1
  %i.cl = add i64 %i.ch, %i.ck
  %i.cm = select i1 %i.cj, i64 %.063, i64 %i.cl   ; 4 uses
  %i.cn = load i64, ptr %i.h, align 8, !tbaa !46
  %i.co = add i64 %i.cm, %i.cn                    ; 5 uses
  %i.cp = sub i64 2, %i.co
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.cq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.co
  store ptr %i.cq, ptr %7, align 8, !tbaa !125, !alias.scope !367
  store i64 %i.cp, ptr %i.i, align 8, !tbaa !81, !alias.scope !367
  store i64 2, ptr %i.j, align 8, !tbaa !81, !alias.scope !367
  store ptr %1, ptr %i.k, align 8, !tbaa !38, !alias.scope !367
  store i64 %i.co, ptr %i.l, align 8, !tbaa !81, !alias.scope !367
  store i64 0, ptr %i.m, align 8, !tbaa !81, !alias.scope !367
  store i64 2, ptr %i.n, align 8, !tbaa !167, !alias.scope !367
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !370)
  call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.cr = add i64 %i.co, 1                        ; 2 uses
  %i.cs = load ptr, ptr %0, align 8, !tbaa !160, !noalias !376, !nonnull !161, !align !162 ; 2 uses
  %i.ct = sub i64 1, %i.co
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.cr
  %.idx.i.i.i.i.i = shl nsw i64 %i.cm, 3
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 %.idx.i.i.i.i.i
  store ptr %i.cv, ptr %8, align 8, !tbaa !177, !alias.scope !376
  store i64 %i.ct, ptr %i.o, align 8, !tbaa !81, !alias.scope !376
  store ptr %i.cs, ptr %i.p, align 8, !tbaa !38, !alias.scope !376
  store i64 %i.cr, ptr %i.q, align 8, !tbaa !81, !alias.scope !376
  store i64 %i.cm, ptr %i.r, align 8, !tbaa !81, !alias.scope !376
  store i64 2, ptr %i.s, align 8, !tbaa !179, !alias.scope !376
  %i.cw = load ptr, ptr %i.t, align 8, !tbaa !181, !nonnull !161, !align !182
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.cm
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.cx, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.cy = add nuw nsw i64 %.063, 1                ; 2 uses
  %i.cz = load i64, ptr %i.d, align 8, !tbaa !45  ; 2 uses
  %i.da = icmp slt i64 %i.cy, %i.cz
  br i1 %i.da, label %.lr.ph.split, label %.loopexit, !llvm.loop !377

.loopexit:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.d, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductINS_5BlockINSC_INS5_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSC_IKSD_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EEELi3ELi0EE3runERSM_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !386, !nonnull !161, !align !388 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !81   ; 11 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !218
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = and i64 %i.f, 3
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = lshr exact i64 %i.f, 2
  %i.i = sub nsw i64 0, %i.h
  %i.j = and i64 %i.i, 3
  %i.k = tail call i64 @llvm.smin.i64(i64 %i.j, i64 %i.d)
  br label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.k, %bb.b ], [ %i.d, %bb.a ] ; 15 uses
  %i.l = sub nsw i64 %i.d, %.0.i                  ; 2 uses
  %i.m = sdiv i64 %i.l, 4                         ; 3 uses
  %i.n = shl nsw i64 %i.m, 2
  %i.o = add nsw i64 %i.n, %.0.i                  ; 9 uses
  %i.p = icmp sgt i64 %.0.i, 0
  br i1 %i.p, label %.lr.ph.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_5BlockINSE_INS7_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSE_IKSF_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit

.lr.ph.i:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit
  %i.q = load ptr, ptr %0, align 8, !tbaa !389, !nonnull !161, !align !388
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !239  ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !390, !nonnull !161, !align !388 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !391, !noalias !392 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !177, !noalias !395 ; 14 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  %i.y = load i64, ptr %i.x, align 8, !tbaa !81, !noalias !395 ; 4 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.us.preheader.i, label %.lr.ph.split.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.us.preheader.i: ; preds = %.lr.ph.i
  %i.aa = shl i64 %.0.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.r, i8 0, i64 %i.aa, i1 false), !tbaa !19
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_5BlockINSE_INS7_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSE_IKSF_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.ab = icmp sgt i64 %i.y, 1
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i.preheader.us.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.preheader

.lr.ph.i.i.i.i.i.preheader.us.i.preheader:        ; preds = %.lr.ph.split.i
  %i.ac = add nsw i64 %i.y, -1                    ; 2 uses
  %i.ad = add nsw i64 %i.y, -2
  %xtraiter96 = and i64 %i.ac, 3                  ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 3
  %unroll_iter = and i64 %i.ac, -4
  %lcmp.mod97.not = icmp eq i64 %xtraiter96, 0
  %lcmp.mod99 = icmp ne i64 %xtraiter96, 0
  br label %.lr.ph.i.i.i.i.i.preheader.us.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.preheader: ; preds = %.lr.ph.split.i
  %min.iters.check = icmp ult i64 %.0.i, 16
  br i1 %min.iters.check, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.preheader94, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.preheader
  %i.af = shl i64 %.0.i, 2                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.af ; 2 uses
  %scevgep57 = getelementptr i8, ptr %i.u, i64 %i.af
  %scevgep58 = getelementptr i8, ptr %i.w, i64 4
  %bound0 = icmp ult ptr %i.r, %scevgep57
  %bound1 = icmp ult ptr %i.u, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound059 = icmp ult ptr %i.r, %scevgep58
  %bound160 = icmp ult ptr %i.w, %scevgep
  %found.conflict61 = and i1 %bound059, %bound160
  %conflict.rdx = or i1 %found.conflict, %found.conflict61
  br i1 %conflict.rdx, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.preheader94, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0.i, 9223372036854775800     ; 3 uses
  %i.ag = load float, ptr %i.w, align 4, !tbaa !19, !alias.scope !398
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ag, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load = load <4 x float>, ptr %i.ah, align 4, !tbaa !19, !alias.scope !401
  %wide.load62 = load <4 x float>, ptr %i.ai, align 4, !tbaa !19, !alias.scope !401
  %i.aj = fmul <4 x float> %wide.load, %broadcast.splat
  %i.ak = fmul <4 x float> %wide.load62, %broadcast.splat
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <4 x float> %i.aj, ptr %i.al, align 4, !tbaa !19, !alias.scope !403, !noalias !405
  store <4 x float> %i.ak, ptr %i.am, align 4, !tbaa !19, !alias.scope !403, !noalias !405
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !406

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_5BlockINSE_INS7_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSE_IKSF_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.preheader94

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.preheader94: ; preds = %vector.memcheck, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.preheader, %middle.block
  %.05.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.0.i, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.preheader94, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.prol
  %.05.i.prol = phi i64 [ %i.at, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.prol ], [ %.05.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.preheader94 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.prol ], [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.preheader94 ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.05.i.prol
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !19
  %i.aq = load float, ptr %i.w, align 4, !tbaa !19
  %i.ar = fmul float %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.05.i.prol
  store float %i.ar, ptr %i.as, align 4, !tbaa !19
  %i.at = add nuw nsw i64 %.05.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.prol, !llvm.loop !407

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.preheader94
  %.05.i.unr = phi i64 [ %.05.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.preheader94 ], [ %i.at, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.prol ]
  %i.au = sub nsw i64 %.05.i.ph, %.0.i
  %i.av = icmp ugt i64 %i.au, -4
  br i1 %i.av, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_5BlockINSE_INS7_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSE_IKSF_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i

.lr.ph.i.i.i.i.i.preheader.us.i:                  ; preds = %.lr.ph.i.i.i.i.i.preheader.us.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i
  %.05.us6.i = phi i64 [ %i.ck, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.us.i.preheader ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.05.us6.i ; 6 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !19
  %i.ay = load float, ptr %i.w, align 4, !tbaa !19
  %i.az = fmul float %i.ax, %i.ay                 ; 2 uses
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i.us.i.epil.preheader, label %.lr.ph.i.i.i.i.i.us.i

.lr.ph.i.i.i.i.i.us.i:                            ; preds = %.lr.ph.i.i.i.i.i.preheader.us.i, %.lr.ph.i.i.i.i.i.us.i
  %.01725.i.i.i.i.i.us.i = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.i.us.i ], [ 1, %.lr.ph.i.i.i.i.i.preheader.us.i ] ; 6 uses
  %.02324.i.i.i.i.i.us.i = phi float [ %i.ca, %.lr.ph.i.i.i.i.i.us.i ], [ %i.az, %.lr.ph.i.i.i.i.i.preheader.us.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.i.i.i.us.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.us.i ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i = shl i64 %.01725.i.i.i.i.i.us.i, 3
  %i.ba = getelementptr i8, ptr %i.aw, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !19
  %i.bc = getelementptr [4 x i8], ptr %i.w, i64 %.01725.i.i.i.i.i.us.i
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !19
  %i.be = fmul float %i.bb, %i.bd
  %i.bf = fadd float %.02324.i.i.i.i.i.us.i, %i.be
  %i.bg = add nuw nsw i64 %.01725.i.i.i.i.i.us.i, 1 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.us.i.1 = shl i64 %i.bg, 3
  %i.bh = getelementptr i8, ptr %i.aw, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.1
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !19
  %i.bj = getelementptr [4 x i8], ptr %i.w, i64 %i.bg
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !19
  %i.bl = fmul float %i.bi, %i.bk
  %i.bm = fadd float %i.bf, %i.bl
  %i.bn = add nuw nsw i64 %.01725.i.i.i.i.i.us.i, 2 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.us.i.2 = shl i64 %i.bn, 3
  %i.bo = getelementptr i8, ptr %i.aw, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.2
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !19
  %i.bq = getelementptr [4 x i8], ptr %i.w, i64 %i.bn
  %i.br = load float, ptr %i.bq, align 4, !tbaa !19
  %i.bs = fmul float %i.bp, %i.br
  %i.bt = fadd float %i.bm, %i.bs
  %i.bu = add nuw nsw i64 %.01725.i.i.i.i.i.us.i, 3 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.us.i.3 = shl i64 %i.bu, 3
  %i.bv = getelementptr i8, ptr %i.aw, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.3
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !19
  %i.bx = getelementptr [4 x i8], ptr %i.w, i64 %i.bu
  %i.by = load float, ptr %i.bx, align 4, !tbaa !19
  %i.bz = fmul float %i.bw, %i.by
  %i.ca = fadd float %i.bt, %i.bz                 ; 3 uses
  %i.cb = add nuw nsw i64 %.01725.i.i.i.i.i.us.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.us.i, !llvm.loop !408

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.us.i
  br i1 %lcmp.mod97.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i, label %.lr.ph.i.i.i.i.i.us.i.epil.preheader

.lr.ph.i.i.i.i.i.us.i.epil.preheader:             ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader.us.i
  %.01725.i.i.i.i.i.us.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader.us.i ], [ %i.cb, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa ]
  %.02324.i.i.i.i.i.us.i.epil.init = phi float [ %i.az, %.lr.ph.i.i.i.i.i.preheader.us.i ], [ %i.ca, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod99)
  br label %.lr.ph.i.i.i.i.i.us.i.epil

.lr.ph.i.i.i.i.i.us.i.epil:                       ; preds = %.lr.ph.i.i.i.i.i.us.i.epil, %.lr.ph.i.i.i.i.i.us.i.epil.preheader
  %.01725.i.i.i.i.i.us.i.epil = phi i64 [ %i.ci, %.lr.ph.i.i.i.i.i.us.i.epil ], [ %.01725.i.i.i.i.i.us.i.epil.init, %.lr.ph.i.i.i.i.i.us.i.epil.preheader ] ; 3 uses
  %.02324.i.i.i.i.i.us.i.epil = phi float [ %i.ch, %.lr.ph.i.i.i.i.i.us.i.epil ], [ %.02324.i.i.i.i.i.us.i.epil.init, %.lr.ph.i.i.i.i.i.us.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.us.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.us.i.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i.epil = shl i64 %.01725.i.i.i.i.i.us.i.epil, 3
  %i.cc = getelementptr i8, ptr %i.aw, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.epil
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !19
  %i.ce = getelementptr [4 x i8], ptr %i.w, i64 %.01725.i.i.i.i.i.us.i.epil
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !19
  %i.cg = fmul float %i.cd, %i.cf
  %i.ch = fadd float %.02324.i.i.i.i.i.us.i.epil, %i.cg ; 2 uses
  %i.ci = add nuw nsw i64 %.01725.i.i.i.i.i.us.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter96
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i, label %.lr.ph.i.i.i.i.i.us.i.epil, !llvm.loop !409

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i: ; preds = %.lr.ph.i.i.i.i.i.us.i.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa
  %.lcssa93 = phi float [ %i.ca, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa ], [ %i.ch, %.lr.ph.i.i.i.i.i.us.i.epil ]
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.05.us6.i
  store float %.lcssa93, ptr %i.cj, align 4, !tbaa !19
  %i.ck = add nuw nsw i64 %.05.us6.i, 1           ; 2 uses
  %exitcond11.not.i = icmp eq i64 %i.ck, %.0.i
  br i1 %exitcond11.not.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_5BlockINSE_INS7_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSE_IKSF_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit, label %.lr.ph.i.i.i.i.i.preheader.us.i, !llvm.loop !410

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i
  %.05.i = phi i64 [ %i.di, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i ], [ %.05.i.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.prol.loopexit ] ; 6 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.05.i
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !19
  %i.cn = load float, ptr %i.w, align 4, !tbaa !19
  %i.co = fmul float %i.cm, %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.05.i
  store float %i.co, ptr %i.cp, align 4, !tbaa !19
  %i.cq = add nuw nsw i64 %.05.i, 1               ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.cq
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !19
  %i.ct = load float, ptr %i.w, align 4, !tbaa !19
  %i.cu = fmul float %i.cs, %i.ct
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.cq
  store float %i.cu, ptr %i.cv, align 4, !tbaa !19
  %i.cw = add nuw nsw i64 %.05.i, 2               ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.cw
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !19
  %i.cz = load float, ptr %i.w, align 4, !tbaa !19
  %i.da = fmul float %i.cy, %i.cz
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.cw
  store float %i.da, ptr %i.db, align 4, !tbaa !19
  %i.dc = add nuw nsw i64 %.05.i, 3               ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.dc
  %i.de = load float, ptr %i.dd, align 4, !tbaa !19
  %i.df = load float, ptr %i.w, align 4, !tbaa !19
  %i.dg = fmul float %i.de, %i.df
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.dc
  store float %i.dg, ptr %i.dh, align 4, !tbaa !19
  %i.di = add nuw nsw i64 %.05.i, 4               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.di, %.0.i
  br i1 %exitcond.not.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_5BlockINSE_INS7_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSE_IKSF_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i, !llvm.loop !411

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_5BlockINSE_INS7_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSE_IKSF_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i, %middle.block, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.us.preheader.i
  %i.dj = icmp sgt i64 %i.l, 3
  br i1 %i.dj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_5BlockINSE_INS7_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSE_IKSF_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE12assignPacketILi16ELi0EDv4_fEEvl.exit, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_5BlockINSE_INS7_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSE_IKSF_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit
  %i.dl = icmp slt i64 %i.o, %i.d
  br i1 %i.dl, label %.lr.ph.i17, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_5BlockINSE_INS7_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSE_IKSF_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit32

.lr.ph.i17:                                       ; preds = %._crit_edge
  %i.dm = load ptr, ptr %0, align 8, !tbaa !389, !nonnull !161, !align !388
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !239 ; 10 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !390, !nonnull !161, !align !388 ; 3 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !391, !noalias !412 ; 9 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 104
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !177, !noalias !415 ; 14 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 112
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !81, !noalias !415 ; 4 uses
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.us.preheader.i31, label %.lr.ph.split.i18

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.us.preheader.i31: ; preds = %.lr.ph.i17
  %i.dw = shl i64 %i.o, 2
  %scevgep.i = getelementptr i8, ptr %i.dn, i64 %i.dw
  %i.dx = sub i64 %i.d, %i.o
  %i.dy = shl i64 %i.dx, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.dy, i1 false), !tbaa !19
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_5BlockINSE_INS7_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSE_IKSF_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit32

.lr.ph.split.i18:                                 ; preds = %.lr.ph.i17
  %i.dz = icmp sgt i64 %i.du, 1
  br i1 %i.dz, label %.lr.ph.i.i.i.i.i.preheader.us.i22.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19.preheader

.lr.ph.i.i.i.i.i.preheader.us.i22.preheader:      ; preds = %.lr.ph.split.i18
  %i.ea = add nsw i64 %i.du, -1                   ; 2 uses
  %i.eb = add nsw i64 %i.du, -2
  %xtraiter110 = and i64 %i.ea, 3                 ; 3 uses
  %i.ec = icmp ult i64 %i.eb, 3
  %unroll_iter115 = and i64 %i.ea, -4
  %lcmp.mod112.not = icmp eq i64 %xtraiter110, 0
  %lcmp.mod114 = icmp ne i64 %xtraiter110, 0
  br label %.lr.ph.i.i.i.i.i.preheader.us.i22

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19.preheader: ; preds = %.lr.ph.split.i18
  %1 = shl nsw i64 %i.m, 2
  %i.ed = add i64 %.0.i, %1
  %i.ee = sub i64 %i.d, %i.ed                     ; 3 uses
  %min.iters.check77 = icmp ult i64 %i.ee, 20
  br i1 %min.iters.check77, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19.preheader90, label %vector.memcheck63

vector.memcheck63:                                ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19.preheader
  %i.ef = shl i64 %i.m, 4
  %i.eg = shl i64 %.0.i, 2
  %i.eh = add i64 %i.ef, %i.eg                    ; 2 uses
  %scevgep64 = getelementptr i8, ptr %i.dn, i64 %i.eh ; 2 uses
  %i.ei = shl i64 %i.d, 2                         ; 2 uses
  %scevgep65 = getelementptr i8, ptr %i.dn, i64 %i.ei ; 2 uses
  %scevgep66 = getelementptr i8, ptr %i.dq, i64 %i.eh
  %scevgep67 = getelementptr i8, ptr %i.dq, i64 %i.ei
  %scevgep68 = getelementptr i8, ptr %i.ds, i64 4
  %bound069 = icmp ult ptr %scevgep64, %scevgep67
  %bound170 = icmp ult ptr %scevgep66, %scevgep65
  %found.conflict71 = and i1 %bound069, %bound170
  %bound072 = icmp ult ptr %scevgep64, %scevgep68
  %bound173 = icmp ult ptr %i.ds, %scevgep65
  %found.conflict74 = and i1 %bound072, %bound173
  %conflict.rdx75 = or i1 %found.conflict71, %found.conflict74
  br i1 %conflict.rdx75, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19.preheader90, label %vector.ph78

vector.ph78:                                      ; preds = %vector.memcheck63
  %n.vec79 = and i64 %i.ee, -8                    ; 3 uses
  %i.ej = add i64 %i.o, %n.vec79
  %i.ek = load float, ptr %i.ds, align 4, !tbaa !19, !alias.scope !418
  %broadcast.splatinsert84 = insertelement <4 x float> poison, float %i.ek, i64 0
  %broadcast.splat85 = shufflevector <4 x float> %broadcast.splatinsert84, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph78
  %index81 = phi i64 [ 0, %vector.ph78 ], [ %index.next86, %vector.body80 ] ; 2 uses
  %i.el = add i64 %i.o, %index81                  ; 2 uses
  %i.em = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.el ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %wide.load82 = load <4 x float>, ptr %i.em, align 4, !tbaa !19, !alias.scope !421
  %wide.load83 = load <4 x float>, ptr %i.en, align 4, !tbaa !19, !alias.scope !421
  %i.eo = fmul <4 x float> %wide.load82, %broadcast.splat85
  %i.ep = fmul <4 x float> %wide.load83, %broadcast.splat85
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.el ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store <4 x float> %i.eo, ptr %i.eq, align 4, !tbaa !19, !alias.scope !423, !noalias !425
  store <4 x float> %i.ep, ptr %i.er, align 4, !tbaa !19, !alias.scope !423, !noalias !425
  %index.next86 = add nuw i64 %index81, 8         ; 2 uses
  %i.es = icmp eq i64 %index.next86, %n.vec79
  br i1 %i.es, label %middle.block87, label %vector.body80, !llvm.loop !426

middle.block87:                                   ; preds = %vector.body80
  %cmp.n88 = icmp eq i64 %i.ee, %n.vec79
  br i1 %cmp.n88, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_5BlockINSE_INS7_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSE_IKSF_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit32, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19.preheader90

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19.preheader90: ; preds = %vector.memcheck63, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19.preheader, %middle.block87
  %.05.i20.ph = phi i64 [ %i.o, %vector.memcheck63 ], [ %i.o, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19.preheader ], [ %i.ej, %middle.block87 ] ; 4 uses
  %i.et = sub i64 %i.d, %.05.i20.ph
  %xtraiter107 = and i64 %i.et, 3                 ; 2 uses
  %lcmp.mod108.not = icmp eq i64 %xtraiter107, 0
  br i1 %lcmp.mod108.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19.preheader90, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19.prol
  %.05.i20.prol = phi i64 [ %i.ez, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19.prol ], [ %.05.i20.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19.preheader90 ] ; 3 uses
  %prol.iter109 = phi i64 [ %prol.iter109.next, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19.prol ], [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19.preheader90 ]
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %.05.i20.prol
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !19
  %i.ew = load float, ptr %i.ds, align 4, !tbaa !19
  %i.ex = fmul float %i.ev, %i.ew
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %.05.i20.prol
  store float %i.ex, ptr %i.ey, align 4, !tbaa !19
  %i.ez = add nsw i64 %.05.i20.prol, 1            ; 2 uses
  %prol.iter109.next = add i64 %prol.iter109, 1   ; 2 uses
  %prol.iter109.cmp.not = icmp eq i64 %prol.iter109.next, %xtraiter107
  br i1 %prol.iter109.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19.prol, !llvm.loop !427

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19.preheader90
  %.05.i20.unr = phi i64 [ %.05.i20.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19.preheader90 ], [ %i.ez, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19.prol ]
  %i.fa = sub i64 %.05.i20.ph, %i.d
  %i.fb = icmp ugt i64 %i.fa, -4
  br i1 %i.fb, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_5BlockINSE_INS7_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSE_IKSF_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit32, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19

.lr.ph.i.i.i.i.i.preheader.us.i22:                ; preds = %.lr.ph.i.i.i.i.i.preheader.us.i22.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29
  %.05.us6.i23 = phi i64 [ %i.gq, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29 ], [ %i.o, %.lr.ph.i.i.i.i.i.preheader.us.i22.preheader ] ; 3 uses
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %.05.us6.i23 ; 6 uses
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !19
  %i.fe = load float, ptr %i.ds, align 4, !tbaa !19
  %i.ff = fmul float %i.fd, %i.fe                 ; 2 uses
  br i1 %i.ec, label %.lr.ph.i.i.i.i.i.us.i24.epil.preheader, label %.lr.ph.i.i.i.i.i.us.i24

.lr.ph.i.i.i.i.i.us.i24:                          ; preds = %.lr.ph.i.i.i.i.i.preheader.us.i22, %.lr.ph.i.i.i.i.i.us.i24
  %.01725.i.i.i.i.i.us.i25 = phi i64 [ %i.gh, %.lr.ph.i.i.i.i.i.us.i24 ], [ 1, %.lr.ph.i.i.i.i.i.preheader.us.i22 ] ; 6 uses
  %.02324.i.i.i.i.i.us.i26 = phi float [ %i.gg, %.lr.ph.i.i.i.i.i.us.i24 ], [ %i.ff, %.lr.ph.i.i.i.i.i.preheader.us.i22 ]
  %niter116 = phi i64 [ %niter116.next.3, %.lr.ph.i.i.i.i.i.us.i24 ], [ 0, %.lr.ph.i.i.i.i.i.preheader.us.i22 ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i27 = shl i64 %.01725.i.i.i.i.i.us.i25, 3
  %i.fg = getelementptr i8, ptr %i.fc, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !19
  %i.fi = getelementptr [4 x i8], ptr %i.ds, i64 %.01725.i.i.i.i.i.us.i25
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !19
  %i.fk = fmul float %i.fh, %i.fj
  %i.fl = fadd float %.02324.i.i.i.i.i.us.i26, %i.fk
  %i.fm = add nuw nsw i64 %.01725.i.i.i.i.i.us.i25, 1 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.1 = shl i64 %i.fm, 3
  %i.fn = getelementptr i8, ptr %i.fc, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.1
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !19
  %i.fp = getelementptr [4 x i8], ptr %i.ds, i64 %i.fm
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !19
  %i.fr = fmul float %i.fo, %i.fq
  %i.fs = fadd float %i.fl, %i.fr
  %i.ft = add nuw nsw i64 %.01725.i.i.i.i.i.us.i25, 2 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.2 = shl i64 %i.ft, 3
  %i.fu = getelementptr i8, ptr %i.fc, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.2
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !19
  %i.fw = getelementptr [4 x i8], ptr %i.ds, i64 %i.ft
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !19
  %i.fy = fmul float %i.fv, %i.fx
  %i.fz = fadd float %i.fs, %i.fy
  %i.ga = add nuw nsw i64 %.01725.i.i.i.i.i.us.i25, 3 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.3 = shl i64 %i.ga, 3
  %i.gb = getelementptr i8, ptr %i.fc, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.3
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !19
  %i.gd = getelementptr [4 x i8], ptr %i.ds, i64 %i.ga
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !19
  %i.gf = fmul float %i.gc, %i.ge
  %i.gg = fadd float %i.fz, %i.gf                 ; 3 uses
  %i.gh = add nuw nsw i64 %.01725.i.i.i.i.i.us.i25, 4 ; 2 uses
  %niter116.next.3 = add i64 %niter116, 4         ; 2 uses
  %niter116.ncmp.3 = icmp eq i64 %niter116.next.3, %unroll_iter115
  br i1 %niter116.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa, label %.lr.ph.i.i.i.i.i.us.i24, !llvm.loop !408

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.us.i24
  br i1 %lcmp.mod112.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29, label %.lr.ph.i.i.i.i.i.us.i24.epil.preheader

.lr.ph.i.i.i.i.i.us.i24.epil.preheader:           ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader.us.i22
  %.01725.i.i.i.i.i.us.i25.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader.us.i22 ], [ %i.gh, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ]
  %.02324.i.i.i.i.i.us.i26.epil.init = phi float [ %i.ff, %.lr.ph.i.i.i.i.i.preheader.us.i22 ], [ %i.gg, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod114)
  br label %.lr.ph.i.i.i.i.i.us.i24.epil

.lr.ph.i.i.i.i.i.us.i24.epil:                     ; preds = %.lr.ph.i.i.i.i.i.us.i24.epil, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader
  %.01725.i.i.i.i.i.us.i25.epil = phi i64 [ %i.go, %.lr.ph.i.i.i.i.i.us.i24.epil ], [ %.01725.i.i.i.i.i.us.i25.epil.init, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader ] ; 3 uses
  %.02324.i.i.i.i.i.us.i26.epil = phi float [ %i.gn, %.lr.ph.i.i.i.i.i.us.i24.epil ], [ %.02324.i.i.i.i.i.us.i26.epil.init, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader ]
  %epil.iter111 = phi i64 [ %epil.iter111.next, %.lr.ph.i.i.i.i.i.us.i24.epil ], [ 0, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.epil = shl i64 %.01725.i.i.i.i.i.us.i25.epil, 3
  %i.gi = getelementptr i8, ptr %i.fc, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.epil
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !19
  %i.gk = getelementptr [4 x i8], ptr %i.ds, i64 %.01725.i.i.i.i.i.us.i25.epil
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !19
  %i.gm = fmul float %i.gj, %i.gl
  %i.gn = fadd float %.02324.i.i.i.i.i.us.i26.epil, %i.gm ; 2 uses
  %i.go = add nuw nsw i64 %.01725.i.i.i.i.i.us.i25.epil, 1
  %epil.iter111.next = add i64 %epil.iter111, 1   ; 2 uses
  %epil.iter111.cmp.not = icmp eq i64 %epil.iter111.next, %xtraiter110
  br i1 %epil.iter111.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29, label %.lr.ph.i.i.i.i.i.us.i24.epil, !llvm.loop !428

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29: ; preds = %.lr.ph.i.i.i.i.i.us.i24.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa
  %.lcssa = phi float [ %i.gg, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ], [ %i.gn, %.lr.ph.i.i.i.i.i.us.i24.epil ]
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %.05.us6.i23
  store float %.lcssa, ptr %i.gp, align 4, !tbaa !19
  %i.gq = add nsw i64 %.05.us6.i23, 1             ; 2 uses
  %exitcond11.not.i30 = icmp eq i64 %i.gq, %i.d
  br i1 %exitcond11.not.i30, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_5BlockINSE_INS7_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSE_IKSF_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit32, label %.lr.ph.i.i.i.i.i.preheader.us.i22, !llvm.loop !410

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19
  %.05.i20 = phi i64 [ %i.ho, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19 ], [ %.05.i20.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19.prol.loopexit ] ; 6 uses
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %.05.i20
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !19
  %i.gt = load float, ptr %i.ds, align 4, !tbaa !19
  %i.gu = fmul float %i.gs, %i.gt
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %.05.i20
  store float %i.gu, ptr %i.gv, align 4, !tbaa !19
  %i.gw = add nsw i64 %.05.i20, 1                 ; 2 uses
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.gw
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !19
  %i.gz = load float, ptr %i.ds, align 4, !tbaa !19
  %i.ha = fmul float %i.gy, %i.gz
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.gw
  store float %i.ha, ptr %i.hb, align 4, !tbaa !19
  %i.hc = add nsw i64 %.05.i20, 2                 ; 2 uses
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.hc
  %i.he = load float, ptr %i.hd, align 4, !tbaa !19
  %i.hf = load float, ptr %i.ds, align 4, !tbaa !19
  %i.hg = fmul float %i.he, %i.hf
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.hc
  store float %i.hg, ptr %i.hh, align 4, !tbaa !19
  %i.hi = add nsw i64 %.05.i20, 3                 ; 2 uses
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.hi
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !19
  %i.hl = load float, ptr %i.ds, align 4, !tbaa !19
  %i.hm = fmul float %i.hk, %i.hl
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.hi
  store float %i.hm, ptr %i.hn, align 4, !tbaa !19
  %i.ho = add nsw i64 %.05.i20, 4                 ; 2 uses
  %exitcond.not.i21.3 = icmp eq i64 %i.ho, %i.d
  br i1 %exitcond.not.i21.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_5BlockINSE_INS7_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSE_IKSF_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit32, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19, !llvm.loop !429

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_5BlockINSE_INS7_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSE_IKSF_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit32: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29, %middle.block87, %._crit_edge, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.us.preheader.i31
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE12assignPacketILi16ELi0EDv4_fEEvl.exit
  %.037 = phi i64 [ %.0.i, %.lr.ph ], [ %i.jd, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEENSB_IKSC_Lin1ELi1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE12assignPacketILi16ELi0EDv4_fEEvl.exit ] ; 3 uses
  %i.hp = load ptr, ptr %0, align 8, !tbaa !389, !nonnull !161, !align !388
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !239
end_hunk_4
begin_hunk_5_@_ZN5Eigen8internal35apply_block_householder_on_the_leftINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEES5_NS_11VectorBlockIKNS3_IfLi1ELi1ELi0ELi1ELi1EEELin1EEEEEvRT_RKT0_RKT1_b:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.o = icmp samesign ugt i64 %i.l, 4611686018427387903
  br i1 %i.o, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i: ; preds = %bb.c
  %i.p = shl nuw i64 %i.l, 2
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.p) #29 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.invoke, label %.sink.split.i

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i, %bb.c, %bb.b
  %i.s = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.s, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i
  store ptr %i.q, ptr %8, align 8, !tbaa !459
  br label %_ZN5Eigen6MatrixIfLin1ELin1ELi1ELin1ELin1EEC2IllEERKT_RKT0_.exit

common.resume:                                    ; preds = %bb.x, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.d ], [ %.pn.pn.pn.pn, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %.invoke
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %8, align 8, !tbaa !459
  tail call void @free(ptr noundef %i.u) #26
  br label %common.resume

_ZN5Eigen6MatrixIfLin1ELin1ELi1ELin1ELin1EEC2IllEERKT_RKT0_.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.thread, %.sink.split.i
  %i.v = phi ptr [ %i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.thread ], [ %i.n, %.sink.split.i ]
  %i.w = phi ptr [ %i.h, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEEE6resizeEll.exit.i.i.thread ], [ %i.m, %.sink.split.i ] ; 2 uses
  store i64 %i.f, ptr %i.w, align 8, !tbaa !461
  store i64 %i.f, ptr %i.v, align 8, !tbaa !462
  br i1 %3, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN5Eigen6MatrixIfLin1ELin1ELi1ELin1ELin1EEC2IllEERKT_RKT0_.exit
  invoke void @_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEENS_11VectorBlockIKNS2_IfLi1ELi1ELi0ELi1ELi1EEELin1EEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.g:                                             ; preds = %_ZN5Eigen6MatrixIfLin1ELin1ELi1ELin1ELin1EEC2IllEERKT_RKT0_.exit
  invoke void @_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEENS4_IKNS2_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.e, %bb.g
  %.sroa.058.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.659.0.copyload = load i64, ptr %.sroa.659.0..sroa_idx, align 8 ; 3 uses
  %.sroa.860.0.copyload = load i64, ptr %i.e, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %.sroa.856.56.copyload = load ptr, ptr %0, align 8
  %.sroa.1057.56..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.1057.56.copyload = load i64, ptr %.sroa.1057.56..sroa_idx, align 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store i64 %.sroa.860.0.copyload, ptr %i.y, align 16, !tbaa !463
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 7 uses
  store i64 %.sroa.1057.56.copyload, ptr %i.z, align 8, !tbaa !465
  %i.aa = mul nsw i64 %.sroa.1057.56.copyload, %.sroa.860.0.copyload ; 2 uses
  %i.ab = icmp slt i64 %i.aa, 1
  br i1 %i.ab, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEEEC2INS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS_5BlockINS1_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEELj6EEESA_Li0EEEEERKNS_9DenseBaseIT_EE.exit.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEEE11setConstantERKf.exit.loopexit.i.i.i.i.i.i.i

_ZN5Eigen9DenseBaseINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEEE11setConstantERKf.exit.loopexit.i.i.i.i.i.i.i: ; preds = %bb.h
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aa, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 dereferenceable(32) %9, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !19
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEEEC2INS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS_5BlockINS1_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEELj6EEESA_Li0EEEEERKNS_9DenseBaseIT_EE.exit.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEEEC2INS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS_5BlockINS1_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEELj6EEESA_Li0EEEEERKNS_9DenseBaseIT_EE.exit.i: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEEE11setConstantERKf.exit.loopexit.i.i.i.i.i.i.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !19
  %.sroa.speculated47.i.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %.sroa.659.0.copyload, i64 %.sroa.860.0.copyload) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 2, ptr %i.ac, align 16, !tbaa !466
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 2, ptr %i.ad, align 8, !tbaa !468
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 2, ptr %i.ae, align 16, !tbaa !469
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %i.af, ptr %7, align 16, !tbaa !470
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !471
  invoke void @_ZN5Eigen8internal32product_triangular_matrix_matrixIflLi6ELb1ELi1ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKflS4_lPfllRS3_RNS0_15level3_blockingIffEE(i64 noundef %.sroa.speculated47.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.1057.56.copyload, i64 noundef %.sroa.659.0.copyload, ptr noundef nonnull %.sroa.058.0.copyload, i64 noundef 2, ptr noundef nonnull %.sroa.856.56.copyload, i64 noundef 2, ptr noundef nonnull align 16 dereferenceable(32) %9, i64 noundef 1, i64 noundef %.sroa.860.0.copyload, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEEEC2INS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS_5BlockINS1_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEELj6EEESA_Li0EEEEERKNS_9DenseBaseIT_EE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br i1 %3, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.ai = load i64, ptr %i.w, align 8, !tbaa !461 ; 6 uses
  %i.aj = load i64, ptr %i.z, align 8, !tbaa !465 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ai, 0          ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %.not11.i.i.i.i.i = icmp eq i64 %i.aj, 0        ; 2 uses
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %.not11.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELi2EEEE12_set_noaliasINS_7ProductINS_14TriangularViewINS1_IfLin1ELin1ELi1ELin1ELin1EEELj2EEENS1_IfLin1ELin1ELi0ELi2ELi2EEELi0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %or.cond.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i, %.not11.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELi2EEEE6resizeEll.exit.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = sdiv i64 9223372036854775807, %i.aj
  %i.an = icmp sgt i64 %i.ai, %i.am
  br i1 %i.an, label %.invoke80, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELi2EEEE6resizeEll.exit.i.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELi2EEEE6resizeEll.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %i.ao = mul nsw i64 %i.aj, %i.ai                ; 5 uses
  %.not.i37 = icmp eq i64 %i.ao, 0
  br i1 %.not.i37, label %.thread, label %bb.m

.thread:                                          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELi2EEEE6resizeEll.exit.i.i.i.i.i
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !472
  store i64 %i.aj, ptr %i.al, align 8, !tbaa !474
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELi2EEEE12_set_noaliasINS_7ProductINS_14TriangularViewINS1_IfLin1ELin1ELi1ELin1ELin1EEELj2EEENS1_IfLin1ELin1ELi0ELi2ELi2EEELi0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i.i

bb.m:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELi2EEEE6resizeEll.exit.i.i.i.i.i
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %bb.n, label %.thread78

.thread78:                                        ; preds = %bb.m
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !472
  store i64 %i.aj, ptr %i.al, align 8, !tbaa !474
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELi2EEEE12_set_noaliasINS_7ProductINS_14TriangularViewINS1_IfLin1ELin1ELi1ELin1ELin1EEELj2EEENS1_IfLin1ELin1ELi0ELi2ELi2EEELi0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.aq = icmp samesign ugt i64 %i.ao, 4611686018427387903
  br i1 %i.aq, label %.invoke80, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i40

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i40: ; preds = %bb.n
  %i.ar = shl nuw i64 %i.ao, 2
  %i.as = call noalias ptr @malloc(i64 noundef %i.ar) #29 ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %.invoke80, label %_ZN5Eigen9DenseBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELi2EEEE11setConstantERKf.exit.loopexit.i.i.i.i.i.i.i

.invoke80:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i40, %bb.n, %bb.l
  %i.au = call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.au, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.au, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
          to label %.cont81 unwind label %bb.o

.cont81:                                          ; preds = %.invoke80
  unreachable

_ZN5Eigen9DenseBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELi2EEEE11setConstantERKf.exit.loopexit.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i40
  store ptr %i.as, ptr %6, align 8, !tbaa !475
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !472
  store i64 %i.aj, ptr %i.al, align 8, !tbaa !474
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i35 = shl nuw nsw i64 %i.ao, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.as, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i35, i1 false), !tbaa !19
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELi2EEEE12_set_noaliasINS_7ProductINS_14TriangularViewINS1_IfLin1ELin1ELi1ELin1ELin1EEELj2EEENS1_IfLin1ELin1ELi0ELi2ELi2EEELi0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELi2EEEE12_set_noaliasINS_7ProductINS_14TriangularViewINS1_IfLin1ELin1ELi1ELin1ELin1EEELj2EEENS1_IfLin1ELin1ELi0ELi2ELi2EEELi0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i.i: ; preds = %.thread78, %.thread, %_ZN5Eigen9DenseBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELi2EEEE11setConstantERKf.exit.loopexit.i.i.i.i.i.i.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store float 1.000000e+00, ptr %i.a, align 4, !tbaa !19
  invoke void @_ZN5Eigen8internal23triangular_product_implILi2ELb1ENS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELb0ENS2_IfLin1ELin1ELi0ELi2ELi2EEELb0EE3runINS2_IfLin1ELin1ELi0ELin1ELi2EEEEEvRT_RKS3_RKS4_RKNS8_6ScalarE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc unwind label %bb.o

bb.o:                                             ; preds = %.invoke80, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELi2EEEE12_set_noaliasINS_7ProductINS_14TriangularViewINS1_IfLin1ELin1ELi1ELin1ELin1EEELj2EEENS1_IfLin1ELin1ELi0ELi2ELi2EEELi0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %6, align 8, !tbaa !475
  call void @free(ptr noundef %i.aw) #26
  br label %.body

.noexc:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELi2EEEE12_set_noaliasINS_7ProductINS_14TriangularViewINS1_IfLin1ELin1ELi1ELin1ELin1EEELj2EEENS1_IfLin1ELin1ELi0ELi2ELi2EEELi0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ax = load ptr, ptr %6, align 8, !tbaa !475   ; 9 uses
  %i.ay = ptrtoaddr ptr %i.ax to i64
  %i.az = load i64, ptr %i.ak, align 8, !tbaa !472 ; 3 uses
  %i.ba = load i64, ptr %i.al, align 8, !tbaa !474 ; 3 uses
  %i.bb = load i64, ptr %i.y, align 16, !tbaa !463
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bb, %i.az
  %i.bc = load i64, ptr %i.z, align 8
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.bc, %i.ba
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEENS2_IfLin1ELin1ELi0ELin1ELi2EEEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.noexc
  store i64 %i.az, ptr %i.y, align 16, !tbaa !463
  store i64 %i.ba, ptr %i.z, align 8, !tbaa !465
  br label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEENS2_IfLin1ELin1ELi0ELin1ELi2EEEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEENS2_IfLin1ELin1ELi0ELin1ELi2EEEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i: ; preds = %bb.p, %.noexc
  %i.bd = mul nsw i64 %i.ba, %i.az                ; 7 uses
  %i.be = sdiv i64 %i.bd, 4                       ; 2 uses
  %i.bf = shl nsw i64 %i.be, 2                    ; 5 uses
  %i.bg = icmp sgt i64 %i.bd, 3
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEENS2_IfLin1ELin1ELi0ELin1ELi2EEEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i
  %i.bh = icmp slt i64 %i.bf, %i.bd
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %11 = shl nsw i64 %i.be, 2
  %i.bi = sub i64 %i.bd, %11                      ; 3 uses
  %min.iters.check86 = icmp ult i64 %i.bi, 8
  %i.bj = sub i64 %i.ay, %i.d
  %diff.check84 = icmp ugt i64 %i.bj, -32
  %or.cond = select i1 %min.iters.check86, i1 true, i1 %diff.check84
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader98, label %vector.ph87

vector.ph87:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec88 = and i64 %i.bi, -8                    ; 3 uses
  %i.bk = add i64 %i.bf, %n.vec88
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph87
  %index90 = phi i64 [ 0, %vector.ph87 ], [ %index.next93, %vector.body89 ] ; 2 uses
  %i.bl = add i64 %i.bf, %index90                 ; 2 uses
  %i.bm = getelementptr inbounds [4 x i8], ptr %9, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.bl ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load91 = load <4 x float>, ptr %i.bn, align 4, !tbaa !19
  %wide.load92 = load <4 x float>, ptr %i.bo, align 4, !tbaa !19
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <4 x float> %wide.load91, ptr %i.bm, align 16, !tbaa !19
  store <4 x float> %wide.load92, ptr %i.bp, align 16, !tbaa !19
  %index.next93 = add nuw i64 %index90, 8         ; 2 uses
  %i.bq = icmp eq i64 %index.next93, %n.vec88
  br i1 %i.bq, label %middle.block94, label %vector.body89, !llvm.loop !476

middle.block94:                                   ; preds = %vector.body89
  %cmp.n95 = icmp eq i64 %i.bi, %n.vec88
  br i1 %cmp.n95, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader98

.lr.ph.i.i.i.i.i.i.i.i.i.preheader98:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block94
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bk, %middle.block94 ] ; 4 uses
  %i.br = sub i64 %i.bd, %.05.i.i.i.i.i.i.i.i.i.ph
  %xtraiter100 = and i64 %i.br, 3                 ; 2 uses
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader98, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader98 ] ; 3 uses
  %prol.iter102 = phi i64 [ %prol.iter102.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader98 ]
  %i.bs = getelementptr inbounds [4 x i8], ptr %9, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !19
  store float %i.bu, ptr %i.bs, align 4, !tbaa !19
  %i.bv = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter102.next = add i64 %prol.iter102, 1   ; 2 uses
  %prol.iter102.cmp.not = icmp eq i64 %prol.iter102.next, %xtraiter100
  br i1 %prol.iter102.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !477

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader98
  %.05.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader98 ], [ %i.bv, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.bw = sub i64 %.05.i.i.i.i.i.i.i.i.i.ph, %i.bd
  %i.bx = icmp ugt i64 %i.bw, -4
  br i1 %i.bx, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.by = getelementptr inbounds [4 x i8], ptr %9, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !19
  store float %i.ca, ptr %i.by, align 4, !tbaa !19
  %i.cb = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %9, i64 %i.cb
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.cb
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !19
  store float %i.ce, ptr %i.cc, align 4, !tbaa !19
  %i.cf = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 2   ; 2 uses
  %i.cg = getelementptr inbounds [4 x i8], ptr %9, i64 %i.cf
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.cf
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !19
  store float %i.ci, ptr %i.cg, align 4, !tbaa !19
  %i.cj = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 3   ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %9, i64 %i.cj
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.cj
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !19
  store float %i.cm, ptr %i.ck, align 4, !tbaa !19
  %i.cn = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.cn, %i.bd
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !478

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEENS2_IfLin1ELin1ELi0ELin1ELi2EEEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.cr, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEENS2_IfLin1ELin1ELi0ELin1ELi2EEEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %.011.i.i.i.i.i.i.i.i
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.011.i.i.i.i.i.i.i.i
  %i.cq = load <4 x float>, ptr %i.cp, align 16, !tbaa !47
  store <4 x float> %i.cq, ptr %i.co, align 16, !tbaa !47
  %i.cr = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.cs = icmp slt i64 %i.cr, %i.bf
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !479

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block94, %._crit_edge.i.i.i.i.i.i.i.i
  call void @free(ptr noundef %i.ax) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.u

bb.q:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEEEC2INS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS_5BlockINS1_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEELj6EEESA_Li0EEEEERKNS_9DenseBaseIT_EE.exit.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store ptr %8, ptr %10, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %9, ptr %i.cu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELi2EEC2INS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS0_IfLin1ELin1ELi1ELin1ELin1EEEEELj1EEENS0_IfLin1ELin1ELi0ELi2ELi2EEELi0EEEEERKT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %.noexc31 unwind label %bb.t

.noexc31:                                         ; preds = %bb.r
  %i.cv = load ptr, ptr %5, align 8, !tbaa !475   ; 9 uses
  %i.cw = ptrtoaddr ptr %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !472 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !474 ; 3 uses
  %i.db = load i64, ptr %i.y, align 16, !tbaa !463
  %.not.i.i.i.i.i.i.i.i21 = icmp eq i64 %i.db, %i.cy
  %i.dc = load i64, ptr %i.z, align 8
  %.not8.i.i.i.i.i.i.i.i22 = icmp eq i64 %i.dc, %i.da
  %or.cond.i.i.i.i.i.i.i.i23 = select i1 %.not.i.i.i.i.i.i.i.i21, i1 %.not8.i.i.i.i.i.i.i.i22, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i23, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEENS2_IfLin1ELin1ELi0ELin1ELi2EEEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24, label %bb.s

bb.s:                                             ; preds = %.noexc31
  store i64 %i.cy, ptr %i.y, align 16, !tbaa !463
  store i64 %i.da, ptr %i.z, align 8, !tbaa !465
  br label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEENS2_IfLin1ELin1ELi0ELin1ELi2EEEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEENS2_IfLin1ELin1ELi0ELin1ELi2EEEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24: ; preds = %bb.s, %.noexc31
  %i.dd = mul nsw i64 %i.da, %i.cy                ; 7 uses
  %i.de = sdiv i64 %i.dd, 4                       ; 2 uses
  %i.df = shl nsw i64 %i.de, 2                    ; 5 uses
  %i.dg = icmp sgt i64 %i.dd, 3
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i.i.i.i29, label %._crit_edge.i.i.i.i.i.i.i.i25

._crit_edge.i.i.i.i.i.i.i.i25:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i29, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEENS2_IfLin1ELin1ELi0ELin1ELi2EEEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24
  %i.dh = icmp slt i64 %i.df, %i.dd
  br i1 %i.dh, label %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader, label %.loopexit63

.lr.ph.i.i.i.i.i.i.i.i.i26.preheader:             ; preds = %._crit_edge.i.i.i.i.i.i.i.i25
  %12 = shl nsw i64 %i.de, 2
  %i.di = sub i64 %i.dd, %12                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.di, 8
  %i.dj = sub i64 %i.cw, %i.d
  %diff.check = icmp ugt i64 %i.dj, -32
  %or.cond97 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond97, label %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader
  %n.vec = and i64 %i.di, -8                      ; 3 uses
  %i.dk = add i64 %i.df, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dl = add i64 %i.df, %index                   ; 2 uses
  %i.dm = getelementptr inbounds [4 x i8], ptr %9, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.dl ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %wide.load = load <4 x float>, ptr %i.dn, align 4, !tbaa !19
  %wide.load82 = load <4 x float>, ptr %i.do, align 4, !tbaa !19
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store <4 x float> %wide.load, ptr %i.dm, align 16, !tbaa !19
  store <4 x float> %wide.load82, ptr %i.dp, align 16, !tbaa !19
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !480

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.di, %n.vec
  br i1 %cmp.n, label %.loopexit63, label %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99

.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i27.ph = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader ], [ %i.dk, %middle.block ] ; 4 uses
  %i.dr = sub i64 %i.dd, %.05.i.i.i.i.i.i.i.i.i27.ph
  %xtraiter = and i64 %i.dr, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i26.prol

.lr.ph.i.i.i.i.i.i.i.i.i26.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99, %.lr.ph.i.i.i.i.i.i.i.i.i26.prol
  %.05.i.i.i.i.i.i.i.i.i27.prol = phi i64 [ %i.dv, %.lr.ph.i.i.i.i.i.i.i.i.i26.prol ], [ %.05.i.i.i.i.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i26.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99 ]
  %i.ds = getelementptr inbounds [4 x i8], ptr %9, i64 %.05.i.i.i.i.i.i.i.i.i27.prol
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %.05.i.i.i.i.i.i.i.i.i27.prol
  %i.du = load float, ptr %i.dt, align 4, !tbaa !19
  store float %i.du, ptr %i.ds, align 4, !tbaa !19
  %i.dv = add nsw i64 %.05.i.i.i.i.i.i.i.i.i27.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i26.prol, !llvm.loop !481

.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i26.prol, %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99
  %.05.i.i.i.i.i.i.i.i.i27.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99 ], [ %i.dv, %.lr.ph.i.i.i.i.i.i.i.i.i26.prol ]
  %i.dw = sub i64 %.05.i.i.i.i.i.i.i.i.i27.ph, %i.dd
  %i.dx = icmp ugt i64 %i.dw, -4
  br i1 %i.dx, label %.loopexit63, label %.lr.ph.i.i.i.i.i.i.i.i.i26

.lr.ph.i.i.i.i.i.i.i.i.i26:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i26
  %.05.i.i.i.i.i.i.i.i.i27 = phi i64 [ %i.en, %.lr.ph.i.i.i.i.i.i.i.i.i26 ], [ %.05.i.i.i.i.i.i.i.i.i27.unr, %.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit ] ; 6 uses
  %i.dy = getelementptr inbounds [4 x i8], ptr %9, i64 %.05.i.i.i.i.i.i.i.i.i27
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %.05.i.i.i.i.i.i.i.i.i27
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !19
  store float %i.ea, ptr %i.dy, align 4, !tbaa !19
  %i.eb = add nsw i64 %.05.i.i.i.i.i.i.i.i.i27, 1 ; 2 uses
  %i.ec = getelementptr inbounds [4 x i8], ptr %9, i64 %i.eb
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.eb
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !19
  store float %i.ee, ptr %i.ec, align 4, !tbaa !19
  %i.ef = add nsw i64 %.05.i.i.i.i.i.i.i.i.i27, 2 ; 2 uses
  %i.eg = getelementptr inbounds [4 x i8], ptr %9, i64 %i.ef
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.ef
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !19
  store float %i.ei, ptr %i.eg, align 4, !tbaa !19
  %i.ej = add nsw i64 %.05.i.i.i.i.i.i.i.i.i27, 3 ; 2 uses
  %i.ek = getelementptr inbounds [4 x i8], ptr %9, i64 %i.ej
  %i.el = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.ej
  %i.em = load float, ptr %i.el, align 4, !tbaa !19
  store float %i.em, ptr %i.ek, align 4, !tbaa !19
  %i.en = add nsw i64 %.05.i.i.i.i.i.i.i.i.i27, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i28.3 = icmp eq i64 %i.en, %i.dd
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i28.3, label %.loopexit63, label %.lr.ph.i.i.i.i.i.i.i.i.i26, !llvm.loop !482

.lr.ph.i.i.i.i.i.i.i.i29:                         ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEENS2_IfLin1ELin1ELi0ELin1ELi2EEEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24, %.lr.ph.i.i.i.i.i.i.i.i29
  %.011.i.i.i.i.i.i.i.i30 = phi i64 [ %i.er, %.lr.ph.i.i.i.i.i.i.i.i29 ], [ 0, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEENS2_IfLin1ELin1ELi0ELin1ELi2EEEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24 ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %.011.i.i.i.i.i.i.i.i30
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.011.i.i.i.i.i.i.i.i30
  %i.eq = load <4 x float>, ptr %i.ep, align 16, !tbaa !47
  store <4 x float> %i.eq, ptr %i.eo, align 16, !tbaa !47
  %i.er = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i30, 4 ; 2 uses
  %i.es = icmp slt i64 %i.er, %i.df
  br i1 %i.es, label %.lr.ph.i.i.i.i.i.i.i.i29, label %._crit_edge.i.i.i.i.i.i.i.i25, !llvm.loop !479

.loopexit63:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i26, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i25
  call void @free(ptr noundef %i.cv) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.body

bb.u:                                             ; preds = %.loopexit63, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store float -1.000000e+00, ptr %i.b, align 4, !tbaa !19
  %i.eu = load i64, ptr %i.z, align 8, !tbaa !465
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 2, ptr %i.ev, align 16, !tbaa !466
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 2, ptr %i.ew, align 8, !tbaa !468
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 2, ptr %i.ex, align 16, !tbaa !469
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.ey, ptr %4, align 16, !tbaa !470
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !471
  %i.fb = load i64, ptr %i.y, align 16, !tbaa !463
  %i.fc = load ptr, ptr %0, align 8, !tbaa !125
  invoke void @_ZN5Eigen8internal32product_triangular_matrix_matrixIflLi5ELb1ELi0ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKflS4_lPfllRS3_RNS0_15level3_blockingIffEE(i64 noundef %.sroa.659.0.copyload, i64 noundef %i.eu, i64 noundef %.sroa.speculated47.i.i.i.i.i.i.i.i.i, ptr noundef nonnull %.sroa.058.0.copyload, i64 noundef 2, ptr noundef nonnull align 16 dereferenceable(32) %9, i64 noundef %i.fb, ptr noundef nonnull %i.fc, i64 noundef 1, i64 noundef 2, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.fd = load ptr, ptr %8, align 8, !tbaa !459
  call void @free(ptr noundef %i.fd) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  ret void

bb.w:                                             ; preds = %bb.u
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.w, %bb.t, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.fe, %bb.w ], [ %i.ct, %bb.q ], [ %i.et, %bb.t ], [ %i.av, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.x

bb.x:                                             ; preds = %.body, %bb.f
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.x, %bb.f ]
  %i.ff = load ptr, ptr %8, align 8, !tbaa !459
  call void @free(ptr noundef %i.ff) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEENS_11VectorBlockIKNS2_IfLi1ELi1ELi0ELi1ELi1EEELin1EEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Transpose.1161", align 8 ; 13 uses
  %4 = alloca %"class.Eigen::Transpose.1169", align 8 ; 10 uses
  %5 = alloca %"class.Eigen::Transpose.1176", align 8 ; 15 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %.sroa.7115 = alloca [64 x i8], align 8         ; 2 uses
  %.sroa.23 = alloca %"class.Eigen::internal::BlockImpl_dense.163", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !81   ; 5 uses
  %i.d = add nsw i64 %i.c, -1                     ; 3 uses
  %i.e = icmp sgt i64 %i.c, 0
  br i1 %i.e, label %.lr.ph187, label %._crit_edge

.lr.ph187:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7115.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7115, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.5179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  %.sroa.15180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 88
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.sroa.21.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.22.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.23.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.24.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.25.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88
  %.sroa.26.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.8166.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.10168.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.11169.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.sroa.12170.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 72
  %.sroa.13171.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 136
  %.sroa.14172.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 144
  %.sroa.15173.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 152
  %.sroa.16174.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 160
  %.sroa.18176.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.k = shl i64 %i.c, 2
  %i.l = add i64 %i.k, -4                         ; 4 uses
  br label %bb.b

end_hunk_5

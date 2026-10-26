Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/straighten_seams?download=true
inline.NumInlined: 5387
inline.NumDeleted: 2526
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 81
loop-unroll.NumUnrolled: 87
begin_hunk_0_@_ZN3igl16straighten_seamsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELin1ELi1ELin1ELin1EEES4_dS4_S5_S4_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERKNS6_IT2_EET3_RNS1_15PlainObjectBaseIT4_EERNSO_IT5_EERNSO_IT6_EE:bb.a
  store <4 x i32> %wide.load, ptr %i.aw, align 4, !tbaa !43
  store <4 x i32> %wide.load2646, ptr %i.az, align 4, !tbaa !43
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !195

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader3542

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader3542:     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader3542, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader3542 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader3542 ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !43
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !43
  %i.be = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !196

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader3542
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader3542 ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.bf = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !43
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !43
  %i.bk = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bk
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.bk
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !43
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !43
  %i.bo = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bo
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.bo
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !43
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !43
  %i.bs = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bs
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.bs
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !43
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !43
  %i.bw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bw, %.0.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !197

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.bx = icmp sgt i64 %i.an, 3
  br i1 %i.bx, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.by = icmp slt i64 %i.aq, %i.ab
  br i1 %i.by, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.loopexit1967

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.bz = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, %i.ap
  %i.ca = sub i64 %i.ab, %i.bz                    ; 3 uses
  %min.iters.check2650 = icmp ult i64 %i.ca, 16
  br i1 %min.iters.check2650, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3541, label %vector.memcheck2651

vector.memcheck2651:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.cb = shl nsw i64 %i.af, 2
  %i.cc = add i64 %i.cb, %i.ae
  %i.cd = add i64 %.idx, %i.aa
  %i.ce = sub i64 %i.cd, %i.cc
  %diff.check2652 = icmp ugt i64 %i.ce, -32
  br i1 %diff.check2652, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3541, label %vector.ph2653

vector.ph2653:                                    ; preds = %vector.memcheck2651
  %n.vec2654 = and i64 %i.ca, -8                  ; 3 uses
  %i.cf = add i64 %i.aq, %n.vec2654
  br label %vector.body2655

vector.body2655:                                  ; preds = %vector.body2655, %vector.ph2653
  %index2656 = phi i64 [ 0, %vector.ph2653 ], [ %index.next2659, %vector.body2655 ] ; 2 uses
  %i.cg = add i64 %i.aq, %index2656               ; 2 uses
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.cg ; 2 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.cg ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %wide.load2657 = load <4 x i32>, ptr %i.ci, align 4, !tbaa !43
  %wide.load2658 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !43
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <4 x i32> %wide.load2657, ptr %i.ch, align 4, !tbaa !43
  store <4 x i32> %wide.load2658, ptr %i.ck, align 4, !tbaa !43
  %index.next2659 = add nuw i64 %index2656, 8     ; 2 uses
  %i.cl = icmp eq i64 %index.next2659, %n.vec2654
  br i1 %i.cl, label %middle.block2660, label %vector.body2655, !llvm.loop !198

middle.block2660:                                 ; preds = %vector.body2655
  %cmp.n2661 = icmp eq i64 %i.ca, %n.vec2654
  br i1 %cmp.n2661, label %.loopexit1967, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3541

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3541:   ; preds = %vector.memcheck2651, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block2660
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.aq, %vector.memcheck2651 ], [ %i.aq, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.cf, %middle.block2660 ] ; 4 uses
  %i.cm = sub i64 %i.ab, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter3543 = and i64 %i.cm, 3                ; 2 uses
  %lcmp.mod3544.not = icmp eq i64 %xtraiter3543, 0
  br i1 %lcmp.mod3544.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol:            ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3541, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.cq, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3541 ] ; 3 uses
  %prol.iter3545 = phi i64 [ %prol.iter3545.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3541 ]
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.co = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !43
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !43
  %i.cq = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter3545.next = add i64 %prol.iter3545, 1 ; 2 uses
  %prol.iter3545.cmp.not = icmp eq i64 %prol.iter3545.next, %xtraiter3543
  br i1 %prol.iter3545.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !199

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:   ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3541
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader3541 ], [ %i.cq, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.cr = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph, %i.ab
  %i.cs = icmp ugt i64 %i.cr, -4
  br i1 %i.cs, label %.loopexit1967, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.di, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !43
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !43
  %i.cw = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.cw
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.cw
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !43
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !43
  %i.da = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.da
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.da
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !43
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !43
  %i.de = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.de
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.de
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !43
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !43
  %i.di = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.di, %i.ab
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.3, label %.loopexit1967, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !200

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %.021.i.i.i.i.i.i.i.i.i.i.i
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %.021.i.i.i.i.i.i.i.i.i.i.i
  %i.dl = load <2 x i64>, ptr %i.dk, align 1, !tbaa !48
  store <2 x i64> %i.dl, ptr %i.dj, align 16, !tbaa !48
  %i.dm = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.dn = icmp slt i64 %i.dm, %i.aq
  br i1 %i.dn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !201

.loopexit1967:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i, %middle.block2660, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.do = load ptr, ptr %3, align 8, !tbaa !22, !noalias !451 ; 2 uses
  %i.dp = ptrtoaddr ptr %i.do to i64              ; 2 uses
  %i.dq = load i64, ptr %i.g, align 8, !tbaa !21, !noalias !451 ; 11 uses
  %.idx1929 = shl i64 %i.dq, 3                    ; 3 uses
  %i.dr = getelementptr inbounds i8, ptr %i.do, i64 %.idx1929 ; 13 uses
  %i.ds = load ptr, ptr %24, align 8, !tbaa !24, !noalias !452 ; 2 uses
  %i.dt = ptrtoaddr ptr %i.ds to i64              ; 2 uses
  %i.du = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.k ; 14 uses
  %i.dv = ptrtoint ptr %i.du to i64               ; 2 uses
  %i.dw = and i64 %i.dv, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i524 = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i524, label %bb.g, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i525

bb.g:                                             ; preds = %.loopexit1967
  %i.dx = lshr exact i64 %i.dv, 2
  %i.dy = sub nsw i64 0, %i.dx
  %i.dz = and i64 %i.dy, 3
  %i.ea = call i64 @llvm.smin.i64(i64 %i.dz, i64 %i.dq)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i525

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i525: ; preds = %bb.g, %.loopexit1967
  %.0.i.i.i.i.i.i.i.i.i.i.i.i526 = phi i64 [ %i.ea, %bb.g ], [ %i.dq, %.loopexit1967 ] ; 11 uses
  %i.eb = sub nsw i64 %i.dq, %.0.i.i.i.i.i.i.i.i.i.i.i.i526 ; 2 uses
  %i.ec = sdiv i64 %i.eb, 4
  %i.ed = shl nsw i64 %i.ec, 2                    ; 2 uses
  %i.ee = add nsw i64 %i.ed, %.0.i.i.i.i.i.i.i.i.i.i.i.i526 ; 6 uses
  %i.ef = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i526, 0
  br i1 %i.ef, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i534.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i527

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i534.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i525
  %min.iters.check2666 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i526, 16
  br i1 %min.iters.check2666, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i534.preheader3540, label %vector.memcheck2667

vector.memcheck2667:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i534.preheader
  %i.eg = shl nsw i64 %i.k, 2
  %i.eh = add i64 %i.eg, %i.dt
  %i.ei = add i64 %.idx1929, %i.dp
  %i.ej = sub i64 %i.ei, %i.eh
  %diff.check2668 = icmp ugt i64 %i.ej, -32
  br i1 %diff.check2668, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i534.preheader3540, label %vector.ph2669

vector.ph2669:                                    ; preds = %vector.memcheck2667
  %n.vec2670 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i526, 9223372036854775800 ; 3 uses
  br label %vector.body2671

vector.body2671:                                  ; preds = %vector.body2671, %vector.ph2669
  %index2672 = phi i64 [ 0, %vector.ph2669 ], [ %index.next2675, %vector.body2671 ] ; 3 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %index2672 ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %index2672 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %wide.load2673 = load <4 x i32>, ptr %i.el, align 4, !tbaa !43
  %wide.load2674 = load <4 x i32>, ptr %i.em, align 4, !tbaa !43
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store <4 x i32> %wide.load2673, ptr %i.ek, align 4, !tbaa !43
  store <4 x i32> %wide.load2674, ptr %i.en, align 4, !tbaa !43
  %index.next2675 = add nuw i64 %index2672, 8     ; 2 uses
  %i.eo = icmp eq i64 %index.next2675, %n.vec2670
  br i1 %i.eo, label %middle.block2676, label %vector.body2671, !llvm.loop !206

middle.block2676:                                 ; preds = %vector.body2671
  %cmp.n2677 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i526, %n.vec2670
  br i1 %cmp.n2677, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i527, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i534.preheader3540

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i534.preheader3540:  ; preds = %vector.memcheck2667, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i534.preheader, %middle.block2676
  %.05.i.i.i.i.i.i.i.i.i.i.i.i535.ph = phi i64 [ 0, %vector.memcheck2667 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i534.preheader ], [ %n.vec2670, %middle.block2676 ] ; 3 uses
  %xtraiter3546 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i526, 3 ; 2 uses
  %lcmp.mod3547.not = icmp eq i64 %xtraiter3546, 0
  br i1 %lcmp.mod3547.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i534.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i534.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i534.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i534.preheader3540, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i534.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i535.prol = phi i64 [ %i.es, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i534.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i535.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i534.preheader3540 ] ; 3 uses
  %prol.iter3548 = phi i64 [ %prol.iter3548.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i534.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i534.preheader3540 ]
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i535.prol
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i535.prol
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !43
  store i32 %i.er, ptr %i.ep, align 4, !tbaa !43
  %i.es = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i535.prol, 1 ; 2 uses
  %prol.iter3548.next = add i64 %prol.iter3548, 1 ; 2 uses
  %prol.iter3548.cmp.not = icmp eq i64 %prol.iter3548.next, %xtraiter3546
  br i1 %prol.iter3548.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i534.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i534.prol, !llvm.loop !207

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i534.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i534.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i534.preheader3540
  %.05.i.i.i.i.i.i.i.i.i.i.i.i535.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i535.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i534.preheader3540 ], [ %i.es, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i534.prol ]
  %i.et = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i535.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i526
  %i.eu = icmp ugt i64 %i.et, -4
  br i1 %i.eu, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i527, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i534

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i534:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i534.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i534
  %.05.i.i.i.i.i.i.i.i.i.i.i.i535 = phi i64 [ %i.fk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i534 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i535.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i534.prol.loopexit ] ; 6 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i535
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i535
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !43
  store i32 %i.ex, ptr %i.ev, align 4, !tbaa !43
  %i.ey = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i535, 1 ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.ey
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.ey
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !43
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !43
  %i.fc = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i535, 2 ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.fc
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.fc
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !43
  store i32 %i.ff, ptr %i.fd, align 4, !tbaa !43
  %i.fg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i535, 3 ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.fg
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.fg
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !43
  store i32 %i.fj, ptr %i.fh, align 4, !tbaa !43
  %i.fk = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i535, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i536.3 = icmp eq i64 %i.fk, %.0.i.i.i.i.i.i.i.i.i.i.i.i526
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i536.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i527, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i534, !llvm.loop !208

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i527: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i534.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i534, %middle.block2676, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i525
  %i.fl = icmp sgt i64 %i.eb, 3
  br i1 %i.fl, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i532, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i528

._crit_edge.i.i.i.i.i.i.i.i.i.i.i528:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i532, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i527
  %i.fm = icmp slt i64 %i.ee, %i.dq
  br i1 %i.fm, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i529.preheader, label %.loopexit1966

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i529.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i528
  %i.fn = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i526, %i.ed
  %i.fo = sub i64 %i.dq, %i.fn                    ; 3 uses
  %min.iters.check2682 = icmp ult i64 %i.fo, 16
  br i1 %min.iters.check2682, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i529.preheader3539, label %vector.memcheck2683

vector.memcheck2683:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i529.preheader
  %i.fp = shl nsw i64 %i.k, 2
  %i.fq = add i64 %i.fp, %i.dt
  %i.fr = add i64 %.idx1929, %i.dp
  %i.fs = sub i64 %i.fr, %i.fq
  %diff.check2684 = icmp ugt i64 %i.fs, -32
  br i1 %diff.check2684, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i529.preheader3539, label %vector.ph2685

vector.ph2685:                                    ; preds = %vector.memcheck2683
  %n.vec2686 = and i64 %i.fo, -8                  ; 3 uses
  %i.ft = add i64 %i.ee, %n.vec2686
  br label %vector.body2687

vector.body2687:                                  ; preds = %vector.body2687, %vector.ph2685
  %index2688 = phi i64 [ 0, %vector.ph2685 ], [ %index.next2691, %vector.body2687 ] ; 2 uses
  %i.fu = add i64 %i.ee, %index2688               ; 2 uses
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.fu ; 2 uses
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.fu ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %wide.load2689 = load <4 x i32>, ptr %i.fw, align 4, !tbaa !43
  %wide.load2690 = load <4 x i32>, ptr %i.fx, align 4, !tbaa !43
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store <4 x i32> %wide.load2689, ptr %i.fv, align 4, !tbaa !43
  store <4 x i32> %wide.load2690, ptr %i.fy, align 4, !tbaa !43
  %index.next2691 = add nuw i64 %index2688, 8     ; 2 uses
  %i.fz = icmp eq i64 %index.next2691, %n.vec2686
  br i1 %i.fz, label %middle.block2692, label %vector.body2687, !llvm.loop !209

middle.block2692:                                 ; preds = %vector.body2687
  %cmp.n2693 = icmp eq i64 %i.fo, %n.vec2686
  br i1 %cmp.n2693, label %.loopexit1966, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i529.preheader3539

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i529.preheader3539: ; preds = %vector.memcheck2683, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i529.preheader, %middle.block2692
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i530.ph = phi i64 [ %i.ee, %vector.memcheck2683 ], [ %i.ee, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i529.preheader ], [ %i.ft, %middle.block2692 ] ; 4 uses
  %i.ga = sub i64 %i.dq, %.05.i18.i.i.i.i.i.i.i.i.i.i.i530.ph
  %xtraiter3549 = and i64 %i.ga, 3                ; 2 uses
  %lcmp.mod3550.not = icmp eq i64 %xtraiter3549, 0
  br i1 %lcmp.mod3550.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i529.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i529.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i529.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i529.preheader3539, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i529.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i530.prol = phi i64 [ %i.ge, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i529.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i530.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i529.preheader3539 ] ; 3 uses
  %prol.iter3551 = phi i64 [ %prol.iter3551.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i529.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i529.preheader3539 ]
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.du, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i530.prol
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i530.prol
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !43
  store i32 %i.gd, ptr %i.gb, align 4, !tbaa !43
  %i.ge = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i530.prol, 1 ; 2 uses
  %prol.iter3551.next = add i64 %prol.iter3551, 1 ; 2 uses
  %prol.iter3551.cmp.not = icmp eq i64 %prol.iter3551.next, %xtraiter3549
  br i1 %prol.iter3551.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i529.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i529.prol, !llvm.loop !210

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i529.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i529.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i529.preheader3539
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i530.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i530.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i529.preheader3539 ], [ %i.ge, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i529.prol ]
  %i.gf = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i530.ph, %i.dq
  %i.gg = icmp ugt i64 %i.gf, -4
  br i1 %i.gg, label %.loopexit1966, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i529

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i529:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i529.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i529
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i530 = phi i64 [ %i.gw, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i529 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i530.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i529.prol.loopexit ] ; 6 uses
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.du, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i530
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i530
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !43
  store i32 %i.gj, ptr %i.gh, align 4, !tbaa !43
  %i.gk = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i530, 1 ; 2 uses
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.gk
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.gk
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !43
  store i32 %i.gn, ptr %i.gl, align 4, !tbaa !43
  %i.go = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i530, 2 ; 2 uses
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.go
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.go
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !43
  store i32 %i.gr, ptr %i.gp, align 4, !tbaa !43
  %i.gs = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i530, 3 ; 2 uses
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.gs
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.gs
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !43
  store i32 %i.gv, ptr %i.gt, align 4, !tbaa !43
  %i.gw = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i530, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i531.3 = icmp eq i64 %i.gw, %i.dq
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i531.3, label %.loopexit1966, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i529, !llvm.loop !211

.lr.ph.i.i.i.i.i.i.i.i.i.i.i532:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i527, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i532
  %.021.i.i.i.i.i.i.i.i.i.i.i533 = phi i64 [ %i.ha, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i532 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i526, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i527 ] ; 3 uses
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.du, i64 %.021.i.i.i.i.i.i.i.i.i.i.i533
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %.021.i.i.i.i.i.i.i.i.i.i.i533
  %i.gz = load <2 x i64>, ptr %i.gy, align 1, !tbaa !48
  store <2 x i64> %i.gz, ptr %i.gx, align 16, !tbaa !48
  %i.ha = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i533, 4 ; 2 uses
  %i.hb = icmp slt i64 %i.ha, %i.ee
  br i1 %i.hb, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i532, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i528, !llvm.loop !201

.loopexit1966:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i529.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i529, %middle.block2692, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i528
  %i.hc = load ptr, ptr %3, align 8, !tbaa !22, !noalias !453 ; 14 uses
  %i.hd = ptrtoaddr ptr %i.hc to i64              ; 2 uses
  %i.he = load i64, ptr %i.g, align 8, !tbaa !21, !noalias !453 ; 8 uses
  %i.hf = load ptr, ptr %24, align 8, !tbaa !24, !noalias !454 ; 2 uses
  %i.hg = ptrtoaddr ptr %i.hf to i64              ; 2 uses
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.k
  %i.hi = load i64, ptr %i.n, align 8, !tbaa !25, !noalias !454 ; 3 uses
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %i.hi ; 14 uses
  %i.hk = ptrtoint ptr %i.hj to i64               ; 2 uses
  %i.hl = and i64 %i.hk, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i543 = icmp eq i64 %i.hl, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i543, label %bb.h, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i544

bb.h:                                             ; preds = %.loopexit1966
  %i.hm = lshr exact i64 %i.hk, 2
  %i.hn = sub nsw i64 0, %i.hm
  %i.ho = and i64 %i.hn, 3
  %i.hp = call i64 @llvm.smin.i64(i64 %i.ho, i64 %i.he)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i544

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i544: ; preds = %bb.h, %.loopexit1966
  %.0.i.i.i.i.i.i.i.i.i.i.i.i545 = phi i64 [ %i.hp, %bb.h ], [ %i.he, %.loopexit1966 ] ; 11 uses
  %i.hq = sub nsw i64 %i.he, %.0.i.i.i.i.i.i.i.i.i.i.i.i545 ; 2 uses
  %i.hr = sdiv i64 %i.hq, 4
  %i.hs = shl nsw i64 %i.hr, 2                    ; 2 uses
  %i.ht = add nsw i64 %i.hs, %.0.i.i.i.i.i.i.i.i.i.i.i.i545 ; 6 uses
  %i.hu = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i545, 0
  br i1 %i.hu, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i553.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i546

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i553.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i544
  %min.iters.check2698 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i545, 20
  br i1 %min.iters.check2698, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i553.preheader3538, label %vector.memcheck2699

vector.memcheck2699:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i553.preheader
  %i.hv = add i64 %i.hi, %i.k
  %i.hw = shl i64 %i.hv, 2
  %i.hx = add i64 %i.hw, %i.hg
  %i.hy = sub i64 %i.hd, %i.hx
  %diff.check2700 = icmp ugt i64 %i.hy, -32
  br i1 %diff.check2700, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i553.preheader3538, label %vector.ph2701

vector.ph2701:                                    ; preds = %vector.memcheck2699
  %n.vec2702 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i545, 9223372036854775800 ; 3 uses
  br label %vector.body2703

vector.body2703:                                  ; preds = %vector.body2703, %vector.ph2701
  %index2704 = phi i64 [ 0, %vector.ph2701 ], [ %index.next2707, %vector.body2703 ] ; 3 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %index2704 ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %index2704 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %wide.load2705 = load <4 x i32>, ptr %i.ia, align 4, !tbaa !43
  %wide.load2706 = load <4 x i32>, ptr %i.ib, align 4, !tbaa !43
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  store <4 x i32> %wide.load2705, ptr %i.hz, align 4, !tbaa !43
  store <4 x i32> %wide.load2706, ptr %i.ic, align 4, !tbaa !43
  %index.next2707 = add nuw i64 %index2704, 8     ; 2 uses
  %i.id = icmp eq i64 %index.next2707, %n.vec2702
  br i1 %i.id, label %middle.block2708, label %vector.body2703, !llvm.loop !216

middle.block2708:                                 ; preds = %vector.body2703
  %cmp.n2709 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i545, %n.vec2702
  br i1 %cmp.n2709, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i546, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i553.preheader3538

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i553.preheader3538:  ; preds = %vector.memcheck2699, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i553.preheader, %middle.block2708
  %.05.i.i.i.i.i.i.i.i.i.i.i.i554.ph = phi i64 [ 0, %vector.memcheck2699 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i553.preheader ], [ %n.vec2702, %middle.block2708 ] ; 3 uses
  %xtraiter3552 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i545, 3 ; 2 uses
  %lcmp.mod3553.not = icmp eq i64 %xtraiter3552, 0
  br i1 %lcmp.mod3553.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i553.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i553.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i553.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i553.preheader3538, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i553.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i554.prol = phi i64 [ %i.ih, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i553.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i554.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i553.preheader3538 ] ; 3 uses
  %prol.iter3554 = phi i64 [ %prol.iter3554.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i553.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i553.preheader3538 ]
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i554.prol
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i554.prol
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !43
  store i32 %i.ig, ptr %i.ie, align 4, !tbaa !43
  %i.ih = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i554.prol, 1 ; 2 uses
  %prol.iter3554.next = add i64 %prol.iter3554, 1 ; 2 uses
  %prol.iter3554.cmp.not = icmp eq i64 %prol.iter3554.next, %xtraiter3552
  br i1 %prol.iter3554.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i553.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i553.prol, !llvm.loop !217

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i553.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i553.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i553.preheader3538
  %.05.i.i.i.i.i.i.i.i.i.i.i.i554.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i554.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i553.preheader3538 ], [ %i.ih, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i553.prol ]
  %i.ii = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i554.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i545
  %i.ij = icmp ugt i64 %i.ii, -4
  br i1 %i.ij, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i546, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i553

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i553:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i553.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i553
  %.05.i.i.i.i.i.i.i.i.i.i.i.i554 = phi i64 [ %i.iz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i553 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i554.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i553.prol.loopexit ] ; 6 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i554
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i554
  %i.im = load i32, ptr %i.il, align 4, !tbaa !43
  store i32 %i.im, ptr %i.ik, align 4, !tbaa !43
  %i.in = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i554, 1 ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.in
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.in
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !43
  store i32 %i.iq, ptr %i.io, align 4, !tbaa !43
  %i.ir = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i554, 2 ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.ir
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.ir
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !43
  store i32 %i.iu, ptr %i.is, align 4, !tbaa !43
  %i.iv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i554, 3 ; 2 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.iv
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.iv
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !43
  store i32 %i.iy, ptr %i.iw, align 4, !tbaa !43
  %i.iz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i554, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i555.3 = icmp eq i64 %i.iz, %.0.i.i.i.i.i.i.i.i.i.i.i.i545
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i555.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i546, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i553, !llvm.loop !218

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i546: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i553.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i553, %middle.block2708, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i544
  %i.ja = icmp sgt i64 %i.hq, 3
  br i1 %i.ja, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i551, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i547

._crit_edge.i.i.i.i.i.i.i.i.i.i.i547:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i551, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i546
  %i.jb = icmp slt i64 %i.ht, %i.he
  br i1 %i.jb, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i548.preheader, label %.loopexit1965

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i548.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i547
  %i.jc = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i545, %i.hs
  %i.jd = sub i64 %i.he, %i.jc                    ; 3 uses
  %min.iters.check2714 = icmp ult i64 %i.jd, 16
  br i1 %min.iters.check2714, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i548.preheader3537, label %vector.memcheck2715

vector.memcheck2715:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i548.preheader
  %i.je = add i64 %i.hi, %i.k
  %i.jf = shl i64 %i.je, 2
  %i.jg = add i64 %i.jf, %i.hg
  %i.jh = sub i64 %i.hd, %i.jg
  %diff.check2716 = icmp ugt i64 %i.jh, -32
  br i1 %diff.check2716, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i548.preheader3537, label %vector.ph2717

vector.ph2717:                                    ; preds = %vector.memcheck2715
  %n.vec2718 = and i64 %i.jd, -8                  ; 3 uses
  %i.ji = add i64 %i.ht, %n.vec2718
  br label %vector.body2719

vector.body2719:                                  ; preds = %vector.body2719, %vector.ph2717
  %index2720 = phi i64 [ 0, %vector.ph2717 ], [ %index.next2723, %vector.body2719 ] ; 2 uses
  %i.jj = add i64 %i.ht, %index2720               ; 2 uses
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.jj ; 2 uses
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.jj ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %wide.load2721 = load <4 x i32>, ptr %i.jl, align 4, !tbaa !43
  %wide.load2722 = load <4 x i32>, ptr %i.jm, align 4, !tbaa !43
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  store <4 x i32> %wide.load2721, ptr %i.jk, align 4, !tbaa !43
  store <4 x i32> %wide.load2722, ptr %i.jn, align 4, !tbaa !43
  %index.next2723 = add nuw i64 %index2720, 8     ; 2 uses
  %i.jo = icmp eq i64 %index.next2723, %n.vec2718
  br i1 %i.jo, label %middle.block2724, label %vector.body2719, !llvm.loop !219

middle.block2724:                                 ; preds = %vector.body2719
  %cmp.n2725 = icmp eq i64 %i.jd, %n.vec2718
  br i1 %cmp.n2725, label %.loopexit1965, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i548.preheader3537

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i548.preheader3537: ; preds = %vector.memcheck2715, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i548.preheader, %middle.block2724
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i549.ph = phi i64 [ %i.ht, %vector.memcheck2715 ], [ %i.ht, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i548.preheader ], [ %i.ji, %middle.block2724 ] ; 4 uses
  %i.jp = sub i64 %i.he, %.05.i18.i.i.i.i.i.i.i.i.i.i.i549.ph
  %xtraiter3555 = and i64 %i.jp, 3                ; 2 uses
  %lcmp.mod3556.not = icmp eq i64 %xtraiter3555, 0
  br i1 %lcmp.mod3556.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i548.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i548.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i548.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i548.preheader3537, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i548.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i549.prol = phi i64 [ %i.jt, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i548.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i549.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i548.preheader3537 ] ; 3 uses
  %prol.iter3557 = phi i64 [ %prol.iter3557.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i548.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i548.preheader3537 ]
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i549.prol
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i549.prol
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !43
  store i32 %i.js, ptr %i.jq, align 4, !tbaa !43
  %i.jt = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i549.prol, 1 ; 2 uses
  %prol.iter3557.next = add i64 %prol.iter3557, 1 ; 2 uses
  %prol.iter3557.cmp.not = icmp eq i64 %prol.iter3557.next, %xtraiter3555
  br i1 %prol.iter3557.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i548.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i548.prol, !llvm.loop !220

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i548.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i548.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i548.preheader3537
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i549.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i549.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i548.preheader3537 ], [ %i.jt, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i548.prol ]
  %i.ju = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i549.ph, %i.he
  %i.jv = icmp ugt i64 %i.ju, -4
  br i1 %i.jv, label %.loopexit1965, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i548

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i548:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i548.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i548
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i549 = phi i64 [ %i.kl, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i548 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i549.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i548.prol.loopexit ] ; 6 uses
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i549
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i549
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !43
  store i32 %i.jy, ptr %i.jw, align 4, !tbaa !43
  %i.jz = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i549, 1 ; 2 uses
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.jz
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.jz
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !43
  store i32 %i.kc, ptr %i.ka, align 4, !tbaa !43
  %i.kd = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i549, 2 ; 2 uses
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.kd
  %i.kf = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.kd
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !43
  store i32 %i.kg, ptr %i.ke, align 4, !tbaa !43
  %i.kh = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i549, 3 ; 2 uses
  %i.ki = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.kh
  %i.kj = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.kh
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !43
  store i32 %i.kk, ptr %i.ki, align 4, !tbaa !43
  %i.kl = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i549, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i550.3 = icmp eq i64 %i.kl, %i.he
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i550.3, label %.loopexit1965, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i548, !llvm.loop !221

.lr.ph.i.i.i.i.i.i.i.i.i.i.i551:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i546, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i551
  %.021.i.i.i.i.i.i.i.i.i.i.i552 = phi i64 [ %i.kp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i551 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i545, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i546 ] ; 3 uses
  %i.km = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %.021.i.i.i.i.i.i.i.i.i.i.i552
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %.021.i.i.i.i.i.i.i.i.i.i.i552
  %i.ko = load <2 x i64>, ptr %i.kn, align 1, !tbaa !48
  store <2 x i64> %i.ko, ptr %i.km, align 16, !tbaa !48
  %i.kp = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i552, 4 ; 2 uses
  %i.kq = icmp slt i64 %i.kp, %i.ht
  br i1 %i.kq, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i551, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i547, !llvm.loop !201

.loopexit1965:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i548.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i548, %middle.block2724, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i547
  %i.kr = load ptr, ptr %3, align 8, !tbaa !22, !noalias !455 ; 14 uses
  %i.ks = ptrtoaddr ptr %i.kr to i64              ; 2 uses
  %i.kt = load i64, ptr %i.g, align 8, !tbaa !21, !noalias !455 ; 8 uses
  %i.ku = add nsw i64 %i.dq, %i.k                 ; 5 uses
  %i.kv = load ptr, ptr %24, align 8, !tbaa !24, !noalias !456 ; 2 uses
  %i.kw = ptrtoaddr ptr %i.kv to i64              ; 2 uses
  %i.kx = getelementptr inbounds [4 x i8], ptr %i.kv, i64 %i.ku ; 14 uses
  %i.ky = ptrtoint ptr %i.kx to i64               ; 2 uses
  %i.kz = and i64 %i.ky, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i562 = icmp eq i64 %i.kz, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i562, label %bb.i, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i563

bb.i:                                             ; preds = %.loopexit1965
  %i.la = lshr exact i64 %i.ky, 2
  %i.lb = sub nsw i64 0, %i.la
  %i.lc = and i64 %i.lb, 3
  %i.ld = call i64 @llvm.smin.i64(i64 %i.lc, i64 %i.kt)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i563

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i563: ; preds = %bb.i, %.loopexit1965
  %.0.i.i.i.i.i.i.i.i.i.i.i.i564 = phi i64 [ %i.ld, %bb.i ], [ %i.kt, %.loopexit1965 ] ; 11 uses
  %i.le = sub nsw i64 %i.kt, %.0.i.i.i.i.i.i.i.i.i.i.i.i564 ; 2 uses
  %i.lf = sdiv i64 %i.le, 4
  %i.lg = shl nsw i64 %i.lf, 2                    ; 2 uses
  %i.lh = add nsw i64 %i.lg, %.0.i.i.i.i.i.i.i.i.i.i.i.i564 ; 6 uses
  %i.li = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i564, 0
  br i1 %i.li, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i572.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i565

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i572.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i563
  %min.iters.check2730 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i564, 16
  br i1 %min.iters.check2730, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i572.preheader3536, label %vector.memcheck2731

vector.memcheck2731:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i572.preheader
  %i.lj = shl nsw i64 %i.ku, 2
  %i.lk = add i64 %i.lj, %i.kw
  %i.ll = sub i64 %i.ks, %i.lk
  %diff.check2732 = icmp ugt i64 %i.ll, -32
  br i1 %diff.check2732, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i572.preheader3536, label %vector.ph2733

vector.ph2733:                                    ; preds = %vector.memcheck2731
  %n.vec2734 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i564, 9223372036854775800 ; 3 uses
  br label %vector.body2735

vector.body2735:                                  ; preds = %vector.body2735, %vector.ph2733
  %index2736 = phi i64 [ 0, %vector.ph2733 ], [ %index.next2739, %vector.body2735 ] ; 3 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %index2736 ; 2 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %index2736 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %wide.load2737 = load <4 x i32>, ptr %i.ln, align 4, !tbaa !43
  %wide.load2738 = load <4 x i32>, ptr %i.lo, align 4, !tbaa !43
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  store <4 x i32> %wide.load2737, ptr %i.lm, align 4, !tbaa !43
  store <4 x i32> %wide.load2738, ptr %i.lp, align 4, !tbaa !43
  %index.next2739 = add nuw i64 %index2736, 8     ; 2 uses
  %i.lq = icmp eq i64 %index.next2739, %n.vec2734
  br i1 %i.lq, label %middle.block2740, label %vector.body2735, !llvm.loop !226

middle.block2740:                                 ; preds = %vector.body2735
  %cmp.n2741 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i564, %n.vec2734
  br i1 %cmp.n2741, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i565, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i572.preheader3536

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i572.preheader3536:  ; preds = %vector.memcheck2731, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i572.preheader, %middle.block2740
  %.05.i.i.i.i.i.i.i.i.i.i.i.i573.ph = phi i64 [ 0, %vector.memcheck2731 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i572.preheader ], [ %n.vec2734, %middle.block2740 ] ; 3 uses
  %xtraiter3558 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i564, 3 ; 2 uses
  %lcmp.mod3559.not = icmp eq i64 %xtraiter3558, 0
  br i1 %lcmp.mod3559.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i572.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i572.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i572.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i572.preheader3536, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i572.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i573.prol = phi i64 [ %i.lu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i572.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i573.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i572.preheader3536 ] ; 3 uses
  %prol.iter3560 = phi i64 [ %prol.iter3560.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i572.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i572.preheader3536 ]
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i573.prol
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i573.prol
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !43
  store i32 %i.lt, ptr %i.lr, align 4, !tbaa !43
  %i.lu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i573.prol, 1 ; 2 uses
  %prol.iter3560.next = add i64 %prol.iter3560, 1 ; 2 uses
  %prol.iter3560.cmp.not = icmp eq i64 %prol.iter3560.next, %xtraiter3558
  br i1 %prol.iter3560.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i572.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i572.prol, !llvm.loop !227

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i572.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i572.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i572.preheader3536
  %.05.i.i.i.i.i.i.i.i.i.i.i.i573.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i573.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i572.preheader3536 ], [ %i.lu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i572.prol ]
  %i.lv = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i573.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i564
  %i.lw = icmp ugt i64 %i.lv, -4
  br i1 %i.lw, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i565, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i572

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i572:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i572.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i572
  %.05.i.i.i.i.i.i.i.i.i.i.i.i573 = phi i64 [ %i.mm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i572 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i573.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i572.prol.loopexit ] ; 6 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i573
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i573
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !43
  store i32 %i.lz, ptr %i.lx, align 4, !tbaa !43
  %i.ma = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i573, 1 ; 2 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.ma
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %i.ma
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !43
  store i32 %i.md, ptr %i.mb, align 4, !tbaa !43
  %i.me = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i573, 2 ; 2 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.me
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %i.me
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !43
  store i32 %i.mh, ptr %i.mf, align 4, !tbaa !43
  %i.mi = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i573, 3 ; 2 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.mi
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %i.mi
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !43
  store i32 %i.ml, ptr %i.mj, align 4, !tbaa !43
  %i.mm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i573, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i574.3 = icmp eq i64 %i.mm, %.0.i.i.i.i.i.i.i.i.i.i.i.i564
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i574.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i565, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i572, !llvm.loop !228

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i565: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i572.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i572, %middle.block2740, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i563
  %i.mn = icmp sgt i64 %i.le, 3
  br i1 %i.mn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i570, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i566

._crit_edge.i.i.i.i.i.i.i.i.i.i.i566:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i570, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i565
  %i.mo = icmp slt i64 %i.lh, %i.kt
  br i1 %i.mo, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i567.preheader, label %.loopexit1964

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i567.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i566
  %i.mp = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i564, %i.lg
  %i.mq = sub i64 %i.kt, %i.mp                    ; 3 uses
  %min.iters.check2746 = icmp ult i64 %i.mq, 16
  br i1 %min.iters.check2746, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i567.preheader3535, label %vector.memcheck2747

vector.memcheck2747:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i567.preheader
  %i.mr = shl nsw i64 %i.ku, 2
  %i.ms = add i64 %i.mr, %i.kw
  %i.mt = sub i64 %i.ks, %i.ms
  %diff.check2748 = icmp ugt i64 %i.mt, -32
  br i1 %diff.check2748, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i567.preheader3535, label %vector.ph2749

vector.ph2749:                                    ; preds = %vector.memcheck2747
  %n.vec2750 = and i64 %i.mq, -8                  ; 3 uses
  %i.mu = add i64 %i.lh, %n.vec2750
  br label %vector.body2751

vector.body2751:                                  ; preds = %vector.body2751, %vector.ph2749
  %index2752 = phi i64 [ 0, %vector.ph2749 ], [ %index.next2755, %vector.body2751 ] ; 2 uses
  %i.mv = add i64 %i.lh, %index2752               ; 2 uses
  %i.mw = getelementptr inbounds [4 x i8], ptr %i.kx, i64 %i.mv ; 2 uses
  %i.mx = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.mv ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  %wide.load2753 = load <4 x i32>, ptr %i.mx, align 4, !tbaa !43
  %wide.load2754 = load <4 x i32>, ptr %i.my, align 4, !tbaa !43
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  store <4 x i32> %wide.load2753, ptr %i.mw, align 4, !tbaa !43
  store <4 x i32> %wide.load2754, ptr %i.mz, align 4, !tbaa !43
  %index.next2755 = add nuw i64 %index2752, 8     ; 2 uses
  %i.na = icmp eq i64 %index.next2755, %n.vec2750
  br i1 %i.na, label %middle.block2756, label %vector.body2751, !llvm.loop !229

middle.block2756:                                 ; preds = %vector.body2751
  %cmp.n2757 = icmp eq i64 %i.mq, %n.vec2750
  br i1 %cmp.n2757, label %.loopexit1964, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i567.preheader3535

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i567.preheader3535: ; preds = %vector.memcheck2747, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i567.preheader, %middle.block2756
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i568.ph = phi i64 [ %i.lh, %vector.memcheck2747 ], [ %i.lh, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i567.preheader ], [ %i.mu, %middle.block2756 ] ; 4 uses
  %i.nb = sub i64 %i.kt, %.05.i18.i.i.i.i.i.i.i.i.i.i.i568.ph
  %xtraiter3561 = and i64 %i.nb, 3                ; 2 uses
  %lcmp.mod3562.not = icmp eq i64 %xtraiter3561, 0
  br i1 %lcmp.mod3562.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i567.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i567.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i567.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i567.preheader3535, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i567.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i568.prol = phi i64 [ %i.nf, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i567.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i568.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i567.preheader3535 ] ; 3 uses
  %prol.iter3563 = phi i64 [ %prol.iter3563.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i567.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i567.preheader3535 ]
  %i.nc = getelementptr inbounds [4 x i8], ptr %i.kx, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i568.prol
  %i.nd = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i568.prol
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !43
  store i32 %i.ne, ptr %i.nc, align 4, !tbaa !43
  %i.nf = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i568.prol, 1 ; 2 uses
  %prol.iter3563.next = add i64 %prol.iter3563, 1 ; 2 uses
  %prol.iter3563.cmp.not = icmp eq i64 %prol.iter3563.next, %xtraiter3561
  br i1 %prol.iter3563.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i567.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i567.prol, !llvm.loop !230

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i567.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i567.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i567.preheader3535
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i568.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i568.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i567.preheader3535 ], [ %i.nf, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i567.prol ]
  %i.ng = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i568.ph, %i.kt
  %i.nh = icmp ugt i64 %i.ng, -4
  br i1 %i.nh, label %.loopexit1964, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i567

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i567:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i567.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i567
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i568 = phi i64 [ %i.nx, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i567 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i568.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i567.prol.loopexit ] ; 6 uses
  %i.ni = getelementptr inbounds [4 x i8], ptr %i.kx, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i568
  %i.nj = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i568
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !43
  store i32 %i.nk, ptr %i.ni, align 4, !tbaa !43
  %i.nl = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i568, 1 ; 2 uses
  %i.nm = getelementptr inbounds [4 x i8], ptr %i.kx, i64 %i.nl
  %i.nn = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.nl
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !43
  store i32 %i.no, ptr %i.nm, align 4, !tbaa !43
  %i.np = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i568, 2 ; 2 uses
  %i.nq = getelementptr inbounds [4 x i8], ptr %i.kx, i64 %i.np
  %i.nr = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.np
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !43
  store i32 %i.ns, ptr %i.nq, align 4, !tbaa !43
  %i.nt = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i568, 3 ; 2 uses
  %i.nu = getelementptr inbounds [4 x i8], ptr %i.kx, i64 %i.nt
  %i.nv = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.nt
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !43
  store i32 %i.nw, ptr %i.nu, align 4, !tbaa !43
  %i.nx = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i568, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i569.3 = icmp eq i64 %i.nx, %i.kt
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i569.3, label %.loopexit1964, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i567, !llvm.loop !231

.lr.ph.i.i.i.i.i.i.i.i.i.i.i570:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i565, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i570
  %.021.i.i.i.i.i.i.i.i.i.i.i571 = phi i64 [ %i.ob, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i570 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i564, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i565 ] ; 3 uses
  %i.ny = getelementptr inbounds [4 x i8], ptr %i.kx, i64 %.021.i.i.i.i.i.i.i.i.i.i.i571
  %i.nz = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %.021.i.i.i.i.i.i.i.i.i.i.i571
  %i.oa = load <2 x i64>, ptr %i.nz, align 1, !tbaa !48
  store <2 x i64> %i.oa, ptr %i.ny, align 16, !tbaa !48
  %i.ob = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i571, 4 ; 2 uses
  %i.oc = icmp slt i64 %i.ob, %i.lh
  br i1 %i.oc, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i570, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i566, !llvm.loop !201

.loopexit1964:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i567.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i567, %middle.block2756, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i566
  %i.od = load ptr, ptr %3, align 8, !tbaa !22, !noalias !457 ; 2 uses
  %i.oe = ptrtoaddr ptr %i.od to i64              ; 2 uses
  %i.of = load i64, ptr %i.g, align 8, !tbaa !21, !noalias !457 ; 11 uses
  %i.og = getelementptr inbounds [4 x i8], ptr %i.od, i64 %i.of ; 13 uses
  %i.oh = load ptr, ptr %24, align 8, !tbaa !24, !noalias !458 ; 2 uses
  %i.oi = ptrtoaddr ptr %i.oh to i64              ; 2 uses
  %i.oj = getelementptr inbounds [4 x i8], ptr %i.oh, i64 %i.ku
  %i.ok = load i64, ptr %i.n, align 8, !tbaa !25, !noalias !458 ; 3 uses
  %i.ol = getelementptr inbounds [4 x i8], ptr %i.oj, i64 %i.ok ; 14 uses
  %i.om = ptrtoint ptr %i.ol to i64               ; 2 uses
  %i.on = and i64 %i.om, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i581 = icmp eq i64 %i.on, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i581, label %bb.j, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i582

bb.j:                                             ; preds = %.loopexit1964
  %i.oo = lshr exact i64 %i.om, 2
  %i.op = sub nsw i64 0, %i.oo
  %i.oq = and i64 %i.op, 3
  %i.or = call i64 @llvm.smin.i64(i64 %i.oq, i64 %i.of)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i582

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i582: ; preds = %bb.j, %.loopexit1964
  %.0.i.i.i.i.i.i.i.i.i.i.i.i583 = phi i64 [ %i.or, %bb.j ], [ %i.of, %.loopexit1964 ] ; 11 uses
  %i.os = sub nsw i64 %i.of, %.0.i.i.i.i.i.i.i.i.i.i.i.i583 ; 2 uses
  %i.ot = sdiv i64 %i.os, 4
  %i.ou = shl nsw i64 %i.ot, 2                    ; 2 uses
  %i.ov = add nsw i64 %i.ou, %.0.i.i.i.i.i.i.i.i.i.i.i.i583 ; 6 uses
  %i.ow = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i583, 0
  br i1 %i.ow, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i591.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i584

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i591.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i582
  %min.iters.check2762 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i583, 24
  br i1 %min.iters.check2762, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i591.preheader3534, label %vector.memcheck2763

vector.memcheck2763:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i591.preheader
  %i.ox = shl i64 %i.of, 2
  %i.oy = add i64 %i.ok, %i.ku
  %i.oz = shl i64 %i.oy, 2
  %i.pa = add i64 %i.oz, %i.oi
  %i.pb = add i64 %i.ox, %i.oe
  %i.pc = sub i64 %i.pb, %i.pa
  %diff.check2764 = icmp ugt i64 %i.pc, -32
  br i1 %diff.check2764, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i591.preheader3534, label %vector.ph2765

vector.ph2765:                                    ; preds = %vector.memcheck2763
  %n.vec2766 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i583, 9223372036854775800 ; 3 uses
  br label %vector.body2767

vector.body2767:                                  ; preds = %vector.body2767, %vector.ph2765
  %index2768 = phi i64 [ 0, %vector.ph2765 ], [ %index.next2771, %vector.body2767 ] ; 3 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %index2768 ; 2 uses
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %index2768 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  %wide.load2769 = load <4 x i32>, ptr %i.pe, align 4, !tbaa !43
  %wide.load2770 = load <4 x i32>, ptr %i.pf, align 4, !tbaa !43
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  store <4 x i32> %wide.load2769, ptr %i.pd, align 4, !tbaa !43
  store <4 x i32> %wide.load2770, ptr %i.pg, align 4, !tbaa !43
  %index.next2771 = add nuw i64 %index2768, 8     ; 2 uses
  %i.ph = icmp eq i64 %index.next2771, %n.vec2766
  br i1 %i.ph, label %middle.block2772, label %vector.body2767, !llvm.loop !236

middle.block2772:                                 ; preds = %vector.body2767
  %cmp.n2773 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i583, %n.vec2766
  br i1 %cmp.n2773, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i584, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i591.preheader3534

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i591.preheader3534:  ; preds = %vector.memcheck2763, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i591.preheader, %middle.block2772
  %.05.i.i.i.i.i.i.i.i.i.i.i.i592.ph = phi i64 [ 0, %vector.memcheck2763 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i591.preheader ], [ %n.vec2766, %middle.block2772 ] ; 3 uses
  %xtraiter3564 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i583, 3 ; 2 uses
  %lcmp.mod3565.not = icmp eq i64 %xtraiter3564, 0
  br i1 %lcmp.mod3565.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i591.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i591.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i591.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i591.preheader3534, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i591.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i592.prol = phi i64 [ %i.pl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i591.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i592.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i591.preheader3534 ] ; 3 uses
  %prol.iter3566 = phi i64 [ %prol.iter3566.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i591.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i591.preheader3534 ]
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i592.prol
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i592.prol
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !43
  store i32 %i.pk, ptr %i.pi, align 4, !tbaa !43
  %i.pl = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i592.prol, 1 ; 2 uses
  %prol.iter3566.next = add i64 %prol.iter3566, 1 ; 2 uses
  %prol.iter3566.cmp.not = icmp eq i64 %prol.iter3566.next, %xtraiter3564
  br i1 %prol.iter3566.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i591.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i591.prol, !llvm.loop !237

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i591.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i591.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i591.preheader3534
  %.05.i.i.i.i.i.i.i.i.i.i.i.i592.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i592.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i591.preheader3534 ], [ %i.pl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i591.prol ]
  %i.pm = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i592.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i583
  %i.pn = icmp ugt i64 %i.pm, -4
  br i1 %i.pn, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i584, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i591

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i591:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i591.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i591
  %.05.i.i.i.i.i.i.i.i.i.i.i.i592 = phi i64 [ %i.qd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i591 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i592.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i591.prol.loopexit ] ; 6 uses
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i592
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i592
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !43
  store i32 %i.pq, ptr %i.po, align 4, !tbaa !43
  %i.pr = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i592, 1 ; 2 uses
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %i.pr
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.pr
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !43
  store i32 %i.pu, ptr %i.ps, align 4, !tbaa !43
  %i.pv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i592, 2 ; 2 uses
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %i.pv
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.pv
  %i.py = load i32, ptr %i.px, align 4, !tbaa !43
  store i32 %i.py, ptr %i.pw, align 4, !tbaa !43
  %i.pz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i592, 3 ; 2 uses
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %i.pz
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.pz
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !43
end_hunk_0
begin_hunk_1_@_ZN3igl16straighten_seamsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELin1ELi1ELin1ELin1EEES4_dS4_S5_S4_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERKNS6_IT2_EET3_RNS1_15PlainObjectBaseIT4_EERNSO_IT5_EERNSO_IT6_EE:bb.a
  store <4 x i32> %wide.load2801, ptr %i.tw, align 4, !tbaa !43
  store <4 x i32> %wide.load2802, ptr %i.tz, align 4, !tbaa !43
  %index.next2803 = add nuw i64 %index2800, 8     ; 2 uses
  %i.ua = icmp eq i64 %index.next2803, %n.vec2798
  br i1 %i.ua, label %middle.block2804, label %vector.body2799, !llvm.loop !252

middle.block2804:                                 ; preds = %vector.body2799
  %cmp.n2805 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i606, %n.vec2798
  br i1 %cmp.n2805, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i607, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i614.preheader3532

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i614.preheader3532:  ; preds = %vector.memcheck2795, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i614.preheader, %middle.block2804
  %.05.i.i.i.i.i.i.i.i.i.i.i.i615.ph = phi i64 [ 0, %vector.memcheck2795 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i614.preheader ], [ %n.vec2798, %middle.block2804 ] ; 3 uses
  %xtraiter3570 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i606, 3 ; 2 uses
  %lcmp.mod3571.not = icmp eq i64 %xtraiter3570, 0
  br i1 %lcmp.mod3571.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i614.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i614.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i614.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i614.preheader3532, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i614.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i615.prol = phi i64 [ %i.ue, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i614.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i615.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i614.preheader3532 ] ; 3 uses
  %prol.iter3572 = phi i64 [ %prol.iter3572.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i614.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i614.preheader3532 ]
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i615.prol
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i615.prol
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !43
  store i32 %i.ud, ptr %i.ub, align 4, !tbaa !43
  %i.ue = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i615.prol, 1 ; 2 uses
  %prol.iter3572.next = add i64 %prol.iter3572, 1 ; 2 uses
  %prol.iter3572.cmp.not = icmp eq i64 %prol.iter3572.next, %xtraiter3570
  br i1 %prol.iter3572.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i614.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i614.prol, !llvm.loop !253

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i614.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i614.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i614.preheader3532
  %.05.i.i.i.i.i.i.i.i.i.i.i.i615.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i615.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i614.preheader3532 ], [ %i.ue, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i614.prol ]
  %i.uf = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i615.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i606
  %i.ug = icmp ugt i64 %i.uf, -4
  br i1 %i.ug, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i607, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i614

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i614:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i614.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i614
  %.05.i.i.i.i.i.i.i.i.i.i.i.i615 = phi i64 [ %i.uw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i614 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i615.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i614.prol.loopexit ] ; 6 uses
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i615
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i615
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !43
  store i32 %i.uj, ptr %i.uh, align 4, !tbaa !43
  %i.uk = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i615, 1 ; 2 uses
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %i.uk
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.uk
  %i.un = load i32, ptr %i.um, align 4, !tbaa !43
  store i32 %i.un, ptr %i.ul, align 4, !tbaa !43
  %i.uo = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i615, 2 ; 2 uses
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %i.uo
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.uo
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !43
  store i32 %i.ur, ptr %i.up, align 4, !tbaa !43
  %i.us = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i615, 3 ; 2 uses
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %i.us
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.us
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !43
  store i32 %i.uv, ptr %i.ut, align 4, !tbaa !43
  %i.uw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i615, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i616.3 = icmp eq i64 %i.uw, %.0.i.i.i.i.i.i.i.i.i.i.i.i606
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i616.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i607, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i614, !llvm.loop !254

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i607: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i614.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i614, %middle.block2804, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i605
  %i.ux = icmp sgt i64 %i.tn, 3
  br i1 %i.ux, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i612, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i608

._crit_edge.i.i.i.i.i.i.i.i.i.i.i608:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i612, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i607
  %i.uy = icmp slt i64 %i.tq, %i.tb
  br i1 %i.uy, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i609.preheader, label %.loopexit1963

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i609.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i608
  %i.uz = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i606, %i.tp
  %i.va = sub i64 %i.tb, %i.uz                    ; 3 uses
  %min.iters.check2810 = icmp ult i64 %i.va, 16
  br i1 %min.iters.check2810, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i609.preheader3531, label %vector.memcheck2811

vector.memcheck2811:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i609.preheader
  %i.vb = shl nsw i64 %i.tf, 2
  %i.vc = add i64 %i.vb, %i.te
  %i.vd = add i64 %.idx1930, %i.ta
  %i.ve = sub i64 %i.vd, %i.vc
  %diff.check2812 = icmp ugt i64 %i.ve, -32
  br i1 %diff.check2812, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i609.preheader3531, label %vector.ph2813

vector.ph2813:                                    ; preds = %vector.memcheck2811
  %n.vec2814 = and i64 %i.va, -8                  ; 3 uses
  %i.vf = add i64 %i.tq, %n.vec2814
  br label %vector.body2815

vector.body2815:                                  ; preds = %vector.body2815, %vector.ph2813
  %index2816 = phi i64 [ 0, %vector.ph2813 ], [ %index.next2819, %vector.body2815 ] ; 2 uses
  %i.vg = add i64 %i.tq, %index2816               ; 2 uses
  %i.vh = getelementptr inbounds [4 x i8], ptr %i.tg, i64 %i.vg ; 2 uses
  %i.vi = getelementptr inbounds [4 x i8], ptr %i.tc, i64 %i.vg ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 16
  %wide.load2817 = load <4 x i32>, ptr %i.vi, align 4, !tbaa !43
  %wide.load2818 = load <4 x i32>, ptr %i.vj, align 4, !tbaa !43
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vh, i64 16
  store <4 x i32> %wide.load2817, ptr %i.vh, align 4, !tbaa !43
  store <4 x i32> %wide.load2818, ptr %i.vk, align 4, !tbaa !43
  %index.next2819 = add nuw i64 %index2816, 8     ; 2 uses
  %i.vl = icmp eq i64 %index.next2819, %n.vec2814
  br i1 %i.vl, label %middle.block2820, label %vector.body2815, !llvm.loop !255

middle.block2820:                                 ; preds = %vector.body2815
  %cmp.n2821 = icmp eq i64 %i.va, %n.vec2814
  br i1 %cmp.n2821, label %.loopexit1963, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i609.preheader3531

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i609.preheader3531: ; preds = %vector.memcheck2811, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i609.preheader, %middle.block2820
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i610.ph = phi i64 [ %i.tq, %vector.memcheck2811 ], [ %i.tq, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i609.preheader ], [ %i.vf, %middle.block2820 ] ; 4 uses
  %i.vm = sub i64 %i.tb, %.05.i18.i.i.i.i.i.i.i.i.i.i.i610.ph
  %xtraiter3573 = and i64 %i.vm, 3                ; 2 uses
  %lcmp.mod3574.not = icmp eq i64 %xtraiter3573, 0
  br i1 %lcmp.mod3574.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i609.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i609.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i609.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i609.preheader3531, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i609.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i610.prol = phi i64 [ %i.vq, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i609.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i610.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i609.preheader3531 ] ; 3 uses
  %prol.iter3575 = phi i64 [ %prol.iter3575.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i609.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i609.preheader3531 ]
  %i.vn = getelementptr inbounds [4 x i8], ptr %i.tg, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i610.prol
  %i.vo = getelementptr inbounds [4 x i8], ptr %i.tc, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i610.prol
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !43
  store i32 %i.vp, ptr %i.vn, align 4, !tbaa !43
  %i.vq = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i610.prol, 1 ; 2 uses
  %prol.iter3575.next = add i64 %prol.iter3575, 1 ; 2 uses
  %prol.iter3575.cmp.not = icmp eq i64 %prol.iter3575.next, %xtraiter3573
  br i1 %prol.iter3575.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i609.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i609.prol, !llvm.loop !256

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i609.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i609.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i609.preheader3531
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i610.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i610.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i609.preheader3531 ], [ %i.vq, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i609.prol ]
  %i.vr = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i610.ph, %i.tb
  %i.vs = icmp ugt i64 %i.vr, -4
  br i1 %i.vs, label %.loopexit1963, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i609

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i609:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i609.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i609
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i610 = phi i64 [ %i.wi, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i609 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i610.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i609.prol.loopexit ] ; 6 uses
  %i.vt = getelementptr inbounds [4 x i8], ptr %i.tg, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i610
  %i.vu = getelementptr inbounds [4 x i8], ptr %i.tc, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i610
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !43
  store i32 %i.vv, ptr %i.vt, align 4, !tbaa !43
  %i.vw = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i610, 1 ; 2 uses
  %i.vx = getelementptr inbounds [4 x i8], ptr %i.tg, i64 %i.vw
  %i.vy = getelementptr inbounds [4 x i8], ptr %i.tc, i64 %i.vw
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !43
  store i32 %i.vz, ptr %i.vx, align 4, !tbaa !43
  %i.wa = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i610, 2 ; 2 uses
  %i.wb = getelementptr inbounds [4 x i8], ptr %i.tg, i64 %i.wa
  %i.wc = getelementptr inbounds [4 x i8], ptr %i.tc, i64 %i.wa
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !43
  store i32 %i.wd, ptr %i.wb, align 4, !tbaa !43
  %i.we = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i610, 3 ; 2 uses
  %i.wf = getelementptr inbounds [4 x i8], ptr %i.tg, i64 %i.we
  %i.wg = getelementptr inbounds [4 x i8], ptr %i.tc, i64 %i.we
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !43
  store i32 %i.wh, ptr %i.wf, align 4, !tbaa !43
  %i.wi = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i610, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i611.3 = icmp eq i64 %i.wi, %i.tb
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i611.3, label %.loopexit1963, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i609, !llvm.loop !257

.lr.ph.i.i.i.i.i.i.i.i.i.i.i612:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i607, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i612
  %.021.i.i.i.i.i.i.i.i.i.i.i613 = phi i64 [ %i.wm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i612 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i606, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i607 ] ; 3 uses
  %i.wj = getelementptr inbounds [4 x i8], ptr %i.tg, i64 %.021.i.i.i.i.i.i.i.i.i.i.i613
  %i.wk = getelementptr inbounds [4 x i8], ptr %i.tc, i64 %.021.i.i.i.i.i.i.i.i.i.i.i613
  %i.wl = load <2 x i64>, ptr %i.wk, align 1, !tbaa !48
  store <2 x i64> %i.wl, ptr %i.wj, align 16, !tbaa !48
  %i.wm = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i613, 4 ; 2 uses
  %i.wn = icmp slt i64 %i.wm, %i.tq
  br i1 %i.wn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i612, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i608, !llvm.loop !201

.loopexit1963:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i609.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i609, %middle.block2820, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i608
  %i.wo = load ptr, ptr %1, align 8, !tbaa !22, !noalias !465 ; 2 uses
  %i.wp = ptrtoaddr ptr %i.wo to i64              ; 2 uses
  %i.wq = load i64, ptr %i.e, align 8, !tbaa !21, !noalias !465 ; 11 uses
  %.idx1931 = shl i64 %i.wq, 3                    ; 3 uses
  %i.wr = getelementptr inbounds i8, ptr %i.wo, i64 %.idx1931 ; 13 uses
  %i.ws = load ptr, ptr %26, align 8, !tbaa !24, !noalias !466 ; 2 uses
  %i.wt = ptrtoaddr ptr %i.ws to i64              ; 2 uses
  %i.wu = getelementptr inbounds [4 x i8], ptr %i.ws, i64 %i.sk ; 14 uses
  %i.wv = ptrtoint ptr %i.wu to i64               ; 2 uses
  %i.ww = and i64 %i.wv, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i623 = icmp eq i64 %i.ww, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i623, label %bb.o, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i624

bb.o:                                             ; preds = %.loopexit1963
  %i.wx = lshr exact i64 %i.wv, 2
  %i.wy = sub nsw i64 0, %i.wx
  %i.wz = and i64 %i.wy, 3
  %i.xa = call i64 @llvm.smin.i64(i64 %i.wz, i64 %i.wq)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i624

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i624: ; preds = %bb.o, %.loopexit1963
  %.0.i.i.i.i.i.i.i.i.i.i.i.i625 = phi i64 [ %i.xa, %bb.o ], [ %i.wq, %.loopexit1963 ] ; 11 uses
  %i.xb = sub nsw i64 %i.wq, %.0.i.i.i.i.i.i.i.i.i.i.i.i625 ; 2 uses
  %i.xc = sdiv i64 %i.xb, 4
  %i.xd = shl nsw i64 %i.xc, 2                    ; 2 uses
  %i.xe = add nsw i64 %i.xd, %.0.i.i.i.i.i.i.i.i.i.i.i.i625 ; 6 uses
  %i.xf = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i625, 0
  br i1 %i.xf, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i633.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i626

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i633.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i624
  %min.iters.check2826 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i625, 16
  br i1 %min.iters.check2826, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i633.preheader3530, label %vector.memcheck2827

vector.memcheck2827:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i633.preheader
  %i.xg = shl nsw i64 %i.sk, 2
  %i.xh = add i64 %i.xg, %i.wt
  %i.xi = add i64 %.idx1931, %i.wp
  %i.xj = sub i64 %i.xi, %i.xh
  %diff.check2828 = icmp ugt i64 %i.xj, -32
  br i1 %diff.check2828, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i633.preheader3530, label %vector.ph2829

vector.ph2829:                                    ; preds = %vector.memcheck2827
  %n.vec2830 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i625, 9223372036854775800 ; 3 uses
  br label %vector.body2831

vector.body2831:                                  ; preds = %vector.body2831, %vector.ph2829
  %index2832 = phi i64 [ 0, %vector.ph2829 ], [ %index.next2835, %vector.body2831 ] ; 3 uses
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %index2832 ; 2 uses
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %index2832 ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 16
  %wide.load2833 = load <4 x i32>, ptr %i.xl, align 4, !tbaa !43
  %wide.load2834 = load <4 x i32>, ptr %i.xm, align 4, !tbaa !43
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xk, i64 16
  store <4 x i32> %wide.load2833, ptr %i.xk, align 4, !tbaa !43
  store <4 x i32> %wide.load2834, ptr %i.xn, align 4, !tbaa !43
  %index.next2835 = add nuw i64 %index2832, 8     ; 2 uses
  %i.xo = icmp eq i64 %index.next2835, %n.vec2830
  br i1 %i.xo, label %middle.block2836, label %vector.body2831, !llvm.loop !262

middle.block2836:                                 ; preds = %vector.body2831
  %cmp.n2837 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i625, %n.vec2830
  br i1 %cmp.n2837, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i626, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i633.preheader3530

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i633.preheader3530:  ; preds = %vector.memcheck2827, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i633.preheader, %middle.block2836
  %.05.i.i.i.i.i.i.i.i.i.i.i.i634.ph = phi i64 [ 0, %vector.memcheck2827 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i633.preheader ], [ %n.vec2830, %middle.block2836 ] ; 3 uses
  %xtraiter3576 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i625, 3 ; 2 uses
  %lcmp.mod3577.not = icmp eq i64 %xtraiter3576, 0
  br i1 %lcmp.mod3577.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i633.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i633.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i633.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i633.preheader3530, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i633.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i634.prol = phi i64 [ %i.xs, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i633.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i634.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i633.preheader3530 ] ; 3 uses
  %prol.iter3578 = phi i64 [ %prol.iter3578.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i633.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i633.preheader3530 ]
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i634.prol
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i634.prol
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !43
  store i32 %i.xr, ptr %i.xp, align 4, !tbaa !43
  %i.xs = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i634.prol, 1 ; 2 uses
  %prol.iter3578.next = add i64 %prol.iter3578, 1 ; 2 uses
  %prol.iter3578.cmp.not = icmp eq i64 %prol.iter3578.next, %xtraiter3576
  br i1 %prol.iter3578.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i633.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i633.prol, !llvm.loop !263

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i633.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i633.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i633.preheader3530
  %.05.i.i.i.i.i.i.i.i.i.i.i.i634.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i634.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i633.preheader3530 ], [ %i.xs, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i633.prol ]
  %i.xt = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i634.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i625
  %i.xu = icmp ugt i64 %i.xt, -4
  br i1 %i.xu, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i626, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i633

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i633:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i633.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i633
  %.05.i.i.i.i.i.i.i.i.i.i.i.i634 = phi i64 [ %i.yk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i633 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i634.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i633.prol.loopexit ] ; 6 uses
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i634
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i634
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !43
  store i32 %i.xx, ptr %i.xv, align 4, !tbaa !43
  %i.xy = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i634, 1 ; 2 uses
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %i.xy
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %i.xy
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !43
  store i32 %i.yb, ptr %i.xz, align 4, !tbaa !43
  %i.yc = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i634, 2 ; 2 uses
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %i.yc
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %i.yc
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !43
  store i32 %i.yf, ptr %i.yd, align 4, !tbaa !43
  %i.yg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i634, 3 ; 2 uses
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %i.yg
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %i.yg
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !43
  store i32 %i.yj, ptr %i.yh, align 4, !tbaa !43
  %i.yk = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i634, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i635.3 = icmp eq i64 %i.yk, %.0.i.i.i.i.i.i.i.i.i.i.i.i625
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i635.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i626, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i633, !llvm.loop !264

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i626: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i633.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i633, %middle.block2836, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i624
  %i.yl = icmp sgt i64 %i.xb, 3
  br i1 %i.yl, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i631, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i627

._crit_edge.i.i.i.i.i.i.i.i.i.i.i627:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i631, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i626
  %i.ym = icmp slt i64 %i.xe, %i.wq
  br i1 %i.ym, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i628.preheader, label %.loopexit1962

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i628.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i627
  %i.yn = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i625, %i.xd
  %i.yo = sub i64 %i.wq, %i.yn                    ; 3 uses
  %min.iters.check2842 = icmp ult i64 %i.yo, 16
  br i1 %min.iters.check2842, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i628.preheader3529, label %vector.memcheck2843

vector.memcheck2843:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i628.preheader
  %i.yp = shl nsw i64 %i.sk, 2
  %i.yq = add i64 %i.yp, %i.wt
  %i.yr = add i64 %.idx1931, %i.wp
  %i.ys = sub i64 %i.yr, %i.yq
  %diff.check2844 = icmp ugt i64 %i.ys, -32
  br i1 %diff.check2844, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i628.preheader3529, label %vector.ph2845

vector.ph2845:                                    ; preds = %vector.memcheck2843
  %n.vec2846 = and i64 %i.yo, -8                  ; 3 uses
  %i.yt = add i64 %i.xe, %n.vec2846
  br label %vector.body2847

vector.body2847:                                  ; preds = %vector.body2847, %vector.ph2845
  %index2848 = phi i64 [ 0, %vector.ph2845 ], [ %index.next2851, %vector.body2847 ] ; 2 uses
  %i.yu = add i64 %i.xe, %index2848               ; 2 uses
  %i.yv = getelementptr inbounds [4 x i8], ptr %i.wu, i64 %i.yu ; 2 uses
  %i.yw = getelementptr inbounds [4 x i8], ptr %i.wr, i64 %i.yu ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 16
  %wide.load2849 = load <4 x i32>, ptr %i.yw, align 4, !tbaa !43
  %wide.load2850 = load <4 x i32>, ptr %i.yx, align 4, !tbaa !43
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yv, i64 16
  store <4 x i32> %wide.load2849, ptr %i.yv, align 4, !tbaa !43
  store <4 x i32> %wide.load2850, ptr %i.yy, align 4, !tbaa !43
  %index.next2851 = add nuw i64 %index2848, 8     ; 2 uses
  %i.yz = icmp eq i64 %index.next2851, %n.vec2846
  br i1 %i.yz, label %middle.block2852, label %vector.body2847, !llvm.loop !265

middle.block2852:                                 ; preds = %vector.body2847
  %cmp.n2853 = icmp eq i64 %i.yo, %n.vec2846
  br i1 %cmp.n2853, label %.loopexit1962, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i628.preheader3529

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i628.preheader3529: ; preds = %vector.memcheck2843, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i628.preheader, %middle.block2852
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i629.ph = phi i64 [ %i.xe, %vector.memcheck2843 ], [ %i.xe, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i628.preheader ], [ %i.yt, %middle.block2852 ] ; 4 uses
  %i.za = sub i64 %i.wq, %.05.i18.i.i.i.i.i.i.i.i.i.i.i629.ph
  %xtraiter3579 = and i64 %i.za, 3                ; 2 uses
  %lcmp.mod3580.not = icmp eq i64 %xtraiter3579, 0
  br i1 %lcmp.mod3580.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i628.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i628.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i628.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i628.preheader3529, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i628.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i629.prol = phi i64 [ %i.ze, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i628.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i629.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i628.preheader3529 ] ; 3 uses
  %prol.iter3581 = phi i64 [ %prol.iter3581.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i628.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i628.preheader3529 ]
  %i.zb = getelementptr inbounds [4 x i8], ptr %i.wu, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i629.prol
  %i.zc = getelementptr inbounds [4 x i8], ptr %i.wr, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i629.prol
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !43
  store i32 %i.zd, ptr %i.zb, align 4, !tbaa !43
  %i.ze = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i629.prol, 1 ; 2 uses
  %prol.iter3581.next = add i64 %prol.iter3581, 1 ; 2 uses
  %prol.iter3581.cmp.not = icmp eq i64 %prol.iter3581.next, %xtraiter3579
  br i1 %prol.iter3581.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i628.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i628.prol, !llvm.loop !266

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i628.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i628.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i628.preheader3529
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i629.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i629.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i628.preheader3529 ], [ %i.ze, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i628.prol ]
  %i.zf = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i629.ph, %i.wq
  %i.zg = icmp ugt i64 %i.zf, -4
  br i1 %i.zg, label %.loopexit1962, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i628

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i628:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i628.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i628
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i629 = phi i64 [ %i.zw, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i628 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i629.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i628.prol.loopexit ] ; 6 uses
  %i.zh = getelementptr inbounds [4 x i8], ptr %i.wu, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i629
  %i.zi = getelementptr inbounds [4 x i8], ptr %i.wr, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i629
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !43
  store i32 %i.zj, ptr %i.zh, align 4, !tbaa !43
  %i.zk = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i629, 1 ; 2 uses
  %i.zl = getelementptr inbounds [4 x i8], ptr %i.wu, i64 %i.zk
  %i.zm = getelementptr inbounds [4 x i8], ptr %i.wr, i64 %i.zk
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !43
  store i32 %i.zn, ptr %i.zl, align 4, !tbaa !43
  %i.zo = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i629, 2 ; 2 uses
  %i.zp = getelementptr inbounds [4 x i8], ptr %i.wu, i64 %i.zo
  %i.zq = getelementptr inbounds [4 x i8], ptr %i.wr, i64 %i.zo
  %i.zr = load i32, ptr %i.zq, align 4, !tbaa !43
  store i32 %i.zr, ptr %i.zp, align 4, !tbaa !43
  %i.zs = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i629, 3 ; 2 uses
  %i.zt = getelementptr inbounds [4 x i8], ptr %i.wu, i64 %i.zs
  %i.zu = getelementptr inbounds [4 x i8], ptr %i.wr, i64 %i.zs
  %i.zv = load i32, ptr %i.zu, align 4, !tbaa !43
  store i32 %i.zv, ptr %i.zt, align 4, !tbaa !43
  %i.zw = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i629, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i630.3 = icmp eq i64 %i.zw, %i.wq
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i630.3, label %.loopexit1962, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i628, !llvm.loop !267

.lr.ph.i.i.i.i.i.i.i.i.i.i.i631:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i626, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i631
  %.021.i.i.i.i.i.i.i.i.i.i.i632 = phi i64 [ %i.aaa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i631 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i625, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i626 ] ; 3 uses
  %i.zx = getelementptr inbounds [4 x i8], ptr %i.wu, i64 %.021.i.i.i.i.i.i.i.i.i.i.i632
  %i.zy = getelementptr inbounds [4 x i8], ptr %i.wr, i64 %.021.i.i.i.i.i.i.i.i.i.i.i632
  %i.zz = load <2 x i64>, ptr %i.zy, align 1, !tbaa !48
  store <2 x i64> %i.zz, ptr %i.zx, align 16, !tbaa !48
  %i.aaa = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i632, 4 ; 2 uses
  %i.aab = icmp slt i64 %i.aaa, %i.xe
  br i1 %i.aab, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i631, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i627, !llvm.loop !201

.loopexit1962:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i628.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i628, %middle.block2852, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i627
  %i.aac = load ptr, ptr %1, align 8, !tbaa !22, !noalias !467 ; 14 uses
  %i.aad = ptrtoaddr ptr %i.aac to i64            ; 2 uses
  %i.aae = load i64, ptr %i.e, align 8, !tbaa !21, !noalias !467 ; 8 uses
  %i.aaf = load ptr, ptr %26, align 8, !tbaa !24, !noalias !468 ; 2 uses
  %i.aag = ptrtoaddr ptr %i.aaf to i64            ; 2 uses
  %i.aah = getelementptr inbounds [4 x i8], ptr %i.aaf, i64 %i.sk
  %i.aai = load i64, ptr %i.sn, align 8, !tbaa !25, !noalias !468 ; 3 uses
  %i.aaj = getelementptr inbounds [4 x i8], ptr %i.aah, i64 %i.aai ; 14 uses
  %i.aak = ptrtoint ptr %i.aaj to i64             ; 2 uses
  %i.aal = and i64 %i.aak, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i642 = icmp eq i64 %i.aal, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i642, label %bb.p, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i643

bb.p:                                             ; preds = %.loopexit1962
  %i.aam = lshr exact i64 %i.aak, 2
  %i.aan = sub nsw i64 0, %i.aam
  %i.aao = and i64 %i.aan, 3
  %i.aap = call i64 @llvm.smin.i64(i64 %i.aao, i64 %i.aae)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i643

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i643: ; preds = %bb.p, %.loopexit1962
  %.0.i.i.i.i.i.i.i.i.i.i.i.i644 = phi i64 [ %i.aap, %bb.p ], [ %i.aae, %.loopexit1962 ] ; 11 uses
  %i.aaq = sub nsw i64 %i.aae, %.0.i.i.i.i.i.i.i.i.i.i.i.i644 ; 2 uses
  %i.aar = sdiv i64 %i.aaq, 4
  %i.aas = shl nsw i64 %i.aar, 2                  ; 2 uses
  %i.aat = add nsw i64 %i.aas, %.0.i.i.i.i.i.i.i.i.i.i.i.i644 ; 6 uses
  %i.aau = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i644, 0
  br i1 %i.aau, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i652.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i645

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i652.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i643
  %min.iters.check2858 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i644, 20
  br i1 %min.iters.check2858, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i652.preheader3528, label %vector.memcheck2859

vector.memcheck2859:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i652.preheader
  %i.aav = add i64 %i.aai, %i.sk
  %i.aaw = shl i64 %i.aav, 2
  %i.aax = add i64 %i.aaw, %i.aag
  %i.aay = sub i64 %i.aad, %i.aax
  %diff.check2860 = icmp ugt i64 %i.aay, -32
  br i1 %diff.check2860, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i652.preheader3528, label %vector.ph2861

vector.ph2861:                                    ; preds = %vector.memcheck2859
  %n.vec2862 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i644, 9223372036854775800 ; 3 uses
  br label %vector.body2863

vector.body2863:                                  ; preds = %vector.body2863, %vector.ph2861
  %index2864 = phi i64 [ 0, %vector.ph2861 ], [ %index.next2867, %vector.body2863 ] ; 3 uses
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.aaj, i64 %index2864 ; 2 uses
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %i.aac, i64 %index2864 ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 16
  %wide.load2865 = load <4 x i32>, ptr %i.aba, align 4, !tbaa !43
  %wide.load2866 = load <4 x i32>, ptr %i.abb, align 4, !tbaa !43
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aaz, i64 16
  store <4 x i32> %wide.load2865, ptr %i.aaz, align 4, !tbaa !43
  store <4 x i32> %wide.load2866, ptr %i.abc, align 4, !tbaa !43
  %index.next2867 = add nuw i64 %index2864, 8     ; 2 uses
  %i.abd = icmp eq i64 %index.next2867, %n.vec2862
  br i1 %i.abd, label %middle.block2868, label %vector.body2863, !llvm.loop !272

middle.block2868:                                 ; preds = %vector.body2863
  %cmp.n2869 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i644, %n.vec2862
  br i1 %cmp.n2869, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i645, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i652.preheader3528

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i652.preheader3528:  ; preds = %vector.memcheck2859, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i652.preheader, %middle.block2868
  %.05.i.i.i.i.i.i.i.i.i.i.i.i653.ph = phi i64 [ 0, %vector.memcheck2859 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i652.preheader ], [ %n.vec2862, %middle.block2868 ] ; 3 uses
  %xtraiter3582 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i644, 3 ; 2 uses
  %lcmp.mod3583.not = icmp eq i64 %xtraiter3582, 0
  br i1 %lcmp.mod3583.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i652.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i652.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i652.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i652.preheader3528, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i652.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i653.prol = phi i64 [ %i.abh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i652.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i653.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i652.preheader3528 ] ; 3 uses
  %prol.iter3584 = phi i64 [ %prol.iter3584.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i652.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i652.preheader3528 ]
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %i.aaj, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i653.prol
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %i.aac, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i653.prol
  %i.abg = load i32, ptr %i.abf, align 4, !tbaa !43
  store i32 %i.abg, ptr %i.abe, align 4, !tbaa !43
  %i.abh = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i653.prol, 1 ; 2 uses
  %prol.iter3584.next = add i64 %prol.iter3584, 1 ; 2 uses
  %prol.iter3584.cmp.not = icmp eq i64 %prol.iter3584.next, %xtraiter3582
  br i1 %prol.iter3584.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i652.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i652.prol, !llvm.loop !273

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i652.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i652.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i652.preheader3528
  %.05.i.i.i.i.i.i.i.i.i.i.i.i653.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i653.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i652.preheader3528 ], [ %i.abh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i652.prol ]
  %i.abi = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i653.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i644
  %i.abj = icmp ugt i64 %i.abi, -4
  br i1 %i.abj, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i645, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i652

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i652:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i652.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i652
  %.05.i.i.i.i.i.i.i.i.i.i.i.i653 = phi i64 [ %i.abz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i652 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i653.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i652.prol.loopexit ] ; 6 uses
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %i.aaj, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i653
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %i.aac, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i653
  %i.abm = load i32, ptr %i.abl, align 4, !tbaa !43
  store i32 %i.abm, ptr %i.abk, align 4, !tbaa !43
  %i.abn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i653, 1 ; 2 uses
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %i.aaj, i64 %i.abn
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.aac, i64 %i.abn
  %i.abq = load i32, ptr %i.abp, align 4, !tbaa !43
  store i32 %i.abq, ptr %i.abo, align 4, !tbaa !43
  %i.abr = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i653, 2 ; 2 uses
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.aaj, i64 %i.abr
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %i.aac, i64 %i.abr
  %i.abu = load i32, ptr %i.abt, align 4, !tbaa !43
  store i32 %i.abu, ptr %i.abs, align 4, !tbaa !43
  %i.abv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i653, 3 ; 2 uses
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %i.aaj, i64 %i.abv
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %i.aac, i64 %i.abv
  %i.aby = load i32, ptr %i.abx, align 4, !tbaa !43
  store i32 %i.aby, ptr %i.abw, align 4, !tbaa !43
  %i.abz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i653, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i654.3 = icmp eq i64 %i.abz, %.0.i.i.i.i.i.i.i.i.i.i.i.i644
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i654.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i645, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i652, !llvm.loop !274

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i645: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i652.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i652, %middle.block2868, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i643
  %i.aca = icmp sgt i64 %i.aaq, 3
  br i1 %i.aca, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i650, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i646

._crit_edge.i.i.i.i.i.i.i.i.i.i.i646:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i650, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i645
  %i.acb = icmp slt i64 %i.aat, %i.aae
  br i1 %i.acb, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i647.preheader, label %.loopexit1961

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i647.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i646
  %i.acc = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i644, %i.aas
  %i.acd = sub i64 %i.aae, %i.acc                 ; 3 uses
  %min.iters.check2874 = icmp ult i64 %i.acd, 16
  br i1 %min.iters.check2874, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i647.preheader3527, label %vector.memcheck2875

vector.memcheck2875:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i647.preheader
  %i.ace = add i64 %i.aai, %i.sk
  %i.acf = shl i64 %i.ace, 2
  %i.acg = add i64 %i.acf, %i.aag
  %i.ach = sub i64 %i.aad, %i.acg
  %diff.check2876 = icmp ugt i64 %i.ach, -32
  br i1 %diff.check2876, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i647.preheader3527, label %vector.ph2877

vector.ph2877:                                    ; preds = %vector.memcheck2875
  %n.vec2878 = and i64 %i.acd, -8                 ; 3 uses
  %i.aci = add i64 %i.aat, %n.vec2878
  br label %vector.body2879

vector.body2879:                                  ; preds = %vector.body2879, %vector.ph2877
  %index2880 = phi i64 [ 0, %vector.ph2877 ], [ %index.next2883, %vector.body2879 ] ; 2 uses
  %i.acj = add i64 %i.aat, %index2880             ; 2 uses
  %i.ack = getelementptr inbounds [4 x i8], ptr %i.aaj, i64 %i.acj ; 2 uses
  %i.acl = getelementptr inbounds [4 x i8], ptr %i.aac, i64 %i.acj ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 16
  %wide.load2881 = load <4 x i32>, ptr %i.acl, align 4, !tbaa !43
  %wide.load2882 = load <4 x i32>, ptr %i.acm, align 4, !tbaa !43
  %i.acn = getelementptr inbounds nuw i8, ptr %i.ack, i64 16
  store <4 x i32> %wide.load2881, ptr %i.ack, align 4, !tbaa !43
  store <4 x i32> %wide.load2882, ptr %i.acn, align 4, !tbaa !43
  %index.next2883 = add nuw i64 %index2880, 8     ; 2 uses
  %i.aco = icmp eq i64 %index.next2883, %n.vec2878
  br i1 %i.aco, label %middle.block2884, label %vector.body2879, !llvm.loop !275

middle.block2884:                                 ; preds = %vector.body2879
  %cmp.n2885 = icmp eq i64 %i.acd, %n.vec2878
  br i1 %cmp.n2885, label %.loopexit1961, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i647.preheader3527

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i647.preheader3527: ; preds = %vector.memcheck2875, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i647.preheader, %middle.block2884
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i648.ph = phi i64 [ %i.aat, %vector.memcheck2875 ], [ %i.aat, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i647.preheader ], [ %i.aci, %middle.block2884 ] ; 4 uses
  %i.acp = sub i64 %i.aae, %.05.i18.i.i.i.i.i.i.i.i.i.i.i648.ph
  %xtraiter3585 = and i64 %i.acp, 3               ; 2 uses
  %lcmp.mod3586.not = icmp eq i64 %xtraiter3585, 0
  br i1 %lcmp.mod3586.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i647.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i647.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i647.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i647.preheader3527, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i647.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i648.prol = phi i64 [ %i.act, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i647.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i648.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i647.preheader3527 ] ; 3 uses
  %prol.iter3587 = phi i64 [ %prol.iter3587.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i647.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i647.preheader3527 ]
  %i.acq = getelementptr inbounds [4 x i8], ptr %i.aaj, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i648.prol
  %i.acr = getelementptr inbounds [4 x i8], ptr %i.aac, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i648.prol
  %i.acs = load i32, ptr %i.acr, align 4, !tbaa !43
  store i32 %i.acs, ptr %i.acq, align 4, !tbaa !43
  %i.act = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i648.prol, 1 ; 2 uses
  %prol.iter3587.next = add i64 %prol.iter3587, 1 ; 2 uses
  %prol.iter3587.cmp.not = icmp eq i64 %prol.iter3587.next, %xtraiter3585
  br i1 %prol.iter3587.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i647.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i647.prol, !llvm.loop !276

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i647.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i647.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i647.preheader3527
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i648.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i648.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i647.preheader3527 ], [ %i.act, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i647.prol ]
  %i.acu = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i648.ph, %i.aae
  %i.acv = icmp ugt i64 %i.acu, -4
  br i1 %i.acv, label %.loopexit1961, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i647

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i647:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i647.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i647
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i648 = phi i64 [ %i.adl, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i647 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i648.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i647.prol.loopexit ] ; 6 uses
  %i.acw = getelementptr inbounds [4 x i8], ptr %i.aaj, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i648
  %i.acx = getelementptr inbounds [4 x i8], ptr %i.aac, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i648
  %i.acy = load i32, ptr %i.acx, align 4, !tbaa !43
  store i32 %i.acy, ptr %i.acw, align 4, !tbaa !43
  %i.acz = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i648, 1 ; 2 uses
  %i.ada = getelementptr inbounds [4 x i8], ptr %i.aaj, i64 %i.acz
  %i.adb = getelementptr inbounds [4 x i8], ptr %i.aac, i64 %i.acz
  %i.adc = load i32, ptr %i.adb, align 4, !tbaa !43
  store i32 %i.adc, ptr %i.ada, align 4, !tbaa !43
  %i.add = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i648, 2 ; 2 uses
  %i.ade = getelementptr inbounds [4 x i8], ptr %i.aaj, i64 %i.add
  %i.adf = getelementptr inbounds [4 x i8], ptr %i.aac, i64 %i.add
  %i.adg = load i32, ptr %i.adf, align 4, !tbaa !43
  store i32 %i.adg, ptr %i.ade, align 4, !tbaa !43
  %i.adh = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i648, 3 ; 2 uses
  %i.adi = getelementptr inbounds [4 x i8], ptr %i.aaj, i64 %i.adh
  %i.adj = getelementptr inbounds [4 x i8], ptr %i.aac, i64 %i.adh
  %i.adk = load i32, ptr %i.adj, align 4, !tbaa !43
  store i32 %i.adk, ptr %i.adi, align 4, !tbaa !43
  %i.adl = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i648, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i649.3 = icmp eq i64 %i.adl, %i.aae
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i649.3, label %.loopexit1961, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i647, !llvm.loop !277

.lr.ph.i.i.i.i.i.i.i.i.i.i.i650:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i645, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i650
  %.021.i.i.i.i.i.i.i.i.i.i.i651 = phi i64 [ %i.adp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i650 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i644, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i645 ] ; 3 uses
  %i.adm = getelementptr inbounds [4 x i8], ptr %i.aaj, i64 %.021.i.i.i.i.i.i.i.i.i.i.i651
  %i.adn = getelementptr inbounds [4 x i8], ptr %i.aac, i64 %.021.i.i.i.i.i.i.i.i.i.i.i651
  %i.ado = load <2 x i64>, ptr %i.adn, align 1, !tbaa !48
  store <2 x i64> %i.ado, ptr %i.adm, align 16, !tbaa !48
  %i.adp = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i651, 4 ; 2 uses
  %i.adq = icmp slt i64 %i.adp, %i.aat
  br i1 %i.adq, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i650, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i646, !llvm.loop !201

.loopexit1961:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i647.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i647, %middle.block2884, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i646
  %i.adr = load ptr, ptr %1, align 8, !tbaa !22, !noalias !469 ; 14 uses
  %i.ads = ptrtoaddr ptr %i.adr to i64            ; 2 uses
  %i.adt = load i64, ptr %i.e, align 8, !tbaa !21, !noalias !469 ; 8 uses
  %i.adu = add nsw i64 %i.wq, %i.sk               ; 5 uses
  %i.adv = load ptr, ptr %26, align 8, !tbaa !24, !noalias !470 ; 2 uses
  %i.adw = ptrtoaddr ptr %i.adv to i64            ; 2 uses
  %i.adx = getelementptr inbounds [4 x i8], ptr %i.adv, i64 %i.adu ; 14 uses
  %i.ady = ptrtoint ptr %i.adx to i64             ; 2 uses
  %i.adz = and i64 %i.ady, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i661 = icmp eq i64 %i.adz, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i661, label %bb.q, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i662

bb.q:                                             ; preds = %.loopexit1961
  %i.aea = lshr exact i64 %i.ady, 2
  %i.aeb = sub nsw i64 0, %i.aea
  %i.aec = and i64 %i.aeb, 3
  %i.aed = call i64 @llvm.smin.i64(i64 %i.aec, i64 %i.adt)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i662

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i662: ; preds = %bb.q, %.loopexit1961
  %.0.i.i.i.i.i.i.i.i.i.i.i.i663 = phi i64 [ %i.aed, %bb.q ], [ %i.adt, %.loopexit1961 ] ; 11 uses
  %i.aee = sub nsw i64 %i.adt, %.0.i.i.i.i.i.i.i.i.i.i.i.i663 ; 2 uses
  %i.aef = sdiv i64 %i.aee, 4
  %i.aeg = shl nsw i64 %i.aef, 2                  ; 2 uses
  %i.aeh = add nsw i64 %i.aeg, %.0.i.i.i.i.i.i.i.i.i.i.i.i663 ; 6 uses
  %i.aei = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i663, 0
  br i1 %i.aei, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i671.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i664

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i671.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i662
  %min.iters.check2890 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i663, 16
  br i1 %min.iters.check2890, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i671.preheader3526, label %vector.memcheck2891

vector.memcheck2891:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i671.preheader
  %i.aej = shl nsw i64 %i.adu, 2
  %i.aek = add i64 %i.aej, %i.adw
  %i.ael = sub i64 %i.ads, %i.aek
  %diff.check2892 = icmp ugt i64 %i.ael, -32
  br i1 %diff.check2892, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i671.preheader3526, label %vector.ph2893

vector.ph2893:                                    ; preds = %vector.memcheck2891
  %n.vec2894 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i663, 9223372036854775800 ; 3 uses
  br label %vector.body2895

vector.body2895:                                  ; preds = %vector.body2895, %vector.ph2893
  %index2896 = phi i64 [ 0, %vector.ph2893 ], [ %index.next2899, %vector.body2895 ] ; 3 uses
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.adx, i64 %index2896 ; 2 uses
  %i.aen = getelementptr inbounds nuw [4 x i8], ptr %i.adr, i64 %index2896 ; 2 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 16
  %wide.load2897 = load <4 x i32>, ptr %i.aen, align 4, !tbaa !43
  %wide.load2898 = load <4 x i32>, ptr %i.aeo, align 4, !tbaa !43
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aem, i64 16
  store <4 x i32> %wide.load2897, ptr %i.aem, align 4, !tbaa !43
  store <4 x i32> %wide.load2898, ptr %i.aep, align 4, !tbaa !43
  %index.next2899 = add nuw i64 %index2896, 8     ; 2 uses
  %i.aeq = icmp eq i64 %index.next2899, %n.vec2894
  br i1 %i.aeq, label %middle.block2900, label %vector.body2895, !llvm.loop !282

middle.block2900:                                 ; preds = %vector.body2895
  %cmp.n2901 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i663, %n.vec2894
  br i1 %cmp.n2901, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i664, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i671.preheader3526

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i671.preheader3526:  ; preds = %vector.memcheck2891, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i671.preheader, %middle.block2900
  %.05.i.i.i.i.i.i.i.i.i.i.i.i672.ph = phi i64 [ 0, %vector.memcheck2891 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i671.preheader ], [ %n.vec2894, %middle.block2900 ] ; 3 uses
  %xtraiter3588 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i663, 3 ; 2 uses
  %lcmp.mod3589.not = icmp eq i64 %xtraiter3588, 0
  br i1 %lcmp.mod3589.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i671.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i671.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i671.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i671.preheader3526, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i671.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i672.prol = phi i64 [ %i.aeu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i671.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i672.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i671.preheader3526 ] ; 3 uses
  %prol.iter3590 = phi i64 [ %prol.iter3590.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i671.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i671.preheader3526 ]
  %i.aer = getelementptr inbounds nuw [4 x i8], ptr %i.adx, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i672.prol
  %i.aes = getelementptr inbounds nuw [4 x i8], ptr %i.adr, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i672.prol
  %i.aet = load i32, ptr %i.aes, align 4, !tbaa !43
  store i32 %i.aet, ptr %i.aer, align 4, !tbaa !43
  %i.aeu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i672.prol, 1 ; 2 uses
  %prol.iter3590.next = add i64 %prol.iter3590, 1 ; 2 uses
  %prol.iter3590.cmp.not = icmp eq i64 %prol.iter3590.next, %xtraiter3588
  br i1 %prol.iter3590.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i671.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i671.prol, !llvm.loop !283

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i671.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i671.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i671.preheader3526
  %.05.i.i.i.i.i.i.i.i.i.i.i.i672.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i672.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i671.preheader3526 ], [ %i.aeu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i671.prol ]
  %i.aev = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i672.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i663
  %i.aew = icmp ugt i64 %i.aev, -4
  br i1 %i.aew, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i664, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i671

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i671:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i671.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i671
  %.05.i.i.i.i.i.i.i.i.i.i.i.i672 = phi i64 [ %i.afm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i671 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i672.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i671.prol.loopexit ] ; 6 uses
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %i.adx, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i672
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %i.adr, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i672
  %i.aez = load i32, ptr %i.aey, align 4, !tbaa !43
  store i32 %i.aez, ptr %i.aex, align 4, !tbaa !43
  %i.afa = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i672, 1 ; 2 uses
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %i.adx, i64 %i.afa
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %i.adr, i64 %i.afa
  %i.afd = load i32, ptr %i.afc, align 4, !tbaa !43
  store i32 %i.afd, ptr %i.afb, align 4, !tbaa !43
  %i.afe = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i672, 2 ; 2 uses
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.adx, i64 %i.afe
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %i.adr, i64 %i.afe
  %i.afh = load i32, ptr %i.afg, align 4, !tbaa !43
  store i32 %i.afh, ptr %i.aff, align 4, !tbaa !43
  %i.afi = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i672, 3 ; 2 uses
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %i.adx, i64 %i.afi
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %i.adr, i64 %i.afi
  %i.afl = load i32, ptr %i.afk, align 4, !tbaa !43
  store i32 %i.afl, ptr %i.afj, align 4, !tbaa !43
  %i.afm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i672, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i673.3 = icmp eq i64 %i.afm, %.0.i.i.i.i.i.i.i.i.i.i.i.i663
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i673.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i664, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i671, !llvm.loop !284

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i664: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i671.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i671, %middle.block2900, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i662
  %i.afn = icmp sgt i64 %i.aee, 3
  br i1 %i.afn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i669, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i665

._crit_edge.i.i.i.i.i.i.i.i.i.i.i665:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i669, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i664
  %i.afo = icmp slt i64 %i.aeh, %i.adt
  br i1 %i.afo, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i666.preheader, label %.loopexit1960

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i666.preheader:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i665
  %i.afp = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i663, %i.aeg
  %i.afq = sub i64 %i.adt, %i.afp                 ; 3 uses
  %min.iters.check2906 = icmp ult i64 %i.afq, 16
  br i1 %min.iters.check2906, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i666.preheader3525, label %vector.memcheck2907

vector.memcheck2907:                              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i666.preheader
  %i.afr = shl nsw i64 %i.adu, 2
  %i.afs = add i64 %i.afr, %i.adw
  %i.aft = sub i64 %i.ads, %i.afs
  %diff.check2908 = icmp ugt i64 %i.aft, -32
  br i1 %diff.check2908, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i666.preheader3525, label %vector.ph2909

vector.ph2909:                                    ; preds = %vector.memcheck2907
  %n.vec2910 = and i64 %i.afq, -8                 ; 3 uses
  %i.afu = add i64 %i.aeh, %n.vec2910
  br label %vector.body2911

vector.body2911:                                  ; preds = %vector.body2911, %vector.ph2909
  %index2912 = phi i64 [ 0, %vector.ph2909 ], [ %index.next2915, %vector.body2911 ] ; 2 uses
  %i.afv = add i64 %i.aeh, %index2912             ; 2 uses
  %i.afw = getelementptr inbounds [4 x i8], ptr %i.adx, i64 %i.afv ; 2 uses
  %i.afx = getelementptr inbounds [4 x i8], ptr %i.adr, i64 %i.afv ; 2 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 16
  %wide.load2913 = load <4 x i32>, ptr %i.afx, align 4, !tbaa !43
  %wide.load2914 = load <4 x i32>, ptr %i.afy, align 4, !tbaa !43
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afw, i64 16
  store <4 x i32> %wide.load2913, ptr %i.afw, align 4, !tbaa !43
  store <4 x i32> %wide.load2914, ptr %i.afz, align 4, !tbaa !43
  %index.next2915 = add nuw i64 %index2912, 8     ; 2 uses
  %i.aga = icmp eq i64 %index.next2915, %n.vec2910
  br i1 %i.aga, label %middle.block2916, label %vector.body2911, !llvm.loop !285

middle.block2916:                                 ; preds = %vector.body2911
  %cmp.n2917 = icmp eq i64 %i.afq, %n.vec2910
  br i1 %cmp.n2917, label %.loopexit1960, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i666.preheader3525

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i666.preheader3525: ; preds = %vector.memcheck2907, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i666.preheader, %middle.block2916
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i667.ph = phi i64 [ %i.aeh, %vector.memcheck2907 ], [ %i.aeh, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i666.preheader ], [ %i.afu, %middle.block2916 ] ; 4 uses
  %i.agb = sub i64 %i.adt, %.05.i18.i.i.i.i.i.i.i.i.i.i.i667.ph
  %xtraiter3591 = and i64 %i.agb, 3               ; 2 uses
  %lcmp.mod3592.not = icmp eq i64 %xtraiter3591, 0
  br i1 %lcmp.mod3592.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i666.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i666.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i666.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i666.preheader3525, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i666.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i667.prol = phi i64 [ %i.agf, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i666.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i667.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i666.preheader3525 ] ; 3 uses
  %prol.iter3593 = phi i64 [ %prol.iter3593.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i666.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i666.preheader3525 ]
  %i.agc = getelementptr inbounds [4 x i8], ptr %i.adx, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i667.prol
  %i.agd = getelementptr inbounds [4 x i8], ptr %i.adr, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i667.prol
  %i.age = load i32, ptr %i.agd, align 4, !tbaa !43
  store i32 %i.age, ptr %i.agc, align 4, !tbaa !43
  %i.agf = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i667.prol, 1 ; 2 uses
  %prol.iter3593.next = add i64 %prol.iter3593, 1 ; 2 uses
  %prol.iter3593.cmp.not = icmp eq i64 %prol.iter3593.next, %xtraiter3591
  br i1 %prol.iter3593.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i666.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i666.prol, !llvm.loop !286

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i666.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i666.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i666.preheader3525
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i667.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i667.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i666.preheader3525 ], [ %i.agf, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i666.prol ]
  %i.agg = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i667.ph, %i.adt
  %i.agh = icmp ugt i64 %i.agg, -4
  br i1 %i.agh, label %.loopexit1960, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i666

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i666:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i666.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i666
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i667 = phi i64 [ %i.agx, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i666 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i667.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i666.prol.loopexit ] ; 6 uses
  %i.agi = getelementptr inbounds [4 x i8], ptr %i.adx, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i667
  %i.agj = getelementptr inbounds [4 x i8], ptr %i.adr, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i667
  %i.agk = load i32, ptr %i.agj, align 4, !tbaa !43
  store i32 %i.agk, ptr %i.agi, align 4, !tbaa !43
  %i.agl = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i667, 1 ; 2 uses
  %i.agm = getelementptr inbounds [4 x i8], ptr %i.adx, i64 %i.agl
  %i.agn = getelementptr inbounds [4 x i8], ptr %i.adr, i64 %i.agl
  %i.ago = load i32, ptr %i.agn, align 4, !tbaa !43
  store i32 %i.ago, ptr %i.agm, align 4, !tbaa !43
  %i.agp = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i667, 2 ; 2 uses
  %i.agq = getelementptr inbounds [4 x i8], ptr %i.adx, i64 %i.agp
  %i.agr = getelementptr inbounds [4 x i8], ptr %i.adr, i64 %i.agp
  %i.ags = load i32, ptr %i.agr, align 4, !tbaa !43
  store i32 %i.ags, ptr %i.agq, align 4, !tbaa !43
  %i.agt = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i667, 3 ; 2 uses
  %i.agu = getelementptr inbounds [4 x i8], ptr %i.adx, i64 %i.agt
  %i.agv = getelementptr inbounds [4 x i8], ptr %i.adr, i64 %i.agt
  %i.agw = load i32, ptr %i.agv, align 4, !tbaa !43
  store i32 %i.agw, ptr %i.agu, align 4, !tbaa !43
  %i.agx = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i667, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i668.3 = icmp eq i64 %i.agx, %i.adt
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i668.3, label %.loopexit1960, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i666, !llvm.loop !287

.lr.ph.i.i.i.i.i.i.i.i.i.i.i669:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i664, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i669
  %.021.i.i.i.i.i.i.i.i.i.i.i670 = phi i64 [ %i.ahb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i669 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i663, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i664 ] ; 3 uses
  %i.agy = getelementptr inbounds [4 x i8], ptr %i.adx, i64 %.021.i.i.i.i.i.i.i.i.i.i.i670
  %i.agz = getelementptr inbounds [4 x i8], ptr %i.adr, i64 %.021.i.i.i.i.i.i.i.i.i.i.i670
  %i.aha = load <2 x i64>, ptr %i.agz, align 1, !tbaa !48
  store <2 x i64> %i.aha, ptr %i.agy, align 16, !tbaa !48
  %i.ahb = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i670, 4 ; 2 uses
  %i.ahc = icmp slt i64 %i.ahb, %i.aeh
  br i1 %i.ahc, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i669, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i665, !llvm.loop !201

.loopexit1960:                                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i666.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i666, %middle.block2916, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i665
  %i.ahd = load ptr, ptr %1, align 8, !tbaa !22, !noalias !471 ; 2 uses
  %i.ahe = ptrtoaddr ptr %i.ahd to i64            ; 2 uses
  %i.ahf = load i64, ptr %i.e, align 8, !tbaa !21, !noalias !471 ; 11 uses
  %i.ahg = getelementptr inbounds [4 x i8], ptr %i.ahd, i64 %i.ahf ; 13 uses
  %i.ahh = load ptr, ptr %26, align 8, !tbaa !24, !noalias !472 ; 2 uses
  %i.ahi = ptrtoaddr ptr %i.ahh to i64            ; 2 uses
  %i.ahj = getelementptr inbounds [4 x i8], ptr %i.ahh, i64 %i.adu
  %i.ahk = load i64, ptr %i.sn, align 8, !tbaa !25, !noalias !472 ; 3 uses
  %i.ahl = getelementptr inbounds [4 x i8], ptr %i.ahj, i64 %i.ahk ; 14 uses
  %i.ahm = ptrtoint ptr %i.ahl to i64             ; 2 uses
  %i.ahn = and i64 %i.ahm, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i680 = icmp eq i64 %i.ahn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i680, label %bb.r, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i681

bb.r:                                             ; preds = %.loopexit1960
  %i.aho = lshr exact i64 %i.ahm, 2
  %i.ahp = sub nsw i64 0, %i.aho
  %i.ahq = and i64 %i.ahp, 3
  %i.ahr = call i64 @llvm.smin.i64(i64 %i.ahq, i64 %i.ahf)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i681

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i681: ; preds = %bb.r, %.loopexit1960
  %.0.i.i.i.i.i.i.i.i.i.i.i.i682 = phi i64 [ %i.ahr, %bb.r ], [ %i.ahf, %.loopexit1960 ] ; 11 uses
  %i.ahs = sub nsw i64 %i.ahf, %.0.i.i.i.i.i.i.i.i.i.i.i.i682 ; 2 uses
  %i.aht = sdiv i64 %i.ahs, 4
  %i.ahu = shl nsw i64 %i.aht, 2                  ; 2 uses
  %i.ahv = add nsw i64 %i.ahu, %.0.i.i.i.i.i.i.i.i.i.i.i.i682 ; 6 uses
  %i.ahw = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i682, 0
  br i1 %i.ahw, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i690.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i683

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i690.preheader:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i681
  %min.iters.check2922 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i682, 24
  br i1 %min.iters.check2922, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i690.preheader3524, label %vector.memcheck2923

vector.memcheck2923:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i690.preheader
  %i.ahx = shl i64 %i.ahf, 2
  %i.ahy = add i64 %i.ahk, %i.adu
  %i.ahz = shl i64 %i.ahy, 2
  %i.aia = add i64 %i.ahz, %i.ahi
  %i.aib = add i64 %i.ahx, %i.ahe
  %i.aic = sub i64 %i.aib, %i.aia
  %diff.check2924 = icmp ugt i64 %i.aic, -32
  br i1 %diff.check2924, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i690.preheader3524, label %vector.ph2925

vector.ph2925:                                    ; preds = %vector.memcheck2923
  %n.vec2926 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i682, 9223372036854775800 ; 3 uses
  br label %vector.body2927

vector.body2927:                                  ; preds = %vector.body2927, %vector.ph2925
  %index2928 = phi i64 [ 0, %vector.ph2925 ], [ %index.next2931, %vector.body2927 ] ; 3 uses
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr %i.ahl, i64 %index2928 ; 2 uses
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %index2928 ; 2 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 16
  %wide.load2929 = load <4 x i32>, ptr %i.aie, align 4, !tbaa !43
  %wide.load2930 = load <4 x i32>, ptr %i.aif, align 4, !tbaa !43
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aid, i64 16
  store <4 x i32> %wide.load2929, ptr %i.aid, align 4, !tbaa !43
  store <4 x i32> %wide.load2930, ptr %i.aig, align 4, !tbaa !43
  %index.next2931 = add nuw i64 %index2928, 8     ; 2 uses
  %i.aih = icmp eq i64 %index.next2931, %n.vec2926
  br i1 %i.aih, label %middle.block2932, label %vector.body2927, !llvm.loop !292

middle.block2932:                                 ; preds = %vector.body2927
  %cmp.n2933 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i682, %n.vec2926
  br i1 %cmp.n2933, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i683, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i690.preheader3524

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i690.preheader3524:  ; preds = %vector.memcheck2923, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i690.preheader, %middle.block2932
  %.05.i.i.i.i.i.i.i.i.i.i.i.i691.ph = phi i64 [ 0, %vector.memcheck2923 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i690.preheader ], [ %n.vec2926, %middle.block2932 ] ; 3 uses
  %xtraiter3594 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i682, 3 ; 2 uses
  %lcmp.mod3595.not = icmp eq i64 %xtraiter3594, 0
  br i1 %lcmp.mod3595.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i690.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i690.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i690.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i690.preheader3524, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i690.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i691.prol = phi i64 [ %i.ail, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i690.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i691.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i690.preheader3524 ] ; 3 uses
  %prol.iter3596 = phi i64 [ %prol.iter3596.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i690.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i690.preheader3524 ]
  %i.aii = getelementptr inbounds nuw [4 x i8], ptr %i.ahl, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i691.prol
  %i.aij = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i691.prol
  %i.aik = load i32, ptr %i.aij, align 4, !tbaa !43
  store i32 %i.aik, ptr %i.aii, align 4, !tbaa !43
  %i.ail = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i691.prol, 1 ; 2 uses
  %prol.iter3596.next = add i64 %prol.iter3596, 1 ; 2 uses
  %prol.iter3596.cmp.not = icmp eq i64 %prol.iter3596.next, %xtraiter3594
  br i1 %prol.iter3596.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i690.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i690.prol, !llvm.loop !293

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i690.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i690.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i690.preheader3524
  %.05.i.i.i.i.i.i.i.i.i.i.i.i691.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i691.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i690.preheader3524 ], [ %i.ail, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i690.prol ]
  %i.aim = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i691.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i682
  %i.ain = icmp ugt i64 %i.aim, -4
  br i1 %i.ain, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i683, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i690

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i690:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i690.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i690
  %.05.i.i.i.i.i.i.i.i.i.i.i.i691 = phi i64 [ %i.ajd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i690 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i691.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i690.prol.loopexit ] ; 6 uses
  %i.aio = getelementptr inbounds nuw [4 x i8], ptr %i.ahl, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i691
  %i.aip = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i691
  %i.aiq = load i32, ptr %i.aip, align 4, !tbaa !43
  store i32 %i.aiq, ptr %i.aio, align 4, !tbaa !43
  %i.air = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i691, 1 ; 2 uses
  %i.ais = getelementptr inbounds nuw [4 x i8], ptr %i.ahl, i64 %i.air
  %i.ait = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %i.air
  %i.aiu = load i32, ptr %i.ait, align 4, !tbaa !43
  store i32 %i.aiu, ptr %i.ais, align 4, !tbaa !43
  %i.aiv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i691, 2 ; 2 uses
  %i.aiw = getelementptr inbounds nuw [4 x i8], ptr %i.ahl, i64 %i.aiv
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %i.aiv
  %i.aiy = load i32, ptr %i.aix, align 4, !tbaa !43
  store i32 %i.aiy, ptr %i.aiw, align 4, !tbaa !43
  %i.aiz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i691, 3 ; 2 uses
  %i.aja = getelementptr inbounds nuw [4 x i8], ptr %i.ahl, i64 %i.aiz
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %i.aiz
  %i.ajc = load i32, ptr %i.ajb, align 4, !tbaa !43
end_hunk_1

inline.NumInlined: 17940
inline.NumDeleted: 8729
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 147
loop-unroll.NumUnrolled: 163
begin_hunk_0_@_ZN5Eigen8internal33selfadjoint_matrix_vector_productIdlLi0ELi1ELb0ELb0ELi0EE3runElPKdlS4_Pdd:bb.a
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.0227
  %i.ft = load double, ptr %i.fm, align 8, !tbaa !60
  %i.fu = load double, ptr %i.fs, align 8, !tbaa !60
  %i.fv = fmul double %i.ft, %i.fu
  %i.fw = fadd double %.0136226, %i.fv            ; 2 uses
  %i.fx = add nuw nsw i64 %.0227, 1               ; 2 uses
  %i.fy = icmp slt i64 %i.fx, %0
  br i1 %i.fy, label %.lr.ph229, label %._crit_edge230, !llvm.loop !1651
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEENS1_IdLi1ELi1ELi0ELi1ELi1EEELi1EE6evalToIS2_NS1_IdLi2ELi1ELi0ELi2ELi1EEEEEvRT_RT0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, ptr noundef nonnull align 16 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Block.2210", align 8 ; 10 uses
  %4 = alloca %"class.Eigen::Block.2472", align 8 ; 9 uses
  %5 = alloca %"class.Eigen::Block.2210", align 8 ; 10 uses
  %6 = alloca %"class.Eigen::Block.2472", align 8 ; 9 uses
  %7 = alloca %"class.Eigen::Block.2210", align 8 ; 10 uses
  %8 = alloca %"class.Eigen::Block.2472", align 8 ; 9 uses
  %9 = alloca %"class.Eigen::Block.2210", align 8 ; 10 uses
  %10 = alloca %"class.Eigen::Block.2472", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !146  ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1652, !nonnull !233, !align !1653
  %i.d = icmp eq ptr %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  store double 1.000000e+00, ptr %1, align 16, !tbaa !60
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.e, align 16, !tbaa !60
  %i.f = icmp sgt i64 %i.b, 0
  br i1 %i.f, label %.lr.ph108, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader

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
  br label %bb.c

.preheader:                                       ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit
  %i.af = icmp eq i64 %i.b, 1
  br i1 %i.af, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader, label %.loopexit

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader: ; preds = %bb.b, %.preheader
  %i.ag = sub i64 2, %i.b
  %smax = call i64 @llvm.smax.i64(i64 %i.ag, i64 1)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58

bb.c:                                             ; preds = %.lr.ph108, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit
  %.052.in106 = phi i64 [ %i.b, %.lr.ph108 ], [ %.052107, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit ] ; 5 uses
  %.052107 = add nsw i64 %.052.in106, -1          ; 7 uses
  %i.ah = load i64, ptr %i.g, align 8, !tbaa !147 ; 2 uses
  %i.ai = add i64 %i.ah, %.052107                 ; 7 uses
  %i.aj = sub i64 2, %i.ai                        ; 4 uses
  %i.ak = load i8, ptr %i.h, align 8, !tbaa !144, !range !232, !noundef !233
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ai
  %.idx.i.i.i.i = shl nsw i64 %i.ai, 4
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %.idx.i.i.i.i ; 2 uses
  %i.ao = add nsw i64 %i.ah, %.052.in106          ; 5 uses
  %i.ap = sub nsw i64 2, %i.ao                    ; 2 uses
  %.idx.i.i.i.i.i = shl nsw i64 %.052107, 4       ; 3 uses
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr %i.an, ptr %3, align 8, !tbaa !1645, !alias.scope !1654
  store i64 %i.aj, ptr %i.u, align 8, !tbaa !224, !alias.scope !1654
  store i64 %i.aj, ptr %i.v, align 8, !tbaa !224, !alias.scope !1654
  store ptr %1, ptr %i.w, align 8, !tbaa !140, !alias.scope !1654
  store i64 %i.ai, ptr %i.x, align 8, !tbaa !224, !alias.scope !1654
  store i64 %i.ai, ptr %i.y, align 8, !tbaa !224, !alias.scope !1654
  store i64 2, ptr %i.z, align 8, !tbaa !1657, !alias.scope !1654
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !1660)
  call void @llvm.experimental.noalias.scope.decl(metadata !1663)
  %i.aq = load ptr, ptr %0, align 8, !tbaa !1652, !noalias !1666, !nonnull !233, !align !1653 ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ao
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %.idx.i.i.i.i.i
  store ptr %i.as, ptr %4, align 8, !tbaa !1667, !alias.scope !1666
  store i64 %i.ap, ptr %i.aa, align 8, !tbaa !224, !alias.scope !1666
  store ptr %i.aq, ptr %i.ab, align 8, !tbaa !140, !alias.scope !1666
  store i64 %i.ao, ptr %i.ac, align 8, !tbaa !224, !alias.scope !1666
  store i64 %.052107, ptr %i.ad, align 8, !tbaa !224, !alias.scope !1666
  store i64 2, ptr %i.ae, align 8, !tbaa !1669, !alias.scope !1666
  %i.at = load ptr, ptr %i.t, align 8, !tbaa !1671, !nonnull !233, !align !646
  %i.au = getelementptr inbounds [8 x i8], ptr %i.at, i64 %.052107
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %i.an, ptr %5, align 8, !tbaa !1645, !alias.scope !1672
  store i64 %i.aj, ptr %i.i, align 8, !tbaa !224, !alias.scope !1672
  store i64 %i.aj, ptr %i.j, align 8, !tbaa !224, !alias.scope !1672
  store ptr %1, ptr %i.k, align 8, !tbaa !140, !alias.scope !1672
  store i64 %i.ai, ptr %i.l, align 8, !tbaa !224, !alias.scope !1672
  store i64 %i.ai, ptr %i.m, align 8, !tbaa !224, !alias.scope !1672
  store i64 2, ptr %i.n, align 8, !tbaa !1657, !alias.scope !1672
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  %i.av = load ptr, ptr %0, align 8, !tbaa !1652, !noalias !1681, !nonnull !233, !align !1653 ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.ao
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %.idx.i.i.i.i.i
  store ptr %i.ax, ptr %6, align 8, !tbaa !1667, !alias.scope !1681
  store i64 %i.ap, ptr %i.o, align 8, !tbaa !224, !alias.scope !1681
  store ptr %i.av, ptr %i.p, align 8, !tbaa !140, !alias.scope !1681
  store i64 %i.ao, ptr %i.q, align 8, !tbaa !224, !alias.scope !1681
  store i64 %.052107, ptr %i.r, align 8, !tbaa !224, !alias.scope !1681
  store i64 2, ptr %i.s, align 8, !tbaa !1669, !alias.scope !1681
  %i.ay = load ptr, ptr %i.t, align 8, !tbaa !1671, !nonnull !233, !align !646
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %.052107
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.ba = getelementptr inbounds i8, ptr %1, i64 %.idx.i.i.i.i.i
  %i.bb = sub nsw i64 2, %.052.in106              ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.052.in106 ; 4 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = lshr exact i64 %i.bd, 3
  %i.bf = and i64 %i.be, 1
  %i.bg = call i64 @llvm.smin.i64(i64 %i.bf, i64 %i.bb) ; 7 uses
  %i.bh = sub nsw i64 %i.bb, %i.bg                ; 3 uses
  %i.bi = and i64 %i.bh, -2
  %i.bj = add i64 %i.bi, %i.bg                    ; 2 uses
  %i.bk = icmp sgt i64 %i.bg, 0
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 0, ptr %i.bc, align 8
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bl = icmp sgt i64 %i.bh, 1
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bm = shl nuw i64 %i.bg, 3
  %scevgep.i = getelementptr i8, ptr %i.bc, i64 %i.bm
  %i.bn = add nsw i64 %i.bg, 2
  %smax.i = call i64 @llvm.smax.i64(i64 %i.bj, i64 %i.bn)
  %i.bo = xor i64 %i.bg, -1
  %i.bp = add i64 %smax.i, %i.bo
  %i.bq = shl i64 %i.bp, 3
  %i.br = and i64 %i.bq, -16
  %i.bs = add i64 %i.br, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.bs, i1 false), !tbaa !16
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bt = icmp slt i64 %i.bj, %i.bb
  br i1 %i.bt, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bu = shl i64 %i.bh, 3                        ; 2 uses
  %i.bv = and i64 %i.bu, -16
  %i.bw = shl nuw i64 %i.bg, 3
  %i.bx = getelementptr i8, ptr %i.bc, i64 %i.bv
  %scevgep1.i = getelementptr i8, ptr %i.bx, i64 %i.bw
  %i.by = and i64 %i.bu, 8
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i, i8 0, i64 %i.by, i1 false), !tbaa !60
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i
  %i.bz = icmp samesign ugt i64 %.052.in106, 1
  br i1 %i.bz, label %bb.c, label %.preheader, !llvm.loop !1682

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58: ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68
  %.051109 = phi i64 [ %i.cl, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68 ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader ] ; 4 uses
  %.idx.i.i.i.i56 = shl nuw nsw i64 %.051109, 4
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i.i.i56
  %i.cb = sub nuw nsw i64 1, %.051109             ; 3 uses
  %i.cc = getelementptr [8 x i8], ptr %i.ca, i64 %.051109
  %i.cd = getelementptr i8, ptr %i.cc, i64 8      ; 3 uses
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = lshr exact i64 %i.ce, 3
  %i.cg = and i64 %i.cf, 1                        ; 2 uses
  %i.ch = call i64 @llvm.umin.i64(i64 %i.cg, i64 %i.cb) ; 3 uses
  %i.ci = sub nuw nsw i64 %i.cb, %i.ch
  %.not = icmp eq i64 %i.ch, 0
  br i1 %.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i67

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i67:     ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58
  store i64 0, ptr %i.cd, align 8
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61:            ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i67
  %11 = icmp samesign ult i64 %i.cg, %i.cb
  br i1 %11, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i62, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i62:   ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61
  %i.cj = shl nuw nsw i64 %i.ch, 3
  %scevgep1.i63 = getelementptr i8, ptr %i.cd, i64 %i.cj
  %i.ck = shl nuw nsw i64 %i.ci, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i63, i8 0, i64 %i.ck, i1 false), !tbaa !60
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i62
  %i.cl = add nuw nsw i64 %.051109, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.cl, %smax
  br i1 %exitcond.not, label %.loopexit, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58, !llvm.loop !1683

bb.f:                                             ; preds = %bb.a
  %i.cm = icmp sgt i64 %i.b, 48
  store double 1.000000e+00, ptr %1, align 16, !tbaa !60
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.co, align 8, !tbaa !60
  br i1 %i.cm, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEENS1_IdLi1ELi1ELi0ELi1ELi1EEELi1EE18applyThisOnTheLeftIS2_NS1_IdLi2ELi1ELi0ELi2ELi1EEEEEvRT_RT0_b(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, i1 noundef zeroext true)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.cp = icmp sgt i64 %i.b, 0
  br i1 %i.cp, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.dc = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 48
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.l
  %.0.in103 = phi i64 [ %i.b, %.lr.ph ], [ %.0104, %bb.l ] ; 3 uses
  %.0104 = add nsw i64 %.0.in103, -1              ; 7 uses
  %i.dp = load i64, ptr %i.cq, align 8, !tbaa !147 ; 2 uses
  %i.dq = add i64 %i.dp, %.0104                   ; 7 uses
  %i.dr = sub i64 2, %i.dq                        ; 4 uses
  %i.ds = load i8, ptr %i.cr, align 8, !tbaa !144, !range !232, !noundef !233
  %i.dt = trunc nuw i8 %i.ds to i1
  %i.du = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dq
  %.idx.i.i.i.i69 = shl nsw i64 %i.dq, 4
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 %.idx.i.i.i.i69 ; 2 uses
  %i.dw = add nsw i64 %i.dp, %.0.in103            ; 5 uses
  %i.dx = sub nsw i64 2, %i.dw                    ; 2 uses
  %.idx.i.i.i.i.i70 = shl nsw i64 %.0104, 4       ; 2 uses
  br i1 %i.dt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  store ptr %i.dv, ptr %7, align 8, !tbaa !1645, !alias.scope !1684
  store i64 %i.dr, ptr %i.de, align 8, !tbaa !224, !alias.scope !1684
  store i64 %i.dr, ptr %i.df, align 8, !tbaa !224, !alias.scope !1684
  store ptr %1, ptr %i.dg, align 8, !tbaa !140, !alias.scope !1684
  store i64 %i.dq, ptr %i.dh, align 8, !tbaa !224, !alias.scope !1684
  store i64 %i.dq, ptr %i.di, align 8, !tbaa !224, !alias.scope !1684
  store i64 2, ptr %i.dj, align 8, !tbaa !1657, !alias.scope !1684
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !1687)
  call void @llvm.experimental.noalias.scope.decl(metadata !1690)
  %i.dy = load ptr, ptr %0, align 8, !tbaa !1652, !noalias !1693, !nonnull !233, !align !1653 ; 2 uses
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.dw
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 %.idx.i.i.i.i.i70
  store ptr %i.ea, ptr %8, align 8, !tbaa !1667, !alias.scope !1693
  store i64 %i.dx, ptr %i.dk, align 8, !tbaa !224, !alias.scope !1693
  store ptr %i.dy, ptr %i.dl, align 8, !tbaa !140, !alias.scope !1693
  store i64 %i.dw, ptr %i.dm, align 8, !tbaa !224, !alias.scope !1693
  store i64 %.0104, ptr %i.dn, align 8, !tbaa !224, !alias.scope !1693
  store i64 2, ptr %i.do, align 8, !tbaa !1669, !alias.scope !1693
  %i.eb = load ptr, ptr %i.dd, align 8, !tbaa !1671, !nonnull !233, !align !646
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %.0104
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.ec, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  store ptr %i.dv, ptr %9, align 8, !tbaa !1645, !alias.scope !1694
  store i64 %i.dr, ptr %i.cs, align 8, !tbaa !224, !alias.scope !1694
  store i64 %i.dr, ptr %i.ct, align 8, !tbaa !224, !alias.scope !1694
  store ptr %1, ptr %i.cu, align 8, !tbaa !140, !alias.scope !1694
  store i64 %i.dq, ptr %i.cv, align 8, !tbaa !224, !alias.scope !1694
  store i64 %i.dq, ptr %i.cw, align 8, !tbaa !224, !alias.scope !1694
  store i64 2, ptr %i.cx, align 8, !tbaa !1657, !alias.scope !1694
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !1697)
  call void @llvm.experimental.noalias.scope.decl(metadata !1700)
  %i.ed = load ptr, ptr %0, align 8, !tbaa !1652, !noalias !1703, !nonnull !233, !align !1653 ; 2 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.dw
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 %.idx.i.i.i.i.i70
  store ptr %i.ef, ptr %10, align 8, !tbaa !1667, !alias.scope !1703
  store i64 %i.dx, ptr %i.cy, align 8, !tbaa !224, !alias.scope !1703
  store ptr %i.ed, ptr %i.cz, align 8, !tbaa !140, !alias.scope !1703
  store i64 %i.dw, ptr %i.da, align 8, !tbaa !224, !alias.scope !1703
  store i64 %.0104, ptr %i.db, align 8, !tbaa !224, !alias.scope !1703
  store i64 2, ptr %i.dc, align 8, !tbaa !1669, !alias.scope !1703
  %i.eg = load ptr, ptr %i.dd, align 8, !tbaa !1671, !nonnull !233, !align !646
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %.0104
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.eh, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ei = icmp samesign ugt i64 %.0.in103, 1
  br i1 %i.ei, label %bb.i, label %.loopexit, !llvm.loop !1704

.loopexit:                                        ; preds = %bb.l, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68, %bb.h, %.preheader, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.2701", align 16 ; 17 uses
  %i.a = ptrtoaddr ptr %4 to i64
  %5 = alloca %"struct.Eigen::internal::evaluator.2595", align 8 ; 4 uses
  %6 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.2725", align 8 ; 7 uses
  %7 = alloca %"struct.Eigen::internal::sub_assign_op", align 1 ; 3 uses
  %8 = alloca %"struct.Eigen::internal::evaluator.2591", align 8 ; 11 uses
  %9 = alloca %"struct.Eigen::internal::evaluator.2611", align 8 ; 5 uses
  %10 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.2615", align 8 ; 7 uses
  %11 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %12 = alloca %"class.Eigen::Map.2500", align 8  ; 8 uses
  %13 = alloca %"class.Eigen::Block.2512", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !224  ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  %i.e = load double, ptr %2, align 8, !tbaa !60  ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = fsub double 1.000000e+00, %i.e           ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %0, align 8, !tbaa !1645   ; 8 uses
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = and i64 %i.i, 7
  %.not.i.i.i.i.i.i = icmp eq i64 %i.j, 0
  %i.k = load i64, ptr %i.g, align 8, !tbaa !224  ; 10 uses
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph54.i.i.i.i.i.i, label %.preheader.lr.ph.i.i.i.i.i.i.i

.preheader.lr.ph.i.i.i.i.i.i.i:                   ; preds = %bb.b
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.preheader.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEmLERKd.exit

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %.preheader.lr.ph.i.i.i.i.i.i.i
  %min.iters.check155 = icmp ult i64 %i.k, 4
  br i1 %min.iters.check155, label %.preheader.i.i.i.i.i.i.i.preheader183, label %vector.ph156

vector.ph156:                                     ; preds = %.preheader.i.i.i.i.i.i.i.preheader
  %n.vec157 = and i64 %i.k, 9223372036854775804   ; 3 uses
  %broadcast.splatinsert158 = insertelement <2 x double> poison, double %i.f, i64 0
  %broadcast.splat159 = shufflevector <2 x double> %broadcast.splatinsert158, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph156
  %index161 = phi i64 [ 0, %vector.ph156 ], [ %index.next164, %vector.body160 ] ; 2 uses
  %i.m = getelementptr [8 x i8], ptr %i.h, i64 %index161 ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 16       ; 2 uses
  %wide.load162 = load <2 x double>, ptr %i.m, align 8, !tbaa !60
  %wide.load163 = load <2 x double>, ptr %i.n, align 8, !tbaa !60
  %i.o = fmul <2 x double> %broadcast.splat159, %wide.load162
  %i.p = fmul <2 x double> %broadcast.splat159, %wide.load163
  store <2 x double> %i.o, ptr %i.m, align 8, !tbaa !60
  store <2 x double> %i.p, ptr %i.n, align 8, !tbaa !60
  %index.next164 = add nuw i64 %index161, 4       ; 2 uses
  %i.q = icmp eq i64 %index.next164, %n.vec157
  br i1 %i.q, label %middle.block165, label %vector.body160, !llvm.loop !1705

middle.block165:                                  ; preds = %vector.body160
  %cmp.n166 = icmp eq i64 %i.k, %n.vec157
  br i1 %cmp.n166, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEmLERKd.exit, label %.preheader.i.i.i.i.i.i.i.preheader183

.preheader.i.i.i.i.i.i.i.preheader183:            ; preds = %.preheader.i.i.i.i.i.i.i.preheader, %middle.block165
  %.09.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader ], [ %n.vec157, %middle.block165 ]
  br label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i.preheader183, %.preheader.i.i.i.i.i.i.i
end_hunk_0

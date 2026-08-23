Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/directed_edge_orientations?download=true
inline.NumInlined: 9441
inline.NumDeleted: 5126
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_ZN5Eigen8internal22qr_preconditioner_implINS_6MatrixIdLi2ELi3ELi0ELi2ELi3EEELi2ELi0ELb1EE3runERNS_9JacobiSVDIS3_Li2EEERKS3_:bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEENS1_IdLi2ELi1ELi0ELi2ELi1EEELi1EE6evalToINS1_IdLi3ELi3ELi0ELi3ELi3EEENS1_IdLi1ELi3ELi1ELi1ELi3EEEEEvRT_RT0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Block.1019", align 8 ; 10 uses
  %4 = alloca %"class.Eigen::Block.1030", align 8 ; 9 uses
  %5 = alloca %"class.Eigen::Block.1019", align 8 ; 10 uses
  %6 = alloca %"class.Eigen::Block.1030", align 8 ; 9 uses
  %7 = alloca %"class.Eigen::Block.1019", align 8 ; 10 uses
  %8 = alloca %"class.Eigen::Block.1030", align 8 ; 9 uses
  %9 = alloca %"class.Eigen::Block.1019", align 8 ; 10 uses
  %10 = alloca %"class.Eigen::Block.1030", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !119  ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !124, !nonnull !94, !align !125
  %i.d = icmp eq ptr %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  store double 1.000000e+00, ptr %1, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  store double 1.000000e+00, ptr %i.e, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.f, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = icmp sgt i64 %i.b, 0
  br i1 %i.h, label %.lr.ph108, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader

.lr.ph108:                                        ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %bb.c

.preheader:                                       ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit
  %i.ah = icmp slt i64 %i.b, 3
  br i1 %i.ah, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader, label %.loopexit

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader: ; preds = %bb.b, %.preheader
  %i.ai = sub i64 3, %i.b
  %smax = call i64 @llvm.smax.i64(i64 %i.ai, i64 1)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58

bb.c:                                             ; preds = %.lr.ph108, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit
  %.052.in106 = phi i64 [ %i.b, %.lr.ph108 ], [ %.052107, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit ] ; 5 uses
  %.052107 = add nsw i64 %.052.in106, -1          ; 7 uses
  %i.aj = load i64, ptr %i.i, align 8, !tbaa !120 ; 2 uses
  %i.ak = add i64 %i.aj, %.052107                 ; 7 uses
  %i.al = sub i64 3, %i.ak                        ; 4 uses
  %i.am = load i8, ptr %i.j, align 8, !tbaa !117, !range !93, !noundef !94
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ak
  %.idx.i.i.i.i = mul nsw i64 %i.ak, 24
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %.idx.i.i.i.i ; 2 uses
  %i.aq = add nsw i64 %i.aj, %.052.in106          ; 5 uses
  %i.ar = sub nsw i64 3, %i.aq                    ; 2 uses
  %.idx.i.i.i.i.i = mul nsw i64 %.052107, 24      ; 3 uses
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %i.ap, ptr %3, align 8, !tbaa !126, !alias.scope !129
  store i64 %i.al, ptr %i.w, align 8, !tbaa !132, !alias.scope !129
  store i64 %i.al, ptr %i.x, align 8, !tbaa !132, !alias.scope !129
  store ptr %1, ptr %i.y, align 8, !tbaa !133, !alias.scope !129
  store i64 %i.ak, ptr %i.z, align 8, !tbaa !132, !alias.scope !129
  store i64 %i.ak, ptr %i.aa, align 8, !tbaa !132, !alias.scope !129
  store i64 3, ptr %i.ab, align 8, !tbaa !135, !alias.scope !129
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !138)
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.as = load ptr, ptr %0, align 8, !tbaa !124, !noalias !144, !nonnull !94, !align !125 ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.aq
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %.idx.i.i.i.i.i
  store ptr %i.au, ptr %4, align 8, !tbaa !145, !alias.scope !144
  store i64 %i.ar, ptr %i.ac, align 8, !tbaa !132, !alias.scope !144
  store ptr %i.as, ptr %i.ad, align 8, !tbaa !110, !alias.scope !144
  store i64 %i.aq, ptr %i.ae, align 8, !tbaa !132, !alias.scope !144
  store i64 %.052107, ptr %i.af, align 8, !tbaa !132, !alias.scope !144
  store i64 3, ptr %i.ag, align 8, !tbaa !148, !alias.scope !144
  %i.av = load ptr, ptr %i.v, align 8, !tbaa !150, !nonnull !94, !align !125
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.av, i64 %.052107
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %i.ap, ptr %5, align 8, !tbaa !126, !alias.scope !151
  store i64 %i.al, ptr %i.k, align 8, !tbaa !132, !alias.scope !151
  store i64 %i.al, ptr %i.l, align 8, !tbaa !132, !alias.scope !151
  store ptr %1, ptr %i.m, align 8, !tbaa !133, !alias.scope !151
  store i64 %i.ak, ptr %i.n, align 8, !tbaa !132, !alias.scope !151
  store i64 %i.ak, ptr %i.o, align 8, !tbaa !132, !alias.scope !151
  store i64 3, ptr %i.p, align 8, !tbaa !135, !alias.scope !151
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.ax = load ptr, ptr %0, align 8, !tbaa !124, !noalias !160, !nonnull !94, !align !125 ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.aq
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %.idx.i.i.i.i.i
  store ptr %i.az, ptr %6, align 8, !tbaa !145, !alias.scope !160
  store i64 %i.ar, ptr %i.q, align 8, !tbaa !132, !alias.scope !160
  store ptr %i.ax, ptr %i.r, align 8, !tbaa !110, !alias.scope !160
  store i64 %i.aq, ptr %i.s, align 8, !tbaa !132, !alias.scope !160
  store i64 %.052107, ptr %i.t, align 8, !tbaa !132, !alias.scope !160
  store i64 3, ptr %i.u, align 8, !tbaa !148, !alias.scope !160
  %i.ba = load ptr, ptr %i.v, align 8, !tbaa !150, !nonnull !94, !align !125
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %.052107
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.bc = getelementptr inbounds i8, ptr %1, i64 %.idx.i.i.i.i.i
  %i.bd = sub nsw i64 3, %.052.in106              ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.052.in106 ; 4 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = lshr exact i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1
  %i.bi = call i64 @llvm.smin.i64(i64 %i.bh, i64 %i.bd) ; 7 uses
  %i.bj = sub nsw i64 %i.bd, %i.bi                ; 3 uses
  %i.bk = and i64 %i.bj, -2
  %i.bl = add i64 %i.bk, %i.bi                    ; 2 uses
  %i.bm = icmp sgt i64 %i.bi, 0
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 0, ptr %i.be, align 8
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bn = icmp sgt i64 %i.bj, 1
  br i1 %i.bn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bo = shl nuw i64 %i.bi, 3
  %scevgep.i = getelementptr i8, ptr %i.be, i64 %i.bo
  %i.bp = add nsw i64 %i.bi, 2
  %smax.i = call i64 @llvm.smax.i64(i64 %i.bl, i64 %i.bp)
  %i.bq = xor i64 %i.bi, -1
  %i.br = add i64 %smax.i, %i.bq
  %i.bs = shl i64 %i.br, 3
  %i.bt = and i64 %i.bs, -16
  %i.bu = add i64 %i.bt, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.bu, i1 false), !tbaa !29
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bv = icmp slt i64 %i.bl, %i.bd
  br i1 %i.bv, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bw = shl i64 %i.bj, 3                        ; 2 uses
  %i.bx = and i64 %i.bw, -16
  %i.by = shl nuw i64 %i.bi, 3
  %i.bz = getelementptr i8, ptr %i.be, i64 %i.bx
  %scevgep1.i = getelementptr i8, ptr %i.bz, i64 %i.by
  %i.ca = and i64 %i.bw, 8
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i, i8 0, i64 %i.ca, i1 false), !tbaa !30
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i
  %i.cb = icmp samesign ugt i64 %.052.in106, 1
  br i1 %i.cb, label %bb.c, label %.preheader, !llvm.loop !161

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58: ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68
  %.051109 = phi i64 [ %i.cv, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68 ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader ] ; 4 uses
  %.idx.i.i.i.i56 = mul nuw nsw i64 %.051109, 24
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i.i.i56
  %i.cd = sub nsw i64 2, %.051109                 ; 3 uses
  %i.ce = getelementptr [8 x i8], ptr %i.cc, i64 %.051109
  %i.cf = getelementptr i8, ptr %i.ce, i64 8      ; 4 uses
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = lshr exact i64 %i.cg, 3
  %i.ci = and i64 %i.ch, 1
  %i.cj = call i64 @llvm.smin.i64(i64 %i.ci, i64 %i.cd) ; 7 uses
  %i.ck = sub i64 %i.cd, %i.cj                    ; 3 uses
  %11 = sdiv i64 %i.ck, 2                         ; 2 uses
  %12 = shl nsw i64 %11, 1                        ; 2 uses
  %13 = add i64 %12, %i.cj                        ; 2 uses
  %14 = icmp sgt i64 %i.cj, 0
  br i1 %14, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i67, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i60

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i67:     ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58
  store i64 0, ptr %i.cf, align 8
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i60

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i60: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i67, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58
  %i.cl = icmp sgt i64 %i.ck, 1
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i64, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i64:       ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i60
  %i.cm = shl nuw i64 %i.cj, 3
  %scevgep.i65 = getelementptr i8, ptr %i.cf, i64 %i.cm
  %15 = add nsw i64 %i.cj, 2
  %smax.i66 = call i64 @llvm.smax.i64(i64 %13, i64 %15)
  %i.cn = xor i64 %i.cj, -1
  %i.co = add i64 %smax.i66, %i.cn
  %i.cp = shl i64 %i.co, 3
  %i.cq = and i64 %i.cp, -16
  %i.cr = add i64 %i.cq, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i65, i8 0, i64 %i.cr, i1 false), !tbaa !29
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i64, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i60
  %16 = icmp slt i64 %13, %i.cd
  br i1 %16, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i62, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i62:   ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61
  %i.cs = shl i64 %11, 4
  %i.ct = shl nuw i64 %i.cj, 3
  %i.cu = getelementptr i8, ptr %i.cf, i64 %i.cs
  %scevgep1.i63 = getelementptr i8, ptr %i.cu, i64 %i.ct
  %17 = sub i64 %i.ck, %12
  %18 = shl nuw i64 %17, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i63, i8 0, i64 %18, i1 false), !tbaa !30
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i62
  %i.cv = add nuw nsw i64 %.051109, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.cv, %smax
  br i1 %exitcond.not, label %.loopexit, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58, !llvm.loop !162

bb.f:                                             ; preds = %bb.a
  %i.cw = icmp sgt i64 %i.b, 48
  store double 1.000000e+00, ptr %1, align 8, !tbaa !30
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.cy, align 8, !tbaa !30
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.da, align 8, !tbaa !30
  br i1 %i.cw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEENS1_IdLi2ELi1ELi0ELi2ELi1EEELi1EE18applyThisOnTheLeftINS1_IdLi3ELi3ELi0ELi3ELi3EEENS1_IdLi1ELi3ELi1ELi1ELi3EEEEEvRT_RT0_b(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext true)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.db = icmp sgt i64 %i.b, 0
  br i1 %i.db, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.dj = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ea = getelementptr inbounds nuw i8, ptr %8, i64 48
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.l
  %.0.in103 = phi i64 [ %i.b, %.lr.ph ], [ %.0104, %bb.l ] ; 3 uses
  %.0104 = add nsw i64 %.0.in103, -1              ; 7 uses
  %i.eb = load i64, ptr %i.dc, align 8, !tbaa !120 ; 2 uses
  %i.ec = add i64 %i.eb, %.0104                   ; 7 uses
  %i.ed = sub i64 3, %i.ec                        ; 4 uses
  %i.ee = load i8, ptr %i.dd, align 8, !tbaa !117, !range !93, !noundef !94
  %i.ef = trunc nuw i8 %i.ee to i1
  %i.eg = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ec
  %.idx.i.i.i.i69 = mul nsw i64 %i.ec, 24
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 %.idx.i.i.i.i69 ; 2 uses
  %i.ei = add nsw i64 %i.eb, %.0.in103            ; 5 uses
  %i.ej = sub nsw i64 3, %i.ei                    ; 2 uses
  %.idx.i.i.i.i.i70 = mul nsw i64 %.0104, 24      ; 2 uses
  br i1 %i.ef, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store ptr %i.eh, ptr %7, align 8, !tbaa !126, !alias.scope !163
  store i64 %i.ed, ptr %i.dq, align 8, !tbaa !132, !alias.scope !163
  store i64 %i.ed, ptr %i.dr, align 8, !tbaa !132, !alias.scope !163
  store ptr %1, ptr %i.ds, align 8, !tbaa !133, !alias.scope !163
  store i64 %i.ec, ptr %i.dt, align 8, !tbaa !132, !alias.scope !163
  store i64 %i.ec, ptr %i.du, align 8, !tbaa !132, !alias.scope !163
  store i64 3, ptr %i.dv, align 8, !tbaa !135, !alias.scope !163
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.ek = load ptr, ptr %0, align 8, !tbaa !124, !noalias !172, !nonnull !94, !align !125 ; 2 uses
  %i.el = getelementptr inbounds [8 x i8], ptr %i.ek, i64 %i.ei
  %i.em = getelementptr inbounds i8, ptr %i.el, i64 %.idx.i.i.i.i.i70
  store ptr %i.em, ptr %8, align 8, !tbaa !145, !alias.scope !172
  store i64 %i.ej, ptr %i.dw, align 8, !tbaa !132, !alias.scope !172
  store ptr %i.ek, ptr %i.dx, align 8, !tbaa !110, !alias.scope !172
  store i64 %i.ei, ptr %i.dy, align 8, !tbaa !132, !alias.scope !172
  store i64 %.0104, ptr %i.dz, align 8, !tbaa !132, !alias.scope !172
  store i64 3, ptr %i.ea, align 8, !tbaa !148, !alias.scope !172
  %i.en = load ptr, ptr %i.dp, align 8, !tbaa !150, !nonnull !94, !align !125
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.en, i64 %.0104
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.eo, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store ptr %i.eh, ptr %9, align 8, !tbaa !126, !alias.scope !173
  store i64 %i.ed, ptr %i.de, align 8, !tbaa !132, !alias.scope !173
  store i64 %i.ed, ptr %i.df, align 8, !tbaa !132, !alias.scope !173
  store ptr %1, ptr %i.dg, align 8, !tbaa !133, !alias.scope !173
  store i64 %i.ec, ptr %i.dh, align 8, !tbaa !132, !alias.scope !173
  store i64 %i.ec, ptr %i.di, align 8, !tbaa !132, !alias.scope !173
  store i64 3, ptr %i.dj, align 8, !tbaa !135, !alias.scope !173
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.ep = load ptr, ptr %0, align 8, !tbaa !124, !noalias !182, !nonnull !94, !align !125 ; 2 uses
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.ei
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 %.idx.i.i.i.i.i70
  store ptr %i.er, ptr %10, align 8, !tbaa !145, !alias.scope !182
  store i64 %i.ej, ptr %i.dk, align 8, !tbaa !132, !alias.scope !182
  store ptr %i.ep, ptr %i.dl, align 8, !tbaa !110, !alias.scope !182
  store i64 %i.ei, ptr %i.dm, align 8, !tbaa !132, !alias.scope !182
  store i64 %.0104, ptr %i.dn, align 8, !tbaa !132, !alias.scope !182
  store i64 3, ptr %i.do, align 8, !tbaa !148, !alias.scope !182
  %i.es = load ptr, ptr %i.dp, align 8, !tbaa !150, !nonnull !94, !align !125
  %i.et = getelementptr inbounds [8 x i8], ptr %i.es, i64 %.0104
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.eu = icmp samesign ugt i64 %.0.in103, 1
  br i1 %i.eu, label %bb.i, label %.loopexit, !llvm.loop !183

.loopexit:                                        ; preds = %bb.l, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68, %bb.h, %.preheader, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEENS1_IdLi2ELi1ELi0ELi2ELi1EEELi1EE18applyThisOnTheLeftINS1_IdLi3ELi3ELi0ELi3ELi3EEENS1_IdLi1ELi3ELi1ELi1ELi3EEEEEvRT_RT0_b(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext %3) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Block.542", align 8  ; 10 uses
  %5 = alloca %"class.Eigen::Block.1019", align 8 ; 10 uses
  %6 = alloca %"class.Eigen::VectorBlock.1539", align 8 ; 8 uses
  %7 = alloca %"class.Eigen::Block.1019", align 8 ; 14 uses
  %8 = alloca %"class.Eigen::Block.1030", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !range !93
  %.fr66 = freeze i8 %i.b
  %i.c = trunc i8 %.fr66 to i1
  %or.cond67 = xor i1 %i.c, true
  %.048.shrunk = and i1 %3, %or.cond67            ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !119  ; 7 uses
  %i.f = icmp sgt i64 %i.e, 47
  br i1 %i.f, label %.lr.ph65, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.g = icmp sgt i64 %i.e, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.048.shrunk, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %i.u = phi i64 [ %i.an, %.lr.ph.split.us ], [ %i.e, %.lr.ph ]
  %.063.us = phi i64 [ %i.am, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.v = load i8, ptr %i.a, align 8, !tbaa !117, !range !93, !noundef !94
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = xor i64 %.063.us, -1
  %i.y = add i64 %i.u, %i.x
  %i.z = select i1 %i.w, i64 %.063.us, i64 %i.y   ; 4 uses
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !120
  %i.ab = add i64 %i.z, %i.aa                     ; 7 uses
  %i.ac = sub i64 3, %i.ab                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.ad = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ab
  %.idx.i.i.i.i.us = mul nsw i64 %i.ab, 24
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.idx.i.i.i.i.us
  store ptr %i.ae, ptr %7, align 8, !tbaa !126, !alias.scope !184
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !132, !alias.scope !184
  store i64 %i.ac, ptr %i.j, align 8, !tbaa !132, !alias.scope !184
  store ptr %1, ptr %i.k, align 8, !tbaa !133, !alias.scope !184
  store i64 %i.ab, ptr %i.l, align 8, !tbaa !132, !alias.scope !184
  store i64 %i.ab, ptr %i.m, align 8, !tbaa !132, !alias.scope !184
  store i64 3, ptr %i.n, align 8, !tbaa !135, !alias.scope !184
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !187)
  call void @llvm.experimental.noalias.scope.decl(metadata !190)
end_hunk_0

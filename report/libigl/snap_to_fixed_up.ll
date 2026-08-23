Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/snap_to_fixed_up?download=true
inline.NumInlined: 18317
inline.NumDeleted: 9926
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 118
loop-unroll.NumUnrolled: 158
begin_hunk_0_@_ZN5Eigen8internal22qr_preconditioner_implINS_6MatrixIfLi2ELi3ELi0ELi2ELi3EEELi2ELi0ELb1EE3runERNS_9JacobiSVDIS3_Li2EEERKS3_:bb.a
bb.g:                                             ; preds = %bb.e, %bb.f
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEENS1_IfLi2ELi1ELi0ELi2ELi1EEELi1EE6evalToINS1_IfLi3ELi3ELi0ELi3ELi3EEENS1_IfLi1ELi3ELi1ELi1ELi3EEEEEvRT_RT0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Block.1042", align 8 ; 10 uses
  %4 = alloca %"class.Eigen::Block.1053", align 8 ; 9 uses
  %5 = alloca %"class.Eigen::Block.1042", align 8 ; 10 uses
  %6 = alloca %"class.Eigen::Block.1053", align 8 ; 9 uses
  %7 = alloca %"class.Eigen::Block.1042", align 8 ; 10 uses
  %8 = alloca %"class.Eigen::Block.1053", align 8 ; 9 uses
  %9 = alloca %"class.Eigen::Block.1042", align 8 ; 10 uses
  %10 = alloca %"class.Eigen::Block.1053", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !141  ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !147, !nonnull !115, !align !148
  %i.d = icmp eq ptr %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  store float 1.000000e+00, ptr %1, align 4, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.f, align 4, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  store <2 x float> zeroinitializer, ptr %i.g, align 4, !tbaa !9
  %i.h = icmp sgt i64 %i.b, 0
  br i1 %i.h, label %.lr.ph108, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader

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

.preheader:                                       ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit
  %i.ah = icmp slt i64 %i.b, 3
  br i1 %i.ah, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader, label %.loopexit

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader: ; preds = %bb.b, %.preheader
  %i.ai = sub i64 3, %i.b
  %smax = call i64 @llvm.smax.i64(i64 %i.ai, i64 1)
  br label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58

bb.c:                                             ; preds = %.lr.ph108, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit
  %.052.in106 = phi i64 [ %i.b, %.lr.ph108 ], [ %.052107, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit ] ; 5 uses
  %.052107 = add nsw i64 %.052.in106, -1          ; 7 uses
  %i.aj = load i64, ptr %i.i, align 8, !tbaa !142 ; 2 uses
  %i.ak = add i64 %i.aj, %.052107                 ; 7 uses
  %i.al = sub i64 3, %i.ak                        ; 4 uses
  %i.am = load i8, ptr %i.j, align 8, !tbaa !139, !range !114, !noundef !115
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ak
  %.idx.i.i.i.i = mul nsw i64 %i.ak, 12
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %.idx.i.i.i.i ; 2 uses
  %i.aq = add nsw i64 %i.aj, %.052.in106          ; 5 uses
  %i.ar = sub nsw i64 3, %i.aq                    ; 2 uses
  %.idx.i.i.i.i.i = mul nsw i64 %.052107, 12      ; 3 uses
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %i.ap, ptr %3, align 8, !tbaa !149, !alias.scope !153
  store i64 %i.al, ptr %i.w, align 8, !tbaa !156, !alias.scope !153
  store i64 %i.al, ptr %i.x, align 8, !tbaa !156, !alias.scope !153
  store ptr %1, ptr %i.y, align 8, !tbaa !157, !alias.scope !153
  store i64 %i.ak, ptr %i.z, align 8, !tbaa !156, !alias.scope !153
  store i64 %i.ak, ptr %i.aa, align 8, !tbaa !156, !alias.scope !153
  store i64 3, ptr %i.ab, align 8, !tbaa !159, !alias.scope !153
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %i.as = load ptr, ptr %0, align 8, !tbaa !147, !noalias !168, !nonnull !115, !align !148 ; 2 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.aq
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %.idx.i.i.i.i.i
  store ptr %i.au, ptr %4, align 8, !tbaa !169, !alias.scope !168
  store i64 %i.ar, ptr %i.ac, align 8, !tbaa !156, !alias.scope !168
  store ptr %i.as, ptr %i.ad, align 8, !tbaa !131, !alias.scope !168
  store i64 %i.aq, ptr %i.ae, align 8, !tbaa !156, !alias.scope !168
  store i64 %.052107, ptr %i.af, align 8, !tbaa !156, !alias.scope !168
  store i64 3, ptr %i.ag, align 8, !tbaa !172, !alias.scope !168
  %i.av = load ptr, ptr %i.v, align 8, !tbaa !174, !nonnull !115, !align !148
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.av, i64 %.052107
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKNS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.aw, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %i.ap, ptr %5, align 8, !tbaa !149, !alias.scope !175
  store i64 %i.al, ptr %i.k, align 8, !tbaa !156, !alias.scope !175
  store i64 %i.al, ptr %i.l, align 8, !tbaa !156, !alias.scope !175
  store ptr %1, ptr %i.m, align 8, !tbaa !157, !alias.scope !175
  store i64 %i.ak, ptr %i.n, align 8, !tbaa !156, !alias.scope !175
  store i64 %i.ak, ptr %i.o, align 8, !tbaa !156, !alias.scope !175
  store i64 3, ptr %i.p, align 8, !tbaa !159, !alias.scope !175
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !178)
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.ax = load ptr, ptr %0, align 8, !tbaa !147, !noalias !184, !nonnull !115, !align !148 ; 2 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.aq
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %.idx.i.i.i.i.i
  store ptr %i.az, ptr %6, align 8, !tbaa !169, !alias.scope !184
  store i64 %i.ar, ptr %i.q, align 8, !tbaa !156, !alias.scope !184
  store ptr %i.ax, ptr %i.r, align 8, !tbaa !131, !alias.scope !184
  store i64 %i.aq, ptr %i.s, align 8, !tbaa !156, !alias.scope !184
  store i64 %.052107, ptr %i.t, align 8, !tbaa !156, !alias.scope !184
  store i64 3, ptr %i.u, align 8, !tbaa !172, !alias.scope !184
  %i.ba = load ptr, ptr %i.v, align 8, !tbaa !174, !nonnull !115, !align !148
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %.052107
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.bb, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.bc = getelementptr inbounds i8, ptr %1, i64 %.idx.i.i.i.i.i
  %i.bd = sub nsw i64 3, %.052.in106              ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %.052.in106 ; 4 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = lshr exact i64 %i.bf, 2
  %i.bh = sub nsw i64 0, %i.bg
  %i.bi = and i64 %i.bh, 3
  %i.bj = call i64 @llvm.smin.i64(i64 %i.bi, i64 %i.bd) ; 8 uses
  %i.bk = sub nsw i64 %i.bd, %i.bj                ; 3 uses
  %i.bl = and i64 %i.bk, -4
  %i.bm = add i64 %i.bl, %i.bj                    ; 2 uses
  %i.bn = icmp sgt i64 %i.bj, 0
  br i1 %i.bn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bo = shl nuw nsw i64 %i.bj, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bo, i1 false), !tbaa !9
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bp = icmp sgt i64 %i.bk, 3
  br i1 %i.bp, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bq = shl nuw i64 %i.bj, 2
  %scevgep.i = getelementptr i8, ptr %i.be, i64 %i.bq
  %i.br = add nsw i64 %i.bj, 4
  %smax.i = call i64 @llvm.smax.i64(i64 %i.bm, i64 %i.br)
  %i.bs = xor i64 %i.bj, -1
  %i.bt = add i64 %smax.i, %i.bs
  %i.bu = shl i64 %i.bt, 2
  %i.bv = and i64 %i.bu, -16
  %i.bw = add i64 %i.bv, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.bw, i1 false), !tbaa !16
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bx = icmp slt i64 %i.bm, %i.bd
  br i1 %i.bx, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.by = shl i64 %i.bk, 2                        ; 2 uses
  %i.bz = and i64 %i.by, -16
  %i.ca = shl nuw i64 %i.bj, 2
  %i.cb = getelementptr i8, ptr %i.be, i64 %i.bz
  %scevgep1.i = getelementptr i8, ptr %i.cb, i64 %i.ca
  %i.cc = and i64 %i.by, 12
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i, i8 0, i64 %i.cc, i1 false), !tbaa !9
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i
  %i.cd = icmp samesign ugt i64 %.052.in106, 1
  br i1 %i.cd, label %bb.c, label %.preheader, !llvm.loop !185

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58: ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68
  %.051109 = phi i64 [ %i.cr, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68 ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader ] ; 4 uses
  %.idx.i.i.i.i56 = mul nuw nsw i64 %.051109, 12
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i.i.i56
  %i.cf = sub nuw nsw i64 2, %.051109             ; 3 uses
  %i.cg = getelementptr [4 x i8], ptr %i.ce, i64 %.051109
  %i.ch = getelementptr i8, ptr %i.cg, i64 4      ; 3 uses
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = lshr exact i64 %i.ci, 2
  %i.ck = sub nsw i64 0, %i.cj
  %i.cl = and i64 %i.ck, 3                        ; 2 uses
  %i.cm = call i64 @llvm.umin.i64(i64 %i.cl, i64 %i.cf) ; 4 uses
  %i.cn = sub nsw i64 %i.cf, %i.cm
  %.not = icmp eq i64 %i.cm, 0
  br i1 %.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i67.a

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i67.a:   ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58
  %i.co = shl nuw nsw i64 %i.cm, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ch, i8 0, i64 %i.co, i1 false), !tbaa !9
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61:            ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i67.a
  %11 = icmp samesign ult i64 %i.cl, %i.cf
  br i1 %11, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i62, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i62:   ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61
  %i.cp = shl nuw nsw i64 %i.cm, 2
  %scevgep1.i63 = getelementptr i8, ptr %i.ch, i64 %i.cp
  %i.cq = shl nuw nsw i64 %i.cn, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i63, i8 0, i64 %i.cq, i1 false), !tbaa !9
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i62
  %i.cr = add nuw nsw i64 %.051109, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.cr, %smax
  br i1 %exitcond.not, label %.loopexit, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58, !llvm.loop !186

bb.f:                                             ; preds = %bb.a
  %i.cs = icmp sgt i64 %i.b, 48
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %1, align 4, !tbaa !9
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ct, align 4, !tbaa !9
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 32
  store float 1.000000e+00, ptr %i.cu, align 4, !tbaa !9
  br i1 %i.cs, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEENS1_IfLi2ELi1ELi0ELi2ELi1EEELi1EE18applyThisOnTheLeftINS1_IfLi3ELi3ELi0ELi3ELi3EEENS1_IfLi1ELi3ELi1ELi1ELi3EEEEEvRT_RT0_b(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, i1 noundef zeroext true)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.cv = icmp sgt i64 %i.b, 0
  br i1 %i.cv, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.dp = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 48
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.l
  %.0.in103 = phi i64 [ %i.b, %.lr.ph ], [ %.0104, %bb.l ] ; 3 uses
  %.0104 = add nsw i64 %.0.in103, -1              ; 7 uses
  %i.dv = load i64, ptr %i.cw, align 8, !tbaa !142 ; 2 uses
  %i.dw = add i64 %i.dv, %.0104                   ; 7 uses
  %i.dx = sub i64 3, %i.dw                        ; 4 uses
  %i.dy = load i8, ptr %i.cx, align 8, !tbaa !139, !range !114, !noundef !115
  %i.dz = trunc nuw i8 %i.dy to i1
  %i.ea = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dw
  %.idx.i.i.i.i69 = mul nsw i64 %i.dw, 12
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 %.idx.i.i.i.i69 ; 2 uses
  %i.ec = add nsw i64 %i.dv, %.0.in103            ; 5 uses
  %i.ed = sub nsw i64 3, %i.ec                    ; 2 uses
  %.idx.i.i.i.i.i70 = mul nsw i64 %.0104, 12      ; 2 uses
  br i1 %i.dz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr %i.eb, ptr %7, align 8, !tbaa !149, !alias.scope !187
  store i64 %i.dx, ptr %i.dk, align 8, !tbaa !156, !alias.scope !187
  store i64 %i.dx, ptr %i.dl, align 8, !tbaa !156, !alias.scope !187
  store ptr %1, ptr %i.dm, align 8, !tbaa !157, !alias.scope !187
  store i64 %i.dw, ptr %i.dn, align 8, !tbaa !156, !alias.scope !187
  store i64 %i.dw, ptr %i.do, align 8, !tbaa !156, !alias.scope !187
  store i64 3, ptr %i.dp, align 8, !tbaa !159, !alias.scope !187
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !190)
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.ee = load ptr, ptr %0, align 8, !tbaa !147, !noalias !196, !nonnull !115, !align !148 ; 2 uses
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.ec
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 %.idx.i.i.i.i.i70
  store ptr %i.eg, ptr %8, align 8, !tbaa !169, !alias.scope !196
  store i64 %i.ed, ptr %i.dq, align 8, !tbaa !156, !alias.scope !196
  store ptr %i.ee, ptr %i.dr, align 8, !tbaa !131, !alias.scope !196
  store i64 %i.ec, ptr %i.ds, align 8, !tbaa !156, !alias.scope !196
  store i64 %.0104, ptr %i.dt, align 8, !tbaa !156, !alias.scope !196
  store i64 3, ptr %i.du, align 8, !tbaa !172, !alias.scope !196
  %i.eh = load ptr, ptr %i.dj, align 8, !tbaa !174, !nonnull !115, !align !148
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %.0104
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKNS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.ei, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store ptr %i.eb, ptr %9, align 8, !tbaa !149, !alias.scope !197
  store i64 %i.dx, ptr %i.cy, align 8, !tbaa !156, !alias.scope !197
  store i64 %i.dx, ptr %i.cz, align 8, !tbaa !156, !alias.scope !197
  store ptr %1, ptr %i.da, align 8, !tbaa !157, !alias.scope !197
  store i64 %i.dw, ptr %i.db, align 8, !tbaa !156, !alias.scope !197
  store i64 %i.dw, ptr %i.dc, align 8, !tbaa !156, !alias.scope !197
  store i64 3, ptr %i.dd, align 8, !tbaa !159, !alias.scope !197
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !200)
  call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %i.ej = load ptr, ptr %0, align 8, !tbaa !147, !noalias !206, !nonnull !115, !align !148 ; 2 uses
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.ec
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 %.idx.i.i.i.i.i70
  store ptr %i.el, ptr %10, align 8, !tbaa !169, !alias.scope !206
  store i64 %i.ed, ptr %i.de, align 8, !tbaa !156, !alias.scope !206
  store ptr %i.ej, ptr %i.df, align 8, !tbaa !131, !alias.scope !206
  store i64 %i.ec, ptr %i.dg, align 8, !tbaa !156, !alias.scope !206
  store i64 %.0104, ptr %i.dh, align 8, !tbaa !156, !alias.scope !206
  store i64 3, ptr %i.di, align 8, !tbaa !172, !alias.scope !206
  %i.em = load ptr, ptr %i.dj, align 8, !tbaa !174, !nonnull !115, !align !148
  %i.en = getelementptr inbounds [4 x i8], ptr %i.em, i64 %.0104
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 4 dereferenceable(4) %i.en, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.eo = icmp samesign ugt i64 %.0.in103, 1
  br i1 %i.eo, label %bb.i, label %.loopexit, !llvm.loop !207

.loopexit:                                        ; preds = %bb.l, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68, %bb.h, %.preheader, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEENS1_IfLi2ELi1ELi0ELi2ELi1EEELi1EE18applyThisOnTheLeftINS1_IfLi3ELi3ELi0ELi3ELi3EEENS1_IfLi1ELi3ELi1ELi1ELi3EEEEEvRT_RT0_b(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, i1 noundef zeroext %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Block.561", align 8  ; 10 uses
  %5 = alloca %"class.Eigen::Block.1042", align 8 ; 10 uses
  %6 = alloca %"class.Eigen::VectorBlock.1551", align 8 ; 8 uses
  %7 = alloca %"class.Eigen::Block.1042", align 8 ; 14 uses
  %8 = alloca %"class.Eigen::Block.1053", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !range !114
  %.fr66 = freeze i8 %i.b
  %i.c = trunc i8 %.fr66 to i1
  %or.cond67 = xor i1 %i.c, true
  %.048.shrunk = and i1 %3, %or.cond67            ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !141  ; 7 uses
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
  %i.v = load i8, ptr %i.a, align 8, !tbaa !139, !range !114, !noundef !115
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = xor i64 %.063.us, -1
  %i.y = add i64 %i.u, %i.x
  %i.z = select i1 %i.w, i64 %.063.us, i64 %i.y   ; 4 uses
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !142
  %i.ab = add i64 %i.z, %i.aa                     ; 7 uses
  %i.ac = sub i64 3, %i.ab                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.ad = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ab
  %.idx.i.i.i.i.us = mul nsw i64 %i.ab, 12
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.idx.i.i.i.i.us
  store ptr %i.ae, ptr %7, align 8, !tbaa !149, !alias.scope !208
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !156, !alias.scope !208
  store i64 %i.ac, ptr %i.j, align 8, !tbaa !156, !alias.scope !208
  store ptr %1, ptr %i.k, align 8, !tbaa !157, !alias.scope !208
  store i64 %i.ab, ptr %i.l, align 8, !tbaa !156, !alias.scope !208
  store i64 %i.ab, ptr %i.m, align 8, !tbaa !156, !alias.scope !208
  store i64 3, ptr %i.n, align 8, !tbaa !159, !alias.scope !208
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.af = add i64 %i.ab, 1                        ; 2 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !147, !noalias !217, !nonnull !115, !align !148 ; 2 uses
  %i.ah = sub i64 2, %i.ab
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal22qr_preconditioner_implINS_6MatrixIdLi2ELi3ELi0ELi2ELi3EEELi2ELi0ELb1EE3runERNS_9JacobiSVDIS3_Li2EEERKS3_:bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEENS1_IdLi2ELi1ELi0ELi2ELi1EEELi1EE6evalToINS1_IdLi3ELi3ELi0ELi3ELi3EEENS1_IdLi1ELi3ELi1ELi1ELi3EEEEEvRT_RT0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Block.3335", align 8 ; 10 uses
  %4 = alloca %"class.Eigen::Block.3346", align 8 ; 9 uses
  %5 = alloca %"class.Eigen::Block.3335", align 8 ; 10 uses
  %6 = alloca %"class.Eigen::Block.3346", align 8 ; 9 uses
  %7 = alloca %"class.Eigen::Block.3335", align 8 ; 10 uses
  %8 = alloca %"class.Eigen::Block.3346", align 8 ; 9 uses
  %9 = alloca %"class.Eigen::Block.3335", align 8 ; 10 uses
  %10 = alloca %"class.Eigen::Block.3346", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !935  ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !940, !nonnull !115, !align !941
  %i.d = icmp eq ptr %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  store double 1.000000e+00, ptr %1, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  store double 1.000000e+00, ptr %i.e, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.f, align 8, !tbaa !22
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
  %i.aj = load i64, ptr %i.i, align 8, !tbaa !936 ; 2 uses
  %i.ak = add i64 %i.aj, %.052107                 ; 7 uses
  %i.al = sub i64 3, %i.ak                        ; 4 uses
  %i.am = load i8, ptr %i.j, align 8, !tbaa !933, !range !114, !noundef !115
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ak
  %.idx.i.i.i.i = mul nsw i64 %i.ak, 24
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %.idx.i.i.i.i ; 2 uses
  %i.aq = add nsw i64 %i.aj, %.052.in106          ; 5 uses
  %i.ar = sub nsw i64 3, %i.aq                    ; 2 uses
  %.idx.i.i.i.i.i = mul nsw i64 %.052107, 24      ; 3 uses
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %i.ap, ptr %3, align 8, !tbaa !942, !alias.scope !945
  store i64 %i.al, ptr %i.w, align 8, !tbaa !156, !alias.scope !945
  store i64 %i.al, ptr %i.x, align 8, !tbaa !156, !alias.scope !945
  store ptr %1, ptr %i.y, align 8, !tbaa !948, !alias.scope !945
  store i64 %i.ak, ptr %i.z, align 8, !tbaa !156, !alias.scope !945
  store i64 %i.ak, ptr %i.aa, align 8, !tbaa !156, !alias.scope !945
  store i64 3, ptr %i.ab, align 8, !tbaa !950, !alias.scope !945
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !953)
  call void @llvm.experimental.noalias.scope.decl(metadata !956)
  %i.as = load ptr, ptr %0, align 8, !tbaa !940, !noalias !959, !nonnull !115, !align !941 ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.aq
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %.idx.i.i.i.i.i
  store ptr %i.au, ptr %4, align 8, !tbaa !960, !alias.scope !959
  store i64 %i.ar, ptr %i.ac, align 8, !tbaa !156, !alias.scope !959
  store ptr %i.as, ptr %i.ad, align 8, !tbaa !926, !alias.scope !959
  store i64 %i.aq, ptr %i.ae, align 8, !tbaa !156, !alias.scope !959
  store i64 %.052107, ptr %i.af, align 8, !tbaa !156, !alias.scope !959
  store i64 3, ptr %i.ag, align 8, !tbaa !962, !alias.scope !959
  %i.av = load ptr, ptr %i.v, align 8, !tbaa !964, !nonnull !115, !align !941
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.av, i64 %.052107
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %i.ap, ptr %5, align 8, !tbaa !942, !alias.scope !965
  store i64 %i.al, ptr %i.k, align 8, !tbaa !156, !alias.scope !965
  store i64 %i.al, ptr %i.l, align 8, !tbaa !156, !alias.scope !965
  store ptr %1, ptr %i.m, align 8, !tbaa !948, !alias.scope !965
  store i64 %i.ak, ptr %i.n, align 8, !tbaa !156, !alias.scope !965
  store i64 %i.ak, ptr %i.o, align 8, !tbaa !156, !alias.scope !965
  store i64 3, ptr %i.p, align 8, !tbaa !950, !alias.scope !965
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !968)
  call void @llvm.experimental.noalias.scope.decl(metadata !971)
  %i.ax = load ptr, ptr %0, align 8, !tbaa !940, !noalias !974, !nonnull !115, !align !941 ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.aq
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %.idx.i.i.i.i.i
  store ptr %i.az, ptr %6, align 8, !tbaa !960, !alias.scope !974
  store i64 %i.ar, ptr %i.q, align 8, !tbaa !156, !alias.scope !974
  store ptr %i.ax, ptr %i.r, align 8, !tbaa !926, !alias.scope !974
  store i64 %i.aq, ptr %i.s, align 8, !tbaa !156, !alias.scope !974
  store i64 %.052107, ptr %i.t, align 8, !tbaa !156, !alias.scope !974
  store i64 3, ptr %i.u, align 8, !tbaa !962, !alias.scope !974
  %i.ba = load ptr, ptr %i.v, align 8, !tbaa !964, !nonnull !115, !align !941
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %.052107
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
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
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.bu, i1 false), !tbaa !16
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
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i, i8 0, i64 %i.ca, i1 false), !tbaa !22
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i
  %i.cb = icmp samesign ugt i64 %.052.in106, 1
  br i1 %i.cb, label %bb.c, label %.preheader, !llvm.loop !975

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58: ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68
  %.051109 = phi i64 [ %i.cv, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68 ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader ] ; 4 uses
  %.idx.i.i.i.i56 = mul nuw nsw i64 %.051109, 24
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i.i.i56
  %i.cd = sub nuw nsw i64 2, %.051109             ; 3 uses
  %i.ce = getelementptr [8 x i8], ptr %i.cc, i64 %.051109
  %i.cf = getelementptr i8, ptr %i.ce, i64 8      ; 4 uses
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = lshr exact i64 %i.cg, 3
  %i.ci = and i64 %i.ch, 1
  %i.cj = call i64 @llvm.umin.i64(i64 %i.ci, i64 %i.cd) ; 7 uses
  %i.ck = sub nsw i64 %i.cd, %i.cj                ; 4 uses
  %11 = and i64 %i.ck, -2
  %12 = or disjoint i64 %11, %i.cj                ; 2 uses
  %.not = icmp eq i64 %i.cj, 0
  br i1 %.not, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i60, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i67

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i67:     ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58
  store i64 0, ptr %i.cf, align 8
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i60

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i60: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i67, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58
  %i.cl = icmp sgt i64 %i.ck, 1
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i64, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i64:       ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i60
  %i.cm = shl nuw nsw i64 %i.cj, 3
  %scevgep.i65 = getelementptr i8, ptr %i.cf, i64 %i.cm
  %13 = or disjoint i64 %i.cj, 2
  %smax.i66 = call i64 @llvm.smax.i64(i64 %12, i64 %13)
  %i.cn = xor i64 %i.cj, -1
  %i.co = add nsw i64 %smax.i66, %i.cn
  %i.cp = shl nuw nsw i64 %i.co, 3
  %i.cq = and i64 %i.cp, 9223372036854775792
  %i.cr = add nuw nsw i64 %i.cq, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep.i65, i8 0, i64 %i.cr, i1 false), !tbaa !16
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i64, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i60
  %14 = icmp samesign ult i64 %12, %i.cd
  br i1 %14, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i62, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i62:   ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61
  %i.cs = shl nuw nsw i64 %i.ck, 3
  %15 = and i64 %i.cs, 9223372036854775792
  %i.ct = shl nuw nsw i64 %i.cj, 3
  %i.cu = getelementptr i8, ptr %i.cf, i64 %15
  %scevgep1.i63 = getelementptr i8, ptr %i.cu, i64 %i.ct
  %16 = shl nsw i64 %i.ck, 3
  %17 = and i64 %16, 8
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i63, i8 0, i64 %17, i1 false), !tbaa !22
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i62
  %i.cv = add nuw nsw i64 %.051109, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.cv, %smax
  br i1 %exitcond.not, label %.loopexit, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58, !llvm.loop !976

bb.f:                                             ; preds = %bb.a
  %i.cw = icmp sgt i64 %i.b, 48
  store double 1.000000e+00, ptr %1, align 8, !tbaa !22
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.cy, align 8, !tbaa !22
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.da, align 8, !tbaa !22
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
  %i.eb = load i64, ptr %i.dc, align 8, !tbaa !936 ; 2 uses
  %i.ec = add i64 %i.eb, %.0104                   ; 7 uses
  %i.ed = sub i64 3, %i.ec                        ; 4 uses
  %i.ee = load i8, ptr %i.dd, align 8, !tbaa !933, !range !114, !noundef !115
  %i.ef = trunc nuw i8 %i.ee to i1
  %i.eg = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ec
  %.idx.i.i.i.i69 = mul nsw i64 %i.ec, 24
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 %.idx.i.i.i.i69 ; 2 uses
  %i.ei = add nsw i64 %i.eb, %.0.in103            ; 5 uses
  %i.ej = sub nsw i64 3, %i.ei                    ; 2 uses
  %.idx.i.i.i.i.i70 = mul nsw i64 %.0104, 24      ; 2 uses
  br i1 %i.ef, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr %i.eh, ptr %7, align 8, !tbaa !942, !alias.scope !977
  store i64 %i.ed, ptr %i.dq, align 8, !tbaa !156, !alias.scope !977
  store i64 %i.ed, ptr %i.dr, align 8, !tbaa !156, !alias.scope !977
  store ptr %1, ptr %i.ds, align 8, !tbaa !948, !alias.scope !977
  store i64 %i.ec, ptr %i.dt, align 8, !tbaa !156, !alias.scope !977
  store i64 %i.ec, ptr %i.du, align 8, !tbaa !156, !alias.scope !977
  store i64 3, ptr %i.dv, align 8, !tbaa !950, !alias.scope !977
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !980)
  call void @llvm.experimental.noalias.scope.decl(metadata !983)
  %i.ek = load ptr, ptr %0, align 8, !tbaa !940, !noalias !986, !nonnull !115, !align !941 ; 2 uses
  %i.el = getelementptr inbounds [8 x i8], ptr %i.ek, i64 %i.ei
  %i.em = getelementptr inbounds i8, ptr %i.el, i64 %.idx.i.i.i.i.i70
  store ptr %i.em, ptr %8, align 8, !tbaa !960, !alias.scope !986
  store i64 %i.ej, ptr %i.dw, align 8, !tbaa !156, !alias.scope !986
  store ptr %i.ek, ptr %i.dx, align 8, !tbaa !926, !alias.scope !986
  store i64 %i.ei, ptr %i.dy, align 8, !tbaa !156, !alias.scope !986
  store i64 %.0104, ptr %i.dz, align 8, !tbaa !156, !alias.scope !986
  store i64 3, ptr %i.ea, align 8, !tbaa !962, !alias.scope !986
  %i.en = load ptr, ptr %i.dp, align 8, !tbaa !964, !nonnull !115, !align !941
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.en, i64 %.0104
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.eo, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store ptr %i.eh, ptr %9, align 8, !tbaa !942, !alias.scope !987
  store i64 %i.ed, ptr %i.de, align 8, !tbaa !156, !alias.scope !987
  store i64 %i.ed, ptr %i.df, align 8, !tbaa !156, !alias.scope !987
  store ptr %1, ptr %i.dg, align 8, !tbaa !948, !alias.scope !987
  store i64 %i.ec, ptr %i.dh, align 8, !tbaa !156, !alias.scope !987
  store i64 %i.ec, ptr %i.di, align 8, !tbaa !156, !alias.scope !987
  store i64 3, ptr %i.dj, align 8, !tbaa !950, !alias.scope !987
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !990)
  call void @llvm.experimental.noalias.scope.decl(metadata !993)
  %i.ep = load ptr, ptr %0, align 8, !tbaa !940, !noalias !996, !nonnull !115, !align !941 ; 2 uses
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.ei
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 %.idx.i.i.i.i.i70
  store ptr %i.er, ptr %10, align 8, !tbaa !960, !alias.scope !996
  store i64 %i.ej, ptr %i.dk, align 8, !tbaa !156, !alias.scope !996
  store ptr %i.ep, ptr %i.dl, align 8, !tbaa !926, !alias.scope !996
  store i64 %i.ei, ptr %i.dm, align 8, !tbaa !156, !alias.scope !996
  store i64 %.0104, ptr %i.dn, align 8, !tbaa !156, !alias.scope !996
  store i64 3, ptr %i.do, align 8, !tbaa !962, !alias.scope !996
  %i.es = load ptr, ptr %i.dp, align 8, !tbaa !964, !nonnull !115, !align !941
  %i.et = getelementptr inbounds [8 x i8], ptr %i.es, i64 %.0104
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.eu = icmp samesign ugt i64 %.0.in103, 1
  br i1 %i.eu, label %bb.i, label %.loopexit, !llvm.loop !997

.loopexit:                                        ; preds = %bb.l, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68, %bb.h, %.preheader, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEENS1_IdLi2ELi1ELi0ELi2ELi1EEELi1EE18applyThisOnTheLeftINS1_IdLi3ELi3ELi0ELi3ELi3EEENS1_IdLi1ELi3ELi1ELi1ELi3EEEEEvRT_RT0_b(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Block.2841", align 8 ; 10 uses
  %5 = alloca %"class.Eigen::Block.3335", align 8 ; 10 uses
  %6 = alloca %"class.Eigen::VectorBlock.3842", align 8 ; 8 uses
  %7 = alloca %"class.Eigen::Block.3335", align 8 ; 14 uses
  %8 = alloca %"class.Eigen::Block.3346", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !range !114
  %.fr66 = freeze i8 %i.b
  %i.c = trunc i8 %.fr66 to i1
  %or.cond67 = xor i1 %i.c, true
  %.048.shrunk = and i1 %3, %or.cond67            ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !935  ; 7 uses
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
  %i.v = load i8, ptr %i.a, align 8, !tbaa !933, !range !114, !noundef !115
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = xor i64 %.063.us, -1
  %i.y = add i64 %i.u, %i.x
  %i.z = select i1 %i.w, i64 %.063.us, i64 %i.y   ; 4 uses
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !936
  %i.ab = add i64 %i.z, %i.aa                     ; 7 uses
  %i.ac = sub i64 3, %i.ab                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.ad = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ab
  %.idx.i.i.i.i.us = mul nsw i64 %i.ab, 24
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.idx.i.i.i.i.us
  store ptr %i.ae, ptr %7, align 8, !tbaa !942, !alias.scope !998
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !156, !alias.scope !998
  store i64 %i.ac, ptr %i.j, align 8, !tbaa !156, !alias.scope !998
  store ptr %1, ptr %i.k, align 8, !tbaa !948, !alias.scope !998
  store i64 %i.ab, ptr %i.l, align 8, !tbaa !156, !alias.scope !998
  store i64 %i.ab, ptr %i.m, align 8, !tbaa !156, !alias.scope !998
  store i64 3, ptr %i.n, align 8, !tbaa !950, !alias.scope !998
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  call void @llvm.experimental.noalias.scope.decl(metadata !1004)
end_hunk_1

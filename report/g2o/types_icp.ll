Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/types_icp?download=true
inline.NumInlined: 15255
inline.NumDeleted: 8449
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN5Eigen8internal15partial_lu_implIdLi0EiLi6EE12unblocked_luERNS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEEPiRi:bb.a

.lr.ph.i.i.i.i.i.i.i.1:                           ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !32
  %i.dc = fdiv double %i.db, %i.co
  store double %i.dc, ptr %i.da, align 8, !tbaa !32
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %.0.i.i.i.i.i.i.i, 2
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi6ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.2:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %i.de = load double, ptr %i.dd, align 8, !tbaa !32
  %i.df = fdiv double %i.de, %i.co
  store double %i.df, ptr %i.dd, align 8, !tbaa !32
  %exitcond.not.i.i.i.i.i.i.i.2 = icmp eq i64 %.0.i.i.i.i.i.i.i, 3
  br i1 %exitcond.not.i.i.i.i.i.i.i.2, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi6ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.i.i.3:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.2
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cn, i64 24 ; 2 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !32
  %i.di = fdiv double %i.dh, %i.co
  store double %i.di, ptr %i.dg, align 8, !tbaa !32
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i64 %.0.i.i.i.i.i.i.i, 4
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi6ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.4

.lr.ph.i.i.i.i.i.i.i.4:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.3
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cn, i64 32 ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !32
  %i.dl = fdiv double %i.dk, %i.co
  store double %i.dl, ptr %i.dj, align 8, !tbaa !32
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi6ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi6ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i.i.i.4, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.dm = icmp sgt i64 %i.cu, 1
  br i1 %i.dm, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi6ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.dn = insertelement <2 x double> poison, double %i.co, i64 0
  %i.do = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi6ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.dp = icmp slt i64 %i.cx, %i.cl
  br i1 %i.dp, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %.loopexit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.dq = add nsw i64 %.0.i.i.i.i.i.i.i, %i.cw
  %i.dr = sub nsw i64 %i.cl, %i.dq                ; 3 uses
  %min.iters.check = icmp ult i64 %i.dr, 2
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader178, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.dr, -2                      ; 3 uses
  %i.ds = add nsw i64 %i.cx, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.co, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dt = getelementptr [8 x i8], ptr %i.cn, i64 %i.cx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.du = getelementptr [8 x i8], ptr %i.dt, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.du, align 8, !tbaa !32
  %i.dv = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.dv, ptr %i.du, align 8, !tbaa !32
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !518

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dr, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.preheader178

.lr.ph.i17.i.i.i.i.i.i.preheader178:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.cx, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.ds, %middle.block ]
  br label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader178, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.ea, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader178 ] ; 2 uses
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !32
  %i.dz = fdiv double %i.dy, %i.co
  store double %i.dz, ptr %i.dx, align 8, !tbaa !32
  %i.ea = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i = icmp eq i64 %i.ea, %i.cl
  br i1 %exitcond.not.i19.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !519

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.ec = load <2 x double>, ptr %i.eb, align 16, !tbaa !20
  %i.ed = fdiv <2 x double> %i.ec, %i.do
  store <2 x double> %i.ed, ptr %i.eb, align 16, !tbaa !20
  %i.ee = add nuw nsw i64 %.021.i.i.i.i.i.i, 2    ; 2 uses
  %i.ef = icmp slt i64 %i.ee, %i.cx
  br i1 %i.ef, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !520

bb.g:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit
  %i.eg = icmp eq i64 %.0171, -1
  %spec.select54 = select i1 %i.eg, i64 %.052170, i64 %.0171
  %.pre = zext nneg i32 %i.bg to i64              ; 2 uses
  %.pre172 = sub nuw nsw i64 6, %.pre
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i, %bb.g
  %.pre-phi173 = phi i64 [ %.pre172, %bb.g ], [ %i.cm, %._crit_edge.i.i.i.i.i.i ], [ %i.cm, %middle.block ], [ %i.cm, %.lr.ph.i17.i.i.i.i.i.i ] ; 7 uses
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.cl, %._crit_edge.i.i.i.i.i.i ], [ %i.cl, %middle.block ], [ %i.cl, %.lr.ph.i17.i.i.i.i.i.i ] ; 4 uses
  %.1 = phi i64 [ %spec.select54, %bb.g ], [ %.0171, %._crit_edge.i.i.i.i.i.i ], [ %.0171, %middle.block ], [ %.0171, %.lr.ph.i17.i.i.i.i.i.i ] ; 3 uses
  %i.eh = load ptr, ptr %0, align 8, !tbaa !218, !noalias !528 ; 3 uses
  %i.ei = load i64, ptr %i.a, align 8, !tbaa !220, !noalias !528 ; 8 uses
  %i.ej = mul nsw i64 %i.ei, %.052170
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.ej ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %.pre-phi173 ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.052170 ; 2 uses
  %i.en = mul nsw i64 %i.ei, %.pre-phi173         ; 2 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.en ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.pre-phi173
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.en ; 2 uses
  store ptr %i.eq, ptr %7, align 8, !tbaa !224, !alias.scope !529
  store i64 %.pre-phi, ptr %i.b, align 8, !tbaa !220, !alias.scope !529
  store i64 %.pre-phi, ptr %i.c, align 8, !tbaa !220, !alias.scope !529
  store ptr %0, ptr %i.d, align 8, !tbaa !530, !alias.scope !529
  store i64 %.pre-phi173, ptr %i.e, align 8, !tbaa !220, !alias.scope !529
  store i64 %.pre-phi173, ptr %i.f, align 8, !tbaa !220, !alias.scope !529
  store i64 %i.ei, ptr %i.g, align 8, !tbaa !531, !alias.scope !529
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %i.el, ptr %3, align 8
  store i64 %.pre-phi, ptr %.sroa.484.0..sroa_idx, align 8
  store ptr %i.ek, ptr %.sroa.686.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.888.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.989.0..sroa_idx, align 8
  store i64 %.052170, ptr %.sroa.1090.0..sroa_idx, align 8
  store i64 %i.ei, ptr %.sroa.1191.0..sroa_idx, align 8
  store i64 %.pre-phi173, ptr %.sroa.1292.0..sroa_idx, align 8
  store i64 %i.ei, ptr %.sroa.14.0..sroa_idx, align 8
  store ptr %i.eo, ptr %i.h, align 8
  store i64 %.pre-phi, ptr %.sroa.18.96..sroa_idx, align 8
  store ptr %i.em, ptr %.sroa.19.96..sroa_idx, align 8
  store ptr %0, ptr %.sroa.21.96..sroa_idx, align 8
  store i64 %.052170, ptr %.sroa.22.96..sroa_idx, align 8
  store i64 0, ptr %.sroa.23.96..sroa_idx, align 8
  store i64 1, ptr %.sroa.24.96..sroa_idx, align 8
  store i64 %.pre-phi173, ptr %.sroa.26.96..sroa_idx, align 8
  store i64 1, ptr %.sroa.27.96..sroa_idx, align 8
  store ptr %i.el, ptr %i.i, align 8, !tbaa !229
  store i64 %i.ei, ptr %i.j, align 8, !tbaa !220
  store ptr %i.eo, ptr %i.k, align 8, !tbaa !231
  store i64 %i.ei, ptr %i.l, align 8, !tbaa !220
  store i64 1, ptr %i.m, align 8, !tbaa !552
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %i.eq, ptr %4, align 8, !tbaa !238
  store i64 %i.ei, ptr %i.n, align 8, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %4, ptr %5, align 8, !tbaa !553
  store ptr %3, ptr %i.o, align 8, !tbaa !554
  store ptr %6, ptr %i.p, align 8, !tbaa !242
  store ptr %7, ptr %i.q, align 8, !tbaa !555
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li6ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi6ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSM_(ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.er = add nuw nsw i64 %.052170, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.er, 5
  br i1 %exitcond.not, label %bb.b, label %.lr.ph.i.i.i.i, !llvm.loop !525
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li6ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi6ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSM_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !584, !nonnull !103, !align !119 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !224
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !220  ; 3 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li6ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi6ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !220  ; 9 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li6ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi6ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !103, !align !119 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.p = load ptr, ptr %0, align 8, !nonnull !103, !align !119 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !238  ; 3 uses
  %i.s = load i64, ptr %i.q, align 8, !tbaa !220  ; 3 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !585, !noalias !586 ; 6 uses
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !587, !noalias !588 ; 3 uses
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !589, !noalias !588, !nonnull !103, !align !119
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !220, !noalias !588 ; 3 uses
  %i.y = add nsw i64 %i.g, -1                     ; 2 uses
  %i.z = mul i64 %i.s, %i.y
  %i.aa = shl i64 %i.j, 3
  %i.ab = add i64 %i.z, %i.j
  %i.ac = shl i64 %i.ab, 3
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.ac
  %scevgep63 = getelementptr i8, ptr %i.t, i64 %i.aa
  %i.ad = mul i64 %i.x, %i.y
  %i.ae = shl i64 %i.ad, 3
  %i.af = getelementptr i8, ptr %i.u, i64 %i.ae
  %scevgep64 = getelementptr i8, ptr %i.af, i64 8
  %1 = insertelement <2 x ptr> poison, ptr %i.r, i64 0
  %2 = shufflevector <2 x ptr> %1, <2 x ptr> poison, <2 x i32> zeroinitializer
  %3 = insertelement <2 x ptr> poison, ptr %scevgep63, i64 0
  %4 = insertelement <2 x ptr> %3, ptr %scevgep64, i64 1
  %5 = insertelement <2 x ptr> poison, ptr %i.t, i64 0
  %6 = insertelement <2 x ptr> %5, ptr %i.u, i64 1
  %7 = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %8 = shufflevector <2 x ptr> %7, <2 x ptr> poison, <2 x i32> zeroinitializer
  %9 = insertelement <2 x i64> poison, i64 %i.s, i64 0
  %10 = insertelement <2 x i64> %9, i64 %i.x, i64 1
  %bound065 = icmp ult i64 %i.j, 8
  %11 = icmp ult <2 x ptr> %2, %4
  %12 = icmp ult <2 x ptr> %6, %8
  %13 = and <2 x i64> %10, splat (i64 1152921504606846976)
  %14 = and <2 x i1> %11, %12
  %15 = icmp ne <2 x i64> %13, zeroinitializer
  %16 = or <2 x i1> %14, %15
  %17 = bitcast <2 x i1> %16 to i2
  %.not104 = icmp eq i2 %17, 0
  %n.vec = and i64 %i.j, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.bd, %._crit_edge.i ] ; 3 uses
  %i.ag = mul nsw i64 %.0810.i, %i.s
  %i.ah = getelementptr [8 x i8], ptr %i.r, i64 %i.ag ; 4 uses
  %i.ai = mul nsw i64 %.0810.i, %i.x
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.ai ; 4 uses
  %.not104.not = xor i1 %.not104, true
  %brmerge = select i1 %bound065, i1 true, i1 %.not104.not
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !32, !alias.scope !590
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ak, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = getelementptr [8 x i8], ptr %i.ah, i64 %index ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <2 x double>, ptr %i.am, align 8, !tbaa !32, !alias.scope !591
  %wide.load70.a = load <2 x double>, ptr %i.an, align 8, !tbaa !32, !alias.scope !591
  %i.ao = fmul <2 x double> %wide.load, %broadcast.splat
  %i.ap = fmul <2 x double> %wide.load70.a, %broadcast.splat
  %i.aq = getelementptr i8, ptr %i.al, i64 16     ; 2 uses
  %wide.load71.a = load <2 x double>, ptr %i.al, align 8, !tbaa !32, !alias.scope !592, !noalias !593
  %wide.load72 = load <2 x double>, ptr %i.aq, align 8, !tbaa !32, !alias.scope !592, !noalias !593
  %i.ar = fsub <2 x double> %wide.load71.a, %i.ao
  %i.as = fsub <2 x double> %wide.load72, %i.ap
  store <2 x double> %i.ar, ptr %i.al, align 8, !tbaa !32, !alias.scope !592, !noalias !593
  store <2 x double> %i.as, ptr %i.aq, align 8, !tbaa !32, !alias.scope !592, !noalias !593
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !564

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.au = getelementptr [8 x i8], ptr %i.ah, i64 %.09.i.ph ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.09.i.ph
  %i.aw = load double, ptr %i.av, align 8, !tbaa !32
  %i.ax = load double, ptr %i.aj, align 8, !tbaa !32
  %i.ay = fmul double %i.aw, %i.ax
  %i.az = load double, ptr %i.au, align 8, !tbaa !32
  %i.ba = fsub double %i.az, %i.ay
  store double %i.ba, ptr %i.au, align 8, !tbaa !32
  %i.bb = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %i.bc = icmp eq i64 %i.j, %.neg
  br i1 %i.bc, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bd = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.bd, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li6ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi6ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit, label %.preheader.i, !llvm.loop !565

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.bt, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.be = getelementptr [8 x i8], ptr %i.ah, i64 %.09.i ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.09.i
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !32
  %i.bh = load double, ptr %i.aj, align 8, !tbaa !32
  %i.bi = fmul double %i.bg, %i.bh
  %i.bj = load double, ptr %i.be, align 8, !tbaa !32
  %i.bk = fsub double %i.bj, %i.bi
  store double %i.bk, ptr %i.be, align 8, !tbaa !32
  %i.bl = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.bm = getelementptr [8 x i8], ptr %i.ah, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.bl
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !32
  %i.bp = load double, ptr %i.aj, align 8, !tbaa !32
  %i.bq = fmul double %i.bo, %i.bp
  %i.br = load double, ptr %i.bm, align 8, !tbaa !32
  %i.bs = fsub double %i.br, %i.bq
  store double %i.bs, ptr %i.bm, align 8, !tbaa !32
  %i.bt = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bt, %i.j
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !566

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !220 ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !220 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !594, !nonnull !103, !align !119
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !220
  %i.cc = and i64 %i.cb, 1
  %i.cd = icmp sgt i64 %i.bx, 0
  br i1 %i.cd, label %.lr.ph52, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li6ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi6ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit

.lr.ph52:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.ce = lshr exact i64 %i.d, 3
  %i.cf = and i64 %i.ce, 1
  %i.cg = tail call i64 @llvm.smin.i64(i64 %i.cf, i64 %i.bv)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ci = shl i64 %i.bv, 3                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph52, %._crit_edge
  %.03451 = phi i64 [ 0, %.lr.ph52 ], [ %i.fz, %._crit_edge ] ; 8 uses
  %.03550 = phi i64 [ %i.cg, %.lr.ph52 ], [ %.sroa.speculated, %._crit_edge ] ; 7 uses
  %i.cj = shl i64 %.03451, 3                      ; 2 uses
  %i.ck = sub i64 %i.bv, %.03550                  ; 3 uses
  %i.cl = and i64 %i.ck, -2                       ; 2 uses
  %i.cm = add nsw i64 %i.cl, %.03550              ; 6 uses
  %i.cn = icmp sgt i64 %.03550, 0
  br i1 %i.cn, label %.preheader43.loopexit, label %.preheader43

.preheader43.loopexit:                            ; preds = %bb.c
  %i.co = load ptr, ptr %i.ch, align 8, !tbaa !595, !nonnull !103, !align !119 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 96
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !587, !noalias !596
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 136
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !589, !noalias !596, !nonnull !103, !align !119
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !220, !noalias !596
  %i.cv = mul nsw i64 %i.cu, %.03451
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.cv
  %i.cx = load ptr, ptr %i.co, align 8, !tbaa !585, !noalias !597
  %i.cy = load ptr, ptr %0, align 8, !tbaa !598, !nonnull !103, !align !119 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !238
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.db = load i64, ptr %i.da, align 8, !tbaa !220
  %i.dc = mul nsw i64 %i.db, %.03451
  %i.dd = getelementptr [8 x i8], ptr %i.cz, i64 %i.dc ; 2 uses
  %i.de = load double, ptr %i.cx, align 8, !tbaa !32
  %i.df = load double, ptr %i.cw, align 8, !tbaa !32
  %i.dg = fmul double %i.de, %i.df
  %i.dh = load double, ptr %i.dd, align 8, !tbaa !32
  %i.di = fsub double %i.dh, %i.dg
  store double %i.di, ptr %i.dd, align 8, !tbaa !32
  br label %.preheader43

.preheader43:                                     ; preds = %.preheader43.loopexit, %bb.c
  %i.dj = icmp sgt i64 %i.ck, 1
  br i1 %i.dj, label %.lr.ph47, label %.preheader

.preheader:                                       ; preds = %.lr.ph47, %.preheader43
  %i.dk = icmp slt i64 %i.cm, %i.bv
  br i1 %i.dk, label %.lr.ph49, label %._crit_edge

.lr.ph49:                                         ; preds = %.preheader
  %i.dl = load ptr, ptr %0, align 8, !tbaa !598, !nonnull !103, !align !119 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !238 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !220 ; 2 uses
  %i.dp = mul nsw i64 %i.do, %.03451
  %i.dq = getelementptr [8 x i8], ptr %i.dm, i64 %i.dp ; 2 uses
  %i.dr = load ptr, ptr %i.ch, align 8, !tbaa !595, !nonnull !103, !align !119 ; 3 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !585, !noalias !599 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 96
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !587, !noalias !600 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 136
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !589, !noalias !600, !nonnull !103, !align !119
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !220, !noalias !600 ; 2 uses
  %i.dz = mul nsw i64 %i.dy, %.03451
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.dz ; 3 uses
  %i.eb = add i64 %.03550, %i.cl
  %i.ec = sub i64 %i.bv, %i.eb                    ; 3 uses
  %min.iters.check89 = icmp ult i64 %i.ec, 10
  br i1 %min.iters.check89, label %scalar.ph88.preheader, label %vector.memcheck73

vector.memcheck73:                                ; preds = %.lr.ph49
  %i.ed = mul i64 %i.do, %i.cj                    ; 2 uses
  %i.ee = shl i64 %i.ck, 3
  %i.ef = and i64 %i.ee, -16                      ; 2 uses
  %i.eg = shl i64 %.03550, 3                      ; 2 uses
  %i.eh = getelementptr i8, ptr %i.dm, i64 %i.ed
  %i.ei = getelementptr i8, ptr %i.eh, i64 %i.ef
  %scevgep74.a = getelementptr i8, ptr %i.ei, i64 %i.eg ; 2 uses
  %scevgep75.a = getelementptr i8, ptr %i.dm, i64 %i.ci
  %scevgep76.a = getelementptr i8, ptr %scevgep75.a, i64 %i.ed ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ds, i64 %i.ef
  %scevgep77.a = getelementptr i8, ptr %i.ej, i64 %i.eg
  %scevgep78.a = getelementptr i8, ptr %i.ds, i64 %i.ci
  %scevgep79.a = getelementptr i8, ptr %i.du, i64 8
  %i.ek = mul i64 %i.dy, %i.cj
  %scevgep80 = getelementptr i8, ptr %scevgep79.a, i64 %i.ek
  %bound081 = icmp ult ptr %scevgep74.a, %scevgep78.a
  %bound182 = icmp ult ptr %scevgep77.a, %scevgep76.a
  %found.conflict83 = and i1 %bound081, %bound182
  %bound084 = icmp ult ptr %scevgep74.a, %scevgep80
  %bound185 = icmp ult ptr %i.ea, %scevgep76.a
  %found.conflict86 = and i1 %bound084, %bound185
  %conflict.rdx87 = or i1 %found.conflict83, %found.conflict86
  br i1 %conflict.rdx87, label %scalar.ph88.preheader, label %vector.ph90

vector.ph90:                                      ; preds = %vector.memcheck73
  %n.vec91 = and i64 %i.ec, -4                    ; 3 uses
  %i.el = add i64 %i.cm, %n.vec91
  %i.em = load double, ptr %i.ea, align 8, !tbaa !32, !alias.scope !601
  %broadcast.splatinsert96 = insertelement <2 x double> poison, double %i.em, i64 0
  %broadcast.splat97 = shufflevector <2 x double> %broadcast.splatinsert96, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body92

end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se3_euler?download=true
inline.NumInlined: 5314
inline.NumDeleted: 2988
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN5Eigen8internal15partial_lu_implIdLi0EiLi6EE12unblocked_luERNS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEEPiRi:bb.a

.lr.ph.i.i.i.i.i.i.i.1:                           ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !10
  %i.dc = fdiv double %i.db, %i.co
  store double %i.dc, ptr %i.da, align 8, !tbaa !10
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %.0.i.i.i.i.i.i.i, 2
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi6ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.2:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %i.de = load double, ptr %i.dd, align 8, !tbaa !10
  %i.df = fdiv double %i.de, %i.co
  store double %i.df, ptr %i.dd, align 8, !tbaa !10
  %exitcond.not.i.i.i.i.i.i.i.2 = icmp eq i64 %.0.i.i.i.i.i.i.i, 3
  br i1 %exitcond.not.i.i.i.i.i.i.i.2, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi6ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.i.i.3:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.2
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cn, i64 24 ; 2 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !10
  %i.di = fdiv double %i.dh, %i.co
  store double %i.di, ptr %i.dg, align 8, !tbaa !10
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i64 %.0.i.i.i.i.i.i.i, 4
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi6ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.4

.lr.ph.i.i.i.i.i.i.i.4:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.3
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cn, i64 32 ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !10
  %i.dl = fdiv double %i.dk, %i.co
  store double %i.dl, ptr %i.dj, align 8, !tbaa !10
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
  %wide.load = load <2 x double>, ptr %i.du, align 8, !tbaa !10
  %i.dv = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.dv, ptr %i.du, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !202

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dr, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.preheader178

.lr.ph.i17.i.i.i.i.i.i.preheader178:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.cx, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.ds, %middle.block ]
  br label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader178, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.ea, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader178 ] ; 2 uses
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !10
  %i.dz = fdiv double %i.dy, %i.co
  store double %i.dz, ptr %i.dx, align 8, !tbaa !10
  %i.ea = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i = icmp eq i64 %i.ea, %i.cl
  br i1 %exitcond.not.i19.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !203

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.ec = load <2 x double>, ptr %i.eb, align 16, !tbaa !11
  %i.ed = fdiv <2 x double> %i.ec, %i.do
  store <2 x double> %i.ed, ptr %i.eb, align 16, !tbaa !11
  %i.ee = add nuw nsw i64 %.021.i.i.i.i.i.i, 2    ; 2 uses
  %i.ef = icmp slt i64 %i.ee, %i.cx
  br i1 %i.ef, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !204

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
  %i.eh = load ptr, ptr %0, align 8, !tbaa !98, !noalias !212 ; 3 uses
  %i.ei = load i64, ptr %i.a, align 8, !tbaa !100, !noalias !212 ; 8 uses
  %i.ej = mul nsw i64 %i.ei, %.052170
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.ej ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %.pre-phi173 ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.052170 ; 2 uses
  %i.en = mul nsw i64 %i.ei, %.pre-phi173         ; 2 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.en ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.pre-phi173
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.en ; 2 uses
  store ptr %i.eq, ptr %7, align 8, !tbaa !104, !alias.scope !213
  store i64 %.pre-phi, ptr %i.b, align 8, !tbaa !100, !alias.scope !213
  store i64 %.pre-phi, ptr %i.c, align 8, !tbaa !100, !alias.scope !213
  store ptr %0, ptr %i.d, align 8, !tbaa !214, !alias.scope !213
  store i64 %.pre-phi173, ptr %i.e, align 8, !tbaa !100, !alias.scope !213
  store i64 %.pre-phi173, ptr %i.f, align 8, !tbaa !100, !alias.scope !213
  store i64 %i.ei, ptr %i.g, align 8, !tbaa !215, !alias.scope !213
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
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
  store ptr %i.el, ptr %i.i, align 8, !tbaa !110
  store i64 %i.ei, ptr %i.j, align 8, !tbaa !100
  store ptr %i.eo, ptr %i.k, align 8, !tbaa !112
  store i64 %i.ei, ptr %i.l, align 8, !tbaa !100
  store i64 1, ptr %i.m, align 8, !tbaa !236
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.eq, ptr %4, align 8, !tbaa !120
  store i64 %i.ei, ptr %i.n, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %4, ptr %5, align 8, !tbaa !237
  store ptr %3, ptr %i.o, align 8, !tbaa !238
  store ptr %6, ptr %i.p, align 8, !tbaa !239
  store ptr %7, ptr %i.q, align 8, !tbaa !240
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li6ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi6ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSM_(ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.er = add nuw nsw i64 %.052170, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.er, 5
  br i1 %exitcond.not, label %bb.b, label %.lr.ph.i.i.i.i, !llvm.loop !209
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li6ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi6ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSM_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !269, !nonnull !45, !align !125 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !104
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !100  ; 3 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li6ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi6ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !100  ; 9 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li6ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi6ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !45, !align !125 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.p = load ptr, ptr %0, align 8, !nonnull !45, !align !125 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !120  ; 3 uses
  %i.s = load i64, ptr %i.q, align 8, !tbaa !100  ; 3 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !270, !noalias !271 ; 6 uses
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !272, !noalias !273 ; 3 uses
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !274, !noalias !273, !nonnull !45, !align !125
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !100, !noalias !273 ; 3 uses
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
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !10, !alias.scope !275
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ak, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = getelementptr [8 x i8], ptr %i.ah, i64 %index ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <2 x double>, ptr %i.am, align 8, !tbaa !10, !alias.scope !276
  %wide.load70.a = load <2 x double>, ptr %i.an, align 8, !tbaa !10, !alias.scope !276
  %i.ao = fmul <2 x double> %wide.load, %broadcast.splat
  %i.ap = fmul <2 x double> %wide.load70.a, %broadcast.splat
  %i.aq = getelementptr i8, ptr %i.al, i64 16     ; 2 uses
  %wide.load71.a = load <2 x double>, ptr %i.al, align 8, !tbaa !10, !alias.scope !277, !noalias !278
  %wide.load72 = load <2 x double>, ptr %i.aq, align 8, !tbaa !10, !alias.scope !277, !noalias !278
  %i.ar = fsub <2 x double> %wide.load71.a, %i.ao
  %i.as = fsub <2 x double> %wide.load72, %i.ap
  store <2 x double> %i.ar, ptr %i.al, align 8, !tbaa !10, !alias.scope !277, !noalias !278
  store <2 x double> %i.as, ptr %i.aq, align 8, !tbaa !10, !alias.scope !277, !noalias !278
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !249

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.au = getelementptr [8 x i8], ptr %i.ah, i64 %.09.i.ph ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.09.i.ph
  %i.aw = load double, ptr %i.av, align 8, !tbaa !10
  %i.ax = load double, ptr %i.aj, align 8, !tbaa !10
  %i.ay = fmul double %i.aw, %i.ax
  %i.az = load double, ptr %i.au, align 8, !tbaa !10
  %i.ba = fsub double %i.az, %i.ay
  store double %i.ba, ptr %i.au, align 8, !tbaa !10
  %i.bb = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %i.bc = icmp eq i64 %i.j, %.neg
  br i1 %i.bc, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bd = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.bd, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li6ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi6ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit, label %.preheader.i, !llvm.loop !250

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.bt, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.be = getelementptr [8 x i8], ptr %i.ah, i64 %.09.i ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.09.i
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !10
  %i.bh = load double, ptr %i.aj, align 8, !tbaa !10
  %i.bi = fmul double %i.bg, %i.bh
  %i.bj = load double, ptr %i.be, align 8, !tbaa !10
  %i.bk = fsub double %i.bj, %i.bi
  store double %i.bk, ptr %i.be, align 8, !tbaa !10
  %i.bl = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.bm = getelementptr [8 x i8], ptr %i.ah, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.bl
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !10
  %i.bp = load double, ptr %i.aj, align 8, !tbaa !10
  %i.bq = fmul double %i.bo, %i.bp
  %i.br = load double, ptr %i.bm, align 8, !tbaa !10
  %i.bs = fsub double %i.br, %i.bq
  store double %i.bs, ptr %i.bm, align 8, !tbaa !10
  %i.bt = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bt, %i.j
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !251

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !100 ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !100 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !279, !nonnull !45, !align !125
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !100
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
  %i.co = load ptr, ptr %i.ch, align 8, !tbaa !280, !nonnull !45, !align !125 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 96
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !272, !noalias !281
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 136
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !274, !noalias !281, !nonnull !45, !align !125
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !100, !noalias !281
  %i.cv = mul nsw i64 %i.cu, %.03451
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.cv
  %i.cx = load ptr, ptr %i.co, align 8, !tbaa !270, !noalias !282
  %i.cy = load ptr, ptr %0, align 8, !tbaa !283, !nonnull !45, !align !125 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !120
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.db = load i64, ptr %i.da, align 8, !tbaa !100
  %i.dc = mul nsw i64 %i.db, %.03451
  %i.dd = getelementptr [8 x i8], ptr %i.cz, i64 %i.dc ; 2 uses
  %i.de = load double, ptr %i.cx, align 8, !tbaa !10
  %i.df = load double, ptr %i.cw, align 8, !tbaa !10
  %i.dg = fmul double %i.de, %i.df
  %i.dh = load double, ptr %i.dd, align 8, !tbaa !10
  %i.di = fsub double %i.dh, %i.dg
  store double %i.di, ptr %i.dd, align 8, !tbaa !10
  br label %.preheader43

.preheader43:                                     ; preds = %.preheader43.loopexit, %bb.c
  %i.dj = icmp sgt i64 %i.ck, 1
  br i1 %i.dj, label %.lr.ph47, label %.preheader

.preheader:                                       ; preds = %.lr.ph47, %.preheader43
  %i.dk = icmp slt i64 %i.cm, %i.bv
  br i1 %i.dk, label %.lr.ph49, label %._crit_edge

.lr.ph49:                                         ; preds = %.preheader
  %i.dl = load ptr, ptr %0, align 8, !tbaa !283, !nonnull !45, !align !125 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !120 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !100 ; 2 uses
  %i.dp = mul nsw i64 %i.do, %.03451
  %i.dq = getelementptr [8 x i8], ptr %i.dm, i64 %i.dp ; 2 uses
  %i.dr = load ptr, ptr %i.ch, align 8, !tbaa !280, !nonnull !45, !align !125 ; 3 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !270, !noalias !284 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 96
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !272, !noalias !285 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 136
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !274, !noalias !285, !nonnull !45, !align !125
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !100, !noalias !285 ; 2 uses
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
  %i.em = load double, ptr %i.ea, align 8, !tbaa !10, !alias.scope !286
  %broadcast.splatinsert96 = insertelement <2 x double> poison, double %i.em, i64 0
  %broadcast.splat97 = shufflevector <2 x double> %broadcast.splatinsert96, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body92

end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi5ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE:bb.a
  br i1 %i.gu, label %bb.w, label %.loopexit.us, !llvm.loop !298

.loopexit.us:                                     ; preds = %bb.aa
  %indvars.iv.next = sub i64 %indvars.iv, %i.b
  %indvar.next = add i64 %indvar, 1
  br label %.lr.ph314.us, !llvm.loop !299

.lr.ph.us330:                                     ; preds = %._crit_edge315.us
  %i.gv = mul nsw i64 %.0132323.us, %3
  %invariant.gep.us331 = getelementptr [8 x i8], ptr %2, i64 %i.gv
  br label %bb.w

.split.us.split.us:                               ; preds = %._crit_edge305.split.us.us
  %i.gw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %.body

.split317.us.split.us:                            ; preds = %bb.s
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %.body

.split320.us.split.us:                            ; preds = %bb.t
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %.body

.loopexit:                                        ; preds = %bb.ai
  %i.gz = sub nsw i64 %0, %i.hd
  %.sroa.speculated218 = call i64 @llvm.smin.i64(i64 %i.b, i64 %i.gz)
  %i.ha = add nsw i64 %i.hd, %i.b                 ; 2 uses
  %i.hb = icmp slt i64 %i.ha, %0
  br i1 %i.hb, label %.lr.ph, label %._crit_edge, !llvm.loop !299

._crit_edge:                                      ; preds = %.loopexit, %._crit_edge315.us, %.lr.ph325.split.preheader, %bb.p, %.thread.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %i.af, label %bb.ab, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.ab:                                            ; preds = %._crit_edge
  call void @free(ptr noundef %i.ad) #22
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %._crit_edge, %bb.ab
  br i1 %i.s, label %bb.ac, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197

bb.ac:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.q) #22
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.ac
  ret void

bb.ad:                                            ; preds = %.invoke
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit202

.lr.ph:                                           ; preds = %.lr.ph325.split.preheader, %.loopexit
  %i.hd = phi i64 [ %i.ha, %.loopexit ], [ %i.b, %.lr.ph325.split.preheader ] ; 4 uses
  %.sroa.speculated218380 = phi i64 [ %.sroa.speculated218, %.loopexit ], [ %i.b, %.lr.ph325.split.preheader ] ; 2 uses
  %.0132323379 = phi i64 [ %i.hd, %.loopexit ], [ 0, %.lr.ph325.split.preheader ]
  %i.he = mul nsw i64 %.0132323379, %3
  %invariant.gep = getelementptr [8 x i8], ptr %2, i64 %i.he
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph, %bb.ai
  %.0322 = phi i64 [ %i.hd, %.lr.ph ], [ %i.hi, %bb.ai ] ; 4 uses
  %i.hf = sub nsw i64 %0, %.0322
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %i.hf, i64 %.sroa.speculated243) ; 3 uses
  %i.hg = icmp sgt i64 %.sroa.speculated, 0
  br i1 %i.hg, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0322
  store ptr %gep, ptr %14, align 8
  store i64 %3, ptr %i.as, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %.sroa.speculated218380, i64 noundef %.sroa.speculated, i64 noundef 0, i64 noundef 0)
          to label %bb.ag unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.hh = getelementptr [8 x i8], ptr %4, i64 %.0322
  store ptr %i.hh, ptr %15, align 8
  store i64 %6, ptr %i.at, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ae, i64 noundef %.sroa.speculated, i64 noundef %.sroa.speculated218380, i64 noundef %1, double noundef -1.000000e+00, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.ah unwind label %.split337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.ai

.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.x, %bb.af
  %lpad.loopexit.split-lp393 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %.body

.split337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.y, %bb.ag
  %lpad.loopexit.split-lp395 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %.body

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %i.hi = add nsw i64 %.0322, %.sroa.speculated243 ; 2 uses
  %i.hj = icmp slt i64 %i.hi, %0
  br i1 %i.hj, label %bb.ae, label %.loopexit, !llvm.loop !298

.body:                                            ; preds = %.split.us.split.us, %.split320.us.split.us, %.split317.us.split.us, %.split337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.n
  %.pn161.pn.pn.pn = phi { ptr, i32 } [ %i.aj, %bb.n ], [ %lpad.loopexit.split-lp393, %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.gx, %.split317.us.split.us ], [ %lpad.loopexit.split-lp395, %.split337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.gw, %.split.us.split.us ], [ %i.gy, %.split320.us.split.us ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %i.af, label %bb.aj, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit202

bb.aj:                                            ; preds = %.body
  call void @free(ptr noundef %i.ad) #22
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit202

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit202: ; preds = %.body, %bb.aj, %bb.ad
  %.pn161.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hc, %bb.ad ], [ %.pn161.pn.pn.pn, %bb.aj ], [ %.pn161.pn.pn.pn, %.body ]
  br i1 %i.s, label %bb.ak, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit203

bb.ak:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit202
  call void @free(ptr noundef %i.q) #22
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit203

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit203: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit202, %bb.ak
  resume { ptr, i32 } %.pn161.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi0ELb0ELb1EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !315
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 5 uses
  %i.d = icmp sgt i64 %4, 3
  br i1 %i.d, label %.lr.ph78, label %.preheader

.lr.ph78:                                         ; preds = %bb.a
  %i.e = shl i64 %6, 2                            ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !130    ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !131  ; 12 uses
  %i.i = icmp sgt i64 %3, 0
  %i.j = add i64 %3, %6
  %i.k = sub i64 %5, %i.j
  %i.l = shl i64 %i.k, 2                          ; 2 uses
  br i1 %i.i, label %.lr.ph.us.preheader, label %.lr.ph78.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph78
  %i.m = add nsw i64 %3, -1                       ; 2 uses
  %i.n = shl i64 %6, 5                            ; 3 uses
  %i.o = getelementptr i8, ptr %1, i64 %i.n
  %scevgep = getelementptr i8, ptr %i.o, i64 8
  %i.p = getelementptr i8, ptr %1, i64 %i.n
  %scevgep100 = getelementptr i8, ptr %i.p, i64 16
  %i.q = getelementptr i8, ptr %1, i64 %i.n
  %scevgep102 = getelementptr i8, ptr %i.q, i64 24
  %i.r = shl i64 %6, 5
  %scevgep104 = getelementptr i8, ptr %1, i64 %i.r
  %i.s = add i64 %6, %3
  %i.t = shl i64 %i.s, 5
  %scevgep106 = getelementptr i8, ptr %1, i64 %i.t
  %i.u = mul i64 %i.h, 24
  %scevgep108 = getelementptr i8, ptr %i.f, i64 %i.u
  %smax109 = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.v = add nsw i64 %smax109, -4                 ; 2 uses
  %i.w = lshr exact i64 %i.v, 2
  %i.x = shl i64 %i.v, 3                          ; 3 uses
  %i.y = or disjoint i64 %i.x, 24
  %i.z = mul i64 %i.h, %i.y
  %i.aa = shl i64 %3, 3                           ; 4 uses
  %i.ab = getelementptr i8, ptr %i.f, i64 %i.z
  %scevgep110 = getelementptr i8, ptr %i.ab, i64 %i.aa
  %i.ac = shl i64 %i.h, 4
  %scevgep111 = getelementptr i8, ptr %i.f, i64 %i.ac
  %i.ad = or disjoint i64 %i.x, 16
  %i.ae = mul i64 %i.h, %i.ad
  %i.af = getelementptr i8, ptr %i.f, i64 %i.ae
  %scevgep112 = getelementptr i8, ptr %i.af, i64 %i.aa
  %i.ag = shl i64 %i.h, 3
  %scevgep113 = getelementptr i8, ptr %i.f, i64 %i.ag
  %i.ah = or disjoint i64 %i.x, 8
  %i.ai = mul i64 %i.h, %i.ah
  %i.aj = getelementptr i8, ptr %i.f, i64 %i.ai
  %scevgep114 = getelementptr i8, ptr %i.aj, i64 %i.aa
  %i.ak = mul i64 %i.h, %i.w
  %i.al = shl i64 %i.ak, 5
  %i.am = getelementptr i8, ptr %i.f, i64 %i.al
  %scevgep115 = getelementptr i8, ptr %i.am, i64 %i.aa
  %min.iters.check = icmp ult i64 %3, 28
  %mul.result = shl i64 %i.m, 5                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.m, 576460752303423487
  %.mask = and i64 %i.h, 288230376151711744
  %stride.check119 = icmp ne i64 %.mask, 0
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
  %i.an = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.05076.us = phi i64 [ %i.dn, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %.05175.us = phi i64 [ %i.dm, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %i.ao = add nsw i64 %.05175.us, %i.e            ; 5 uses
  %i.ap = mul nsw i64 %i.h, %.05076.us
  %i.aq = getelementptr [8 x i8], ptr %i.f, i64 %i.ap ; 4 uses
  %i.ar = or disjoint i64 %.05076.us, 1
  %i.as = mul nsw i64 %i.h, %i.ar
  %i.at = getelementptr [8 x i8], ptr %i.f, i64 %i.as ; 4 uses
  %i.au = or disjoint i64 %.05076.us, 2
  %i.av = mul nsw i64 %i.h, %i.au
  %i.aw = getelementptr [8 x i8], ptr %i.f, i64 %i.av ; 4 uses
  %i.ax = or disjoint i64 %.05076.us, 3
  %i.ay = mul nsw i64 %i.h, %i.ax
  %i.az = getelementptr [8 x i8], ptr %i.f, i64 %i.ay ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.us
  %i.ba = shl i64 %.05175.us, 3                   ; 3 uses
  %scevgep99 = getelementptr i8, ptr %scevgep, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %scevgep99, i64 %mul.result
  %i.bc = icmp ult ptr %i.bb, %scevgep99
  %scevgep101 = getelementptr i8, ptr %scevgep100, i64 %i.ba ; 2 uses
  %i.bd = getelementptr i8, ptr %scevgep101, i64 %mul.result
  %i.be = icmp ult ptr %i.bd, %scevgep101
  %scevgep103 = getelementptr i8, ptr %scevgep102, i64 %i.ba ; 2 uses
  %i.bf = getelementptr i8, ptr %scevgep103, i64 %mul.result
  %i.bg = icmp ult ptr %i.bf, %scevgep103
  %i.bh = or i1 %i.bg, %mul.overflow
  %i.bi = or i1 %i.be, %i.bc
  %i.bj = or i1 %i.bi, %i.bh
  br i1 %i.bj, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bk = shl i64 %.05175.us, 3                   ; 2 uses
  %scevgep105 = getelementptr i8, ptr %scevgep104, i64 %i.bk ; 4 uses
  %scevgep107 = getelementptr i8, ptr %scevgep106, i64 %i.bk ; 4 uses
  %bound0 = icmp ult ptr %scevgep105, %scevgep110
  %bound1 = icmp ult ptr %scevgep108, %scevgep107
  %found.conflict = and i1 %bound0, %bound1
  %7 = or i1 %found.conflict, %stride.check119
  %bound1117.a = icmp ult ptr %scevgep105, %scevgep112
  %bound1117 = icmp ult ptr %scevgep111, %scevgep107
  %found.conflict118 = and i1 %bound1117.a, %bound1117
  %conflict.rdx = or i1 %7, %found.conflict118
  %bound0120 = icmp ult ptr %scevgep105, %scevgep114
  %bound1121 = icmp ult ptr %scevgep113, %scevgep107
  %found.conflict122 = and i1 %bound0120, %bound1121
  %conflict.rdx124 = or i1 %conflict.rdx, %found.conflict122
  %bound0125 = icmp ult ptr %scevgep105, %scevgep115
  %bound1126 = icmp ult ptr %i.f, %scevgep107
  %found.conflict127 = and i1 %bound0125, %bound1126
  %conflict.rdx129 = or i1 %conflict.rdx124, %found.conflict127
  br i1 %conflict.rdx129, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bl = add i64 %i.ao, %i.an                    ; 2 uses
  %i.bm = getelementptr [8 x i8], ptr %1, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index
  %wide.load = load <2 x double>, ptr %i.bn, align 8, !tbaa !10, !alias.scope !316
  %.idx = shl i64 %index, 5
  %i.bo = getelementptr i8, ptr %i.bm, i64 %.idx
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %index
  %wide.load130 = load <2 x double>, ptr %i.bp, align 8, !tbaa !10, !alias.scope !317
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index
  %wide.load131 = load <2 x double>, ptr %i.bq, align 8, !tbaa !10, !alias.scope !318
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %index
  %wide.load132 = load <2 x double>, ptr %i.br, align 8, !tbaa !10, !alias.scope !319
  %i.bs = shufflevector <2 x double> %wide.load, <2 x double> %wide.load130, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bt = shufflevector <2 x double> %wide.load131, <2 x double> %wide.load132, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.bs, <4 x double> %i.bt, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.bo, align 8, !tbaa !10, !alias.scope !320, !noalias !321
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !308

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04974.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.173.us.ph = phi i64 [ %i.ao, %vector.memcheck ], [ %i.ao, %vector.scevcheck ], [ %i.ao, %.lr.ph.us ], [ %i.bl, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04974.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.04974.us.ph
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !10
  %i.bx = getelementptr inbounds [8 x i8], ptr %1, i64 %.173.us.ph ; 4 uses
  store double %i.bw, ptr %i.bx, align 8, !tbaa !10
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.04974.us.ph
  %i.bz = load double, ptr %i.by, align 8, !tbaa !10
  %i.ca = getelementptr i8, ptr %i.bx, i64 8
  store double %i.bz, ptr %i.ca, align 8, !tbaa !10
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.04974.us.ph
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !10
  %i.cd = getelementptr i8, ptr %i.bx, i64 16
  store double %i.cc, ptr %i.cd, align 8, !tbaa !10
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.04974.us.ph
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !10
  %i.cg = getelementptr i8, ptr %i.bx, i64 24
  store double %i.cf, ptr %i.cg, align 8, !tbaa !10
  %i.ch = add nsw i64 %.173.us.ph, 4              ; 2 uses
  %i.ci = or disjoint i64 %.04974.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa149.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ch, %scalar.ph.prol ]
  %.04974.us.unr = phi i64 [ %.04974.us.ph, %scalar.ph.preheader ], [ %i.ci, %scalar.ph.prol ]
  %.173.us.unr = phi i64 [ %.173.us.ph, %scalar.ph.preheader ], [ %i.ch, %scalar.ph.prol ]
  %i.cj = icmp eq i64 %3, %.neg
  br i1 %i.cj, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04974.us = phi i64 [ %i.dl, %scalar.ph ], [ %.04974.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.173.us = phi i64 [ %i.dk, %scalar.ph ], [ %.173.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.04974.us
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !10
  %i.cm = getelementptr inbounds [8 x i8], ptr %1, i64 %.173.us ; 4 uses
  store double %i.cl, ptr %i.cm, align 8, !tbaa !10
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.04974.us
  %i.co = load double, ptr %i.cn, align 8, !tbaa !10
  %i.cp = getelementptr i8, ptr %i.cm, i64 8
  store double %i.co, ptr %i.cp, align 8, !tbaa !10
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.04974.us
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !10
  %i.cs = getelementptr i8, ptr %i.cm, i64 16
  store double %i.cr, ptr %i.cs, align 8, !tbaa !10
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.04974.us
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !10
  %i.cv = getelementptr i8, ptr %i.cm, i64 24
  store double %i.cu, ptr %i.cv, align 8, !tbaa !10
  %i.cw = add nuw nsw i64 %.04974.us, 1           ; 4 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.cw
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !10
  %i.cz = getelementptr [8 x i8], ptr %1, i64 %.173.us ; 4 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 32
  store double %i.cy, ptr %i.da, align 8, !tbaa !10
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.cw
  %i.dc = load double, ptr %i.db, align 8, !tbaa !10
  %i.dd = getelementptr i8, ptr %i.cz, i64 40
  store double %i.dc, ptr %i.dd, align 8, !tbaa !10
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.cw
  %i.df = load double, ptr %i.de, align 8, !tbaa !10
  %i.dg = getelementptr i8, ptr %i.cz, i64 48
  store double %i.df, ptr %i.dg, align 8, !tbaa !10
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.cw
  %i.di = load double, ptr %i.dh, align 8, !tbaa !10
  %i.dj = getelementptr i8, ptr %i.cz, i64 56
  store double %i.di, ptr %i.dj, align 8, !tbaa !10
  %i.dk = add nsw i64 %.173.us, 8                 ; 2 uses
  %i.dl = add nuw nsw i64 %.04974.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dl, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !309

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa97 = phi i64 [ %i.bl, %middle.block ], [ %.lcssa149.unr, %scalar.ph.prol.loopexit ], [ %i.dk, %scalar.ph ]
  %i.dm = add nsw i64 %.lcssa97, %i.l             ; 2 uses
  %i.dn = add nuw nsw i64 %.05076.us, 4           ; 2 uses
  %i.do = icmp slt i64 %i.dn, %i.c
  br i1 %i.do, label %.lr.ph.us, label %.preheader, !llvm.loop !310

.lr.ph78.split:                                   ; preds = %.lr.ph78
  %invariant.op = add i64 %i.e, %i.l
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.dp = add nsw i64 %smax, -4
  %i.dq = lshr exact i64 %i.dp, 2
  %i.dr = mul i64 %i.dq, %invariant.op
  %i.ds = shl i64 %5, 2
  %i.dt = add i64 %i.dr, %i.ds
  %i.du = shl i64 %3, 2
  %i.dv = sub i64 %i.dt, %i.du
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph78.split, %bb.a
  %.051.lcssa = phi i64 [ 0, %bb.a ], [ %i.dv, %.lr.ph78.split ], [ %i.dm, %._crit_edge.us ]
  %i.dw = icmp slt i64 %i.c, %4
  br i1 %i.dw, label %.lr.ph84, label %._crit_edge85.split

.lr.ph84:                                         ; preds = %.preheader
  %i.dx = load ptr, ptr %2, align 8, !tbaa !130   ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !131 ; 3 uses
  %i.ea = icmp sgt i64 %3, 0
  %i.eb = add i64 %3, %6
  %i.ec = sub i64 %5, %i.eb
  br i1 %i.ea, label %.lr.ph.preheader, label %._crit_edge85.split

.lr.ph.preheader:                                 ; preds = %.lr.ph84
  %i.ed = ptrtoaddr ptr %i.dx to i64
  %i.ee = mul i64 %i.dz, %i.b
  %i.ef = shl i64 %i.ee, 5
  %i.eg = add i64 %i.ef, %i.ed
  %i.eh = sub i64 %i.a, %i.eg
  %i.ei = mul i64 %i.dz, -8
  %min.iters.check136 = icmp ult i64 %3, 4
  %n.vec138 = and i64 %3, 9223372036854775804     ; 4 uses
  %cmp.n145 = icmp eq i64 %3, %n.vec138
  %xtraiter151 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod152.not = icmp eq i64 %xtraiter151, 0
  br label %.lr.ph

._crit_edge85.split:                              ; preds = %._crit_edge, %.lr.ph84, %.preheader
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.04883 = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.fg, %._crit_edge ] ; 2 uses
  %.282 = phi i64 [ %.051.lcssa, %.lr.ph.preheader ], [ %i.ff, %._crit_edge ]
  %i.ej = add i64 %.282, %6                       ; 5 uses
  %i.ek = mul nsw i64 %i.dz, %.04883
  %i.el = getelementptr [8 x i8], ptr %i.dx, i64 %i.ek ; 6 uses
  br i1 %min.iters.check136, label %scalar.ph135.preheader, label %vector.memcheck134

vector.memcheck134:                               ; preds = %.lr.ph
  %i.em = mul i64 %i.ei, %indvar
  %i.en = add i64 %i.eh, %i.em
  %i.eo = shl i64 %i.ej, 3
  %i.ep = add i64 %i.en, %i.eo
  %i.eq = add i64 %i.ep, -1
  %diff.check = icmp ult i64 %i.eq, 31
  br i1 %diff.check, label %scalar.ph135.preheader, label %vector.ph137

vector.ph137:                                     ; preds = %vector.memcheck134
  %i.er = add i64 %i.ej, %n.vec138                ; 2 uses
  %i.es = getelementptr [8 x i8], ptr %1, i64 %i.ej
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph137
  %index140 = phi i64 [ 0, %vector.ph137 ], [ %index.next143, %vector.body139 ] ; 3 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %index140 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %wide.load141 = load <2 x double>, ptr %i.et, align 8, !tbaa !10
  %wide.load142 = load <2 x double>, ptr %i.eu, align 8, !tbaa !10
  %i.ev = getelementptr [8 x i8], ptr %i.es, i64 %index140 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store <2 x double> %wide.load141, ptr %i.ev, align 8, !tbaa !10
  store <2 x double> %wide.load142, ptr %i.ew, align 8, !tbaa !10
  %index.next143 = add nuw i64 %index140, 4       ; 2 uses
  %i.ex = icmp eq i64 %index.next143, %n.vec138
  br i1 %i.ex, label %middle.block144, label %vector.body139, !llvm.loop !311

middle.block144:                                  ; preds = %vector.body139
  br i1 %cmp.n145, label %._crit_edge, label %scalar.ph135.preheader

scalar.ph135.preheader:                           ; preds = %vector.memcheck134, %.lr.ph, %middle.block144
  %.081.ph = phi i64 [ 0, %vector.memcheck134 ], [ 0, %.lr.ph ], [ %n.vec138, %middle.block144 ] ; 3 uses
  %.380.ph = phi i64 [ %i.ej, %vector.memcheck134 ], [ %i.ej, %.lr.ph ], [ %i.er, %middle.block144 ] ; 2 uses
  br i1 %lcmp.mod152.not, label %scalar.ph135.prol.loopexit, label %scalar.ph135.prol
end_hunk_1

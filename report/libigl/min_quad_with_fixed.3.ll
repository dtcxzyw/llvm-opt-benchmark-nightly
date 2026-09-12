Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min_quad_with_fixed.3?download=true
inline.NumInlined: 35270
inline.NumDeleted: 18986
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 103
loop-unroll.NumUnrolled: 152
begin_hunk_0_@_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNSR_IKNS4_INS4_IS6_Li1ELi3ELb0EEELi1ELin1ELb0EEEEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERS12_:bb.a

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNSR_IKNS4_INS4_IS6_Li1ELi3ELb0EEELi1ELin1ELb0EEEEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERS12_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11_solve_implINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS1_IdLi3ELi1ELi0ELi3ELi1EEEEES9_EEvRKT_RT0_(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.4169", align 1 ; 6 uses
  %4 = alloca %"class.Eigen::Block.3413", align 8 ; 10 uses
  %5 = alloca %"class.Eigen::Block.3435", align 8 ; 9 uses
  %6 = alloca %"class.Eigen::Matrix.1127", align 8 ; 3 uses
  %7 = alloca %"class.Eigen::Matrix", align 16    ; 9 uses
  %8 = alloca %"class.Eigen::TriangularView.3369", align 8 ; 9 uses
  %9 = alloca %"class.Eigen::Block.3382", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load double, ptr %i.a, align 8, !tbaa !215
  %i.c = tail call noundef double @llvm.fabs.f64(double %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 209
  %i.e = load i8, ptr %i.d, align 1, !tbaa !68, !range !14, !noundef !15
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = load double, ptr %i.g, align 8
  %i.i = select i1 %i.f, double %i.h, double f0x3CC8000000000000
  %i.j = fmul double %i.c, %i.i                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.l = load i64, ptr %i.k, align 8, !tbaa !216  ; 5 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i.preheader, label %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit.thread

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.l, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader69, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.l, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.j, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi68 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %i.n = or disjoint i64 %index, 1                ; 2 uses
  %i.o = or disjoint i64 %index, 2                ; 2 uses
  %i.p = or disjoint i64 %index, 3                ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %0, i64 %index
  %i.r = getelementptr [8 x i8], ptr %0, i64 %i.n
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.o
  %i.t = getelementptr [8 x i8], ptr %0, i64 %i.p
  %i.u = mul i64 %index, 24
  %i.v = mul i64 %i.n, 24
  %i.w = mul i64 %i.o, 24
  %i.x = mul i64 %i.p, 24
  %i.y = getelementptr i8, ptr %i.q, i64 %i.u
  %i.z = getelementptr i8, ptr %i.r, i64 %i.v
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.w
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.x
  %i.ac = load double, ptr %i.y, align 8, !tbaa !11
  %i.ad = load double, ptr %i.z, align 8, !tbaa !11
  %i.ae = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.ad, i64 1
  %i.ag = load double, ptr %i.aa, align 8, !tbaa !11
  %i.ah = load double, ptr %i.ab, align 8, !tbaa !11
  %i.ai = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.aj = insertelement <2 x double> %i.ai, double %i.ah, i64 1
  %i.ak = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.af)
  %i.al = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aj)
  %i.am = fcmp ogt <2 x double> %i.ak, %broadcast.splat
  %i.an = fcmp ogt <2 x double> %i.al, %broadcast.splat
  %i.ao = zext <2 x i1> %i.am to <2 x i64>
  %i.ap = zext <2 x i1> %i.an to <2 x i64>
  %i.aq = add <2 x i64> %vec.phi, %i.ao           ; 2 uses
  %i.ar = add <2 x i64> %vec.phi68, %i.ap         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !1076

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ar, %i.aq
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit, label %.lr.ph.i.i.preheader69

.lr.ph.i.i.preheader69:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.078.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader69, %.lr.ph.i.i
  %.09.i.i = phi i64 [ %i.bb, %.lr.ph.i.i ], [ %.09.i.i.ph, %.lr.ph.i.i.preheader69 ] ; 3 uses
  %.078.i.i = phi i64 [ %i.ba, %.lr.ph.i.i ], [ %.078.i.i.ph, %.lr.ph.i.i.preheader69 ]
  %i.au = getelementptr [8 x i8], ptr %0, i64 %.09.i.i
  %.idx.i.i.i = mul i64 %.09.i.i, 24
  %i.av = getelementptr i8, ptr %i.au, i64 %.idx.i.i.i
  %i.aw = load double, ptr %i.av, align 8, !tbaa !11
  %i.ax = tail call noundef double @llvm.fabs.f64(double %i.aw)
  %i.ay = fcmp ogt double %i.ax, %i.j
  %i.az = zext i1 %i.ay to i64
  %i.ba = add i64 %.078.i.i, %i.az                ; 2 uses
  %i.bb = add nuw nsw i64 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bb, %i.l
  br i1 %exitcond.not.i.i, label %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit, label %.lr.ph.i.i, !llvm.loop !1077

_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit: ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa = phi i64 [ %i.at, %middle.block ], [ %i.ba, %.lr.ph.i.i ] ; 11 uses
  %i.bc = icmp eq i64 %.lcssa, 0
  br i1 %i.bc, label %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit.thread, label %.lr.ph.i.i18

_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit.thread: ; preds = %bb.a, %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %bb.f

.lr.ph.i.i18:                                     ; preds = %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.bd = load ptr, ptr %1, align 8, !tbaa !1090, !nonnull !15, !align !151 ; 2 uses
  %i.be = load <2 x double>, ptr %i.bd, align 8, !tbaa !9
  %i.bf = fneg <2 x double> %i.be
  store <2 x double> %i.bf, ptr %7, align 16, !tbaa !9
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bh = getelementptr i8, ptr %i.bd, i64 16
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !11
  %i.bj = fneg double %i.bi
  store double %i.bj, ptr %i.bg, align 16, !tbaa !11
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 48
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i, %.lr.ph.i.i18
  %.061.i.i = phi i64 [ %i.by, %.lr.ph.split.i.i ], [ 0, %.lr.ph.i.i18 ] ; 8 uses
  %i.bw = sub nsw i64 3, %.061.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.061.i.i
  store ptr %i.bx, ptr %4, align 8, !tbaa !286, !alias.scope !1091
  store i64 %i.bw, ptr %i.bl, align 8, !tbaa !107, !alias.scope !1091
  store i64 1, ptr %i.bm, align 8, !tbaa !107, !alias.scope !1091
  store ptr %7, ptr %i.bn, align 8, !tbaa !70, !alias.scope !1091
  store i64 %.061.i.i, ptr %i.bo, align 8, !tbaa !107, !alias.scope !1091
  store i64 0, ptr %i.bp, align 8, !tbaa !107, !alias.scope !1091
  store i64 3, ptr %i.bq, align 8, !tbaa !1092, !alias.scope !1091
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.by = add nuw i64 %.061.i.i, 1                ; 4 uses
  %i.bz = sub nsw i64 2, %.061.i.i
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.by
  %.idx.i.i.i.i.i.i.i = mul nuw nsw i64 %.061.i.i, 24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx.i.i.i.i.i.i.i
  store ptr %i.cb, ptr %5, align 8, !tbaa !1094, !alias.scope !1095
  store i64 %i.bz, ptr %i.br, align 8, !tbaa !107, !alias.scope !1095
  store ptr %0, ptr %i.bs, align 8, !tbaa !220, !alias.scope !1095
  store i64 %i.by, ptr %i.bt, align 8, !tbaa !107, !alias.scope !1095
  store i64 %.061.i.i, ptr %i.bu, align 8, !tbaa !107, !alias.scope !1095
  store i64 3, ptr %i.bv, align 8, !tbaa !1097, !alias.scope !1095
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.061.i.i
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %exitcond.not = icmp eq i64 %i.by, %.lcssa
  br i1 %exitcond.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i, !llvm.loop !1084

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %.sroa.728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.728.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %0, ptr %8, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.lcssa, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %.lcssa, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %0, ptr %.sroa.627.0..sroa_idx, align 8
  %.sroa.829.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 3, ptr %.sroa.829.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  store ptr %2, ptr %9, align 8, !tbaa !290, !alias.scope !1098
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %.lcssa, ptr %i.cd, align 8, !tbaa !107, !alias.scope !1098
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %2, ptr %i.ce, align 8, !tbaa !70, !alias.scope !1098
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 0, ptr %i.cf, align 8, !tbaa !107, !alias.scope !1098
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i64 3, ptr %i.cg, align 8, !tbaa !1101, !alias.scope !1098
  %i.ch = ptrtoint ptr %2 to i64
  %i.ci = lshr exact i64 %i.ch, 3
  %i.cj = and i64 %i.ci, 1                        ; 2 uses
  %i.ck = call i64 @llvm.smin.i64(i64 %i.cj, i64 %.lcssa) ; 8 uses
  %i.cl = sub i64 %.lcssa, %i.ck                  ; 4 uses
  %i.cm = and i64 %i.cl, 9223372036854775806      ; 2 uses
  %i.cn = or disjoint i64 %i.cm, %i.ck
  %.not53 = icmp eq i64 %i.cj, 0
  br i1 %.not53, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.co = shl nuw i64 %i.ck, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 16 %7, i64 %i.co, i1 false), !tbaa !11
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %10 = icmp samesign ugt i64 %i.cl, 1
  br i1 %10, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cp = shl nuw i64 %i.ck, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.cp
  %scevgep56 = getelementptr i8, ptr %7, i64 %i.cp
  %i.cq = add nsw i64 %i.ck, %i.cm
  %i.cr = add nsw i64 %i.ck, 2
  %umax = call i64 @llvm.umax.i64(i64 %i.cq, i64 %i.cr)
  %i.cs = xor i64 %i.ck, -1
  %i.ct = add i64 %umax, %i.cs
  %i.cu = shl i64 %i.ct, 3
  %i.cv = and i64 %i.cu, -16
  %i.cw = add i64 %i.cv, 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %scevgep, ptr align 8 %scevgep56, i64 %i.cw, i1 false), !tbaa !9
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cx = icmp samesign ult i64 %i.cn, %.lcssa
  br i1 %i.cx, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cy = and i64 %i.cl, 2305843009213693950
  %i.cz = add nsw i64 %i.ck, %i.cy
  %i.da = shl i64 %i.cz, 3                        ; 2 uses
  %scevgep57 = getelementptr i8, ptr %2, i64 %i.da
  %scevgep58 = getelementptr i8, ptr %7, i64 %i.da
  %i.db = shl i64 %i.cl, 3
  %i.dc = and i64 %i.db, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep57, ptr align 8 %scevgep58, i64 %i.dc, i1 false), !tbaa !11
  br label %_ZN5Eigen5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZN5Eigen8internal26triangular_solver_selectorIKNS_5BlockIKNS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEENS2_INS3_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1ELi2ELi0ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.dd = icmp samesign ult i64 %.lcssa, 3
  br i1 %i.dd, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.b

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.de = sub nuw nsw i64 3, %.lcssa              ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.lcssa ; 4 uses
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = lshr exact i64 %i.dg, 3
  %i.di = and i64 %i.dh, 1                        ; 3 uses
  %i.dj = sub nuw nsw i64 %i.de, %i.di            ; 3 uses
  %i.dk = and i64 %i.dj, 2
  %i.dl = or disjoint i64 %i.dk, %i.di            ; 2 uses
  %.not = icmp eq i64 %i.di, 0
  br i1 %.not, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 0, ptr %i.df, align 8
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i46 = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.dm = icmp samesign ugt i64 %i.dj, 1
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dn = shl nuw nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i46, 3
  %scevgep.i = getelementptr i8, ptr %i.df, i64 %i.dn
  %i.do = or disjoint i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i46, 2
  %i.dp = call i64 @llvm.umax.i64(i64 %i.dl, i64 %i.do)
  %i.dq = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i46, -1
  %i.dr = add nsw i64 %i.dp, %i.dq
  %i.ds = shl nuw nsw i64 %i.dr, 3
  %i.dt = and i64 %i.ds, 9223372036854775792
  %i.du = add nuw nsw i64 %i.dt, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep.i, i8 0, i64 %i.du, i1 false), !tbaa !9
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dv = icmp samesign ult i64 %i.dl, %i.de
  br i1 %i.dv, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dw = shl nuw nsw i64 %i.dj, 3                ; 2 uses
  %i.dx = and i64 %i.dw, 16
  %i.dy = shl nuw nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i46, 3
  %i.dz = getelementptr i8, ptr %i.df, i64 %i.dx
  %scevgep1.i = getelementptr i8, ptr %i.dz, i64 %i.dy
  %i.ea = and i64 %i.dw, 8
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i, i8 0, i64 %i.ea, i1 false), !tbaa !11
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i
  call void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE29applyZAdjointOnTheLeftInPlaceINS1_IdLi3ELi1ELi0ELi3ELi1EEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.b

bb.b:                                             ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i64 3, i1 false), !tbaa !13
  br label %.preheader.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.e, %bb.d
  %i.ec = icmp slt i64 %.163.i.i.i.i.i.i.i.i, 2
  br i1 %i.ec, label %.preheader.i.i.i.i.i.i.i.i.backedge, label %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_7ProductINS_17PermutationMatrixILi3ELi3EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i.backedge, %bb.b
  %.163.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %.163.i.i.i.i.i.i.i.i.be, %.preheader.i.i.i.i.i.i.i.i.backedge ] ; 9 uses
  %i.ed = getelementptr inbounds i8, ptr %3, i64 %.163.i.i.i.i.i.i.i.i
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !13, !range !14, !noundef !15
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %.163.i.i.i.i.i.i.i.i, 2
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_7ProductINS_17PermutationMatrixILi3ELi3EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.backedge

.preheader.i.i.i.i.i.i.i.i.backedge:              ; preds = %bb.c, %.loopexit.i.i.i.i.i.i.i.i
  %.163.i.i.i.i.i.i.i.i.be = add i64 %.163.i.i.i.i.i.i.i.i, 1
  br label %.preheader.i.i.i.i.i.i.i.i, !llvm.loop !1087

bb.d:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i
  %i.eg = getelementptr inbounds i8, ptr %3, i64 %.163.i.i.i.i.i.i.i.i
  store i8 1, ptr %i.eg, align 1, !tbaa !13
  %.035.in.in64.i.i.i.i.i.i.i.i = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %.163.i.i.i.i.i.i.i.i
  %.035.in65.i.i.i.i.i.i.i.i = load i32, ptr %.035.in.in64.i.i.i.i.i.i.i.i, align 4, !tbaa !113
  %.03566.i.i.i.i.i.i.i.i = sext i32 %.035.in65.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.not3767.i.i.i.i.i.i.i.i = icmp eq i64 %.163.i.i.i.i.i.i.i.i, %.03566.i.i.i.i.i.i.i.i
  br i1 %.not3767.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d
  %i.eh = getelementptr inbounds [8 x i8], ptr %2, i64 %.163.i.i.i.i.i.i.i.i ; 2 uses
  %.pre.i.i.i.i.i.i.i.i = load double, ptr %i.eh, align 8, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ei = phi double [ %.pre.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ek, %bb.e ]
  %.03568.i.i.i.i.i.i.i.i = phi i64 [ %.03566.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.035.i.i.i.i.i.i.i.i, %bb.e ] ; 3 uses
  %i.ej = getelementptr inbounds [8 x i8], ptr %2, i64 %.03568.i.i.i.i.i.i.i.i ; 2 uses
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !11 ; 2 uses
  store double %i.ei, ptr %i.ej, align 8, !tbaa !11
  store double %i.ek, ptr %i.eh, align 8, !tbaa !11
  %i.el = getelementptr inbounds i8, ptr %3, i64 %.03568.i.i.i.i.i.i.i.i
  store i8 1, ptr %i.el, align 1, !tbaa !13
  %.035.in.in.i.i.i.i.i.i.i.i = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %.03568.i.i.i.i.i.i.i.i
  %.035.in.i.i.i.i.i.i.i.i = load i32, ptr %.035.in.in.i.i.i.i.i.i.i.i, align 4, !tbaa !113
  %.035.i.i.i.i.i.i.i.i = sext i32 %.035.in.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.not37.i.i.i.i.i.i.i.i = icmp eq i64 %.163.i.i.i.i.i.i.i.i, %.035.i.i.i.i.i.i.i.i
  br i1 %.not37.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.e, !llvm.loop !1088

_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_7ProductINS_17PermutationMatrixILi3ELi3EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %.loopexit.i.i.i.i.i.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_7ProductINS_17PermutationMatrixILi3ELi3EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit, %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE29applyZAdjointOnTheLeftInPlaceINS1_IdLi3ELi1ELi0ELi3ELi1EEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load double, ptr %i.a, align 8, !tbaa !215
  %i.c = tail call noundef double @llvm.fabs.f64(double %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 209
  %i.e = load i8, ptr %i.d, align 1, !tbaa !68, !range !14, !noundef !15
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = load double, ptr %i.g, align 8
  %i.i = select i1 %i.f, double %i.h, double f0x3CC8000000000000
  %.fr127 = freeze double %i.i
  %i.j = fmul double %i.c, %.fr127                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.l = load i64, ptr %i.k, align 8, !tbaa !216  ; 5 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i.preheader, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.l, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader135, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.l, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.j, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi133 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %i.n = or disjoint i64 %index, 1                ; 2 uses
  %i.o = or disjoint i64 %index, 2                ; 2 uses
  %i.p = or disjoint i64 %index, 3                ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %0, i64 %index
  %i.r = getelementptr [8 x i8], ptr %0, i64 %i.n
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.o
  %i.t = getelementptr [8 x i8], ptr %0, i64 %i.p
  %i.u = mul i64 %index, 24
  %i.v = mul i64 %i.n, 24
  %i.w = mul i64 %i.o, 24
  %i.x = mul i64 %i.p, 24
  %i.y = getelementptr i8, ptr %i.q, i64 %i.u
  %i.z = getelementptr i8, ptr %i.r, i64 %i.v
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.w
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.x
  %i.ac = load double, ptr %i.y, align 8, !tbaa !11
  %i.ad = load double, ptr %i.z, align 8, !tbaa !11
  %i.ae = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.ad, i64 1
  %i.ag = load double, ptr %i.aa, align 8, !tbaa !11
end_hunk_0

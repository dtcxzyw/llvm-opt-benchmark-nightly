Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/line3d?download=true
inline.NumInlined: 5081
inline.NumDeleted: 3049
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN3g2omlERKN5Eigen9TransformIdLi3ELi1ELi0EEERKNS_6Line3DE:bb.a
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> %i.de, ptr %i.dg, align 16, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.35)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.48)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.61)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN3g2o8internal22transformCartesianLineERKN5Eigen9TransformIdLi3ELi1ELi0EEERKNS1_6MatrixIdLi6ELi1ELi0ELi6ELi1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Eigen::Matrix") align 16 captures(none) initializes((0, 48)) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(128) %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i = alloca [4 x double], align 16    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.a = load <2 x double>, ptr %2, align 16, !tbaa !8, !noalias !59 ; 3 uses
  store <2 x double> %i.a, ptr %.sroa.0.i.i, align 16, !tbaa !8, !noalias !59
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load double, ptr %i.b, align 16, !tbaa !12, !noalias !59
  %i.d = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.c, i64 0
  %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx59 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16
  store <2 x double> %i.d, ptr %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx59, align 16, !tbaa !12, !noalias !59
  %i.e = load <2 x double>, ptr %1, align 16, !tbaa !8, !noalias !59 ; 2 uses
  %i.f = shufflevector <2 x double> %i.a, <2 x double> poison, <2 x i32> zeroinitializer
  %i.g = fmul <2 x double> %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load <2 x double>, ptr %i.h, align 16, !tbaa !8, !noalias !59 ; 2 uses
  %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 8
  %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i = load <2 x double>, ptr %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !noalias !59 ; 2 uses
  %i.j = shufflevector <2 x double> %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.k = fmul <2 x double> %i.i, %i.j
  %i.l = fadd <2 x double> %i.g, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = load <2 x double>, ptr %i.m, align 16, !tbaa !8, !noalias !59 ; 2 uses
  %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16
  %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i = load <2 x double>, ptr %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !noalias !59 ; 4 uses
  %i.o = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = fmul <2 x double> %i.n, %i.o
  %i.q = fadd <2 x double> %i.l, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.s = load <2 x double>, ptr %i.r, align 16, !tbaa !8, !noalias !59
  %i.t = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.u = fmul <2 x double> %i.s, %i.t
  %i.v = fadd <2 x double> %i.u, %i.q             ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load <2 x double>, ptr %i.w, align 16, !noalias !59 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = load <2 x double>, ptr %i.y, align 16, !noalias !59 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ab = load <2 x double>, ptr %i.aa, align 16, !noalias !59 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ad = load <2 x double>, ptr %i.ac, align 16, !tbaa !8, !noalias !59
  %foldExtExtBinop41 = fmul <2 x double> %i.a, %i.x
  %foldExtExtBinop43 = fmul <2 x double> %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i, %i.z
  %foldExtExtBinop45 = fadd <2 x double> %foldExtExtBinop41, %foldExtExtBinop43
  %i.ae = extractelement <2 x double> %i.ab, i64 0
  %foldExtExtBinop47 = fmul <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, %i.ab
  %foldExtExtBinop49 = fadd <2 x double> %foldExtExtBinop45, %foldExtExtBinop47
  %i.af = extractelement <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, i64 1
  %i.ag = extractelement <2 x double> %i.ad, i64 0
  %i.ah = fmul double %i.af, %i.ag
  %i.ai = extractelement <2 x double> %foldExtExtBinop49, i64 0
  %.sroa.4.16.vec.extract.i.i = fadd double %i.ah, %i.ai ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.al = load double, ptr %i.ak, align 8, !tbaa !12 ; 2 uses
  %i.am = insertelement <2 x double> poison, double %i.al, i64 0
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = fmul <2 x double> %i.n, %i.an
  %i.ap = load <2 x double>, ptr %i.aj, align 8, !tbaa !12 ; 3 uses
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x double> %i.e, %i.aq
  %i.as = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.at = fmul <2 x double> %i.i, %i.as
  %i.au = fadd <2 x double> %i.ar, %i.at
  %i.av = fadd <2 x double> %i.au, %i.ao          ; 4 uses
  %i.aw = shufflevector <2 x double> %i.x, <2 x double> %i.z, <2 x i32> <i32 0, i32 2>
  %i.ax = fmul <2 x double> %i.ap, %i.aw          ; 2 uses
  %i.ay = fmul double %i.al, %i.ae
  %i.az = extractelement <2 x double> %i.ax, i64 1
  %i.ba = fadd double %i.az, %i.ay
  %i.bb = extractelement <2 x double> %i.ax, i64 0
  %i.bc = fadd double %i.bb, %i.ba                ; 4 uses
  %i.bd = fmul <2 x double> %i.av, %i.av          ; 2 uses
  %shift53 = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop54 = fadd <2 x double> %i.bd, %shift53
  %i.be = extractelement <2 x double> %foldExtExtBinop54, i64 0
  %i.bf = fmul double %i.bc, %i.bc
  %i.bg = fadd double %i.bf, %i.be                ; 2 uses
  %i.bh = fcmp ogt double %i.bg, 0.000000e+00     ; 2 uses
  %.scalar.i.i = tail call double @llvm.sqrt.f64(double %i.bg) ; 2 uses
  %i.bi = insertelement <2 x double> poison, double %.scalar.i.i, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = fdiv <2 x double> %i.av, %i.bj
  %i.bl = fdiv double %i.bc, %.scalar.i.i
  %.sroa.8.0.i = select i1 %i.bh, double %i.bl, double %i.bc ; 3 uses
  %.sroa.0.0.i = select i1 %i.bh, <2 x double> %i.bk, <2 x double> %i.av ; 3 uses
  %i.bm = fmul <2 x double> %i.v, %.sroa.0.0.i    ; 2 uses
  %shift56 = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop57 = fadd <2 x double> %i.bm, %shift56
  %i.bn = extractelement <2 x double> %foldExtExtBinop57, i64 0
  %i.bo = fmul double %.sroa.4.16.vec.extract.i.i, %.sroa.8.0.i
  %i.bp = fadd double %i.bo, %i.bn                ; 2 uses
  %.sroa.6.16.vec.insert.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.bq = shufflevector <2 x double> %.sroa.6.16.vec.insert.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = fmul <2 x double> %.sroa.0.0.i, %i.bq
  %i.bs = fsub <2 x double> %i.v, %i.br
  %i.bt = fmul double %.sroa.8.0.i, %i.bp
  %i.bu = fsub double %.sroa.4.16.vec.extract.i.i, %i.bt
  store <2 x double> %i.bs, ptr %0, align 16, !tbaa !8, !alias.scope !64
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.bu, ptr %i.bv, align 16, !tbaa !12, !alias.scope !64
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x double> %.sroa.0.0.i, ptr %i.bw, align 8, !tbaa !8, !alias.scope !64
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.sroa.8.0.i, ptr %i.bx, align 8, !tbaa !12, !alias.scope !64
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN3g2o8internal22normalizeCartesianLineERKN5Eigen6MatrixIdLi6ELi1ELi0ELi6ELi1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Eigen::Matrix") align 16 captures(none) initializes((0, 48)) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE9normalizeEv.exit:
  %i.a = load <2 x double>, ptr %1, align 16, !tbaa !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load double, ptr %i.b, align 16, !tbaa !12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load <2 x double>, ptr %i.d, align 8, !tbaa !8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load double, ptr %i.f, align 8, !tbaa !12 ; 4 uses
  %i.h = fmul <2 x double> %i.e, %i.e             ; 2 uses
  %shift = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.h, %shift
  %i.i = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.j = fmul double %i.g, %i.g
  %i.k = fadd double %i.j, %i.i                   ; 2 uses
  %i.l = fcmp ogt double %i.k, 0.000000e+00       ; 2 uses
  %.scalar.i = tail call double @llvm.sqrt.f64(double %i.k) ; 2 uses
  %i.m = insertelement <2 x double> poison, double %.scalar.i, i64 0
  %i.n = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = fdiv <2 x double> %i.e, %i.n
  %i.p = fdiv double %i.g, %.scalar.i
  %.sroa.8.0 = select i1 %i.l, double %i.p, double %i.g ; 3 uses
  %.sroa.0.0 = select i1 %i.l, <2 x double> %i.o, <2 x double> %i.e ; 3 uses
  %i.q = fmul <2 x double> %i.a, %.sroa.0.0       ; 2 uses
  %shift38 = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop39 = fadd <2 x double> %i.q, %shift38
  %i.r = extractelement <2 x double> %foldExtExtBinop39, i64 0
  %i.s = fmul double %i.c, %.sroa.8.0
  %i.t = fadd double %i.s, %i.r                   ; 2 uses
  %.sroa.6.16.vec.insert.i.i.i.i.i = insertelement <2 x double> poison, double %i.t, i64 0
  %i.u = shufflevector <2 x double> %.sroa.6.16.vec.insert.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x double> %.sroa.0.0, %i.u
  %i.w = fsub <2 x double> %i.a, %i.v
  %i.x = fmul double %.sroa.8.0, %i.t
  %i.y = fsub double %i.c, %i.x
  store <2 x double> %i.w, ptr %0, align 16, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.y, ptr %i.z, align 16, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x double> %.sroa.0.0, ptr %i.aa, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.sroa.8.0, ptr %i.ab, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5Eigen8internal12ldlt_inplaceILi1EE9unblockedINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEENS_14TranspositionsILi3ELi3EiEENS4_IdLi3ELi1ELi0ELi3ELi1EEEEEbRT_RT0_RT1_RNS0_10SignMatrixE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.692", align 8 ; 18 uses
  %5 = alloca %"struct.Eigen::internal::evaluator.704", align 8 ; 4 uses
  %6 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.712", align 8 ; 7 uses
  %7 = alloca %"struct.Eigen::internal::sub_assign_op", align 1 ; 3 uses
  %8 = alloca %"class.Eigen::Block.498", align 8  ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 48
  %.sroa.0220.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.5222.sroa.4.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5222.sroa.5.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.5222.sroa.6.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.8224.56..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64
  %.sroa.10226.56..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.11227.56..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88
  %.sroa.13229.56..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.backedge
  %indvar = phi i64 [ 0, %bb.a ], [ %indvar.next, %.backedge ] ; 4 uses
  %.0116456 = phi i64 [ 0, %bb.a ], [ %.pre-phi, %.backedge ] ; 23 uses
  %.0118455 = phi i8 [ 1, %bb.a ], [ %.3, %.backedge ] ; 6 uses
  %.0120454 = phi i1 [ false, %bb.a ], [ %.1121, %.backedge ] ; 2 uses
  %i.p = sub i64 2, %indvar                       ; 3 uses
  %i.q = mul nuw nsw i64 %.0116456, 24
  %i.r = getelementptr nuw i8, ptr %0, i64 %i.q
  %scevgep471 = getelementptr nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.s = shl nuw nsw i64 %.0116456, 5
  %i.t = getelementptr nuw i8, ptr %0, i64 %i.s
  %scevgep472 = getelementptr nuw i8, ptr %i.t, i64 8
  %.idx.i.i.i.i.i = shl nuw nsw i64 %.0116456, 5
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i.i ; 4 uses
  %.not404 = icmp eq i64 %.0116456, 2             ; 2 uses
  br i1 %.not404, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.thread, label %.lr.ph.i.i.i.i.preheader

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.thread: ; preds = %bb.b
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0116456
  store i32 2, ptr %i.v, align 4, !tbaa !67
  br label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit..loopexit_crit_edge

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %i.w = load double, ptr %i.u, align 8, !tbaa !12
  %i.x = call noundef double @llvm.fabs.f64(double %i.w) ; 2 uses
  %xtraiter = and i64 %i.p, 1
  %i.y = icmp eq i64 %indvar, 1
  br i1 %i.y, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.p, -2
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.0.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.i.i ]
  %.02126.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.new ], [ %i.al, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.z = phi double [ %i.x, %.lr.ph.i.i.i.i.preheader.new ], [ %i.ak, %.lr.ph.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i = shl i64 %.02126.i.i.i.i, 5
  %i.aa = getelementptr i8, ptr %i.u, i64 %.idx.i.i.i.i.i.i.i
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !12
  %i.ac = call noundef double @llvm.fabs.f64(double %i.ab) ; 2 uses
  %i.ad = fcmp ogt double %i.ac, %i.z             ; 2 uses
  %.sroa.0.1.i.i = select i1 %i.ad, i64 %.02126.i.i.i.i, i64 %.sroa.0.0.i.i
  %i.ae = select i1 %i.ad, double %i.ac, double %i.z ; 2 uses
  %i.af = add nuw nsw i64 %.02126.i.i.i.i, 1      ; 2 uses
  %.idx.i.i.i.i.i.i.i.1 = shl i64 %i.af, 5
  %i.ag = getelementptr i8, ptr %i.u, i64 %.idx.i.i.i.i.i.i.i.1
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !12
  %i.ai = call noundef double @llvm.fabs.f64(double %i.ah) ; 2 uses
  %i.aj = fcmp ogt double %i.ai, %i.ae            ; 2 uses
  %.sroa.0.1.i.i.1 = select i1 %i.aj, i64 %i.af, i64 %.sroa.0.1.i.i ; 3 uses
  %i.ak = select i1 %i.aj, double %i.ai, double %i.ae ; 2 uses
  %i.al = add nuw nsw i64 %.02126.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !68

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.0.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %.02126.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader ], [ %i.al, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %i.x, %.lr.ph.i.i.i.i.preheader ], [ %i.ak, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %lcmp.mod496 = trunc i64 %i.p to i1
  call void @llvm.assume(i1 %lcmp.mod496)
  %.idx.i.i.i.i.i.i.i.epil = shl i64 %.02126.i.i.i.i.epil.init, 5
  %i.am = getelementptr i8, ptr %i.u, i64 %.idx.i.i.i.i.i.i.i.epil
  %i.an = load double, ptr %i.am, align 8, !tbaa !12
  %i.ao = call noundef double @llvm.fabs.f64(double %i.an)
  %i.ap = fcmp ogt double %i.ao, %.epil.init
  %.sroa.0.1.i.i.epil = select i1 %i.ap, i64 %.02126.i.i.i.i.epil.init, i64 %.sroa.0.0.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.0.1.i.i.lcssa = phi i64 [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ], [ %.sroa.0.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ] ; 6 uses
  %i.aq = add i64 %.sroa.0.1.i.i.lcssa, %.0116456 ; 6 uses
  %i.ar = trunc i64 %i.aq to i32
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0116456
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !67
  %.not = icmp eq i64 %.sroa.0.1.i.i.lcssa, 0
  br i1 %.not, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit..loopexit_crit_edge, label %bb.c

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit..loopexit_crit_edge: ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.thread, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit
  %.pre = add nuw nsw i64 %.0116456, 1
  %.pre419 = mul nuw nsw i64 %.0116456, 24
  br label %.loopexit

bb.c:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit
  %i.at = sub i64 2, %i.aq                        ; 4 uses
  %i.au = getelementptr [8 x i8], ptr %0, i64 %.0116456 ; 4 uses
  %i.av = getelementptr [8 x i8], ptr %0, i64 %i.aq ; 5 uses
  %.not405 = icmp eq i64 %.0116456, 0
  br i1 %.not405, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.aw = load double, ptr %i.au, align 8, !tbaa !12
  %i.ax = load double, ptr %i.av, align 8, !tbaa !12
  store double %i.ax, ptr %i.au, align 8, !tbaa !12
  store double %i.aw, ptr %i.av, align 8, !tbaa !12
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %.0116456, 1
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.1:                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 2 uses
  %i.ba = load double, ptr %i.ay, align 8, !tbaa !12
  %i.bb = load double, ptr %i.az, align 8, !tbaa !12
  store double %i.bb, ptr %i.ay, align 8, !tbaa !12
  store double %i.ba, ptr %i.az, align 8, !tbaa !12
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.1, %bb.c
  %.idx.i.i.i.i = mul nuw nsw i64 %.0116456, 24   ; 4 uses
  %i.bc = getelementptr i8, ptr %0, i64 %.idx.i.i.i.i ; 3 uses
  %i.bd = add i64 %i.aq, 1                        ; 3 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bd ; 6 uses
  %.idx.i.i.i.i134 = mul i64 %i.aq, 24            ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %0, i64 %.idx.i.i.i.i134
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bd ; 5 uses
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = lshr exact i64 %i.bh, 3
  %i.bj = and i64 %i.bi, 1
  %i.bk = call i64 @llvm.smin.i64(i64 %i.bj, i64 %i.at) ; 6 uses
  %i.bl = sub i64 %i.at, %i.bk                    ; 3 uses
  %i.bm = and i64 %i.bl, -2                       ; 2 uses
  %i.bn = add nsw i64 %i.bm, %i.bk                ; 6 uses
  %i.bo = icmp sgt i64 %i.bk, 0
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit
  %i.bp = load double, ptr %i.be, align 8, !tbaa !12
  %i.bq = load double, ptr %i.bg, align 8, !tbaa !12
  store double %i.bq, ptr %i.be, align 8, !tbaa !12
  store double %i.bp, ptr %i.bg, align 8, !tbaa !12
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit
  %i.br = icmp sgt i64 %i.bl, 1
  br i1 %i.br, label %.lr.ph.i.i.i.i.i.i135, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i135, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.bs = icmp slt i64 %i.bn, %i.at
  br i1 %i.bs, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bt = add i64 %indvar, %.sroa.0.1.i.i.lcssa
  %i.bu = add i64 %i.bt, %i.bk
  %i.bv = add i64 %i.bu, %i.bm
  %i.bw = sub i64 2, %i.bv                        ; 3 uses
  %min.iters.check476 = icmp ult i64 %i.bw, 12
  br i1 %min.iters.check476, label %.lr.ph.i17.i.i.i.i.i.i.preheader493, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.bx = shl i64 %i.bl, 3
  %i.by = and i64 %i.bx, -16                      ; 2 uses
  %i.bz = shl i64 %i.bk, 3                        ; 2 uses
  %i.ca = shl i64 %i.bd, 3
  %i.cb = getelementptr i8, ptr %i.bc, i64 %i.by
  %i.cc = getelementptr i8, ptr %i.cb, i64 %i.bz
  %scevgep = getelementptr i8, ptr %i.cc, i64 %i.ca
  %i.cd = shl i64 %.sroa.0.1.i.i.lcssa, 5
  %i.ce = getelementptr i8, ptr %scevgep472, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 %i.by
  %scevgep473 = getelementptr i8, ptr %i.cf, i64 %i.bz
  %i.cg = mul i64 %.sroa.0.1.i.i.lcssa, 24
  %scevgep474 = getelementptr i8, ptr %scevgep471, i64 %i.cg
  %bound0 = icmp ult ptr %scevgep, %scevgep474
  %bound1 = icmp ult ptr %scevgep473, %scevgep471
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i.preheader493, label %vector.ph477

vector.ph477:                                     ; preds = %vector.memcheck
  %n.vec478 = and i64 %i.bw, -4                   ; 3 uses
  %i.ch = add i64 %i.bn, %n.vec478
  br label %vector.body479

vector.body479:                                   ; preds = %vector.body479, %vector.ph477
  %index480 = phi i64 [ 0, %vector.ph477 ], [ %index.next485, %vector.body479 ] ; 2 uses
  %i.ci = add i64 %i.bn, %index480                ; 2 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.ci ; 3 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.ci ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %wide.load481 = load <2 x double>, ptr %i.cj, align 8, !tbaa !12, !alias.scope !70, !noalias !73
  %wide.load482 = load <2 x double>, ptr %i.cl, align 8, !tbaa !12, !alias.scope !70, !noalias !73
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %wide.load483 = load <2 x double>, ptr %i.ck, align 8, !tbaa !12, !alias.scope !73
  %wide.load484 = load <2 x double>, ptr %i.cm, align 8, !tbaa !12, !alias.scope !73
  store <2 x double> %wide.load483, ptr %i.cj, align 8, !tbaa !12, !alias.scope !70, !noalias !73
  store <2 x double> %wide.load484, ptr %i.cl, align 8, !tbaa !12, !alias.scope !70, !noalias !73
  store <2 x double> %wide.load481, ptr %i.ck, align 8, !tbaa !12, !alias.scope !73
  store <2 x double> %wide.load482, ptr %i.cm, align 8, !tbaa !12, !alias.scope !73
  %index.next485 = add nuw i64 %index480, 4       ; 2 uses
  %i.cn = icmp eq i64 %index.next485, %n.vec478
  br i1 %i.cn, label %middle.block486, label %vector.body479, !llvm.loop !75

middle.block486:                                  ; preds = %vector.body479
  %cmp.n487 = icmp eq i64 %i.bw, %n.vec478
  br i1 %cmp.n487, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader493

.lr.ph.i17.i.i.i.i.i.i.preheader493:              ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block486
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.bn, %vector.memcheck ], [ %i.bn, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.ch, %middle.block486 ]
  br label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader493, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.cs, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader493 ] ; 3 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %i.be, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
end_hunk_0

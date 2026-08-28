Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/line3d?download=true
inline.NumInlined: 5081
inline.NumDeleted: 3049
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN3g2omlERKN5Eigen9TransformIdLi3ELi1ELi0EEERKNS_6Line3DE:bb.a
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
  %indvar = phi i64 [ 0, %bb.a ], [ %indvar.next, %.backedge ] ; 6 uses
  %.0116456 = phi i64 [ 0, %bb.a ], [ %.pre-phi, %.backedge ] ; 21 uses
  %.0118455 = phi i8 [ 1, %bb.a ], [ %.3, %.backedge ] ; 6 uses
  %.0120454 = phi i1 [ false, %bb.a ], [ %i.gr, %.backedge ] ; 2 uses
  %i.p = sub i64 2, %indvar                       ; 3 uses
  %i.q = mul nuw nsw i64 %indvar, 24
  %i.r = getelementptr nuw i8, ptr %0, i64 %i.q
  %scevgep471 = getelementptr nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.s = shl nuw nsw i64 %indvar, 5
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
  %i.cq = load double, ptr %i.co, align 8, !tbaa !12
  %i.cr = load double, ptr %i.cp, align 8, !tbaa !12
  store double %i.cr, ptr %i.co, align 8, !tbaa !12
  store double %i.cq, ptr %i.cp, align 8, !tbaa !12
  %i.cs = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i = icmp eq i64 %i.cs, %i.at
  br i1 %exitcond.not.i19.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !78

.lr.ph.i.i.i.i.i.i135:                            ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i135
  %.021.i.i.i.i.i.i = phi i64 [ %i.cx, %.lr.ph.i.i.i.i.i.i135 ], [ %i.bk, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i ] ; 3 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.cu = load <2 x double>, ptr %i.ct, align 8, !tbaa !8
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.be, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.cw = load <2 x double>, ptr %i.cv, align 16, !tbaa !8
  store <2 x double> %i.cw, ptr %i.ct, align 8, !tbaa !8
  store <2 x double> %i.cu, ptr %i.cv, align 16, !tbaa !8
  %i.cx = add nsw i64 %.021.i.i.i.i.i.i, 2        ; 2 uses
  %i.cy = icmp slt i64 %i.cx, %i.bn
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i.i135, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !79

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i, %middle.block486, %._crit_edge.i.i.i.i.i.i
  %i.cz = getelementptr i8, ptr %i.au, i64 %.idx.i.i.i.i ; 2 uses
  %i.da = getelementptr i8, ptr %i.av, i64 %.idx.i.i.i.i134 ; 2 uses
  %i.db = load double, ptr %i.cz, align 8, !tbaa !12
  %i.dc = load double, ptr %i.da, align 8, !tbaa !12
  store double %i.dc, ptr %i.cz, align 8, !tbaa !12
  store double %i.db, ptr %i.da, align 8, !tbaa !12
  %.0115409 = add nuw nsw i64 %.0116456, 1        ; 3 uses
  %.not451 = icmp eq i64 %.sroa.0.1.i.i.lcssa, 1
  br i1 %.not451, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, %.lr.ph
  %.0115410 = phi i64 [ %.0115, %.lr.ph ], [ %.0115409, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %i.bc, i64 %.0115410 ; 2 uses
  %i.dd = load double, ptr %gep, align 8, !tbaa !12
  %.idx.i138 = mul i64 %.0115410, 24
  %i.de = getelementptr i8, ptr %i.av, i64 %.idx.i138 ; 2 uses
  %i.df = load double, ptr %i.de, align 8, !tbaa !12
  store double %i.df, ptr %gep, align 8, !tbaa !12
  store double %i.dd, ptr %i.de, align 8, !tbaa !12
  %.0115 = add nuw nsw i64 %.0115410, 1           ; 2 uses
  %i.dg = icmp slt i64 %.0115, %i.aq
  br i1 %i.dg, label %.lr.ph, label %.loopexit, !llvm.loop !80

.loopexit:                                        ; preds = %.lr.ph, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit..loopexit_crit_edge, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit
  %.idx.i.i.i.pre-phi = phi i64 [ %.pre419, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit..loopexit_crit_edge ], [ %.idx.i.i.i.i, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit ], [ %.idx.i.i.i.i, %.lr.ph ] ; 4 uses
  %.pre-phi = phi i64 [ %.pre, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit..loopexit_crit_edge ], [ %.0115409, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit ], [ %.0115409, %.lr.ph ] ; 5 uses
  %i.dh = sub nuw nsw i64 2, %.0116456            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.pre-phi ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %.idx.i.i.i.pre-phi ; 2 uses
  store ptr %i.dj, ptr %8, align 8, !tbaa !81
  store i64 %i.dh, ptr %i.a, align 8, !tbaa !52
  store ptr %0, ptr %i.b, align 8, !tbaa !83
  store i64 %.pre-phi, ptr %i.c, align 8, !tbaa !52
  store i64 %.0116456, ptr %i.d, align 8, !tbaa !52
  store i64 3, ptr %i.e, align 8, !tbaa !85
  %i.dk = getelementptr [8 x i8], ptr %0, i64 %.0116456 ; 7 uses
  %.not132 = icmp eq i64 %.0116456, 0
  br i1 %.not132, label %bb.f, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.loopexit
  %i.dl = load double, ptr %0, align 8, !tbaa !12
  %i.dm = load double, ptr %i.dk, align 8, !tbaa !12
  %i.dn = fmul double %i.dl, %i.dm
  store double %i.dn, ptr %2, align 8, !tbaa !12
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.0116456, 1
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.i.i.1:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.do = load double, ptr %i.o, align 8, !tbaa !12
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !12
  %i.dr = fmul double %i.do, %i.dq
  store double %i.dr, ptr %i.n, align 8, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ds = load double, ptr %i.dk, align 8, !tbaa !12
  %i.dt = load double, ptr %2, align 8, !tbaa !12
  %i.du = fmul double %i.ds, %i.dt                ; 2 uses
  br i1 %.not404, label %.thread431, label %bb.e

.thread431:                                       ; preds = %bb.d
  %i.dv = getelementptr i8, ptr %i.dk, i64 24
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !12
  %i.dx = load double, ptr %i.m, align 8, !tbaa !12
  %i.dy = fmul double %i.dw, %i.dx
  %i.dz = fadd double %i.du, %i.dy
  %i.ea = getelementptr i8, ptr %i.dk, i64 %.idx.i.i.i.pre-phi ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !12
  %i.ec = fsub double %i.eb, %i.dz                ; 3 uses
  store double %i.ec, ptr %i.ea, align 8, !tbaa !12
  %i.ed = fcmp one double %i.ec, 0.000000e+00
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit

bb.e:                                             ; preds = %bb.d
  %i.ee = getelementptr i8, ptr %i.dk, i64 %.idx.i.i.i.pre-phi ; 2 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !12
  %i.eg = fsub double %i.ef, %i.du
  store double %i.eg, ptr %i.ee, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  store ptr %i.di, ptr %4, align 8
  store i64 %i.dh, ptr %.sroa.0220.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  store i64 %.0116456, ptr %.sroa.4.0..sroa_idx3.i.i.i.i, align 8
  store ptr %0, ptr %.sroa.5.0..sroa_idx5.i.i.i.i, align 8
  store i64 %.pre-phi, ptr %.sroa.5222.sroa.4.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  store i64 0, ptr %.sroa.5222.sroa.5.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  store i64 3, ptr %.sroa.5222.sroa.6.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  store ptr %2, ptr %i.f, align 8
  store i64 %.0116456, ptr %.sroa.8224.56..sroa_idx, align 8
  store ptr %2, ptr %.sroa.10226.56..sroa_idx, align 8
  store i64 0, ptr %.sroa.11227.56..sroa_idx, align 8
  store i64 3, ptr %.sroa.13229.56..sroa_idx, align 8
  store ptr %i.di, ptr %i.g, align 8, !tbaa !88
  store ptr %2, ptr %i.h, align 8, !tbaa !90
  store i64 %.0116456, ptr %i.i, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  store ptr %i.dj, ptr %5, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  store ptr %5, ptr %6, align 8, !tbaa !111
  store ptr %4, ptr %i.j, align 8, !tbaa !113
  store ptr %7, ptr %i.k, align 8, !tbaa !115
  store ptr %8, ptr %i.l, align 8, !tbaa !117
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS3_INS_7ProductINS4_IS6_Lin1ELin1ELb0EEENS4_INS5_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi3ELi0EE3runERSH_(ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.loopexit
  %i.eh = getelementptr i8, ptr %i.dk, i64 %.idx.i.i.i.pre-phi
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !12 ; 13 uses
  %i.ej = fcmp one double %i.ei, 0.000000e+00     ; 2 uses
  %i.ek = icmp ne i64 %.0116456, 0
  %or.cond = or i1 %i.ek, %i.ej
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 2, ptr %3, align 4, !tbaa !119
  store i32 0, ptr %1, align 4, !tbaa !67
  %i.el = trunc nuw i8 %.0118455 to i1
  br i1 %i.el, label %.preheader.us.i.preheader, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS7_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELi3ELi1EEEEEEEE3allEv.exit.1.thread

.preheader.us.i.preheader:                        ; preds = %bb.g
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.en = load double, ptr %i.em, align 8, !tbaa !12
  %i.eo = fcmp oeq double %i.en, 0.000000e+00
  br i1 %i.eo, label %.preheader.us.i.1418, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS7_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELi3ELi1EEEEEEEE3allEv.exit.1.thread

.preheader.us.i.1418:                             ; preds = %.preheader.us.i.preheader
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !12
  %i.er = fcmp oeq double %i.eq, 0.000000e+00
  br i1 %i.er, label %.preheader.us.i.preheader.1, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS7_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELi3ELi1EEEEEEEE3allEv.exit.1.thread

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS7_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELi3ELi1EEEEEEEE3allEv.exit.1.thread: ; preds = %.preheader.us.i.1418, %.preheader.us.i.preheader, %bb.g
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 1, ptr %i.es, align 4, !tbaa !67
  br label %.thread439

.preheader.us.i.preheader.1:                      ; preds = %.preheader.us.i.1418
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 1, ptr %i.et, align 4, !tbaa !67
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !12
  %i.ew = fcmp oeq double %i.ev, 0.000000e+00
  br label %.thread439

.thread439:                                       ; preds = %.preheader.us.i.preheader.1, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS7_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELi3ELi1EEEEEEEE3allEv.exit.1.thread
  %9 = phi i1 [ %i.ew, %.preheader.us.i.preheader.1 ], [ false, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS7_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELi3ELi1EEEEEEEE3allEv.exit.1.thread ]
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %10, align 4, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  br label %.thread401

bb.h:                                             ; preds = %bb.f
  br i1 %i.ej, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ex = load ptr, ptr %8, align 8, !tbaa !81    ; 6 uses
  %i.ey = load i64, ptr %i.a, align 8, !tbaa !52  ; 6 uses
  %i.ez = ptrtoint ptr %i.ex to i64               ; 2 uses
  %i.fa = and i64 %i.ez, 7
  %.not.i.i.i.i.i.i.i144 = icmp eq i64 %i.fa, 0
  br i1 %.not.i.i.i.i.i.i.i144, label %bb.j, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i145

bb.j:                                             ; preds = %bb.i
  %i.fb = lshr exact i64 %i.ez, 3
  %i.fc = and i64 %i.fb, 1
  %i.fd = call i64 @llvm.smin.i64(i64 %i.fc, i64 %i.ey)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i145

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i145: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i146 = phi i64 [ %i.fd, %bb.j ], [ %i.ey, %bb.i ] ; 9 uses
  %i.fe = sub nsw i64 %i.ey, %.0.i.i.i.i.i.i.i146 ; 2 uses
  %i.ff = sdiv i64 %i.fe, 2
  %i.fg = shl nsw i64 %i.ff, 1                    ; 2 uses
  %i.fh = add nsw i64 %i.fg, %.0.i.i.i.i.i.i.i146 ; 5 uses
  %i.fi = icmp sgt i64 %.0.i.i.i.i.i.i.i146, 0
  br i1 %i.fi, label %.lr.ph.i.i.i.i.i.i.i153.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i153.preheader:                ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i145
  %min.iters.check459 = icmp eq i64 %.0.i.i.i.i.i.i.i146, 1
  br i1 %min.iters.check459, label %.lr.ph.i.i.i.i.i.i.i153.preheader491, label %vector.ph460

vector.ph460:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i153.preheader
  %n.vec461 = and i64 %.0.i.i.i.i.i.i.i146, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert462 = insertelement <2 x double> poison, double %i.ei, i64 0
  %broadcast.splat463 = shufflevector <2 x double> %broadcast.splatinsert462, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body464

vector.body464:                                   ; preds = %vector.body464, %vector.ph460
  %index465 = phi i64 [ 0, %vector.ph460 ], [ %index.next467, %vector.body464 ] ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %index465 ; 2 uses
  %wide.load466 = load <2 x double>, ptr %i.fj, align 8, !tbaa !12
  %i.fk = fdiv <2 x double> %wide.load466, %broadcast.splat463
  store <2 x double> %i.fk, ptr %i.fj, align 8, !tbaa !12
  %index.next467 = add nuw i64 %index465, 2       ; 2 uses
  %i.fl = icmp eq i64 %index.next467, %n.vec461
  br i1 %i.fl, label %middle.block468, label %vector.body464, !llvm.loop !120

middle.block468:                                  ; preds = %vector.body464
  %cmp.n469 = icmp eq i64 %.0.i.i.i.i.i.i.i146, %n.vec461
  br i1 %cmp.n469, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i153.preheader491

.lr.ph.i.i.i.i.i.i.i153.preheader491:             ; preds = %.lr.ph.i.i.i.i.i.i.i153.preheader, %middle.block468
  %.05.i.i.i.i.i.i.i154.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i153.preheader ], [ %n.vec461, %middle.block468 ]
  br label %.lr.ph.i.i.i.i.i.i.i153

.lr.ph.i.i.i.i.i.i.i153:                          ; preds = %.lr.ph.i.i.i.i.i.i.i153.preheader491, %.lr.ph.i.i.i.i.i.i.i153
  %.05.i.i.i.i.i.i.i154 = phi i64 [ %i.fp, %.lr.ph.i.i.i.i.i.i.i153 ], [ %.05.i.i.i.i.i.i.i154.ph, %.lr.ph.i.i.i.i.i.i.i153.preheader491 ] ; 2 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %.05.i.i.i.i.i.i.i154 ; 2 uses
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !12
  %i.fo = fdiv double %i.fn, %i.ei
  store double %i.fo, ptr %i.fm, align 8, !tbaa !12
  %i.fp = add nuw nsw i64 %.05.i.i.i.i.i.i.i154, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i155 = icmp eq i64 %i.fp, %.0.i.i.i.i.i.i.i146
  br i1 %exitcond.not.i.i.i.i.i.i.i155, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i153, !llvm.loop !121

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i153, %middle.block468, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i145
  %i.fq = icmp sgt i64 %i.fe, 1
  br i1 %i.fq, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i147

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.fr = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.fs = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i151

._crit_edge.i.i.i.i.i.i147:                       ; preds = %.lr.ph.i.i.i.i.i.i151, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.ft = icmp slt i64 %i.fh, %i.ey
  br i1 %i.ft, label %.lr.ph.i17.i.i.i.i.i.i148.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit

.lr.ph.i17.i.i.i.i.i.i148.preheader:              ; preds = %._crit_edge.i.i.i.i.i.i147
  %i.fu = add i64 %.0.i.i.i.i.i.i.i146, %i.fg
  %i.fv = sub i64 %i.ey, %i.fu                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.fv, 2
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i148.preheader490, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i148.preheader
  %n.vec = and i64 %i.fv, -2                      ; 3 uses
  %i.fw = add i64 %i.fh, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ei, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fx = getelementptr [8 x i8], ptr %i.ex, i64 %i.fh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fy = getelementptr [8 x i8], ptr %i.fx, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.fy, align 8, !tbaa !12
  %i.fz = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.fz, ptr %i.fy, align 8, !tbaa !12
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ga = icmp eq i64 %index.next, %n.vec
  br i1 %i.ga, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fv, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i148.preheader490

.lr.ph.i17.i.i.i.i.i.i148.preheader490:           ; preds = %.lr.ph.i17.i.i.i.i.i.i148.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i149.ph = phi i64 [ %i.fh, %.lr.ph.i17.i.i.i.i.i.i148.preheader ], [ %i.fw, %middle.block ]
  br label %.lr.ph.i17.i.i.i.i.i.i148

.lr.ph.i17.i.i.i.i.i.i148:                        ; preds = %.lr.ph.i17.i.i.i.i.i.i148.preheader490, %.lr.ph.i17.i.i.i.i.i.i148
  %.05.i18.i.i.i.i.i.i149 = phi i64 [ %i.ge, %.lr.ph.i17.i.i.i.i.i.i148 ], [ %.05.i18.i.i.i.i.i.i149.ph, %.lr.ph.i17.i.i.i.i.i.i148.preheader490 ] ; 2 uses
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %.05.i18.i.i.i.i.i.i149 ; 2 uses
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !12
  %i.gd = fdiv double %i.gc, %i.ei
  store double %i.gd, ptr %i.gb, align 8, !tbaa !12
  %i.ge = add nsw i64 %.05.i18.i.i.i.i.i.i149, 1  ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i150 = icmp eq i64 %i.ge, %i.ey
  br i1 %exitcond.not.i19.i.i.i.i.i.i150, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i148, !llvm.loop !123

.lr.ph.i.i.i.i.i.i151:                            ; preds = %.lr.ph.i.i.i.i.i.i151, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i152 = phi i64 [ %i.gi, %.lr.ph.i.i.i.i.i.i151 ], [ %.0.i.i.i.i.i.i.i146, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %.021.i.i.i.i.i.i152 ; 2 uses
  %i.gg = load <2 x double>, ptr %i.gf, align 16, !tbaa !8
  %i.gh = fdiv <2 x double> %i.gg, %i.fs
  store <2 x double> %i.gh, ptr %i.gf, align 16, !tbaa !8
  %i.gi = add nsw i64 %.021.i.i.i.i.i.i152, 2     ; 2 uses
  %i.gj = icmp slt i64 %i.gi, %i.fh
  br i1 %i.gj, label %.lr.ph.i.i.i.i.i.i151, label %._crit_edge.i.i.i.i.i.i147, !llvm.loop !124

bb.k:                                             ; preds = %bb.h
  %i.gk = trunc nuw i8 %.0118455 to i1
  br i1 %i.gk, label %bb.l, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit

bb.l:                                             ; preds = %bb.k
  %.sroa.0.0.copyload = load ptr, ptr %8, align 8
  %.sroa.4.0.copyload = load i64, ptr %i.a, align 8 ; 2 uses
  %.not23.i156 = icmp sgt i64 %.sroa.4.0.copyload, 0
  br i1 %.not23.i156, label %.preheader.us.i158, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit

bb.m:                                             ; preds = %.preheader.us.i158
  %i.gl = add nuw nsw i64 %.01324.us.i159, 1      ; 2 uses
  %exitcond.not.i160 = icmp eq i64 %i.gl, %.sroa.4.0.copyload
  br i1 %exitcond.not.i160, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit, label %.preheader.us.i158, !llvm.loop !125

.preheader.us.i158:                               ; preds = %bb.l, %bb.m
  %.01324.us.i159 = phi i64 [ %i.gl, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.gm = getelementptr [8 x i8], ptr %.sroa.0.0.copyload, i64 %.01324.us.i159
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !12
  %i.go = fcmp oeq double %i.gn, 0.000000e+00
  br i1 %i.go, label %bb.m, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit: ; preds = %bb.m, %.preheader.us.i158, %.lr.ph.i17.i.i.i.i.i.i148, %middle.block, %.thread431, %bb.k, %bb.l, %._crit_edge.i.i.i.i.i.i147
  %i.gp = phi double [ %i.ei, %middle.block ], [ %i.ec, %.thread431 ], [ %i.ei, %._crit_edge.i.i.i.i.i.i147 ], [ %i.ei, %bb.k ], [ %i.ei, %bb.l ], [ %i.ei, %.lr.ph.i17.i.i.i.i.i.i148 ], [ %i.ei, %.preheader.us.i158 ], [ %i.ei, %bb.m ] ; 4 uses
  %i.gq = phi i1 [ true, %middle.block ], [ %i.ed, %.thread431 ], [ true, %._crit_edge.i.i.i.i.i.i147 ], [ false, %bb.k ], [ false, %bb.l ], [ true, %.lr.ph.i17.i.i.i.i.i.i148 ], [ false, %.preheader.us.i158 ], [ false, %bb.m ] ; 2 uses
  %.2 = phi i8 [ %.0118455, %middle.block ], [ %.0118455, %.thread431 ], [ %.0118455, %._crit_edge.i.i.i.i.i.i147 ], [ 0, %bb.k ], [ 1, %bb.l ], [ %.0118455, %.lr.ph.i17.i.i.i.i.i.i148 ], [ 0, %.preheader.us.i158 ], [ 1, %bb.m ]
  %or.cond6 = and i1 %.0120454, %i.gq
  %not. = xor i1 %i.gq, true
  %i.gr = select i1 %not., i1 true, i1 %.0120454
  %.3 = select i1 %or.cond6, i8 0, i8 %.2         ; 2 uses
  %i.gs = load i32, ptr %3, align 4, !tbaa !119
  switch i32 %i.gs, label %.backedge [
    i32 0, label %bb.n
    i32 1, label %bb.o
    i32 2, label %bb.p
  ]

bb.n:                                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit
  %i.gt = fcmp olt double %i.gp, 0.000000e+00
  br i1 %i.gt, label %.backedge.sink.split, label %.backedge

bb.o:                                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit
  %i.gu = fcmp ogt double %i.gp, 0.000000e+00
  br i1 %i.gu, label %.backedge.sink.split, label %.backedge

bb.p:                                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit
  %i.gv = fcmp ogt double %i.gp, 0.000000e+00
  br i1 %i.gv, label %.backedge.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gw = fcmp olt double %i.gp, 0.000000e+00
  br i1 %i.gw, label %.backedge.sink.split, label %.backedge

.backedge.sink.split:                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %.sink = phi i32 [ 3, %bb.o ], [ 3, %bb.n ], [ 0, %bb.p ], [ 1, %bb.q ]
  store i32 %.sink, ptr %3, align 4, !tbaa !119
  br label %.backedge

.backedge:                                        ; preds = %.backedge.sink.split, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit, %bb.o, %bb.q, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  %exitcond.not = icmp eq i64 %.pre-phi, 3
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %bb.r, label %bb.b, !llvm.loop !126

bb.r:                                             ; preds = %.backedge
  %i.gx = trunc nuw i8 %.3 to i1
  br label %.thread401

.thread401:                                       ; preds = %.thread439, %bb.r
  %.3126 = phi i1 [ %i.gx, %bb.r ], [ %9, %.thread439 ]
  ret i1 %.3126
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS3_INS_7ProductINS4_IS6_Lin1ELin1ELb0EEENS4_INS5_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi3ELi0EE3runERSH_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127, !nonnull !129, !align !130 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !52   ; 10 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = and i64 %i.f, 7
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = lshr exact i64 %i.f, 3
  %i.i = and i64 %i.h, 1
  %i.j = tail call i64 @llvm.smin.i64(i64 %i.i, i64 %i.d)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.j, %bb.b ], [ %i.d, %bb.a ] ; 14 uses
  %i.k = sub nsw i64 %i.d, %.0.i                  ; 2 uses
  %i.l = sdiv i64 %i.k, 2                         ; 2 uses
  %i.m = shl nsw i64 %i.l, 1                      ; 2 uses
  %i.n = add nsw i64 %i.m, %.0.i                  ; 7 uses
  %i.o = icmp sgt i64 %.0.i, 0
  br i1 %i.o, label %.lr.ph.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS6_INS7_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit

.lr.ph.i:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !131, !nonnull !129, !align !130
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !109  ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !132, !nonnull !129, !align !130 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !133, !noalias !134 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !137, !noalias !138 ; 12 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.x = load i64, ptr %i.w, align 8, !tbaa !52, !noalias !138 ; 4 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS6_INS7_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.z = icmp sgt i64 %i.x, 1
  br i1 %i.z, label %.lr.ph.i.i.i.i.i.preheader.us.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader

.lr.ph.i.i.i.i.i.preheader.us.i.preheader:        ; preds = %.lr.ph.split.i
  %i.aa = add nsw i64 %i.x, -1                    ; 2 uses
  %i.ab = add nsw i64 %i.x, -2
  %xtraiter99 = and i64 %i.aa, 3                  ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 3
  %unroll_iter = and i64 %i.aa, -4
  %lcmp.mod100.not = icmp eq i64 %xtraiter99, 0
  %lcmp.mod102 = icmp ne i64 %xtraiter99, 0
  br label %.lr.ph.i.i.i.i.i.preheader.us.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader: ; preds = %.lr.ph.split.i
  %min.iters.check = icmp ult i64 %.0.i, 10
  br i1 %min.iters.check, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader97, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader
  %i.ad = shl i64 %.0.i, 3                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.ad ; 2 uses
  %scevgep56 = getelementptr i8, ptr %i.t, i64 %i.ad
  %scevgep57 = getelementptr i8, ptr %i.v, i64 8
  %bound0 = icmp ult ptr %i.q, %scevgep56
  %bound1 = icmp ult ptr %i.t, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound058 = icmp ult ptr %i.q, %scevgep57
  %bound159 = icmp ult ptr %i.v, %scevgep
  %found.conflict60 = and i1 %bound058, %bound159
  %conflict.rdx = or i1 %found.conflict, %found.conflict60
  br i1 %conflict.rdx, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader97, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0.i, 9223372036854775804     ; 3 uses
  %i.ae = load double, ptr %i.v, align 8, !tbaa !12, !alias.scope !141
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ae, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <2 x double>, ptr %i.af, align 8, !tbaa !12, !alias.scope !144
  %wide.load61 = load <2 x double>, ptr %i.ag, align 8, !tbaa !12, !alias.scope !144
  %i.ah = fmul <2 x double> %wide.load, %broadcast.splat
  %i.ai = fmul <2 x double> %wide.load61, %broadcast.splat
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %wide.load62 = load <2 x double>, ptr %i.aj, align 8, !tbaa !12, !alias.scope !146, !noalias !148
  %wide.load63 = load <2 x double>, ptr %i.ak, align 8, !tbaa !12, !alias.scope !146, !noalias !148
  %i.al = fsub <2 x double> %wide.load62, %i.ah
  %i.am = fsub <2 x double> %wide.load63, %i.ai
  store <2 x double> %i.al, ptr %i.aj, align 8, !tbaa !12, !alias.scope !146, !noalias !148
  store <2 x double> %i.am, ptr %i.ak, align 8, !tbaa !12, !alias.scope !146, !noalias !148
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !149

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS6_INS7_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader97

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader97: ; preds = %vector.memcheck, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader, %middle.block
  %.05.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.ph, 1
  %xtraiter = and i64 %.0.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader97
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.05.i.ph
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !12
  %i.aq = load double, ptr %i.v, align 8, !tbaa !12
  %i.ar = fmul double %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.05.i.ph ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !12
  %i.au = fsub double %i.at, %i.ar
  store double %i.au, ptr %i.as, align 8, !tbaa !12
  %i.av = or disjoint i64 %.05.i.ph, 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader97
  %.05.i.unr = phi i64 [ %.05.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader97 ], [ %i.av, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol ]
  %i.aw = icmp eq i64 %.0.i, %.neg
  br i1 %i.aw, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS6_INS7_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i

.lr.ph.i.i.i.i.i.preheader.us.i:                  ; preds = %.lr.ph.i.i.i.i.i.preheader.us.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i
  %.05.us6.i = phi i64 [ %i.cn, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.us.i.preheader ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.05.us6.i ; 6 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !12
  %i.az = load double, ptr %i.v, align 8, !tbaa !12
  %i.ba = fmul double %i.ay, %i.az                ; 2 uses
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.us.i.epil.preheader, label %.lr.ph.i.i.i.i.i.us.i

.lr.ph.i.i.i.i.i.us.i:                            ; preds = %.lr.ph.i.i.i.i.i.preheader.us.i, %.lr.ph.i.i.i.i.i.us.i
  %.01725.i.i.i.i.i.us.i = phi i64 [ %i.cc, %.lr.ph.i.i.i.i.i.us.i ], [ 1, %.lr.ph.i.i.i.i.i.preheader.us.i ] ; 6 uses
  %.02324.i.i.i.i.i.us.i = phi double [ %i.cb, %.lr.ph.i.i.i.i.i.us.i ], [ %i.ba, %.lr.ph.i.i.i.i.i.preheader.us.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.i.i.i.us.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.us.i ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i = mul i64 %.01725.i.i.i.i.i.us.i, 24
  %i.bb = getelementptr i8, ptr %i.ax, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !12
  %i.bd = getelementptr [8 x i8], ptr %i.v, i64 %.01725.i.i.i.i.i.us.i
  %i.be = load double, ptr %i.bd, align 8, !tbaa !12
  %i.bf = fmul double %i.bc, %i.be
  %i.bg = fadd double %.02324.i.i.i.i.i.us.i, %i.bf
  %i.bh = add nuw nsw i64 %.01725.i.i.i.i.i.us.i, 1 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.us.i.1 = mul i64 %i.bh, 24
  %i.bi = getelementptr i8, ptr %i.ax, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.1
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !12
  %i.bk = getelementptr [8 x i8], ptr %i.v, i64 %i.bh
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !12
  %i.bm = fmul double %i.bj, %i.bl
  %i.bn = fadd double %i.bg, %i.bm
  %i.bo = add nuw nsw i64 %.01725.i.i.i.i.i.us.i, 2 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.us.i.2 = mul i64 %i.bo, 24
  %i.bp = getelementptr i8, ptr %i.ax, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.2
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !12
  %i.br = getelementptr [8 x i8], ptr %i.v, i64 %i.bo
  %i.bs = load double, ptr %i.br, align 8, !tbaa !12
  %i.bt = fmul double %i.bq, %i.bs
  %i.bu = fadd double %i.bn, %i.bt
  %i.bv = add nuw nsw i64 %.01725.i.i.i.i.i.us.i, 3 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.us.i.3 = mul i64 %i.bv, 24
  %i.bw = getelementptr i8, ptr %i.ax, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.3
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !12
  %i.by = getelementptr [8 x i8], ptr %i.v, i64 %i.bv
  %i.bz = load double, ptr %i.by, align 8, !tbaa !12
  %i.ca = fmul double %i.bx, %i.bz
  %i.cb = fadd double %i.bu, %i.ca                ; 3 uses
  %i.cc = add nuw nsw i64 %.01725.i.i.i.i.i.us.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.us.i, !llvm.loop !150

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.us.i
  br i1 %lcmp.mod100.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i, label %.lr.ph.i.i.i.i.i.us.i.epil.preheader

.lr.ph.i.i.i.i.i.us.i.epil.preheader:             ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader.us.i
  %.01725.i.i.i.i.i.us.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader.us.i ], [ %i.cc, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa ]
  %.02324.i.i.i.i.i.us.i.epil.init = phi double [ %i.ba, %.lr.ph.i.i.i.i.i.preheader.us.i ], [ %i.cb, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod102)
  br label %.lr.ph.i.i.i.i.i.us.i.epil

.lr.ph.i.i.i.i.i.us.i.epil:                       ; preds = %.lr.ph.i.i.i.i.i.us.i.epil, %.lr.ph.i.i.i.i.i.us.i.epil.preheader
  %.01725.i.i.i.i.i.us.i.epil = phi i64 [ %i.cj, %.lr.ph.i.i.i.i.i.us.i.epil ], [ %.01725.i.i.i.i.i.us.i.epil.init, %.lr.ph.i.i.i.i.i.us.i.epil.preheader ] ; 3 uses
  %.02324.i.i.i.i.i.us.i.epil = phi double [ %i.ci, %.lr.ph.i.i.i.i.i.us.i.epil ], [ %.02324.i.i.i.i.i.us.i.epil.init, %.lr.ph.i.i.i.i.i.us.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.us.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.us.i.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i.epil = mul i64 %.01725.i.i.i.i.i.us.i.epil, 24
  %i.cd = getelementptr i8, ptr %i.ax, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.epil
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !12
  %i.cf = getelementptr [8 x i8], ptr %i.v, i64 %.01725.i.i.i.i.i.us.i.epil
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !12
end_hunk_0

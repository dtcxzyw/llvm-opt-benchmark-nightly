Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/line3d?download=true
inline.NumInlined: 5081
inline.NumDeleted: 3049
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNK3g2o6Line3D11toCartesianEv:_ZN5Eigen5BlockINS_6MatrixIdLi6ELi1ELi0ELi6ELi1EEELi3ELi1ELb0EEaSINS_5SolveINS_4LDLTINS1_IdLi3ELi3ELi0ELi3ELi3EEELi1EEENS_7ProductINS_9TransposeIS7_EENS1_IdLi3ELi1ELi0ELi3ELi1EEELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.bc = shufflevector <2 x double> %i.ab, <2 x double> %i.ae, <2 x i32> <i32 1, i32 3>
  %i.bd = fadd <2 x double> %i.bb, %i.bc
  %i.be = fmul <2 x double> %i.al, zeroinitializer
  %i.bf = fsub <2 x double> %i.bd, %i.be
  %i.bg = fadd <2 x double> %i.bf, zeroinitializer ; 4 uses
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> %i.ao, <2 x i32> <i32 0, i32 3>
  %i.bi = insertelement <2 x double> %i.bg, double %i.ap, i64 0 ; 2 uses
  store <2 x double> %i.bh, ptr %i.at, align 16, !tbaa !8, !alias.scope !14
  store <2 x double> %i.bi, ptr %i.au, align 16, !tbaa !8, !alias.scope !14
  store <2 x double> %i.bg, ptr %i.av, align 16, !tbaa !8, !alias.scope !14
  %i.bj = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.bg) ; 3 uses
  %foldExtExtBinop64 = fadd <2 x double> %i.bj, %foldExtExtBinop62
  %i.bk = extractelement <2 x double> %foldExtExtBinop64, i64 0 ; 2 uses
  %i.bl = fcmp ogt double %i.bk, 0.000000e+00
  %i.bm = select i1 %i.bl, double %i.bk, double 0.000000e+00 ; 2 uses
  %i.bn = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.bi) ; 2 uses
  %shift66 = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop67 = fadd <2 x double> %i.bn, %shift66
  %i.bo = extractelement <2 x double> %foldExtExtBinop67, i64 0
  %i.bp = fadd double %i.az, %i.bo                ; 2 uses
  %i.bq = fcmp ogt double %i.bp, %i.bm
  %i.br = select i1 %i.bq, double %i.bp, double %i.bm ; 2 uses
  %shift69 = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop70 = fadd <2 x double> %i.bj, %shift69
  %i.bs = extractelement <2 x double> %foldExtExtBinop70, i64 0
  %i.bt = fadd double %i.ba, %i.bs                ; 2 uses
  %i.bu = fcmp ogt double %i.bt, %i.br
  %spec.select.i.i = select i1 %i.bu, double %i.bt, double %i.br
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 72
  store double %spec.select.i.i, ptr %i.bv, align 8, !tbaa !17, !alias.scope !14
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i8 0, ptr %i.as, align 4, !tbaa !35, !alias.scope !14
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i32 2, ptr %i.ar, align 8, !tbaa !36, !alias.scope !14
  %i.by = call noundef zeroext i1 @_ZN5Eigen8internal12ldlt_inplaceILi1EE9unblockedINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEENS_14TranspositionsILi3ELi3EiEENS4_IdLi3ELi1ELi0ELi3ELi1EEEEEbRT_RT0_RT1_RNS0_10SignMatrixE(ptr noundef nonnull align 8 dereferenceable(132) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 4 dereferenceable(4) %i.ar)
  %not..i.i.i = xor i1 %i.by, true
  %i.bz = zext i1 %not..i.i.i to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i32 %i.bz, ptr %i.ca, align 16, !tbaa !37, !alias.scope !14
  store i8 1, ptr %i.as, align 4, !tbaa !35, !alias.scope !14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.cb = load <2 x double>, ptr %1, align 16, !tbaa !8, !noalias !38
  store <2 x double> %i.cb, ptr %5, align 16, !tbaa !8, !alias.scope !38
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ce = load double, ptr %i.cd, align 16, !tbaa !12, !noalias !38
  store double %i.ce, ptr %i.cc, align 16, !tbaa !12, !alias.scope !38
  store ptr %2, ptr %4, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %5, ptr %i.cf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  store ptr %0, ptr %6, align 8, !tbaa !41, !alias.scope !47
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %0, ptr %i.cg, align 8, !tbaa !50, !alias.scope !47
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 0, ptr %i.ch, align 8, !tbaa !52, !alias.scope !47
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 6, ptr %i.ci, align 8, !tbaa !55, !alias.scope !47
  call void @_ZNK5Eigen4LDLTINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1EE22_solve_impl_transposedILb1ENS_7ProductINS_9TransposeIS2_EENS1_IdLi3ELi1ELi0ELi3ELi1EEELi0EEENS_5BlockINS1_IdLi6ELi1ELi0ELi6ELi1EEELi3ELi1ELb0EEEEEvRKT0_RT1_(ptr noundef nonnull align 8 dereferenceable(132) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(48) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN3g2omlERKN5Eigen9TransformIdLi3ELi1ELi0EEERKNS_6Line3DE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.g2o::Line3D") align 16 captures(none) initializes((0, 48)) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(128) %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.35 = alloca [4 x double], align 16       ; 7 uses
  %.sroa.48 = alloca [4 x double], align 16       ; 7 uses
  %.sroa.61 = alloca [4 x double], align 16       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.35)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.48)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.61)
  %i.a = load <2 x double>, ptr %1, align 16      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load double, ptr %i.b, align 16, !tbaa !12 ; 3 uses
  %.sroa.5.16.vec.insert61 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.c, i64 0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x double>, ptr %i.d, align 16    ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load double, ptr %i.f, align 16, !tbaa !12 ; 4 uses
  %.sroa.15.64.vec.insert67 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.g, i64 0
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = load <2 x double>, ptr %i.h, align 16    ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load double, ptr %i.j, align 16, !tbaa !12 ; 4 uses
  %.sroa.25.112.vec.insert71 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.k, i64 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.m = load <2 x double>, ptr %i.l, align 16, !tbaa !8 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.o = load double, ptr %i.n, align 16, !tbaa !12 ; 2 uses
  %i.p = fneg double %i.o
  %.sroa.033.8.vec.extract = extractelement <2 x double> %i.m, i64 1
  %.sroa.12.48.vec.insert = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.0.8.vec.insert = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.o, i64 1 ; 3 uses
  %.sroa.7.32.vec.insert = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.p, i64 0 ; 3 uses
  %i.q = fneg <2 x double> %i.m
  %.sroa.12.56.vec.insert = shufflevector <2 x double> %.sroa.12.48.vec.insert, <2 x double> %i.q, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.r = shufflevector <2 x double> %i.a, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x double> %.sroa.0.8.vec.insert, %i.r
  %i.t = shufflevector <2 x double> %i.a, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.u = fmul <2 x double> %.sroa.7.32.vec.insert, %i.t
  %i.v = fadd <2 x double> %i.s, %i.u
  %i.w = insertelement <2 x double> poison, double %i.c, i64 0 ; 2 uses
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = fmul <2 x double> %i.x, %.sroa.12.56.vec.insert
  %i.z = fadd <2 x double> %i.y, %i.v
  %i.aa = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x double> %.sroa.0.8.vec.insert, %i.aa
  %i.ac = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ad = fmul <2 x double> %.sroa.7.32.vec.insert, %i.ac
  %i.ae = fadd <2 x double> %i.ab, %i.ad
  %i.af = insertelement <2 x double> poison, double %i.g, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = fmul <2 x double> %i.ag, %.sroa.12.56.vec.insert
  %i.ai = fadd <2 x double> %i.ah, %i.ae
  %i.aj = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = shufflevector <2 x double> %i.a, <2 x double> %i.e, <2 x i32> <i32 1, i32 3>
  %i.al = fmul <2 x double> %i.aj, %i.ak
  %i.am = insertelement <2 x double> %i.w, double %i.g, i64 1
  %i.an = fmul <2 x double> %i.am, zeroinitializer
  %i.ao = fadd <2 x double> %i.an, %i.al
  %i.ap = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aq = shufflevector <2 x double> %i.a, <2 x double> %i.e, <2 x i32> <i32 0, i32 2>
  %i.ar = fmul <2 x double> %i.ap, %i.aq
  %i.as = fsub <2 x double> %i.ao, %i.ar          ; 2 uses
  %i.at = extractelement <2 x double> %i.i, i64 0
  %i.au = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.av = fmul <2 x double> %.sroa.0.8.vec.insert, %i.au
  %i.aw = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ax = fmul <2 x double> %.sroa.7.32.vec.insert, %i.aw
  %i.ay = fadd <2 x double> %i.av, %i.ax
  %i.az = insertelement <2 x double> poison, double %i.k, i64 0
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = fmul <2 x double> %i.ba, %.sroa.12.56.vec.insert
  %i.bc = fadd <2 x double> %i.bb, %i.ay
  %shift = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.m, %shift
  %i.bd = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.be = fmul double %i.k, 0.000000e+00
  %i.bf = fadd double %i.be, %i.bd
  %i.bg = fmul double %.sroa.033.8.vec.extract, %i.at
  %i.bh = fsub double %i.bf, %i.bg
  %i.bi = extractelement <2 x double> %i.as, i64 0
  store double %i.bi, ptr %.sroa.35, align 16, !tbaa !12
  %i.bj = extractelement <2 x double> %i.as, i64 1
  store double %i.bj, ptr %.sroa.48, align 16, !tbaa !12
  store double %i.bh, ptr %.sroa.61, align 16, !tbaa !12
  %i.bk = load <2 x double>, ptr %1, align 16, !tbaa !8
  %.sroa.35.8..07.i.i.i.i.ptr.21.i.i.i.i.i.i.sroa_idx95 = getelementptr inbounds nuw i8, ptr %.sroa.35, i64 8
  store <2 x double> %i.bk, ptr %.sroa.35.8..07.i.i.i.i.ptr.21.i.i.i.i.i.i.sroa_idx95, align 8, !tbaa !8
  %.sroa.35.24..07.i.i.i.i.ptr.23.i.i.i.i.i.i.sroa_idx96 = getelementptr inbounds nuw i8, ptr %.sroa.35, i64 24
  store double %i.c, ptr %.sroa.35.24..07.i.i.i.i.ptr.23.i.i.i.i.i.i.sroa_idx96, align 8, !tbaa !12
  %.sroa.48.8..07.i.i.i.i.ptr.27.i.i.i.i.i.i.sroa_idx93 = getelementptr inbounds nuw i8, ptr %.sroa.48, i64 8
  store <2 x double> %i.e, ptr %.sroa.48.8..07.i.i.i.i.ptr.27.i.i.i.i.i.i.sroa_idx93, align 8, !tbaa !8
  %.sroa.48.24..07.i.i.i.i.ptr.29.i.i.i.i.i.i.sroa_idx94 = getelementptr inbounds nuw i8, ptr %.sroa.48, i64 24
  store double %i.g, ptr %.sroa.48.24..07.i.i.i.i.ptr.29.i.i.i.i.i.i.sroa_idx94, align 8, !tbaa !12
  %.sroa.61.8..07.i.i.i.i.ptr.33.i.i.i.i.i.i.sroa_idx91 = getelementptr inbounds nuw i8, ptr %.sroa.61, i64 8
  store <2 x double> %i.i, ptr %.sroa.61.8..07.i.i.i.i.ptr.33.i.i.i.i.i.i.sroa_idx91, align 8, !tbaa !8
  %.sroa.61.24..07.i.i.i.i.ptr.35.i.i.i.i.i.i.sroa_idx92 = getelementptr inbounds nuw i8, ptr %.sroa.61, i64 24
  store double %i.k, ptr %.sroa.61.24..07.i.i.i.i.ptr.35.i.i.i.i.i.i.sroa_idx92, align 8, !tbaa !12
  %i.bl = load <2 x double>, ptr %2, align 16, !tbaa !8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bn = load <2 x double>, ptr %i.bm, align 16, !tbaa !8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bp = load <2 x double>, ptr %i.bo, align 16, !tbaa !8 ; 2 uses
  %i.bq = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.br = fmul <2 x double> %i.a, %i.bq
  %.sroa.0.sroa.0.8.vec.extract = extractelement <2 x double> %i.bl, i64 1
  %i.bs = bitcast double %.sroa.0.sroa.0.8.vec.extract to <1 x double>
  %i.bt = shufflevector <1 x double> %i.bs, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bu = fmul <2 x double> %i.e, %i.bt
  %i.bv = fadd <2 x double> %i.br, %i.bu
  %i.bw = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bx = fmul <2 x double> %i.i, %i.bw
  %i.by = fadd <2 x double> %i.bx, %i.bv
  %.sroa.0.sroa.4.24.vec.extract = extractelement <2 x double> %i.bn, i64 1
  %i.bz = bitcast double %.sroa.0.sroa.4.24.vec.extract to <1 x double>
  %i.ca = shufflevector <1 x double> %i.bz, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cb = fmul <2 x double> %i.z, %i.ca
  %i.cc = fadd <2 x double> %i.cb, %i.by
  %i.cd = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ce = fmul <2 x double> %i.cd, %i.ai
  %i.cf = fadd <2 x double> %i.ce, %i.cc
  %i.cg = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.ch = fmul <2 x double> %i.cg, %i.bc
  %i.ci = fadd <2 x double> %i.ch, %i.cf
  %i.cj = fmul <2 x double> %.sroa.5.16.vec.insert61, %i.bq
  %i.ck = fmul <2 x double> %.sroa.15.64.vec.insert67, %i.bt
  %i.cl = fadd <2 x double> %i.cj, %i.ck
  %i.cm = fmul <2 x double> %.sroa.25.112.vec.insert71, %i.bw
  %i.cn = fadd <2 x double> %i.cl, %i.cm
  %.sroa.35.0..sroa.35.0..sroa.35.160. = load <2 x double>, ptr %.sroa.35, align 16, !tbaa !8
  %i.co = fmul <2 x double> %.sroa.35.0..sroa.35.0..sroa.35.160., %i.ca
  %i.cp = fadd <2 x double> %i.cn, %i.co
  %.sroa.48.0..sroa.48.0..sroa.48.208. = load <2 x double>, ptr %.sroa.48, align 16, !tbaa !8
  %i.cq = fmul <2 x double> %.sroa.48.0..sroa.48.0..sroa.48.208., %i.cd
  %i.cr = fadd <2 x double> %i.cp, %i.cq
  %.sroa.61.0..sroa.61.0..sroa.61.256. = load <2 x double>, ptr %.sroa.61, align 16, !tbaa !8
  %i.cs = fmul <2 x double> %.sroa.61.0..sroa.61.0..sroa.61.256., %i.cg
  %i.ct = fadd <2 x double> %i.cr, %i.cs
  %i.cu = fmul <2 x double> %i.bq, zeroinitializer
  %i.cv = fmul <2 x double> %i.bt, zeroinitializer
  %i.cw = fadd <2 x double> %i.cu, %i.cv
  %i.cx = fmul <2 x double> %i.bw, zeroinitializer
  %i.cy = fadd <2 x double> %i.cw, %i.cx
  %.sroa.35.16..07.i.i.i.i.ptr.22.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.35, i64 16
  %.sroa.35.16..sroa.35.16..sroa.35.176. = load <2 x double>, ptr %.sroa.35.16..07.i.i.i.i.ptr.22.i.i.i.i.i.i.sroa_idx, align 16, !tbaa !8
  %i.cz = fmul <2 x double> %i.ca, %.sroa.35.16..sroa.35.16..sroa.35.176.
  %i.da = fadd <2 x double> %i.cy, %i.cz
  %.sroa.48.16..07.i.i.i.i.ptr.28.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.48, i64 16
  %.sroa.48.16..sroa.48.16..sroa.48.224. = load <2 x double>, ptr %.sroa.48.16..07.i.i.i.i.ptr.28.i.i.i.i.i.i.sroa_idx, align 16, !tbaa !8
  %i.db = fmul <2 x double> %i.cd, %.sroa.48.16..sroa.48.16..sroa.48.224.
  %i.dc = fadd <2 x double> %i.da, %i.db
  %.sroa.61.16..07.i.i.i.i.ptr.34.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.61, i64 16
  %.sroa.61.16..sroa.61.16..sroa.61.272. = load <2 x double>, ptr %.sroa.61.16..07.i.i.i.i.ptr.34.i.i.i.i.i.i.sroa_idx, align 16, !tbaa !8
  %i.dd = fmul <2 x double> %i.cg, %.sroa.61.16..sroa.61.16..sroa.61.272.
  %i.de = fadd <2 x double> %i.dc, %i.dd
  store <2 x double> %i.ci, ptr %0, align 16, !tbaa !8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x double> %i.ct, ptr %i.df, align 16, !tbaa !8
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
end_hunk_0

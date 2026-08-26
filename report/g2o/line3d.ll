Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/line3d?download=true
inline.NumInlined: 5081
inline.NumDeleted: 3049
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 19
begin_hunk_0_@__gxx_personality_v0
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
  %i.cj = fmul <2 x double> %i.bq, %.sroa.5.16.vec.insert61
  %i.ck = fmul <2 x double> %i.bt, %.sroa.15.64.vec.insert67
  %i.cl = fadd <2 x double> %i.cj, %i.ck
  %i.cm = fmul <2 x double> %i.bw, %.sroa.25.112.vec.insert71
  %i.cn = fadd <2 x double> %i.cl, %i.cm
  %.sroa.35.0..sroa.35.0..sroa.35.160. = load <2 x double>, ptr %.sroa.35, align 16, !tbaa !8
  %i.co = fmul <2 x double> %i.ca, %.sroa.35.0..sroa.35.0..sroa.35.160.
  %i.cp = fadd <2 x double> %i.cn, %i.co
  %.sroa.48.0..sroa.48.0..sroa.48.208. = load <2 x double>, ptr %.sroa.48, align 16, !tbaa !8
  %i.cq = fmul <2 x double> %i.cd, %.sroa.48.0..sroa.48.0..sroa.48.208.
  %i.cr = fadd <2 x double> %i.cp, %i.cq
  %.sroa.61.0..sroa.61.0..sroa.61.256. = load <2 x double>, ptr %.sroa.61, align 16, !tbaa !8
  %i.cs = fmul <2 x double> %i.cg, %.sroa.61.0..sroa.61.0..sroa.61.256.
  %i.ct = fadd <2 x double> %i.cs, %i.cr
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
  %i.de = fadd <2 x double> %i.dd, %i.dc
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
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %5 = load double, ptr %4, align 16, !tbaa !8, !noalias !59
  %6 = extractelement <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, i64 1
  %7 = fmul double %6, %5
  %8 = load double, ptr %i.w, align 16, !tbaa !8, !noalias !59 ; 2 uses
  %9 = extractelement <2 x double> %i.a, i64 0
  %10 = fmul double %9, %8
  %11 = load double, ptr %3, align 16, !tbaa !8, !noalias !59 ; 2 uses
  %i.y = extractelement <2 x double> %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i, i64 0
  %12 = fmul double %i.y, %11
  %13 = fadd double %10, %12
  %14 = load double, ptr %i.x, align 16, !tbaa !8, !noalias !59 ; 2 uses
  %i.z = extractelement <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, i64 0
  %i.aa = fmul double %i.z, %14
  %15 = fadd double %13, %i.aa
  %.sroa.4.16.vec.extract.i.i = fadd double %7, %15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !12 ; 2 uses
  %i.ad = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = fmul <2 x double> %i.e, %i.ae
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %17 = load double, ptr %16, align 16, !tbaa !12 ; 2 uses
  %18 = insertelement <2 x double> poison, double %17, i64 0
  %i.ag = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = fmul <2 x double> %i.i, %i.ag
  %19 = fadd <2 x double> %i.af, %i.ah
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %21 = load double, ptr %20, align 8, !tbaa !12  ; 2 uses
  %22 = insertelement <2 x double> poison, double %21, i64 0
  %23 = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x double> %i.n, %23
  %24 = fadd <2 x double> %19, %i.ai              ; 4 uses
  %i.aj = fmul double %i.ac, %8
  %25 = fmul double %17, %11
  %26 = fmul double %21, %14
  %27 = fadd double %25, %26
  %i.ak = fadd double %i.aj, %27                  ; 4 uses
  %i.al = fmul <2 x double> %24, %24              ; 2 uses
  %shift53 = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop54 = fadd <2 x double> %i.al, %shift53
  %i.am = extractelement <2 x double> %foldExtExtBinop54, i64 0
  %i.an = fmul double %i.ak, %i.ak
  %i.ao = fadd double %i.an, %i.am                ; 2 uses
  %i.ap = fcmp ogt double %i.ao, 0.000000e+00     ; 2 uses
  %.scalar.i.i = tail call double @llvm.sqrt.f64(double %i.ao) ; 2 uses
  %i.aq = insertelement <2 x double> poison, double %.scalar.i.i, i64 0
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.as = fdiv <2 x double> %24, %i.ar
  %i.at = fdiv double %i.ak, %.scalar.i.i
  %.sroa.8.0.i = select i1 %i.ap, double %i.at, double %i.ak ; 3 uses
  %.sroa.0.0.i = select i1 %i.ap, <2 x double> %i.as, <2 x double> %24 ; 3 uses
  %i.au = fmul <2 x double> %i.v, %.sroa.0.0.i    ; 2 uses
  %shift56 = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop57 = fadd <2 x double> %i.au, %shift56
  %i.av = extractelement <2 x double> %foldExtExtBinop57, i64 0
  %i.aw = fmul double %.sroa.4.16.vec.extract.i.i, %.sroa.8.0.i
  %i.ax = fadd double %i.aw, %i.av                ; 2 uses
  %.sroa.6.16.vec.insert.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.ay = shufflevector <2 x double> %.sroa.6.16.vec.insert.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = fmul <2 x double> %.sroa.0.0.i, %i.ay
  %i.ba = fsub <2 x double> %i.v, %i.az
  %i.bb = fmul double %.sroa.8.0.i, %i.ax
  %i.bc = fsub double %.sroa.4.16.vec.extract.i.i, %i.bb
  store <2 x double> %i.ba, ptr %0, align 16, !tbaa !8, !alias.scope !64
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.bc, ptr %i.bd, align 16, !tbaa !12, !alias.scope !64
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x double> %.sroa.0.0.i, ptr %i.be, align 8, !tbaa !8, !alias.scope !64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.sroa.8.0.i, ptr %i.bf, align 8, !tbaa !12, !alias.scope !64
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
  %.0116458 = phi i1 [ false, %bb.a ], [ %.1117, %.backedge ] ; 2 uses
  %.0120457 = phi i8 [ 1, %bb.a ], [ %.3123, %.backedge ] ; 6 uses
  %.0124455 = phi i64 [ 0, %bb.a ], [ %.pre-phi, %.backedge ] ; 21 uses
  %i.p = sub i64 2, %indvar                       ; 3 uses
  %i.q = mul nuw nsw i64 %indvar, 24
  %i.r = getelementptr nuw i8, ptr %0, i64 %i.q
  %scevgep472 = getelementptr nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.s = shl nuw nsw i64 %indvar, 5
  %i.t = getelementptr nuw i8, ptr %0, i64 %i.s
  %scevgep473 = getelementptr nuw i8, ptr %i.t, i64 8
  %.idx.i.i.i.i.i = shl nuw nsw i64 %.0124455, 5
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i.i ; 4 uses
  %.not404 = icmp eq i64 %.0124455, 2             ; 2 uses
  br i1 %.not404, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.thread, label %.lr.ph.i.i.i.i.preheader

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.thread: ; preds = %bb.b
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0124455
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
  %lcmp.mod497 = trunc i64 %i.p to i1
  call void @llvm.assume(i1 %lcmp.mod497)
  %.idx.i.i.i.i.i.i.i.epil = shl i64 %.02126.i.i.i.i.epil.init, 5
  %i.am = getelementptr i8, ptr %i.u, i64 %.idx.i.i.i.i.i.i.i.epil
  %i.an = load double, ptr %i.am, align 8, !tbaa !12
  %i.ao = call noundef double @llvm.fabs.f64(double %i.an)
  %i.ap = fcmp ogt double %i.ao, %.epil.init
  %.sroa.0.1.i.i.epil = select i1 %i.ap, i64 %.02126.i.i.i.i.epil.init, i64 %.sroa.0.0.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.0.1.i.i.lcssa = phi i64 [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ], [ %.sroa.0.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ] ; 6 uses
  %i.aq = add i64 %.sroa.0.1.i.i.lcssa, %.0124455 ; 6 uses
  %i.ar = trunc i64 %i.aq to i32
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0124455
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !67
  %.not = icmp eq i64 %.sroa.0.1.i.i.lcssa, 0
  br i1 %.not, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit..loopexit_crit_edge, label %bb.c

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit..loopexit_crit_edge: ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.thread, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit
  %.pre = add nuw nsw i64 %.0124455, 1
  %.pre419 = mul nuw nsw i64 %.0124455, 24
  br label %.loopexit

bb.c:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit
  %i.at = sub i64 2, %i.aq                        ; 4 uses
  %i.au = getelementptr [8 x i8], ptr %0, i64 %.0124455 ; 4 uses
  %i.av = getelementptr [8 x i8], ptr %0, i64 %i.aq ; 5 uses
  %.not405 = icmp eq i64 %.0124455, 0
  br i1 %.not405, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i

end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_project_xyz?download=true
inline.NumInlined: 3920
inline.NumDeleted: 2364
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN3g2o17EdgeSE3ProjectXYZ12computeErrorEv:bb.a
  %i.t = load double, ptr %i.h, align 8, !tbaa !49, !noalias !165 ; 2 uses
  %i.u = load double, ptr %i.g, align 8, !tbaa !49, !noalias !165 ; 4 uses
  %i.v = fneg double %i.l
  %i.w = fmul double %i.u, %i.v
  %i.x = tail call double @llvm.fmuladd.f64(double %i.n, double %i.t, double %i.w)
  %i.y = fneg double %i.t
  %i.z = fmul double %i.j, %i.y
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.u, double %i.p, double %i.z) ; 2 uses
  %.sroa.027.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.s, i64 0
  %.sroa.027.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.027.0.vec.insert.i.i.i.i, double %i.x, i64 1 ; 2 uses
  %i.ab = fadd <2 x double> %.sroa.027.8.vec.insert.i.i.i.i, %.sroa.027.8.vec.insert.i.i.i.i ; 3 uses
  %i.ac = fadd double %i.aa, %i.aa                ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !49, !noalias !166 ; 2 uses
  %.sroa.027.8.vec.extract.i.i.i.i = extractelement <2 x double> %i.ab, i64 1 ; 2 uses
  %i.af = fneg double %.sroa.027.8.vec.extract.i.i.i.i
  %i.ag = fmul double %i.n, %i.af
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.j, double %i.ac, double %i.ag)
  %.sroa.027.0.vec.extract.i.i.i.i = extractelement <2 x double> %i.ab, i64 0 ; 2 uses
  %i.ai = fneg double %i.ac
  %i.aj = fmul double %i.u, %i.ai
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.n, double %.sroa.027.0.vec.extract.i.i.i.i, double %i.aj)
  %i.al = fneg double %.sroa.027.0.vec.extract.i.i.i.i
  %i.am = fmul double %i.j, %i.al
  %i.an = tail call double @llvm.fmuladd.f64(double %i.u, double %.sroa.027.8.vec.extract.i.i.i.i, double %i.am)
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.ah, i64 0
  %.sroa.0.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i.i, double %i.ak, i64 1
  %.sroa.615.32.vec.insert.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.ao = load <2 x double>, ptr %i.h, align 8, !tbaa !60, !noalias !167
  %i.ap = shufflevector <2 x double> %.sroa.615.32.vec.insert.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aq = fmul <2 x double> %i.ap, %i.ab
  %i.ar = fadd <2 x double> %i.ao, %i.aq
  %i.as = fadd <2 x double> %i.ar, %.sroa.0.8.vec.insert.i.i.i.i
  %i.at = fmul double %i.ae, %i.ac
  %i.au = fadd double %i.l, %i.at
  %i.av = fadd double %i.au, %i.an
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.ax = load <2 x double>, ptr %i.aw, align 8, !tbaa !60, !noalias !168
  %i.ay = fadd <2 x double> %i.ax, %i.as
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %i.ba = load double, ptr %i.az, align 8, !tbaa !49, !noalias !168
  %i.bb = fadd double %i.ba, %i.av
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.be = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bg = fdiv <2 x double> %i.ay, %i.bf
  %i.bh = load <2 x double>, ptr %i.bc, align 8, !tbaa !49, !noalias !169
  %i.bi = load <2 x double>, ptr %i.bd, align 8, !tbaa !49, !noalias !169
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bg, <2 x double> %i.bh, <2 x double> %i.bi)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bl = fsub <2 x double> %.sroa.05.0.copyload, %i.bj
  store <2 x double> %i.bl, ptr %i.bk, align 16, !tbaa !60
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK3g2o17EdgeSE3ProjectXYZ11cam_projectERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Eigen::Matrix") align 16 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(360) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !49, !noalias !172
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.e = load <2 x double>, ptr %2, align 8, !tbaa !49, !noalias !172
  %i.f = insertelement <2 x double> poison, double %i.b, i64 0
  %i.g = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer
  %i.h = fdiv <2 x double> %i.e, %i.g
  %i.i = load <2 x double>, ptr %i.c, align 8, !tbaa !49
  %i.j = load <2 x double>, ptr %i.d, align 8, !tbaa !49
  %i.k = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.h, <2 x double> %i.i, <2 x double> %i.j)
  store <2 x double> %i.k, ptr %0, align 16, !tbaa !49
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN3g2o17EdgeSE3ProjectXYZ15isDepthPositiveEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(360) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 4 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.j = load double, ptr %i.g, align 8, !tbaa !49, !noalias !185 ; 2 uses
  %i.k = load double, ptr %i.f, align 8, !tbaa !49, !noalias !185 ; 3 uses
  %i.l = load <2 x double>, ptr %i.h, align 8, !tbaa !49, !noalias !185 ; 3 uses
  %i.m = load <2 x double>, ptr %i.i, align 8, !tbaa !49, !noalias !185 ; 4 uses
  %i.n = fneg <2 x double> %i.m
  %i.o = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.p = insertelement <2 x double> %i.o, double %i.k, i64 1
  %i.q = fmul <2 x double> %i.p, %i.n
  %i.r = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.s = insertelement <2 x double> %i.r, double %i.j, i64 1
  %i.t = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.l, <2 x double> %i.s, <2 x double> %i.q) ; 2 uses
  %i.u = fneg double %i.j
  %i.v = extractelement <2 x double> %i.l, i64 0  ; 2 uses
  %i.w = fmul double %i.v, %i.u
  %i.x = extractelement <2 x double> %i.m, i64 0
  %i.y = tail call double @llvm.fmuladd.f64(double %i.k, double %i.x, double %i.w) ; 2 uses
  %i.z = fadd <2 x double> %i.t, %i.t             ; 2 uses
  %i.aa = fadd double %i.y, %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !49, !noalias !186
  %.sroa.027.8.vec.extract.i.i.i.i = extractelement <2 x double> %i.z, i64 1
  %.sroa.027.0.vec.extract.i.i.i.i = extractelement <2 x double> %i.z, i64 0
  %i.ad = fneg double %.sroa.027.0.vec.extract.i.i.i.i
  %i.ae = fmul double %i.v, %i.ad
  %i.af = tail call double @llvm.fmuladd.f64(double %i.k, double %.sroa.027.8.vec.extract.i.i.i.i, double %i.ae)
  %i.ag = fmul double %i.ac, %i.aa
  %i.ah = extractelement <2 x double> %i.m, i64 1
  %i.ai = fadd double %i.ah, %i.ag
  %i.aj = fadd double %i.ai, %i.af
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %i.al = load double, ptr %i.ak, align 8, !tbaa !49, !noalias !187
  %i.am = fadd double %i.al, %i.aj
  %i.an = fcmp ogt double %i.am, 0.000000e+00
  ret i1 %i.an
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3g2o17EdgeSE3ProjectXYZ14linearizeOplusEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(360) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.2.i.i.i.i.i.i.i.i.i.i = alloca <2 x double>, align 16 ; 5 uses
  %1 = alloca %"class.Eigen::Matrix.152", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %.sroa.041.0.copyload = load double, ptr %i.e, align 16 ; 8 uses
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %.sroa.543.0.copyload = load double, ptr %.sroa.543.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %.sroa.7.0.copyload = load double, ptr %.sroa.7.0..sroa_idx, align 16 ; 6 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %.sroa.9.0.copyload = load double, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !60 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %.sroa.11.32.copyload = load <2 x double>, ptr %i.f, align 16
  %.sroa.13.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %.sroa.13.32.copyload = load double, ptr %.sroa.13.32..sroa_idx, align 16, !tbaa !60
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %.sroa.038.0.copyload = load <2 x double>, ptr %i.h, align 8 ; 3 uses
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %.sroa.640.0.copyload = load double, ptr %.sroa.640.0..sroa_idx, align 8, !tbaa !60 ; 3 uses
  %.sroa.038.8.vec.extract = extractelement <2 x double> %.sroa.038.0.copyload, i64 1 ; 2 uses
  %i.i = fneg double %.sroa.038.8.vec.extract
  %i.j = fmul double %.sroa.7.0.copyload, %i.i
  %i.k = tail call double @llvm.fmuladd.f64(double %.sroa.543.0.copyload, double %.sroa.640.0.copyload, double %i.j)
  %.sroa.038.0.vec.extract = extractelement <2 x double> %.sroa.038.0.copyload, i64 0 ; 2 uses
  %i.l = fneg double %.sroa.640.0.copyload
  %i.m = fmul double %.sroa.041.0.copyload, %i.l
  %i.n = tail call double @llvm.fmuladd.f64(double %.sroa.7.0.copyload, double %.sroa.038.0.vec.extract, double %i.m)
  %i.o = fneg double %.sroa.038.0.vec.extract
  %i.p = fmul double %.sroa.543.0.copyload, %i.o
  %i.q = tail call double @llvm.fmuladd.f64(double %.sroa.041.0.copyload, double %.sroa.038.8.vec.extract, double %i.p) ; 2 uses
  %.sroa.027.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.k, i64 0
  %.sroa.027.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.027.0.vec.insert.i.i.i.i, double %i.n, i64 1 ; 2 uses
  %i.r = fadd <2 x double> %.sroa.027.8.vec.insert.i.i.i.i, %.sroa.027.8.vec.insert.i.i.i.i ; 3 uses
  %i.s = fadd double %i.q, %i.q                   ; 3 uses
  %.sroa.027.8.vec.extract.i.i.i.i = extractelement <2 x double> %i.r, i64 1 ; 2 uses
  %i.t = fneg double %.sroa.027.8.vec.extract.i.i.i.i
  %i.u = fmul double %.sroa.7.0.copyload, %i.t
  %i.v = tail call double @llvm.fmuladd.f64(double %.sroa.543.0.copyload, double %i.s, double %i.u)
  %.sroa.027.0.vec.extract.i.i.i.i = extractelement <2 x double> %i.r, i64 0 ; 2 uses
  %i.w = fneg double %i.s
  %i.x = fmul double %.sroa.041.0.copyload, %i.w
  %i.y = tail call double @llvm.fmuladd.f64(double %.sroa.7.0.copyload, double %.sroa.027.0.vec.extract.i.i.i.i, double %i.x)
  %i.z = fneg double %.sroa.027.0.vec.extract.i.i.i.i
  %i.aa = fmul double %.sroa.543.0.copyload, %i.z
  %i.ab = tail call double @llvm.fmuladd.f64(double %.sroa.041.0.copyload, double %.sroa.027.8.vec.extract.i.i.i.i, double %i.aa)
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.v, i64 0
  %.sroa.0.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i.i, double %i.y, i64 1
  %.sroa.615.32.vec.insert.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %.sroa.9.0.copyload, i64 0
  %i.ac = shufflevector <2 x double> %.sroa.615.32.vec.insert.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x double> %i.ac, %i.r
  %i.ae = fadd <2 x double> %.sroa.038.0.copyload, %i.ad
  %i.af = fadd <2 x double> %i.ae, %.sroa.0.8.vec.insert.i.i.i.i
  %i.ag = fmul double %.sroa.9.0.copyload, %i.s
  %i.ah = fadd double %.sroa.640.0.copyload, %i.ag
  %i.ai = fadd double %i.ah, %i.ab
  %i.aj = fadd <2 x double> %.sroa.11.32.copyload, %i.af ; 5 uses
  %i.ak = fadd double %.sroa.13.32.copyload, %i.ai ; 5 uses
  %.sroa.037.0.vec.extract = extractelement <2 x double> %i.aj, i64 0 ; 2 uses
  %.sroa.037.8.vec.extract = extractelement <2 x double> %i.aj, i64 1 ; 4 uses
  %i.al = fmul double %i.ak, %i.ak                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 5 uses
  %2 = load <2 x double>, ptr %i.am, align 8, !tbaa !49 ; 3 uses
  %i.aq = insertelement <2 x double> %2, double 0.000000e+00, i64 1
  store <2 x double> %i.aq, ptr %1, align 16, !tbaa !49
  %3 = insertelement <2 x double> %2, double 0.000000e+00, i64 0
  store <2 x double> %3, ptr %i.an, align 16, !tbaa !49
  %4 = fneg <2 x double> %i.aj                    ; 2 uses
  %i.ar = insertelement <2 x double> poison, double %i.ak, i64 0
  %5 = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer
  %6 = fdiv <2 x double> %4, %5                   ; 2 uses
  %i.as = fmul <2 x double> %2, %6
  store <2 x double> %i.as, ptr %i.ao, align 16, !tbaa !49
  %i.at = fdiv double -1.000000e+00, %i.ak        ; 3 uses
  %i.au = fmul double %.sroa.041.0.copyload, 2.000000e+00 ; 2 uses
  %i.av = fmul double %.sroa.543.0.copyload, 2.000000e+00 ; 3 uses
  %i.aw = fmul double %.sroa.7.0.copyload, 2.000000e+00 ; 4 uses
  %i.ax = fmul double %i.au, %.sroa.9.0.copyload  ; 2 uses
  %i.ay = fmul double %i.av, %.sroa.9.0.copyload  ; 2 uses
  %i.az = fmul double %i.aw, %.sroa.9.0.copyload  ; 2 uses
  %i.ba = fmul double %.sroa.041.0.copyload, %i.au ; 2 uses
  %i.bb = fmul double %.sroa.041.0.copyload, %i.av ; 2 uses
  %i.bc = fmul double %.sroa.041.0.copyload, %i.aw ; 2 uses
  %i.bd = fmul double %.sroa.543.0.copyload, %i.av ; 2 uses
  %i.be = fmul double %.sroa.543.0.copyload, %i.aw ; 2 uses
  %i.bf = fmul double %.sroa.7.0.copyload, %i.aw  ; 2 uses
  %i.bg = fadd double %i.bd, %i.bf
  %i.bh = fsub double 1.000000e+00, %i.bg
  %i.bi = fsub double %i.bb, %i.az
  %i.bj = fadd double %i.bc, %i.ay
  %i.bk = fadd double %i.bb, %i.az
  %i.bl = fadd double %i.ba, %i.bf
  %i.bm = fsub double 1.000000e+00, %i.bl
  %i.bn = fsub double %i.be, %i.ax
  %.sroa.0.sroa.16.56.vec.insert = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.bo = fsub double %i.bc, %i.ay
  %i.bp = fadd double %i.be, %i.ax
  %i.bq = fadd double %i.ba, %i.bd
  %i.br = fsub double 1.000000e+00, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !217, !nonnull !75, !align !76
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i.i.i)
  store double %i.at, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i, align 16, !tbaa !78, !alias.scope !218
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i, i64 8
  store ptr %1, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !220, !alias.scope !218
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.0..sroa.2.i.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i.i.i.i.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i, align 16 ; 2 uses
  %bc.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <2 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.0..sroa.2.i.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i.i.i.i.i.i.i.i.i.i to <2 x i64>
  %i.bu = extractelement <2 x i64> %bc.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %i.bv = inttoptr i64 %i.bu to ptr               ; 3 uses
  %i.bw = shufflevector <2 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.0..sroa.2.i.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bx = load <2 x double>, ptr %i.bv, align 1, !tbaa !60
  %i.by = fmul <2 x double> %i.bw, %i.bx          ; 3 uses
  %i.bz = bitcast double %i.bh to <1 x double>
  %i.ca = shufflevector <1 x double> %i.bz, <1 x double> poison, <2 x i32> zeroinitializer
  %i.cb = fmul <2 x double> %i.by, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.cd = load <2 x double>, ptr %i.cc, align 1, !tbaa !60
  %i.ce = fmul <2 x double> %i.bw, %i.cd          ; 3 uses
  %i.cf = bitcast double %i.bk to <1 x double>
  %i.cg = shufflevector <1 x double> %i.cf, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ch = fmul <2 x double> %i.ce, %i.cg
  %i.ci = fadd <2 x double> %i.cb, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.ck = load <2 x double>, ptr %i.cj, align 1, !tbaa !60
  %i.cl = fmul <2 x double> %i.bw, %i.ck          ; 3 uses
  %i.cm = bitcast double %i.bo to <1 x double>
  %i.cn = shufflevector <1 x double> %i.cm, <1 x double> poison, <2 x i32> zeroinitializer
  %i.co = fmul <2 x double> %i.cl, %i.cn
  %i.cp = fadd <2 x double> %i.ci, %i.co
  %i.cq = bitcast double %i.bi to <1 x double>
  %i.cr = shufflevector <1 x double> %i.cq, <1 x double> poison, <2 x i32> zeroinitializer
  %i.cs = fmul <2 x double> %i.by, %i.cr
  %i.ct = bitcast double %i.bm to <1 x double>
  %i.cu = shufflevector <1 x double> %i.ct, <1 x double> poison, <2 x i32> zeroinitializer
  %i.cv = fmul <2 x double> %i.ce, %i.cu
  %i.cw = fadd <2 x double> %i.cs, %i.cv
  %i.cx = bitcast double %i.bp to <1 x double>
  %i.cy = shufflevector <1 x double> %i.cx, <1 x double> poison, <2 x i32> zeroinitializer
  %i.cz = fmul <2 x double> %i.cl, %i.cy
  %i.da = fadd <2 x double> %i.cw, %i.cz
  %i.db = bitcast double %i.bj to <1 x double>
  %i.dc = shufflevector <1 x double> %i.db, <1 x double> poison, <2 x i32> zeroinitializer
  %i.dd = fmul <2 x double> %i.by, %i.dc
  %i.de = shufflevector <2 x double> %.sroa.0.sroa.16.56.vec.insert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.df = fmul <2 x double> %i.ce, %i.de
  %i.dg = fadd <2 x double> %i.dd, %i.df
  %i.dh = insertelement <2 x double> poison, double %i.br, i64 0
  %i.di = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dj = fmul <2 x double> %i.cl, %i.di
  %i.dk = fadd <2 x double> %i.dj, %i.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i.i.i)
  %i.dl = load ptr, ptr %i.bt, align 8, !tbaa !79 ; 3 uses
  store <2 x double> %i.cp, ptr %i.dl, align 16, !tbaa !60
  %i.dm = getelementptr i8, ptr %i.dl, i64 16
  store <2 x double> %i.da, ptr %i.dm, align 16, !tbaa !60
  %i.dn = getelementptr i8, ptr %i.dl, i64 32
  store <2 x double> %i.dk, ptr %i.dn, align 16, !tbaa !60
  %i.do = fmul double %.sroa.037.0.vec.extract, %.sroa.037.8.vec.extract
  %i.dp = fdiv double %i.do, %i.al
  %i.dq = load double, ptr %i.am, align 8, !tbaa !222
  %i.dr = fmul double %i.dp, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.dt = load ptr, ptr %i.ds, align 16, !tbaa !223, !nonnull !75, !align !76
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !80 ; 12 uses
  store double %i.dr, ptr %i.du, align 8, !tbaa !49
  %i.dv = load double, ptr %i.am, align 8, !tbaa !222
  %i.dw = getelementptr i8, ptr %i.du, i64 16
  %i.dx = fdiv double %.sroa.037.8.vec.extract, %i.ak
  %i.dy = getelementptr i8, ptr %i.du, i64 32
  %i.dz = getelementptr i8, ptr %i.du, i64 48
  %i.ea = getelementptr i8, ptr %i.du, i64 64
  %i.eb = fdiv double %.sroa.037.0.vec.extract, %i.al
  %i.ec = getelementptr i8, ptr %i.du, i64 80
  %i.ed = fmul <2 x double> %i.aj, %i.aj
  %i.ee = insertelement <2 x double> poison, double %i.al, i64 0
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = fdiv <2 x double> %i.ed, %i.ef
  %i.eh = fadd <2 x double> %i.eg, splat (double 1.000000e+00) ; 2 uses
  %i.ei = extractelement <2 x double> %i.eh, i64 0
  %i.ej = fneg double %i.ei
  %i.ek = fmul double %i.dv, %i.ej
  store double %i.ek, ptr %i.dw, align 8, !tbaa !49
  %i.el = load double, ptr %i.am, align 8, !tbaa !222
  %i.em = fmul double %i.dx, %i.el
  store double %i.em, ptr %i.dy, align 8, !tbaa !49
  %i.en = load double, ptr %i.am, align 8, !tbaa !222
  %i.eo = fmul double %i.at, %i.en
  store double %i.eo, ptr %i.dz, align 8, !tbaa !49
  store double 0.000000e+00, ptr %i.ea, align 8, !tbaa !49
  %i.ep = load double, ptr %i.am, align 8, !tbaa !222
  %i.eq = fmul double %i.eb, %i.ep
  store double %i.eq, ptr %i.ec, align 8, !tbaa !49
  %i.er = load double, ptr %i.ap, align 16, !tbaa !224
  %i.es = extractelement <2 x double> %i.eh, i64 1
  %i.et = fmul double %i.es, %i.er
  %i.eu = getelementptr i8, ptr %i.du, i64 8
  store double %i.et, ptr %i.eu, align 8, !tbaa !49
  %i.ev = extractelement <2 x double> %4, i64 0
  %i.ew = fmul double %.sroa.037.8.vec.extract, %i.ev
  %i.ex = fdiv double %i.ew, %i.al
  %i.ey = load double, ptr %i.ap, align 16, !tbaa !224
  %i.ez = fmul double %i.ex, %i.ey
  %i.fa = getelementptr i8, ptr %i.du, i64 24
  store double %i.ez, ptr %i.fa, align 8, !tbaa !49
  %i.fb = load double, ptr %i.ap, align 16, !tbaa !224
  %7 = extractelement <2 x double> %6, i64 0
  %i.fc = fmul double %7, %i.fb
  %i.fd = getelementptr i8, ptr %i.du, i64 40
  store double %i.fc, ptr %i.fd, align 8, !tbaa !49
  %i.fe = getelementptr i8, ptr %i.du, i64 56
  store double 0.000000e+00, ptr %i.fe, align 8, !tbaa !49
  %i.ff = load double, ptr %i.ap, align 16, !tbaa !224
  %i.fg = fmul double %i.at, %i.ff
  %i.fh = getelementptr i8, ptr %i.du, i64 72
  store double %i.fg, ptr %i.fh, align 8, !tbaa !49
  %i.fi = fdiv double %.sroa.037.8.vec.extract, %i.al
  %i.fj = load double, ptr %i.ap, align 16, !tbaa !224
  %i.fk = fmul double %i.fi, %i.fj
  %i.fl = getelementptr i8, ptr %i.du, i64 88
  store double %i.fk, ptr %i.fl, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o17EdgeSE3ProjectXYZD0Ev(ptr noundef nonnull align 16 dereferenceable(360) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o16OptimizableGraph4EdgeD2Ev(ptr noundef nonnull align 16 dead_on_return(360) dereferenceable(360) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 368) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10HyperGraph4Edge11elementTypeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEJNS_14VertexPointXYZENS_15VertexSE3ExpmapEEE6resizeEm(ptr noundef nonnull align 16 dereferenceable(312) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o10HyperGraph4Edge6resizeEm(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o18BaseFixedSizedEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEJNS_14VertexPointXYZENS_15VertexSE3ExpmapEEE16allVerticesFixedEv(ptr noundef nonnull align 16 dereferenceable(312) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.e = load i8, ptr %i.d, align 4, !tbaa !96, !range !97, !noundef !75
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZNK3g2o18BaseFixedSizedEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEJNS_14VertexPointXYZENS_15VertexSE3ExpmapEEE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 100
  %i.j = load i8, ptr %i.i, align 4, !tbaa !96, !range !97, !noundef !75
  %i.k = trunc nuw i8 %i.j to i1
  br label %_ZNK3g2o18BaseFixedSizedEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEJNS_14VertexPointXYZENS_15VertexSE3ExpmapEEE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit

_ZNK3g2o18BaseFixedSizedEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEJNS_14VertexPointXYZENS_15VertexSE3ExpmapEEE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit: ; preds = %bb.a, %bb.b
  %i.l = phi i1 [ false, %bb.a ], [ %i.k, %bb.b ]
  ret i1 %i.l
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o17EdgeSE3ProjectXYZ18setMeasurementDataEPKd(ptr noundef nonnull align 16 dereferenceable(360) %0, ptr noundef %1) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix", align 16    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.a = load <2 x double>, ptr %1, align 1, !tbaa !60
  store <2 x double> %i.a, ptr %2, align 16, !tbaa !60
  %i.b = load ptr, ptr %0, align 16, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr noundef nonnull align 16 dereferenceable(240) %0, ptr noundef nonnull align 16 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o17EdgeSE3ProjectXYZ18getMeasurementDataEPd(ptr noundef nonnull align 16 dereferenceable(360) %0, ptr noundef %1) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load <2 x double>, ptr %i.a, align 16, !tbaa !60
  store <2 x double> %i.b, ptr %1, align 1, !tbaa !60
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o17EdgeSE3ProjectXYZ20measurementDimensionEv(ptr noundef nonnull align 16 dereferenceable(360) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret i32 2
}

declare noundef zeroext i1 @_ZN3g2o16OptimizableGraph4Edge23setMeasurementFromStateEv(ptr noundef nonnull align 8 dereferenceable(176)) unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK3g2o8BaseEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE9errorDataEv(ptr noundef nonnull align 16 dereferenceable(240) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o8BaseEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE9errorDataEv(ptr noundef nonnull align 16 dereferenceable(240) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK3g2o8BaseEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE15informationDataEv(ptr noundef nonnull align 16 dereferenceable(240) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o8BaseEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE15informationDataEv(ptr noundef nonnull align 16 dereferenceable(240) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK3g2o8BaseEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE4chi2Ev(ptr noundef nonnull align 16 dereferenceable(240) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load <2 x double>, ptr %i.b, align 16, !tbaa !60
  %i.d = load <2 x double>, ptr %i.a, align 16    ; 3 uses
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer
  %i.f = fmul <2 x double> %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.h = load <2 x double>, ptr %i.g, align 16, !tbaa !60
  %i.i = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.j = fmul <2 x double> %i.h, %i.i
  %i.k = fadd <2 x double> %i.f, %i.j
  %i.l = fmul <2 x double> %i.d, %i.k             ; 2 uses
  %shift = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.l, %shift
  %i.m = extractelement <2 x double> %foldExtExtBinop, i64 0
  ret double %i.m
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEJNS_14VertexPointXYZENS_15VertexSE3ExpmapEEE22constructQuadraticFormEv(ptr noundef nonnull align 16 dereferenceable(312) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.2.i = alloca <2 x double>, align 16      ; 5 uses
  %1 = alloca %"class.Eigen::Matrix.114", align 8 ; 4 uses
  %2 = alloca %"class.Eigen::Matrix", align 16    ; 5 uses
  %3 = alloca %"class.Eigen::Matrix.18", align 16 ; 6 uses
  %4 = alloca %"class.Eigen::Matrix", align 16    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !231
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 16, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef double %i.e(ptr noundef nonnull align 16 dereferenceable(240) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.g = load ptr, ptr %i.a, align 16, !tbaa !231 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.g, double noundef %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.m = load <2 x double>, ptr %i.k, align 16, !tbaa !60
  %i.n = fneg <2 x double> %i.m
  %i.o = load <2 x double>, ptr %i.l, align 16    ; 2 uses
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fmul <2 x double> %i.p, %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.s = load <2 x double>, ptr %i.r, align 16, !tbaa !60
  %i.t = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.u = fmul <2 x double> %i.s, %i.t
  %i.v = fsub <2 x double> %i.q, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load double, ptr %i.w, align 8, !tbaa !49, !noalias !232 ; 2 uses
  %i.y = insertelement <2 x double> poison, double %i.x, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x double> %i.v, %i.z
  store <2 x double> %i.aa, ptr %2, align 16, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !233)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i)
  store double %i.x, ptr %.sroa.2.i, align 16, !tbaa !78, !alias.scope !234, !noalias !233
  %.sroa.2.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2.i, i64 8
  store ptr %i.k, ptr %.sroa.2.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !99, !alias.scope !234, !noalias !233
  %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i = load <2 x double>, ptr %.sroa.2.i, align 16, !noalias !233 ; 2 uses
  %bc.i.i.i.i.i.i.i = bitcast <2 x double> %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i to <2 x i64>
  %i.ab = extractelement <2 x i64> %bc.i.i.i.i.i.i.i, i64 1
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ad = shufflevector <2 x double> %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
end_hunk_0

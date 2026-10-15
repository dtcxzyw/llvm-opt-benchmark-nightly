Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_project_xyz2uv?download=true
inline.NumInlined: 4352
inline.NumDeleted: 2587
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNK3g2o17EdgeProjectXYZ2UV5writeERSo:bb.a

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o17EdgeProjectXYZ2UV12computeErrorEv(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(336) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Eigen::Matrix", align 16    ; 4 uses
  %2 = alloca %"class.Eigen::Matrix.114", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.d = load ptr, ptr %i.a, align 16, !tbaa !91  ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.not, label %bb.b, label %_ZNK3g2o16OptimizableGraph4Edge9parameterEi.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef 0, i64 noundef 0) #23
  unreachable

_ZNK3g2o16OptimizableGraph4Edge9parameterEi.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !44   ; 6 uses
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !95
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !123
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 192
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 168 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %i.p = load double, ptr %i.o, align 8, !tbaa !121, !noalias !218 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.r = load double, ptr %i.q, align 8, !tbaa !121, !noalias !218 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 208
  %i.t = load double, ptr %i.s, align 8, !tbaa !121, !noalias !218 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.v = load double, ptr %i.u, align 8, !tbaa !121, !noalias !218 ; 2 uses
  %i.w = fneg double %i.v
  %i.x = fmul double %i.t, %i.w
  %i.y = tail call double @llvm.fmuladd.f64(double %i.p, double %i.r, double %i.x)
  %i.z = load double, ptr %i.n, align 8, !tbaa !121, !noalias !218 ; 2 uses
  %i.aa = load double, ptr %i.m, align 8, !tbaa !121, !noalias !218 ; 4 uses
  %i.ab = fneg double %i.r
  %i.ac = fmul double %i.aa, %i.ab
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.t, double %i.z, double %i.ac)
  %i.ae = fneg double %i.z
  %i.af = fmul double %i.p, %i.ae
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.v, double %i.af) ; 2 uses
  %.sroa.027.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.y, i64 0
  %.sroa.027.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.027.0.vec.insert.i.i.i.i, double %i.ad, i64 1 ; 2 uses
  %i.ah = fadd <2 x double> %.sroa.027.8.vec.insert.i.i.i.i, %.sroa.027.8.vec.insert.i.i.i.i ; 3 uses
  %i.ai = fadd double %i.ag, %i.ag                ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 216
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !121, !noalias !219 ; 2 uses
  %.sroa.027.8.vec.extract.i.i.i.i = extractelement <2 x double> %i.ah, i64 1 ; 2 uses
  %i.al = fneg double %.sroa.027.8.vec.extract.i.i.i.i
  %i.am = fmul double %i.t, %i.al
  %i.an = tail call double @llvm.fmuladd.f64(double %i.p, double %i.ai, double %i.am)
  %.sroa.027.0.vec.extract.i.i.i.i = extractelement <2 x double> %i.ah, i64 0 ; 2 uses
  %i.ao = fneg double %i.ai
  %i.ap = fmul double %i.aa, %i.ao
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.t, double %.sroa.027.0.vec.extract.i.i.i.i, double %i.ap)
  %i.ar = fneg double %.sroa.027.0.vec.extract.i.i.i.i
  %i.as = fmul double %i.p, %i.ar
  %i.at = tail call double @llvm.fmuladd.f64(double %i.aa, double %.sroa.027.8.vec.extract.i.i.i.i, double %i.as)
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.an, i64 0
  %.sroa.0.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i.i, double %i.aq, i64 1
  %.sroa.615.32.vec.insert.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.au = load <2 x double>, ptr %i.n, align 8, !tbaa !99, !noalias !220
  %i.av = shufflevector <2 x double> %.sroa.615.32.vec.insert.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = fmul <2 x double> %i.av, %i.ah
  %i.ax = fadd <2 x double> %i.au, %i.aw
  %i.ay = fadd <2 x double> %i.ax, %.sroa.0.8.vec.insert.i.i.i.i
  %i.az = fmul double %i.ak, %i.ai
  %i.ba = fadd double %i.r, %i.az
  %i.bb = fadd double %i.ba, %i.at
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 224
  %i.bd = load <2 x double>, ptr %i.bc, align 8, !tbaa !99, !noalias !217
  %i.be = fadd <2 x double> %i.bd, %i.ay
  store <2 x double> %i.be, ptr %2, align 16, !tbaa !99, !alias.scope !217
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !121, !noalias !217
  %i.bi = fadd double %i.bh, %i.bb
  store double %i.bi, ptr %i.bf, align 16, !tbaa !121, !alias.scope !217
  call void @_ZNK3g2o16CameraParameters7cam_mapERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix") align 16 %1, ptr noundef nonnull align 16 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bk = load <2 x double>, ptr %i.l, align 16, !tbaa !99
  %i.bl = load <2 x double>, ptr %1, align 16, !tbaa !99
  %i.bm = fsub <2 x double> %i.bk, %i.bl
  store <2 x double> %i.bm, ptr %i.bj, align 16, !tbaa !99
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @_ZNK3g2o16CameraParameters7cam_mapERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEE(ptr dead_on_unwind writable sret(%"class.Eigen::Matrix") align 16, ptr noundef nonnull align 16 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o17EdgeProjectXYZ2UV14linearizeOplusEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(336) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.2.i.i.i.i.i.i.i.i.i.i = alloca <2 x double>, align 16 ; 5 uses
  %1 = alloca %"class.Eigen::Matrix.152", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.d = load ptr, ptr %i.a, align 16, !tbaa !91  ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.not, label %bb.b, label %_ZNK3g2o16OptimizableGraph4Edge9parameterEi.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef 0, i64 noundef 0) #23
  unreachable

_ZNK3g2o16OptimizableGraph4Edge9parameterEi.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44   ; 5 uses
  %.sroa.13.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  %.sroa.13.32.copyload = load double, ptr %.sroa.13.32..sroa_idx, align 16, !tbaa !99
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !44   ; 2 uses
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 184
  %.sroa.654.0.copyload = load double, ptr %.sroa.654.0..sroa_idx, align 8, !tbaa !99 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 216
  %.sroa.9.0.copyload = load double, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !99 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %.sroa.052.0.copyload = load <2 x double>, ptr %i.k, align 8 ; 3 uses
  %.sroa.052.8.vec.extract = extractelement <2 x double> %.sroa.052.0.copyload, i64 1 ; 2 uses
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 200
  %.sroa.052.0.vec.extract = extractelement <2 x double> %.sroa.052.0.copyload, i64 0 ; 2 uses
  %i.l = fneg double %.sroa.052.0.vec.extract
  %i.m = fneg double %.sroa.052.8.vec.extract
  %i.n = fneg double %.sroa.654.0.copyload
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  %.sroa.11.32.copyload = load <2 x double>, ptr %i.o, align 16
  %.sroa.615.32.vec.insert.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %.sroa.9.0.copyload, i64 0
  %i.p = shufflevector <2 x double> %.sroa.615.32.vec.insert.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = load <2 x double>, ptr %i.j, align 16    ; 3 uses
  %i.r = load <2 x double>, ptr %.sroa.557.0..sroa_idx, align 8 ; 2 uses
  %i.s = extractelement <2 x double> %i.q, i64 1  ; 5 uses
  %i.t = fmul double %i.s, %i.l
  %i.u = extractelement <2 x double> %i.q, i64 0  ; 7 uses
  %i.v = tail call double @llvm.fmuladd.f64(double %i.u, double %.sroa.052.8.vec.extract, double %i.t) ; 2 uses
  %i.w = fadd double %i.v, %i.v                   ; 3 uses
  %i.x = fmul double %.sroa.9.0.copyload, %i.w
  %i.y = fadd double %.sroa.654.0.copyload, %i.x
  %i.z = extractelement <2 x double> %i.r, i64 1  ; 5 uses
  %i.aa = fmul double %i.z, %i.m
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.s, double %.sroa.654.0.copyload, double %i.aa)
  %.sroa.027.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.ac = fmul double %i.u, %i.n
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.z, double %.sroa.052.0.vec.extract, double %i.ac)
  %.sroa.027.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.027.0.vec.insert.i.i.i.i, double %i.ad, i64 1 ; 2 uses
  %i.ae = fadd <2 x double> %.sroa.027.8.vec.insert.i.i.i.i, %.sroa.027.8.vec.insert.i.i.i.i ; 4 uses
  %.sroa.027.0.vec.extract.i.i.i.i = extractelement <2 x double> %i.ae, i64 0
  %i.af = fneg <2 x double> %i.ae
  %i.ag = fmul <2 x double> %i.r, %i.af
  %i.ah = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ai = insertelement <2 x double> %i.ah, double %i.w, i64 1
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> %i.ai, <2 x double> %i.ag) ; 2 uses
  %i.ak = extractelement <2 x double> %i.aj, i64 0
  %i.al = fadd double %i.y, %i.ak
  %i.am = fadd double %.sroa.13.32.copyload, %i.al ; 5 uses
  %i.an = fmul double %i.am, %i.am                ; 5 uses
  %i.ao = fmul <2 x double> %i.p, %i.ae
  %i.ap = fadd <2 x double> %.sroa.052.0.copyload, %i.ao
  %i.aq = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ar = fneg double %i.w
  %i.as = fmul double %i.u, %i.ar
  %i.at = tail call double @llvm.fmuladd.f64(double %i.z, double %.sroa.027.0.vec.extract.i.i.i.i, double %i.as)
  %.sroa.0.8.vec.insert.i.i.i.i = insertelement <2 x double> %i.aq, double %i.at, i64 1
  %i.au = fadd <2 x double> %i.ap, %.sroa.0.8.vec.insert.i.i.i.i
  %i.av = fadd <2 x double> %.sroa.11.32.copyload, %i.au ; 5 uses
  %.sroa.051.8.vec.extract = extractelement <2 x double> %i.av, i64 1 ; 4 uses
  %.sroa.051.0.vec.extract = extractelement <2 x double> %i.av, i64 0 ; 2 uses
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !95
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 11 uses
  %i.az = load double, ptr %i.ay, align 16, !tbaa !225 ; 3 uses
  store double %i.az, ptr %1, align 16, !tbaa !121
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x double> zeroinitializer, ptr %i.bb, align 8, !tbaa !121
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double %i.az, ptr %i.bc, align 8, !tbaa !121
  %i.bd = fneg <2 x double> %i.av                 ; 2 uses
  %i.be = insertelement <2 x double> poison, double %i.am, i64 0
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bg = fdiv <2 x double> %i.bd, %i.bf          ; 2 uses
  %i.bh = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bi = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bj = fmul <2 x double> %i.bi, %i.bg
  store <2 x double> %i.bj, ptr %i.ba, align 16, !tbaa !121
  %i.bk = fdiv double -1.000000e+00, %i.am        ; 3 uses
  %i.bl = fmul double %i.u, 2.000000e+00          ; 2 uses
  %i.bm = fmul double %i.s, 2.000000e+00          ; 3 uses
  %i.bn = fmul double %i.z, 2.000000e+00          ; 4 uses
  %i.bo = fmul double %.sroa.9.0.copyload, %i.bl  ; 2 uses
  %i.bp = fmul double %.sroa.9.0.copyload, %i.bm  ; 2 uses
  %i.bq = fmul double %.sroa.9.0.copyload, %i.bn  ; 2 uses
  %i.br = fmul double %i.u, %i.bl                 ; 2 uses
  %i.bs = fmul double %i.u, %i.bm                 ; 2 uses
  %i.bt = fmul double %i.u, %i.bn                 ; 2 uses
  %i.bu = fmul double %i.s, %i.bm                 ; 2 uses
  %i.bv = fmul double %i.s, %i.bn                 ; 2 uses
  %i.bw = fmul double %i.z, %i.bn                 ; 2 uses
  %i.bx = fadd double %i.bu, %i.bw
  %i.by = fsub double 1.000000e+00, %i.bx
  %i.bz = fsub double %i.bs, %i.bq
  %i.ca = fadd double %i.bp, %i.bt
  %i.cb = fadd double %i.bs, %i.bq
  %i.cc = fadd double %i.br, %i.bw
  %i.cd = fsub double 1.000000e+00, %i.cc
  %i.ce = fsub double %i.bv, %i.bo
  %.sroa.0.sroa.16.56.vec.insert = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.cf = fsub double %i.bt, %i.bp
  %i.cg = fadd double %i.bo, %i.bv
  %i.ch = fadd double %i.br, %i.bu
  %i.ci = fsub double 1.000000e+00, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !226, !nonnull !124, !align !125
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i.i.i)
  store double %i.bk, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i, align 16, !tbaa !127, !alias.scope !227
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i, i64 8
  store ptr %1, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !229, !alias.scope !227
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.0..sroa.2.i.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i.i.i.i.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i, align 16 ; 2 uses
  %bc.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <2 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.0..sroa.2.i.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i.i.i.i.i.i.i.i.i.i to <2 x i64>
  %i.cl = extractelement <2 x i64> %bc.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %i.cm = inttoptr i64 %i.cl to ptr               ; 3 uses
  %i.cn = shufflevector <2 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.0..sroa.2.i.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.co = load <2 x double>, ptr %i.cm, align 1, !tbaa !99
  %i.cp = fmul <2 x double> %i.cn, %i.co          ; 3 uses
  %i.cq = bitcast double %i.by to <1 x double>
  %i.cr = shufflevector <1 x double> %i.cq, <1 x double> poison, <2 x i32> zeroinitializer
  %i.cs = fmul <2 x double> %i.cp, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cu = load <2 x double>, ptr %i.ct, align 1, !tbaa !99
  %i.cv = fmul <2 x double> %i.cn, %i.cu          ; 3 uses
  %i.cw = bitcast double %i.cb to <1 x double>
  %i.cx = shufflevector <1 x double> %i.cw, <1 x double> poison, <2 x i32> zeroinitializer
  %i.cy = fmul <2 x double> %i.cv, %i.cx
  %i.cz = fadd <2 x double> %i.cs, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.db = load <2 x double>, ptr %i.da, align 1, !tbaa !99
  %i.dc = fmul <2 x double> %i.cn, %i.db          ; 3 uses
  %i.dd = bitcast double %i.cf to <1 x double>
  %i.de = shufflevector <1 x double> %i.dd, <1 x double> poison, <2 x i32> zeroinitializer
  %i.df = fmul <2 x double> %i.dc, %i.de
  %i.dg = fadd <2 x double> %i.cz, %i.df
  %i.dh = bitcast double %i.bz to <1 x double>
  %i.di = shufflevector <1 x double> %i.dh, <1 x double> poison, <2 x i32> zeroinitializer
  %i.dj = fmul <2 x double> %i.cp, %i.di
  %i.dk = bitcast double %i.cd to <1 x double>
  %i.dl = shufflevector <1 x double> %i.dk, <1 x double> poison, <2 x i32> zeroinitializer
  %i.dm = fmul <2 x double> %i.cv, %i.dl
  %i.dn = fadd <2 x double> %i.dj, %i.dm
  %i.do = bitcast double %i.cg to <1 x double>
  %i.dp = shufflevector <1 x double> %i.do, <1 x double> poison, <2 x i32> zeroinitializer
  %i.dq = fmul <2 x double> %i.dc, %i.dp
  %i.dr = fadd <2 x double> %i.dn, %i.dq
  %i.ds = bitcast double %i.ca to <1 x double>
  %i.dt = shufflevector <1 x double> %i.ds, <1 x double> poison, <2 x i32> zeroinitializer
  %i.du = fmul <2 x double> %i.cp, %i.dt
  %i.dv = shufflevector <2 x double> %.sroa.0.sroa.16.56.vec.insert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dw = fmul <2 x double> %i.cv, %i.dv
  %i.dx = fadd <2 x double> %i.du, %i.dw
  %i.dy = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.dz = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ea = fmul <2 x double> %i.dc, %i.dz
  %i.eb = fadd <2 x double> %i.ea, %i.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i.i.i)
  %i.ec = load ptr, ptr %i.ck, align 8, !tbaa !128 ; 3 uses
  store <2 x double> %i.dg, ptr %i.ec, align 16, !tbaa !99
  %i.ed = getelementptr i8, ptr %i.ec, i64 16
  store <2 x double> %i.dr, ptr %i.ed, align 16, !tbaa !99
  %i.ee = getelementptr i8, ptr %i.ec, i64 32
  store <2 x double> %i.eb, ptr %i.ee, align 16, !tbaa !99
  %i.ef = fmul double %.sroa.051.0.vec.extract, %.sroa.051.8.vec.extract
  %i.eg = fdiv double %i.ef, %i.an
  %i.eh = load double, ptr %i.ay, align 16, !tbaa !225
  %i.ei = fmul double %i.eg, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ek = load ptr, ptr %i.ej, align 16, !tbaa !230, !nonnull !124, !align !125
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !129 ; 12 uses
  store double %i.ei, ptr %i.el, align 8, !tbaa !121
  %i.em = load double, ptr %i.ay, align 16, !tbaa !225
  %i.en = getelementptr i8, ptr %i.el, i64 16
  %i.eo = fdiv double %.sroa.051.8.vec.extract, %i.am
  %i.ep = getelementptr i8, ptr %i.el, i64 32
  %i.eq = getelementptr i8, ptr %i.el, i64 48
  %i.er = getelementptr i8, ptr %i.el, i64 64
  %i.es = fdiv double %.sroa.051.0.vec.extract, %i.an
  %i.et = getelementptr i8, ptr %i.el, i64 80
  %i.eu = fmul <2 x double> %i.av, %i.av
  %i.ev = insertelement <2 x double> poison, double %i.an, i64 0
  %i.ew = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ex = fdiv <2 x double> %i.eu, %i.ew
  %i.ey = fadd <2 x double> %i.ex, splat (double 1.000000e+00) ; 2 uses
  %i.ez = extractelement <2 x double> %i.ey, i64 0
  %i.fa = fneg double %i.ez
  %i.fb = fmul double %i.em, %i.fa
  store double %i.fb, ptr %i.en, align 8, !tbaa !121
  %i.fc = load double, ptr %i.ay, align 16, !tbaa !225
  %i.fd = fmul double %i.eo, %i.fc
  store double %i.fd, ptr %i.ep, align 8, !tbaa !121
  %i.fe = load double, ptr %i.ay, align 16, !tbaa !225
  %i.ff = fmul double %i.bk, %i.fe
  store double %i.ff, ptr %i.eq, align 8, !tbaa !121
  store double 0.000000e+00, ptr %i.er, align 8, !tbaa !121
  %i.fg = load double, ptr %i.ay, align 16, !tbaa !225
  %i.fh = fmul double %i.es, %i.fg
  store double %i.fh, ptr %i.et, align 8, !tbaa !121
  %i.fi = load double, ptr %i.ay, align 16, !tbaa !225
  %i.fj = extractelement <2 x double> %i.ey, i64 1
  %i.fk = fmul double %i.fj, %i.fi
  %i.fl = getelementptr i8, ptr %i.el, i64 8
  store double %i.fk, ptr %i.fl, align 8, !tbaa !121
  %i.fm = extractelement <2 x double> %i.bd, i64 0
  %i.fn = fmul double %.sroa.051.8.vec.extract, %i.fm
  %i.fo = fdiv double %i.fn, %i.an
  %i.fp = load double, ptr %i.ay, align 16, !tbaa !225
  %i.fq = fmul double %i.fo, %i.fp
  %i.fr = getelementptr i8, ptr %i.el, i64 24
  store double %i.fq, ptr %i.fr, align 8, !tbaa !121
  %i.fs = load double, ptr %i.ay, align 16, !tbaa !225
  %2 = extractelement <2 x double> %i.bg, i64 0
  %i.ft = fmul double %2, %i.fs
  %i.fu = getelementptr i8, ptr %i.el, i64 40
  store double %i.ft, ptr %i.fu, align 8, !tbaa !121
  %i.fv = getelementptr i8, ptr %i.el, i64 56
  store double 0.000000e+00, ptr %i.fv, align 8, !tbaa !121
  %i.fw = load double, ptr %i.ay, align 16, !tbaa !225
  %i.fx = fmul double %i.bk, %i.fw
  %i.fy = getelementptr i8, ptr %i.el, i64 72
  store double %i.fx, ptr %i.fy, align 8, !tbaa !121
  %i.fz = fdiv double %.sroa.051.8.vec.extract, %i.an
  %i.ga = load double, ptr %i.ay, align 16, !tbaa !225
  %i.gb = fmul double %i.fz, %i.ga
  %i.gc = getelementptr i8, ptr %i.el, i64 88
  store double %i.gb, ptr %i.gc, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o17EdgeProjectXYZ2UVD0Ev(ptr noundef nonnull align 16 dereferenceable(336) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o16OptimizableGraph4EdgeD2Ev(ptr noundef nonnull align 16 dead_on_return(336) dereferenceable(336) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 336) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10HyperGraph4Edge11elementTypeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #6 comdat align 2 {
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.e = load i8, ptr %i.d, align 4, !tbaa !145, !range !146, !noundef !124
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZNK3g2o18BaseFixedSizedEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEJNS_14VertexPointXYZENS_15VertexSE3ExpmapEEE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 100
  %i.j = load i8, ptr %i.i, align 4, !tbaa !145, !range !146, !noundef !124
  %i.k = trunc nuw i8 %i.j to i1
  br label %_ZNK3g2o18BaseFixedSizedEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEJNS_14VertexPointXYZENS_15VertexSE3ExpmapEEE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit

_ZNK3g2o18BaseFixedSizedEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEJNS_14VertexPointXYZENS_15VertexSE3ExpmapEEE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit: ; preds = %bb.a, %bb.b
  %i.l = phi i1 [ false, %bb.a ], [ %i.k, %bb.b ]
  ret i1 %i.l
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o17EdgeProjectXYZ2UV18setMeasurementDataEPKd(ptr noundef nonnull align 16 dereferenceable(336) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix", align 16    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.a = load <2 x double>, ptr %1, align 1, !tbaa !99
  store <2 x double> %i.a, ptr %2, align 16, !tbaa !99
  %i.b = load ptr, ptr %0, align 16, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr noundef nonnull align 16 dereferenceable(240) %0, ptr noundef nonnull align 16 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o17EdgeProjectXYZ2UV18getMeasurementDataEPd(ptr noundef nonnull align 16 dereferenceable(336) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load <2 x double>, ptr %i.a, align 16, !tbaa !99
  store <2 x double> %i.b, ptr %1, align 1, !tbaa !99
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o17EdgeProjectXYZ2UV20measurementDimensionEv(ptr noundef nonnull align 16 dereferenceable(336) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 2
}

declare noundef zeroext i1 @_ZN3g2o16OptimizableGraph4Edge23setMeasurementFromStateEv(ptr noundef nonnull align 8 dereferenceable(176)) unnamed_addr #4

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
define linkonce_odr noundef double @_ZNK3g2o8BaseEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE4chi2Ev(ptr noundef nonnull align 16 dereferenceable(240) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load <2 x double>, ptr %i.b, align 16, !tbaa !99
  %i.d = load <2 x double>, ptr %i.a, align 16    ; 3 uses
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer
  %i.f = fmul <2 x double> %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.h = load <2 x double>, ptr %i.g, align 16, !tbaa !99
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
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEJNS_14VertexPointXYZENS_15VertexSE3ExpmapEEE22constructQuadraticFormEv(ptr noundef nonnull align 16 dereferenceable(312) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.2.i = alloca <2 x double>, align 16      ; 5 uses
  %1 = alloca %"class.Eigen::Matrix.114", align 8 ; 4 uses
  %2 = alloca %"class.Eigen::Matrix", align 16    ; 5 uses
  %3 = alloca %"class.Eigen::Matrix.18", align 16 ; 6 uses
  %4 = alloca %"class.Eigen::Matrix", align 16    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !237
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 16, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef double %i.e(ptr noundef nonnull align 16 dereferenceable(240) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.g = load ptr, ptr %i.a, align 16, !tbaa !237 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.g, double noundef %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.m = load <2 x double>, ptr %i.k, align 16, !tbaa !99
  %i.n = fneg <2 x double> %i.m
  %i.o = load <2 x double>, ptr %i.l, align 16    ; 2 uses
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fmul <2 x double> %i.p, %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.s = load <2 x double>, ptr %i.r, align 16, !tbaa !99
  %i.t = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.u = fmul <2 x double> %i.s, %i.t
  %i.v = fsub <2 x double> %i.q, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load double, ptr %i.w, align 8, !tbaa !121, !noalias !238 ; 2 uses
  %i.y = insertelement <2 x double> poison, double %i.x, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x double> %i.v, %i.z
  store <2 x double> %i.aa, ptr %2, align 16, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i)
  store double %i.x, ptr %.sroa.2.i, align 16, !tbaa !127, !alias.scope !240, !noalias !239
  %.sroa.2.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2.i, i64 8
  store ptr %i.k, ptr %.sroa.2.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !148, !alias.scope !240, !noalias !239
  %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i = load <2 x double>, ptr %.sroa.2.i, align 16, !noalias !239 ; 2 uses
  %bc.i.i.i.i.i.i.i = bitcast <2 x double> %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i to <2 x i64>
  %i.ab = extractelement <2 x i64> %bc.i.i.i.i.i.i.i, i64 1
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ad = shufflevector <2 x double> %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ae = load <2 x double>, ptr %i.ac, align 16, !tbaa !99, !noalias !239
  %i.af = fmul <2 x double> %i.ad, %i.ae
end_hunk_0

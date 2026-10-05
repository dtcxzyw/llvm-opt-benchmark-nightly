Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/vertex_pointxyz?download=true
inline.NumInlined: 3294
inline.NumDeleted: 1828
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE7hessianEii:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE7hessianEii(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = sext i32 %1 to i64
  %i.c = sext i32 %2 to i64
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !38
  %.idx.i.i.i = mul nsw i64 %i.c, 24
  %i.e = getelementptr i8, ptr %i.d, i64 %.idx.i.i.i
  %i.f = getelementptr [8 x i8], ptr %i.e, i64 %i.b
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE18hessianDeterminantEv(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 9 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !22
  %i.d = getelementptr i8, ptr %i.b, i64 24
  %i.e = getelementptr i8, ptr %i.b, i64 32
  %i.f = load double, ptr %i.e, align 8, !tbaa !22 ; 2 uses
  %i.g = getelementptr i8, ptr %i.b, i64 48
  %i.h = getelementptr i8, ptr %i.b, i64 64
  %i.i = load double, ptr %i.h, align 8, !tbaa !22 ; 2 uses
  %i.j = getelementptr i8, ptr %i.b, i64 56
  %i.k = load double, ptr %i.j, align 8, !tbaa !22 ; 2 uses
  %i.l = getelementptr i8, ptr %i.b, i64 40
  %i.m = load double, ptr %i.l, align 8, !tbaa !22 ; 2 uses
  %i.n = fneg double %i.m
  %i.o = fmul double %i.k, %i.n
  %i.p = tail call double @llvm.fmuladd.f64(double %i.f, double %i.i, double %i.o)
  %i.q = fmul double %i.c, %i.p
  %i.r = load double, ptr %i.d, align 8, !tbaa !22
  %i.s = getelementptr i8, ptr %i.b, i64 8
  %i.t = load double, ptr %i.s, align 8, !tbaa !22 ; 2 uses
  %i.u = getelementptr i8, ptr %i.b, i64 16
  %i.v = load double, ptr %i.u, align 8, !tbaa !22
  %i.w = fneg double %i.v                         ; 2 uses
  %i.x = fmul double %i.k, %i.w
  %i.y = tail call double @llvm.fmuladd.f64(double %i.t, double %i.i, double %i.x)
  %i.z = fmul double %i.r, %i.y
  %i.aa = fsub double %i.q, %i.z
  %i.ab = load double, ptr %i.g, align 8, !tbaa !22
  %i.ac = fmul double %i.f, %i.w
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.t, double %i.m, double %i.ac)
  %i.ae = fmul double %i.ab, %i.ad
  %i.af = fadd double %i.ae, %i.aa
  ret double %i.af
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE11hessianDataEv(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE16mapHessianMemoryEPd(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %1, ptr %i.a, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE5copyBEPd(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  ret i32 3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE1bEi(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE1bEi(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE5bDataEv(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE18clearQuadraticFormEv(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef double @_ZN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE11solveDirectEd(ptr noundef nonnull align 8 dereferenceable(216) %0, double noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix", align 8     ; 6 uses
  %3 = alloca %"class.Eigen::LLT", align 16       ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.09.0.copyload = load ptr, ptr %i.a, align 8 ; 7 uses
  %i.b = load double, ptr %.sroa.09.0.copyload, align 8, !tbaa !22
  %i.c = fadd double %1, %i.b                     ; 2 uses
  %i.d = getelementptr i8, ptr %.sroa.09.0.copyload, i64 8
  %i.e = fmul double %1, 0.000000e+00             ; 3 uses
  %i.f = load double, ptr %i.d, align 8, !tbaa !22
  %i.g = fadd double %i.e, %i.f                   ; 4 uses
  %i.h = getelementptr i8, ptr %.sroa.09.0.copyload, i64 16
  %i.i = load <2 x double>, ptr %i.h, align 8, !tbaa !22
  %i.j = insertelement <2 x double> poison, double %i.e, i64 0
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.l = fadd <2 x double> %i.k, %i.i             ; 3 uses
  %i.m = getelementptr i8, ptr %.sroa.09.0.copyload, i64 32
  %i.n = load double, ptr %i.m, align 8, !tbaa !22
  %i.o = fadd double %1, %i.n                     ; 3 uses
  %i.p = getelementptr i8, ptr %.sroa.09.0.copyload, i64 40
  %i.q = load double, ptr %i.p, align 8, !tbaa !22
  %i.r = fadd double %i.e, %i.q                   ; 4 uses
  %i.s = getelementptr i8, ptr %.sroa.09.0.copyload, i64 48
  %i.t = load <2 x double>, ptr %i.s, align 8, !tbaa !22
  %i.u = fadd <2 x double> %i.k, %i.t             ; 3 uses
  %i.v = getelementptr i8, ptr %.sroa.09.0.copyload, i64 64
  %i.w = load double, ptr %i.v, align 8, !tbaa !22
  %i.x = fadd double %1, %i.w                     ; 4 uses
  %i.y = fneg double %i.r
  %i.z = extractelement <2 x double> %i.u, i64 1  ; 2 uses
  %i.aa = fmul double %i.z, %i.y
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.o, double %i.x, double %i.aa)
  %i.ac = fmul double %i.c, %i.ab
  %i.ad = extractelement <2 x double> %i.l, i64 0 ; 2 uses
  %i.ae = fneg double %i.ad                       ; 2 uses
  %i.af = fmul double %i.z, %i.ae
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.g, double %i.x, double %i.af)
  %i.ah = extractelement <2 x double> %i.l, i64 1
  %i.ai = fmul double %i.ah, %i.ag
  %i.aj = fsub double %i.ac, %i.ai
  %i.ak = fmul double %i.o, %i.ae
  %i.al = tail call double @llvm.fmuladd.f64(double %i.g, double %i.r, double %i.ak)
  %i.am = extractelement <2 x double> %i.u, i64 0
  %i.an = fmul double %i.am, %i.al
  %i.ao = fadd double %i.an, %i.aj                ; 3 uses
  %i.ap = fcmp uno double %i.ao, 0.000000e+00
  %i.aq = fcmp olt double %i.ao, f0x3CB0000000000000
  %or.cond = or i1 %i.ap, %i.aq
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.13.32.vec.insert = insertelement <2 x double> poison, double %i.o, i64 0
  %.sroa.13.40.vec.insert = insertelement <2 x double> %.sroa.13.32.vec.insert, double %i.r, i64 1 ; 2 uses
  %.sroa.012.0.vec.insert = insertelement <2 x double> poison, double %i.c, i64 0
  %.sroa.012.8.vec.insert = insertelement <2 x double> %.sroa.012.0.vec.insert, double %i.g, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store <2 x double> %.sroa.012.8.vec.insert, ptr %3, align 16, !tbaa !27, !alias.scope !118
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store <2 x double> %i.l, ptr %i.ar, align 16, !tbaa !27, !alias.scope !118
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store <2 x double> %.sroa.13.40.vec.insert, ptr %i.as, align 16, !tbaa !27, !alias.scope !118
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <2 x double> %i.u, ptr %i.at, align 16, !tbaa !27, !alias.scope !118
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  store double %i.x, ptr %i.au, align 16, !tbaa !22, !alias.scope !118
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ax = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %.sroa.012.8.vec.insert) ; 2 uses
  %shift = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ax, %shift
  %i.ay = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.az = tail call noundef double @llvm.fabs.f64(double %i.ad) ; 2 uses
  %i.ba = fadd double %i.az, %i.ay                ; 2 uses
  %i.bb = fcmp ogt double %i.ba, 0.000000e+00
  %i.bc = select i1 %i.bb, double %i.ba, double 0.000000e+00 ; 2 uses
  %i.bd = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %.sroa.13.40.vec.insert) ; 2 uses
  %shift27 = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop28 = fadd <2 x double> %i.bd, %shift27
  %i.be = extractelement <2 x double> %foldExtExtBinop28, i64 0
  %i.bf = tail call noundef double @llvm.fabs.f64(double %i.g)
  %i.bg = fadd double %i.bf, %i.be                ; 2 uses
  %i.bh = fcmp ogt double %i.bg, %i.bc
  %spec.select.i = select i1 %i.bh, double %i.bg, double %i.bc ; 2 uses
  %i.bi = tail call noundef double @llvm.fabs.f64(double %i.x)
  %i.bj = tail call noundef double @llvm.fabs.f64(double %i.r)
  %i.bk = fadd double %i.az, %i.bj
  %i.bl = fadd double %i.bk, %i.bi                ; 2 uses
  %i.bm = fcmp ogt double %i.bl, %spec.select.i
  %spec.store.select.i = select i1 %i.bm, double %i.bl, double %spec.select.i
  store double %spec.store.select.i, ptr %i.aw, align 8, !alias.scope !118
  store i8 1, ptr %i.av, align 16, !tbaa !125, !alias.scope !118
  %i.bn = call noundef i64 @_ZN5Eigen8internal11llt_inplaceIdLi1EE9unblockedINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEElRT_(ptr noundef nonnull align 8 dereferenceable(88) %3)
  %i.bo = icmp ne i64 %i.bn, -1
  %i.bp = zext i1 %i.bo to i32
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 84
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !126, !alias.scope !118
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bs = load <2 x double>, ptr %i.br, align 8, !tbaa !27 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !22
  %i.bw = load double, ptr %3, align 16, !tbaa !22 ; 2 uses
  %i.bx = extractelement <2 x double> %i.bs, i64 0
  %i.by = fdiv double %i.bx, %i.bw                ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !22
  %i.cb = fmul double %i.by, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cd = extractelement <2 x double> %i.bs, i64 1
  %i.ce = fsub double %i.cd, %i.cb
  %i.cf = load double, ptr %i.as, align 16, !tbaa !22 ; 2 uses
  %i.cg = fdiv double %i.ce, %i.cf                ; 2 uses
  %i.ch = load double, ptr %i.ar, align 16, !tbaa !22
  %i.ci = fmul double %i.by, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !22 ; 2 uses
  %i.cl = fmul double %i.cg, %i.ck
  %i.cm = fadd double %i.ci, %i.cl
  %i.cn = fsub double %i.bv, %i.cm
  %i.co = load double, ptr %i.au, align 16, !tbaa !22 ; 2 uses
  %i.cp = fdiv double %i.cn, %i.co
  %i.cq = fdiv double %i.cp, %i.co                ; 2 uses
  store double %i.cq, ptr %i.bt, align 8, !tbaa !22
  %i.cr = fmul double %i.ck, %i.cq
  %i.cs = fsub double %i.cg, %i.cr
  %i.ct = fdiv double %i.cs, %i.cf
  store double %i.ct, ptr %i.cc, align 8, !tbaa !22
  %i.cu = load <2 x double>, ptr %i.bz, align 8, !tbaa !27
  %i.cv = load <2 x double>, ptr %i.cc, align 8, !tbaa !27
  %i.cw = fmul <2 x double> %i.cu, %i.cv          ; 2 uses
  %shift30 = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop31 = fadd <2 x double> %i.cw, %shift30
  %i.cx = extractelement <2 x double> %foldExtExtBinop31, i64 0
  %i.cy = fsub double %i.by, %i.cx
  %i.cz = fdiv double %i.cy, %i.bw
  store double %i.cz, ptr %2, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.da = load ptr, ptr %0, align 8, !tbaa !9
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 224
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %2), !inline_history !117
  %i.dd = load ptr, ptr %0, align 8, !tbaa !9
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 216
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(128) %0), !inline_history !117
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret double %i.ao
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o14VertexPointXYZ15getEstimateDataEPd(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load <2 x double>, ptr %i.a, align 8, !tbaa !27
  store <2 x double> %i.b, ptr %1, align 1, !tbaa !27
  %i.c = getelementptr i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.e = load double, ptr %i.d, align 8, !tbaa !22
  store double %i.e, ptr %i.c, align 8, !tbaa !22
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o16OptimizableGraph6Vertex15getEstimateDataERSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(128) %0) ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64                ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40   ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !41     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.f
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = sub nuw nsw i64 %i.f, %i.m
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.o)
  %.pre = load ptr, ptr %1, align 8, !tbaa !41
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.p = icmp ugt i64 %i.m, %i.f
  br i1 %i.p, label %bb.e, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.f ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.q
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.q, ptr %i.g, align 8, !tbaa !40
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
  %i.r = phi ptr [ %.pre, %bb.c ], [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %i.i, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ]
  %i.s = load ptr, ptr %0, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %i.r)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %.0 = phi i1 [ %i.v, %_ZNSt6vectorIdSaIdEE6resizeEm.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o14VertexPointXYZ17estimateDimensionEv(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o14VertexPointXYZ22getMinimalEstimateDataEPd(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load <2 x double>, ptr %i.a, align 8, !tbaa !27
  store <2 x double> %i.b, ptr %1, align 1, !tbaa !27
  %i.c = getelementptr i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.e = load double, ptr %i.d, align 8, !tbaa !22
  store double %i.e, ptr %i.c, align 8, !tbaa !22
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o16OptimizableGraph6Vertex22getMinimalEstimateDataERSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(128) %0) ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64                ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40   ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !41     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.f
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = sub nuw nsw i64 %i.f, %i.m
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.o)
  %.pre = load ptr, ptr %1, align 8, !tbaa !41
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.p = icmp ugt i64 %i.m, %i.f
  br i1 %i.p, label %bb.e, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.f ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.q
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.q, ptr %i.g, align 8, !tbaa !40
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
  %i.r = phi ptr [ %.pre, %bb.c ], [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %i.i, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ]
  %i.s = load ptr, ptr %0, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %i.r)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %.0 = phi i1 [ %i.v, %_ZNSt6vectorIdSaIdEE6resizeEm.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o14VertexPointXYZ24minimalEstimateDimensionEv(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE4pushEv(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !131
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.h, ptr %i.c, align 8, !tbaa !42
  br label %_ZNSt5stackIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESt6vectorIS2_SaIS2_EEE4pushERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !32   ; 5 uses
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #22
  unreachable

_ZNKSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.n = sdiv exact i64 %i.l, 24                  ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 384307168202282325)
  %i.r = select i1 %i.p, i64 384307168202282325, i64 %i.q ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.s = mul nuw nsw i64 %i.r, 24
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #23 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !131
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i ], [ %i.t, %_ZNKSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %_ZNKSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !131, !alias.scope !132
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.v, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !130

_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.w, %.lr.ph.i.i.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i33.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i33.i.i.i, label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i.i
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.aa) #21
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i.i
  store ptr %i.t, ptr %i.a, align 8, !tbaa !32
  store ptr %i.x, ptr %i.c, align 8, !tbaa !42
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.r
  store ptr %i.ab, ptr %i.e, align 8, !tbaa !33
  br label %_ZNSt5stackIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESt6vectorIS2_SaIS2_EEE4pushERKS2_.exit

_ZNSt5stackIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESt6vectorIS2_SaIS2_EEE4pushERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE3popEv(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133  ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load <2 x double>, ptr %i.c, align 1, !tbaa !27
  store <2 x double> %i.e, ptr %i.d, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.h = load double, ptr %i.g, align 8, !tbaa !22
  store double %i.h, ptr %i.f, align 8, !tbaa !22
  store ptr %i.c, ptr %i.a, align 8, !tbaa !42
  %i.i = load ptr, ptr %0, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 216
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(128) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE10discardTopEv(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -24
  store ptr %i.c, ptr %i.a, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE9stackSizeEv(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

declare void @_ZN3g2o16OptimizableGraph6Vertex11updateCacheEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o14VertexPointXYZ9oplusImplEPKd(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.b = load <2 x double>, ptr %1, align 1, !tbaa !27
  %i.c = load <2 x double>, ptr %i.a, align 8, !tbaa !27
  %i.d = fadd <2 x double> %i.b, %i.c
  store <2 x double> %i.d, ptr %i.a, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !22
  %i.h = load double, ptr %i.e, align 8, !tbaa !22
  %i.i = fadd double %i.g, %i.h
  store double %i.i, ptr %i.e, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o14VertexPointXYZ15setToOriginImplEv(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o14VertexPointXYZ19setEstimateDataImplEPKd(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load <2 x double>, ptr %1, align 1, !tbaa !27
  store <2 x double> %i.b, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = getelementptr i8, ptr %1, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !22
  store double %i.e, ptr %i.c, align 8, !tbaa !22
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o14VertexPointXYZ26setMinimalEstimateDataImplEPKd(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load <2 x double>, ptr %1, align 1, !tbaa !27
  store <2 x double> %i.b, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = getelementptr i8, ptr %1, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !22
  store double %i.e, ptr %i.c, align 8, !tbaa !22
  ret i1 true
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn64_N3g2o14VertexPointXYZD1Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -64 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEE, i64 16), ptr %i.a, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEE, i64 288), ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #21, !inline_history !34
  br label %_ZN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEED2Ev.exit

_ZN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(216) %i.a) #20, !inline_history !34
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn64_N3g2o14VertexPointXYZD0Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -64 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEE, i64 16), ptr %i.a, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEE, i64 288), ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN3g2o14VertexPointXYZD0Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #21, !inline_history !34
  br label %_ZN3g2o14VertexPointXYZD0Ev.exit

_ZN3g2o14VertexPointXYZD0Ev.exit:                 ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(216) %i.a) #20, !inline_history !34
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(216) %i.a, i64 noundef 216) #21
  ret void
}

declare noundef ptr @_ZN3g2o23HyperGraphElementActionclEPKNS_10HyperGraph17HyperGraphElementEPNS0_10ParametersE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN3g2o23HyperGraphElementActionD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o32VertexPointXYZWriteGnuplotActionD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o23HyperGraphElementActionD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #21
  ret void
}

; Function Attrs: nounwind
declare void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEE, i64 288), ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt5stackIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESt6vectorIS2_SaIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #21
  br label %_ZNSt5stackIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESt6vectorIS2_SaIS2_EEED2Ev.exit

_ZNSt5stackIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESt6vectorIS2_SaIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEED0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #24
  unreachable
}

declare noundef zeroext i1 @_ZNK3g2o16OptimizableGraph6Vertex15getEstimateDataEPd(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #2

declare noundef i32 @_ZNK3g2o16OptimizableGraph6Vertex17estimateDimensionEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK3g2o16OptimizableGraph6Vertex22getMinimalEstimateDataEPd(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #2

declare noundef i32 @_ZNK3g2o16OptimizableGraph6Vertex24minimalEstimateDimensionEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o16OptimizableGraph6Vertex19setEstimateDataImplEPKd(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o16OptimizableGraph6Vertex26setMinimalEstimateDataImplEPKd(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn64_N3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEED1Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -64 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEE, i64 16), ptr %i.a, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEE, i64 288), ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #21, !inline_history !34
  br label %_ZN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEED2Ev.exit

_ZN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(216) %i.a) #20, !inline_history !34
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn64_N3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEED0Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #24
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !41     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !22
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !40
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #22
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #23 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !22
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !22
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #21
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36: ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !41
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !40
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !134
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #12

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #15

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5Eigen8internal11llt_inplaceIdLi1EE9unblockedINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEElRT_(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.Eigen::internal::evaluator.308", align 8 ; 19 uses
  %2 = alloca %"struct.Eigen::internal::evaluator.323", align 8 ; 4 uses
  %3 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.331", align 8 ; 7 uses
  %4 = alloca %"struct.Eigen::internal::sub_assign_op", align 1 ; 3 uses
  %5 = alloca %"class.Eigen::Block.244", align 8  ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.040.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.6.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.6.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.6.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.6.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.6.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit
  %.03253 = phi i64 [ 0, %bb.a ], [ %i.n, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit ] ; 13 uses
  %i.m = sub nuw nsw i64 2, %.03253               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.n = add nuw nsw i64 %.03253, 1               ; 5 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n ; 3 uses
  %.idx.i.i.i = mul nuw nsw i64 %.03253, 24       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i.i ; 3 uses
  store ptr %i.p, ptr %5, align 8, !tbaa !47
  store i64 %i.m, ptr %i.a, align 8, !tbaa !48
  store ptr %0, ptr %i.b, align 8, !tbaa !140
  store i64 %i.n, ptr %i.c, align 8, !tbaa !48
  store i64 %.03253, ptr %i.d, align 8, !tbaa !48
  store i64 3, ptr %i.e, align 8, !tbaa !143
  %i.q = getelementptr [8 x i8], ptr %0, i64 %.03253 ; 5 uses
  %i.r = getelementptr i8, ptr %i.q, i64 %.idx.i.i.i ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !22 ; 2 uses
  %.not54 = icmp eq i64 %.03253, 0
  br i1 %.not54, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load double, ptr %i.q, align 8, !tbaa !22 ; 2 uses
  %i.u = fmul double %i.t, %i.t                   ; 2 uses
  %i.v = icmp eq i64 %.03253, 2
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEE11squaredNormEv.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.q, i64 24
  %i.x = load double, ptr %i.w, align 8, !tbaa !22 ; 2 uses
  %i.y = fmul double %i.x, %i.x
  %i.z = fadd double %i.u, %i.y
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEE11squaredNormEv.exit

_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEE11squaredNormEv.exit: ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.i.i = phi double [ %i.u, %bb.c ], [ %i.z, %.lr.ph.i.i.i.i ]
  %i.aa = fsub double %i.s, %.0.i.i
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEE11squaredNormEv.exit, %bb.b
  %.0 = phi double [ %i.aa, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEE11squaredNormEv.exit ], [ %i.s, %bb.b ] ; 2 uses
  %i.ab = fcmp ugt double %.0, 0.000000e+00
  br i1 %i.ab, label %bb.e, label %.loopexit.sink.split

bb.e:                                             ; preds = %bb.d
  %i.ac = call double @sqrt(double noundef %.0) #20 ; 6 uses
  store double %i.ac, ptr %i.r, align 8, !tbaa !22
  switch i64 %.03253, label %.thread [
    i64 2, label %.loopexit.sink.split
    i64 0, label %bb.f
  ]

.thread:                                          ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store ptr %i.o, ptr %1, align 8
  store i64 %i.m, ptr %.sroa.040.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i64 %.03253, ptr %.sroa.4.0..sroa_idx3.i.i.i.i, align 8
  store ptr %0, ptr %.sroa.5.0..sroa_idx5.i.i.i.i, align 8
  store i64 %i.n, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  store i64 0, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  store i64 3, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  store ptr %i.q, ptr %i.f, align 8
  store i64 %.03253, ptr %.sroa.6.sroa.5.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.6.sroa.6.0..sroa_idx, align 8
  store i64 %.03253, ptr %.sroa.6.sroa.7.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.6.sroa.8.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.6.sroa.9.0..sroa_idx, align 8
  store ptr %i.o, ptr %i.g, align 8, !tbaa !51
  store ptr %i.q, ptr %i.h, align 8, !tbaa !53
  store i64 %.03253, ptr %i.i, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %i.p, ptr %2, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %2, ptr %3, align 8, !tbaa !144
  store ptr %1, ptr %i.j, align 8, !tbaa !145
  store ptr %4, ptr %i.k, align 8, !tbaa !146
  store ptr %5, ptr %i.l, align 8, !tbaa !147
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS3_INS_7ProductINS4_IS6_Lin1ELin1ELb0EEENS_9TransposeIKNS4_IS6_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi3ELi0EE3runERSJ_(ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %.pre = load ptr, ptr %5, align 8, !tbaa !47
  %.pre56 = load i64, ptr %i.a, align 8, !tbaa !48
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread
  %i.ad = phi i64 [ 2, %bb.e ], [ %.pre56, %.thread ] ; 6 uses
  %i.ae = phi ptr [ %i.p, %bb.e ], [ %.pre, %.thread ] ; 6 uses
  %i.af = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ag = and i64 %i.af, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ah = lshr exact i64 %i.af, 3
  %i.ai = and i64 %i.ah, 1
  %i.aj = call i64 @llvm.smin.i64(i64 %i.ai, i64 %i.ad)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.aj, %bb.g ], [ %i.ad, %bb.f ] ; 9 uses
  %i.ak = sub nsw i64 %i.ad, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.al = sdiv i64 %i.ak, 2
  %i.am = shl nsw i64 %i.al, 1                    ; 2 uses
  %i.an = add nsw i64 %i.am, %.0.i.i.i.i.i.i.i    ; 5 uses
  %i.ao = icmp sgt i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check65 = icmp eq i64 %.0.i.i.i.i.i.i.i, 1
  br i1 %min.iters.check65, label %.lr.ph.i.i.i.i.i.i.i.preheader78, label %vector.ph66

vector.ph66:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec67 = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert68 = insertelement <2 x double> poison, double %i.ac, i64 0
  %broadcast.splat69 = shufflevector <2 x double> %broadcast.splatinsert68, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph66
  %index71 = phi i64 [ 0, %vector.ph66 ], [ %index.next73, %vector.body70 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index71 ; 2 uses
  %wide.load72 = load <2 x double>, ptr %i.ap, align 8, !tbaa !22
  %i.aq = fdiv <2 x double> %wide.load72, %broadcast.splat69
  store <2 x double> %i.aq, ptr %i.ap, align 8, !tbaa !22
  %index.next73 = add nuw i64 %index71, 2         ; 2 uses
  %i.ar = icmp eq i64 %index.next73, %n.vec67
  br i1 %i.ar, label %middle.block74, label %vector.body70, !llvm.loop !135

middle.block74:                                   ; preds = %vector.body70
  %cmp.n75 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec67
  br i1 %cmp.n75, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader78

.lr.ph.i.i.i.i.i.i.i.preheader78:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block74
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec67, %middle.block74 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader78, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader78 ] ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !22
  %i.au = fdiv double %i.at, %i.ac
  store double %i.au, ptr %i.as, align 8, !tbaa !22
  %i.av = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.av, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !136

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block74, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.aw = icmp sgt i64 %i.ak, 1
  br i1 %i.aw, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.ax = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.az = icmp slt i64 %i.an, %i.ad
  br i1 %i.az, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ba = add i64 %.0.i.i.i.i.i.i.i, %i.am
  %i.bb = sub i64 %i.ad, %i.ba                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.bb, 2
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader77, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bb, -2                      ; 3 uses
  %i.bc = add i64 %i.an, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ac, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = getelementptr [8 x i8], ptr %i.ae, i64 %i.an
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.be, align 8, !tbaa !22
  %i.bf = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.bf, ptr %i.be, align 8, !tbaa !22
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !137

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader77

.lr.ph.i17.i.i.i.i.i.i.preheader77:               ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.an, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.bc, %middle.block ]
  br label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader77, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.bk, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader77 ] ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !22
  %i.bj = fdiv double %i.bi, %i.ac
  store double %i.bj, ptr %i.bh, align 8, !tbaa !22
  %i.bk = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i = icmp eq i64 %i.bk, %i.ad
  br i1 %exitcond.not.i19.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !138

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.bm = load <2 x double>, ptr %i.bl, align 16, !tbaa !27
  %i.bn = fdiv <2 x double> %i.bm, %i.ay
  store <2 x double> %i.bn, ptr %i.bl, align 16, !tbaa !27
  %i.bo = add nsw i64 %.021.i.i.i.i.i.i, 2        ; 2 uses
  %i.bp = icmp slt i64 %i.bo, %i.an
  br i1 %i.bp, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !139

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %exitcond.not = icmp eq i64 %i.n, 3
  br i1 %exitcond.not, label %.loopexit, label %bb.b

.loopexit.sink.split:                             ; preds = %bb.e, %bb.d
  %spec.select.ph = phi i64 [ %.03253, %bb.d ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit, %.loopexit.sink.split
  %spec.select = phi i64 [ %spec.select.ph, %.loopexit.sink.split ], [ -1, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEdVERKd.exit ]
  ret i64 %spec.select
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #16

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS3_INS_7ProductINS4_IS6_Lin1ELin1ELb0EEENS_9TransposeIKNS4_IS6_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi3ELi0EE3runERSJ_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !175, !nonnull !176, !align !177 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !48   ; 10 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !47
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
  br i1 %i.o, label %.lr.ph.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit

.lr.ph.i:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !178, !nonnull !176, !align !177
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !75   ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !179, !nonnull !176, !align !177 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !180, !noalias !181 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !182, !noalias !183 ; 12 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.x = load i64, ptr %i.w, align 8, !tbaa !48, !noalias !183 ; 4 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.z = icmp sgt i64 %i.x, 1
  br i1 %i.z, label %.lr.ph.i.i.i.i.i.preheader.us.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader

.lr.ph.i.i.i.i.i.preheader.us.i.preheader:        ; preds = %.lr.ph.split.i
  %i.aa = add nsw i64 %i.x, -1                    ; 2 uses
  %i.ab = add nsw i64 %i.x, -2
  %xtraiter109 = and i64 %i.aa, 3                 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 3
  %unroll_iter = and i64 %i.aa, -4
  %lcmp.mod110.not = icmp eq i64 %xtraiter109, 0
  %lcmp.mod112 = icmp ne i64 %xtraiter109, 0
  br label %.lr.ph.i.i.i.i.i.preheader.us.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader: ; preds = %.lr.ph.split.i
  %min.iters.check = icmp ult i64 %.0.i, 10
  br i1 %min.iters.check, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader107, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader
  %i.ad = shl i64 %.0.i, 3                        ; 2 uses
  %i.ae = getelementptr i8, ptr %i.q, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.t, i64 %i.ad
  %i.ag = getelementptr i8, ptr %i.v, i64 8
  %bound0 = icmp ult ptr %i.q, %i.af
  %bound1 = icmp ult ptr %i.t, %i.ae
  %found.conflict = and i1 %bound0, %bound1
  %bound061 = icmp ult ptr %i.q, %i.ag
  %bound162 = icmp ult ptr %i.v, %i.ae
  %found.conflict63 = and i1 %bound061, %bound162
  %conflict.rdx = or i1 %found.conflict, %found.conflict63
  br i1 %conflict.rdx, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader107, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0.i, 9223372036854775804     ; 3 uses
  %i.ah = load double, ptr %i.v, align 8, !tbaa !22, !alias.scope !184
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ah, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <2 x double>, ptr %i.ai, align 8, !tbaa !22, !alias.scope !185
  %wide.load64 = load <2 x double>, ptr %i.aj, align 8, !tbaa !22, !alias.scope !185
  %i.ak = fmul <2 x double> %wide.load, %broadcast.splat
  %i.al = fmul <2 x double> %wide.load64, %broadcast.splat
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %wide.load65 = load <2 x double>, ptr %i.am, align 8, !tbaa !22, !alias.scope !186, !noalias !187
  %wide.load66 = load <2 x double>, ptr %i.an, align 8, !tbaa !22, !alias.scope !186, !noalias !187
  %i.ao = fsub <2 x double> %wide.load65, %i.ak
  %i.ap = fsub <2 x double> %wide.load66, %i.al
  store <2 x double> %i.ao, ptr %i.am, align 8, !tbaa !22, !alias.scope !186, !noalias !187
  store <2 x double> %i.ap, ptr %i.an, align 8, !tbaa !22, !alias.scope !186, !noalias !187
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !156

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader107

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader107: ; preds = %vector.memcheck, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader, %middle.block
  %.05.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.ph, 1
  %xtraiter = and i64 %.0.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader107
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.05.i.ph
  %i.as = load double, ptr %i.ar, align 8, !tbaa !22
  %i.at = load double, ptr %i.v, align 8, !tbaa !22
  %i.au = fmul double %i.as, %i.at
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.05.i.ph ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !22
  %i.ax = fsub double %i.aw, %i.au
  store double %i.ax, ptr %i.av, align 8, !tbaa !22
  %i.ay = or disjoint i64 %.05.i.ph, 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader107
  %.05.i.unr = phi i64 [ %.05.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.preheader107 ], [ %i.ay, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol ]
  %i.az = icmp eq i64 %.0.i, %.neg
  br i1 %i.az, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i

.lr.ph.i.i.i.i.i.preheader.us.i:                  ; preds = %.lr.ph.i.i.i.i.i.preheader.us.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i
  %.05.us6.i = phi i64 [ %i.cq, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.us.i.preheader ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.05.us6.i ; 6 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !22
  %i.bc = load double, ptr %i.v, align 8, !tbaa !22
  %i.bd = fmul double %i.bb, %i.bc                ; 2 uses
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.us.i.epil.preheader, label %.lr.ph.i.i.i.i.i.us.i

.lr.ph.i.i.i.i.i.us.i:                            ; preds = %.lr.ph.i.i.i.i.i.preheader.us.i, %.lr.ph.i.i.i.i.i.us.i
  %.01725.i.i.i.i.i.us.i = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i.us.i ], [ 1, %.lr.ph.i.i.i.i.i.preheader.us.i ] ; 5 uses
  %.02324.i.i.i.i.i.us.i = phi double [ %i.ce, %.lr.ph.i.i.i.i.i.us.i ], [ %i.bd, %.lr.ph.i.i.i.i.i.preheader.us.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.i.i.i.us.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.us.i ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i = mul i64 %.01725.i.i.i.i.i.us.i, 24 ; 2 uses
  %i.be = getelementptr i8, ptr %i.ba, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i
  %i.bf = load double, ptr %i.be, align 8, !tbaa !22
  %i.bg = getelementptr i8, ptr %i.v, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !22
  %i.bi = fmul double %i.bf, %i.bh
  %i.bj = fadd double %.02324.i.i.i.i.i.us.i, %i.bi
  %i.bk = mul i64 %.01725.i.i.i.i.i.us.i, 24
  %.idx.i.i.i.i.i.i.i.i.i.us.i.1 = add i64 %i.bk, 24 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.ba, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.1
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !22
  %i.bn = getelementptr i8, ptr %i.v, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.1
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !22
  %i.bp = fmul double %i.bm, %i.bo
  %i.bq = fadd double %i.bj, %i.bp
  %i.br = mul i64 %.01725.i.i.i.i.i.us.i, 24
  %.idx.i.i.i.i.i.i.i.i.i.us.i.2 = add i64 %i.br, 48 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.ba, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.2
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !22
  %i.bu = getelementptr i8, ptr %i.v, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.2
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !22
  %i.bw = fmul double %i.bt, %i.bv
  %i.bx = fadd double %i.bq, %i.bw
  %i.by = mul i64 %.01725.i.i.i.i.i.us.i, 24
  %.idx.i.i.i.i.i.i.i.i.i.us.i.3 = add i64 %i.by, 72 ; 2 uses
  %i.bz = getelementptr i8, ptr %i.ba, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.3
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !22
  %i.cb = getelementptr i8, ptr %i.v, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.3
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !22
  %i.cd = fmul double %i.ca, %i.cc
  %i.ce = fadd double %i.bx, %i.cd                ; 3 uses
  %i.cf = add nuw nsw i64 %.01725.i.i.i.i.i.us.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.us.i, !llvm.loop !157

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.us.i
  br i1 %lcmp.mod110.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i, label %.lr.ph.i.i.i.i.i.us.i.epil.preheader

.lr.ph.i.i.i.i.i.us.i.epil.preheader:             ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader.us.i
  %.01725.i.i.i.i.i.us.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader.us.i ], [ %i.cf, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa ]
  %.02324.i.i.i.i.i.us.i.epil.init = phi double [ %i.bd, %.lr.ph.i.i.i.i.i.preheader.us.i ], [ %i.ce, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod112)
  br label %.lr.ph.i.i.i.i.i.us.i.epil

.lr.ph.i.i.i.i.i.us.i.epil:                       ; preds = %.lr.ph.i.i.i.i.i.us.i.epil, %.lr.ph.i.i.i.i.i.us.i.epil.preheader
  %.01725.i.i.i.i.i.us.i.epil = phi i64 [ %i.cm, %.lr.ph.i.i.i.i.i.us.i.epil ], [ %.01725.i.i.i.i.i.us.i.epil.init, %.lr.ph.i.i.i.i.i.us.i.epil.preheader ] ; 2 uses
  %.02324.i.i.i.i.i.us.i.epil = phi double [ %i.cl, %.lr.ph.i.i.i.i.i.us.i.epil ], [ %.02324.i.i.i.i.i.us.i.epil.init, %.lr.ph.i.i.i.i.i.us.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.us.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.us.i.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i.epil = mul i64 %.01725.i.i.i.i.i.us.i.epil, 24 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.ba, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.epil
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !22
  %i.ci = getelementptr i8, ptr %i.v, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i.epil
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !22
  %i.ck = fmul double %i.ch, %i.cj
  %i.cl = fadd double %.02324.i.i.i.i.i.us.i.epil, %i.ck ; 2 uses
  %i.cm = add nuw nsw i64 %.01725.i.i.i.i.i.us.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter109
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i, label %.lr.ph.i.i.i.i.i.us.i.epil, !llvm.loop !158

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i: ; preds = %.lr.ph.i.i.i.i.i.us.i.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa
  %.lcssa106 = phi double [ %i.ce, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i.unr-lcssa ], [ %i.cl, %.lr.ph.i.i.i.i.i.us.i.epil ]
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.05.us6.i ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !22
  %i.cp = fsub double %i.co, %.lcssa106
  store double %i.cp, ptr %i.cn, align 8, !tbaa !22
  %i.cq = add nuw nsw i64 %.05.us6.i, 1           ; 2 uses
  %exitcond11.not.i = icmp eq i64 %i.cq, %.0.i
  br i1 %exitcond11.not.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit, label %.lr.ph.i.i.i.i.i.preheader.us.i, !llvm.loop !159

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i
  %.05.i = phi i64 [ %i.dg, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i ], [ %.05.i.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit ] ; 4 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.05.i
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !22
  %i.ct = load double, ptr %i.v, align 8, !tbaa !22
  %i.cu = fmul double %i.cs, %i.ct
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.05.i ; 2 uses
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !22
  %i.cx = fsub double %i.cw, %i.cu
  store double %i.cx, ptr %i.cv, align 8, !tbaa !22
  %i.cy = add nuw nsw i64 %.05.i, 1               ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.cy
  %i.da = load double, ptr %i.cz, align 8, !tbaa !22
  %i.db = load double, ptr %i.v, align 8, !tbaa !22
  %i.dc = fmul double %i.da, %i.db
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cy ; 2 uses
  %i.de = load double, ptr %i.dd, align 8, !tbaa !22
  %i.df = fsub double %i.de, %i.dc
  store double %i.df, ptr %i.dd, align 8, !tbaa !22
  %i.dg = add nuw nsw i64 %.05.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.dg, %.0.i
  br i1 %exitcond.not.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i, !llvm.loop !160

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i, %middle.block, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %.lr.ph.i
  %i.dh = icmp sgt i64 %i.k, 1
  br i1 %i.dh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit
  %i.dj = icmp slt i64 %i.n, %i.d
  br i1 %i.dj, label %.lr.ph.i17, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit31

.lr.ph.i17:                                       ; preds = %._crit_edge
  %i.dk = load ptr, ptr %0, align 8, !tbaa !178, !nonnull !176, !align !177
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !75 ; 7 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !179, !nonnull !176, !align !177 ; 3 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !180, !noalias !189 ; 7 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 56
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !182, !noalias !190 ; 12 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 72
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !48, !noalias !190 ; 4 uses
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit31, label %.lr.ph.split.i18

.lr.ph.split.i18:                                 ; preds = %.lr.ph.i17
  %i.du = icmp sgt i64 %i.ds, 1
  br i1 %i.du, label %.lr.ph.i.i.i.i.i.preheader.us.i22.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader

.lr.ph.i.i.i.i.i.preheader.us.i22.preheader:      ; preds = %.lr.ph.split.i18
  %i.dv = add nsw i64 %i.ds, -1                   ; 2 uses
  %i.dw = add nsw i64 %i.ds, -2
  %xtraiter122 = and i64 %i.dv, 3                 ; 3 uses
  %i.dx = icmp ult i64 %i.dw, 3
  %unroll_iter127 = and i64 %i.dv, -4
  %lcmp.mod124.not = icmp eq i64 %xtraiter122, 0
  %lcmp.mod126 = icmp ne i64 %xtraiter122, 0
  br label %.lr.ph.i.i.i.i.i.preheader.us.i22

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader: ; preds = %.lr.ph.split.i18
  %i.dy = add i64 %.0.i, %i.m
  %i.dz = sub i64 %i.d, %i.dy                     ; 3 uses
  %min.iters.check80 = icmp ult i64 %i.dz, 14
  br i1 %min.iters.check80, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader103, label %vector.memcheck81

vector.memcheck81:                                ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader
  %i.ea = shl i64 %i.l, 4
  %i.eb = shl i64 %.0.i, 3
  %i.ec = add i64 %i.ea, %i.eb                    ; 2 uses
  %i.ed = getelementptr i8, ptr %i.dl, i64 %i.ec  ; 2 uses
  %i.ee = shl i64 %i.d, 3                         ; 2 uses
  %i.ef = getelementptr i8, ptr %i.dl, i64 %i.ee  ; 2 uses
  %i.eg = getelementptr i8, ptr %i.do, i64 %i.ec
  %i.eh = getelementptr i8, ptr %i.do, i64 %i.ee
  %i.ei = getelementptr i8, ptr %i.dq, i64 8
  %bound082 = icmp ult ptr %i.ed, %i.eh
  %bound183 = icmp ult ptr %i.eg, %i.ef
  %found.conflict84 = and i1 %bound082, %bound183
  %bound085 = icmp ult ptr %i.ed, %i.ei
  %bound186 = icmp ult ptr %i.dq, %i.ef
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx88 = or i1 %found.conflict84, %found.conflict87
  br i1 %conflict.rdx88, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader103, label %vector.ph89

vector.ph89:                                      ; preds = %vector.memcheck81
  %n.vec90 = and i64 %i.dz, -4                    ; 3 uses
  %i.ej = add i64 %i.n, %n.vec90
  %i.ek = load double, ptr %i.dq, align 8, !tbaa !22, !alias.scope !191
  %broadcast.splatinsert95 = insertelement <2 x double> poison, double %i.ek, i64 0
  %broadcast.splat96 = shufflevector <2 x double> %broadcast.splatinsert95, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body91

vector.body91:                                    ; preds = %vector.body91, %vector.ph89
  %index92 = phi i64 [ 0, %vector.ph89 ], [ %index.next99, %vector.body91 ] ; 2 uses
  %i.el = add i64 %i.n, %index92                  ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.el ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %wide.load93 = load <2 x double>, ptr %i.em, align 8, !tbaa !22, !alias.scope !192
  %wide.load94 = load <2 x double>, ptr %i.en, align 8, !tbaa !22, !alias.scope !192
  %i.eo = fmul <2 x double> %wide.load93, %broadcast.splat96
  %i.ep = fmul <2 x double> %wide.load94, %broadcast.splat96
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.el ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 2 uses
  %wide.load97 = load <2 x double>, ptr %i.eq, align 8, !tbaa !22, !alias.scope !193, !noalias !194
  %wide.load98 = load <2 x double>, ptr %i.er, align 8, !tbaa !22, !alias.scope !193, !noalias !194
  %i.es = fsub <2 x double> %wide.load97, %i.eo
  %i.et = fsub <2 x double> %wide.load98, %i.ep
  store <2 x double> %i.es, ptr %i.eq, align 8, !tbaa !22, !alias.scope !193, !noalias !194
  store <2 x double> %i.et, ptr %i.er, align 8, !tbaa !22, !alias.scope !193, !noalias !194
  %index.next99 = add nuw i64 %index92, 4         ; 2 uses
  %i.eu = icmp eq i64 %index.next99, %n.vec90
  br i1 %i.eu, label %middle.block100, label %vector.body91, !llvm.loop !169

middle.block100:                                  ; preds = %vector.body91
  %cmp.n101 = icmp eq i64 %i.dz, %n.vec90
  br i1 %cmp.n101, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit31, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader103

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader103: ; preds = %vector.memcheck81, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader, %middle.block100
  %.05.i20.ph = phi i64 [ %i.n, %vector.memcheck81 ], [ %i.n, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader ], [ %i.ej, %middle.block100 ] ; 6 uses
  %i.ev = sub i64 %i.d, %.05.i20.ph
  %.neg129 = add i64 %.05.i20.ph, 1
  %xtraiter120 = and i64 %i.ev, 1
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader103
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.do, i64 %.05.i20.ph
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !22
  %i.ey = load double, ptr %i.dq, align 8, !tbaa !22
  %i.ez = fmul double %i.ex, %i.ey
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %.05.i20.ph ; 2 uses
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !22
  %i.fc = fsub double %i.fb, %i.ez
  store double %i.fc, ptr %i.fa, align 8, !tbaa !22
  %i.fd = add nsw i64 %.05.i20.ph, 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader103
  %.05.i20.unr = phi i64 [ %.05.i20.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.preheader103 ], [ %i.fd, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol ]
  %i.fe = icmp eq i64 %i.d, %.neg129
  br i1 %i.fe, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit31, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19

.lr.ph.i.i.i.i.i.preheader.us.i22:                ; preds = %.lr.ph.i.i.i.i.i.preheader.us.i22.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29
  %.05.us6.i23 = phi i64 [ %i.gv, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29 ], [ %i.n, %.lr.ph.i.i.i.i.i.preheader.us.i22.preheader ] ; 3 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.do, i64 %.05.us6.i23 ; 6 uses
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !22
  %i.fh = load double, ptr %i.dq, align 8, !tbaa !22
  %i.fi = fmul double %i.fg, %i.fh                ; 2 uses
  br i1 %i.dx, label %.lr.ph.i.i.i.i.i.us.i24.epil.preheader, label %.lr.ph.i.i.i.i.i.us.i24

.lr.ph.i.i.i.i.i.us.i24:                          ; preds = %.lr.ph.i.i.i.i.i.preheader.us.i22, %.lr.ph.i.i.i.i.i.us.i24
  %.01725.i.i.i.i.i.us.i25 = phi i64 [ %i.gk, %.lr.ph.i.i.i.i.i.us.i24 ], [ 1, %.lr.ph.i.i.i.i.i.preheader.us.i22 ] ; 5 uses
  %.02324.i.i.i.i.i.us.i26 = phi double [ %i.gj, %.lr.ph.i.i.i.i.i.us.i24 ], [ %i.fi, %.lr.ph.i.i.i.i.i.preheader.us.i22 ]
  %niter128 = phi i64 [ %niter128.next.3, %.lr.ph.i.i.i.i.i.us.i24 ], [ 0, %.lr.ph.i.i.i.i.i.preheader.us.i22 ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i27 = mul i64 %.01725.i.i.i.i.i.us.i25, 24 ; 2 uses
  %i.fj = getelementptr i8, ptr %i.ff, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !22
  %i.fl = getelementptr i8, ptr %i.dq, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !22
  %i.fn = fmul double %i.fk, %i.fm
  %i.fo = fadd double %.02324.i.i.i.i.i.us.i26, %i.fn
  %i.fp = mul i64 %.01725.i.i.i.i.i.us.i25, 24
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.1 = add i64 %i.fp, 24 ; 2 uses
  %i.fq = getelementptr i8, ptr %i.ff, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.1
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !22
  %i.fs = getelementptr i8, ptr %i.dq, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.1
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !22
  %i.fu = fmul double %i.fr, %i.ft
  %i.fv = fadd double %i.fo, %i.fu
  %i.fw = mul i64 %.01725.i.i.i.i.i.us.i25, 24
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.2 = add i64 %i.fw, 48 ; 2 uses
  %i.fx = getelementptr i8, ptr %i.ff, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.2
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !22
  %i.fz = getelementptr i8, ptr %i.dq, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.2
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !22
  %i.gb = fmul double %i.fy, %i.ga
  %i.gc = fadd double %i.fv, %i.gb
  %i.gd = mul i64 %.01725.i.i.i.i.i.us.i25, 24
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.3 = add i64 %i.gd, 72 ; 2 uses
  %i.ge = getelementptr i8, ptr %i.ff, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.3
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !22
  %i.gg = getelementptr i8, ptr %i.dq, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.3
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !22
  %i.gi = fmul double %i.gf, %i.gh
  %i.gj = fadd double %i.gc, %i.gi                ; 3 uses
  %i.gk = add nuw nsw i64 %.01725.i.i.i.i.i.us.i25, 4 ; 2 uses
  %niter128.next.3 = add i64 %niter128, 4         ; 2 uses
  %niter128.ncmp.3 = icmp eq i64 %niter128.next.3, %unroll_iter127
  br i1 %niter128.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa, label %.lr.ph.i.i.i.i.i.us.i24, !llvm.loop !157

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.us.i24
  br i1 %lcmp.mod124.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29, label %.lr.ph.i.i.i.i.i.us.i24.epil.preheader

.lr.ph.i.i.i.i.i.us.i24.epil.preheader:           ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader.us.i22
  %.01725.i.i.i.i.i.us.i25.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader.us.i22 ], [ %i.gk, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ]
  %.02324.i.i.i.i.i.us.i26.epil.init = phi double [ %i.fi, %.lr.ph.i.i.i.i.i.preheader.us.i22 ], [ %i.gj, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod126)
  br label %.lr.ph.i.i.i.i.i.us.i24.epil

.lr.ph.i.i.i.i.i.us.i24.epil:                     ; preds = %.lr.ph.i.i.i.i.i.us.i24.epil, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader
  %.01725.i.i.i.i.i.us.i25.epil = phi i64 [ %i.gr, %.lr.ph.i.i.i.i.i.us.i24.epil ], [ %.01725.i.i.i.i.i.us.i25.epil.init, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader ] ; 2 uses
  %.02324.i.i.i.i.i.us.i26.epil = phi double [ %i.gq, %.lr.ph.i.i.i.i.i.us.i24.epil ], [ %.02324.i.i.i.i.i.us.i26.epil.init, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader ]
  %epil.iter123 = phi i64 [ %epil.iter123.next, %.lr.ph.i.i.i.i.i.us.i24.epil ], [ 0, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.epil = mul i64 %.01725.i.i.i.i.i.us.i25.epil, 24 ; 2 uses
  %i.gl = getelementptr i8, ptr %i.ff, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.epil
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !22
  %i.gn = getelementptr i8, ptr %i.dq, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.epil
  %i.go = load double, ptr %i.gn, align 8, !tbaa !22
  %i.gp = fmul double %i.gm, %i.go
  %i.gq = fadd double %.02324.i.i.i.i.i.us.i26.epil, %i.gp ; 2 uses
  %i.gr = add nuw nsw i64 %.01725.i.i.i.i.i.us.i25.epil, 1
  %epil.iter123.next = add i64 %epil.iter123, 1   ; 2 uses
  %epil.iter123.cmp.not = icmp eq i64 %epil.iter123.next, %xtraiter122
  br i1 %epil.iter123.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29, label %.lr.ph.i.i.i.i.i.us.i24.epil, !llvm.loop !170

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29: ; preds = %.lr.ph.i.i.i.i.i.us.i24.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa
  %.lcssa = phi double [ %i.gj, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ], [ %i.gq, %.lr.ph.i.i.i.i.i.us.i24.epil ]
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %.05.us6.i23 ; 2 uses
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !22
  %i.gu = fsub double %i.gt, %.lcssa
  store double %i.gu, ptr %i.gs, align 8, !tbaa !22
  %i.gv = add nsw i64 %.05.us6.i23, 1             ; 2 uses
  %exitcond11.not.i30 = icmp eq i64 %i.gv, %i.d
  br i1 %exitcond11.not.i30, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit31, label %.lr.ph.i.i.i.i.i.preheader.us.i22, !llvm.loop !159

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19
  %.05.i20 = phi i64 [ %i.hl, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19 ], [ %.05.i20.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit ] ; 4 uses
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.do, i64 %.05.i20
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !22
  %i.gy = load double, ptr %i.dq, align 8, !tbaa !22
  %i.gz = fmul double %i.gx, %i.gy
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %.05.i20 ; 2 uses
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !22
  %i.hc = fsub double %i.hb, %i.gz
  store double %i.hc, ptr %i.ha, align 8, !tbaa !22
  %i.hd = add nsw i64 %.05.i20, 1                 ; 2 uses
  %i.he = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.hd
  %i.hf = load double, ptr %i.he, align 8, !tbaa !22
  %i.hg = load double, ptr %i.dq, align 8, !tbaa !22
  %i.hh = fmul double %i.hf, %i.hg
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.hd ; 2 uses
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !22
  %i.hk = fsub double %i.hj, %i.hh
  store double %i.hk, ptr %i.hi, align 8, !tbaa !22
  %i.hl = add nsw i64 %.05.i20, 2                 ; 2 uses
  %exitcond.not.i21.1 = icmp eq i64 %i.hl, %i.d
  br i1 %exitcond.not.i21.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit31, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19, !llvm.loop !171

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS_9TransposeIKNS6_IS8_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit31: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29, %middle.block100, %._crit_edge, %.lr.ph.i17
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit
  %.036 = phi i64 [ %.0.i, %.lr.ph ], [ %i.iz, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit ] ; 3 uses
  %i.hm = load ptr, ptr %0, align 8, !tbaa !178, !nonnull !176, !align !177
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !75
  %i.ho = load ptr, ptr %i.di, align 8, !tbaa !179, !nonnull !176, !align !177 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 144
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !73 ; 5 uses
  %i.hr = icmp sgt i64 %i.hq, 0
  br i1 %i.hr, label %.lr.ph.i.preheader.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.c
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 128
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 112
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !51
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.hu, i64 %.036 ; 3 uses
  %i.hw = load ptr, ptr %i.hs, align 8, !tbaa !53 ; 3 uses
  %xtraiter113 = and i64 %i.hq, 1
  %i.hx = icmp eq i64 %i.hq, 1
  br i1 %i.hx, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.preheader.i.i.i.new

.lr.ph.i.preheader.i.i.i.new:                     ; preds = %.lr.ph.i.preheader.i.i.i
  %unroll_iter118 = and i64 %i.hq, 9223372036854775806
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.preheader.i.i.i.new
  %i.hy = phi <2 x double> [ zeroinitializer, %.lr.ph.i.preheader.i.i.i.new ], [ %i.in, %.lr.ph.i.i.i.i ]
  %.013.i.i.i.i = phi i64 [ 0, %.lr.ph.i.preheader.i.i.i.new ], [ %i.io, %.lr.ph.i.i.i.i ] ; 3 uses
  %niter119 = phi i64 [ 0, %.lr.ph.i.preheader.i.i.i.new ], [ %niter119.next.1, %.lr.ph.i.i.i.i ]
  %.idx.i.i.i.i.i = mul nuw nsw i64 %.013.i.i.i.i, 24 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 %.idx.i.i.i.i.i
  %i.ia = load <2 x double>, ptr %i.hz, align 1, !tbaa !27
  %gep.i.i.i = getelementptr i8, ptr %i.hw, i64 %.idx.i.i.i.i.i
  %i.ib = load double, ptr %gep.i.i.i, align 8, !tbaa !22
  %i.ic = insertelement <2 x double> poison, double %i.ib, i64 0
  %i.id = shufflevector <2 x double> %i.ic, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ie = fmul <2 x double> %i.ia, %i.id
  %i.if = fadd <2 x double> %i.hy, %i.ie
  %i.ig = mul nuw i64 %.013.i.i.i.i, 24
  %.idx.i.i.i.i.i.1 = add nuw i64 %i.ig, 24       ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hv, i64 %.idx.i.i.i.i.i.1
  %i.ii = load <2 x double>, ptr %i.ih, align 1, !tbaa !27
  %gep.i.i.i.1 = getelementptr i8, ptr %i.hw, i64 %.idx.i.i.i.i.i.1
  %i.ij = load double, ptr %gep.i.i.i.1, align 8, !tbaa !22
  %i.ik = insertelement <2 x double> poison, double %i.ij, i64 0
  %i.il = shufflevector <2 x double> %i.ik, <2 x double> poison, <2 x i32> zeroinitializer
  %i.im = fmul <2 x double> %i.ii, %i.il
  %i.in = fadd <2 x double> %i.if, %i.im          ; 3 uses
  %i.io = add nuw nsw i64 %.013.i.i.i.i, 2        ; 2 uses
  %niter119.next.1 = add nuw nsw i64 %niter119, 2 ; 2 uses
  %niter119.ncmp.1 = icmp eq i64 %niter119.next.1, %unroll_iter118
  br i1 %niter119.ncmp.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !172

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod115.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod115.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader.i.i.i
  %.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph.i.preheader.i.i.i ], [ %i.in, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa ]
  %.013.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i.i.i ], [ %i.io, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa ]
  %lcmp.mod117 = trunc i64 %i.hq to i1
  tail call void @llvm.assume(i1 %lcmp.mod117)
  %.idx.i.i.i.i.i.epil = mul nuw nsw i64 %.013.i.i.i.i.epil.init, 24 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hv, i64 %.idx.i.i.i.i.i.epil
  %i.iq = load <2 x double>, ptr %i.ip, align 1, !tbaa !27
  %gep.i.i.i.epil = getelementptr i8, ptr %i.hw, i64 %.idx.i.i.i.i.i.epil
  %i.ir = load double, ptr %gep.i.i.i.epil, align 8, !tbaa !22
  %i.is = insertelement <2 x double> poison, double %i.ir, i64 0
  %i.it = shufflevector <2 x double> %i.is, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iu = fmul <2 x double> %i.iq, %i.it
  %i.iv = fadd <2 x double> %.epil.init, %i.iu
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit: ; preds = %.lr.ph.i.i.i.i.epil.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa, %bb.c
  %.0.i.i.i = phi <2 x double> [ zeroinitializer, %bb.c ], [ %i.in, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa ], [ %i.iv, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.iw = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %.036 ; 2 uses
  %i.ix = load <2 x double>, ptr %i.iw, align 16, !tbaa !27
  %i.iy = fsub <2 x double> %i.ix, %.0.i.i.i
  store <2 x double> %i.iy, ptr %i.iw, align 16, !tbaa !27
  %i.iz = add nsw i64 %.036, 2                    ; 2 uses
  %i.ja = icmp slt i64 %i.iz, %i.n
  br i1 %i.ja, label %bb.c, label %._crit_edge, !llvm.loop !173
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nounwind }
attributes #21 = { builtin nounwind }
attributes #22 = { noreturn }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"vtable pointer", !3, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"_ZTSSt13_Ios_Fmtflags", !4, i64 0}
!12 = !{!"_ZTSSt12_Ios_Iostate", !4, i64 0}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !13, i64 0}
!15 = !{!"_ZTSNSt8ios_base6_WordsE", !13, i64 0, !10, i64 8}
!16 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !13, i64 0}
!17 = !{!"p1 _ZTSNSt6locale5_ImplE", !13, i64 0}
!18 = !{!"_ZTSSt6locale", !17, i64 0}
!19 = !{!"_ZTSSt8ios_base", !10, i64 8, !10, i64 16, !11, i64 24, !12, i64 28, !12, i64 32, !14, i64 40, !15, i64 48, !4, i64 64, !5, i64 192, !16, i64 200, !18, i64 208}
!20 = !{!19, !12, i64 32}
!21 = !{!"double", !4, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"p1 omnipotent char", !13, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !23, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !24, i64 0, !10, i64 8, !4, i64 16}
!26 = !{!25, !23, i64 0}
!27 = !{!4, !4, i64 0}
!28 = !{!25, !10, i64 8}
!29 = !{!"bool", !4, i64 0}
!30 = !{!"p1 _ZTSN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEE", !13, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!32 = !{!31, !30, i64 0}
!33 = !{!31, !30, i64 16}
!34 = !{ptr @_ZN3g2o10BaseVertexILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEED2Ev}
!35 = !{!"p1 double", !13, i64 0}
!36 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLi3EEE"}
!37 = !{!"_ZTSN5Eigen7MapBaseINS_3MapINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi0EEE", !35, i64 0, !36, i64 8, !36, i64 9}
!38 = !{!37, !35, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!40 = !{!39, !35, i64 8}
!41 = !{!39, !35, i64 0}
!42 = !{!31, !30, i64 8}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLin1EEE", !10, i64 0}
!45 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLi1EEE"}
!46 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEELi0EEE", !35, i64 0, !44, i64 8, !45, i64 16}
!47 = !{!46, !35, i64 0}
!48 = !{!44, !10, i64 0}
!49 = !{!"p1 _ZTSN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEE", !13, i64 0}
!50 = !{!"_ZTSN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEENS3_IdLin1ELin1ELi0ELi3ELi3EEEEE", !35, i64 0, !45, i64 8, !36, i64 9}
!51 = !{!50, !35, i64 0}
!52 = !{!"_ZTSN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELi3EEEEE", !35, i64 0, !36, i64 8, !45, i64 9}
!53 = !{!52, !35, i64 0}
!54 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi0EEE", !35, i64 0, !44, i64 8, !44, i64 16}
!55 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1EEE", !54, i64 0}
!56 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0ELb1EEE", !55, i64 0, !49, i64 24, !44, i64 32, !44, i64 40, !10, i64 48}
!57 = !{!"_ZTSN5Eigen9BlockImplINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0ENS_5DenseEEE", !56, i64 0}
!58 = !{!"_ZTSN5Eigen5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEE", !57, i64 0}
!59 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEELi0EEE", !35, i64 0, !45, i64 8, !44, i64 16}
!60 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEELi1EEE", !59, i64 0}
!61 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0ELb1EEE", !60, i64 0, !49, i64 24, !44, i64 32, !44, i64 40, !10, i64 48}
!62 = !{!"_ZTSN5Eigen9BlockImplINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0ENS_5DenseEEE", !61, i64 0}
!63 = !{!"_ZTSN5Eigen5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEE", !62, i64 0}
!64 = !{!"_ZTSN5Eigen9TransposeIKNS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEEE", !63, i64 0}
!65 = !{!"_ZTSN5Eigen8internal15block_evaluatorINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0ELb1EEE", !50, i64 0}
!66 = !{!"_ZTSN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEE", !65, i64 0}
!67 = !{!"_ZTSN5Eigen8internal15block_evaluatorINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0ELb1EEE", !52, i64 0}
!68 = !{!"_ZTSN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEEE", !67, i64 0}
!69 = !{!"_ZTSN5Eigen8internal9evaluatorIKNS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEEE", !68, i64 0}
!70 = !{!"_ZTSN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEEENS0_10IndexBasedEdEE", !69, i64 0}
!71 = !{!"_ZTSN5Eigen8internal9evaluatorINS_9TransposeIKNS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEEEEE", !70, i64 0}
!72 = !{!"_ZTSN5Eigen8internal17product_evaluatorINS_7ProductINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEELi3ENS_10DenseShapeESC_ddEE", !58, i64 0, !64, i64 56, !66, i64 112, !71, i64 128, !10, i64 144}
!73 = !{!72, !10, i64 144}
!74 = !{!"_ZTSN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEENS3_IdLin1ELi1ELi0ELi3ELi1EEEEE", !35, i64 0, !45, i64 8, !36, i64 9}
!75 = !{!74, !35, i64 0}
!76 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEE", !13, i64 0}
!77 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_7ProductINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEE", !13, i64 0}
!78 = !{!"p1 _ZTSN5Eigen8internal13sub_assign_opIddEE", !13, i64 0}
!79 = !{!"p1 _ZTSN5Eigen5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEE", !13, i64 0}
!80 = !{!"llvm.loop.isvectorized", i32 1}
!81 = !{!"llvm.loop.unroll.runtime.disable"}
!82 = !{!24, !23, i64 0}
!83 = !{!10, !10, i64 0}
!84 = distinct !{null, null, null, null}
!85 = !{!"_ZTSSt9type_info", !23, i64 8}
!86 = !{!85, !23, i64 8}
!87 = !{!"_ZTSN3g2o23HyperGraphElementAction10ParametersE"}
!88 = !{!"p1 _ZTSSo", !13, i64 0}
!89 = !{!"_ZTSN3g2o18WriteGnuplotAction10ParametersE", !87, i64 0, !88, i64 8}
!90 = !{!89, !88, i64 8}
!91 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !13, i64 0}
!92 = !{!"p1 _ZTSSt5ctypeIcE", !13, i64 0}
!93 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !13, i64 0}
!94 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !13, i64 0}
!95 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !19, i64 0, !88, i64 216, !4, i64 224, !29, i64 225, !91, i64 232, !92, i64 240, !93, i64 248, !94, i64 256}
!96 = !{!95, !92, i64 240}
!97 = !{!"_ZTSNSt6locale5facetE", !5, i64 8}
!98 = !{!"p1 _ZTS15__locale_struct", !13, i64 0}
!99 = !{!"p1 int", !13, i64 0}
!100 = !{!"p1 short", !13, i64 0}
!101 = !{!"_ZTSSt5ctypeIcE", !97, i64 0, !98, i64 16, !29, i64 24, !99, i64 32, !99, i64 40, !100, i64 48, !4, i64 56, !4, i64 57, !4, i64 313, !4, i64 569}
!102 = !{!101, !4, i64 56}
!103 = !{!"_ZTSN3g2o10HyperGraph17HyperGraphElementE"}
!104 = !{!"_ZTSSt4lessIPN3g2o10HyperGraph4EdgeEE"}
!105 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIPN3g2o10HyperGraph4EdgeEEE", !104, i64 0}
!106 = !{!"_ZTSSt14_Rb_tree_color", !4, i64 0}
!107 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !13, i64 0}
!108 = !{!"_ZTSSt18_Rb_tree_node_base", !106, i64 0, !107, i64 8, !107, i64 16, !107, i64 24}
!109 = !{!"_ZTSSt15_Rb_tree_header", !108, i64 0, !10, i64 32}
!110 = !{!"_ZTSNSt8_Rb_treeIPN3g2o10HyperGraph4EdgeES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE13_Rb_tree_implIS7_Lb1EEE", !105, i64 0, !109, i64 8}
!111 = !{!"_ZTSSt8_Rb_treeIPN3g2o10HyperGraph4EdgeES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE", !110, i64 0}
!112 = !{!"_ZTSSt3setIPN3g2o10HyperGraph4EdgeESt4lessIS3_ESaIS3_EE", !111, i64 0}
!113 = !{!"_ZTSN3g2o10HyperGraph6VertexE", !103, i64 0, !5, i64 8, !112, i64 16}
!114 = !{!113, !5, i64 8}
!115 = distinct !{!115, i1 false, !"_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE3lltEv"}
!116 = distinct !{!116, !115, !"_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE3lltEv: argument 0"}
!117 = distinct !{null}
!118 = !{!116}
!119 = !{!"_ZTSN5Eigen8internal11plain_arrayIdLi9ELi0ELi0EEE", !4, i64 0}
!120 = !{!"_ZTSN5Eigen12DenseStorageIdLi9ELi3ELi3ELi0EEE", !119, i64 0}
!121 = !{!"_ZTSN5Eigen15PlainObjectBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEE", !120, i64 0}
!122 = !{!"_ZTSN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEE", !121, i64 0}
!123 = !{!"_ZTSN5Eigen15ComputationInfoE", !4, i64 0}
!124 = !{!"_ZTSN5Eigen3LLTINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1EEE", !122, i64 0, !21, i64 72, !29, i64 80, !123, i64 84}
!125 = !{!124, !29, i64 80}
!126 = !{!124, !123, i64 84}
!127 = distinct !{!127, i1 false, !"_ZSt19__relocate_object_aIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES2_SaIS2_EEvPT_PT0_RT1_"}
!128 = distinct !{!128, !127, !"_ZSt19__relocate_object_aIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!129 = distinct !{!129, !127, !"_ZSt19__relocate_object_aIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!130 = distinct !{!130, !43}
!131 = !{i64 0, i64 24, !27}
!132 = !{!129, !128}
!133 = !{!30, !30, i64 0}
!134 = !{!39, !35, i64 16}
!135 = distinct !{!135, !43, !80, !81}
!136 = distinct !{!136, !43, !81, !80}
!137 = distinct !{!137, !43, !80, !81}
!138 = distinct !{!138, !43, !81, !80}
!139 = distinct !{!139, !43}
!140 = !{!49, !49, i64 0}
!141 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEELi1EEE", !46, i64 0}
!142 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0ELb1EEE", !141, i64 0, !49, i64 24, !44, i64 32, !44, i64 40, !10, i64 48}
!143 = !{!142, !10, i64 48}
!144 = !{!76, !76, i64 0}
!145 = !{!77, !77, i64 0}
!146 = !{!78, !78, i64 0}
!147 = !{!79, !79, i64 0}
!148 = distinct !{!148, i1 false, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE3rowEl"}
!149 = distinct !{!149, !148, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE3rowEl: argument 0"}
!150 = distinct !{!150, i1 false, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEEEE3colEl"}
!151 = distinct !{!151, !150, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEEEE3colEl: argument 0"}
!152 = distinct !{!152, i1 false, !"LVerDomain"}
!153 = distinct !{!153, !152}
!154 = distinct !{!154, !152}
!155 = distinct !{!155, !152}
!156 = distinct !{!156, !43, !80, !81}
!157 = distinct !{!157, !43}
!158 = distinct !{!158, !188}
!159 = distinct !{!159, !43}
!160 = distinct !{!160, !43, !80}
!161 = distinct !{!161, i1 false, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE3rowEl"}
!162 = distinct !{!162, !161, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE3rowEl: argument 0"}
!163 = distinct !{!163, i1 false, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEEEE3colEl"}
!164 = distinct !{!164, !163, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1ELin1ELb0EEEEEE3colEl: argument 0"}
!165 = distinct !{!165, i1 false, !"LVerDomain"}
!166 = distinct !{!166, !165}
!167 = distinct !{!167, !165}
!168 = distinct !{!168, !165}
!169 = distinct !{!169, !43, !80, !81}
!170 = distinct !{!170, !188}
!171 = distinct !{!171, !43, !80}
!172 = distinct !{!172, !43}
!173 = distinct !{!173, !43}
!174 = !{!"_ZTSN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS_9TransposeIKNS3_IS5_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEE", !76, i64 0, !77, i64 8, !78, i64 16, !79, i64 24}
!175 = !{!174, !79, i64 24}
!176 = !{}
!177 = !{i64 8}
!178 = !{!174, !76, i64 0}
!179 = !{!174, !77, i64 8}
!180 = !{!54, !35, i64 0}
!181 = !{!149}
!182 = !{!59, !35, i64 0}
!183 = !{!151}
!184 = !{!153}
!185 = !{!154}
!186 = !{!155}
!187 = !{!154, !153}
!188 = !{!"llvm.loop.unroll.disable"}
!189 = !{!162}
!190 = !{!164}
!191 = !{!166}
!192 = !{!167}
!193 = !{!168}
!194 = !{!167, !166}
end_hunk_0

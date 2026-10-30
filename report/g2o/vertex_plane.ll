Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/vertex_plane?download=true
inline.NumInlined: 4320
inline.NumDeleted: 2367
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN3g2o11VertexPlaneD0Ev:bb.a
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !42  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN3g2o10BaseVertexILi3ENS_7Plane3DEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !43
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #20, !inline_history !44
  br label %_ZN3g2o10BaseVertexILi3ENS_7Plane3DEED2Ev.exit

_ZN3g2o10BaseVertexILi3ENS_7Plane3DEED2Ev.exit:   ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 16 dead_on_return(128) dereferenceable(256) %0) #19, !inline_history !44
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 256) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10HyperGraph6Vertex11elementTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o16OptimizableGraph6Vertex5setIdEi(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !96
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3g2o10BaseVertexILi3ENS_7Plane3DEE7hessianEii(ptr noundef nonnull align 16 dereferenceable(232) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = sext i32 %1 to i64
  %i.c = sext i32 %2 to i64
  %i.d = load ptr, ptr %i.a, align 16, !tbaa !12
  %.idx.i.i.i = mul nsw i64 %i.c, 24
  %i.e = getelementptr i8, ptr %i.d, i64 %.idx.i.i.i
  %i.f = getelementptr [8 x i8], ptr %i.e, i64 %i.b
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN3g2o10BaseVertexILi3ENS_7Plane3DEE7hessianEii(ptr noundef nonnull align 16 dereferenceable(232) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = sext i32 %1 to i64
  %i.c = sext i32 %2 to i64
  %i.d = load ptr, ptr %i.a, align 16, !tbaa !12
  %.idx.i.i.i = mul nsw i64 %i.c, 24
  %i.e = getelementptr i8, ptr %i.d, i64 %.idx.i.i.i
  %i.f = getelementptr [8 x i8], ptr %i.e, i64 %i.b
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK3g2o10BaseVertexILi3ENS_7Plane3DEE18hessianDeterminantEv(ptr noundef nonnull align 16 dereferenceable(232) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !12  ; 9 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !30
  %i.d = getelementptr i8, ptr %i.b, i64 24
  %i.e = getelementptr i8, ptr %i.b, i64 32
  %i.f = load double, ptr %i.e, align 8, !tbaa !30 ; 2 uses
  %i.g = getelementptr i8, ptr %i.b, i64 48
  %i.h = getelementptr i8, ptr %i.b, i64 64
  %i.i = load double, ptr %i.h, align 8, !tbaa !30 ; 2 uses
  %i.j = getelementptr i8, ptr %i.b, i64 56
  %i.k = load double, ptr %i.j, align 8, !tbaa !30 ; 2 uses
  %i.l = getelementptr i8, ptr %i.b, i64 40
  %i.m = load double, ptr %i.l, align 8, !tbaa !30 ; 2 uses
  %i.n = fneg double %i.m
  %i.o = fmul double %i.k, %i.n
  %i.p = tail call double @llvm.fmuladd.f64(double %i.f, double %i.i, double %i.o)
  %i.q = fmul double %i.c, %i.p
  %i.r = load double, ptr %i.d, align 8, !tbaa !30
  %i.s = getelementptr i8, ptr %i.b, i64 8
  %i.t = load double, ptr %i.s, align 8, !tbaa !30 ; 2 uses
  %i.u = getelementptr i8, ptr %i.b, i64 16
  %i.v = load double, ptr %i.u, align 8, !tbaa !30
  %i.w = fneg double %i.v                         ; 2 uses
  %i.x = fmul double %i.k, %i.w
  %i.y = tail call double @llvm.fmuladd.f64(double %i.t, double %i.i, double %i.x)
  %i.z = fmul double %i.r, %i.y
  %i.aa = fsub double %i.q, %i.z
  %i.ab = load double, ptr %i.g, align 8, !tbaa !30
  %i.ac = fmul double %i.f, %i.w
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.t, double %i.m, double %i.ac)
  %i.ae = fmul double %i.ab, %i.ad
  %i.af = fadd double %i.ae, %i.aa
  ret double %i.af
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o10BaseVertexILi3ENS_7Plane3DEE11hessianDataEv(ptr noundef nonnull align 16 dereferenceable(232) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !12
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi3ENS_7Plane3DEE16mapHessianMemoryEPd(ptr noundef nonnull align 16 dereferenceable(232) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %1, ptr %i.a, align 16, !tbaa !12
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10BaseVertexILi3ENS_7Plane3DEE5copyBEPd(ptr noundef nonnull align 16 dereferenceable(232) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 16 dereferenceable(24) %i.a, i64 24, i1 false)
  ret i32 3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3g2o10BaseVertexILi3ENS_7Plane3DEE1bEi(ptr noundef nonnull align 16 dereferenceable(232) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN3g2o10BaseVertexILi3ENS_7Plane3DEE1bEi(ptr noundef nonnull align 16 dereferenceable(232) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o10BaseVertexILi3ENS_7Plane3DEE5bDataEv(ptr noundef nonnull align 16 dereferenceable(232) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi3ENS_7Plane3DEE18clearQuadraticFormEv(ptr noundef nonnull align 16 dereferenceable(232) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef double @_ZN3g2o10BaseVertexILi3ENS_7Plane3DEE11solveDirectEd(ptr noundef nonnull align 16 dereferenceable(232) %0, double noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix", align 8     ; 6 uses
  %3 = alloca %"class.Eigen::LLT", align 16       ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.09.0.copyload = load ptr, ptr %i.a, align 16 ; 7 uses
  %i.b = load double, ptr %.sroa.09.0.copyload, align 8, !tbaa !30
  %i.c = fadd double %1, %i.b                     ; 2 uses
  %i.d = getelementptr i8, ptr %.sroa.09.0.copyload, i64 8
  %i.e = fmul double %1, 0.000000e+00             ; 3 uses
  %i.f = load double, ptr %i.d, align 8, !tbaa !30
  %i.g = fadd double %i.e, %i.f                   ; 4 uses
  %i.h = getelementptr i8, ptr %.sroa.09.0.copyload, i64 16
  %i.i = load <2 x double>, ptr %i.h, align 8, !tbaa !30
  %i.j = insertelement <2 x double> poison, double %i.e, i64 0
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.l = fadd <2 x double> %i.k, %i.i             ; 3 uses
  %i.m = getelementptr i8, ptr %.sroa.09.0.copyload, i64 32
  %i.n = load double, ptr %i.m, align 8, !tbaa !30
  %i.o = fadd double %1, %i.n                     ; 3 uses
  %i.p = getelementptr i8, ptr %.sroa.09.0.copyload, i64 40
  %i.q = load double, ptr %i.p, align 8, !tbaa !30
  %i.r = fadd double %i.e, %i.q                   ; 4 uses
  %i.s = getelementptr i8, ptr %.sroa.09.0.copyload, i64 48
  %i.t = load <2 x double>, ptr %i.s, align 8, !tbaa !30
  %i.u = fadd <2 x double> %i.k, %i.t             ; 3 uses
  %i.v = getelementptr i8, ptr %.sroa.09.0.copyload, i64 64
  %i.w = load double, ptr %i.v, align 8, !tbaa !30
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
  %i.ao = fadd double %i.an, %i.aj                ; 2 uses
  %or.cond = fcmp ult double %i.ao, f0x3CB0000000000000
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.13.32.vec.insert = insertelement <2 x double> poison, double %i.o, i64 0
  %.sroa.13.40.vec.insert = insertelement <2 x double> %.sroa.13.32.vec.insert, double %i.r, i64 1 ; 2 uses
  %.sroa.012.0.vec.insert = insertelement <2 x double> poison, double %i.c, i64 0
  %.sroa.012.8.vec.insert = insertelement <2 x double> %.sroa.012.0.vec.insert, double %i.g, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store <2 x double> %.sroa.012.8.vec.insert, ptr %3, align 16, !tbaa !13, !alias.scope !100
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store <2 x double> %i.l, ptr %i.ap, align 16, !tbaa !13, !alias.scope !100
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store <2 x double> %.sroa.13.40.vec.insert, ptr %i.aq, align 16, !tbaa !13, !alias.scope !100
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <2 x double> %i.u, ptr %i.ar, align 16, !tbaa !13, !alias.scope !100
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  store double %i.x, ptr %i.as, align 16, !tbaa !30, !alias.scope !100
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.av = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %.sroa.012.8.vec.insert) ; 2 uses
  %shift = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.av, %shift
  %i.aw = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ax = tail call noundef double @llvm.fabs.f64(double %i.ad) ; 2 uses
  %i.ay = fadd double %i.ax, %i.aw                ; 2 uses
  %i.az = fcmp ogt double %i.ay, 0.000000e+00
  %i.ba = select i1 %i.az, double %i.ay, double 0.000000e+00 ; 2 uses
  %i.bb = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %.sroa.13.40.vec.insert) ; 2 uses
  %shift27 = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop28 = fadd <2 x double> %i.bb, %shift27
  %i.bc = extractelement <2 x double> %foldExtExtBinop28, i64 0
  %i.bd = tail call noundef double @llvm.fabs.f64(double %i.g)
  %i.be = fadd double %i.bd, %i.bc                ; 2 uses
  %i.bf = fcmp ogt double %i.be, %i.ba
  %spec.select.i = select i1 %i.bf, double %i.be, double %i.ba ; 2 uses
  %i.bg = tail call noundef double @llvm.fabs.f64(double %i.x)
  %i.bh = tail call noundef double @llvm.fabs.f64(double %i.r)
  %i.bi = fadd double %i.ax, %i.bh
  %i.bj = fadd double %i.bi, %i.bg                ; 2 uses
  %i.bk = fcmp ogt double %i.bj, %spec.select.i
  %spec.store.select.i = select i1 %i.bk, double %i.bj, double %spec.select.i
  store double %spec.store.select.i, ptr %i.au, align 8, !tbaa !107, !alias.scope !100
  store i8 1, ptr %i.at, align 16, !tbaa !108, !alias.scope !100
  %i.bl = call noundef i64 @_ZN5Eigen8internal11llt_inplaceIdLi1EE9unblockedINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEElRT_(ptr noundef nonnull align 8 dereferenceable(88) %3)
  %i.bm = icmp ne i64 %i.bl, -1
  %i.bn = zext i1 %i.bm to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 84
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !109, !alias.scope !100
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bq = load <2 x double>, ptr %i.bp, align 16, !tbaa !13 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bt = load double, ptr %i.bs, align 16, !tbaa !30
  %i.bu = load double, ptr %3, align 16, !tbaa !30 ; 2 uses
  %i.bv = extractelement <2 x double> %i.bq, i64 0
  %i.bw = fdiv double %i.bv, %i.bu                ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !30
  %i.bz = fmul double %i.bw, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cb = extractelement <2 x double> %i.bq, i64 1
  %i.cc = fsub double %i.cb, %i.bz
  %i.cd = load double, ptr %i.aq, align 16, !tbaa !30 ; 2 uses
  %i.ce = fdiv double %i.cc, %i.cd                ; 2 uses
  %i.cf = load double, ptr %i.ap, align 16, !tbaa !30
  %i.cg = fmul double %i.bw, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !30 ; 2 uses
  %i.cj = fmul double %i.ce, %i.ci
  %i.ck = fadd double %i.cg, %i.cj
  %i.cl = fsub double %i.bt, %i.ck
  %i.cm = load double, ptr %i.as, align 16, !tbaa !30 ; 2 uses
  %i.cn = fdiv double %i.cl, %i.cm
  %i.co = fdiv double %i.cn, %i.cm                ; 2 uses
  store double %i.co, ptr %i.br, align 8, !tbaa !30
  %i.cp = fmul double %i.ci, %i.co
  %i.cq = fsub double %i.ce, %i.cp
  %i.cr = fdiv double %i.cq, %i.cd
  store double %i.cr, ptr %i.ca, align 8, !tbaa !30
  %i.cs = load <2 x double>, ptr %i.bx, align 8, !tbaa !13
  %i.ct = load <2 x double>, ptr %i.ca, align 8, !tbaa !13
  %i.cu = fmul <2 x double> %i.cs, %i.ct          ; 2 uses
  %shift30 = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop31 = fadd <2 x double> %i.cu, %shift30
  %i.cv = extractelement <2 x double> %foldExtExtBinop31, i64 0
  %i.cw = fsub double %i.bw, %i.cv
  %i.cx = fdiv double %i.cw, %i.bu
  store double %i.cx, ptr %2, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.cy = load ptr, ptr %0, align 16, !tbaa !28
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 224
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %2), !inline_history !99
  %i.db = load ptr, ptr %0, align 16, !tbaa !28
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 216
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(128) %0), !inline_history !99
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret double %i.ao
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o11VertexPlane15getEstimateDataEPd(ptr noundef nonnull align 16 dereferenceable(256) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.0.0.copyload = load <2 x double>, ptr %i.a, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.sroa.4.0.copyload = load <2 x double>, ptr %.sroa.4.0..sroa_idx, align 16, !tbaa !13
  store <2 x double> %.sroa.0.0.copyload, ptr %1, align 1, !tbaa !13
  %i.b = getelementptr i8, ptr %1, i64 16
  store <2 x double> %.sroa.4.0.copyload, ptr %i.b, align 1, !tbaa !13
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o16OptimizableGraph6Vertex15getEstimateDataERSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(128) %0) ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64                ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46   ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !47     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.f
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = sub nuw nsw i64 %i.f, %i.m
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.o)
  %.pre = load ptr, ptr %1, align 8, !tbaa !47
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.p = icmp ugt i64 %i.m, %i.f
  br i1 %i.p, label %bb.e, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.f ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.q
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.q, ptr %i.g, align 8, !tbaa !46
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
  %i.r = phi ptr [ %.pre, %bb.c ], [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %i.i, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ]
  %i.s = load ptr, ptr %0, align 8, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %i.r)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %.0 = phi i1 [ %i.v, %_ZNSt6vectorIdSaIdEE6resizeEm.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o11VertexPlane17estimateDimensionEv(ptr noundef nonnull align 16 dereferenceable(256) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i32 4
}

declare noundef zeroext i1 @_ZNK3g2o16OptimizableGraph6Vertex22getMinimalEstimateDataEPd(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o16OptimizableGraph6Vertex22getMinimalEstimateDataERSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(128) %0) ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64                ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46   ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !47     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.f
end_hunk_0

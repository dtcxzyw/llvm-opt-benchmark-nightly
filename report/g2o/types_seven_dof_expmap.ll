Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/types_seven_dof_expmap?download=true
inline.NumInlined: 15398
inline.NumDeleted: 8608
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_ZN3g2o10BaseVertexILi7ENS_4Sim3EE3popEv:bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.e = load <2 x double>, ptr %i.c, align 16, !tbaa !17
  store <2 x double> %i.e, ptr %i.d, align 16, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 -48
  %i.h = load <2 x double>, ptr %i.g, align 16, !tbaa !17
  store <2 x double> %i.h, ptr %i.f, align 16, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 -32
  %i.k = load <2 x double>, ptr %i.j, align 16, !tbaa !17
  store <2 x double> %i.k, ptr %i.i, align 16, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.m = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.n = load double, ptr %i.m, align 16, !tbaa !33
  store double %i.n, ptr %i.l, align 16, !tbaa !33
  %i.o = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.p = load double, ptr %i.o, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 264
  store double %i.p, ptr %i.q, align 8, !tbaa !35
  store ptr %i.c, ptr %i.a, align 8, !tbaa !296
  %i.r = load ptr, ptr %0, align 16, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 216
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(128) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi7ENS_4Sim3EE10discardTopEv(ptr noundef nonnull align 16 dereferenceable(296) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -64
  store ptr %i.c, ptr %i.a, align 8, !tbaa !296
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10BaseVertexILi7ENS_4Sim3EE9stackSizeEv(ptr noundef nonnull align 16 dereferenceable(296) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !296
  %i.d = load ptr, ptr %i.a, align 16, !tbaa !237
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 6
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

declare void @_ZN3g2o16OptimizableGraph6Vertex11updateCacheEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o16VertexSim3Expmap9oplusImplEPKd(ptr noundef nonnull align 16 dereferenceable(369) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.g2o::Sim3", align 16       ; 10 uses
  %3 = alloca %"class.Eigen::Matrix", align 16    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load i8, ptr %i.a, align 16, !tbaa !66, !range !299, !noundef !300
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr i8, ptr %1, i64 48         ; 2 uses
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load double, ptr %i.d, align 8, !tbaa !33
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store double 0.000000e+00, ptr %i.d, align 8, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.e = phi double [ %.pre, %._crit_edge ], [ 0.000000e+00, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.f = load <2 x double>, ptr %1, align 1, !tbaa !17
  store <2 x double> %i.f, ptr %3, align 16, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load <2 x double>, ptr %i.h, align 1, !tbaa !17
  store <2 x double> %i.i, ptr %i.g, align 16, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load <2 x double>, ptr %i.k, align 1, !tbaa !17
  store <2 x double> %i.l, ptr %i.j, align 16, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 48
  store double %i.e, ptr %i.m, align 16, !tbaa !33
  call void @_ZN3g2o4Sim3C2ERKN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEE(ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.o = load <2 x double>, ptr %i.n, align 16, !tbaa !17, !noalias !301 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.q = load <2 x double>, ptr %i.p, align 16, !tbaa !17, !noalias !301 ; 4 uses
  %i.r = load double, ptr %2, align 16, !tbaa !33, !noalias !301 ; 5 uses
  %i.s = insertelement <2 x double> poison, double %i.r, i64 0
  %i.t = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load double, ptr %i.u, align 8, !tbaa !33, !noalias !301 ; 5 uses
  %i.w = insertelement <2 x double> poison, double %i.v, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load double, ptr %i.y, align 16, !tbaa !33, !noalias !301 ; 5 uses
  %i.aa = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !33, !noalias !301 ; 2 uses
  %i.ae = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ag = fmul <2 x double> %i.o, %i.af
  %i.ah = fmul <2 x double> %i.q, %i.x
  %i.ai = fadd <2 x double> %i.ah, %i.ag
  %i.aj = fmul <2 x double> %i.o, %i.ab
  %i.ak = fmul <2 x double> %i.q, %i.t
  %i.al = fsub <2 x double> %i.aj, %i.ak
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.an = call noundef <2 x double> @llvm.x86.sse3.addsub.pd(<2 x double> %i.ai, <2 x double> %i.am)
  %i.ao = fmul <2 x double> %i.q, %i.af
  %i.ap = fmul <2 x double> %i.o, %i.x
  %i.aq = fsub <2 x double> %i.ao, %i.ap
  %i.ar = fmul <2 x double> %i.q, %i.ab
  %i.as = fmul <2 x double> %i.o, %i.t
  %i.at = fadd <2 x double> %i.as, %i.ar
  %i.au = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.av = call noundef <2 x double> @llvm.x86.sse3.addsub.pd(<2 x double> %i.au, <2 x double> %i.at)
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.ba = load double, ptr %i.az, align 16, !tbaa !33, !noalias !308 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !33, !noalias !308 ; 2 uses
  %i.bd = fneg double %i.bc
  %i.be = fmul double %i.z, %i.bd
  %i.bf = call double @llvm.fmuladd.f64(double %i.v, double %i.ba, double %i.be)
  %i.bg = load double, ptr %i.ay, align 16, !tbaa !33, !noalias !308 ; 2 uses
  %i.bh = fneg double %i.ba
  %i.bi = fmul double %i.r, %i.bh
  %i.bj = call double @llvm.fmuladd.f64(double %i.z, double %i.bg, double %i.bi)
  %i.bk = fneg double %i.bg
  %i.bl = fmul double %i.v, %i.bk
  %i.bm = call double @llvm.fmuladd.f64(double %i.r, double %i.bc, double %i.bl) ; 2 uses
  %.sroa.027.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.bf, i64 0
  %.sroa.027.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.027.0.vec.insert.i.i.i.i, double %i.bj, i64 1 ; 2 uses
  %i.bn = fadd <2 x double> %.sroa.027.8.vec.insert.i.i.i.i, %.sroa.027.8.vec.insert.i.i.i.i ; 3 uses
  %i.bo = fadd double %i.bm, %i.bm                ; 3 uses
  %.sroa.027.8.vec.extract.i.i.i.i = extractelement <2 x double> %i.bn, i64 1 ; 2 uses
  %i.bp = fneg double %.sroa.027.8.vec.extract.i.i.i.i
  %i.bq = fmul double %i.z, %i.bp
  %i.br = call double @llvm.fmuladd.f64(double %i.v, double %i.bo, double %i.bq)
  %.sroa.027.0.vec.extract.i.i.i.i = extractelement <2 x double> %i.bn, i64 0 ; 2 uses
  %i.bs = fneg double %i.bo
  %i.bt = fmul double %i.r, %i.bs
  %i.bu = call double @llvm.fmuladd.f64(double %i.z, double %.sroa.027.0.vec.extract.i.i.i.i, double %i.bt)
  %i.bv = fneg double %.sroa.027.0.vec.extract.i.i.i.i
  %i.bw = fmul double %i.v, %i.bv
  %i.bx = call double @llvm.fmuladd.f64(double %i.r, double %.sroa.027.8.vec.extract.i.i.i.i, double %i.bw)
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.br, i64 0
  %.sroa.0.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i.i, double %i.bu, i64 1
  %i.by = load <2 x double>, ptr %i.ay, align 16, !tbaa !17, !noalias !317
  %i.bz = fmul <2 x double> %i.af, %i.bn
  %i.ca = fadd <2 x double> %i.by, %i.bz
  %i.cb = fadd <2 x double> %i.ca, %.sroa.0.8.vec.insert.i.i.i.i
  %i.cc = fmul double %i.ad, %i.bo
  %i.cd = fadd double %i.ba, %i.cc
  %i.ce = fadd double %i.cd, %i.bx
  %i.cf = load double, ptr %i.ax, align 8, !tbaa !33, !noalias !318 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.3.16.vec.insert.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.ch = shufflevector <2 x double> %.sroa.3.16.vec.insert.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ci = fmul <2 x double> %i.ch, %i.cb
  %i.cj = load <2 x double>, ptr %i.cg, align 16, !tbaa !17, !noalias !321
  %i.ck = fadd <2 x double> %i.cj, %i.ci
  %i.cl = fmul double %i.cf, %i.ce
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cn = load double, ptr %i.cm, align 16, !tbaa !33, !noalias !321
  %i.co = fadd double %i.cn, %i.cl
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !35, !noalias !321
  %i.cr = fmul double %i.cf, %i.cq
  store <2 x double> %i.an, ptr %i.n, align 16, !tbaa !17
  store <2 x double> %i.aw, ptr %i.p, align 16, !tbaa !17
  store <2 x double> %i.ck, ptr %i.ay, align 16, !tbaa !17
  store double %i.co, ptr %i.az, align 16, !tbaa !33
  store double %i.cr, ptr %i.cp, align 8, !tbaa !35
  %i.cs = load ptr, ptr %0, align 16, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 216
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 16 dereferenceable(296) %0), !inline_history !148
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o16VertexSim3Expmap15setToOriginImplEv(ptr noundef nonnull align 16 dereferenceable(369) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.4.0..sroa_idx.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232
  store double 1.000000e+00, ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o16VertexSim3Expmap19setEstimateDataImplEPKd(ptr noundef nonnull align 16 dereferenceable(369) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.g2o::Sim3", align 16       ; 7 uses
  %3 = alloca %"class.Eigen::Matrix", align 16    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = load <2 x double>, ptr %1, align 1, !tbaa !17
  store <2 x double> %i.a, ptr %3, align 16, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load <2 x double>, ptr %i.c, align 1, !tbaa !17
  store <2 x double> %i.d, ptr %i.b, align 16, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load <2 x double>, ptr %i.f, align 1, !tbaa !17
  store <2 x double> %i.g, ptr %i.e, align 16, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.i = getelementptr i8, ptr %1, i64 48
  %i.j = load double, ptr %i.i, align 8, !tbaa !33
  store double %i.j, ptr %i.h, align 16, !tbaa !33
  call void @_ZN3g2o4Sim3C2ERKN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEE(ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.l = load <2 x double>, ptr %2, align 16, !tbaa !17
  store <2 x double> %i.l, ptr %i.k, align 16, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load <2 x double>, ptr %i.n, align 16, !tbaa !17
  store <2 x double> %i.o, ptr %i.m, align 16, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.r = load <2 x double>, ptr %i.q, align 16, !tbaa !17
  store <2 x double> %i.r, ptr %i.p, align 16, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.u = load <2 x double>, ptr %i.t, align 16, !tbaa !33
  store <2 x double> %i.u, ptr %i.s, align 16, !tbaa !33
  %i.v = load ptr, ptr %0, align 16, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 216
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 16 dereferenceable(296) %0), !inline_history !148
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o16VertexSim3Expmap26setMinimalEstimateDataImplEPKd(ptr noundef nonnull align 16 dereferenceable(369) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 16 dereferenceable(369) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn64_N3g2o16VertexSim3ExpmapD1Ev(ptr noundef %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -64 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi7ENS_4Sim3EEE, i64 16), ptr %i.a, align 16, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi7ENS_4Sim3EEE, i64 288), ptr %0, align 16, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !237 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN3g2o10BaseVertexILi7ENS_4Sim3EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !238
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #28, !inline_history !239
  br label %_ZN3g2o10BaseVertexILi7ENS_4Sim3EED2Ev.exit

_ZN3g2o10BaseVertexILi7ENS_4Sim3EED2Ev.exit:      ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 16 dead_on_return(128) dereferenceable(369) %i.a) #26, !inline_history !239
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn64_N3g2o16VertexSim3ExpmapD0Ev(ptr noundef %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -64 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi7ENS_4Sim3EEE, i64 16), ptr %i.a, align 16, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi7ENS_4Sim3EEE, i64 288), ptr %0, align 16, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !237 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN3g2o16VertexSim3ExpmapD0Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !238
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #28, !inline_history !239
  br label %_ZN3g2o16VertexSim3ExpmapD0Ev.exit

_ZN3g2o16VertexSim3ExpmapD0Ev.exit:               ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 16 dead_on_return(128) dereferenceable(369) %i.a) #26, !inline_history !239
  tail call void @_ZdlPvm(ptr noundef nonnull align 16 dereferenceable(369) %i.a, i64 noundef 384) #28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o8EdgeSim3D0Ev(ptr noundef nonnull align 16 dereferenceable(776) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o16OptimizableGraph4EdgeD2Ev(ptr noundef nonnull align 16 dead_on_return(776) dereferenceable(776) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 784) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10HyperGraph4Edge11elementTypeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi7ENS_4Sim3EJNS_16VertexSim3ExpmapES2_EE6resizeEm(ptr noundef nonnull align 16 dereferenceable(760) %0, i64 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o10HyperGraph4Edge6resizeEm(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o18BaseFixedSizedEdgeILi7ENS_4Sim3EJNS_16VertexSim3ExpmapES2_EE16allVerticesFixedEv(ptr noundef nonnull align 16 dereferenceable(760) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !120
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.e = load i8, ptr %i.d, align 4, !tbaa !322, !range !299, !noundef !300
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZNK3g2o18BaseFixedSizedEdgeILi7ENS_4Sim3EJNS_16VertexSim3ExpmapES2_EE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !120
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 100
  %i.j = load i8, ptr %i.i, align 4, !tbaa !322, !range !299, !noundef !300
  %i.k = trunc nuw i8 %i.j to i1
  br label %_ZNK3g2o18BaseFixedSizedEdgeILi7ENS_4Sim3EJNS_16VertexSim3ExpmapES2_EE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit

_ZNK3g2o18BaseFixedSizedEdgeILi7ENS_4Sim3EJNS_16VertexSim3ExpmapES2_EE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit: ; preds = %bb.a, %bb.b
  %i.l = phi i1 [ false, %bb.a ], [ %i.k, %bb.b ]
  ret i1 %i.l
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o8EdgeSim312computeErrorEv(ptr noundef nonnull align 16 dereferenceable(776) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i.i:
  %1 = alloca %"struct.g2o::Sim3", align 16       ; 8 uses
  %2 = alloca %"class.Eigen::Matrix", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !120  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !120  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.024.0.copyload = load double, ptr %i.f, align 16 ; 5 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8 ; 5 uses
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.sroa.525.0.copyload = load double, ptr %.sroa.525.0..sroa_idx, align 16 ; 5 uses
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.sroa.626.0.copyload = load double, ptr %.sroa.626.0..sroa_idx, align 8, !tbaa !17 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.sroa.7.32.copyload = load <2 x double>, ptr %i.g, align 16
  %.sroa.9.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.9.32.copyload = load double, ptr %.sroa.9.32..sroa_idx, align 16, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.i = load double, ptr %i.h, align 8, !tbaa !35 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.k = load <2 x double>, ptr %i.j, align 16, !tbaa !17, !noalias !323 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.m = load <2 x double>, ptr %i.l, align 16, !tbaa !17, !noalias !323 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 240 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.p = load double, ptr %i.o, align 16, !tbaa !33, !noalias !330 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  %i.r = load double, ptr %i.q, align 8, !tbaa !33, !noalias !330 ; 2 uses
  %i.s = load double, ptr %i.n, align 16, !tbaa !33, !noalias !330 ; 2 uses
  %i.t = load <2 x double>, ptr %i.n, align 16, !tbaa !17, !noalias !339
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  %i.v = load double, ptr %i.u, align 8, !tbaa !35, !noalias !340
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  %i.x = load <2 x i64>, ptr %i.w, align 16, !tbaa !17, !noalias !341
  %i.y = xor <2 x i64> %i.x, splat (i64 -9223372036854775808) ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %i.aa = load <2 x i64>, ptr %i.z, align 16, !tbaa !17, !noalias !341
end_hunk_0

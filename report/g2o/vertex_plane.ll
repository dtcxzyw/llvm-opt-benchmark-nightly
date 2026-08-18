inline.NumInlined: 4320
inline.NumDeleted: 2367
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNK3g2o11VertexPlane5writeERSo:bb.a
  %i.ae = getelementptr inbounds i8, ptr %1, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !39
  %i.ah = or i32 %i.ag, %i.o
  %i.ai = icmp eq i32 %i.ah, 0
  ret i1 %i.ai
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi3ENS_7Plane3DEED2Ev(ptr noundef nonnull align 16 dead_on_return(232) dereferenceable(232) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi3ENS_7Plane3DEEE, i64 16), ptr %0, align 16, !tbaa !34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi3ENS_7Plane3DEEE, i64 288), ptr %i.a, align 16, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !48  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt5stackIN3g2o7Plane3DESt6vectorIS1_SaIS1_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !51
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #20
  br label %_ZNSt5stackIN3g2o7Plane3DESt6vectorIS1_SaIS1_EEED2Ev.exit

_ZNSt5stackIN3g2o7Plane3DESt6vectorIS1_SaIS1_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o11VertexPlaneD0Ev(ptr noundef nonnull align 16 dereferenceable(256) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi3ENS_7Plane3DEEE, i64 16), ptr %0, align 16, !tbaa !34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi3ENS_7Plane3DEEE, i64 288), ptr %i.a, align 16, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !48  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN3g2o10BaseVertexILi3ENS_7Plane3DEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !51
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #20, !inline_history !52
  br label %_ZN3g2o10BaseVertexILi3ENS_7Plane3DEED2Ev.exit

_ZN3g2o10BaseVertexILi3ENS_7Plane3DEED2Ev.exit:   ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 16 dead_on_return(128) dereferenceable(256) %0) #19, !inline_history !52
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
  store i32 %1, ptr %i.a, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3g2o10BaseVertexILi3ENS_7Plane3DEE7hessianEii(ptr noundef nonnull align 16 dereferenceable(232) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = sext i32 %1 to i64
  %i.c = sext i32 %2 to i64
  %i.d = load ptr, ptr %i.a, align 16, !tbaa !8
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
  %i.d = load ptr, ptr %i.a, align 16, !tbaa !8
  %.idx.i.i.i = mul nsw i64 %i.c, 24
  %i.e = getelementptr i8, ptr %i.d, i64 %.idx.i.i.i
  %i.f = getelementptr [8 x i8], ptr %i.e, i64 %i.b
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK3g2o10BaseVertexILi3ENS_7Plane3DEE18hessianDeterminantEv(ptr noundef nonnull align 16 dereferenceable(232) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !8   ; 9 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !36
  %i.d = getelementptr i8, ptr %i.b, i64 24
  %i.e = getelementptr i8, ptr %i.b, i64 32
  %i.f = load double, ptr %i.e, align 8, !tbaa !36 ; 2 uses
  %i.g = getelementptr i8, ptr %i.b, i64 48
  %i.h = getelementptr i8, ptr %i.b, i64 64
  %i.i = load double, ptr %i.h, align 8, !tbaa !36 ; 2 uses
  %i.j = getelementptr i8, ptr %i.b, i64 56
  %i.k = load double, ptr %i.j, align 8, !tbaa !36 ; 2 uses
  %i.l = getelementptr i8, ptr %i.b, i64 40
  %i.m = load double, ptr %i.l, align 8, !tbaa !36 ; 2 uses
  %i.n = fneg double %i.m
  %i.o = fmul double %i.k, %i.n
  %i.p = tail call double @llvm.fmuladd.f64(double %i.f, double %i.i, double %i.o)
  %i.q = fmul double %i.c, %i.p
  %i.r = load double, ptr %i.d, align 8, !tbaa !36
  %i.s = getelementptr i8, ptr %i.b, i64 8
  %i.t = load double, ptr %i.s, align 8, !tbaa !36 ; 2 uses
  %i.u = getelementptr i8, ptr %i.b, i64 16
  %i.v = load double, ptr %i.u, align 8, !tbaa !36
  %i.w = fneg double %i.v                         ; 2 uses
  %i.x = fmul double %i.k, %i.w
  %i.y = tail call double @llvm.fmuladd.f64(double %i.t, double %i.i, double %i.x)
  %i.z = fmul double %i.r, %i.y
  %i.aa = fsub double %i.q, %i.z
  %i.ab = load double, ptr %i.g, align 8, !tbaa !36
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
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !8
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi3ENS_7Plane3DEE16mapHessianMemoryEPd(ptr noundef nonnull align 16 dereferenceable(232) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %1, ptr %i.a, align 16, !tbaa !8
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
  %.sroa.09.0.copyload = load ptr, ptr %i.a, align 16 ; 9 uses
  %i.b = load double, ptr %.sroa.09.0.copyload, align 8, !tbaa !36
  %i.c = fadd double %1, %i.b                     ; 2 uses
  %i.d = getelementptr i8, ptr %.sroa.09.0.copyload, i64 8
  %i.e = fmul double %1, 0.000000e+00             ; 6 uses
  %i.f = load double, ptr %i.d, align 8, !tbaa !36
  %i.g = fadd double %i.e, %i.f                   ; 4 uses
  %i.h = getelementptr i8, ptr %.sroa.09.0.copyload, i64 16
  %4 = load double, ptr %i.h, align 8, !tbaa !36
  %5 = fadd double %i.e, %4                       ; 3 uses
  %6 = getelementptr i8, ptr %.sroa.09.0.copyload, i64 24
  %7 = load double, ptr %6, align 8, !tbaa !36
  %8 = fadd double %i.e, %7                       ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.09.0.copyload, i64 32
  %i.j = load double, ptr %i.i, align 8, !tbaa !36
  %i.k = fadd double %1, %i.j                     ; 3 uses
  %i.l = getelementptr i8, ptr %.sroa.09.0.copyload, i64 40
  %i.m = load double, ptr %i.l, align 8, !tbaa !36
  %i.n = fadd double %i.e, %i.m                   ; 4 uses
  %i.o = getelementptr i8, ptr %.sroa.09.0.copyload, i64 48
  %9 = load double, ptr %i.o, align 8, !tbaa !36
  %10 = fadd double %i.e, %9                      ; 2 uses
  %i.p = getelementptr i8, ptr %.sroa.09.0.copyload, i64 56
  %i.q = load double, ptr %i.p, align 8, !tbaa !36
  %i.r = fadd double %i.e, %i.q                   ; 3 uses
  %11 = getelementptr i8, ptr %.sroa.09.0.copyload, i64 64
  %12 = load double, ptr %11, align 8, !tbaa !36
  %13 = fadd double %1, %12                       ; 4 uses
  %14 = fneg double %i.n
  %i.s = fmul double %i.r, %14
  %15 = tail call double @llvm.fmuladd.f64(double %i.k, double %13, double %i.s)
  %16 = fmul double %i.c, %15
  %i.t = fneg double %5                           ; 2 uses
  %i.u = fmul double %i.r, %i.t
  %i.v = tail call double @llvm.fmuladd.f64(double %i.g, double %13, double %i.u)
  %i.w = fmul double %8, %i.v
  %i.x = fsub double %16, %i.w
  %i.y = fmul double %i.k, %i.t
  %i.z = tail call double @llvm.fmuladd.f64(double %i.g, double %i.n, double %i.y)
  %i.aa = fmul double %10, %i.z
  %i.ab = fadd double %i.aa, %i.x                 ; 3 uses
  %i.ac = fcmp uno double %i.ab, 0.000000e+00
  %i.ad = fcmp olt double %i.ab, f0x3CB0000000000000
  %or.cond = or i1 %i.ac, %i.ad
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.18.48.vec.insert = insertelement <2 x double> poison, double %10, i64 0
  %.sroa.18.56.vec.insert = insertelement <2 x double> %.sroa.18.48.vec.insert, double %i.r, i64 1
  %.sroa.13.32.vec.insert = insertelement <2 x double> poison, double %i.k, i64 0
  %.sroa.13.40.vec.insert = insertelement <2 x double> %.sroa.13.32.vec.insert, double %i.n, i64 1 ; 2 uses
  %.sroa.8.16.vec.insert = insertelement <2 x double> poison, double %5, i64 0
  %.sroa.8.24.vec.insert = insertelement <2 x double> %.sroa.8.16.vec.insert, double %8, i64 1
  %.sroa.012.0.vec.insert = insertelement <2 x double> poison, double %i.c, i64 0
  %.sroa.012.8.vec.insert = insertelement <2 x double> %.sroa.012.0.vec.insert, double %i.g, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store <2 x double> %.sroa.012.8.vec.insert, ptr %3, align 16, !tbaa !13, !alias.scope !54
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store <2 x double> %.sroa.8.24.vec.insert, ptr %i.ae, align 16, !tbaa !13, !alias.scope !54
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store <2 x double> %.sroa.13.40.vec.insert, ptr %i.af, align 16, !tbaa !13, !alias.scope !54
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <2 x double> %.sroa.18.56.vec.insert, ptr %i.ag, align 16, !tbaa !13, !alias.scope !54
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  store double %13, ptr %i.ah, align 16, !tbaa !36, !alias.scope !54
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.aj = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %.sroa.012.8.vec.insert) ; 2 uses
  %shift = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.aj, %shift
  %i.ak = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.al = tail call noundef double @llvm.fabs.f64(double %5) ; 2 uses
  %i.am = fadd double %i.al, %i.ak                ; 2 uses
  %i.an = fcmp ogt double %i.am, 0.000000e+00
  %i.ao = select i1 %i.an, double %i.am, double 0.000000e+00 ; 2 uses
  %i.ap = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %.sroa.13.40.vec.insert) ; 2 uses
  %shift27 = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop28 = fadd <2 x double> %i.ap, %shift27
  %i.aq = extractelement <2 x double> %foldExtExtBinop28, i64 0
  %i.ar = tail call noundef double @llvm.fabs.f64(double %i.g)
  %i.as = fadd double %i.ar, %i.aq                ; 2 uses
  %i.at = fcmp ogt double %i.as, %i.ao
  %i.au = select i1 %i.at, double %i.as, double %i.ao ; 2 uses
  %i.av = tail call noundef double @llvm.fabs.f64(double %13)
  %i.aw = tail call noundef double @llvm.fabs.f64(double %i.n)
  %i.ax = fadd double %i.al, %i.aw
  %i.ay = fadd double %i.ax, %i.av                ; 2 uses
  %i.az = fcmp ogt double %i.ay, %i.au
  %storemerge = select i1 %i.az, double %i.ay, double %i.au
  store double %storemerge, ptr %i.ai, align 8, !tbaa !57, !alias.scope !54
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i8 1, ptr %i.ba, align 16, !tbaa !64, !alias.scope !54
  %i.bb = call noundef i64 @_ZN5Eigen8internal11llt_inplaceIdLi1EE9unblockedINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEElRT_(ptr noundef nonnull align 8 dereferenceable(88) %3)
  %i.bc = icmp ne i64 %i.bb, -1
  %i.bd = zext i1 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 84
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !65, !alias.scope !54
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bg = load <2 x double>, ptr %i.bf, align 16, !tbaa !13 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bj = load double, ptr %i.bi, align 16, !tbaa !36
  %i.bk = load double, ptr %3, align 16, !tbaa !36 ; 2 uses
  %i.bl = extractelement <2 x double> %i.bg, i64 0
  %i.bm = fdiv double %i.bl, %i.bk                ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !36
  %i.bp = fmul double %i.bm, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.br = extractelement <2 x double> %i.bg, i64 1
  %i.bs = fsub double %i.br, %i.bp
  %i.bt = load double, ptr %i.af, align 16, !tbaa !36 ; 2 uses
  %i.bu = fdiv double %i.bs, %i.bt                ; 2 uses
  %i.bv = load double, ptr %i.ae, align 16, !tbaa !36
  %i.bw = fmul double %i.bm, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.by = load double, ptr %i.bx, align 8, !tbaa !36 ; 2 uses
  %i.bz = fmul double %i.bu, %i.by
  %i.ca = fadd double %i.bw, %i.bz
  %i.cb = fsub double %i.bj, %i.ca
  %i.cc = load double, ptr %i.ah, align 16, !tbaa !36 ; 2 uses
  %i.cd = fdiv double %i.cb, %i.cc
  %i.ce = fdiv double %i.cd, %i.cc                ; 2 uses
  store double %i.ce, ptr %i.bh, align 8, !tbaa !36
  %i.cf = fmul double %i.by, %i.ce
  %i.cg = fsub double %i.bu, %i.cf
  %i.ch = fdiv double %i.cg, %i.bt
  store double %i.ch, ptr %i.bq, align 8, !tbaa !36
  %i.ci = load <2 x double>, ptr %i.bn, align 8, !tbaa !13
  %i.cj = load <2 x double>, ptr %i.bq, align 8, !tbaa !13
  %i.ck = fmul <2 x double> %i.ci, %i.cj          ; 2 uses
  %shift30 = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop31 = fadd <2 x double> %i.ck, %shift30
  %i.cl = extractelement <2 x double> %foldExtExtBinop31, i64 0
  %i.cm = fsub double %i.bm, %i.cl
  %i.cn = fdiv double %i.cm, %i.bk
  store double %i.cn, ptr %2, align 8, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.co = load ptr, ptr %0, align 16, !tbaa !34
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 224
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %2), !inline_history !66
  %i.cr = load ptr, ptr %0, align 16, !tbaa !34
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 216
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(128) %0), !inline_history !66
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret double %i.ab
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(128) %0) ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64                ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67   ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !69     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.f
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = sub nuw nsw i64 %i.f, %i.m
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.o)
  %.pre = load ptr, ptr %1, align 8, !tbaa !69
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.p = icmp ugt i64 %i.m, %i.f
  br i1 %i.p, label %bb.e, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.f ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.q
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.q, ptr %i.g, align 8, !tbaa !67
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
  %i.r = phi ptr [ %.pre, %bb.c ], [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %i.i, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ]
  %i.s = load ptr, ptr %0, align 8, !tbaa !34
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(128) %0) ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64                ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67   ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !69     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.f
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = sub nuw nsw i64 %i.f, %i.m
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.o)
  %.pre = load ptr, ptr %1, align 8, !tbaa !69
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.p = icmp ugt i64 %i.m, %i.f
  br i1 %i.p, label %bb.e, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.f ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.q
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.q, ptr %i.g, align 8, !tbaa !67
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
  %i.r = phi ptr [ %.pre, %bb.c ], [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %i.i, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ]
  %i.s = load ptr, ptr %0, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %i.r)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %.0 = phi i1 [ %i.v, %_ZNSt6vectorIdSaIdEE6resizeEm.exit ], [ false, %bb.a ]
  ret i1 %.0
}

declare noundef i32 @_ZNK3g2o16OptimizableGraph6Vertex24minimalEstimateDimensionEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #7

end_hunk_0

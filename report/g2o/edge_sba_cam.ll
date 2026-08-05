begin_hunk_0_@_ZN3g2o10EdgeSBACam14setMeasurementERKNS_7SE3QuatE:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = load <2 x double>, ptr %i.g, align 16, !tbaa !55
  store <2 x double> %i.h, ptr %i.f, align 16, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load double, ptr %i.j, align 16, !tbaa !8 ; 4 uses
  store double %i.k, ptr %i.i, align 16, !tbaa !8
  %i.l = load <2 x i64>, ptr %1, align 16, !tbaa !55, !noalias !155
  %i.m = xor <2 x i64> %i.l, splat (i64 -9223372036854775808) ; 2 uses
  %i.n = load <2 x i64>, ptr %i.d, align 16, !tbaa !55, !noalias !155
  %i.o = xor <2 x i64> %i.n, <i64 -9223372036854775808, i64 0> ; 2 uses
  %i.p = load <2 x double>, ptr %i.g, align 16, !tbaa !55, !noalias !162 ; 2 uses
  %i.q = fneg <2 x double> %i.p                   ; 2 uses
  %i.r = fneg double %i.k
  %bc.i = bitcast <2 x i64> %i.m to <2 x double>  ; 2 uses
  %i.s = extractelement <2 x double> %bc.i, i64 1 ; 4 uses
  %bc7.i = bitcast <2 x i64> %i.o to <2 x double> ; 3 uses
  %i.t = extractelement <2 x double> %bc7.i, i64 0 ; 4 uses
  %.sroa.0.8.vec.extract.i.i.i = extractelement <2 x double> %i.q, i64 1 ; 2 uses
  %i.u = fneg double %.sroa.0.8.vec.extract.i.i.i
  %i.v = fmul double %i.t, %i.u
  %i.w = tail call double @llvm.fmuladd.f64(double %i.s, double %i.r, double %i.v)
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x double> %i.q, i64 0 ; 2 uses
  %i.x = extractelement <2 x double> %bc.i, i64 0 ; 4 uses
  %i.y = fmul double %i.k, %i.x
  %i.z = tail call double @llvm.fmuladd.f64(double %i.t, double %.sroa.0.0.vec.extract.i.i.i, double %i.y)
  %i.aa = fneg double %.sroa.0.0.vec.extract.i.i.i
  %i.ab = fmul double %i.s, %i.aa
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.x, double %.sroa.0.8.vec.extract.i.i.i, double %i.ab) ; 2 uses
  %.sroa.027.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.w, i64 0
  %.sroa.027.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.027.0.vec.insert.i.i.i.i, double %i.z, i64 1 ; 2 uses
  %i.ad = fadd <2 x double> %.sroa.027.8.vec.insert.i.i.i.i, %.sroa.027.8.vec.insert.i.i.i.i ; 3 uses
  %i.ae = fadd double %i.ac, %i.ac                ; 3 uses
  %i.af = extractelement <2 x double> %bc7.i, i64 1
  %.sroa.027.8.vec.extract.i.i.i.i = extractelement <2 x double> %i.ad, i64 1 ; 2 uses
  %i.ag = fneg double %.sroa.027.8.vec.extract.i.i.i.i
  %i.ah = fmul double %i.t, %i.ag
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.s, double %i.ae, double %i.ah)
  %.sroa.027.0.vec.extract.i.i.i.i = extractelement <2 x double> %i.ad, i64 0 ; 2 uses
  %i.aj = fneg double %i.ae
  %i.ak = fmul double %i.x, %i.aj
  %i.al = tail call double @llvm.fmuladd.f64(double %i.t, double %.sroa.027.0.vec.extract.i.i.i.i, double %i.ak)
  %i.am = fneg double %.sroa.027.0.vec.extract.i.i.i.i
  %i.an = fmul double %i.s, %i.am
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.x, double %.sroa.027.8.vec.extract.i.i.i.i, double %i.an)
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.ai, i64 0
  %.sroa.0.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i.i, double %i.al, i64 1
  %i.ap = shufflevector <2 x double> %bc7.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aq = fmul <2 x double> %i.ap, %i.ad
  %i.ar = fsub <2 x double> %i.aq, %i.p
  %i.as = fadd <2 x double> %i.ar, %.sroa.0.8.vec.insert.i.i.i.i
  %i.at = fmul double %i.af, %i.ae
  %i.au = fsub double %i.at, %i.k
  %i.av = fadd double %i.au, %i.ao
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 672
  store <2 x i64> %i.m, ptr %i.aw, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 688
  store <2 x i64> %i.o, ptr %.sroa.4.0..sroa_idx, align 16, !tbaa !55
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 704
  store <2 x double> %i.as, ptr %i.ax, align 16
  %.sroa.7.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 720
  store double %i.av, ptr %.sroa.7.32..sroa_idx, align 16, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN3g2o10EdgeSBACam18setMeasurementDataEPKd(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(736) initializes((176, 232), (672, 728)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load <2 x double>, ptr %1, align 1, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load <2 x double>, ptr %i.c, align 1, !tbaa !55 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load <2 x double>, ptr %i.e, align 1, !tbaa !55 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 48
  %i.h = load double, ptr %i.g, align 8, !tbaa !8
  %.sroa.84.40.vec.extract = extractelement <2 x double> %i.f, i64 1
  %i.i = shufflevector <2 x double> %i.d, <2 x double> %i.f, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.i, ptr %i.a, align 16
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store double %.sroa.84.40.vec.extract, ptr %.sroa.510.0..sroa_idx.i, align 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  store double %i.h, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !55
  %.sroa.53.16.vec.extract = extractelement <2 x double> %i.d, i64 0 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  store <2 x double> %i.b, ptr %i.j, align 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  store double %.sroa.53.16.vec.extract, ptr %.sroa.5.0..sroa_idx.i, align 16, !tbaa !55
  %i.k = load <2 x i64>, ptr %i.a, align 16, !tbaa !55, !noalias !167
  %i.l = xor <2 x i64> %i.k, splat (i64 -9223372036854775808) ; 2 uses
  %i.m = load <2 x i64>, ptr %.sroa.510.0..sroa_idx.i, align 16, !tbaa !55, !noalias !167
  %i.n = xor <2 x i64> %i.m, <i64 -9223372036854775808, i64 0> ; 2 uses
  %i.o = load <2 x double>, ptr %i.j, align 16, !tbaa !55, !noalias !174 ; 2 uses
  %i.p = fneg <2 x double> %i.o                   ; 2 uses
  %i.q = fneg double %.sroa.53.16.vec.extract
  %bc.i = bitcast <2 x i64> %i.l to <2 x double>  ; 3 uses
  %i.r = extractelement <2 x double> %bc.i, i64 1 ; 4 uses
  %bc7.i = bitcast <2 x i64> %i.n to <2 x double> ; 3 uses
  %i.s = extractelement <2 x double> %bc7.i, i64 0 ; 4 uses
  %.sroa.0.8.vec.extract.i.i.i = extractelement <2 x double> %i.p, i64 1 ; 2 uses
  %i.t = fneg double %.sroa.0.8.vec.extract.i.i.i
  %i.u = fmul double %i.s, %i.t
  %i.v = tail call double @llvm.fmuladd.f64(double %i.r, double %i.q, double %i.u)
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x double> %i.p, i64 0 ; 2 uses
  %i.w = extractelement <2 x double> %bc.i, i64 0 ; 3 uses
  %foldExtExtBinop = fmul <2 x double> %i.d, %bc.i
  %i.x = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.y = tail call double @llvm.fmuladd.f64(double %i.s, double %.sroa.0.0.vec.extract.i.i.i, double %i.x)
  %i.z = fneg double %.sroa.0.0.vec.extract.i.i.i
  %i.aa = fmul double %i.r, %i.z
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.w, double %.sroa.0.8.vec.extract.i.i.i, double %i.aa) ; 2 uses
  %.sroa.027.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.v, i64 0
  %.sroa.027.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.027.0.vec.insert.i.i.i.i, double %i.y, i64 1 ; 2 uses
  %i.ac = fadd <2 x double> %.sroa.027.8.vec.insert.i.i.i.i, %.sroa.027.8.vec.insert.i.i.i.i ; 3 uses
  %i.ad = fadd double %i.ab, %i.ab                ; 3 uses
  %i.ae = extractelement <2 x double> %bc7.i, i64 1
  %.sroa.027.8.vec.extract.i.i.i.i = extractelement <2 x double> %i.ac, i64 1 ; 2 uses
  %i.af = fneg double %.sroa.027.8.vec.extract.i.i.i.i
  %i.ag = fmul double %i.s, %i.af
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.r, double %i.ad, double %i.ag)
  %.sroa.027.0.vec.extract.i.i.i.i = extractelement <2 x double> %i.ac, i64 0 ; 2 uses
  %i.ai = fneg double %i.ad
  %i.aj = fmul double %i.w, %i.ai
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.s, double %.sroa.027.0.vec.extract.i.i.i.i, double %i.aj)
  %i.al = fneg double %.sroa.027.0.vec.extract.i.i.i.i
  %i.am = fmul double %i.r, %i.al
  %i.an = tail call double @llvm.fmuladd.f64(double %i.w, double %.sroa.027.8.vec.extract.i.i.i.i, double %i.am)
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.ah, i64 0
  %.sroa.0.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i.i, double %i.ak, i64 1
  %i.ao = shufflevector <2 x double> %bc7.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ap = fmul <2 x double> %i.ao, %i.ac
  %i.aq = fsub <2 x double> %i.ap, %i.o
  %i.ar = fadd <2 x double> %i.aq, %.sroa.0.8.vec.insert.i.i.i.i
  %i.as = fmul double %i.ae, %i.ad
  %i.at = fsub double %i.as, %.sroa.53.16.vec.extract
  %i.au = fadd double %i.at, %i.an
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 672
  store <2 x i64> %i.l, ptr %i.av, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 688
  store <2 x i64> %i.n, ptr %.sroa.4.0..sroa_idx, align 16, !tbaa !55
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 704
  store <2 x double> %i.ar, ptr %i.aw, align 16
  %.sroa.7.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 720
  store double %i.au, ptr %.sroa.7.32..sroa_idx, align 16, !tbaa !55
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZNK3g2o10EdgeSBACam18getMeasurementDataEPd(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(736) %0, ptr nofree noundef writeonly captures(none) initializes((0, 56)) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = load <2 x double>, ptr %i.b, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load <2 x double>, ptr %i.d, align 16
  %i.f = load double, ptr %i.a, align 16, !tbaa !8, !noalias !179
  %.sroa.5.24.vec.insert = insertelement <2 x double> %i.e, double %i.f, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = load <2 x double>, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.j = load double, ptr %i.i, align 8, !tbaa !8, !noalias !179
  store <2 x double> %i.c, ptr %1, align 1, !tbaa !55
  %i.k = getelementptr i8, ptr %1, i64 16
  store <2 x double> %.sroa.5.24.vec.insert, ptr %i.k, align 1, !tbaa !55
  %i.l = getelementptr i8, ptr %1, i64 32
  store <2 x double> %i.h, ptr %i.l, align 1, !tbaa !55
  %i.m = getelementptr i8, ptr %1, i64 48
  store double %i.j, ptr %i.m, align 8, !tbaa !8
  ret i1 true
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN3g2o10EdgeSBACam12computeErrorEv(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(736) initializes((528, 576)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %.sroa.049.sroa.6 = alloca [24 x i8], align 16  ; 7 uses
  %.sroa.020.sroa.4 = alloca [32 x i8], align 16  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49, !nonnull !113, !noundef !113
  %i.d = tail call ptr @__dynamic_cast(ptr nonnull %i.c, ptr nonnull @_ZTIN3g2o10HyperGraph6VertexE, ptr nonnull @_ZTIN3g2o9VertexCamE, i64 0) #21 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49, !nonnull !113, !noundef !113
  %i.g = tail call ptr @__dynamic_cast(ptr nonnull %i.f, ptr nonnull @_ZTIN3g2o10HyperGraph6VertexE, ptr nonnull @_ZTIN3g2o9VertexCamE, i64 0) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.049.sroa.6)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.020.sroa.4)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.j = load <2 x i64>, ptr %i.i, align 16, !tbaa !55, !noalias !182
  %i.k = xor <2 x i64> %i.j, splat (i64 -9223372036854775808) ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.m = load <2 x i64>, ptr %i.l, align 16, !tbaa !55, !noalias !182
  %i.n = xor <2 x i64> %i.m, <i64 -9223372036854775808, i64 0> ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.p = load <2 x double>, ptr %i.o, align 16, !tbaa !55, !noalias !189 ; 2 uses
  %i.q = fneg <2 x double> %i.p                   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %i.s = load double, ptr %i.r, align 16, !tbaa !8, !noalias !189 ; 3 uses
  %i.t = fneg double %i.s
  %bc.i = bitcast <2 x i64> %i.k to <2 x double>  ; 4 uses
  %i.u = extractelement <2 x double> %bc.i, i64 1 ; 3 uses
  %bc7.i = bitcast <2 x i64> %i.n to <2 x double> ; 2 uses
  %i.v = extractelement <2 x double> %bc7.i, i64 0 ; 6 uses
  %.sroa.0.8.vec.extract.i.i.i = extractelement <2 x double> %i.q, i64 1
  %i.w = fneg double %.sroa.0.8.vec.extract.i.i.i
  %i.x = fmul double %i.v, %i.w
  %i.y = tail call double @llvm.fmuladd.f64(double %i.u, double %i.t, double %i.x)
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x double> %i.q, i64 0
  %i.z = extractelement <2 x double> %bc.i, i64 0 ; 3 uses
  %i.aa = fmul double %i.s, %i.z
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.v, double %.sroa.0.0.vec.extract.i.i.i, double %i.aa)
  %.sroa.027.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.y, i64 0
  %.sroa.027.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.027.0.vec.insert.i.i.i.i, double %i.ab, i64 1 ; 2 uses
  %i.ac = fadd <2 x double> %.sroa.027.8.vec.insert.i.i.i.i, %.sroa.027.8.vec.insert.i.i.i.i ; 5 uses
  %.sroa.027.8.vec.extract.i.i.i.i = extractelement <2 x double> %i.ac, i64 1
  %1 = fneg double %.sroa.027.8.vec.extract.i.i.i.i
  %2 = fmul double %i.v, %1
  %.sroa.027.0.vec.extract.i.i.i.i = extractelement <2 x double> %i.ac, i64 0
  %i.ad = shufflevector <2 x double> %bc7.i, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.ae = fmul <2 x double> %i.ad, %i.ac
  %i.af = fsub <2 x double> %i.ae, %i.p
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  store <2 x i64> %i.n, ptr %.sroa.020.sroa.4, align 16, !tbaa !55
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 224 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  %i.aj = load double, ptr %i.ah, align 8, !tbaa !8, !noalias !197 ; 2 uses
  %i.ak = load <2 x double>, ptr %i.ai, align 8, !tbaa !8, !noalias !197 ; 4 uses
  %i.al = fneg <2 x double> %i.ak
  %i.am = shufflevector <2 x i64> %i.n, <2 x i64> %i.k, <2 x i32> <i32 0, i32 2>
  %i.an = bitcast <2 x i64> %i.am to <2 x double>
  %i.ao = fmul <2 x double> %i.an, %i.al
  %i.ap = shufflevector <2 x i64> %i.k, <2 x i64> %i.n, <2 x i32> <i32 1, i32 2>
  %i.aq = bitcast <2 x i64> %i.ap to <2 x double>
  %i.ar = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.as = insertelement <2 x double> %i.ar, double %i.aj, i64 1
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> %i.as, <2 x double> %i.ao) ; 2 uses
  %i.au = fadd <2 x double> %i.at, %i.at          ; 5 uses
  %.sroa.027.8.vec.extract.i.i.i.i6 = extractelement <2 x double> %i.au, i64 1
  %3 = fneg double %.sroa.027.8.vec.extract.i.i.i.i6
  %4 = fmul double %i.v, %3
  %.sroa.027.0.vec.extract.i.i.i.i7 = extractelement <2 x double> %i.au, i64 0
  %i.av = load <2 x double>, ptr %i.ah, align 8, !tbaa !55, !noalias !206
  %i.aw = fmul <2 x double> %i.ad, %i.au
  %i.ax = fadd <2 x double> %i.av, %i.aw
  %i.ay = insertelement <2 x double> %i.q, double %i.aj, i64 1
  %i.az = fneg <2 x double> %i.ay
  %i.ba = shufflevector <2 x double> %bc.i, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bb = fmul <2 x double> %i.ba, %i.az
  %i.bc = shufflevector <2 x double> %bc.i, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bd = shufflevector <2 x double> %i.q, <2 x double> %i.ak, <2 x i32> <i32 1, i32 2>
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.bd, <2 x double> %i.bb) ; 2 uses
  %i.bf = fadd <2 x double> %i.be, %i.be          ; 3 uses
  %i.bg = extractelement <2 x double> %i.bf, i64 0 ; 2 uses
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.u, double %i.bg, double %2)
  %i.bi = fneg double %i.bg
  %i.bj = fmul double %i.z, %i.bi
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.v, double %.sroa.027.0.vec.extract.i.i.i.i, double %i.bj)
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.bh, i64 0
  %.sroa.0.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i.i, double %i.bk, i64 1
  %i.bl = fadd <2 x double> %i.af, %.sroa.0.8.vec.insert.i.i.i.i
  %i.bm = extractelement <2 x double> %i.bf, i64 1 ; 2 uses
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.u, double %i.bm, double %4)
  %i.bo = fneg double %i.bm
  %i.bp = fmul double %i.z, %i.bo
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.v, double %.sroa.027.0.vec.extract.i.i.i.i7, double %i.bp)
  %i.br = shufflevector <2 x double> %i.ac, <2 x double> %i.au, <2 x i32> <i32 0, i32 2>
  %i.bs = fneg <2 x double> %i.br
  %i.bt = fmul <2 x double> %i.ba, %i.bs
  %5 = shufflevector <2 x double> %i.ac, <2 x double> %i.au, <2 x i32> <i32 1, i32 3>
  %i.bu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %5, <2 x double> %i.bt)
  %.sroa.0.0.vec.insert.i.i.i.i8 = insertelement <2 x double> poison, double %i.bn, i64 0
  %.sroa.0.8.vec.insert.i.i.i.i9 = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i.i8, double %i.bq, i64 1
  %i.bv = fadd <2 x double> %i.ax, %.sroa.0.8.vec.insert.i.i.i.i9
  %i.bw = fmul <2 x double> %i.ad, %i.bf          ; 2 uses
  %i.bx = insertelement <2 x double> %i.ak, double %i.s, i64 0 ; 2 uses
  %i.by = fsub <2 x double> %i.bw, %i.bx
  %i.bz = fadd <2 x double> %i.bw, %i.bx
  %i.ca = shufflevector <2 x double> %i.by, <2 x double> %i.bz, <2 x i32> <i32 0, i32 3>
  %i.cb = fadd <2 x double> %i.ca, %i.bu          ; 2 uses
  %i.cc = fadd <2 x double> %i.bl, %i.bv          ; 3 uses
  %.sroa.020.sroa.4.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.020.sroa.4, i64 16
  store <2 x double> %i.cc, ptr %.sroa.020.sroa.4.16..sroa_idx, align 16, !tbaa !55, !alias.scope !194
  %shift = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.cb, %shift
  %i.cd = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.ce = load <2 x double>, ptr %i.ag, align 16, !tbaa !55, !noalias !207 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  %i.cg = load <2 x double>, ptr %i.cf, align 16, !tbaa !55, !noalias !207 ; 4 uses
  %i.ch = bitcast <2 x i64> %i.k to <2 x double>
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %.sroa.020.sroa.0.8.vec.extract = extractelement <2 x i64> %i.k, i64 1
  %i.cj = bitcast i64 %.sroa.020.sroa.0.8.vec.extract to <1 x double>
  %i.ck = shufflevector <1 x double> %i.cj, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cl = bitcast <2 x i64> %i.n to <2 x double>
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %.sroa.020.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.020.sroa.4, i64 8
  %.sroa.020.sroa.4.8..sroa.020.sroa.4.24..sroa.020.24..sroa.020.24..sroa.020.24. = load <2 x double>, ptr %.sroa.020.sroa.4.8..sroa_idx, align 8, !alias.scope !194 ; 2 uses
  %i.cn = shufflevector <2 x double> %.sroa.020.sroa.4.8..sroa.020.sroa.4.24..sroa.020.24..sroa.020.24..sroa.020.24., <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.co = fmul <2 x double> %i.ce, %i.cn
  %i.cp = fmul <2 x double> %i.cg, %i.ck
  %i.cq = fadd <2 x double> %i.cp, %i.co
  %i.cr = fmul <2 x double> %i.ce, %i.cm
  %i.cs = fmul <2 x double> %i.cg, %i.ci
  %i.ct = fsub <2 x double> %i.cr, %i.cs
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cv = tail call noundef <2 x double> @llvm.x86.sse3.addsub.pd(<2 x double> %i.cq, <2 x double> %i.cu) ; 2 uses
  %i.cw = fmul <2 x double> %i.cg, %i.cn
  %i.cx = fmul <2 x double> %i.ce, %i.ck
  %i.cy = fsub <2 x double> %i.cw, %i.cx
  %i.cz = fmul <2 x double> %i.cg, %i.cm
  %i.da = fmul <2 x double> %i.ce, %i.ci
  %i.db = fadd <2 x double> %i.da, %i.cz
  %i.dc = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dd = tail call noundef <2 x double> @llvm.x86.sse3.addsub.pd(<2 x double> %i.dc, <2 x double> %i.db) ; 2 uses
  %i.de = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.df = extractelement <2 x double> %i.dd, i64 0
  %i.dg = fcmp olt double %i.df, 0.000000e+00     ; 2 uses
  %i.dh = extractelement <2 x double> %i.cc, i64 1 ; 2 uses
  %i.di = extractelement <2 x double> %.sroa.020.sroa.4.8..sroa.020.sroa.4.24..sroa.020.24..sroa.020.24..sroa.020.24., i64 1 ; 2 uses
  %i.dj = fneg <2 x double> %i.cv
  %i.dk = fneg <2 x double> %i.de
  %i.dl = select i1 %i.dg, <2 x double> %i.dk, <2 x double> %i.de ; 4 uses
  %i.dm = select i1 %i.dg, <2 x double> %i.dj, <2 x double> %i.cv ; 4 uses
  %i.dn = fmul <2 x double> %i.dm, %i.dm
  %i.do = fmul <2 x double> %i.dl, %i.dl
  %i.dp = fadd <2 x double> %i.do, %i.dn          ; 2 uses
  %shift119 = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop120 = fadd <2 x double> %i.dp, %shift119
  %i.dq = extractelement <2 x double> %foldExtExtBinop120, i64 0 ; 2 uses
  %i.dr = fcmp ogt double %i.dq, 0.000000e+00     ; 2 uses
  %.scalar.i.i.i.i = tail call double @llvm.sqrt.f64(double %i.dq)
  %i.ds = insertelement <2 x double> poison, double %.scalar.i.i.i.i, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.du = fdiv <2 x double> %i.dm, %i.dt
  %i.dv = fdiv <2 x double> %i.dl, %i.dt
  %.sroa.020.16..sroa.020.16..sroa.020.16.26 = select i1 %i.dr, <2 x double> %i.dv, <2 x double> %i.dl ; 4 uses
  %.sroa.020.0..sroa.020.0..sroa.020.0.21 = select i1 %i.dr, <2 x double> %i.du, <2 x double> %i.dm ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %.sroa.049.sroa.0.0.copyload = load <1 x double>, ptr %i.h, align 16
  %.sroa.049.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 680
  %.sroa.049.sroa.4.0.copyload = load <1 x double>, ptr %.sroa.049.sroa.4.0..sroa_idx, align 8
  %.sroa.049.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 688
  %.sroa.049.sroa.5.0.copyload = load <1 x double>, ptr %.sroa.049.sroa.5.0..sroa_idx, align 16
  %.sroa.049.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.dw = load i64, ptr %.sroa.049.sroa.6.0..sroa_idx, align 8, !tbaa !55
  store i64 %i.dw, ptr %.sroa.049.sroa.6, align 16, !tbaa !55
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 704
  %.sroa.049.sroa.6.32..sroa_idx126 = getelementptr inbounds nuw i8, ptr %.sroa.049.sroa.6, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.049.sroa.6.32..sroa_idx126, ptr noundef nonnull align 16 dereferenceable(16) %i.dx, i64 16, i1 false), !tbaa.struct !215
  %.sroa.21.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 720
  %.sroa.21.32.copyload = load double, ptr %.sroa.21.32..sroa_idx, align 16, !tbaa !55
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !8, !noalias !216 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.eb = load double, ptr %i.ea, align 16, !tbaa !8, !noalias !216 ; 4 uses
  %i.ec = fneg double %i.dh
  %i.ed = fmul double %i.eb, %i.ec
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.dz, double %i.cd, double %i.ed)
  %i.ef = load double, ptr %i.h, align 16, !tbaa !8, !noalias !216 ; 4 uses
  %i.eg = fneg double %i.cd
  %i.eh = fmul double %i.ef, %i.eg
  %i.ei = tail call double @llvm.fmuladd.f64(double %i.eb, double %i.di, double %i.eh)
  %i.ej = fneg double %i.di
  %i.ek = fmul double %i.dz, %i.ej
  %i.el = tail call double @llvm.fmuladd.f64(double %i.ef, double %i.dh, double %i.ek) ; 2 uses
  %.sroa.027.0.vec.insert.i.i.i.i10 = insertelement <2 x double> poison, double %i.ee, i64 0
  %.sroa.027.8.vec.insert.i.i.i.i11 = insertelement <2 x double> %.sroa.027.0.vec.insert.i.i.i.i10, double %i.ei, i64 1 ; 2 uses
  %i.em = fadd <2 x double> %.sroa.027.8.vec.insert.i.i.i.i11, %.sroa.027.8.vec.insert.i.i.i.i11 ; 3 uses
  %i.en = fadd double %i.el, %i.el                ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !8, !noalias !225 ; 2 uses
  %.sroa.027.8.vec.extract.i.i.i.i12 = extractelement <2 x double> %i.em, i64 1 ; 2 uses
  %i.eq = fneg double %.sroa.027.8.vec.extract.i.i.i.i12
  %i.er = fmul double %i.eb, %i.eq
  %i.es = tail call double @llvm.fmuladd.f64(double %i.dz, double %i.en, double %i.er)
  %.sroa.027.0.vec.extract.i.i.i.i13 = extractelement <2 x double> %i.em, i64 0 ; 2 uses
  %i.et = fneg double %i.en
  %i.eu = fmul double %i.ef, %i.et
  %i.ev = tail call double @llvm.fmuladd.f64(double %i.eb, double %.sroa.027.0.vec.extract.i.i.i.i13, double %i.eu)
  %.sroa.0.0.vec.insert.i.i.i.i14 = insertelement <2 x double> poison, double %i.es, i64 0
  %.sroa.0.8.vec.insert.i.i.i.i15 = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i.i14, double %i.ev, i64 1
  %.sroa.615.32.vec.insert.i.i.i.i.i.i.i.i.i.i16 = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.ew = shufflevector <2 x double> %.sroa.615.32.vec.insert.i.i.i.i.i.i.i.i.i.i16, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ex = fmul <2 x double> %i.ew, %i.em
  %i.ey = fadd <2 x double> %i.cc, %i.ex
  %i.ez = fadd <2 x double> %i.ey, %.sroa.0.8.vec.insert.i.i.i.i15
  %.sroa.049.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.049.sroa.6, i64 8
  %.sroa.049.sroa.6.8..sroa.049.sroa.6.32..sroa.049.32..sroa.049.32..sroa.049.32. = load <2 x double>, ptr %.sroa.049.sroa.6.8..sroa_idx, align 8, !tbaa !55, !alias.scope !212
  %i.fa = fadd <2 x double> %.sroa.049.sroa.6.8..sroa.049.sroa.6.32..sroa.049.32..sroa.049.32..sroa.049.32., %i.ez ; 2 uses
  %.sroa.049.sroa.6.8..sroa_idx127 = getelementptr inbounds nuw i8, ptr %.sroa.049.sroa.6, i64 8
  store <2 x double> %i.fa, ptr %.sroa.049.sroa.6.8..sroa_idx127, align 8, !tbaa !55, !alias.scope !212
  %i.fb = shufflevector <1 x double> %.sroa.049.sroa.0.0.copyload, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fc = shufflevector <1 x double> %.sroa.049.sroa.4.0.copyload, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fd = shufflevector <1 x double> %.sroa.049.sroa.5.0.copyload, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %.sroa.049.sroa.6.0..sroa.049.sroa.6.24..sroa.049.24..sroa.049.24..sroa.049.24. = load <2 x double>, ptr %.sroa.049.sroa.6, align 16, !alias.scope !212 ; 2 uses
  %i.fe = shufflevector <2 x double> %.sroa.049.sroa.6.0..sroa.049.sroa.6.24..sroa.049.24..sroa.049.24..sroa.049.24., <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ff = fmul <2 x double> %.sroa.020.0..sroa.020.0..sroa.020.0.21, %i.fe
  %i.fg = fmul <2 x double> %.sroa.020.16..sroa.020.16..sroa.020.16.26, %i.fc
  %i.fh = fadd <2 x double> %i.fg, %i.ff
  %i.fi = fmul <2 x double> %.sroa.020.0..sroa.020.0..sroa.020.0.21, %i.fd
  %i.fj = fmul <2 x double> %.sroa.020.16..sroa.020.16..sroa.020.16.26, %i.fb
  %i.fk = fsub <2 x double> %i.fi, %i.fj
  %i.fl = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fm = tail call noundef <2 x double> @llvm.x86.sse3.addsub.pd(<2 x double> %i.fh, <2 x double> %i.fl) ; 2 uses
  %i.fn = fmul <2 x double> %.sroa.020.16..sroa.020.16..sroa.020.16.26, %i.fe
  %i.fo = fmul <2 x double> %.sroa.020.0..sroa.020.0..sroa.020.0.21, %i.fc
  %i.fp = fsub <2 x double> %i.fn, %i.fo
  %i.fq = fmul <2 x double> %.sroa.020.16..sroa.020.16..sroa.020.16.26, %i.fd
  %i.fr = fmul <2 x double> %.sroa.020.0..sroa.020.0..sroa.020.0.21, %i.fb
  %i.fs = fadd <2 x double> %i.fr, %i.fq
  %i.ft = shufflevector <2 x double> %i.fp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fu = tail call noundef <2 x double> @llvm.x86.sse3.addsub.pd(<2 x double> %i.ft, <2 x double> %i.fs) ; 3 uses
  %i.fv = shufflevector <2 x double> %i.fu, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fw = extractelement <2 x double> %i.fu, i64 0
  %i.fx = fcmp olt double %i.fw, 0.000000e+00     ; 3 uses
  %i.fy = extractelement <2 x double> %i.fu, i64 1
  %i.fz = fneg <2 x double> %i.fm
  %i.ga = fneg <2 x double> %i.fv                 ; 2 uses
  %i.gb = extractelement <2 x double> %i.ga, i64 0
  %.sroa.049.16..sroa.049.16..sroa.049.16.57100 = select i1 %i.fx, double %i.gb, double %i.fy
  %i.gc = select i1 %i.fx, <2 x double> %i.ga, <2 x double> %i.fv ; 3 uses
  %i.gd = select i1 %i.fx, <2 x double> %i.fz, <2 x double> %i.fm ; 4 uses
  %i.ge = fmul <2 x double> %i.gd, %i.gd
  %i.gf = fmul <2 x double> %i.gc, %i.gc
  %i.gg = fadd <2 x double> %i.gf, %i.ge          ; 2 uses
  %shift122 = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop123 = fadd <2 x double> %i.gg, %shift122
  %i.gh = extractelement <2 x double> %foldExtExtBinop123, i64 0 ; 2 uses
  %i.gi = fcmp ogt double %i.gh, 0.000000e+00     ; 2 uses
  %.scalar.i.i.i.i18 = tail call double @llvm.sqrt.f64(double %i.gh)
  %i.gj = insertelement <2 x double> poison, double %.scalar.i.i.i.i18, i64 0
  %i.gk = shufflevector <2 x double> %i.gj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gl = fdiv <2 x double> %i.gd, %i.gk
  %i.gm = fdiv <2 x double> %i.gc, %i.gk
  %i.gn = extractelement <2 x double> %i.gm, i64 0
  %.sroa.049.16..sroa.049.16..sroa.049.16.57 = select i1 %i.gi, double %i.gn, double %.sroa.049.16..sroa.049.16..sroa.049.16.57100
  %i.go = select i1 %i.gi, <2 x double> %i.gl, <2 x double> %i.gd
  %i.gp = fmul double %i.ep, %i.en
  %i.gq = fadd double %i.cd, %i.gp
  %i.gr = fneg double %.sroa.027.0.vec.extract.i.i.i.i13
  %i.gs = fmul double %i.dz, %i.gr
  %i.gt = tail call double @llvm.fmuladd.f64(double %i.ef, double %.sroa.027.8.vec.extract.i.i.i.i12, double %i.gs)
  %i.gu = fadd double %i.gq, %i.gt
  %i.gv = fadd double %.sroa.21.32.copyload, %i.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.020.sroa.4)
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.gx = shufflevector <2 x double> %.sroa.049.sroa.6.0..sroa.049.sroa.6.24..sroa.049.24..sroa.049.24..sroa.049.24., <2 x double> %i.fa, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.gx, ptr %i.gw, align 16, !tbaa !8
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 544
  store double %i.gv, ptr %i.gy, align 16, !tbaa !8
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 552
  store <2 x double> %i.go, ptr %i.gz, align 8, !tbaa !8
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 568
  store double %.sroa.049.16..sroa.049.16..sroa.049.16.57, ptr %i.ha, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.049.sroa.6)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o10EdgeSBACamD0Ev(ptr noundef nonnull align 16 dereferenceable(736) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o16OptimizableGraph4EdgeD2Ev(ptr noundef nonnull align 16 dead_on_return(736) dereferenceable(736) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 736) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10HyperGraph4Edge11elementTypeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret i32 1
end_hunk_0

inline.NumInlined: 3920
inline.NumDeleted: 2364
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN3g2o17EdgeSE3ProjectXYZ4readERSi:bb.a
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %.critedge2.i, label %_ZN3g2o8BaseEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE21readInformationMatrixERSi.exit

_ZN3g2o8BaseEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE21readInformationMatrixERSi.exit: ; preds = %bb.b, %bb.a, %_ZN3g2o8internal10readVectorIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEbRSiRNS2_9DenseBaseIT_EE.exit, %.critedge2.i, %.critedge2.1.i, %bb.c
  %i.ai = phi i32 [ %.pre43.pre.pre.i, %.critedge2.1.i ], [ %.pre37.pre.i, %.critedge2.i ], [ %.pre6, %_ZN3g2o8internal10readVectorIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEbRSiRNS2_9DenseBaseIT_EE.exit ], [ %i.ag, %bb.c ], [ %i.o, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  %i.ak = and i32 %i.ai, 2
  %i.al = icmp ne i32 %i.ak, 0
  %i.am = or i1 %i.aj, %i.al
  ret i1 %i.am
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK3g2o17EdgeSE3ProjectXYZ5writeERSo(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load double, ptr %i.a, align 16, !tbaa !55
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.b)
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.f = load double, ptr %i.e, align 8, !tbaa !55
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.f)
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = load double, ptr %i.i, align 16, !tbaa !55
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.j)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = load double, ptr %i.m, align 16, !tbaa !55
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.n)
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.r = load double, ptr %i.q, align 8, !tbaa !55
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.r)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !39
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !57
  %i.aa = icmp eq i32 %i.z, 0
  ret i1 %i.aa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3g2o17EdgeSE3ProjectXYZ12computeErrorEv(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(360) initializes((224, 240)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 6 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !47   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.05.0.copyload = load <2 x double>, ptr %i.f, align 16, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 168 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.j = load double, ptr %i.i, align 8, !tbaa !55, !noalias !68 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.l = load double, ptr %i.k, align 8, !tbaa !55, !noalias !68 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.n = load double, ptr %i.m, align 8, !tbaa !55, !noalias !68 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.p = load double, ptr %i.o, align 8, !tbaa !55, !noalias !68 ; 2 uses
  %i.q = fneg double %i.p
  %i.r = fmul double %i.n, %i.q
  %i.s = tail call double @llvm.fmuladd.f64(double %i.j, double %i.l, double %i.r)
  %i.t = load double, ptr %i.h, align 8, !tbaa !55, !noalias !68 ; 2 uses
  %i.u = load double, ptr %i.g, align 8, !tbaa !55, !noalias !68 ; 4 uses
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
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !55, !noalias !79 ; 2 uses
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
  %i.ao = load <2 x double>, ptr %i.h, align 8, !tbaa !67, !noalias !82
  %i.ap = shufflevector <2 x double> %.sroa.615.32.vec.insert.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aq = fmul <2 x double> %i.ap, %i.ab
  %i.ar = fadd <2 x double> %i.ao, %i.aq
  %i.as = fadd <2 x double> %i.ar, %.sroa.0.8.vec.insert.i.i.i.i
  %i.at = fmul double %i.ae, %i.ac
  %i.au = fadd double %i.l, %i.at
  %i.av = fadd double %i.au, %i.an
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.ax = load <2 x double>, ptr %i.aw, align 8, !tbaa !67, !noalias !83
  %i.ay = fadd <2 x double> %i.ax, %i.as
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %i.ba = load double, ptr %i.az, align 8, !tbaa !55, !noalias !83
  %i.bb = fadd double %i.ba, %i.av
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.be = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bg = fdiv <2 x double> %i.ay, %i.bf
  %i.bh = load <2 x double>, ptr %i.bc, align 8, !tbaa !55, !noalias !84
  %i.bi = load <2 x double>, ptr %i.bd, align 8, !tbaa !55, !noalias !84
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bg, <2 x double> %i.bh, <2 x double> %i.bi)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bl = fsub <2 x double> %.sroa.05.0.copyload, %i.bj
  store <2 x double> %i.bl, ptr %i.bk, align 16, !tbaa !67
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK3g2o17EdgeSE3ProjectXYZ11cam_projectERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Eigen::Matrix") align 16 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(360) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !55, !noalias !87
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.e = load <2 x double>, ptr %2, align 8, !tbaa !55, !noalias !87
  %i.f = insertelement <2 x double> poison, double %i.b, i64 0
  %i.g = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer
  %i.h = fdiv <2 x double> %i.e, %i.g
  %i.i = load <2 x double>, ptr %i.c, align 8, !tbaa !55
  %i.j = load <2 x double>, ptr %i.d, align 8, !tbaa !55
  %i.k = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.h, <2 x double> %i.i, <2 x double> %i.j)
  store <2 x double> %i.k, ptr %0, align 16, !tbaa !55
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN3g2o17EdgeSE3ProjectXYZ15isDepthPositiveEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(360) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 4 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !47   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.j = load double, ptr %i.g, align 8, !tbaa !55, !noalias !90 ; 2 uses
  %i.k = load double, ptr %i.f, align 8, !tbaa !55, !noalias !90 ; 3 uses
  %i.l = load <2 x double>, ptr %i.h, align 8, !tbaa !55, !noalias !90 ; 3 uses
  %i.m = load <2 x double>, ptr %i.i, align 8, !tbaa !55, !noalias !90 ; 4 uses
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
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !55, !noalias !101
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
  %i.al = load double, ptr %i.ak, align 8, !tbaa !55, !noalias !104
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %.sroa.041.0.copyload = load double, ptr %i.e, align 16 ; 8 uses
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %.sroa.543.0.copyload = load double, ptr %.sroa.543.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %.sroa.7.0.copyload = load double, ptr %.sroa.7.0..sroa_idx, align 16 ; 6 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %.sroa.9.0.copyload = load double, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !67 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %.sroa.11.32.copyload = load <2 x double>, ptr %i.f, align 16
  %.sroa.13.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %.sroa.13.32.copyload = load double, ptr %.sroa.13.32..sroa_idx, align 16, !tbaa !67
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !47   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %.sroa.038.0.copyload = load <2 x double>, ptr %i.h, align 8 ; 3 uses
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %.sroa.640.0.copyload = load double, ptr %.sroa.640.0..sroa_idx, align 8, !tbaa !67 ; 3 uses
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
  %i.aq = load <2 x double>, ptr %i.am, align 8, !tbaa !55 ; 3 uses
  %2 = insertelement <2 x double> %i.aq, double 0.000000e+00, i64 1
  store <2 x double> %2, ptr %1, align 16, !tbaa !55
  %3 = insertelement <2 x double> %i.aq, double 0.000000e+00, i64 0
  store <2 x double> %3, ptr %i.an, align 16, !tbaa !55
  %i.ar = fneg <2 x double> %i.aj                 ; 2 uses
  %i.as = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = fdiv <2 x double> %i.ar, %i.at          ; 2 uses
  %i.av = fmul <2 x double> %i.aq, %i.au
  store <2 x double> %i.av, ptr %i.ao, align 16, !tbaa !55
  %i.aw = fdiv double -1.000000e+00, %i.ak        ; 3 uses
  %i.ax = fmul double %.sroa.041.0.copyload, 2.000000e+00 ; 2 uses
  %i.ay = fmul double %.sroa.543.0.copyload, 2.000000e+00 ; 3 uses
  %i.az = fmul double %.sroa.7.0.copyload, 2.000000e+00 ; 4 uses
  %i.ba = fmul double %i.ax, %.sroa.9.0.copyload  ; 2 uses
  %i.bb = fmul double %i.ay, %.sroa.9.0.copyload  ; 2 uses
  %i.bc = fmul double %i.az, %.sroa.9.0.copyload  ; 2 uses
  %i.bd = fmul double %.sroa.041.0.copyload, %i.ax ; 2 uses
  %i.be = fmul double %.sroa.041.0.copyload, %i.ay ; 2 uses
  %i.bf = fmul double %.sroa.041.0.copyload, %i.az ; 2 uses
  %i.bg = fmul double %.sroa.543.0.copyload, %i.ay ; 2 uses
  %i.bh = fmul double %.sroa.543.0.copyload, %i.az ; 2 uses
  %i.bi = fmul double %.sroa.7.0.copyload, %i.az  ; 2 uses
  %i.bj = fadd double %i.bg, %i.bi
  %i.bk = fsub double 1.000000e+00, %i.bj
  %i.bl = fsub double %i.be, %i.bc
  %i.bm = fadd double %i.bf, %i.bb
  %i.bn = fadd double %i.be, %i.bc
  %.sroa.0.sroa.4.8.vec.insert = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.bo = fadd double %i.bd, %i.bi
  %i.bp = fsub double 1.000000e+00, %i.bo
  %i.bq = fsub double %i.bh, %i.ba
  %i.br = fsub double %i.bf, %i.bb
  %i.bs = fadd double %i.bh, %i.ba
  %i.bt = fadd double %i.bd, %i.bg
  %i.bu = fsub double 1.000000e+00, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !105, !nonnull !147, !align !148
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i.i.i)
  store double %i.aw, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i, align 16, !tbaa !149, !alias.scope !151
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i, i64 8
  store ptr %1, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !154, !alias.scope !151
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.0..sroa.2.i.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i.i.i.i.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i, align 16 ; 2 uses
  %bc.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <2 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.0..sroa.2.i.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i.i.i.i.i.i.i.i.i.i to <2 x i64>
  %i.bx = extractelement <2 x i64> %bc.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %i.by = inttoptr i64 %i.bx to ptr               ; 3 uses
  %i.bz = shufflevector <2 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.0..sroa.2.i.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ca = load <2 x double>, ptr %i.by, align 1, !tbaa !67
  %i.cb = fmul <2 x double> %i.bz, %i.ca          ; 3 uses
  %i.cc = bitcast double %i.bk to <1 x double>
  %i.cd = shufflevector <1 x double> %i.cc, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ce = fmul <2 x double> %i.cb, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.cg = load <2 x double>, ptr %i.cf, align 1, !tbaa !67
  %i.ch = fmul <2 x double> %i.bz, %i.cg          ; 3 uses
  %i.ci = shufflevector <2 x double> %.sroa.0.sroa.4.8.vec.insert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cj = fmul <2 x double> %i.ch, %i.ci
  %i.ck = fadd <2 x double> %i.ce, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.cm = load <2 x double>, ptr %i.cl, align 1, !tbaa !67
  %i.cn = fmul <2 x double> %i.bz, %i.cm          ; 3 uses
  %i.co = insertelement <2 x double> poison, double %i.br, i64 0
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x double> %i.cp, %i.cn
  %i.cr = fadd <2 x double> %i.ck, %i.cq
  %i.cs = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.ct = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cu = fmul <2 x double> %i.ct, %i.cb
  %i.cv = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = fmul <2 x double> %i.cw, %i.ch
  %i.cy = fadd <2 x double> %i.cu, %i.cx
  %i.cz = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.db = fmul <2 x double> %i.da, %i.cn
  %i.dc = fadd <2 x double> %i.cy, %i.db
  %i.dd = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.de = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.df = fmul <2 x double> %i.de, %i.cb
  %i.dg = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.di = fmul <2 x double> %i.dh, %i.ch
  %i.dj = fadd <2 x double> %i.df, %i.di
  %i.dk = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dm = fmul <2 x double> %i.dl, %i.cn
  %i.dn = fadd <2 x double> %i.dj, %i.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i.i.i)
  %i.do = load ptr, ptr %i.bw, align 8, !tbaa !156 ; 3 uses
  store <2 x double> %i.cr, ptr %i.do, align 16, !tbaa !67
  %i.dp = getelementptr i8, ptr %i.do, i64 16
  store <2 x double> %i.dc, ptr %i.dp, align 16, !tbaa !67
  %i.dq = getelementptr i8, ptr %i.do, i64 32
  store <2 x double> %i.dn, ptr %i.dq, align 16, !tbaa !67
  %i.dr = fmul double %.sroa.037.0.vec.extract, %.sroa.037.8.vec.extract
  %i.ds = fdiv double %i.dr, %i.al
  %i.dt = load double, ptr %i.am, align 8, !tbaa !157
  %i.du = fmul double %i.ds, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.dw = load ptr, ptr %i.dv, align 16, !tbaa !159, !nonnull !147, !align !148
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !160 ; 12 uses
  store double %i.du, ptr %i.dx, align 8, !tbaa !55
  %4 = load double, ptr %i.am, align 8, !tbaa !157
  %5 = getelementptr i8, ptr %i.dx, i64 16
  %i.dy = fdiv double %.sroa.037.8.vec.extract, %i.ak
  %6 = getelementptr i8, ptr %i.dx, i64 32
  %7 = getelementptr i8, ptr %i.dx, i64 48
  %8 = getelementptr i8, ptr %i.dx, i64 64
  %9 = fdiv double %.sroa.037.0.vec.extract, %i.al
  %i.dz = getelementptr i8, ptr %i.dx, i64 80
  %10 = fmul <2 x double> %i.aj, %i.aj
  %11 = insertelement <2 x double> poison, double %i.al, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %13 = fdiv <2 x double> %10, %12
  %14 = fadd <2 x double> %13, splat (double 1.000000e+00) ; 2 uses
  %15 = extractelement <2 x double> %14, i64 0
  %16 = fneg double %15
  %i.ea = fmul double %4, %16
  store double %i.ea, ptr %5, align 8, !tbaa !55
  %17 = load double, ptr %i.am, align 8, !tbaa !157
  %18 = fmul double %i.dy, %17
  store double %18, ptr %6, align 8, !tbaa !55
  %i.eb = load double, ptr %i.am, align 8, !tbaa !157
  %i.ec = fmul double %i.aw, %i.eb
  store double %i.ec, ptr %7, align 8, !tbaa !55
  store double 0.000000e+00, ptr %8, align 8, !tbaa !55
  %19 = load double, ptr %i.am, align 8, !tbaa !157
  %i.ed = fmul double %9, %19
  store double %i.ed, ptr %i.dz, align 8, !tbaa !55
  %20 = load double, ptr %i.ap, align 16, !tbaa !161
  %21 = extractelement <2 x double> %14, i64 1
  %i.ee = fmul double %21, %20
  %i.ef = getelementptr i8, ptr %i.dx, i64 8
  store double %i.ee, ptr %i.ef, align 8, !tbaa !55
  %i.eg = extractelement <2 x double> %i.ar, i64 0
  %i.eh = fmul double %.sroa.037.8.vec.extract, %i.eg
  %i.ei = fdiv double %i.eh, %i.al
  %i.ej = load double, ptr %i.ap, align 16, !tbaa !161
  %i.ek = fmul double %i.ei, %i.ej
  %i.el = getelementptr i8, ptr %i.dx, i64 24
  store double %i.ek, ptr %i.el, align 8, !tbaa !55
  %i.em = load double, ptr %i.ap, align 16, !tbaa !161
  %i.en = extractelement <2 x double> %i.au, i64 0
  %i.eo = fmul double %i.en, %i.em
  %i.ep = getelementptr i8, ptr %i.dx, i64 40
  store double %i.eo, ptr %i.ep, align 8, !tbaa !55
  %i.eq = getelementptr i8, ptr %i.dx, i64 56
  store double 0.000000e+00, ptr %i.eq, align 8, !tbaa !55
  %i.er = load double, ptr %i.ap, align 16, !tbaa !161
  %i.es = fmul double %i.aw, %i.er
  %i.et = getelementptr i8, ptr %i.dx, i64 72
  store double %i.es, ptr %i.et, align 8, !tbaa !55
  %i.eu = fdiv double %.sroa.037.8.vec.extract, %i.al
  %i.ev = load double, ptr %i.ap, align 16, !tbaa !161
  %i.ew = fmul double %i.eu, %i.ev
  %i.ex = getelementptr i8, ptr %i.dx, i64 88
  store double %i.ew, ptr %i.ex, align 8, !tbaa !55
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.e = load i8, ptr %i.d, align 4, !tbaa !162, !range !178, !noundef !147
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZNK3g2o18BaseFixedSizedEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEJNS_14VertexPointXYZENS_15VertexSE3ExpmapEEE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 100
  %i.j = load i8, ptr %i.i, align 4, !tbaa !162, !range !178, !noundef !147
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
  %i.a = load <2 x double>, ptr %1, align 1, !tbaa !67
  store <2 x double> %i.a, ptr %2, align 16, !tbaa !67
  %i.b = load ptr, ptr %0, align 16, !tbaa !39
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
  %i.b = load <2 x double>, ptr %i.a, align 16, !tbaa !67
  store <2 x double> %i.b, ptr %1, align 1, !tbaa !67
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
  %i.c = load <2 x double>, ptr %i.b, align 16, !tbaa !67
  %i.d = load <2 x double>, ptr %i.a, align 16    ; 3 uses
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer
  %i.f = fmul <2 x double> %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.h = load <2 x double>, ptr %i.g, align 16, !tbaa !67
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
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !179
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 16, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef double %i.e(ptr noundef nonnull align 16 dereferenceable(240) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.g = load ptr, ptr %i.a, align 16, !tbaa !179 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.g, double noundef %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.m = load <2 x double>, ptr %i.k, align 16, !tbaa !67
  %i.n = fneg <2 x double> %i.m
  %i.o = load <2 x double>, ptr %i.l, align 16    ; 2 uses
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fmul <2 x double> %i.p, %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.s = load <2 x double>, ptr %i.r, align 16, !tbaa !67
  %i.t = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.u = fmul <2 x double> %i.s, %i.t
  %i.v = fsub <2 x double> %i.q, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load double, ptr %i.w, align 8, !tbaa !55, !noalias !180 ; 2 uses
  %i.y = insertelement <2 x double> poison, double %i.x, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x double> %i.v, %i.z
end_hunk_0

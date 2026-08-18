inline.NumInlined: 3920
inline.NumDeleted: 2364
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN3g2o17EdgeSE3ProjectXYZ4readERSi:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.r = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.q) ; 0 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !39
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre3 = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert4 = getelementptr inbounds i8, ptr %1, i64 %.pre3
  %.phi.trans.insert5 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert4, i64 32
  %.pre6 = load i32, ptr %.phi.trans.insert5, align 8, !tbaa !57 ; 2 uses
  %i.s = icmp eq i32 %.pre6, 0
  br i1 %i.s, label %bb.c, label %_ZN3g2o8BaseEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE21readInformationMatrixERSi.exit

.critedge2.i:                                     ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.u = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.t) ; 0 uses
  %i.v = load double, ptr %i.t, align 16, !tbaa !55
  %gep.132.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  store double %i.v, ptr %gep.132.i, align 8, !tbaa !55
  %.pre.pre.i = load ptr, ptr %1, align 8, !tbaa !39
  %.phi.trans.insert.phi.trans.insert.i = getelementptr i8, ptr %.pre.pre.i, i64 -24
  %.pre34.pre.i = load i64, ptr %.phi.trans.insert.phi.trans.insert.i, align 8
  %.phi.trans.insert35.phi.trans.insert.i = getelementptr inbounds i8, ptr %1, i64 %.pre34.pre.i
  %.phi.trans.insert36.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert35.phi.trans.insert.i, i64 32
  %.pre37.pre.i = load i32, ptr %.phi.trans.insert36.phi.trans.insert.i, align 8, !tbaa !57 ; 2 uses
  %i.w = icmp eq i32 %.pre37.pre.i, 0
  br i1 %i.w, label %.critedge2.1.i, label %_ZN3g2o8BaseEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE21readInformationMatrixERSi.exit

.critedge2.1.i:                                   ; preds = %.critedge2.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.y = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.x) ; 0 uses
  %.pre38.pre.pre.i = load ptr, ptr %1, align 8, !tbaa !39
  %.phi.trans.insert39.phi.trans.insert.phi.trans.insert.i = getelementptr i8, ptr %.pre38.pre.pre.i, i64 -24
  %.pre40.pre.pre.i = load i64, ptr %.phi.trans.insert39.phi.trans.insert.phi.trans.insert.i, align 8
  %.phi.trans.insert41.phi.trans.insert.phi.trans.insert.i = getelementptr inbounds i8, ptr %1, i64 %.pre40.pre.pre.i
  %.phi.trans.insert42.phi.trans.insert.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert41.phi.trans.insert.phi.trans.insert.i, i64 32
  %.pre43.pre.pre.i = load i32, ptr %.phi.trans.insert42.phi.trans.insert.phi.trans.insert.i, align 8, !tbaa !57
  br label %_ZN3g2o8BaseEdgeILi2EN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEE21readInformationMatrixERSi.exit

bb.c:                                             ; preds = %_ZN3g2o8internal10readVectorIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEbRSiRNS2_9DenseBaseIT_EE.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aa = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.z) ; 0 uses
  %i.ab = load ptr, ptr %1, align 8, !tbaa !39
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %1, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !57 ; 2 uses
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 5 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !47   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %1 = load double, ptr %i.h, align 8, !tbaa !55, !noalias !90 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.j = load double, ptr %i.i, align 8, !tbaa !55, !noalias !90 ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.k = load double, ptr %2, align 8, !tbaa !55, !noalias !90 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %4 = load double, ptr %3, align 8, !tbaa !55, !noalias !90 ; 2 uses
  %5 = fneg double %4
  %6 = fmul double %i.k, %5
  %7 = tail call double @llvm.fmuladd.f64(double %1, double %i.j, double %6)
  %8 = load double, ptr %i.g, align 8, !tbaa !55, !noalias !90 ; 2 uses
  %9 = load double, ptr %i.f, align 8, !tbaa !55, !noalias !90 ; 3 uses
  %10 = fneg double %i.j
  %11 = fmul double %9, %10
  %12 = tail call double @llvm.fmuladd.f64(double %i.k, double %8, double %11)
  %i.l = fneg double %8
  %13 = fmul double %1, %i.l
  %14 = tail call double @llvm.fmuladd.f64(double %9, double %4, double %13) ; 2 uses
  %.sroa.027.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %7, i64 0
  %.sroa.027.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.027.0.vec.insert.i.i.i.i, double %12, i64 1 ; 2 uses
  %i.m = fadd <2 x double> %.sroa.027.8.vec.insert.i.i.i.i, %.sroa.027.8.vec.insert.i.i.i.i ; 2 uses
  %i.n = fadd double %14, %14
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %i.p = load double, ptr %i.o, align 8, !tbaa !55, !noalias !101
  %.sroa.027.8.vec.extract.i.i.i.i = extractelement <2 x double> %i.m, i64 1
  %.sroa.027.0.vec.extract.i.i.i.i = extractelement <2 x double> %i.m, i64 0
  %i.q = fneg double %.sroa.027.0.vec.extract.i.i.i.i
  %i.r = fmul double %1, %i.q
  %i.s = tail call double @llvm.fmuladd.f64(double %9, double %.sroa.027.8.vec.extract.i.i.i.i, double %i.r)
  %i.t = fmul double %i.p, %i.n
  %i.u = fadd double %i.j, %i.t
  %i.v = fadd double %i.u, %i.s
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %i.x = load double, ptr %i.w, align 8, !tbaa !55, !noalias !104
  %i.y = fadd double %i.x, %i.v
  %i.z = fcmp ogt double %i.y, 0.000000e+00
  ret i1 %i.z
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3g2o17EdgeSE3ProjectXYZ14linearizeOplusEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(360) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.2.i.i.i.i.i.i.i.i.i.i = alloca <2 x double>, align 16 ; 5 uses
  %1 = alloca %"class.Eigen::Matrix.152", align 16 ; 7 uses
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
  %.sroa.037.8.vec.extract = extractelement <2 x double> %i.aj, i64 1 ; 6 uses
  %i.al = fmul double %i.ak, %i.ak                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x double> zeroinitializer, ptr %i.ao, align 8, !tbaa !55
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load <2 x double>, ptr %i.am, align 8, !tbaa !55 ; 3 uses
  %i.as = extractelement <2 x double> %i.ar, i64 0
  store double %i.as, ptr %1, align 16, !tbaa !55
  %i.at = extractelement <2 x double> %i.ar, i64 1
  store double %i.at, ptr %i.aq, align 8, !tbaa !55
  %i.au = fneg <2 x double> %i.aj                 ; 2 uses
  %i.av = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = fdiv <2 x double> %i.au, %i.aw          ; 2 uses
  %i.ay = fmul <2 x double> %i.ar, %i.ax
  store <2 x double> %i.ay, ptr %i.an, align 16, !tbaa !55
  %i.az = fdiv double -1.000000e+00, %i.ak        ; 3 uses
  %i.ba = fmul double %.sroa.041.0.copyload, 2.000000e+00 ; 2 uses
  %i.bb = fmul double %.sroa.543.0.copyload, 2.000000e+00 ; 3 uses
  %i.bc = fmul double %.sroa.7.0.copyload, 2.000000e+00 ; 4 uses
  %i.bd = fmul double %i.ba, %.sroa.9.0.copyload  ; 2 uses
  %i.be = fmul double %i.bb, %.sroa.9.0.copyload  ; 2 uses
  %i.bf = fmul double %i.bc, %.sroa.9.0.copyload  ; 2 uses
  %i.bg = fmul double %.sroa.041.0.copyload, %i.ba ; 2 uses
  %i.bh = fmul double %.sroa.041.0.copyload, %i.bb ; 2 uses
  %i.bi = fmul double %.sroa.041.0.copyload, %i.bc ; 2 uses
  %i.bj = fmul double %.sroa.543.0.copyload, %i.bb ; 2 uses
  %i.bk = fmul double %.sroa.543.0.copyload, %i.bc ; 2 uses
  %i.bl = fmul double %.sroa.7.0.copyload, %i.bc  ; 2 uses
  %i.bm = fadd double %i.bj, %i.bl
  %i.bn = fsub double 1.000000e+00, %i.bm
  %i.bo = fsub double %i.bh, %i.bf
  %i.bp = fadd double %i.bi, %i.be
  %i.bq = fadd double %i.bh, %i.bf
  %.sroa.0.sroa.4.8.vec.insert = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.br = fadd double %i.bg, %i.bl
  %i.bs = fsub double 1.000000e+00, %i.br
  %i.bt = fsub double %i.bk, %i.bd
  %i.bu = fsub double %i.bi, %i.be
  %i.bv = fadd double %i.bk, %i.bd
  %i.bw = fadd double %i.bg, %i.bj
  %i.bx = fsub double 1.000000e+00, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !105, !nonnull !147, !align !148
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i.i.i)
  store double %i.az, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i, align 16, !tbaa !149, !alias.scope !151
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i, i64 8
  store ptr %1, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !154, !alias.scope !151
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.0..sroa.2.i.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i.i.i.i.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i, align 16 ; 2 uses
  %bc.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <2 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.0..sroa.2.i.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i.i.i.i.i.i.i.i.i.i to <2 x i64>
  %i.ca = extractelement <2 x i64> %bc.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %i.cb = inttoptr i64 %i.ca to ptr               ; 3 uses
  %i.cc = shufflevector <2 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.i.0..sroa.2.i.i.0..sroa.2.i.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cd = load <2 x double>, ptr %i.cb, align 1, !tbaa !67
  %i.ce = fmul <2 x double> %i.cc, %i.cd          ; 3 uses
  %i.cf = bitcast double %i.bn to <1 x double>
  %i.cg = shufflevector <1 x double> %i.cf, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ch = fmul <2 x double> %i.ce, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cj = load <2 x double>, ptr %i.ci, align 1, !tbaa !67
  %i.ck = fmul <2 x double> %i.cc, %i.cj          ; 3 uses
  %i.cl = shufflevector <2 x double> %.sroa.0.sroa.4.8.vec.insert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cm = fmul <2 x double> %i.ck, %i.cl
  %i.cn = fadd <2 x double> %i.ch, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cp = load <2 x double>, ptr %i.co, align 1, !tbaa !67
  %i.cq = fmul <2 x double> %i.cc, %i.cp          ; 3 uses
  %i.cr = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ct = fmul <2 x double> %i.cs, %i.cq
  %i.cu = fadd <2 x double> %i.cn, %i.ct
  %i.cv = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = fmul <2 x double> %i.cw, %i.ce
  %i.cy = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.cz = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.da = fmul <2 x double> %i.cz, %i.ck
  %i.db = fadd <2 x double> %i.cx, %i.da
  %i.dc = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.de = fmul <2 x double> %i.dd, %i.cq
  %i.df = fadd <2 x double> %i.db, %i.de
  %i.dg = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.di = fmul <2 x double> %i.dh, %i.ce
  %i.dj = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.dk = shufflevector <2 x double> %i.dj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dl = fmul <2 x double> %i.dk, %i.ck
  %i.dm = fadd <2 x double> %i.di, %i.dl
  %i.dn = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.do = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dp = fmul <2 x double> %i.do, %i.cq
  %i.dq = fadd <2 x double> %i.dm, %i.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i.i.i)
  %i.dr = load ptr, ptr %i.bz, align 8, !tbaa !156 ; 3 uses
  store <2 x double> %i.cu, ptr %i.dr, align 16, !tbaa !67
  %i.ds = getelementptr i8, ptr %i.dr, i64 16
  store <2 x double> %i.df, ptr %i.ds, align 16, !tbaa !67
  %i.dt = getelementptr i8, ptr %i.dr, i64 32
  store <2 x double> %i.dq, ptr %i.dt, align 16, !tbaa !67
  %i.du = fmul double %.sroa.037.0.vec.extract, %.sroa.037.8.vec.extract
  %i.dv = fdiv double %i.du, %i.al
  %i.dw = load double, ptr %i.am, align 8, !tbaa !157
  %i.dx = fmul double %i.dv, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.dz = load ptr, ptr %i.dy, align 16, !tbaa !159, !nonnull !147, !align !148
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !160 ; 12 uses
  store double %i.dx, ptr %i.ea, align 8, !tbaa !55
  %foldExtExtBinop = fmul <2 x double> %i.aj, %i.aj
  %i.eb = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ec = fdiv double %i.eb, %i.al
  %i.ed = fadd double %i.ec, 1.000000e+00
  %i.ee = fneg double %i.ed
  %i.ef = load double, ptr %i.am, align 8, !tbaa !157
  %i.eg = fmul double %i.ef, %i.ee
  %i.eh = getelementptr i8, ptr %i.ea, i64 16
  store double %i.eg, ptr %i.eh, align 8, !tbaa !55
  %i.ei = fdiv double %.sroa.037.8.vec.extract, %i.ak
  %i.ej = load double, ptr %i.am, align 8, !tbaa !157
  %i.ek = fmul double %i.ei, %i.ej
  %i.el = getelementptr i8, ptr %i.ea, i64 32
  store double %i.ek, ptr %i.el, align 8, !tbaa !55
  %i.em = load double, ptr %i.am, align 8, !tbaa !157
end_hunk_0

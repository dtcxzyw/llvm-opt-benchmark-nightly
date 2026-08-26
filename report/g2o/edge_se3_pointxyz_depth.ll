Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se3_pointxyz_depth?download=true
inline.NumInlined: 5579
inline.NumDeleted: 3255
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN3g2o8BaseEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE21readInformationMatrixERSi:bb.a
  %i.k = icmp ne i32 %i.j, 0
  %i.l = or i1 %i.i, %i.k
  ret i1 %i.l

.critedge2:                                       ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.m) ; 0 uses
  %i.o = load double, ptr %i.m, align 8, !tbaa !118
  %gep.234 = getelementptr inbounds nuw i8, ptr %0, i64 216
  store double %i.o, ptr %gep.234, align 8, !tbaa !118
  %.pre.pre = load ptr, ptr %1, align 8, !tbaa !39
  %.phi.trans.insert.phi.trans.insert = getelementptr i8, ptr %.pre.pre, i64 -24
  %.pre37.pre = load i64, ptr %.phi.trans.insert.phi.trans.insert, align 8
  %.phi.trans.insert38.phi.trans.insert = getelementptr inbounds i8, ptr %1, i64 %.pre37.pre
  %.phi.trans.insert39.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.phi.trans.insert38.phi.trans.insert, i64 32
  %.pre40.pre = load i32, ptr %.phi.trans.insert39.phi.trans.insert, align 8, !tbaa !136 ; 2 uses
  %i.p = icmp eq i32 %.pre40.pre, 0
  br i1 %i.p, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.critedge2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.r = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.q) ; 0 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !39
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !136  ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %.critedge2.1, label %.critedge

.critedge2.1:                                     ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.aa = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.z) ; 0 uses
  %i.ab = load double, ptr %i.z, align 8, !tbaa !118
  %gep.1.1 = getelementptr inbounds nuw i8, ptr %0, i64 240
  store double %i.ab, ptr %gep.1.1, align 8, !tbaa !118
  %.pre43.pre = load ptr, ptr %1, align 8, !tbaa !39
  %.phi.trans.insert44.phi.trans.insert = getelementptr i8, ptr %.pre43.pre, i64 -24
  %.pre45.pre = load i64, ptr %.phi.trans.insert44.phi.trans.insert, align 8
  %.phi.trans.insert46.phi.trans.insert = getelementptr inbounds i8, ptr %1, i64 %.pre45.pre
  %.phi.trans.insert47.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.phi.trans.insert46.phi.trans.insert, i64 32
  %.pre48.pre = load i32, ptr %.phi.trans.insert47.phi.trans.insert, align 8, !tbaa !136 ; 2 uses
  %i.ac = icmp eq i32 %.pre48.pre, 0
  br i1 %i.ac, label %.critedge2.2, label %.critedge

.critedge2.2:                                     ; preds = %.critedge2.1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ae = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.ad) ; 0 uses
  %.pre49.pre.pre = load ptr, ptr %1, align 8, !tbaa !39
  %.phi.trans.insert50.phi.trans.insert.phi.trans.insert = getelementptr i8, ptr %.pre49.pre.pre, i64 -24
  %.pre51.pre.pre = load i64, ptr %.phi.trans.insert50.phi.trans.insert.phi.trans.insert, align 8
  %.phi.trans.insert52.phi.trans.insert.phi.trans.insert = getelementptr inbounds i8, ptr %1, i64 %.pre51.pre.pre
  %.phi.trans.insert53.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.phi.trans.insert52.phi.trans.insert.phi.trans.insert, i64 32
  %.pre54.pre.pre = load i32, ptr %.phi.trans.insert53.phi.trans.insert.phi.trans.insert, align 8, !tbaa !136
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ag = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.af) ; 0 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !39
  %i.ai = getelementptr i8, ptr %i.ah, i64 -24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds i8, ptr %1, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load i32, ptr %i.al, align 8, !tbaa !136 ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ap = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.ao) ; 0 uses
  %i.aq = load double, ptr %i.ao, align 8, !tbaa !118
  %gep.133 = getelementptr inbounds nuw i8, ptr %0, i64 208
  store double %i.aq, ptr %gep.133, align 8, !tbaa !118
  %i.ar = load ptr, ptr %1, align 8, !tbaa !39
  %i.as = getelementptr i8, ptr %i.ar, i64 -24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds i8, ptr %1, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !136 ; 2 uses
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %.critedge2, label %.critedge
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK3g2o20EdgeSE3PointXYZDepth5writeERSo(ptr noundef nonnull align 8 dereferenceable(616) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !145  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !145  ; 2 uses
  %.not8.i = icmp eq ptr %i.b, %i.d
  br i1 %.not8.i, label %_ZNK3g2o8BaseEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE13writeParamIdsERSo.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.05.09.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load i32, ptr %.sroa.05.09.i, align 4, !tbaa !106
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.e)
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.h, %i.d
  br i1 %.not.i, label %_ZNK3g2o8BaseEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE13writeParamIdsERSo.exit, label %.lr.ph.i

_ZNK3g2o8BaseEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE13writeParamIdsERSo.exit: ; preds = %.lr.ph.i, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.j = load double, ptr %i.i, align 8, !tbaa !118
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.j)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.n = load double, ptr %i.m, align 8, !tbaa !118
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.n)
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.r = load double, ptr %i.q, align 8, !tbaa !118
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.r)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.u = tail call noundef zeroext i1 @_ZNK3g2o8BaseEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE22writeInformationMatrixERSo(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret i1 %i.u
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o8BaseEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE22writeInformationMatrixERSo(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load double, ptr %i.a, align 8, !tbaa !118
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.b)
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = load double, ptr %i.e, align 8, !tbaa !118
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.f)
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.j = load double, ptr %i.i, align 8, !tbaa !118
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.j)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.n = load double, ptr %i.m, align 8, !tbaa !118
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.n)
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.r = load double, ptr %i.q, align 8, !tbaa !118
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.r)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.v = load double, ptr %i.u, align 8, !tbaa !118
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.v)
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !39
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %1, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !136
  %i.ae = icmp eq i32 %i.ad, 0
  ret i1 %i.ae
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3g2o20EdgeSE3PointXYZDepth12computeErrorEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(616) initializes((272, 296)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i = alloca [4 x double], align 16    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !55   ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 464
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.i = load <2 x double>, ptr %i.h, align 1, !tbaa !112, !noalias !146 ; 3 uses
  store <2 x double> %i.i, ptr %.sroa.0.i.i, align 16, !tbaa !112, !noalias !146
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.k = load double, ptr %i.j, align 8, !tbaa !118, !noalias !146
  %i.l = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.k, i64 0
  %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx36 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16
  store <2 x double> %i.l, ptr %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx36, align 16, !tbaa !118, !noalias !146
  %i.m = load <2 x double>, ptr %i.g, align 16, !tbaa !112, !noalias !146
  %i.n = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x double> %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 496
  %i.q = load <2 x double>, ptr %i.p, align 16, !tbaa !112, !noalias !146
  %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 8
  %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i = load <2 x double>, ptr %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !noalias !146 ; 2 uses
  %i.r = shufflevector <2 x double> %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x double> %i.q, %i.r
  %i.t = fadd <2 x double> %i.o, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 528
  %i.v = load <2 x double>, ptr %i.u, align 16, !tbaa !112, !noalias !146
  %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16
  %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i = load <2 x double>, ptr %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !noalias !146 ; 4 uses
  %i.w = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x double> %i.v, %i.w
  %i.y = fadd <2 x double> %i.t, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 560
  %i.aa = load <2 x double>, ptr %i.z, align 16, !tbaa !112, !noalias !146
  %i.ab = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ac = fmul <2 x double> %i.aa, %i.ab
  %i.ad = fadd <2 x double> %i.ac, %i.y
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 480
  %1 = load <2 x double>, ptr %i.ae, align 16, !tbaa !112, !noalias !146
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 512
  %2 = load <2 x double>, ptr %i.af, align 16, !tbaa !112, !noalias !146
  %3 = getelementptr inbounds nuw i8, ptr %i.f, i64 544
  %4 = load <2 x double>, ptr %3, align 16, !tbaa !112, !noalias !146
  %5 = getelementptr inbounds nuw i8, ptr %i.f, i64 576
  %6 = load <2 x double>, ptr %5, align 16, !tbaa !112, !noalias !146
  %shift = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %shift, %6
  %foldExtExtBinop24 = fmul <2 x double> %i.i, %1
  %foldExtExtBinop26 = fmul <2 x double> %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i, %2
  %foldExtExtBinop28 = fadd <2 x double> %foldExtExtBinop24, %foldExtExtBinop26
  %foldExtExtBinop30 = fmul <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, %4
  %foldExtExtBinop32 = fadd <2 x double> %foldExtExtBinop28, %foldExtExtBinop30
  %foldExtExtBinop34 = fadd <2 x double> %foldExtExtBinop, %foldExtExtBinop32 ; 2 uses
  %.sroa.4.16.vec.extract.i.i = extractelement <2 x double> %foldExtExtBinop34, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.ag = shufflevector <2 x double> %foldExtExtBinop34, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = fdiv <2 x double> %i.ad, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ak = load <2 x double>, ptr %i.ai, align 8, !tbaa !112
  %i.al = fsub <2 x double> %i.ah, %i.ak
  store <2 x double> %i.al, ptr %i.aj, align 8, !tbaa !112
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ao = load double, ptr %i.an, align 8, !tbaa !118
  %i.ap = fsub double %.sroa.4.16.vec.extract.i.i, %i.ao
  store double %i.ap, ptr %i.am, align 8, !tbaa !118
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o20EdgeSE3PointXYZDepth14linearizeOplusEv(ptr noundef nonnull align 8 dereferenceable(616) initializes((464, 488), (496, 520), (528, 600)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i4 = alloca [4 x double], align 16   ; 6 uses
  %1 = alloca %"class.Eigen::Product.656", align 8 ; 5 uses
  %2 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %.sroa.0.i.i = alloca [4 x double], align 16    ; 6 uses
  %3 = alloca %"class.Eigen::Matrix.80", align 16 ; 21 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 168 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 336 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.i = load <2 x double>, ptr %i.e, align 1, !tbaa !112, !noalias !151 ; 3 uses
  store <2 x double> %i.i, ptr %.sroa.0.i.i, align 16, !tbaa !112, !noalias !151
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 184 ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !118, !noalias !151
  %i.l = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.k, i64 0
  %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx168 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16
  store <2 x double> %i.l, ptr %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx168, align 16, !tbaa !118, !noalias !151
  %i.m = load <2 x double>, ptr %i.h, align 16, !tbaa !112, !noalias !151
  %i.n = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x double> %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 368 ; 2 uses
  %i.q = load <2 x double>, ptr %i.p, align 16, !tbaa !112, !noalias !151
  %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 8
  %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i = load <2 x double>, ptr %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !noalias !151 ; 2 uses
  %i.r = shufflevector <2 x double> %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x double> %i.q, %i.r
  %i.t = fadd <2 x double> %i.o, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 400 ; 2 uses
  %i.v = load <2 x double>, ptr %i.u, align 16, !tbaa !112, !noalias !151
  %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16
  %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i = load <2 x double>, ptr %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !noalias !151 ; 4 uses
  %i.w = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x double> %i.v, %i.w
  %i.y = fadd <2 x double> %i.t, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.aa = load <2 x double>, ptr %i.z, align 16, !tbaa !112, !noalias !151
  %i.ab = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ac = fmul <2 x double> %i.aa, %i.ab
  %i.ad = fadd <2 x double> %i.ac, %i.y           ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 352 ; 2 uses
  %4 = load <2 x double>, ptr %i.ae, align 16, !tbaa !112, !noalias !151
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 384 ; 2 uses
  %5 = load <2 x double>, ptr %i.af, align 16, !tbaa !112, !noalias !151
  %6 = getelementptr inbounds nuw i8, ptr %i.g, i64 416 ; 2 uses
  %7 = load <2 x double>, ptr %6, align 16, !tbaa !112, !noalias !151
  %8 = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %9 = load <2 x double>, ptr %8, align 16, !tbaa !112, !noalias !151
  %shift = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %shift, %9
  %foldExtExtBinop139 = fmul <2 x double> %i.i, %4
  %foldExtExtBinop141 = fmul <2 x double> %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i, %5
  %foldExtExtBinop143 = fadd <2 x double> %foldExtExtBinop139, %foldExtExtBinop141
  %foldExtExtBinop145 = fmul <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, %7
  %foldExtExtBinop147 = fadd <2 x double> %foldExtExtBinop143, %foldExtExtBinop145
  %foldExtExtBinop149 = fadd <2 x double> %foldExtExtBinop, %foldExtExtBinop147 ; 2 uses
  %.sroa.4.16.vec.extract.i.i = extractelement <2 x double> %foldExtExtBinop149, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.ag = fmul double %.sroa.4.16.vec.extract.i.i, -2.000000e+00
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 480
  store double %i.ag, ptr %i.ai, align 8, !tbaa !118
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 464
  %.sroa.0115.0.vec.extract = extractelement <2 x double> %i.ad, i64 0
  %i.ak = fmul double %.sroa.0115.0.vec.extract, -2.000000e+00
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 512
  store double %i.ak, ptr %i.al, align 8, !tbaa !118
  %10 = shufflevector <2 x double> %foldExtExtBinop149, <2 x double> %i.ad, <2 x i32> <i32 0, i32 3>
  %i.am = fmul <2 x double> %10, <double 2.000000e+00, double -2.000000e+00>
  store <2 x double> %i.am, ptr %i.aj, align 8, !tbaa !118
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ao = fmul <2 x double> %i.ad, splat (double 2.000000e+00)
  store <2 x double> %i.ao, ptr %i.an, align 8, !tbaa !118
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.aq = load <2 x double>, ptr %i.h, align 16, !tbaa !112
  store <2 x double> %i.aq, ptr %i.ap, align 8, !tbaa !112
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.as = load double, ptr %i.ae, align 16, !tbaa !118
  store double %i.as, ptr %i.ar, align 8, !tbaa !118
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.au = load <2 x double>, ptr %i.p, align 16, !tbaa !112
  store <2 x double> %i.au, ptr %i.at, align 8, !tbaa !112
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.aw = load double, ptr %i.af, align 16, !tbaa !118
  store double %i.aw, ptr %i.av, align 8, !tbaa !118
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ay = load <2 x double>, ptr %i.u, align 16, !tbaa !112
  store <2 x double> %i.ay, ptr %i.ax, align 8, !tbaa !112
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.ba = load double, ptr %6, align 16, !tbaa !118
  store double %i.ba, ptr %i.az, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !131
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 416
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store ptr %i.bd, ptr %1, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.ah, ptr %i.be, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLi3ELi9ELi0ELi3ELi9EEENS_7ProductINS2_IdLi3ELi3ELi0ELi3ELi3EEES3_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.bf = load ptr, ptr %i.f, align 8, !tbaa !55  ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 464
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i4)
  %i.bh = load <2 x double>, ptr %i.e, align 8, !tbaa !112, !noalias !156 ; 3 uses
  store <2 x double> %i.bh, ptr %.sroa.0.i.i4, align 16, !tbaa !112, !noalias !156
  %i.bi = load double, ptr %i.j, align 8, !tbaa !118, !noalias !156
  %i.bj = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.bi, i64 0
  %.sroa.0.i.i4.16.i.i4.16.i.i4.16.i.16.i.16..sroa_idx169 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i4, i64 16
  store <2 x double> %i.bj, ptr %.sroa.0.i.i4.16.i.i4.16.i.i4.16.i.16.i.16..sroa_idx169, align 16, !tbaa !118, !noalias !156
  %i.bk = load <2 x double>, ptr %i.bg, align 16, !tbaa !112, !noalias !156
  %i.bl = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x double> %i.bl, %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 496
  %i.bo = load <2 x double>, ptr %i.bn, align 16, !tbaa !112, !noalias !156
  %.sroa.0.i.i4.8.i.i4.8.i.i4.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i4, i64 8
  %.sroa.0.i.i4.8..sroa.0.i.i4.8..sroa.0.i.i4.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i8 = load <2 x double>, ptr %.sroa.0.i.i4.8.i.i4.8.i.i4.8.i.8.i.8..sroa_idx, align 8, !noalias !156 ; 2 uses
  %i.bp = shufflevector <2 x double> %.sroa.0.i.i4.8..sroa.0.i.i4.8..sroa.0.i.i4.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i8, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x double> %i.bo, %i.bp
  %i.br = fadd <2 x double> %i.bm, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bf, i64 528
  %i.bt = load <2 x double>, ptr %i.bs, align 16, !tbaa !112, !noalias !156
  %.sroa.0.i.i4.16.i.i4.16.i.i4.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i4, i64 16
  %.sroa.0.i.i4.16..sroa.0.i.i4.16..sroa.0.i.i4.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i9 = load <2 x double>, ptr %.sroa.0.i.i4.16.i.i4.16.i.i4.16.i.16.i.16..sroa_idx, align 16, !noalias !156 ; 4 uses
  %i.bu = shufflevector <2 x double> %.sroa.0.i.i4.16..sroa.0.i.i4.16..sroa.0.i.i4.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i9, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = fmul <2 x double> %i.bt, %i.bu
  %i.bw = fadd <2 x double> %i.br, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bf, i64 560
  %i.by = load <2 x double>, ptr %i.bx, align 16, !tbaa !112, !noalias !156
  %i.bz = shufflevector <2 x double> %.sroa.0.i.i4.16..sroa.0.i.i4.16..sroa.0.i.i4.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i9, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ca = fmul <2 x double> %i.by, %i.bz
  %i.cb = fadd <2 x double> %i.ca, %i.bw          ; 9 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bf, i64 480
  %11 = load <2 x double>, ptr %i.cc, align 16, !tbaa !112, !noalias !156
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bf, i64 512
  %12 = load <2 x double>, ptr %i.cd, align 16, !tbaa !112, !noalias !156
  %13 = getelementptr inbounds nuw i8, ptr %i.bf, i64 544
  %14 = load <2 x double>, ptr %13, align 16, !tbaa !112, !noalias !156
  %15 = getelementptr inbounds nuw i8, ptr %i.bf, i64 576
  %16 = load <2 x double>, ptr %15, align 16, !tbaa !112, !noalias !156
  %shift151 = shufflevector <2 x double> %.sroa.0.i.i4.16..sroa.0.i.i4.16..sroa.0.i.i4.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i9, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop152 = fmul <2 x double> %shift151, %16
  %foldExtExtBinop154 = fmul <2 x double> %i.bh, %11
  %foldExtExtBinop156 = fmul <2 x double> %.sroa.0.i.i4.8..sroa.0.i.i4.8..sroa.0.i.i4.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i8, %12
  %foldExtExtBinop158 = fadd <2 x double> %foldExtExtBinop154, %foldExtExtBinop156
  %foldExtExtBinop160 = fmul <2 x double> %.sroa.0.i.i4.16..sroa.0.i.i4.16..sroa.0.i.i4.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i9, %14
  %foldExtExtBinop162 = fadd <2 x double> %foldExtExtBinop158, %foldExtExtBinop160
  %foldExtExtBinop164 = fadd <2 x double> %foldExtExtBinop152, %foldExtExtBinop162 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i4)
  %foldExtExtBinop166 = fmul <2 x double> %foldExtExtBinop164, %foldExtExtBinop164
  %17 = extractelement <2 x double> %foldExtExtBinop166, i64 0
  %i.ce = fdiv double 1.000000e+00, %17
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.281.16.vec.insert.a = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.cg = shufflevector <2 x double> %.sroa.281.16.vec.insert.a, <2 x double> poison, <2 x i32> zeroinitializer ; 9 uses
  %i.ch = load <2 x double>, ptr %3, align 16, !tbaa !112
  %i.ci = shufflevector <2 x double> %foldExtExtBinop164, <2 x double> poison, <2 x i32> zeroinitializer ; 9 uses
  %i.cj = fmul <2 x double> %i.ch, %i.ci
  %i.ck = load double, ptr %i.cf, align 16, !tbaa !118 ; 2 uses
  %i.cl = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cn = fmul <2 x double> %i.cb, %i.cm
  %i.co = fsub <2 x double> %i.cj, %i.cn
  %i.cp = fmul <2 x double> %i.cg, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cr = load <2 x double>, ptr %i.cq, align 8, !tbaa !112
  %i.cs = fmul <2 x double> %i.cr, %i.ci
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !118 ; 2 uses
  %i.cv = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = fmul <2 x double> %i.cb, %i.cw
  %i.cy = fsub <2 x double> %i.cs, %i.cx
  %i.cz = fmul <2 x double> %i.cg, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.db = load <2 x double>, ptr %i.da, align 16, !tbaa !112
  %i.dc = fmul <2 x double> %i.ci, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.de = load double, ptr %i.dd, align 16, !tbaa !118 ; 2 uses
  %i.df = insertelement <2 x double> poison, double %i.de, i64 0
  %i.dg = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dh = fmul <2 x double> %i.cb, %i.dg
  %i.di = fsub <2 x double> %i.dc, %i.dh
  %i.dj = fmul <2 x double> %i.cg, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.dl = load <2 x double>, ptr %i.dk, align 8, !tbaa !112
  %i.dm = fmul <2 x double> %i.ci, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.do = load double, ptr %i.dn, align 8, !tbaa !118 ; 2 uses
  %i.dp = insertelement <2 x double> poison, double %i.do, i64 0
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dr = fmul <2 x double> %i.cb, %i.dq
  %i.ds = fsub <2 x double> %i.dm, %i.dr
  %i.dt = fmul <2 x double> %i.cg, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.dv = load <2 x double>, ptr %i.du, align 16, !tbaa !112
  %i.dw = fmul <2 x double> %i.ci, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.dy = load double, ptr %i.dx, align 16, !tbaa !118 ; 2 uses
  %i.dz = insertelement <2 x double> poison, double %i.dy, i64 0
  %i.ea = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eb = fmul <2 x double> %i.cb, %i.ea
  %i.ec = fsub <2 x double> %i.dw, %i.eb
  %i.ed = fmul <2 x double> %i.cg, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.ef = load <2 x double>, ptr %i.ee, align 8, !tbaa !112
  %i.eg = fmul <2 x double> %i.ci, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !118 ; 2 uses
  %i.ej = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> zeroinitializer
  %i.el = fmul <2 x double> %i.cb, %i.ek
  %i.em = fsub <2 x double> %i.eg, %i.el
  %i.en = fmul <2 x double> %i.cg, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.ep = load <2 x double>, ptr %i.eo, align 16, !tbaa !112
  %i.eq = fmul <2 x double> %i.ci, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.es = load double, ptr %i.er, align 16, !tbaa !118 ; 2 uses
  %i.et = insertelement <2 x double> poison, double %i.es, i64 0
  %i.eu = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ev = fmul <2 x double> %i.cb, %i.eu
  %i.ew = fsub <2 x double> %i.eq, %i.ev
  %i.ex = fmul <2 x double> %i.cg, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.ez = load <2 x double>, ptr %i.ey, align 8, !tbaa !112
  %i.fa = fmul <2 x double> %i.ci, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !118 ; 2 uses
  %i.fd = insertelement <2 x double> poison, double %i.fc, i64 0
  %i.fe = shufflevector <2 x double> %i.fd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ff = fmul <2 x double> %i.cb, %i.fe
  %i.fg = fsub <2 x double> %i.fa, %i.ff
  %i.fh = fmul <2 x double> %i.cg, %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.fj = load <2 x double>, ptr %i.fi, align 16, !tbaa !112
  %i.fk = fmul <2 x double> %i.ci, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.fm = load double, ptr %i.fl, align 16, !tbaa !118 ; 2 uses
  %i.fn = insertelement <2 x double> poison, double %i.fm, i64 0
  %i.fo = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fp = fmul <2 x double> %i.cb, %i.fo
  %i.fq = fsub <2 x double> %i.fk, %i.fp
  %i.fr = fmul <2 x double> %i.cg, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !161, !nonnull !162, !align !163
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !164 ; 12 uses
  store <2 x double> %i.cp, ptr %i.fu, align 1, !tbaa !112
  %i.fv = getelementptr i8, ptr %i.fu, i64 16
  store double %i.ck, ptr %i.fv, align 8, !tbaa !118
  %i.fw = getelementptr i8, ptr %i.fu, i64 24
  store <2 x double> %i.cz, ptr %i.fw, align 8, !tbaa !112
  %i.fx = getelementptr i8, ptr %i.fu, i64 40
  store double %i.cu, ptr %i.fx, align 8, !tbaa !118
  %i.fy = getelementptr i8, ptr %i.fu, i64 48
  store <2 x double> %i.dj, ptr %i.fy, align 8, !tbaa !112
  %i.fz = getelementptr i8, ptr %i.fu, i64 64
  store double %i.de, ptr %i.fz, align 8, !tbaa !118
  %i.ga = getelementptr i8, ptr %i.fu, i64 72
  store <2 x double> %i.dt, ptr %i.ga, align 8, !tbaa !112
  %i.gb = getelementptr i8, ptr %i.fu, i64 88
  store double %i.do, ptr %i.gb, align 8, !tbaa !118
  %i.gc = getelementptr i8, ptr %i.fu, i64 96
  store <2 x double> %i.ed, ptr %i.gc, align 8, !tbaa !112
  %i.gd = getelementptr i8, ptr %i.fu, i64 112
  store double %i.dy, ptr %i.gd, align 8, !tbaa !118
  %i.ge = getelementptr i8, ptr %i.fu, i64 120
  store <2 x double> %i.en, ptr %i.ge, align 8, !tbaa !112
  %i.gf = getelementptr i8, ptr %i.fu, i64 136
  store double %i.ei, ptr %i.gf, align 8, !tbaa !118
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !165, !nonnull !162, !align !163
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !166 ; 6 uses
  store <2 x double> %i.ex, ptr %i.gi, align 1, !tbaa !112
  %i.gj = getelementptr i8, ptr %i.gi, i64 16
  store double %i.es, ptr %i.gj, align 8, !tbaa !118
  %i.gk = getelementptr i8, ptr %i.gi, i64 24
  store <2 x double> %i.fh, ptr %i.gk, align 8, !tbaa !112
  %i.gl = getelementptr i8, ptr %i.gi, i64 40
  store double %i.fc, ptr %i.gl, align 8, !tbaa !118
  %i.gm = getelementptr i8, ptr %i.gi, i64 48
  store <2 x double> %i.fr, ptr %i.gm, align 8, !tbaa !112
  %i.gn = getelementptr i8, ptr %i.gi, i64 64
  store double %i.fm, ptr %i.gn, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN3g2o20EdgeSE3PointXYZDepth23setMeasurementFromStateEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(616) initializes((176, 200)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i = alloca [4 x double], align 16    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.i = load <2 x double>, ptr %i.e, align 1, !tbaa !112, !noalias !167 ; 3 uses
  store <2 x double> %i.i, ptr %.sroa.0.i.i, align 16, !tbaa !112, !noalias !167
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.k = load double, ptr %i.j, align 8, !tbaa !118, !noalias !167
  %i.l = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.k, i64 0
  %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx34 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16
  store <2 x double> %i.l, ptr %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx34, align 16, !tbaa !118, !noalias !167
  %i.m = load <2 x double>, ptr %i.h, align 16, !tbaa !112, !noalias !167
  %i.n = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x double> %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 496
  %i.q = load <2 x double>, ptr %i.p, align 16, !tbaa !112, !noalias !167
  %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 8
  %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i = load <2 x double>, ptr %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !noalias !167 ; 2 uses
  %i.r = shufflevector <2 x double> %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x double> %i.q, %i.r
  %i.t = fadd <2 x double> %i.o, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 528
  %i.v = load <2 x double>, ptr %i.u, align 16, !tbaa !112, !noalias !167
  %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16
  %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i = load <2 x double>, ptr %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !noalias !167 ; 4 uses
  %i.w = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x double> %i.v, %i.w
  %i.y = fadd <2 x double> %i.t, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 560
  %i.aa = load <2 x double>, ptr %i.z, align 16, !tbaa !112, !noalias !167
  %i.ab = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ac = fmul <2 x double> %i.aa, %i.ab
  %i.ad = fadd <2 x double> %i.ac, %i.y
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %1 = load <2 x double>, ptr %i.ae, align 16, !tbaa !112, !noalias !167
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 512
  %2 = load <2 x double>, ptr %i.af, align 16, !tbaa !112, !noalias !167
  %3 = getelementptr inbounds nuw i8, ptr %i.g, i64 544
  %4 = load <2 x double>, ptr %3, align 16, !tbaa !112, !noalias !167
  %5 = getelementptr inbounds nuw i8, ptr %i.g, i64 576
  %6 = load <2 x double>, ptr %5, align 16, !tbaa !112, !noalias !167
  %shift = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %shift, %6
  %foldExtExtBinop22 = fmul <2 x double> %i.i, %1
  %foldExtExtBinop24 = fmul <2 x double> %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i, %2
  %foldExtExtBinop26 = fadd <2 x double> %foldExtExtBinop22, %foldExtExtBinop24
  %foldExtExtBinop28 = fmul <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, %4
  %foldExtExtBinop30 = fadd <2 x double> %foldExtExtBinop26, %foldExtExtBinop28
  %foldExtExtBinop32 = fadd <2 x double> %foldExtExtBinop, %foldExtExtBinop30 ; 2 uses
  %.sroa.4.16.vec.extract.i.i = extractelement <2 x double> %foldExtExtBinop32, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.ag = shufflevector <2 x double> %foldExtExtBinop32, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = fdiv <2 x double> %i.ad, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <2 x double> %i.ah, ptr %i.ai, align 8, !tbaa !112
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 192
  store double %.sroa.4.16.vec.extract.i.i, ptr %i.aj, align 8, !tbaa !118
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o20EdgeSE3PointXYZDepth15initialEstimateERKSt3setIPNS_10HyperGraph6VertexESt4lessIS4_ESaIS4_EEPNS_16OptimizableGraph6VertexE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i5 = alloca [4 x double], align 16   ; 7 uses
  %.sroa.0.i.i = alloca [4 x double], align 16    ; 7 uses
  %.sroa.0 = alloca [3 x double], align 16        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47, !nonnull !162, !noundef !162
  %i.d = tail call ptr @__dynamic_cast(ptr nonnull %i.c, ptr nonnull @_ZTIN3g2o10HyperGraph6VertexE, ptr nonnull @_ZTIN3g2o9VertexSE3E, i64 0) #23 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47, !nonnull !162, !noundef !162
  %i.g = tail call ptr @__dynamic_cast(ptr nonnull %i.f, ptr nonnull @_ZTIN3g2o10HyperGraph6VertexE, ptr nonnull @_ZTIN3g2o14VertexPointXYZE, i64 0) #23 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !131  ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 344
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.m = load double, ptr %i.l, align 8, !tbaa !118 ; 2 uses
  %.sroa.0.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  store double %i.m, ptr %.sroa.0.16..sroa_idx, align 16, !tbaa !118
  %.sroa.510.24.vec.insert.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.m, i64 0
  %i.n = load <2 x double>, ptr %i.k, align 8, !tbaa !112
  %i.o = shufflevector <2 x double> %.sroa.510.24.vec.insert.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = fmul <2 x double> %i.n, %i.o             ; 3 uses
  store <2 x double> %i.p, ptr %.sroa.0, align 16, !tbaa !112
  %i.q = load <2 x double>, ptr %i.j, align 1, !tbaa !112
  %i.r = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x double> %i.q, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 368
  %i.u = load <2 x double>, ptr %i.t, align 1, !tbaa !112
  %.sroa.0.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.0.8..sroa.0.8..sroa.0.8. = load <2 x double>, ptr %.sroa.0.8..sroa_idx, align 8 ; 4 uses
  %i.v = shufflevector <2 x double> %.sroa.0.8..sroa.0.8..sroa.0.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x double> %i.u, %i.v
  %i.x = fadd <2 x double> %i.s, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 392
  %i.z = load <2 x double>, ptr %i.y, align 1, !tbaa !112
  %i.aa = shufflevector <2 x double> %.sroa.0.8..sroa.0.8..sroa.0.8., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ab = fmul <2 x double> %i.z, %i.aa
  %i.ac = fadd <2 x double> %i.ab, %i.x           ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 360
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !118
  %i.af = extractelement <2 x double> %i.p, i64 0
  %i.ag = fmul double %i.af, %i.ae
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 384
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !118
  %i.aj = extractelement <2 x double> %.sroa.0.8..sroa.0.8..sroa.0.8., i64 0
  %i.ak = fmul double %i.aj, %i.ai
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 408
  %i.am = load double, ptr %i.al, align 8, !tbaa !118
  %i.an = extractelement <2 x double> %.sroa.0.8..sroa.0.8..sroa.0.8., i64 1
  %i.ao = fmul double %i.an, %i.am
  %i.ap = fadd double %i.ak, %i.ao
  %i.aq = fadd double %i.ag, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  store <2 x double> %i.ac, ptr %.sroa.0.i.i, align 16, !tbaa !112, !noalias !172
  %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx67 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16
  store double %i.aq, ptr %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx67, align 16, !tbaa !118, !noalias !172
  %.sroa.0.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 24
  store double 1.000000e+00, ptr %.sroa.0.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx, align 8, !tbaa !118, !noalias !172
  %i.at = load <2 x double>, ptr %i.as, align 16, !tbaa !112, !noalias !172
  %i.au = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.av = fmul <2 x double> %i.au, %i.at
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.ax = load <2 x double>, ptr %i.aw, align 16, !tbaa !112, !noalias !172
  %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 8
  %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i = load <2 x double>, ptr %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !noalias !172 ; 2 uses
  %i.ay = shufflevector <2 x double> %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = fmul <2 x double> %i.ax, %i.ay
  %i.ba = fadd <2 x double> %i.av, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.bc = load <2 x double>, ptr %i.bb, align 16, !tbaa !112, !noalias !172
  %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16
  %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i = load <2 x double>, ptr %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !noalias !172 ; 4 uses
  %i.bd = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = fmul <2 x double> %i.bc, %i.bd
  %i.bf = fadd <2 x double> %i.ba, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.bh = load <2 x double>, ptr %i.bg, align 16, !tbaa !112, !noalias !172
  %i.bi = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bj = fmul <2 x double> %i.bh, %i.bi
  %i.bk = fadd <2 x double> %i.bj, %i.bf          ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %3 = load <2 x double>, ptr %i.bl, align 16, !tbaa !112, !noalias !172
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %4 = load <2 x double>, ptr %i.bm, align 16, !tbaa !112, !noalias !172
  %i.bn = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %5 = load <2 x double>, ptr %i.bn, align 16, !tbaa !112, !noalias !172
  %i.bo = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %6 = load <2 x double>, ptr %i.bo, align 16, !tbaa !112, !noalias !172
  %7 = extractelement <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, i64 1
  %i.bp = extractelement <2 x double> %6, i64 0
  %i.bq = fmul double %7, %i.bp
  %8 = extractelement <2 x double> %i.ac, i64 0
  %i.br = extractelement <2 x double> %3, i64 0
  %i.bs = fmul double %8, %i.br
  %9 = extractelement <2 x double> %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i, i64 0
  %i.bt = extractelement <2 x double> %4, i64 0
  %i.bu = fmul double %9, %i.bt
  %i.bv = fadd double %i.bs, %i.bu
  %10 = extractelement <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, i64 0
  %i.bw = extractelement <2 x double> %5, i64 0
  %i.bx = fmul double %10, %i.bw
  %i.by = fadd double %i.bv, %i.bx
  %.sroa.4.16.vec.extract.i.i = fadd double %i.bq, %i.by
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i5)
  store <2 x double> %i.bk, ptr %.sroa.0.i.i5, align 16, !tbaa !112, !noalias !177
  %.sroa.0.i.i5.16.i.i5.16.i.i5.16.i.16.i.16..sroa_idx68 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i5, i64 16
  store double %.sroa.4.16.vec.extract.i.i, ptr %.sroa.0.i.i5.16.i.i5.16.i.i5.16.i.16.i.16..sroa_idx68, align 16, !tbaa !118, !noalias !177
  %.sroa.0.i.i5.24.i.i5.24.i.i5.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i5, i64 24
  store double 1.000000e+00, ptr %.sroa.0.i.i5.24.i.i5.24.i.i5.24.i.24.i.24..sroa_idx, align 8, !tbaa !118, !noalias !177
  %i.bz = load <2 x double>, ptr %i.ar, align 16, !tbaa !112, !noalias !177
  %i.ca = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cb = fmul <2 x double> %i.ca, %i.bz
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.cd = load <2 x double>, ptr %i.cc, align 16, !tbaa !112, !noalias !177
  %.sroa.0.i.i5.8.i.i5.8.i.i5.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i5, i64 8
  %.sroa.0.i.i5.8..sroa.0.i.i5.8..sroa.0.i.i5.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i9 = load <2 x double>, ptr %.sroa.0.i.i5.8.i.i5.8.i.i5.8.i.8.i.8..sroa_idx, align 8, !noalias !177 ; 2 uses
  %i.ce = shufflevector <2 x double> %.sroa.0.i.i5.8..sroa.0.i.i5.8..sroa.0.i.i5.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i9, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = fmul <2 x double> %i.cd, %i.ce
  %i.cg = fadd <2 x double> %i.cb, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.ci = load <2 x double>, ptr %i.ch, align 16, !tbaa !112, !noalias !177
  %.sroa.0.i.i5.16.i.i5.16.i.i5.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i5, i64 16
  %.sroa.0.i.i5.16..sroa.0.i.i5.16..sroa.0.i.i5.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i10 = load <2 x double>, ptr %.sroa.0.i.i5.16.i.i5.16.i.i5.16.i.16.i.16..sroa_idx, align 16, !noalias !177 ; 4 uses
  %i.cj = shufflevector <2 x double> %.sroa.0.i.i5.16..sroa.0.i.i5.16..sroa.0.i.i5.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i10, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = fmul <2 x double> %i.ci, %i.cj
  %i.cl = fadd <2 x double> %i.cg, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.cn = load <2 x double>, ptr %i.cm, align 16, !tbaa !112, !noalias !177
  %i.co = shufflevector <2 x double> %.sroa.0.i.i5.16..sroa.0.i.i5.16..sroa.0.i.i5.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i10, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cp = fmul <2 x double> %i.cn, %i.co
  %i.cq = fadd <2 x double> %i.cp, %i.cl
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %11 = load <2 x double>, ptr %i.cr, align 16, !tbaa !112, !noalias !177
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %12 = load <2 x double>, ptr %i.cs, align 16, !tbaa !112, !noalias !177
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  %13 = load <2 x double>, ptr %i.ct, align 16, !tbaa !112, !noalias !177
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 304
  %14 = load <2 x double>, ptr %i.cu, align 16, !tbaa !112, !noalias !177
  %15 = extractelement <2 x double> %.sroa.0.i.i5.16..sroa.0.i.i5.16..sroa.0.i.i5.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i10, i64 1
  %i.cv = extractelement <2 x double> %14, i64 0
  %i.cw = fmul double %15, %i.cv
  %16 = extractelement <2 x double> %i.bk, i64 0
  %i.cx = extractelement <2 x double> %11, i64 0
  %i.cy = fmul double %16, %i.cx
  %17 = extractelement <2 x double> %.sroa.0.i.i5.8..sroa.0.i.i5.8..sroa.0.i.i5.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i9, i64 0
  %i.cz = extractelement <2 x double> %12, i64 0
  %i.da = fmul double %17, %i.cz
  %i.db = fadd double %i.cy, %i.da
  %18 = extractelement <2 x double> %.sroa.0.i.i5.16..sroa.0.i.i5.16..sroa.0.i.i5.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i10, i64 0
  %i.dc = extractelement <2 x double> %13, i64 0
  %i.dd = fmul double %18, %i.dc
  %i.de = fadd double %i.db, %i.dd
  %.sroa.4.16.vec.extract.i.i11 = fadd double %i.cw, %i.de
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i5)
  %i.df = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  store <2 x double> %i.cq, ptr %i.df, align 1, !tbaa !112
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  store double %.sroa.4.16.vec.extract.i.i11, ptr %i.dg, align 8, !tbaa !118
  %i.dh = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 216
  %i.dj = load ptr, ptr %i.di, align 8
  tail call void %i.dj(ptr noundef nonnull align 8 dereferenceable(216) %i.g), !inline_history !182
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o20EdgeSE3PointXYZDepthD0Ev(ptr noundef nonnull align 8 dereferenceable(616) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o16OptimizableGraph4EdgeD2Ev(ptr noundef nonnull align 8 dead_on_return(616) dereferenceable(616) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 616) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10HyperGraph4Edge11elementTypeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEJNS_9VertexSE3ENS_14VertexPointXYZEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(368) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o10HyperGraph4Edge6resizeEm(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o18BaseFixedSizedEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEJNS_9VertexSE3ENS_14VertexPointXYZEEE16allVerticesFixedEv(ptr noundef nonnull align 8 dereferenceable(368) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.e = load i8, ptr %i.d, align 4, !tbaa !183, !range !199, !noundef !162
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZNK3g2o18BaseFixedSizedEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEJNS_9VertexSE3ENS_14VertexPointXYZEEE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 100
  %i.j = load i8, ptr %i.i, align 4, !tbaa !183, !range !199, !noundef !162
  %i.k = trunc nuw i8 %i.j to i1
  br label %_ZNK3g2o18BaseFixedSizedEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEJNS_9VertexSE3ENS_14VertexPointXYZEEE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit

_ZNK3g2o18BaseFixedSizedEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEJNS_9VertexSE3ENS_14VertexPointXYZEEE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit: ; preds = %bb.a, %bb.b
  %i.l = phi i1 [ false, %bb.a ], [ %i.k, %bb.b ]
  ret i1 %i.l
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o20EdgeSE3PointXYZDepth18setMeasurementDataEPKd(ptr noundef nonnull align 8 dereferenceable(616) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load <2 x double>, ptr %1, align 1, !tbaa !112
  store <2 x double> %i.b, ptr %i.a, align 8, !tbaa !112
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = getelementptr i8, ptr %1, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !118
  store double %i.e, ptr %i.c, align 8, !tbaa !118
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o20EdgeSE3PointXYZDepth18getMeasurementDataEPd(ptr noundef nonnull align 8 dereferenceable(616) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load <2 x double>, ptr %i.a, align 8, !tbaa !112
  store <2 x double> %i.b, ptr %1, align 1, !tbaa !112
  %i.c = getelementptr i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load double, ptr %i.d, align 8, !tbaa !118
  store double %i.e, ptr %i.c, align 8, !tbaa !118
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o20EdgeSE3PointXYZDepth20measurementDimensionEv(ptr noundef nonnull align 8 dereferenceable(616) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK3g2o8BaseEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE9errorDataEv(ptr noundef nonnull align 8 dereferenceable(296) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o8BaseEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE9errorDataEv(ptr noundef nonnull align 8 dereferenceable(296) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK3g2o8BaseEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE15informationDataEv(ptr noundef nonnull align 8 dereferenceable(296) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o8BaseEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE15informationDataEv(ptr noundef nonnull align 8 dereferenceable(296) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK3g2o8BaseEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE4chi2Ev(ptr noundef nonnull align 8 dereferenceable(296) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load <2 x double>, ptr %i.b, align 8, !tbaa !112
  %i.d = load <2 x double>, ptr %i.a, align 8     ; 3 uses
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer
  %i.f = fmul <2 x double> %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = load <2 x double>, ptr %i.g, align 8, !tbaa !112
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.j = load <2 x double>, ptr %i.i, align 8     ; 5 uses
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x double> %i.h, %i.k
  %i.m = fadd <2 x double> %i.f, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.o = load <2 x double>, ptr %i.n, align 8, !tbaa !112
  %i.p = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.q = fmul <2 x double> %i.o, %i.p
  %i.r = fadd <2 x double> %i.q, %i.m
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.t = load double, ptr %i.s, align 8, !tbaa !118
  %i.u = extractelement <2 x double> %i.d, i64 0
  %i.v = fmul double %i.u, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.x = load double, ptr %i.w, align 8, !tbaa !118
  %i.y = extractelement <2 x double> %i.j, i64 0
  %i.z = fmul double %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !118
  %i.ac = extractelement <2 x double> %i.j, i64 1
  %i.ad = fmul double %i.ac, %i.ab
  %i.ae = fadd double %i.z, %i.ad
  %i.af = fadd double %i.v, %i.ae
  %i.ag = fmul <2 x double> %i.d, %i.r            ; 2 uses
  %shift = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ag, %shift
  %i.ah = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ai = extractelement <2 x double> %i.j, i64 1
  %i.aj = fmul double %i.ai, %i.af
  %i.ak = fadd double %i.ah, %i.aj
  ret double %i.ak
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEJNS_9VertexSE3ENS_14VertexPointXYZEEE22constructQuadraticFormEv(ptr noundef nonnull align 8 dereferenceable(368) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Eigen::Product.1254", align 8 ; 6 uses
  %2 = alloca %"struct.Eigen::internal::add_assign_op", align 1 ; 3 uses
  %.sroa.027.i.i2 = alloca %"class.Eigen::Map.55", align 8 ; 4 uses
  %3 = alloca %"class.Eigen::Product.1254", align 8 ; 6 uses
  %4 = alloca %"struct.Eigen::internal::add_assign_op", align 1 ; 3 uses
  %.sroa.027.i.i = alloca %"class.Eigen::Map.55", align 8 ; 4 uses
  %5 = alloca %"class.Eigen::Matrix", align 8     ; 4 uses
  %6 = alloca %"class.Eigen::Matrix", align 16    ; 6 uses
  %7 = alloca %"class.Eigen::Matrix.18", align 16 ; 9 uses
  %8 = alloca %"class.Eigen::Matrix", align 16    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef double %i.e(ptr noundef nonnull align 8 dereferenceable(296) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !200  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.g, double noundef %i.f, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 272
end_hunk_0

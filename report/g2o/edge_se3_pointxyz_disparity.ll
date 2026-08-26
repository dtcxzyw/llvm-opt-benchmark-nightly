Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se3_pointxyz_disparity?download=true
inline.NumInlined: 5633
inline.NumDeleted: 3287
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN3g2o8BaseEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE21readInformationMatrixERSi:bb.a
  %i.k = icmp ne i32 %i.j, 0
  %i.l = or i1 %i.i, %i.k
  ret i1 %i.l

.critedge2:                                       ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.m) ; 0 uses
  %i.o = load double, ptr %i.m, align 8, !tbaa !70
  %gep.234 = getelementptr inbounds nuw i8, ptr %0, i64 216
  store double %i.o, ptr %gep.234, align 8, !tbaa !70
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
  %i.ab = load double, ptr %i.z, align 8, !tbaa !70
  %gep.1.1 = getelementptr inbounds nuw i8, ptr %0, i64 240
  store double %i.ab, ptr %gep.1.1, align 8, !tbaa !70
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
  %i.aq = load double, ptr %i.ao, align 8, !tbaa !70
  %gep.133 = getelementptr inbounds nuw i8, ptr %0, i64 208
  store double %i.aq, ptr %gep.133, align 8, !tbaa !70
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
define noundef zeroext i1 @_ZNK3g2o24EdgeSE3PointXYZDisparity5writeERSo(ptr noundef nonnull align 8 dereferenceable(616) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !145  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !145  ; 2 uses
  %.not8.i = icmp eq ptr %i.b, %i.d
  br i1 %.not8.i, label %_ZNK3g2o8BaseEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE13writeParamIdsERSo.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.05.09.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load i32, ptr %.sroa.05.09.i, align 4, !tbaa !58
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.e)
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.h, %i.d
  br i1 %.not.i, label %_ZNK3g2o8BaseEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE13writeParamIdsERSo.exit, label %.lr.ph.i

_ZNK3g2o8BaseEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE13writeParamIdsERSo.exit: ; preds = %.lr.ph.i, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.j = load double, ptr %i.i, align 8, !tbaa !70
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.j)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.n = load double, ptr %i.m, align 8, !tbaa !70
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.n)
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.r = load double, ptr %i.q, align 8, !tbaa !70
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.r)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.u = tail call noundef zeroext i1 @_ZNK3g2o8BaseEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE22writeInformationMatrixERSo(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret i1 %i.u
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o8BaseEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE22writeInformationMatrixERSo(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load double, ptr %i.a, align 8, !tbaa !70
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.b)
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = load double, ptr %i.e, align 8, !tbaa !70
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.f)
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.j = load double, ptr %i.i, align 8, !tbaa !70
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.j)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.n = load double, ptr %i.m, align 8, !tbaa !70
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.n)
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.r = load double, ptr %i.q, align 8, !tbaa !70
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.r)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.v = load double, ptr %i.u, align 8, !tbaa !70
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
define void @_ZN3g2o24EdgeSE3PointXYZDisparity12computeErrorEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(616) initializes((272, 296)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i = alloca [4 x double], align 16    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !133  ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.i = load <2 x double>, ptr %i.e, align 1, !tbaa !64, !noalias !146 ; 3 uses
  store <2 x double> %i.i, ptr %.sroa.0.i.i, align 16, !tbaa !64, !noalias !146
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.k = load double, ptr %i.j, align 8, !tbaa !70, !noalias !146
  %i.l = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.k, i64 0
  %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx37 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16
  store <2 x double> %i.l, ptr %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx37, align 16, !tbaa !70, !noalias !146
  %i.m = load <2 x double>, ptr %i.h, align 16, !tbaa !64, !noalias !146
  %i.n = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x double> %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 496
  %i.q = load <2 x double>, ptr %i.p, align 16, !tbaa !64, !noalias !146
  %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 8
  %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i = load <2 x double>, ptr %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !noalias !146 ; 2 uses
  %i.r = shufflevector <2 x double> %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x double> %i.q, %i.r
  %i.t = fadd <2 x double> %i.o, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 528
  %i.v = load <2 x double>, ptr %i.u, align 16, !tbaa !64, !noalias !146
  %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16
  %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i = load <2 x double>, ptr %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !noalias !146 ; 4 uses
  %i.w = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x double> %i.v, %i.w
  %i.y = fadd <2 x double> %i.t, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 560
  %i.aa = load <2 x double>, ptr %i.z, align 16, !tbaa !64, !noalias !146
  %i.ab = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ac = fmul <2 x double> %i.aa, %i.ab
  %i.ad = fadd <2 x double> %i.ac, %i.y
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %1 = load <2 x double>, ptr %i.ae, align 16, !tbaa !64, !noalias !146
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 512
  %2 = load <2 x double>, ptr %i.af, align 16, !tbaa !64, !noalias !146
  %3 = getelementptr inbounds nuw i8, ptr %i.g, i64 544
  %4 = load <2 x double>, ptr %3, align 16, !tbaa !64, !noalias !146
  %5 = getelementptr inbounds nuw i8, ptr %i.g, i64 576
  %6 = load <2 x double>, ptr %5, align 16, !tbaa !64, !noalias !146
  %shift = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %shift, %6
  %foldExtExtBinop25 = fmul <2 x double> %i.i, %1
  %foldExtExtBinop27 = fmul <2 x double> %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i, %2
  %foldExtExtBinop29 = fadd <2 x double> %foldExtExtBinop25, %foldExtExtBinop27
  %foldExtExtBinop31 = fmul <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, %4
  %foldExtExtBinop33 = fadd <2 x double> %foldExtExtBinop29, %foldExtExtBinop31
  %foldExtExtBinop35 = fadd <2 x double> %foldExtExtBinop, %foldExtExtBinop33 ; 2 uses
  %.sroa.4.16.vec.extract.i.i = extractelement <2 x double> %foldExtExtBinop35, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.ag = shufflevector <2 x double> %foldExtExtBinop35, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = fdiv <2 x double> %i.ad, %i.ag
  %i.ai = fdiv double 1.000000e+00, %.sroa.4.16.vec.extract.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.al = load <2 x double>, ptr %i.aj, align 8, !tbaa !64
  %i.am = fsub <2 x double> %i.ah, %i.al
  store <2 x double> %i.am, ptr %i.ak, align 8, !tbaa !64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !70
  %i.aq = fsub double %i.ai, %i.ap
  store double %i.aq, ptr %i.an, align 8, !tbaa !70
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o24EdgeSE3PointXYZDisparity14linearizeOplusEv(ptr noundef nonnull align 8 dereferenceable(616) initializes((464, 488), (496, 520), (528, 600)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i4 = alloca [4 x double], align 16   ; 6 uses
  %1 = alloca %"class.Eigen::Product.668", align 8 ; 5 uses
  %2 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %.sroa.0.i.i = alloca [4 x double], align 16    ; 6 uses
  %3 = alloca %"class.Eigen::Matrix.80", align 16 ; 21 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 168 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !133  ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 336 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.i = load <2 x double>, ptr %i.e, align 1, !tbaa !64, !noalias !151 ; 3 uses
  store <2 x double> %i.i, ptr %.sroa.0.i.i, align 16, !tbaa !64, !noalias !151
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 184 ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !70, !noalias !151
  %i.l = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.k, i64 0
  %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx180 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16
  store <2 x double> %i.l, ptr %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx180, align 16, !tbaa !70, !noalias !151
  %i.m = load <2 x double>, ptr %i.h, align 16, !tbaa !64, !noalias !151
  %i.n = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x double> %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 368 ; 2 uses
  %i.q = load <2 x double>, ptr %i.p, align 16, !tbaa !64, !noalias !151
  %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 8
  %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i = load <2 x double>, ptr %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !noalias !151 ; 2 uses
  %i.r = shufflevector <2 x double> %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x double> %i.q, %i.r
  %i.t = fadd <2 x double> %i.o, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 400 ; 2 uses
  %i.v = load <2 x double>, ptr %i.u, align 16, !tbaa !64, !noalias !151
  %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16
  %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i = load <2 x double>, ptr %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !noalias !151 ; 4 uses
  %i.w = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x double> %i.v, %i.w
  %i.y = fadd <2 x double> %i.t, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.aa = load <2 x double>, ptr %i.z, align 16, !tbaa !64, !noalias !151
  %i.ab = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ac = fmul <2 x double> %i.aa, %i.ab
  %i.ad = fadd <2 x double> %i.ac, %i.y           ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 352 ; 2 uses
  %4 = load <2 x double>, ptr %i.ae, align 16, !tbaa !64, !noalias !151
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 384 ; 2 uses
  %5 = load <2 x double>, ptr %i.af, align 16, !tbaa !64, !noalias !151
  %6 = getelementptr inbounds nuw i8, ptr %i.g, i64 416 ; 2 uses
  %7 = load <2 x double>, ptr %6, align 16, !tbaa !64, !noalias !151
  %8 = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %9 = load <2 x double>, ptr %8, align 16, !tbaa !64, !noalias !151
  %shift = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %shift, %9
  %foldExtExtBinop151 = fmul <2 x double> %i.i, %4
  %foldExtExtBinop153 = fmul <2 x double> %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i, %5
  %foldExtExtBinop155 = fadd <2 x double> %foldExtExtBinop151, %foldExtExtBinop153
  %foldExtExtBinop157 = fmul <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, %7
  %foldExtExtBinop159 = fadd <2 x double> %foldExtExtBinop155, %foldExtExtBinop157
  %foldExtExtBinop161 = fadd <2 x double> %foldExtExtBinop, %foldExtExtBinop159 ; 2 uses
  %.sroa.4.16.vec.extract.i.i = extractelement <2 x double> %foldExtExtBinop161, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.ag = fmul double %.sroa.4.16.vec.extract.i.i, -2.000000e+00
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 480
  store double %i.ag, ptr %i.ai, align 8, !tbaa !70
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 464
  %.sroa.0125.0.vec.extract = extractelement <2 x double> %i.ad, i64 0
  %i.ak = fmul double %.sroa.0125.0.vec.extract, -2.000000e+00
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 512
  store double %i.ak, ptr %i.al, align 8, !tbaa !70
  %10 = shufflevector <2 x double> %foldExtExtBinop161, <2 x double> %i.ad, <2 x i32> <i32 0, i32 3>
  %i.am = fmul <2 x double> %10, <double 2.000000e+00, double -2.000000e+00>
  store <2 x double> %i.am, ptr %i.aj, align 8, !tbaa !70
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ao = fmul <2 x double> %i.ad, splat (double 2.000000e+00)
  store <2 x double> %i.ao, ptr %i.an, align 8, !tbaa !70
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.aq = load <2 x double>, ptr %i.h, align 16, !tbaa !64
  store <2 x double> %i.aq, ptr %i.ap, align 8, !tbaa !64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.as = load double, ptr %i.ae, align 16, !tbaa !70
  store double %i.as, ptr %i.ar, align 8, !tbaa !70
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.au = load <2 x double>, ptr %i.p, align 16, !tbaa !64
  store <2 x double> %i.au, ptr %i.at, align 8, !tbaa !64
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.aw = load double, ptr %i.af, align 16, !tbaa !70
  store double %i.aw, ptr %i.av, align 8, !tbaa !70
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ay = load <2 x double>, ptr %i.u, align 16, !tbaa !64
  store <2 x double> %i.ay, ptr %i.ax, align 8, !tbaa !64
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.ba = load double, ptr %6, align 16, !tbaa !70
  store double %i.ba, ptr %i.az, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !83
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 416
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store ptr %i.bd, ptr %1, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.ah, ptr %i.be, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLi3ELi9ELi0ELi3ELi9EEENS_7ProductINS2_IdLi3ELi3ELi0ELi3ELi3EEES3_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.bf = load ptr, ptr %i.f, align 8, !tbaa !133 ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 464
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i4)
  %i.bh = load <2 x double>, ptr %i.e, align 8, !tbaa !64, !noalias !156 ; 3 uses
  store <2 x double> %i.bh, ptr %.sroa.0.i.i4, align 16, !tbaa !64, !noalias !156
  %i.bi = load double, ptr %i.j, align 8, !tbaa !70, !noalias !156
  %i.bj = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.bi, i64 0
  %.sroa.0.i.i4.16.i.i4.16.i.i4.16.i.16.i.16..sroa_idx181 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i4, i64 16
  store <2 x double> %i.bj, ptr %.sroa.0.i.i4.16.i.i4.16.i.i4.16.i.16.i.16..sroa_idx181, align 16, !tbaa !70, !noalias !156
  %i.bk = load <2 x double>, ptr %i.bg, align 16, !tbaa !64, !noalias !156
  %i.bl = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x double> %i.bl, %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 496
  %i.bo = load <2 x double>, ptr %i.bn, align 16, !tbaa !64, !noalias !156
  %.sroa.0.i.i4.8.i.i4.8.i.i4.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i4, i64 8
  %.sroa.0.i.i4.8..sroa.0.i.i4.8..sroa.0.i.i4.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i8 = load <2 x double>, ptr %.sroa.0.i.i4.8.i.i4.8.i.i4.8.i.8.i.8..sroa_idx, align 8, !noalias !156 ; 2 uses
  %i.bp = shufflevector <2 x double> %.sroa.0.i.i4.8..sroa.0.i.i4.8..sroa.0.i.i4.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i8, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x double> %i.bo, %i.bp
  %i.br = fadd <2 x double> %i.bm, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bf, i64 528
  %i.bt = load <2 x double>, ptr %i.bs, align 16, !tbaa !64, !noalias !156
  %.sroa.0.i.i4.16.i.i4.16.i.i4.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i4, i64 16
  %.sroa.0.i.i4.16..sroa.0.i.i4.16..sroa.0.i.i4.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i9 = load <2 x double>, ptr %.sroa.0.i.i4.16.i.i4.16.i.i4.16.i.16.i.16..sroa_idx, align 16, !noalias !156 ; 4 uses
  %i.bu = shufflevector <2 x double> %.sroa.0.i.i4.16..sroa.0.i.i4.16..sroa.0.i.i4.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i9, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = fmul <2 x double> %i.bt, %i.bu
  %i.bw = fadd <2 x double> %i.br, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bf, i64 560
  %i.by = load <2 x double>, ptr %i.bx, align 16, !tbaa !64, !noalias !156
  %i.bz = shufflevector <2 x double> %.sroa.0.i.i4.16..sroa.0.i.i4.16..sroa.0.i.i4.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i9, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ca = fmul <2 x double> %i.by, %i.bz
  %i.cb = fadd <2 x double> %i.ca, %i.bw          ; 9 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bf, i64 480
  %11 = load <2 x double>, ptr %i.cc, align 16, !tbaa !64, !noalias !156
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bf, i64 512
  %12 = load <2 x double>, ptr %i.cd, align 16, !tbaa !64, !noalias !156
  %13 = getelementptr inbounds nuw i8, ptr %i.bf, i64 544
  %14 = load <2 x double>, ptr %13, align 16, !tbaa !64, !noalias !156
  %15 = getelementptr inbounds nuw i8, ptr %i.bf, i64 576
  %16 = load <2 x double>, ptr %15, align 16, !tbaa !64, !noalias !156
  %shift163 = shufflevector <2 x double> %.sroa.0.i.i4.16..sroa.0.i.i4.16..sroa.0.i.i4.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i9, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop164 = fmul <2 x double> %shift163, %16
  %foldExtExtBinop166 = fmul <2 x double> %i.bh, %11
  %foldExtExtBinop168 = fmul <2 x double> %.sroa.0.i.i4.8..sroa.0.i.i4.8..sroa.0.i.i4.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i8, %12
  %foldExtExtBinop170 = fadd <2 x double> %foldExtExtBinop166, %foldExtExtBinop168
  %foldExtExtBinop172 = fmul <2 x double> %.sroa.0.i.i4.16..sroa.0.i.i4.16..sroa.0.i.i4.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i9, %14
  %foldExtExtBinop174 = fadd <2 x double> %foldExtExtBinop170, %foldExtExtBinop172
  %foldExtExtBinop176 = fadd <2 x double> %foldExtExtBinop164, %foldExtExtBinop174 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i4)
  %foldExtExtBinop178 = fmul <2 x double> %foldExtExtBinop176, %foldExtExtBinop176
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cf = load <2 x double>, ptr %3, align 16, !tbaa !64
  %i.cg = shufflevector <2 x double> %foldExtExtBinop176, <2 x double> poison, <2 x i32> zeroinitializer ; 9 uses
  %i.ch = fmul <2 x double> %i.cf, %i.cg
  %i.ci = load double, ptr %i.ce, align 16, !tbaa !70 ; 2 uses
  %i.cj = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cl = fmul <2 x double> %i.cb, %i.ck
  %i.cm = fsub <2 x double> %i.ch, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.co = load <2 x double>, ptr %i.cn, align 8, !tbaa !64
  %i.cp = fmul <2 x double> %i.co, %i.cg
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !70 ; 2 uses
  %i.cs = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.ct = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cu = fmul <2 x double> %i.cb, %i.ct
  %i.cv = fsub <2 x double> %i.cp, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cx = load <2 x double>, ptr %i.cw, align 16, !tbaa !64
  %i.cy = fmul <2 x double> %i.cg, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.da = load double, ptr %i.cz, align 16, !tbaa !70 ; 2 uses
  %i.db = insertelement <2 x double> poison, double %i.da, i64 0
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dd = fmul <2 x double> %i.cb, %i.dc
  %i.de = fsub <2 x double> %i.cy, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.dg = load <2 x double>, ptr %i.df, align 8, !tbaa !64
  %i.dh = fmul <2 x double> %i.cg, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.dj = load double, ptr %i.di, align 8, !tbaa !70 ; 2 uses
  %i.dk = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dm = fmul <2 x double> %i.cb, %i.dl
  %i.dn = fsub <2 x double> %i.dh, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.dp = load <2 x double>, ptr %i.do, align 16, !tbaa !64
  %i.dq = fmul <2 x double> %i.cg, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ds = load double, ptr %i.dr, align 16, !tbaa !70 ; 2 uses
  %i.dt = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.du = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dv = fmul <2 x double> %i.cb, %i.du
  %i.dw = fsub <2 x double> %i.dq, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.dy = load <2 x double>, ptr %i.dx, align 8, !tbaa !64
  %i.dz = fmul <2 x double> %i.cg, %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !70 ; 2 uses
  %i.ec = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %i.cb, %i.ed
  %i.ef = fsub <2 x double> %i.dz, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.eh = load <2 x double>, ptr %i.eg, align 16, !tbaa !64
  %i.ei = fmul <2 x double> %i.cg, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.ek = load double, ptr %i.ej, align 16, !tbaa !70 ; 2 uses
  %i.el = insertelement <2 x double> poison, double %i.ek, i64 0
  %i.em = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> zeroinitializer
  %i.en = fmul <2 x double> %i.cb, %i.em
  %i.eo = fsub <2 x double> %i.ei, %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.eq = load <2 x double>, ptr %i.ep, align 8, !tbaa !64
  %i.er = fmul <2 x double> %i.cg, %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.et = load double, ptr %i.es, align 8, !tbaa !70 ; 2 uses
  %i.eu = insertelement <2 x double> poison, double %i.et, i64 0
  %i.ev = shufflevector <2 x double> %i.eu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ew = fmul <2 x double> %i.cb, %i.ev
  %i.ex = fsub <2 x double> %i.er, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.ez = load <2 x double>, ptr %i.ey, align 16, !tbaa !64
  %i.fa = fmul <2 x double> %i.cg, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.fc = load double, ptr %i.fb, align 16, !tbaa !70 ; 2 uses
  %i.fd = insertelement <2 x double> poison, double %i.fc, i64 0
  %i.fe = shufflevector <2 x double> %i.fd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ff = fmul <2 x double> %i.cb, %i.fe
  %i.fg = fsub <2 x double> %i.fa, %i.ff
  %i.fh = shufflevector <2 x double> %foldExtExtBinop178, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fi = fdiv <2 x double> <double 1.000000e+00, double -1.000000e+00>, %i.fh ; 2 uses
  %i.fj = extractelement <2 x double> %i.fi, i64 1 ; 9 uses
  %i.fk = shufflevector <2 x double> %i.fi, <2 x double> poison, <2 x i32> zeroinitializer ; 9 uses
  %i.fl = fmul <2 x double> %i.fk, %i.cm
  %i.fm = fmul <2 x double> %i.fk, %i.cv
  %i.fn = fmul <2 x double> %i.fk, %i.de
  %i.fo = fmul <2 x double> %i.fk, %i.dn
  %i.fp = fmul <2 x double> %i.fk, %i.dw
  %i.fq = fmul <2 x double> %i.fk, %i.ef
  %i.fr = fmul <2 x double> %i.fk, %i.eo
  %i.fs = fmul <2 x double> %i.fk, %i.ex
  %i.ft = fmul <2 x double> %i.fk, %i.fg
  %i.fu = fmul double %i.ci, %i.fj
  %i.fv = fmul double %i.fj, %i.cr
  %i.fw = fmul double %i.fj, %i.da
  %i.fx = fmul double %i.fj, %i.dj
  %i.fy = fmul double %i.fj, %i.ds
  %i.fz = fmul double %i.fj, %i.eb
  %i.ga = fmul double %i.fj, %i.ek
  %i.gb = fmul double %i.fj, %i.et
  %i.gc = fmul double %i.fj, %i.fc
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !161, !nonnull !162, !align !163
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !164 ; 12 uses
  store <2 x double> %i.fl, ptr %i.gf, align 1, !tbaa !64
  %i.gg = getelementptr i8, ptr %i.gf, i64 16
  store double %i.fu, ptr %i.gg, align 8, !tbaa !70
  %i.gh = getelementptr i8, ptr %i.gf, i64 24
  store <2 x double> %i.fm, ptr %i.gh, align 8, !tbaa !64
  %i.gi = getelementptr i8, ptr %i.gf, i64 40
  store double %i.fv, ptr %i.gi, align 8, !tbaa !70
  %i.gj = getelementptr i8, ptr %i.gf, i64 48
  store <2 x double> %i.fn, ptr %i.gj, align 8, !tbaa !64
  %i.gk = getelementptr i8, ptr %i.gf, i64 64
  store double %i.fw, ptr %i.gk, align 8, !tbaa !70
  %i.gl = getelementptr i8, ptr %i.gf, i64 72
  store <2 x double> %i.fo, ptr %i.gl, align 8, !tbaa !64
  %i.gm = getelementptr i8, ptr %i.gf, i64 88
  store double %i.fx, ptr %i.gm, align 8, !tbaa !70
  %i.gn = getelementptr i8, ptr %i.gf, i64 96
  store <2 x double> %i.fp, ptr %i.gn, align 8, !tbaa !64
  %i.go = getelementptr i8, ptr %i.gf, i64 112
  store double %i.fy, ptr %i.go, align 8, !tbaa !70
  %i.gp = getelementptr i8, ptr %i.gf, i64 120
  store <2 x double> %i.fq, ptr %i.gp, align 8, !tbaa !64
  %i.gq = getelementptr i8, ptr %i.gf, i64 136
  store double %i.fz, ptr %i.gq, align 8, !tbaa !70
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !165, !nonnull !162, !align !163
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !166 ; 6 uses
  store <2 x double> %i.fr, ptr %i.gt, align 1, !tbaa !64
  %i.gu = getelementptr i8, ptr %i.gt, i64 16
  store double %i.ga, ptr %i.gu, align 8, !tbaa !70
  %i.gv = getelementptr i8, ptr %i.gt, i64 24
  store <2 x double> %i.fs, ptr %i.gv, align 8, !tbaa !64
  %i.gw = getelementptr i8, ptr %i.gt, i64 40
  store double %i.gb, ptr %i.gw, align 8, !tbaa !70
  %i.gx = getelementptr i8, ptr %i.gt, i64 48
  store <2 x double> %i.ft, ptr %i.gx, align 8, !tbaa !64
  %i.gy = getelementptr i8, ptr %i.gt, i64 64
  store double %i.gc, ptr %i.gy, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN3g2o24EdgeSE3PointXYZDisparity23setMeasurementFromStateEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(616) initializes((176, 200)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i = alloca [4 x double], align 16    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !133  ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.i = load <2 x double>, ptr %i.e, align 1, !tbaa !64, !noalias !167 ; 3 uses
  store <2 x double> %i.i, ptr %.sroa.0.i.i, align 16, !tbaa !64, !noalias !167
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.k = load double, ptr %i.j, align 8, !tbaa !70, !noalias !167
  %i.l = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.k, i64 0
  %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx34 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16
  store <2 x double> %i.l, ptr %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx34, align 16, !tbaa !70, !noalias !167
  %i.m = load <2 x double>, ptr %i.h, align 16, !tbaa !64, !noalias !167
  %i.n = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x double> %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 496
  %i.q = load <2 x double>, ptr %i.p, align 16, !tbaa !64, !noalias !167
  %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 8
  %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i = load <2 x double>, ptr %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !noalias !167 ; 2 uses
  %i.r = shufflevector <2 x double> %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x double> %i.q, %i.r
  %i.t = fadd <2 x double> %i.o, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 528
  %i.v = load <2 x double>, ptr %i.u, align 16, !tbaa !64, !noalias !167
  %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16
  %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i = load <2 x double>, ptr %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !noalias !167 ; 4 uses
  %i.w = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x double> %i.v, %i.w
  %i.y = fadd <2 x double> %i.t, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 560
  %i.aa = load <2 x double>, ptr %i.z, align 16, !tbaa !64, !noalias !167
  %i.ab = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ac = fmul <2 x double> %i.aa, %i.ab
  %i.ad = fadd <2 x double> %i.ac, %i.y
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %1 = load <2 x double>, ptr %i.ae, align 16, !tbaa !64, !noalias !167
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 512
  %2 = load <2 x double>, ptr %i.af, align 16, !tbaa !64, !noalias !167
  %3 = getelementptr inbounds nuw i8, ptr %i.g, i64 544
  %4 = load <2 x double>, ptr %3, align 16, !tbaa !64, !noalias !167
  %5 = getelementptr inbounds nuw i8, ptr %i.g, i64 576
  %6 = load <2 x double>, ptr %5, align 16, !tbaa !64, !noalias !167
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
  %i.ai = fdiv double 1.000000e+00, %.sroa.4.16.vec.extract.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <2 x double> %i.ah, ptr %i.aj, align 8, !tbaa !64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 192
  store double %i.ai, ptr %i.ak, align 8, !tbaa !70
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o24EdgeSE3PointXYZDisparity15initialEstimateERKSt3setIPNS_10HyperGraph6VertexESt4lessIS4_ESaIS4_EEPNS_16OptimizableGraph6VertexE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83   ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 344
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.m = load double, ptr %i.l, align 8, !tbaa !70
  %i.n = fdiv double 1.000000e+00, %i.m           ; 2 uses
  %.sroa.510.24.vec.insert.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.n, i64 0
  %i.o = load <2 x double>, ptr %i.k, align 8, !tbaa !64
  %i.p = shufflevector <2 x double> %.sroa.510.24.vec.insert.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fmul <2 x double> %i.o, %i.p             ; 3 uses
  store <2 x double> %i.q, ptr %.sroa.0, align 16, !tbaa !64
  %.sroa.0.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  store double %i.n, ptr %.sroa.0.16..sroa_idx, align 16, !tbaa !70
  %i.r = load <2 x double>, ptr %i.j, align 1, !tbaa !64
  %i.s = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x double> %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 368
  %i.v = load <2 x double>, ptr %i.u, align 1, !tbaa !64
  %.sroa.0.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.0.8..sroa.0.8..sroa.0.8. = load <2 x double>, ptr %.sroa.0.8..sroa_idx, align 8 ; 4 uses
  %i.w = shufflevector <2 x double> %.sroa.0.8..sroa.0.8..sroa.0.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x double> %i.v, %i.w
  %i.y = fadd <2 x double> %i.t, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 392
  %i.aa = load <2 x double>, ptr %i.z, align 1, !tbaa !64
  %i.ab = shufflevector <2 x double> %.sroa.0.8..sroa.0.8..sroa.0.8., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ac = fmul <2 x double> %i.aa, %i.ab
  %i.ad = fadd <2 x double> %i.ac, %i.y           ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 360
  %i.af = load double, ptr %i.ae, align 8, !tbaa !70
  %i.ag = extractelement <2 x double> %i.q, i64 0
  %i.ah = fmul double %i.ag, %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 384
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !70
  %i.ak = extractelement <2 x double> %.sroa.0.8..sroa.0.8..sroa.0.8., i64 0
  %i.al = fmul double %i.ak, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 408
  %i.an = load double, ptr %i.am, align 8, !tbaa !70
  %i.ao = extractelement <2 x double> %.sroa.0.8..sroa.0.8..sroa.0.8., i64 1
  %i.ap = fmul double %i.ao, %i.an
  %i.aq = fadd double %i.al, %i.ap
  %i.ar = fadd double %i.ah, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  store <2 x double> %i.ad, ptr %.sroa.0.i.i, align 16, !tbaa !64, !noalias !172
  %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx70 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16
  store double %i.ar, ptr %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx70, align 16, !tbaa !70, !noalias !172
  %.sroa.0.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 24
  store double 1.000000e+00, ptr %.sroa.0.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx, align 8, !tbaa !70, !noalias !172
  %i.au = load <2 x double>, ptr %i.at, align 16, !tbaa !64, !noalias !172
  %i.av = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = fmul <2 x double> %i.av, %i.au
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.ay = load <2 x double>, ptr %i.ax, align 16, !tbaa !64, !noalias !172
  %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 8
  %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i = load <2 x double>, ptr %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !noalias !172 ; 2 uses
  %i.az = shufflevector <2 x double> %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ba = fmul <2 x double> %i.ay, %i.az
  %i.bb = fadd <2 x double> %i.aw, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.bd = load <2 x double>, ptr %i.bc, align 16, !tbaa !64, !noalias !172
  %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16
  %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i = load <2 x double>, ptr %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !noalias !172 ; 4 uses
  %i.be = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x double> %i.bd, %i.be
  %i.bg = fadd <2 x double> %i.bb, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.bi = load <2 x double>, ptr %i.bh, align 16, !tbaa !64, !noalias !172
  %i.bj = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bk = fmul <2 x double> %i.bi, %i.bj
  %i.bl = fadd <2 x double> %i.bk, %i.bg          ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %3 = load <2 x double>, ptr %i.bm, align 16, !tbaa !64, !noalias !172
  %i.bn = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %4 = load <2 x double>, ptr %i.bn, align 16, !tbaa !64, !noalias !172
  %i.bo = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %5 = load <2 x double>, ptr %i.bo, align 16, !tbaa !64, !noalias !172
  %i.bp = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %6 = load <2 x double>, ptr %i.bp, align 16, !tbaa !64, !noalias !172
  %7 = extractelement <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, i64 1
  %i.bq = extractelement <2 x double> %6, i64 0
  %i.br = fmul double %7, %i.bq
  %8 = extractelement <2 x double> %i.ad, i64 0
  %i.bs = extractelement <2 x double> %3, i64 0
  %i.bt = fmul double %8, %i.bs
  %9 = extractelement <2 x double> %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i, i64 0
  %i.bu = extractelement <2 x double> %4, i64 0
  %i.bv = fmul double %9, %i.bu
  %i.bw = fadd double %i.bt, %i.bv
  %10 = extractelement <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, i64 0
  %i.bx = extractelement <2 x double> %5, i64 0
  %i.by = fmul double %10, %i.bx
  %i.bz = fadd double %i.bw, %i.by
  %.sroa.4.16.vec.extract.i.i = fadd double %i.br, %i.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i5)
  store <2 x double> %i.bl, ptr %.sroa.0.i.i5, align 16, !tbaa !64, !noalias !177
  %.sroa.0.i.i5.16.i.i5.16.i.i5.16.i.16.i.16..sroa_idx71 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i5, i64 16
  store double %.sroa.4.16.vec.extract.i.i, ptr %.sroa.0.i.i5.16.i.i5.16.i.i5.16.i.16.i.16..sroa_idx71, align 16, !tbaa !70, !noalias !177
  %.sroa.0.i.i5.24.i.i5.24.i.i5.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i5, i64 24
  store double 1.000000e+00, ptr %.sroa.0.i.i5.24.i.i5.24.i.i5.24.i.24.i.24..sroa_idx, align 8, !tbaa !70, !noalias !177
  %i.ca = load <2 x double>, ptr %i.as, align 16, !tbaa !64, !noalias !177
  %i.cb = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cc = fmul <2 x double> %i.cb, %i.ca
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.ce = load <2 x double>, ptr %i.cd, align 16, !tbaa !64, !noalias !177
  %.sroa.0.i.i5.8.i.i5.8.i.i5.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i5, i64 8
  %.sroa.0.i.i5.8..sroa.0.i.i5.8..sroa.0.i.i5.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i9 = load <2 x double>, ptr %.sroa.0.i.i5.8.i.i5.8.i.i5.8.i.8.i.8..sroa_idx, align 8, !noalias !177 ; 2 uses
  %i.cf = shufflevector <2 x double> %.sroa.0.i.i5.8..sroa.0.i.i5.8..sroa.0.i.i5.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i9, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cg = fmul <2 x double> %i.ce, %i.cf
  %i.ch = fadd <2 x double> %i.cc, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.cj = load <2 x double>, ptr %i.ci, align 16, !tbaa !64, !noalias !177
  %.sroa.0.i.i5.16.i.i5.16.i.i5.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i5, i64 16
  %.sroa.0.i.i5.16..sroa.0.i.i5.16..sroa.0.i.i5.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i10 = load <2 x double>, ptr %.sroa.0.i.i5.16.i.i5.16.i.i5.16.i.16.i.16..sroa_idx, align 16, !noalias !177 ; 4 uses
  %i.ck = shufflevector <2 x double> %.sroa.0.i.i5.16..sroa.0.i.i5.16..sroa.0.i.i5.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i10, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cl = fmul <2 x double> %i.cj, %i.ck
  %i.cm = fadd <2 x double> %i.ch, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.co = load <2 x double>, ptr %i.cn, align 16, !tbaa !64, !noalias !177
  %i.cp = shufflevector <2 x double> %.sroa.0.i.i5.16..sroa.0.i.i5.16..sroa.0.i.i5.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i10, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cq = fmul <2 x double> %i.co, %i.cp
  %i.cr = fadd <2 x double> %i.cq, %i.cm
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %11 = load <2 x double>, ptr %i.cs, align 16, !tbaa !64, !noalias !177
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %12 = load <2 x double>, ptr %i.ct, align 16, !tbaa !64, !noalias !177
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  %13 = load <2 x double>, ptr %i.cu, align 16, !tbaa !64, !noalias !177
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 304
  %14 = load <2 x double>, ptr %i.cv, align 16, !tbaa !64, !noalias !177
  %15 = extractelement <2 x double> %.sroa.0.i.i5.16..sroa.0.i.i5.16..sroa.0.i.i5.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i10, i64 1
  %i.cw = extractelement <2 x double> %14, i64 0
  %i.cx = fmul double %15, %i.cw
  %16 = extractelement <2 x double> %i.bl, i64 0
  %i.cy = extractelement <2 x double> %11, i64 0
  %i.cz = fmul double %16, %i.cy
  %17 = extractelement <2 x double> %.sroa.0.i.i5.8..sroa.0.i.i5.8..sroa.0.i.i5.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i9, i64 0
  %i.da = extractelement <2 x double> %12, i64 0
  %i.db = fmul double %17, %i.da
  %i.dc = fadd double %i.cz, %i.db
  %18 = extractelement <2 x double> %.sroa.0.i.i5.16..sroa.0.i.i5.16..sroa.0.i.i5.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i10, i64 0
  %i.dd = extractelement <2 x double> %13, i64 0
  %i.de = fmul double %18, %i.dd
  %i.df = fadd double %i.dc, %i.de
  %.sroa.4.16.vec.extract.i.i11 = fadd double %i.cx, %i.df
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i5)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  store <2 x double> %i.cr, ptr %i.dg, align 1, !tbaa !64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  store double %.sroa.4.16.vec.extract.i.i11, ptr %i.dh, align 8, !tbaa !70
  %i.di = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 216
  %i.dk = load ptr, ptr %i.dj, align 8
  tail call void %i.dk(ptr noundef nonnull align 8 dereferenceable(216) %i.g), !inline_history !182
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o24EdgeSE3PointXYZDisparityD0Ev(ptr noundef nonnull align 8 dereferenceable(616) %0) unnamed_addr #6 comdat align 2 {
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
define linkonce_odr noundef zeroext i1 @_ZN3g2o24EdgeSE3PointXYZDisparity18setMeasurementDataEPKd(ptr noundef nonnull align 8 dereferenceable(616) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load <2 x double>, ptr %1, align 1, !tbaa !64
  store <2 x double> %i.b, ptr %i.a, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = getelementptr i8, ptr %1, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !70
  store double %i.e, ptr %i.c, align 8, !tbaa !70
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o24EdgeSE3PointXYZDisparity18getMeasurementDataEPd(ptr noundef nonnull align 8 dereferenceable(616) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load <2 x double>, ptr %i.a, align 8, !tbaa !64
  store <2 x double> %i.b, ptr %1, align 1, !tbaa !64
  %i.c = getelementptr i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load double, ptr %i.d, align 8, !tbaa !70
  store double %i.e, ptr %i.c, align 8, !tbaa !70
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o24EdgeSE3PointXYZDisparity20measurementDimensionEv(ptr noundef nonnull align 8 dereferenceable(616) %0) unnamed_addr #7 comdat align 2 {
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
  %i.c = load <2 x double>, ptr %i.b, align 8, !tbaa !64
  %i.d = load <2 x double>, ptr %i.a, align 8     ; 3 uses
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer
  %i.f = fmul <2 x double> %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = load <2 x double>, ptr %i.g, align 8, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.j = load <2 x double>, ptr %i.i, align 8     ; 5 uses
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x double> %i.h, %i.k
  %i.m = fadd <2 x double> %i.f, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.o = load <2 x double>, ptr %i.n, align 8, !tbaa !64
  %i.p = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.q = fmul <2 x double> %i.o, %i.p
  %i.r = fadd <2 x double> %i.q, %i.m
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.t = load double, ptr %i.s, align 8, !tbaa !70
  %i.u = extractelement <2 x double> %i.d, i64 0
  %i.v = fmul double %i.u, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.x = load double, ptr %i.w, align 8, !tbaa !70
  %i.y = extractelement <2 x double> %i.j, i64 0
  %i.z = fmul double %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !70
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
  %1 = alloca %"class.Eigen::Product.1278", align 8 ; 6 uses
  %2 = alloca %"struct.Eigen::internal::add_assign_op", align 1 ; 3 uses
  %.sroa.027.i.i2 = alloca %"class.Eigen::Map.55", align 8 ; 4 uses
  %3 = alloca %"class.Eigen::Product.1278", align 8 ; 6 uses
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

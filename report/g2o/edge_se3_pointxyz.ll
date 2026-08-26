Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se3_pointxyz?download=true
inline.NumInlined: 5014
inline.NumDeleted: 2949
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN3g2o8BaseEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE21readInformationMatrixERSi:bb.a
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
  %i.ab = load double, ptr %i.z, align 8, !tbaa !55
  %gep.1.1 = getelementptr inbounds nuw i8, ptr %0, i64 240
  store double %i.ab, ptr %gep.1.1, align 8, !tbaa !55
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
  %i.aq = load double, ptr %i.ao, align 8, !tbaa !55
  %gep.133 = getelementptr inbounds nuw i8, ptr %0, i64 208
  store double %i.aq, ptr %gep.133, align 8, !tbaa !55
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
define noundef zeroext i1 @_ZNK3g2o15EdgeSE3PointXYZ5writeERSo(ptr noundef nonnull align 8 dereferenceable(616) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !145  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !145  ; 2 uses
  %.not8.i = icmp eq ptr %i.b, %i.d
  br i1 %.not8.i, label %_ZNK3g2o8BaseEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE13writeParamIdsERSo.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.05.09.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load i32, ptr %.sroa.05.09.i, align 4, !tbaa !60
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.e)
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.h, %i.d
  br i1 %.not.i, label %_ZNK3g2o8BaseEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE13writeParamIdsERSo.exit, label %.lr.ph.i

_ZNK3g2o8BaseEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE13writeParamIdsERSo.exit: ; preds = %.lr.ph.i, %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !39
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %1, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !136
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.p = load double, ptr %i.o, align 8, !tbaa !55
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.p)
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.t = load double, ptr %i.s, align 8, !tbaa !55
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.t)
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.x = load double, ptr %i.w, align 8, !tbaa !55
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.x)
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.aa = load ptr, ptr %1, align 8, !tbaa !39
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %1, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !136
  %i.ag = or i32 %i.af, %i.n
  %i.ah = icmp eq i32 %i.ag, 0
  %i.ai = tail call noundef zeroext i1 @_ZNK3g2o8BaseEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE22writeInformationMatrixERSo(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.aj = and i1 %i.ai, %i.ah
  ret i1 %i.aj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o8BaseEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE22writeInformationMatrixERSo(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load double, ptr %i.a, align 8, !tbaa !55
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.b)
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = load double, ptr %i.e, align 8, !tbaa !55
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.f)
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.j = load double, ptr %i.i, align 8, !tbaa !55
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.j)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.n = load double, ptr %i.m, align 8, !tbaa !55
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.n)
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.r = load double, ptr %i.q, align 8, !tbaa !55
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.r)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.v = load double, ptr %i.u, align 8, !tbaa !55
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
define void @_ZN3g2o15EdgeSE3PointXYZ12computeErrorEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(616) initializes((272, 296)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i = alloca [4 x double], align 16    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !133  ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.i = load <2 x double>, ptr %i.h, align 1, !tbaa !66, !noalias !146 ; 3 uses
  store <2 x double> %i.i, ptr %.sroa.0.i.i, align 16, !tbaa !66, !noalias !146
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.k = load double, ptr %i.j, align 8, !tbaa !55, !noalias !146
  %i.l = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.k, i64 0
  %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx17 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16
  store <2 x double> %i.l, ptr %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx17, align 16, !tbaa !55, !noalias !146
  %i.m = load <2 x double>, ptr %i.g, align 16, !tbaa !66, !noalias !146
  %i.n = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x double> %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.q = load <2 x double>, ptr %i.p, align 16, !tbaa !66, !noalias !146
  %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 8
  %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i = load <2 x double>, ptr %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !noalias !146 ; 2 uses
  %i.r = shufflevector <2 x double> %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x double> %i.q, %i.r
  %i.t = fadd <2 x double> %i.o, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.v = load <2 x double>, ptr %i.u, align 16, !tbaa !66, !noalias !146
  %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16
  %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i = load <2 x double>, ptr %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !noalias !146 ; 4 uses
  %i.w = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x double> %i.v, %i.w
  %i.y = fadd <2 x double> %i.t, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  %i.aa = load <2 x double>, ptr %i.z, align 16, !tbaa !66, !noalias !146
  %i.ab = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ac = fmul <2 x double> %i.aa, %i.ab
  %i.ad = fadd <2 x double> %i.ac, %i.y
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  %1 = load double, ptr %i.ah, align 16, !tbaa !66, !noalias !146
  %i.ai = extractelement <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, i64 1
  %i.aj = fmul double %i.ai, %1
  %2 = load double, ptr %i.ae, align 16, !tbaa !66, !noalias !146
  %i.ak = extractelement <2 x double> %i.i, i64 0
  %i.al = fmul double %i.ak, %2
  %3 = load double, ptr %i.af, align 16, !tbaa !66, !noalias !146
  %i.am = extractelement <2 x double> %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i, i64 0
  %i.an = fmul double %i.am, %3
  %i.ao = fadd double %i.al, %i.an
  %4 = load double, ptr %i.ag, align 16, !tbaa !66, !noalias !146
  %i.ap = extractelement <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, i64 0
  %i.aq = fmul double %i.ap, %4
  %i.ar = fadd double %i.ao, %i.aq
  %.sroa.4.16.vec.extract.i.i = fadd double %i.aj, %i.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.au = load <2 x double>, ptr %i.as, align 8, !tbaa !66
  %i.av = fsub <2 x double> %i.ad, %i.au
  store <2 x double> %i.av, ptr %i.at, align 8, !tbaa !66
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !55
  %i.az = fsub double %.sroa.4.16.vec.extract.i.i, %i.ay
  store double %i.az, ptr %i.aw, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o15EdgeSE3PointXYZ14linearizeOplusEv(ptr noundef nonnull align 8 dereferenceable(616) initializes((464, 488), (496, 520), (528, 600)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Eigen::Product.460", align 8 ; 8 uses
  %2 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %.sroa.0.i.i = alloca [4 x double], align 16    ; 6 uses
  %3 = alloca %"class.Eigen::Matrix.80", align 16 ; 21 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !133  ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 336 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.i = load <2 x double>, ptr %i.h, align 1, !tbaa !66, !noalias !151 ; 3 uses
  store <2 x double> %i.i, ptr %.sroa.0.i.i, align 16, !tbaa !66, !noalias !151
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.k = load double, ptr %i.j, align 8, !tbaa !55, !noalias !151
  %i.l = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.k, i64 0
  %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx52 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16
  store <2 x double> %i.l, ptr %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx52, align 16, !tbaa !55, !noalias !151
  %i.m = load <2 x double>, ptr %i.g, align 16, !tbaa !66, !noalias !151
  %i.n = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x double> %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 368 ; 2 uses
  %i.q = load <2 x double>, ptr %i.p, align 16, !tbaa !66, !noalias !151
  %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 8
  %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i = load <2 x double>, ptr %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !noalias !151 ; 2 uses
  %i.r = shufflevector <2 x double> %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x double> %i.q, %i.r
  %i.t = fadd <2 x double> %i.o, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 400 ; 2 uses
  %i.v = load <2 x double>, ptr %i.u, align 16, !tbaa !66, !noalias !151
  %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16
  %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i = load <2 x double>, ptr %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !noalias !151 ; 4 uses
  %i.w = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x double> %i.v, %i.w
  %i.y = fadd <2 x double> %i.t, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 432
  %i.aa = load <2 x double>, ptr %i.z, align 16, !tbaa !66, !noalias !151
  %i.ab = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ac = fmul <2 x double> %i.aa, %i.ab
  %i.ad = fadd <2 x double> %i.ac, %i.y           ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.f, i64 352 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 384 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.f, i64 416 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 448
  %6 = load double, ptr %i.af, align 16, !tbaa !66, !noalias !151
  %7 = extractelement <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, i64 1
  %8 = fmul double %7, %6
  %9 = load double, ptr %4, align 16, !tbaa !66, !noalias !151
  %10 = extractelement <2 x double> %i.i, i64 0
  %11 = fmul double %10, %9
  %12 = load double, ptr %i.ae, align 16, !tbaa !66, !noalias !151
  %13 = extractelement <2 x double> %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i, i64 0
  %14 = fmul double %13, %12
  %15 = fadd double %11, %14
  %16 = load double, ptr %5, align 16, !tbaa !66, !noalias !151
  %17 = extractelement <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, i64 0
  %18 = fmul double %17, %16
  %19 = fadd double %15, %18
  %.sroa.4.16.vec.extract.i.i = fadd double %8, %19 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.ag = fmul double %.sroa.4.16.vec.extract.i.i, -2.000000e+00
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 480
  store double %i.ag, ptr %i.ai, align 8, !tbaa !55
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 464
  %.sroa.030.0.vec.extract = extractelement <2 x double> %i.ad, i64 0
  %i.ak = fmul double %.sroa.030.0.vec.extract, -2.000000e+00
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 512
  store double %i.ak, ptr %i.al, align 8, !tbaa !55
  %20 = insertelement <2 x double> %i.ad, double %.sroa.4.16.vec.extract.i.i, i64 0
  %i.am = fmul <2 x double> %20, <double 2.000000e+00, double -2.000000e+00>
  store <2 x double> %i.am, ptr %i.aj, align 8, !tbaa !55
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ao = fmul <2 x double> %i.ad, splat (double 2.000000e+00)
  store <2 x double> %i.ao, ptr %i.an, align 8, !tbaa !55
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.aq = load <2 x double>, ptr %i.g, align 16, !tbaa !66
  store <2 x double> %i.aq, ptr %i.ap, align 8, !tbaa !66
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.as = load double, ptr %4, align 16, !tbaa !55
  store double %i.as, ptr %i.ar, align 8, !tbaa !55
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.au = load <2 x double>, ptr %i.p, align 16, !tbaa !66
  store <2 x double> %i.au, ptr %i.at, align 8, !tbaa !66
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.aw = load double, ptr %i.ae, align 16, !tbaa !55
  store double %i.aw, ptr %i.av, align 8, !tbaa !55
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ay = load <2 x double>, ptr %i.u, align 16, !tbaa !66
  store <2 x double> %i.ay, ptr %i.ax, align 8, !tbaa !66
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.ba = load double, ptr %5, align 16, !tbaa !55
  store double %i.ba, ptr %i.az, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !83
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 144 ; 2 uses
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.617.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %i.bd, ptr %1, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.bd, ptr %.sroa.516.0..sroa_idx, align 8
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 4, ptr %.sroa.718.0..sroa_idx, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.ah, ptr %i.be, align 8, !tbaa !156, !alias.scope !158
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLi3ELi9ELi0ELi3ELi9EEENS_7ProductINS_5BlockIKNS2_IdLi4ELi4ELi0ELi4ELi4EEELi3ELi3ELb0EEES3_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !161, !nonnull !162, !align !163
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !164 ; 12 uses
  %i.bi = load <2 x double>, ptr %3, align 16, !tbaa !66
  store <2 x double> %i.bi, ptr %i.bh, align 1, !tbaa !66
  %i.bj = getelementptr i8, ptr %i.bh, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bl = load double, ptr %i.bk, align 16, !tbaa !55
  store double %i.bl, ptr %i.bj, align 8, !tbaa !55
  %i.bm = getelementptr i8, ptr %i.bh, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bo = load <2 x double>, ptr %i.bn, align 8, !tbaa !66
  store <2 x double> %i.bo, ptr %i.bm, align 8, !tbaa !66
  %i.bp = getelementptr i8, ptr %i.bh, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.br = load double, ptr %i.bq, align 8, !tbaa !55
  store double %i.br, ptr %i.bp, align 8, !tbaa !55
  %i.bs = getelementptr i8, ptr %i.bh, i64 48
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bu = load <2 x double>, ptr %i.bt, align 16, !tbaa !66
  store <2 x double> %i.bu, ptr %i.bs, align 8, !tbaa !66
  %i.bv = getelementptr i8, ptr %i.bh, i64 64
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bx = load double, ptr %i.bw, align 16, !tbaa !55
  store double %i.bx, ptr %i.bv, align 8, !tbaa !55
  %i.by = getelementptr i8, ptr %i.bh, i64 72
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ca = load <2 x double>, ptr %i.bz, align 8, !tbaa !66
  store <2 x double> %i.ca, ptr %i.by, align 8, !tbaa !66
  %i.cb = getelementptr i8, ptr %i.bh, i64 88
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !55
  store double %i.cd, ptr %i.cb, align 8, !tbaa !55
  %i.ce = getelementptr i8, ptr %i.bh, i64 96
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.cg = load <2 x double>, ptr %i.cf, align 16, !tbaa !66
  store <2 x double> %i.cg, ptr %i.ce, align 8, !tbaa !66
  %i.ch = getelementptr i8, ptr %i.bh, i64 112
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.cj = load double, ptr %i.ci, align 16, !tbaa !55
  store double %i.cj, ptr %i.ch, align 8, !tbaa !55
  %i.ck = getelementptr i8, ptr %i.bh, i64 120
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.cm = load <2 x double>, ptr %i.cl, align 8, !tbaa !66
  store <2 x double> %i.cm, ptr %i.ck, align 8, !tbaa !66
  %i.cn = getelementptr i8, ptr %i.bh, i64 136
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.cp = load double, ptr %i.co, align 8, !tbaa !55
  store double %i.cp, ptr %i.cn, align 8, !tbaa !55
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !165, !nonnull !162, !align !163
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !166 ; 6 uses
  %i.cu = load <2 x double>, ptr %i.cq, align 16, !tbaa !66
  store <2 x double> %i.cu, ptr %i.ct, align 1, !tbaa !66
  %i.cv = getelementptr i8, ptr %i.ct, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.cx = load double, ptr %i.cw, align 16, !tbaa !55
  store double %i.cx, ptr %i.cv, align 8, !tbaa !55
  %i.cy = getelementptr i8, ptr %i.ct, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.da = load <2 x double>, ptr %i.cz, align 8, !tbaa !66
  store <2 x double> %i.da, ptr %i.cy, align 8, !tbaa !66
  %i.db = getelementptr i8, ptr %i.ct, i64 40
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !55
  store double %i.dd, ptr %i.db, align 8, !tbaa !55
  %i.de = getelementptr i8, ptr %i.ct, i64 48
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.dg = load <2 x double>, ptr %i.df, align 16, !tbaa !66
  store <2 x double> %i.dg, ptr %i.de, align 8, !tbaa !66
  %i.dh = getelementptr i8, ptr %i.ct, i64 64
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.dj = load double, ptr %i.di, align 16, !tbaa !55
  store double %i.dj, ptr %i.dh, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN3g2o15EdgeSE3PointXYZ23setMeasurementFromStateEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(616) initializes((176, 200)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i = alloca [4 x double], align 16    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !133  ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.i = load <2 x double>, ptr %i.e, align 1, !tbaa !66, !noalias !167 ; 3 uses
  store <2 x double> %i.i, ptr %.sroa.0.i.i, align 16, !tbaa !66, !noalias !167
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.k = load double, ptr %i.j, align 8, !tbaa !55, !noalias !167
  %i.l = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.k, i64 0
  %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx18 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16
  store <2 x double> %i.l, ptr %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx18, align 16, !tbaa !55, !noalias !167
  %i.m = load <2 x double>, ptr %i.h, align 16, !tbaa !66, !noalias !167
  %i.n = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x double> %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.q = load <2 x double>, ptr %i.p, align 16, !tbaa !66, !noalias !167
  %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 8
  %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i = load <2 x double>, ptr %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !noalias !167 ; 2 uses
  %i.r = shufflevector <2 x double> %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x double> %i.q, %i.r
  %i.t = fadd <2 x double> %i.o, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.v = load <2 x double>, ptr %i.u, align 16, !tbaa !66, !noalias !167
  %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16
  %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i = load <2 x double>, ptr %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !noalias !167 ; 4 uses
  %i.w = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x double> %i.v, %i.w
  %i.y = fadd <2 x double> %i.t, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.aa = load <2 x double>, ptr %i.z, align 16, !tbaa !66, !noalias !167
  %i.ab = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ac = fmul <2 x double> %i.aa, %i.ab
  %i.ad = fadd <2 x double> %i.ac, %i.y
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %1 = load double, ptr %i.ah, align 16, !tbaa !66, !noalias !167
  %i.ai = extractelement <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, i64 1
  %i.aj = fmul double %i.ai, %1
  %2 = load double, ptr %i.ae, align 16, !tbaa !66, !noalias !167
  %i.ak = extractelement <2 x double> %i.i, i64 0
  %i.al = fmul double %i.ak, %2
  %3 = load double, ptr %i.af, align 16, !tbaa !66, !noalias !167
  %i.am = extractelement <2 x double> %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i, i64 0
  %i.an = fmul double %i.am, %3
  %i.ao = fadd double %i.al, %i.an
  %4 = load double, ptr %i.ag, align 16, !tbaa !66, !noalias !167
  %i.ap = extractelement <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, i64 0
  %i.aq = fmul double %i.ap, %4
  %i.ar = fadd double %i.ao, %i.aq
  %.sroa.4.16.vec.extract.i.i = fadd double %i.aj, %i.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <2 x double> %i.ad, ptr %i.as, align 8, !tbaa !66
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 192
  store double %.sroa.4.16.vec.extract.i.i, ptr %i.at, align 8, !tbaa !55
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o15EdgeSE3PointXYZ15initialEstimateERKSt3setIPNS_10HyperGraph6VertexESt4lessIS4_ESaIS4_EEPNS_16OptimizableGraph6VertexE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i4 = alloca [4 x double], align 16   ; 7 uses
  %.sroa.0.i.i = alloca [4 x double], align 16    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47, !nonnull !162, !noundef !162
  %i.d = tail call ptr @__dynamic_cast(ptr nonnull %i.c, ptr nonnull @_ZTIN3g2o10HyperGraph6VertexE, ptr nonnull @_ZTIN3g2o9VertexSE3E, i64 0) #23 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47, !nonnull !162, !noundef !162
  %i.g = tail call ptr @__dynamic_cast(ptr nonnull %i.f, ptr nonnull @_ZTIN3g2o10HyperGraph6VertexE, ptr nonnull @_ZTIN3g2o14VertexPointXYZE, i64 0) #23 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.013.0.copyload = load <2 x double>, ptr %i.h, align 8 ; 3 uses
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.sroa.414.0.copyload = load double, ptr %.sroa.414.0..sroa_idx, align 8, !tbaa !66
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83   ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  store <2 x double> %.sroa.013.0.copyload, ptr %.sroa.0.i.i, align 16, !tbaa !66, !noalias !172
  %i.m = insertelement <2 x double> <double poison, double 1.000000e+00>, double %.sroa.414.0.copyload, i64 0
  %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx47 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16
  store <2 x double> %i.m, ptr %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx47, align 16, !tbaa !55, !noalias !172
  %i.n = load <2 x double>, ptr %i.l, align 16, !tbaa !66, !noalias !172
  %i.o = shufflevector <2 x double> %.sroa.013.0.copyload, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = fmul <2 x double> %i.o, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.r = load <2 x double>, ptr %i.q, align 16, !tbaa !66, !noalias !172
  %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 8
  %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i = load <2 x double>, ptr %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !noalias !172 ; 2 uses
  %i.s = shufflevector <2 x double> %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x double> %i.r, %i.s
  %i.u = fadd <2 x double> %i.p, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.w = load <2 x double>, ptr %i.v, align 16, !tbaa !66, !noalias !172
  %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16
  %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i = load <2 x double>, ptr %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !noalias !172 ; 4 uses
  %i.x = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = fmul <2 x double> %i.w, %i.x
  %i.z = fadd <2 x double> %i.u, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.ab = load <2 x double>, ptr %i.aa, align 16, !tbaa !66, !noalias !172
  %i.ac = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ad = fmul <2 x double> %i.ab, %i.ac
  %i.ae = fadd <2 x double> %i.ad, %i.z           ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %3 = load double, ptr %i.ai, align 16, !tbaa !66, !noalias !172
  %i.aj = extractelement <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, i64 1
  %i.ak = fmul double %i.aj, %3
  %4 = load double, ptr %i.af, align 16, !tbaa !66, !noalias !172
  %i.al = extractelement <2 x double> %.sroa.013.0.copyload, i64 0
  %i.am = fmul double %i.al, %4
  %5 = load double, ptr %i.ag, align 16, !tbaa !66, !noalias !172
  %i.an = extractelement <2 x double> %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i, i64 0
  %i.ao = fmul double %i.an, %5
  %i.ap = fadd double %i.am, %i.ao
  %6 = load double, ptr %i.ah, align 16, !tbaa !66, !noalias !172
  %i.aq = extractelement <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, i64 0
  %i.ar = fmul double %i.aq, %6
  %i.as = fadd double %i.ap, %i.ar
  %.sroa.4.16.vec.extract.i.i = fadd double %i.ak, %i.as
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i4)
  store <2 x double> %i.ae, ptr %.sroa.0.i.i4, align 16, !tbaa !66, !noalias !177
  %.sroa.0.i.i4.16.i.i4.16.i.i4.16.i.16.i.16..sroa_idx48 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i4, i64 16
  store double %.sroa.4.16.vec.extract.i.i, ptr %.sroa.0.i.i4.16.i.i4.16.i.i4.16.i.16.i.16..sroa_idx48, align 16, !tbaa !55, !noalias !177
  %.sroa.0.i.i4.24.i.i4.24.i.i4.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i4, i64 24
  store double 1.000000e+00, ptr %.sroa.0.i.i4.24.i.i4.24.i.i4.24.i.24.i.24..sroa_idx, align 8, !tbaa !55, !noalias !177
  %i.at = load <2 x double>, ptr %i.i, align 16, !tbaa !66, !noalias !177
  %i.au = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.av = fmul <2 x double> %i.au, %i.at
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.ax = load <2 x double>, ptr %i.aw, align 16, !tbaa !66, !noalias !177
  %.sroa.0.i.i4.8.i.i4.8.i.i4.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i4, i64 8
  %.sroa.0.i.i4.8..sroa.0.i.i4.8..sroa.0.i.i4.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i8 = load <2 x double>, ptr %.sroa.0.i.i4.8.i.i4.8.i.i4.8.i.8.i.8..sroa_idx, align 8, !noalias !177 ; 2 uses
  %i.ay = shufflevector <2 x double> %.sroa.0.i.i4.8..sroa.0.i.i4.8..sroa.0.i.i4.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i8, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = fmul <2 x double> %i.ax, %i.ay
  %i.ba = fadd <2 x double> %i.av, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.bc = load <2 x double>, ptr %i.bb, align 16, !tbaa !66, !noalias !177
  %.sroa.0.i.i4.16.i.i4.16.i.i4.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i4, i64 16
  %.sroa.0.i.i4.16..sroa.0.i.i4.16..sroa.0.i.i4.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i9 = load <2 x double>, ptr %.sroa.0.i.i4.16.i.i4.16.i.i4.16.i.16.i.16..sroa_idx, align 16, !noalias !177 ; 4 uses
  %i.bd = shufflevector <2 x double> %.sroa.0.i.i4.16..sroa.0.i.i4.16..sroa.0.i.i4.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i9, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = fmul <2 x double> %i.bc, %i.bd
  %i.bf = fadd <2 x double> %i.ba, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.bh = load <2 x double>, ptr %i.bg, align 16, !tbaa !66, !noalias !177
  %i.bi = shufflevector <2 x double> %.sroa.0.i.i4.16..sroa.0.i.i4.16..sroa.0.i.i4.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i9, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bj = fmul <2 x double> %i.bh, %i.bi
  %i.bk = fadd <2 x double> %i.bj, %i.bf
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 304
  %7 = load double, ptr %i.bo, align 16, !tbaa !66, !noalias !177
  %i.bp = extractelement <2 x double> %.sroa.0.i.i4.16..sroa.0.i.i4.16..sroa.0.i.i4.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i9, i64 1
  %i.bq = fmul double %i.bp, %7
  %8 = load double, ptr %i.bl, align 16, !tbaa !66, !noalias !177
  %i.br = extractelement <2 x double> %i.ae, i64 0
  %i.bs = fmul double %i.br, %8
  %9 = load double, ptr %i.bm, align 16, !tbaa !66, !noalias !177
  %i.bt = extractelement <2 x double> %.sroa.0.i.i4.8..sroa.0.i.i4.8..sroa.0.i.i4.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i8, i64 0
  %i.bu = fmul double %i.bt, %9
  %i.bv = fadd double %i.bs, %i.bu
  %10 = load double, ptr %i.bn, align 16, !tbaa !66, !noalias !177
  %i.bw = extractelement <2 x double> %.sroa.0.i.i4.16..sroa.0.i.i4.16..sroa.0.i.i4.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i9, i64 0
  %i.bx = fmul double %i.bw, %10
  %i.by = fadd double %i.bv, %i.bx
  %.sroa.4.16.vec.extract.i.i10 = fadd double %i.bq, %i.by
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i4)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  store <2 x double> %i.bk, ptr %i.bz, align 1, !tbaa !66
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  store double %.sroa.4.16.vec.extract.i.i10, ptr %i.ca, align 8, !tbaa !55
  %i.cb = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 216
  %i.cd = load ptr, ptr %i.cc, align 8
  tail call void %i.cd(ptr noundef nonnull align 8 dereferenceable(216) %i.g), !inline_history !182
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o15EdgeSE3PointXYZD0Ev(ptr noundef nonnull align 8 dereferenceable(616) %0) unnamed_addr #6 comdat align 2 {
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
define linkonce_odr noundef zeroext i1 @_ZN3g2o15EdgeSE3PointXYZ18setMeasurementDataEPKd(ptr noundef nonnull align 8 dereferenceable(616) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load <2 x double>, ptr %1, align 1, !tbaa !66
  store <2 x double> %i.b, ptr %i.a, align 8, !tbaa !66
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = getelementptr i8, ptr %1, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !55
  store double %i.e, ptr %i.c, align 8, !tbaa !55
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o15EdgeSE3PointXYZ18getMeasurementDataEPd(ptr noundef nonnull align 8 dereferenceable(616) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load <2 x double>, ptr %i.a, align 8, !tbaa !66
  store <2 x double> %i.b, ptr %1, align 1, !tbaa !66
  %i.c = getelementptr i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load double, ptr %i.d, align 8, !tbaa !55
  store double %i.e, ptr %i.c, align 8, !tbaa !55
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o15EdgeSE3PointXYZ20measurementDimensionEv(ptr noundef nonnull align 8 dereferenceable(616) %0) unnamed_addr #7 comdat align 2 {
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
  %i.c = load <2 x double>, ptr %i.b, align 8, !tbaa !66
  %i.d = load <2 x double>, ptr %i.a, align 8     ; 3 uses
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer
  %i.f = fmul <2 x double> %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = load <2 x double>, ptr %i.g, align 8, !tbaa !66
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.j = load <2 x double>, ptr %i.i, align 8     ; 5 uses
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x double> %i.h, %i.k
  %i.m = fadd <2 x double> %i.f, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.o = load <2 x double>, ptr %i.n, align 8, !tbaa !66
  %i.p = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.q = fmul <2 x double> %i.o, %i.p
  %i.r = fadd <2 x double> %i.q, %i.m
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.t = load double, ptr %i.s, align 8, !tbaa !55
  %i.u = extractelement <2 x double> %i.d, i64 0
  %i.v = fmul double %i.u, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.x = load double, ptr %i.w, align 8, !tbaa !55
  %i.y = extractelement <2 x double> %i.j, i64 0
  %i.z = fmul double %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !55
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
  %1 = alloca %"class.Eigen::Product.1112", align 8 ; 6 uses
  %2 = alloca %"struct.Eigen::internal::add_assign_op", align 1 ; 3 uses
  %.sroa.027.i.i2 = alloca %"class.Eigen::Map.55", align 8 ; 4 uses
  %3 = alloca %"class.Eigen::Product.1112", align 8 ; 6 uses
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
  %i.m = load <2 x double>, ptr %i.k, align 8, !tbaa !66 ; 2 uses
end_hunk_0

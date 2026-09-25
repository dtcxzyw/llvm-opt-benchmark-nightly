Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_project_p2sc?download=true
inline.NumInlined: 4612
inline.NumDeleted: 2661
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN3g2o8BaseEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE21readInformationMatrixERSi:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load i32, ptr %i.al, align 8, !tbaa !57 ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ap = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.ao) ; 0 uses
  %i.aq = load double, ptr %i.ao, align 8, !tbaa !59
  %gep.133 = getelementptr inbounds nuw i8, ptr %0, i64 208
  store double %i.aq, ptr %gep.133, align 8, !tbaa !59
  %i.ar = load ptr, ptr %1, align 8, !tbaa !41
  %i.as = getelementptr i8, ptr %i.ar, i64 -24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds i8, ptr %1, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !57 ; 2 uses
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %.critedge2, label %.critedge
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK3g2o15EdgeProjectP2SC5writeERSo(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load double, ptr %i.a, align 8, !tbaa !59
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.b)
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.8, i64 noundef 1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.f = load double, ptr %i.e, align 8, !tbaa !59
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.f)
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.8, i64 noundef 1) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = load double, ptr %i.i, align 8, !tbaa !59
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.j)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.8, i64 noundef 1) ; 0 uses
  %i.m = tail call noundef zeroext i1 @_ZNK3g2o8BaseEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE22writeInformationMatrixERSo(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 0 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !41
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %1, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !57
  %i.t = icmp eq i32 %i.s, 0
  ret i1 %i.t
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o8BaseEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE22writeInformationMatrixERSo(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load double, ptr %i.a, align 8, !tbaa !59
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.b)
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.8, i64 noundef 1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = load double, ptr %i.e, align 8, !tbaa !59
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.f)
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.8, i64 noundef 1) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.j = load double, ptr %i.i, align 8, !tbaa !59
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.j)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.8, i64 noundef 1) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.n = load double, ptr %i.m, align 8, !tbaa !59
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.n)
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.8, i64 noundef 1) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.r = load double, ptr %i.q, align 8, !tbaa !59
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.r)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.8, i64 noundef 1) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.v = load double, ptr %i.u, align 8, !tbaa !59
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.v)
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.8, i64 noundef 1) ; 0 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !41
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %1, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !57
  %i.ae = icmp eq i32 %i.ad, 0
  ret i1 %i.ae
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3g2o15EdgeProjectP2SC12computeErrorEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(384) initializes((272, 296)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i = alloca { %"class.Eigen::Matrix", %"struct.Eigen::internal::evaluator.279" }, align 16 ; 7 uses
  %.sroa.0 = alloca [4 x double], align 16        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43   ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.g = load <2 x double>, ptr %i.f, align 1, !tbaa !60 ; 4 uses
  store <2 x double> %i.g, ptr %.sroa.0, align 16, !tbaa !60
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.i = load double, ptr %i.h, align 8, !tbaa !59
  %i.j = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.i, i64 0
  %.sroa.0.16..sroa_idx90 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  store <2 x double> %i.j, ptr %.sroa.0.16..sroa_idx90, align 16, !tbaa !59
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 432
  %i.l = load <2 x double>, ptr %i.k, align 1, !tbaa !60
  %i.m = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.n = fmul <2 x double> %i.m, %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 456
  %i.p = load <2 x double>, ptr %i.o, align 1, !tbaa !60
  %.sroa.0.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.0.8..sroa.0.8..sroa.0.8. = load <2 x double>, ptr %.sroa.0.8..sroa_idx, align 8 ; 3 uses
  %i.q = shufflevector <2 x double> %.sroa.0.8..sroa.0.8..sroa.0.8., <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.r = fmul <2 x double> %i.p, %i.q
  %i.s = fadd <2 x double> %i.n, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 480
  %i.u = load <2 x double>, ptr %i.t, align 1, !tbaa !60
  %.sroa.0.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  %.sroa.0.16..sroa.0.16..sroa.0.16.61 = load <2 x double>, ptr %.sroa.0.16..sroa_idx, align 16 ; 3 uses
  %i.v = shufflevector <2 x double> %.sroa.0.16..sroa.0.16..sroa.0.16.61, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.w = fmul <2 x double> %i.u, %i.v
  %i.x = fadd <2 x double> %i.s, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 504
  %i.z = load <2 x double>, ptr %i.y, align 1, !tbaa !60
  %i.aa = shufflevector <2 x double> %.sroa.0.16..sroa.0.16..sroa.0.16.61, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ab = fmul <2 x double> %i.z, %i.aa
  %i.ac = fadd <2 x double> %i.ab, %i.x
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 448
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !59
  %i.af = extractelement <2 x double> %i.g, i64 0
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !59
  %i.ai = extractelement <2 x double> %.sroa.0.8..sroa.0.8..sroa.0.8., i64 0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 496
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !59
  %i.al = extractelement <2 x double> %.sroa.0.16..sroa.0.16..sroa.0.16.61, i64 0 ; 2 uses
  %i.am = fmul double %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 520
  %i.ao = load double, ptr %i.an, align 8, !tbaa !59
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 336
  %i.aq = load <2 x double>, ptr %i.ap, align 8, !tbaa !60
  %i.ar = fmul <2 x double> %i.aq, %i.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  %i.at = load <2 x double>, ptr %i.as, align 8, !tbaa !60
  %i.au = fmul <2 x double> %i.at, %i.q
  %i.av = fadd <2 x double> %i.ar, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 384
  %i.ax = load <2 x double>, ptr %i.aw, align 8, !tbaa !60
  %i.ay = fmul <2 x double> %i.ax, %i.v
  %i.az = fadd <2 x double> %i.av, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 408
  %i.bb = load <2 x double>, ptr %i.ba, align 8, !tbaa !60
  %i.bc = fmul <2 x double> %i.bb, %i.aa
  %i.bd = fadd <2 x double> %i.bc, %i.az
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 352
  %i.bf = load double, ptr %i.be, align 8, !tbaa !59
  %i.bg = fmul double %i.bf, %i.af
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 376
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !59
  %i.bj = fmul double %i.bi, %i.ai
  %i.bk = fadd double %i.bg, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 400
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !59
  %i.bn = fmul double %i.bm, %i.al
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 424
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !59
  %i.bq = fadd double %i.bn, %i.bp
  %i.br = fadd double %i.bk, %i.bq                ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !59
  %.sroa.045.8.vec.insert = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.bt, i64 0
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 248 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.bv = fsub <2 x double> %i.bd, %.sroa.045.8.vec.insert ; 3 uses
  store <2 x double> %i.bv, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i, align 16, !tbaa !60
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx91 = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store double %i.br, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx91, align 16, !tbaa !59
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.24.i.i.i.i.i.i.24.i.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  store ptr %i.bu, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.24.i.i.i.i.i.i.24.i.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx, align 8, !tbaa !63
  %i.bw = load <2 x double>, ptr %i.bu, align 8, !tbaa !60
  %i.bx = extractelement <2 x double> %i.bv, i64 0
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 272
  %i.bz = load <2 x double>, ptr %i.by, align 8, !tbaa !60
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.8..sroa.2.i.i.8..sroa.2.i.8..sroa.2.i.8..sroa.2.8..sroa.2.8..sroa.2.16..i.i.i.i.i.i.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %i.cb = load <2 x double>, ptr %i.ca, align 8, !tbaa !60
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.16..sroa.2.i.i.i.i.i.16..sroa.2.i.i.i.i.16..sroa.2.i.i.i.i.16..sroa.2.i.i.i.16..sroa.2.i.i.i.16..sroa.2.i.i.16..sroa.2.i.i.16..sroa.2.i.16..sroa.2.i.16..sroa.2.16..sroa.2.16..sroa.2.24..i.i.i.i.i.i.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !59
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !59
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 312
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i)
  %foldExtExtBinop = fmul <2 x double> %i.bv, %i.bw
  %foldExtExtBinop82 = fmul <2 x double> %i.bz, %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.8..sroa.2.i.i.8..sroa.2.i.8..sroa.2.i.8..sroa.2.8..sroa.2.8..sroa.2.16..i.i.i.i.i.i.i.i.i.i.i.i
  %foldExtExtBinop84 = fadd <2 x double> %foldExtExtBinop, %foldExtExtBinop82
  %foldExtExtBinop86 = fmul <2 x double> %i.cb, %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.16..sroa.2.i.i.i.i.i.16..sroa.2.i.i.i.i.16..sroa.2.i.i.i.i.16..sroa.2.i.i.i.16..sroa.2.i.i.i.16..sroa.2.i.i.16..sroa.2.i.i.16..sroa.2.i.16..sroa.2.i.16..sroa.2.16..sroa.2.16..sroa.2.24..i.i.i.i.i.i.i.i.i.i.i.i
  %foldExtExtBinop88 = fadd <2 x double> %foldExtExtBinop84, %foldExtExtBinop86
  %1 = fmul double %i.bx, %i.cd
  %2 = fadd double %i.am, %i.ao
  %i.ci = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.cj = insertelement <2 x double> %i.ci, double %i.cf, i64 1
  %i.ck = shufflevector <2 x double> %i.g, <2 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.8..sroa.2.i.i.8..sroa.2.i.8..sroa.2.i.8..sroa.2.8..sroa.2.8..sroa.2.16..i.i.i.i.i.i.i.i.i.i.i.i, <2 x i32> <i32 0, i32 2>
  %i.cl = fmul <2 x double> %i.cj, %i.ck
  %i.cm = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.cn = insertelement <2 x double> %i.cm, double %i.ch, i64 1
  %i.co = insertelement <2 x double> %.sroa.0.8..sroa.0.8..sroa.0.8., double %i.br, i64 1
  %i.cp = fmul <2 x double> %i.cn, %i.co
  %i.cq = fadd <2 x double> %i.cl, %i.cp
  %i.cr = insertelement <2 x double> poison, double %2, i64 0
  %i.cs = insertelement <2 x double> %i.cr, double %1, i64 1
  %i.ct = fadd <2 x double> %i.cq, %i.cs
  %i.cu = shufflevector <2 x double> <double 1.000000e+00, double poison>, <2 x double> %foldExtExtBinop88, <2 x i32> <i32 0, i32 2>
  %i.cv = fdiv <2 x double> %i.cu, %i.ct          ; 2 uses
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = fmul <2 x double> %i.ac, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.da = load <2 x double>, ptr %i.cy, align 8, !tbaa !60
  %i.db = fsub <2 x double> %i.cx, %i.da
  store <2 x double> %i.db, ptr %i.cz, align 8, !tbaa !60
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.de = load double, ptr %i.dd, align 8, !tbaa !59
  %i.df = extractelement <2 x double> %i.cv, i64 1
  %i.dg = fsub double %i.df, %i.de
  store double %i.dg, ptr %i.dc, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o15EdgeProjectP2SC14linearizeOplusEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(384) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0 = alloca [3 x double], align 16        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 31 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.g = load <2 x double>, ptr %i.f, align 1, !tbaa !60 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.i = load double, ptr %i.h, align 8, !tbaa !59 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 352 ; 3 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !59
  %i.l = extractelement <2 x double> %i.g, i64 0
  %i.m = fmul double %i.k, %i.l
  %i.n = getelementptr i8, ptr %i.d, i64 376      ; 3 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !59
  %i.p = extractelement <2 x double> %i.g, i64 1
  %i.q = fmul double %i.o, %i.p
  %i.r = fadd double %i.m, %i.q
  %i.s = getelementptr i8, ptr %i.d, i64 400      ; 3 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !59
  %i.u = fmul double %i.t, %i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 424
  %i.w = load double, ptr %i.v, align 8, !tbaa !59
  %i.x = fadd double %i.u, %i.w
  %i.y = fadd double %i.r, %i.x                   ; 29 uses
  %i.z = fmul double %i.y, %i.y
  %i.aa = fdiv double 1.000000e+00, %i.z          ; 3 uses
  %i.ab = fcmp uno double %i.aa, 0.000000e+00
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str)
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.ac), !inline_history !151 ; 0 uses
  tail call void @abort() #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = insertelement <2 x double> poison, double %i.i, i64 0
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 408
  %i.ag = load <2 x double>, ptr %i.af, align 8, !tbaa !60
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 336 ; 3 uses
  %i.ai = load <2 x double>, ptr %i.ah, align 8, !tbaa !60
  %i.aj = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = fmul <2 x double> %i.aj, %i.ai
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 360 ; 3 uses
  %i.am = load <2 x double>, ptr %i.al, align 8, !tbaa !60
  %.sroa.0288.sroa.0.8.vec.extract = extractelement <2 x double> %i.g, i64 1
  %i.an = bitcast double %.sroa.0288.sroa.0.8.vec.extract to <1 x double>
  %i.ao = shufflevector <1 x double> %i.an, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x double> %i.am, %i.ao
  %i.aq = fadd <2 x double> %i.ak, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 384 ; 3 uses
  %i.as = load <2 x double>, ptr %i.ar, align 8, !tbaa !60
  %i.at = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x double> %i.at, %i.as
  %i.av = fadd <2 x double> %i.au, %i.aq
  %i.aw = fadd <2 x double> %i.ag, %i.av          ; 2 uses
  %.sroa.0261.8.vec.extract = extractelement <2 x double> %i.aw, i64 1 ; 9 uses
  %.sroa.0261.0.vec.extract = extractelement <2 x double> %i.aw, i64 0 ; 10 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !59
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.ba = load <2 x double>, ptr %i.az, align 8, !tbaa !60
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 248
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !59
  %i.bd = fmul double %i.aa, %i.bc                ; 18 uses
  %i.be = getelementptr i8, ptr %i.d, i64 280
  %i.bf = load double, ptr %i.be, align 8, !tbaa !59
  %i.bg = fmul double %i.aa, %i.bf                ; 9 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %i.bi = load double, ptr %i.bh, align 16, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.bj = fsub <2 x double> %i.g, %i.ba           ; 4 uses
  store <2 x double> %i.bj, ptr %.sroa.0, align 16, !tbaa !60
  %i.bk = fsub double %i.i, %i.ay                 ; 2 uses
  %.sroa.0.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  store double %i.bk, ptr %.sroa.0.16..sroa_idx, align 16, !tbaa !59
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 528
  %i.bm = load <2 x double>, ptr %i.bl, align 16, !tbaa !60
  %i.bn = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bo = fmul <2 x double> %i.bn, %i.bm
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 552
  %i.bq = load <2 x double>, ptr %i.bp, align 8, !tbaa !60
  %.sroa.0.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.0.8..sroa.0.8..sroa.0.8. = load <2 x double>, ptr %.sroa.0.8..sroa_idx, align 8 ; 5 uses
  %i.br = shufflevector <2 x double> %.sroa.0.8..sroa.0.8..sroa.0.8., <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bs = fmul <2 x double> %i.bq, %i.br
  %i.bt = fadd <2 x double> %i.bo, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 576
  %i.bv = load <2 x double>, ptr %i.bu, align 16, !tbaa !60
  %i.bw = shufflevector <2 x double> %.sroa.0.8..sroa.0.8..sroa.0.8., <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.bx = fmul <2 x double> %i.bv, %i.bw
  %i.by = fadd <2 x double> %i.bx, %i.bt          ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 544
  %i.ca = load double, ptr %i.bz, align 16, !tbaa !59
  %i.cb = extractelement <2 x double> %i.bj, i64 0
  %i.cc = fmul double %i.ca, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 568
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !59
  %i.cf = extractelement <2 x double> %.sroa.0.8..sroa.0.8..sroa.0.8., i64 0
  %i.cg = fmul double %i.ce, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 592
  %i.ci = load double, ptr %i.ch, align 16, !tbaa !59
  %i.cj = fmul double %i.bk, %i.ci
  %i.ck = fadd double %i.cg, %i.cj
  %i.cl = fadd double %i.cc, %i.ck
  %.sroa.0174.0.vec.extract = extractelement <2 x double> %i.by, i64 0 ; 2 uses
  %i.cm = fneg double %i.cl                       ; 3 uses
  %i.cn = fmul double %.sroa.0261.0.vec.extract, %i.cm
  %i.co = tail call double @llvm.fmuladd.f64(double %i.y, double %.sroa.0174.0.vec.extract, double %i.cn)
  %i.cp = fmul double %i.bd, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !187, !nonnull !80, !align !81
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !82 ; 18 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 72
  store double %i.cp, ptr %i.ct, align 8, !tbaa !59
  %.sroa.0174.8.vec.extract = extractelement <2 x double> %i.by, i64 1
  %i.cu = fmul double %.sroa.0261.8.vec.extract, %i.cm
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.y, double %.sroa.0174.8.vec.extract, double %i.cu)
  %i.cw = fmul double %i.bg, %i.cv
  %i.cx = getelementptr i8, ptr %i.cs, i64 80
  store double %i.cw, ptr %i.cx, align 8, !tbaa !59
  %i.cy = fsub double %.sroa.0261.0.vec.extract, %i.bi ; 9 uses
  %i.cz = fmul double %i.cy, %i.cm
  %i.da = tail call double @llvm.fmuladd.f64(double %i.y, double %.sroa.0174.0.vec.extract, double %i.cz)
  %i.db = fmul double %i.bd, %i.da
  %i.dc = getelementptr i8, ptr %i.cs, i64 88
  store double %i.db, ptr %i.dc, align 8, !tbaa !59
  %i.dd = getelementptr inbounds nuw i8, ptr %i.d, i64 600
  %i.de = load <2 x double>, ptr %i.dd, align 8, !tbaa !60
  %i.df = fmul <2 x double> %i.de, %i.bn
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 624
  %i.dh = load <2 x double>, ptr %i.dg, align 16, !tbaa !60
  %i.di = fmul <2 x double> %i.dh, %i.br
  %i.dj = fadd <2 x double> %i.df, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 648
  %i.dl = load <2 x double>, ptr %i.dk, align 8, !tbaa !60
  %i.dm = fmul <2 x double> %i.dl, %i.bw
  %i.dn = fadd <2 x double> %i.dm, %i.dj          ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 616
  %i.dp = load double, ptr %i.do, align 8, !tbaa !59
  %i.dq = extractelement <2 x double> %i.bj, i64 0
  %i.dr = fmul double %i.dq, %i.dp
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 640
  %i.dt = load double, ptr %i.ds, align 16, !tbaa !59
  %i.du = extractelement <2 x double> %.sroa.0.8..sroa.0.8..sroa.0.8., i64 0 ; 2 uses
  %i.dv = fmul double %i.du, %i.dt
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 664
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !59
  %i.dy = extractelement <2 x double> %.sroa.0.8..sroa.0.8..sroa.0.8., i64 1 ; 2 uses
  %i.dz = fmul double %i.dy, %i.dx
  %i.ea = fadd double %i.dv, %i.dz
  %i.eb = fadd double %i.dr, %i.ea
  %.sroa.0174.0.vec.extract178 = extractelement <2 x double> %i.dn, i64 0 ; 2 uses
  %i.ec = fneg double %i.eb                       ; 3 uses
  %i.ed = fmul double %.sroa.0261.0.vec.extract, %i.ec
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.y, double %.sroa.0174.0.vec.extract178, double %i.ed)
  %i.ef = fmul double %i.bd, %i.ee
  %i.eg = getelementptr i8, ptr %i.cs, i64 96
  store double %i.ef, ptr %i.eg, align 8, !tbaa !59
  %.sroa.0174.8.vec.extract210 = extractelement <2 x double> %i.dn, i64 1
  %i.eh = fmul double %.sroa.0261.8.vec.extract, %i.ec
  %i.ei = tail call double @llvm.fmuladd.f64(double %i.y, double %.sroa.0174.8.vec.extract210, double %i.eh)
  %i.ej = fmul double %i.bg, %i.ei
  %i.ek = getelementptr i8, ptr %i.cs, i64 104
  store double %i.ej, ptr %i.ek, align 8, !tbaa !59
  %i.el = fmul double %i.cy, %i.ec
  %i.em = tail call double @llvm.fmuladd.f64(double %i.y, double %.sroa.0174.0.vec.extract178, double %i.el)
  %i.en = fmul double %i.bd, %i.em
  %i.eo = getelementptr i8, ptr %i.cs, i64 112
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se3_prior?download=true
inline.NumInlined: 6725
inline.NumDeleted: 3505
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN3g2o12EdgeSE3Prior18setMeasurementDataEPKd:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.k, ptr noundef nonnull align 16 dereferenceable(128) %2, i64 128, i1 false), !tbaa.struct !231
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.l = load double, ptr %i.k, align 16, !tbaa !8, !noalias !232
  %.sroa.0.0.vec.insert = insertelement <2 x double> poison, double %i.l, i64 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = load double, ptr %i.m, align 16, !tbaa !8, !noalias !232
  %.sroa.0.8.vec.insert = insertelement <2 x double> %.sroa.0.0.vec.insert, double %i.n, i64 1 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.p = load double, ptr %i.o, align 16, !tbaa !8, !noalias !232 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.r = load double, ptr %i.q, align 8, !tbaa !8, !noalias !232
  %.sroa.9.32.vec.insert = insertelement <2 x double> poison, double %i.r, i64 0
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.t = load double, ptr %i.s, align 8, !tbaa !8, !noalias !232
  %.sroa.9.40.vec.insert = insertelement <2 x double> %.sroa.9.32.vec.insert, double %i.t, i64 1 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.v = load double, ptr %i.u, align 8, !tbaa !8, !noalias !232 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.x = load double, ptr %i.w, align 16, !tbaa !8, !noalias !232
  %.sroa.15.64.vec.insert = insertelement <2 x double> poison, double %i.x, i64 0
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.z = load double, ptr %i.y, align 16, !tbaa !8, !noalias !232
  %.sroa.15.72.vec.insert = insertelement <2 x double> %.sroa.15.64.vec.insert, double %i.z, i64 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ab = load double, ptr %i.aa, align 16, !tbaa !8, !noalias !232 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ad = fneg <2 x double> %.sroa.0.8.vec.insert
  %i.ae = load double, ptr %i.ac, align 16, !tbaa !8, !noalias !232 ; 2 uses
  %i.af = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = fmul <2 x double> %i.ag, %i.ad
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !8, !noalias !232 ; 2 uses
  %i.ak = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = fmul <2 x double> %.sroa.9.40.vec.insert, %i.al
  %i.an = fsub <2 x double> %i.ah, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ap = load double, ptr %i.ao, align 16, !tbaa !8, !noalias !232 ; 2 uses
  %i.aq = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.as = fmul <2 x double> %.sroa.15.72.vec.insert, %i.ar
  %i.at = fsub <2 x double> %i.an, %i.as
  %i.au = fneg double %i.ab
  %i.av = fmul double %i.ap, %i.au
  %i.aw = fmul double %i.v, %i.aj
  %i.ax = fsub double %i.av, %i.aw
  %i.ay = fmul double %i.p, %i.ae
  %i.az = fsub double %i.ax, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 672
  store <2 x double> %.sroa.0.8.vec.insert, ptr %i.ba, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 688
  store double %i.p, ptr %.sroa.6.0..sroa_idx, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 696
  store double 0.000000e+00, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 704
  store <2 x double> %.sroa.9.40.vec.insert, ptr %.sroa.9.0..sroa_idx, align 16
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 720
  store double %i.v, ptr %.sroa.12.0..sroa_idx, align 16
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 728
  store double 0.000000e+00, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 736
  store <2 x double> %.sroa.15.72.vec.insert, ptr %.sroa.15.0..sroa_idx, align 16
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 752
  store double %i.ab, ptr %.sroa.18.0..sroa_idx, align 16
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 760
  store double 0.000000e+00, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 768
  store <2 x double> %i.at, ptr %.sroa.21.0..sroa_idx, align 16
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 784
  store double %i.az, ptr %.sroa.22.0..sroa_idx, align 16
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 792
  store double 1.000000e+00, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !49
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o12EdgeSE3Prior18getMeasurementDataEPd(ptr noundef nonnull align 16 dereferenceable(816) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix.57", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN3g2o8internal10toVectorQTERKN5Eigen9TransformIdLi3ELi1ELi0EEE(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.57") align 8 %2, ptr noundef nonnull align 16 dereferenceable(128) %i.a)
  %i.b = load <2 x double>, ptr %2, align 16, !tbaa !49
  store <2 x double> %i.b, ptr %1, align 1, !tbaa !49
  %i.c = getelementptr i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load <2 x double>, ptr %i.d, align 16, !tbaa !49
  store <2 x double> %i.e, ptr %i.c, align 1, !tbaa !49
  %i.f = getelementptr i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load <2 x double>, ptr %i.g, align 16, !tbaa !49
  store <2 x double> %i.h, ptr %i.f, align 1, !tbaa !49
  %i.i = getelementptr i8, ptr %1, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.k = load double, ptr %i.j, align 16, !tbaa !8
  store double %i.k, ptr %i.i, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o12EdgeSE3Prior20measurementDimensionEv(ptr noundef nonnull align 16 dereferenceable(816) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 7
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE9errorDataEv(ptr noundef nonnull align 16 dereferenceable(640) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE9errorDataEv(ptr noundef nonnull align 16 dereferenceable(640) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE15informationDataEv(ptr noundef nonnull align 16 dereferenceable(640) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE15informationDataEv(ptr noundef nonnull align 16 dereferenceable(640) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE4chi2Ev(ptr noundef nonnull align 16 dereferenceable(640) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = load <2 x double>, ptr %i.b, align 16, !tbaa !49
  %i.d = load <2 x double>, ptr %i.a, align 16    ; 2 uses
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.f = fmul <2 x double> %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.h = load <2 x double>, ptr %i.g, align 16, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.j = load <1 x double>, ptr %i.i, align 8
  %i.k = shufflevector <1 x double> %i.j, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.l = fmul <2 x double> %i.h, %i.k
  %i.m = fadd <2 x double> %i.f, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.o = load <2 x double>, ptr %i.n, align 16, !tbaa !49
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.q = load <2 x double>, ptr %i.p, align 16    ; 2 uses
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.s = fmul <2 x double> %i.o, %i.r
  %i.t = fadd <2 x double> %i.m, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.v = load <2 x double>, ptr %i.u, align 16, !tbaa !49
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.x = load <1 x double>, ptr %i.w, align 8
  %i.y = shufflevector <1 x double> %i.x, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.z = fmul <2 x double> %i.v, %i.y
  %i.aa = fadd <2 x double> %i.t, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ac = load <2 x double>, ptr %i.ab, align 16, !tbaa !49
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.ae = load <2 x double>, ptr %i.ad, align 16  ; 3 uses
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ag = fmul <2 x double> %i.ac, %i.af
  %i.ah = fadd <2 x double> %i.aa, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.aj = load <2 x double>, ptr %i.ai, align 16, !tbaa !49
  %i.ak = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.al = fmul <2 x double> %i.aj, %i.ak
  %i.am = fadd <2 x double> %i.al, %i.ah
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ao = load <2 x double>, ptr %i.an, align 16, !tbaa !49
  %i.ap = fmul <2 x double> %i.e, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ar = load <2 x double>, ptr %i.aq, align 16, !tbaa !49
  %i.as = fmul <2 x double> %i.k, %i.ar
  %i.at = fadd <2 x double> %i.ap, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.av = load <2 x double>, ptr %i.au, align 16, !tbaa !49
  %i.aw = fmul <2 x double> %i.r, %i.av
  %i.ax = fadd <2 x double> %i.at, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.az = load <2 x double>, ptr %i.ay, align 16, !tbaa !49
  %i.ba = fmul <2 x double> %i.y, %i.az
  %i.bb = fadd <2 x double> %i.ax, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.bd = load <2 x double>, ptr %i.bc, align 16, !tbaa !49
  %i.be = fmul <2 x double> %i.af, %i.bd
  %i.bf = fadd <2 x double> %i.bb, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.bh = load <2 x double>, ptr %i.bg, align 16, !tbaa !49
  %i.bi = fmul <2 x double> %i.ak, %i.bh
  %i.bj = fadd <2 x double> %i.bi, %i.bf
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bl = load <2 x double>, ptr %i.bk, align 16, !tbaa !49
  %i.bm = fmul <2 x double> %i.e, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bo = load <2 x double>, ptr %i.bn, align 16, !tbaa !49
  %i.bp = fmul <2 x double> %i.k, %i.bo
  %i.bq = fadd <2 x double> %i.bm, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.bs = load <2 x double>, ptr %i.br, align 16, !tbaa !49
  %i.bt = fmul <2 x double> %i.r, %i.bs
  %i.bu = fadd <2 x double> %i.bq, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.bw = load <2 x double>, ptr %i.bv, align 16, !tbaa !49
  %i.bx = fmul <2 x double> %i.y, %i.bw
  %i.by = fadd <2 x double> %i.bu, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ca = load <2 x double>, ptr %i.bz, align 16, !tbaa !49
  %i.cb = fmul <2 x double> %i.af, %i.ca
  %i.cc = fadd <2 x double> %i.by, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ce = load <2 x double>, ptr %i.cd, align 16, !tbaa !49
  %i.cf = fmul <2 x double> %i.ak, %i.ce
  %i.cg = fadd <2 x double> %i.cf, %i.cc
  %i.ch = fmul <2 x double> %i.d, %i.am
  %i.ci = fmul <2 x double> %i.q, %i.bj
  %i.cj = fmul <2 x double> %i.ae, %i.cg
  %i.ck = fadd <2 x double> %i.ci, %i.cj
  %i.cl = fadd <2 x double> %i.ch, %i.ck          ; 2 uses
  %shift = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.cl, %shift
  %i.cm = extractelement <2 x double> %foldExtExtBinop, i64 0
  ret double %i.cm
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEJNS_9VertexSE3EEE22constructQuadraticFormEv(ptr noundef nonnull align 16 dereferenceable(664) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Eigen::Product.1302", align 8 ; 6 uses
  %2 = alloca %"struct.Eigen::internal::add_assign_op", align 1 ; 3 uses
  %.sroa.027.i.i2 = alloca %"class.Eigen::Map", align 8 ; 4 uses
  %3 = alloca %"class.Eigen::Product.1302", align 8 ; 6 uses
  %4 = alloca %"struct.Eigen::internal::add_assign_op", align 1 ; 3 uses
  %.sroa.027.i.i = alloca %"class.Eigen::Map", align 8 ; 4 uses
  %.sroa.2.i = alloca <2 x double>, align 16      ; 5 uses
  %5 = alloca %"class.Eigen::Matrix.346", align 8 ; 4 uses
  %6 = alloca %"class.Eigen::Matrix.18", align 16 ; 21 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !235
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 16, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef double %i.e(ptr noundef nonnull align 16 dereferenceable(640) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.g = load ptr, ptr %i.a, align 16, !tbaa !235 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.g, double noundef %i.f, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.m = load <2 x double>, ptr %i.k, align 16, !tbaa !49
  %i.n = load <1 x double>, ptr %i.l, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.p = load <2 x double>, ptr %i.o, align 16, !tbaa !49
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.r = load <1 x double>, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.t = load <2 x double>, ptr %i.s, align 16, !tbaa !49
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.v = load <1 x double>, ptr %i.u, align 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.x = load <2 x double>, ptr %i.w, align 16, !tbaa !49
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.z = load <2 x double>, ptr %i.y, align 8     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ab = load <2 x double>, ptr %i.aa, align 16, !tbaa !49
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ad = load <2 x double>, ptr %i.ac, align 16, !tbaa !49
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.af = load double, ptr %i.ae, align 8, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ah = load <2 x double>, ptr %i.ag, align 16, !tbaa !49
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.aj = load <2 x double>, ptr %i.ai, align 16, !tbaa !49
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.al = load <2 x double>, ptr %i.ak, align 16, !tbaa !49
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.an = load <2 x double>, ptr %i.am, align 16, !tbaa !49
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ap = load <2 x double>, ptr %i.ao, align 16, !tbaa !49
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ar = load <2 x double>, ptr %i.aq, align 16, !tbaa !49
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.at = load <2 x double>, ptr %i.as, align 16, !tbaa !49
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.av = load <2 x double>, ptr %i.au, align 16, !tbaa !49
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ax = load <2 x double>, ptr %i.aw, align 16, !tbaa !49
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.az = load <2 x double>, ptr %i.ay, align 16, !tbaa !49
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.bb = load <2 x double>, ptr %i.ba, align 16, !tbaa !49
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.bd = load <2 x double>, ptr %i.bc, align 16, !tbaa !49
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bf = load double, ptr %i.be, align 8, !tbaa !8, !noalias !236 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i)
  store double %i.bf, ptr %.sroa.2.i, align 16, !tbaa !242, !alias.scope !244, !noalias !239
  %.sroa.2.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2.i, i64 8
  store ptr %i.k, ptr %.sroa.2.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !247, !alias.scope !244, !noalias !239
  %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i = load <2 x double>, ptr %.sroa.2.i, align 16, !noalias !239 ; 2 uses
  %bc.i.i.i.i.i.i.i = bitcast <2 x double> %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i to <2 x i64>
  %i.bg = extractelement <2 x i64> %bc.i.i.i.i.i.i.i, i64 1
  %i.bh = inttoptr i64 %i.bg to ptr               ; 18 uses
  %i.bi = shufflevector <2 x double> %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i, <2 x double> poison, <2 x i32> zeroinitializer ; 18 uses
  %i.bj = load <2 x double>, ptr %i.bh, align 16, !tbaa !49, !noalias !239
  %i.bk = fmul <2 x double> %i.bi, %i.bj
  store <2 x double> %i.bk, ptr %6, align 16, !tbaa !49, !alias.scope !239
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bn = load <2 x double>, ptr %i.bm, align 16, !tbaa !49, !noalias !239
  %i.bo = fmul <2 x double> %i.bi, %i.bn
  store <2 x double> %i.bo, ptr %i.bl, align 16, !tbaa !49, !alias.scope !239
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.br = load <2 x double>, ptr %i.bq, align 16, !tbaa !49, !noalias !239
  %i.bs = fmul <2 x double> %i.bi, %i.br
  store <2 x double> %i.bs, ptr %i.bp, align 16, !tbaa !49, !alias.scope !239
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bv = load <2 x double>, ptr %i.bu, align 16, !tbaa !49, !noalias !239
  %i.bw = fmul <2 x double> %i.bi, %i.bv
  store <2 x double> %i.bw, ptr %i.bt, align 16, !tbaa !49, !alias.scope !239
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.bz = load <2 x double>, ptr %i.by, align 16, !tbaa !49, !noalias !239
  %i.ca = fmul <2 x double> %i.bi, %i.bz
  store <2 x double> %i.ca, ptr %i.bx, align 16, !tbaa !49, !alias.scope !239
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  %i.cd = load <2 x double>, ptr %i.cc, align 16, !tbaa !49, !noalias !239
  %i.ce = fmul <2 x double> %i.bi, %i.cd
  store <2 x double> %i.ce, ptr %i.cb, align 16, !tbaa !49, !alias.scope !239
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bh, i64 96
  %i.ch = load <2 x double>, ptr %i.cg, align 16, !tbaa !49, !noalias !239
  %i.ci = fmul <2 x double> %i.bi, %i.ch
  store <2 x double> %i.ci, ptr %i.cf, align 16, !tbaa !49, !alias.scope !239
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bh, i64 112
  %i.cl = load <2 x double>, ptr %i.ck, align 16, !tbaa !49, !noalias !239
  %i.cm = fmul <2 x double> %i.bi, %i.cl
  store <2 x double> %i.cm, ptr %i.cj, align 16, !tbaa !49, !alias.scope !239
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.co = getelementptr inbounds nuw i8, ptr %i.bh, i64 128
  %i.cp = load <2 x double>, ptr %i.co, align 16, !tbaa !49, !noalias !239
  %i.cq = fmul <2 x double> %i.bi, %i.cp
  store <2 x double> %i.cq, ptr %i.cn, align 16, !tbaa !49, !alias.scope !239
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bh, i64 144
  %i.ct = load <2 x double>, ptr %i.cs, align 16, !tbaa !49, !noalias !239
  %i.cu = fmul <2 x double> %i.bi, %i.ct
  store <2 x double> %i.cu, ptr %i.cr, align 16, !tbaa !49, !alias.scope !239
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 160
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bh, i64 160
  %i.cx = load <2 x double>, ptr %i.cw, align 16, !tbaa !49, !noalias !239
  %i.cy = fmul <2 x double> %i.bi, %i.cx
  store <2 x double> %i.cy, ptr %i.cv, align 16, !tbaa !49, !alias.scope !239
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 176
  %i.da = getelementptr inbounds nuw i8, ptr %i.bh, i64 176
  %i.db = load <2 x double>, ptr %i.da, align 16, !tbaa !49, !noalias !239
  %i.dc = fmul <2 x double> %i.bi, %i.db
  store <2 x double> %i.dc, ptr %i.cz, align 16, !tbaa !49, !alias.scope !239
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 192
  %i.de = getelementptr inbounds nuw i8, ptr %i.bh, i64 192
  %i.df = load <2 x double>, ptr %i.de, align 16, !tbaa !49, !noalias !239
  %i.dg = fmul <2 x double> %i.bi, %i.df
  store <2 x double> %i.dg, ptr %i.dd, align 16, !tbaa !49, !alias.scope !239
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 208
  %i.di = getelementptr inbounds nuw i8, ptr %i.bh, i64 208
  %i.dj = load <2 x double>, ptr %i.di, align 16, !tbaa !49, !noalias !239
  %i.dk = fmul <2 x double> %i.bi, %i.dj
  store <2 x double> %i.dk, ptr %i.dh, align 16, !tbaa !49, !alias.scope !239
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 224
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bh, i64 224
  %i.dn = load <2 x double>, ptr %i.dm, align 16, !tbaa !49, !noalias !239
  %i.do = fmul <2 x double> %i.bi, %i.dn
  store <2 x double> %i.do, ptr %i.dl, align 16, !tbaa !49, !alias.scope !239
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 240
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bh, i64 240
  %i.dr = load <2 x double>, ptr %i.dq, align 16, !tbaa !49, !noalias !239
  %i.ds = fmul <2 x double> %i.bi, %i.dr
  store <2 x double> %i.ds, ptr %i.dp, align 16, !tbaa !49, !alias.scope !239
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 256
  %i.du = getelementptr inbounds nuw i8, ptr %i.bh, i64 256
  %i.dv = load <2 x double>, ptr %i.du, align 16, !tbaa !49, !noalias !239
  %i.dw = fmul <2 x double> %i.bi, %i.dv
  store <2 x double> %i.dw, ptr %i.dt, align 16, !tbaa !49, !alias.scope !239
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 272
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bh, i64 272
  %i.dz = load <2 x double>, ptr %i.dy, align 16, !tbaa !49, !noalias !239
  %i.ea = fmul <2 x double> %i.bi, %i.dz
  store <2 x double> %i.ea, ptr %i.dx, align 16, !tbaa !49, !alias.scope !239
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i)
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !46
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !43 ; 8 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 100
  %i.ef = load i8, ptr %i.ee, align 4, !tbaa !216, !range !230, !noundef !145
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %_ZN3g2o18BaseFixedSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEJNS_9VertexSE3EEE24constructQuadraticFormNsIJLm0EEEEvRKNS1_6MatrixIdLi6ELi6ELi0ELi6ELi6EEERKNS7_IdLi6ELi1ELi0ELi6ELi1EEESt16integer_sequenceImJXspT_EEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.eh = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ej = shufflevector <1 x double> %i.n, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ek = fneg <2 x double> %i.at
  %i.el = fmul <2 x double> %i.ej, %i.ek
  %i.em = shufflevector <1 x double> %i.r, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.en = fmul <2 x double> %i.em, %i.av
  %i.eo = fsub <2 x double> %i.el, %i.en
  %i.ep = shufflevector <1 x double> %i.v, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.eq = fmul <2 x double> %i.ep, %i.ax
  %i.er = fsub <2 x double> %i.eo, %i.eq
  %i.es = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.et = fmul <2 x double> %i.es, %i.az
  %i.eu = fsub <2 x double> %i.er, %i.et
  %i.ev = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.ew = fmul <2 x double> %i.ev, %i.bb
  %i.ex = fsub <2 x double> %i.eu, %i.ew
  %i.ey = insertelement <2 x double> poison, double %i.af, i64 0
  %i.ez = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fa = fmul <2 x double> %i.ez, %i.bd
  %i.fb = fsub <2 x double> %i.ex, %i.fa
  %i.fc = fmul <2 x double> %i.fb, %i.ei          ; 6 uses
  %i.fd = fneg <2 x double> %i.ah
  %i.fe = fmul <2 x double> %i.ej, %i.fd
  %i.ff = fmul <2 x double> %i.em, %i.aj
  %i.fg = fsub <2 x double> %i.fe, %i.ff
  %i.fh = fmul <2 x double> %i.ep, %i.al
  %i.fi = fsub <2 x double> %i.fg, %i.fh
  %i.fj = fmul <2 x double> %i.es, %i.an
  %i.fk = fsub <2 x double> %i.fi, %i.fj
  %i.fl = fmul <2 x double> %i.ev, %i.ap
  %i.fm = fsub <2 x double> %i.fk, %i.fl
  %i.fn = fmul <2 x double> %i.ez, %i.ar
  %i.fo = fsub <2 x double> %i.fm, %i.fn
  %i.fp = fmul <2 x double> %i.fo, %i.ei          ; 6 uses
  %i.fq = fneg <2 x double> %i.m
  %i.fr = fmul <2 x double> %i.ej, %i.fq
  %i.fs = fmul <2 x double> %i.p, %i.em
  %i.ft = fsub <2 x double> %i.fr, %i.fs
  %i.fu = fmul <2 x double> %i.t, %i.ep
  %i.fv = fsub <2 x double> %i.ft, %i.fu
  %i.fw = fmul <2 x double> %i.x, %i.es
  %i.fx = fsub <2 x double> %i.fv, %i.fw
  %i.fy = fmul <2 x double> %i.ab, %i.ev
  %i.fz = fsub <2 x double> %i.fx, %i.fy
  %i.ga = fmul <2 x double> %i.ad, %i.ez
  %i.gb = fsub <2 x double> %i.fz, %i.ga
  %i.gc = fmul <2 x double> %i.gb, %i.ei          ; 6 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.027.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.027.i.i, ptr noundef nonnull align 8 dereferenceable(10) %i.gd, i64 10, i1 false)
  %.sroa.021.sroa.0.0.copyload.i.i = load ptr, ptr %i.gd, align 8 ; 18 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ed, i64 144 ; 2 uses
  %i.gf = load <2 x double>, ptr %.sroa.021.sroa.0.0.copyload.i.i, align 16, !tbaa !49
  %i.gg = fmul <2 x double> %i.gc, %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.0.0.copyload.i.i, i64 16
  %i.gi = load <2 x double>, ptr %i.gh, align 16, !tbaa !49
  %i.gj = fmul <2 x double> %i.fp, %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.0.0.copyload.i.i, i64 32
  %i.gl = load <2 x double>, ptr %i.gk, align 16, !tbaa !49
  %i.gm = fmul <2 x double> %i.fc, %i.gl
  %i.gn = fadd <2 x double> %i.gj, %i.gm
  %i.go = fadd <2 x double> %i.gg, %i.gn          ; 2 uses
  %shift = shufflevector <2 x double> %i.go, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.go, %shift
  %i.gp = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.gq = load double, ptr %i.ge, align 8, !tbaa !8
  %i.gr = fadd double %i.gq, %i.gp
  store double %i.gr, ptr %i.ge, align 8, !tbaa !8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ed, i64 152 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.0.0.copyload.i.i, i64 48
  %i.gu = load <2 x double>, ptr %i.gt, align 16, !tbaa !49
  %i.gv = fmul <2 x double> %i.gc, %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.0.0.copyload.i.i, i64 64
  %i.gx = load <2 x double>, ptr %i.gw, align 16, !tbaa !49
  %i.gy = fmul <2 x double> %i.fp, %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.0.0.copyload.i.i, i64 80
  %i.ha = load <2 x double>, ptr %i.gz, align 16, !tbaa !49
  %i.hb = fmul <2 x double> %i.fc, %i.ha
  %i.hc = fadd <2 x double> %i.gy, %i.hb
  %i.hd = fadd <2 x double> %i.gv, %i.hc          ; 2 uses
  %shift49 = shufflevector <2 x double> %i.hd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop50 = fadd <2 x double> %i.hd, %shift49
  %i.he = extractelement <2 x double> %foldExtExtBinop50, i64 0
  %i.hf = load double, ptr %i.gs, align 8, !tbaa !8
  %i.hg = fadd double %i.hf, %i.he
  store double %i.hg, ptr %i.gs, align 8, !tbaa !8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ed, i64 160 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.0.0.copyload.i.i, i64 96
  %i.hj = load <2 x double>, ptr %i.hi, align 16, !tbaa !49
  %i.hk = fmul <2 x double> %i.gc, %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.0.0.copyload.i.i, i64 112
  %i.hm = load <2 x double>, ptr %i.hl, align 16, !tbaa !49
  %i.hn = fmul <2 x double> %i.fp, %i.hm
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.0.0.copyload.i.i, i64 128
  %i.hp = load <2 x double>, ptr %i.ho, align 16, !tbaa !49
  %i.hq = fmul <2 x double> %i.fc, %i.hp
  %i.hr = fadd <2 x double> %i.hn, %i.hq
  %i.hs = fadd <2 x double> %i.hk, %i.hr          ; 2 uses
  %shift52 = shufflevector <2 x double> %i.hs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop53 = fadd <2 x double> %i.hs, %shift52
  %i.ht = extractelement <2 x double> %foldExtExtBinop53, i64 0
  %i.hu = load double, ptr %i.hh, align 8, !tbaa !8
  %i.hv = fadd double %i.hu, %i.ht
  store double %i.hv, ptr %i.hh, align 8, !tbaa !8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ed, i64 168 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.0.0.copyload.i.i, i64 144
  %i.hy = load <2 x double>, ptr %i.hx, align 16, !tbaa !49
  %i.hz = fmul <2 x double> %i.gc, %i.hy
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.0.0.copyload.i.i, i64 160
  %i.ib = load <2 x double>, ptr %i.ia, align 16, !tbaa !49
  %i.ic = fmul <2 x double> %i.fp, %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.0.0.copyload.i.i, i64 176
  %i.ie = load <2 x double>, ptr %i.id, align 16, !tbaa !49
  %i.if = fmul <2 x double> %i.fc, %i.ie
  %i.ig = fadd <2 x double> %i.ic, %i.if
  %i.ih = fadd <2 x double> %i.hz, %i.ig          ; 2 uses
  %shift55 = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop56 = fadd <2 x double> %i.ih, %shift55
  %i.ii = extractelement <2 x double> %foldExtExtBinop56, i64 0
  %i.ij = load double, ptr %i.hw, align 8, !tbaa !8
  %i.ik = fadd double %i.ij, %i.ii
  store double %i.ik, ptr %i.hw, align 8, !tbaa !8
  %i.il = getelementptr inbounds nuw i8, ptr %i.ed, i64 176 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.0.0.copyload.i.i, i64 192
  %i.in = load <2 x double>, ptr %i.im, align 16, !tbaa !49
  %i.io = fmul <2 x double> %i.gc, %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.0.0.copyload.i.i, i64 208
  %i.iq = load <2 x double>, ptr %i.ip, align 16, !tbaa !49
  %i.ir = fmul <2 x double> %i.fp, %i.iq
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.0.0.copyload.i.i, i64 224
  %i.it = load <2 x double>, ptr %i.is, align 16, !tbaa !49
  %i.iu = fmul <2 x double> %i.fc, %i.it
  %i.iv = fadd <2 x double> %i.ir, %i.iu
  %i.iw = fadd <2 x double> %i.io, %i.iv          ; 2 uses
  %shift58 = shufflevector <2 x double> %i.iw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop59 = fadd <2 x double> %i.iw, %shift58
  %i.ix = extractelement <2 x double> %foldExtExtBinop59, i64 0
  %i.iy = load double, ptr %i.il, align 8, !tbaa !8
  %i.iz = fadd double %i.iy, %i.ix
  store double %i.iz, ptr %i.il, align 8, !tbaa !8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ed, i64 184 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.0.0.copyload.i.i, i64 240
  %i.jc = load <2 x double>, ptr %i.jb, align 16, !tbaa !49
  %i.jd = fmul <2 x double> %i.gc, %i.jc
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.0.0.copyload.i.i, i64 256
  %i.jf = load <2 x double>, ptr %i.je, align 16, !tbaa !49
  %i.jg = fmul <2 x double> %i.fp, %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.0.0.copyload.i.i, i64 272
  %i.ji = load <2 x double>, ptr %i.jh, align 16, !tbaa !49
  %i.jj = fmul <2 x double> %i.fc, %i.ji
  %i.jk = fadd <2 x double> %i.jg, %i.jj
  %i.jl = fadd <2 x double> %i.jd, %i.jk          ; 2 uses
  %shift61 = shufflevector <2 x double> %i.jl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop62 = fadd <2 x double> %i.jl, %shift61
  %i.jm = extractelement <2 x double> %foldExtExtBinop62, i64 0
  %i.jn = load double, ptr %i.ja, align 8, !tbaa !8
  %i.jo = fadd double %i.jn, %i.jm
  store double %i.jo, ptr %i.ja, align 8, !tbaa !8
  %i.jp = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.jp, ptr noundef nonnull align 8 dereferenceable(10) %i.gd, i64 10, i1 false)
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ed, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.027.i.i, i64 10, i1 false)
  %i.jr = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %6, ptr %i.jr, align 8, !tbaa !247, !alias.scope !249
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN5Eigen8internal26call_dense_assignment_loopINS_3MapINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_6StrideILi0ELi0EEEEENS_7ProductINS8_INS_9TransposeIKNS2_IS4_Li16ES6_EEEES4_Li0EEESA_Li1EEENS0_13add_assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(12) %i.jq, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.027.i.i)
  br label %_ZN3g2o18BaseFixedSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEJNS_9VertexSE3EEE24constructQuadraticFormNsIJLm0EEEEvRKNS1_6MatrixIdLi6ELi6ELi0ELi6ELi6EEERKNS7_IdLi6ELi1ELi0ELi6ELi1EEESt16integer_sequenceImJXspT_EEE.exit

_ZN3g2o18BaseFixedSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEJNS_9VertexSE3EEE24constructQuadraticFormNsIJLm0EEEEvRKNS1_6MatrixIdLi6ELi6ELi0ELi6ELi6EEERKNS7_IdLi6ELi1ELi0ELi6ELi1EEESt16integer_sequenceImJXspT_EEE.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN3g2o18BaseFixedSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEJNS_9VertexSE3EEE24constructQuadraticFormNsIJLm0EEEEvRKNS1_6MatrixIdLi6ELi6ELi0ELi6ELi6EEERKNS7_IdLi6ELi1ELi0ELi6ELi1EEESt16integer_sequenceImJXspT_EEE.exit4

bb.d:                                             ; preds = %bb.a
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !46
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !43 ; 8 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 100
  %i.jw = load i8, ptr %i.jv, align 4, !tbaa !216, !range !230, !noundef !145
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %_ZN3g2o18BaseFixedSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEJNS_9VertexSE3EEE24constructQuadraticFormNsIJLm0EEEEvRKNS1_6MatrixIdLi6ELi6ELi0ELi6ELi6EEERKNS7_IdLi6ELi1ELi0ELi6ELi1EEESt16integer_sequenceImJXspT_EEE.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.jz = load <1 x double>, ptr %i.jy, align 16
  %i.ka = shufflevector <1 x double> %i.jz, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.kc = load <2 x double>, ptr %i.kb, align 16, !tbaa !49
  %i.kd = fneg <2 x double> %i.kc
  %i.ke = fmul <2 x double> %i.ka, %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.kg = load <2 x double>, ptr %i.kf, align 16, !tbaa !49
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 600
  %7 = load <1 x double>, ptr %i.kh, align 8
  %i.ki = shufflevector <1 x double> %7, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.kj = fmul <2 x double> %i.kg, %i.ki
  %i.kk = fsub <2 x double> %i.ke, %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.km = load <2 x double>, ptr %i.kl, align 16, !tbaa !49
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 608
  %8 = load <1 x double>, ptr %i.kn, align 16
  %9 = shufflevector <1 x double> %8, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ko = fmul <2 x double> %i.km, %9
  %i.kp = fsub <2 x double> %i.kk, %i.ko
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.kr = load <2 x double>, ptr %i.kq, align 16, !tbaa !49
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 616
  %10 = load <2 x double>, ptr %i.ks, align 8     ; 2 uses
  %i.kt = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ku = fmul <2 x double> %i.kr, %i.kt
  %i.kv = fsub <2 x double> %i.kp, %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.kx = load <2 x double>, ptr %i.kw, align 16, !tbaa !49
  %11 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.ky = fmul <2 x double> %i.kx, %11
  %i.kz = fsub <2 x double> %i.kv, %i.ky
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.lb = load <2 x double>, ptr %i.la, align 16, !tbaa !49
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !8
  %i.le = insertelement <2 x double> poison, double %i.ld, i64 0
  %i.lf = shufflevector <2 x double> %i.le, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.lg = fmul <2 x double> %i.lb, %i.lf
  %i.lh = fsub <2 x double> %i.kz, %i.lg          ; 6 uses
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.lk = load <2 x double>, ptr %i.lj, align 16, !tbaa !49
  %i.ll = fneg <2 x double> %i.lk
  %i.lm = fmul <2 x double> %i.ka, %i.ll
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.lo = load <2 x double>, ptr %i.ln, align 16, !tbaa !49
  %i.lp = fmul <2 x double> %i.ki, %i.lo
  %i.lq = fsub <2 x double> %i.lm, %i.lp
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ls = load <2 x double>, ptr %i.lr, align 16, !tbaa !49
  %i.lt = fmul <2 x double> %9, %i.ls
  %i.lu = fsub <2 x double> %i.lq, %i.lt
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.lw = load <2 x double>, ptr %i.lv, align 16, !tbaa !49
  %i.lx = fmul <2 x double> %i.kt, %i.lw
  %i.ly = fsub <2 x double> %i.lu, %i.lx
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ma = load <2 x double>, ptr %i.lz, align 16, !tbaa !49
  %i.mb = fmul <2 x double> %11, %i.ma
  %i.mc = fsub <2 x double> %i.ly, %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.me = load <2 x double>, ptr %i.md, align 16, !tbaa !49
  %i.mf = fmul <2 x double> %i.lf, %i.me
  %i.mg = fsub <2 x double> %i.mc, %i.mf          ; 6 uses
  %i.mh = load <2 x double>, ptr %i.li, align 16, !tbaa !49
  %i.mi = fneg <2 x double> %i.mh
  %i.mj = fmul <2 x double> %i.ka, %i.mi
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ml = load <2 x double>, ptr %i.mk, align 16, !tbaa !49
  %i.mm = fmul <2 x double> %i.ki, %i.ml
  %i.mn = fsub <2 x double> %i.mj, %i.mm
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.mp = load <2 x double>, ptr %i.mo, align 16, !tbaa !49
  %i.mq = fmul <2 x double> %9, %i.mp
  %i.mr = fsub <2 x double> %i.mn, %i.mq
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.mt = load <2 x double>, ptr %i.ms, align 16, !tbaa !49
  %i.mu = fmul <2 x double> %i.kt, %i.mt
  %i.mv = fsub <2 x double> %i.mr, %i.mu
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.mx = load <2 x double>, ptr %i.mw, align 16, !tbaa !49
  %i.my = fmul <2 x double> %11, %i.mx
  %i.mz = fsub <2 x double> %i.mv, %i.my
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.nb = load <2 x double>, ptr %i.na, align 16, !tbaa !49
  %i.nc = fmul <2 x double> %i.lf, %i.nb
  %i.nd = fsub <2 x double> %i.mz, %i.nc          ; 6 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.027.i.i2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.027.i.i2, ptr noundef nonnull align 8 dereferenceable(10) %i.ne, i64 10, i1 false)
  %.sroa.021.sroa.0.0.copyload.i.i3 = load ptr, ptr %i.ne, align 8 ; 18 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ju, i64 144 ; 2 uses
  %i.ng = load <2 x double>, ptr %.sroa.021.sroa.0.0.copyload.i.i3, align 16, !tbaa !49
  %i.nh = fmul <2 x double> %i.nd, %i.ng
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.0.0.copyload.i.i3, i64 16
  %i.nj = load <2 x double>, ptr %i.ni, align 16, !tbaa !49
  %i.nk = fmul <2 x double> %i.mg, %i.nj
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.0.0.copyload.i.i3, i64 32
  %i.nm = load <2 x double>, ptr %i.nl, align 16, !tbaa !49
  %i.nn = fmul <2 x double> %i.lh, %i.nm
  %i.no = fadd <2 x double> %i.nk, %i.nn
  %i.np = fadd <2 x double> %i.nh, %i.no          ; 2 uses
  %shift64 = shufflevector <2 x double> %i.np, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop65 = fadd <2 x double> %i.np, %shift64
  %i.nq = extractelement <2 x double> %foldExtExtBinop65, i64 0
  %i.nr = load double, ptr %i.nf, align 8, !tbaa !8
  %i.ns = fadd double %i.nr, %i.nq
  store double %i.ns, ptr %i.nf, align 8, !tbaa !8
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ju, i64 152 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.0.0.copyload.i.i3, i64 48
  %i.nv = load <2 x double>, ptr %i.nu, align 16, !tbaa !49
  %i.nw = fmul <2 x double> %i.nd, %i.nv
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.0.0.copyload.i.i3, i64 64
  %i.ny = load <2 x double>, ptr %i.nx, align 16, !tbaa !49
  %i.nz = fmul <2 x double> %i.mg, %i.ny
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.0.0.copyload.i.i3, i64 80
  %i.ob = load <2 x double>, ptr %i.oa, align 16, !tbaa !49
  %i.oc = fmul <2 x double> %i.lh, %i.ob
  %i.od = fadd <2 x double> %i.nz, %i.oc
  %i.oe = fadd <2 x double> %i.nw, %i.od          ; 2 uses
  %shift67 = shufflevector <2 x double> %i.oe, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop68 = fadd <2 x double> %i.oe, %shift67
  %i.of = extractelement <2 x double> %foldExtExtBinop68, i64 0
  %i.og = load double, ptr %i.nt, align 8, !tbaa !8
  %i.oh = fadd double %i.og, %i.of
  store double %i.oh, ptr %i.nt, align 8, !tbaa !8
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ju, i64 160 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.0.0.copyload.i.i3, i64 96
  %i.ok = load <2 x double>, ptr %i.oj, align 16, !tbaa !49
  %i.ol = fmul <2 x double> %i.nd, %i.ok
  %i.om = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.0.0.copyload.i.i3, i64 112
  %i.on = load <2 x double>, ptr %i.om, align 16, !tbaa !49
  %i.oo = fmul <2 x double> %i.mg, %i.on
  %i.op = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.0.0.copyload.i.i3, i64 128
  %i.oq = load <2 x double>, ptr %i.op, align 16, !tbaa !49
  %i.or = fmul <2 x double> %i.lh, %i.oq
  %i.os = fadd <2 x double> %i.oo, %i.or
  %i.ot = fadd <2 x double> %i.ol, %i.os          ; 2 uses
  %shift70 = shufflevector <2 x double> %i.ot, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop71 = fadd <2 x double> %i.ot, %shift70
  %i.ou = extractelement <2 x double> %foldExtExtBinop71, i64 0
  %i.ov = load double, ptr %i.oi, align 8, !tbaa !8
  %i.ow = fadd double %i.ov, %i.ou
  store double %i.ow, ptr %i.oi, align 8, !tbaa !8
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ju, i64 168 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.0.0.copyload.i.i3, i64 144
  %i.oz = load <2 x double>, ptr %i.oy, align 16, !tbaa !49
  %i.pa = fmul <2 x double> %i.nd, %i.oz
  %i.pb = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.0.0.copyload.i.i3, i64 160
  %i.pc = load <2 x double>, ptr %i.pb, align 16, !tbaa !49
  %i.pd = fmul <2 x double> %i.mg, %i.pc
  %i.pe = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.0.0.copyload.i.i3, i64 176
  %i.pf = load <2 x double>, ptr %i.pe, align 16, !tbaa !49
  %i.pg = fmul <2 x double> %i.lh, %i.pf
  %i.ph = fadd <2 x double> %i.pd, %i.pg
  %i.pi = fadd <2 x double> %i.pa, %i.ph          ; 2 uses
  %shift73 = shufflevector <2 x double> %i.pi, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop74 = fadd <2 x double> %i.pi, %shift73
  %i.pj = extractelement <2 x double> %foldExtExtBinop74, i64 0
  %i.pk = load double, ptr %i.ox, align 8, !tbaa !8
  %i.pl = fadd double %i.pk, %i.pj
  store double %i.pl, ptr %i.ox, align 8, !tbaa !8
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ju, i64 176 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.0.0.copyload.i.i3, i64 192
  %i.po = load <2 x double>, ptr %i.pn, align 16, !tbaa !49
  %i.pp = fmul <2 x double> %i.nd, %i.po
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.0.0.copyload.i.i3, i64 208
  %i.pr = load <2 x double>, ptr %i.pq, align 16, !tbaa !49
  %i.ps = fmul <2 x double> %i.mg, %i.pr
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.0.0.copyload.i.i3, i64 224
  %i.pu = load <2 x double>, ptr %i.pt, align 16, !tbaa !49
  %i.pv = fmul <2 x double> %i.lh, %i.pu
  %i.pw = fadd <2 x double> %i.ps, %i.pv
  %i.px = fadd <2 x double> %i.pp, %i.pw          ; 2 uses
  %shift76 = shufflevector <2 x double> %i.px, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop77 = fadd <2 x double> %i.px, %shift76
  %i.py = extractelement <2 x double> %foldExtExtBinop77, i64 0
  %i.pz = load double, ptr %i.pm, align 8, !tbaa !8
  %i.qa = fadd double %i.pz, %i.py
  store double %i.qa, ptr %i.pm, align 8, !tbaa !8
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ju, i64 184 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.0.0.copyload.i.i3, i64 240
  %i.qd = load <2 x double>, ptr %i.qc, align 16, !tbaa !49
  %i.qe = fmul <2 x double> %i.nd, %i.qd
  %i.qf = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.0.0.copyload.i.i3, i64 256
  %i.qg = load <2 x double>, ptr %i.qf, align 16, !tbaa !49
  %i.qh = fmul <2 x double> %i.mg, %i.qg
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.0.0.copyload.i.i3, i64 272
  %i.qj = load <2 x double>, ptr %i.qi, align 16, !tbaa !49
  %i.qk = fmul <2 x double> %i.lh, %i.qj
  %i.ql = fadd <2 x double> %i.qh, %i.qk
  %i.qm = fadd <2 x double> %i.qe, %i.ql          ; 2 uses
  %shift79 = shufflevector <2 x double> %i.qm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop80 = fadd <2 x double> %i.qm, %shift79
  %i.qn = extractelement <2 x double> %foldExtExtBinop80, i64 0
  %i.qo = load double, ptr %i.qb, align 8, !tbaa !8
  %i.qp = fadd double %i.qo, %i.qn
  store double %i.qp, ptr %i.qb, align 8, !tbaa !8
  %i.qq = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.qq, ptr noundef nonnull align 8 dereferenceable(10) %i.ne, i64 10, i1 false)
  %i.qr = getelementptr inbounds nuw i8, ptr %i.ju, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %1, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.027.i.i2, i64 10, i1 false)
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.li, ptr %i.qs, align 8, !tbaa !247, !alias.scope !252
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN5Eigen8internal26call_dense_assignment_loopINS_3MapINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_6StrideILi0ELi0EEEEENS_7ProductINS8_INS_9TransposeIKNS2_IS4_Li16ES6_EEEES4_Li0EEESA_Li1EEENS0_13add_assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(12) %i.qr, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.027.i.i2)
  br label %_ZN3g2o18BaseFixedSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEJNS_9VertexSE3EEE24constructQuadraticFormNsIJLm0EEEEvRKNS1_6MatrixIdLi6ELi6ELi0ELi6ELi6EEERKNS7_IdLi6ELi1ELi0ELi6ELi1EEESt16integer_sequenceImJXspT_EEE.exit4

_ZN3g2o18BaseFixedSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEJNS_9VertexSE3EEE24constructQuadraticFormNsIJLm0EEEEvRKNS1_6MatrixIdLi6ELi6ELi0ELi6ELi6EEERKNS7_IdLi6ELi1ELi0ELi6ELi1EEESt16integer_sequenceImJXspT_EEE.exit4: ; preds = %bb.e, %bb.d, %_ZN3g2o18BaseFixedSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEJNS_9VertexSE3EEE24constructQuadraticFormNsIJLm0EEEEvRKNS1_6MatrixIdLi6ELi6ELi0ELi6ELi6EEERKNS7_IdLi6ELi1ELi0ELi6ELi1EEESt16integer_sequenceImJXspT_EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEJNS_9VertexSE3EEE16mapHessianMemoryEPdiib(ptr noundef nonnull align 16 dereferenceable(664) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #25
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEJNS_9VertexSE3EEE14linearizeOplusERNS_17JacobianWorkspaceE(ptr noundef nonnull align 16 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = load ptr, ptr %1, align 8, !tbaa !255
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !258
  store ptr %i.c, ptr %i.a, align 8, !tbaa !160
  %i.d = load ptr, ptr %0, align 16, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 16 dereferenceable(664) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZN3g2o12EdgeSE3Prior23initialEstimatePossibleERKSt3setIPNS_10HyperGraph6VertexESt4lessIS4_ESaIS4_EEPNS_16OptimizableGraph6VertexE(ptr noundef nonnull align 16 dereferenceable(816) %0, ptr noundef nonnull align 1 %1, ptr noundef %2) unnamed_addr #6 comdat align 2 {
bb.a:
  ret double 1.000000e+00
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN3g2o16OptimizableGraph4Edge10createFromEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN3g2o16OptimizableGraph4Edge8createToEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN3g2o16OptimizableGraph4Edge12createVertexEi(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o12EdgeSE3Prior14setMeasurementERKN5Eigen9TransformIdLi3ELi1ELi0EEE(ptr noundef nonnull align 16 dereferenceable(816) %0, ptr noundef nonnull align 16 dereferenceable(128) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load <2 x double>, ptr %1, align 16, !tbaa !49
  store <2 x double> %i.b, ptr %i.a, align 16, !tbaa !49
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load <2 x double>, ptr %i.d, align 16, !tbaa !49
  store <2 x double> %i.e, ptr %i.c, align 16, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = load <2 x double>, ptr %i.g, align 16, !tbaa !49
  store <2 x double> %i.h, ptr %i.f, align 16, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.k = load <2 x double>, ptr %i.j, align 16, !tbaa !49
  store <2 x double> %i.k, ptr %i.i, align 16, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.n = load <2 x double>, ptr %i.m, align 16, !tbaa !49
  store <2 x double> %i.n, ptr %i.l, align 16, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.q = load <2 x double>, ptr %i.p, align 16, !tbaa !49
  store <2 x double> %i.q, ptr %i.o, align 16, !tbaa !49
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.t = load <2 x double>, ptr %i.s, align 16, !tbaa !49
  store <2 x double> %i.t, ptr %i.r, align 16, !tbaa !49
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.w = load <2 x double>, ptr %i.v, align 16, !tbaa !49
  store <2 x double> %i.w, ptr %i.u, align 16, !tbaa !49
  %i.x = load <2 x double>, ptr %1, align 16      ; 2 uses
  %i.y = load double, ptr %i.g, align 16, !tbaa !8, !noalias !260
  %.sroa.0.8.vec.insert = insertelement <2 x double> %i.x, double %i.y, i64 1 ; 2 uses
  %i.z = load double, ptr %i.m, align 16, !tbaa !8, !noalias !260 ; 2 uses
  %.sroa.9.32.vec.insert = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !8, !noalias !260
  %.sroa.9.40.vec.insert = insertelement <2 x double> %.sroa.9.32.vec.insert, double %i.ab, i64 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !8, !noalias !260 ; 2 uses
  %2 = load <2 x double>, ptr %i.d, align 16
  %i.ae = load double, ptr %i.j, align 16, !tbaa !8, !noalias !260
  %.sroa.15.72.vec.insert = insertelement <2 x double> %2, double %i.ae, i64 1 ; 2 uses
  %i.af = load double, ptr %i.p, align 16, !tbaa !8, !noalias !260 ; 2 uses
  %i.ag = fneg <2 x double> %.sroa.0.8.vec.insert
  %i.ah = load double, ptr %i.s, align 16, !tbaa !8, !noalias !260 ; 2 uses
  %i.ai = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = fmul <2 x double> %i.aj, %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.am = load double, ptr %i.al, align 8, !tbaa !8, !noalias !260 ; 2 uses
  %i.an = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x double> %.sroa.9.40.vec.insert, %i.ao
  %i.aq = fsub <2 x double> %i.ak, %i.ap
  %i.ar = load double, ptr %i.v, align 16, !tbaa !8, !noalias !260 ; 2 uses
  %i.as = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x double> %.sroa.15.72.vec.insert, %i.at
  %i.av = fsub <2 x double> %i.aq, %i.au
  %i.aw = fneg double %i.af
  %i.ax = fmul double %i.ar, %i.aw
  %i.ay = fmul double %i.ad, %i.am
  %i.az = fsub double %i.ax, %i.ay
  %i.ba = fmul double %i.z, %i.ah
  %i.bb = fsub double %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 672
  store <2 x double> %.sroa.0.8.vec.insert, ptr %i.bc, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 688
  store double %i.z, ptr %.sroa.6.0..sroa_idx, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 696
  store double 0.000000e+00, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 704
  store <2 x double> %.sroa.9.40.vec.insert, ptr %.sroa.9.0..sroa_idx, align 16
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 720
  store double %i.ad, ptr %.sroa.12.0..sroa_idx, align 16
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 728
  store double 0.000000e+00, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 736
  store <2 x double> %.sroa.15.72.vec.insert, ptr %.sroa.15.0..sroa_idx, align 16
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 752
  store double %i.af, ptr %.sroa.18.0..sroa_idx, align 16
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 760
  store double 0.000000e+00, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 768
  store <2 x double> %i.av, ptr %.sroa.21.0..sroa_idx, align 16
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 784
  store double %i.bb, ptr %.sroa.22.0..sroa_idx, align 16
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 792
  store double 1.000000e+00, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE4rankEv(ptr noundef nonnull align 16 dereferenceable(640) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !10
  ret i32 %i.b
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn40_N3g2o12EdgeSE3PriorD1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZN3g2o16OptimizableGraph4EdgeD2Ev(ptr noundef nonnull align 16 dead_on_return(816) dereferenceable(816) %i.a) #22
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn40_N3g2o12EdgeSE3PriorD0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -40 ; 2 uses
  tail call void @_ZN3g2o16OptimizableGraph4EdgeD2Ev(ptr noundef nonnull align 16 dead_on_return(816) dereferenceable(816) %i.a) #22
  tail call void @_ZdlPvm(ptr noundef nonnull align 16 dereferenceable(816) %i.a, i64 noundef 816) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIPPN3g2o9ParameterESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPPPN3g2o9ParameterES3_EvT_S5_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !263
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50   ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %3, align 8, !tbaa !54     ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !264

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr nonnull align 8 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !50
  br label %_ZSt22__uninitialized_move_aIPPPN3g2o9ParameterES4_SaIS3_EET0_T_S7_S6_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPPPN3g2o9ParameterES4_SaIS3_EET0_T_S7_S6_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !54
  store ptr %i.s, ptr %i.d, align 8, !tbaa !54
  br label %_ZSt22__uninitialized_move_aIPPPN3g2o9ParameterES4_SaIS3_EET0_T_S7_S6_RT1_.exit

_ZSt22__uninitialized_move_aIPPPN3g2o9ParameterES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !50
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !264

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPPPN3g2o9ParameterES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPPPN3g2o9ParameterES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 8
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ac = load ptr, ptr %1, align 8, !tbaa !54
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !54
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -8                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 24
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec128 = and i64 %i.ag, 4611686018427387900  ; 3 uses
  %i.ah = shl i64 %n.vec128, 3
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert129 = insertelement <2 x ptr> poison, ptr %i.i, i64 0
  %broadcast.splat130 = shufflevector <2 x ptr> %broadcast.splatinsert129, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 3
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <2 x ptr> %broadcast.splat130, ptr %next.gep133, align 8, !tbaa !54
  store <2 x ptr> %broadcast.splat130, ptr %i.ak, align 8, !tbaa !54
  %index.next134 = add nuw i64 %index132, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !265

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPPPN3g2o9ParameterES3_EvT_S5_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.07.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store ptr %i.i, ptr %.07.i.i.i, align 8, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPPPN3g2o9ParameterES3_EvT_S5_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !268

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPPPN3g2o9ParameterEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 3
  %i.ar = add i64 %i.aq, -8
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 4611686018427387900     ; 3 uses
  %i.av = shl i64 %n.vec, 3
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %broadcast.splat, ptr %next.gep, align 8, !tbaa !54
  store <2 x ptr> %broadcast.splat, ptr %i.ay, align 8, !tbaa !54
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !269

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPPPN3g2o9ParameterEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.07.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i
end_hunk_0

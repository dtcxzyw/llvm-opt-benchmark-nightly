Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se2_twopointsxy?download=true
inline.NumInlined: 4782
inline.NumDeleted: 2275
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 55
begin_hunk_0_@_ZN3g2o18EdgeSE2TwoPointsXY12computeErrorEv:bb.a
  %i.ai = fmul <2 x double> %.sroa.0.8.vec.insert.i.i, %i.ah
  %i.aj = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ak = fmul <2 x double> %.sroa.5.24.vec.insert.i.i, %i.aj
  %i.al = fadd <2 x double> %i.ai, %i.ak
  %i.am = fadd <2 x double> %i.ab, %i.al
  %i.an = tail call double @fmod(double noundef %i.j, double noundef f0x401921FB54442D18) #29, !noalias !71 ; 2 uses
  %i.ao = fcmp ugt double %i.an, 0.000000e+00
  %.0.v.i.i5 = select i1 %i.ao, double f0xC00921FB54442D18, double f0x400921FB54442D18
  %.0.i.i6 = fadd double %i.an, %.0.v.i.i5        ; 4 uses
  %i.ap = tail call double @sin(double noundef %.0.i.i6) #29, !noalias !74 ; 2 uses
  %i.aq = tail call double @cos(double noundef %.0.i.i6) #29, !noalias !74 ; 2 uses
  %i.ar = fneg double %i.ap
  %.sroa.0.0.vec.insert.i.i.i.i7 = insertelement <2 x double> poison, double %i.aq, i64 0
  %.sroa.0.8.vec.insert.i.i.i.i8 = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i.i7, double %i.ap, i64 1
  %.sroa.5.16.vec.insert.i.i.i.i9 = insertelement <2 x double> poison, double %i.ar, i64 0
  %.sroa.5.24.vec.insert.i.i.i.i10 = insertelement <2 x double> %.sroa.5.16.vec.insert.i.i.i.i9, double %i.aq, i64 1
  %i.as = fmul <2 x double> %i.t, %.sroa.0.8.vec.insert.i.i.i.i8
  %i.at = fmul <2 x double> %i.z, %.sroa.5.24.vec.insert.i.i.i.i10
  %i.au = fadd <2 x double> %i.at, %i.as
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.aw = tail call double @sin(double noundef %.0.i.i6) #29, !noalias !85 ; 2 uses
  %i.ax = tail call double @cos(double noundef %.0.i.i6) #29, !noalias !85 ; 2 uses
  %i.ay = fneg double %i.aw
  %.sroa.0.0.vec.insert.i.i11 = insertelement <2 x double> poison, double %i.ax, i64 0
  %.sroa.0.8.vec.insert.i.i12 = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i11, double %i.aw, i64 1
  %.sroa.5.16.vec.insert.i.i13 = insertelement <2 x double> poison, double %i.ay, i64 0
  %.sroa.5.24.vec.insert.i.i14 = insertelement <2 x double> %.sroa.5.16.vec.insert.i.i13, double %i.ax, i64 1
  %i.az = load <2 x double>, ptr %i.av, align 16, !noalias !92 ; 2 uses
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = fmul <2 x double> %.sroa.0.8.vec.insert.i.i12, %i.ba
  %i.bc = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bd = fmul <2 x double> %.sroa.5.24.vec.insert.i.i14, %i.bc
  %i.be = fadd <2 x double> %i.bb, %i.bd
  %i.bf = fadd <2 x double> %i.au, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bi = load <2 x double>, ptr %i.bg, align 16, !tbaa !61
  %i.bj = fsub <2 x double> %i.am, %i.bi
  store <2 x double> %i.bj, ptr %i.bh, align 16, !tbaa !61
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bm = load <2 x double>, ptr %i.bk, align 16, !tbaa !61
  %i.bn = fsub <2 x double> %i.bf, %i.bm
  store <2 x double> %i.bn, ptr %i.bl, align 16, !tbaa !61
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3g2o18EdgeSE2TwoPointsXY4readERSi(ptr noundef nonnull align 16 dereferenceable(416) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.h = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.j = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.s = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.u = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.z = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.y)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.ab = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ae = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.ad) ; 0 uses
  %i.af = load double, ptr %i.k, align 16, !tbaa !61
  store double %i.af, ptr %i.q, align 8, !tbaa !61
  %i.ag = load double, ptr %i.m, align 16, !tbaa !61
  store double %i.ag, ptr %i.x, align 16, !tbaa !61
  %i.ah = load double, ptr %i.t, align 8, !tbaa !61
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 256
  store double %i.ah, ptr %i.ai, align 16, !tbaa !61
  %i.aj = load double, ptr %i.o, align 16, !tbaa !61
  store double %i.aj, ptr %i.ac, align 8, !tbaa !61
  %i.ak = load double, ptr %i.v, align 8, !tbaa !61
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 264
  store double %i.ak, ptr %i.al, align 8, !tbaa !61
  %i.am = load double, ptr %i.aa, align 16, !tbaa !61
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 296
  store double %i.am, ptr %i.an, align 8, !tbaa !61
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK3g2o18EdgeSE2TwoPointsXY5writeERSo(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(416) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load double, ptr %i.a, align 16, !tbaa !61
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.b) ; 2 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.f = load double, ptr %i.e, align 8, !tbaa !61
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, double noundef %i.f) ; 2 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = load double, ptr %i.i, align 16, !tbaa !61
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, double noundef %i.j) ; 2 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.n = load double, ptr %i.m, align 8, !tbaa !61
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.k, double noundef %i.n)
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.r = load double, ptr %i.q, align 16, !tbaa !61
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.r) ; 2 uses
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.v = load double, ptr %i.u, align 16, !tbaa !61
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.s, double noundef %i.v) ; 2 uses
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.z = load double, ptr %i.y, align 16, !tbaa !61
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.w, double noundef %i.z) ; 2 uses
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ad = load double, ptr %i.ac, align 16, !tbaa !61
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, double noundef %i.ad) ; 2 uses
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !61
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, double noundef %i.ah) ; 2 uses
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.al = load double, ptr %i.ak, align 8, !tbaa !61
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, double noundef %i.al) ; 2 uses
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !61
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.am, double noundef %i.ap) ; 2 uses
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.at = load double, ptr %i.as, align 16, !tbaa !61
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, double noundef %i.at) ; 2 uses
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ax = load double, ptr %i.aw, align 16, !tbaa !61
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.au, double noundef %i.ax) ; 2 uses
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !61
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, double noundef %i.bb) ; 0 uses
  %i.bd = load ptr, ptr %1, align 8, !tbaa !39
  %i.be = getelementptr i8, ptr %i.bd, i64 -24
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds i8, ptr %1, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !93
  %i.bj = icmp eq i32 %i.bi, 0
  ret i1 %i.bj
}

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o18EdgeSE2TwoPointsXY15initialEstimateERKSt3setIPNS_10HyperGraph6VertexESt4lessIS4_ESaIS4_EEPNS_16OptimizableGraph6VertexE(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(416) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %1, ptr nofree readnone captures(none) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !103  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not26 = icmp eq ptr %i.i, %i.j
  br i1 %.not26, label %.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !108
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d
  br i1 %.111, label %.split, label %bb.e

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.029 = phi i1 [ true, %.lr.ph ], [ %.1, %bb.d ] ; 2 uses
  %.01028 = phi i1 [ true, %.lr.ph ], [ %.111, %bb.d ] ; 2 uses
  %.sroa.022.027 = phi ptr [ %i.i, %.lr.ph ], [ %i.t, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.022.027, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !42
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !108  ; 2 uses
  %i.r = icmp eq i32 %i.l, %i.q
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load i32, ptr %i.m, align 8, !tbaa !108
  %3 = icmp eq i32 %i.s, %i.q
  br i1 %3, label %4, label %bb.d

4:                                                ; preds = %bb.c
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %4, %bb.c
  %.111 = phi i1 [ %.01028, %bb.c ], [ %.01028, %4 ], [ false, %bb.b ] ; 2 uses
  %.1 = phi i1 [ %.029, %bb.c ], [ false, %4 ], [ %.029, %bb.b ] ; 3 uses
  %i.t = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.022.027) #30 ; 2 uses
  %.not = icmp eq ptr %i.t, %i.j
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !115

.split:                                           ; preds = %bb.a, %._crit_edge
  %.0.lcssa37 = phi i1 [ %.1, %._crit_edge ], [ true, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.w = load double, ptr %i.u, align 16, !tbaa !61
  %.sroa.019.0.vec.insert = insertelement <2 x double> poison, double %i.w, i64 0
  %i.x = load double, ptr %i.v, align 8, !tbaa !61
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.aa = load double, ptr %i.y, align 8, !tbaa !44, !noalias !117 ; 2 uses
  %i.ab = tail call double @sin(double noundef %i.aa) #29, !noalias !117 ; 2 uses
  %i.ac = tail call double @cos(double noundef %i.aa) #29, !noalias !117 ; 2 uses
  %i.ad = fneg double %i.ab
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x double> poison, double %i.ac, i64 0
  %.sroa.0.8.vec.insert.i.i = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i, double %i.ab, i64 1
  %.sroa.5.16.vec.insert.i.i = insertelement <2 x double> poison, double %i.ad, i64 0
  %.sroa.5.24.vec.insert.i.i = insertelement <2 x double> %.sroa.5.16.vec.insert.i.i, double %i.ac, i64 1
  %i.ae = shufflevector <2 x double> %.sroa.019.0.vec.insert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = fmul <2 x double> %i.ae, %.sroa.0.8.vec.insert.i.i
  %i.ag = insertelement <2 x double> poison, double %i.x, i64 0
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x double> %i.ah, %.sroa.5.24.vec.insert.i.i
  %i.aj = fadd <2 x double> %i.ai, %i.af
  %i.ak = load <2 x double>, ptr %i.z, align 16, !tbaa !124, !noalias !125
  %i.al = fadd <2 x double> %i.ak, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  store <2 x double> %i.al, ptr %i.am, align 16, !tbaa !124
  %i.an = load ptr, ptr %i.e, align 16, !tbaa !39
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 216
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 16 dereferenceable(200) %i.e), !inline_history !126
  br i1 %.0.lcssa37, label %bb.f, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  br i1 %.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.split, %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.as = load double, ptr %i.aq, align 16, !tbaa !61
  %.sroa.016.0.vec.insert = insertelement <2 x double> poison, double %i.as, i64 0
  %i.at = load double, ptr %i.ar, align 8, !tbaa !61
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.aw = load double, ptr %i.au, align 8, !tbaa !44, !noalias !127 ; 2 uses
  %i.ax = tail call double @sin(double noundef %i.aw) #29, !noalias !127 ; 2 uses
  %i.ay = tail call double @cos(double noundef %i.aw) #29, !noalias !127 ; 2 uses
  %i.az = fneg double %i.ax
  %.sroa.0.0.vec.insert.i.i12 = insertelement <2 x double> poison, double %i.ay, i64 0
  %.sroa.0.8.vec.insert.i.i13 = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i12, double %i.ax, i64 1
  %.sroa.5.16.vec.insert.i.i14 = insertelement <2 x double> poison, double %i.az, i64 0
  %.sroa.5.24.vec.insert.i.i15 = insertelement <2 x double> %.sroa.5.16.vec.insert.i.i14, double %i.ay, i64 1
  %i.ba = shufflevector <2 x double> %.sroa.016.0.vec.insert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = fmul <2 x double> %i.ba, %.sroa.0.8.vec.insert.i.i13
  %i.bc = insertelement <2 x double> poison, double %i.at, i64 0
  %i.bd = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = fmul <2 x double> %i.bd, %.sroa.5.24.vec.insert.i.i15
  %i.bf = fadd <2 x double> %i.be, %i.bb
  %i.bg = load <2 x double>, ptr %i.av, align 16, !tbaa !124, !noalias !134
  %i.bh = fadd <2 x double> %i.bg, %i.bf
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  store <2 x double> %i.bh, ptr %i.bi, align 16, !tbaa !124
  %i.bj = load ptr, ptr %i.g, align 16, !tbaa !39
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 216
  %i.bl = load ptr, ptr %i.bk, align 8
  tail call void %i.bl(ptr noundef nonnull align 16 dereferenceable(200) %i.g), !inline_history !126
  br label %bb.g

bb.g:                                             ; preds = %.split, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define noundef double @_ZN3g2o18EdgeSE2TwoPointsXY23initialEstimatePossibleERKSt3setIPNS_10HyperGraph6VertexESt4lessIS4_ESaIS4_EEPNS_16OptimizableGraph6VertexE(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(416) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %1, ptr nofree readnone captures(none) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not9 = icmp eq ptr %i.b, %i.c
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !108
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.05.010 = phi ptr [ %i.b, %.lr.ph ], [ %i.n, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.010, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !108
  %i.m = icmp eq i32 %i.h, %i.l
  br i1 %i.m, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.05.010) #30 ; 2 uses
  %.not = icmp eq ptr %i.n, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !135

._crit_edge:                                      ; preds = %bb.b, %bb.c, %bb.a
  %i.o = phi double [ -1.000000e+00, %bb.a ], [ -1.000000e+00, %bb.c ], [ 1.000000e+00, %bb.b ]
  ret double %i.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define noundef zeroext i1 @_ZN3g2o18EdgeSE2TwoPointsXY23setMeasurementFromStateEv(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(416) initializes((176, 208)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.i = load double, ptr %i.h, align 8, !tbaa !44, !noalias !136
  %i.j = fsub double f0x400921FB54442D18, %i.i    ; 2 uses
  %i.k = tail call double @fmod(double noundef %i.j, double noundef f0x401921FB54442D18) #29, !noalias !136 ; 2 uses
  %i.l = fcmp ugt double %i.k, 0.000000e+00
  %.0.v.i.i = select i1 %i.l, double f0xC00921FB54442D18, double f0x400921FB54442D18
  %.0.i.i = fadd double %i.k, %.0.v.i.i           ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.n = tail call double @sin(double noundef %.0.i.i) #29, !noalias !139 ; 2 uses
  %i.o = tail call double @cos(double noundef %.0.i.i) #29, !noalias !139 ; 2 uses
  %i.p = fneg double %i.n
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.o, i64 0
  %.sroa.0.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i.i, double %i.n, i64 1
  %.sroa.5.16.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.p, i64 0
  %.sroa.5.24.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.5.16.vec.insert.i.i.i.i, double %i.o, i64 1
  %i.q = load double, ptr %i.m, align 8, !tbaa !61, !noalias !150
  %i.r = fneg double %i.q
  %i.s = insertelement <2 x double> poison, double %i.r, i64 0
  %i.t = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.u = fmul <2 x double> %.sroa.0.8.vec.insert.i.i.i.i, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.w = load double, ptr %i.v, align 8, !tbaa !61, !noalias !150
  %i.x = fneg double %i.w
  %i.y = insertelement <2 x double> poison, double %i.x, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aa = fmul <2 x double> %.sroa.5.24.vec.insert.i.i.i.i, %i.z
  %i.ab = fadd <2 x double> %i.u, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.ad = tail call double @sin(double noundef %.0.i.i) #29, !noalias !151 ; 2 uses
  %i.ae = tail call double @cos(double noundef %.0.i.i) #29, !noalias !151 ; 2 uses
  %i.af = fneg double %i.ad
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x double> poison, double %i.ae, i64 0
  %.sroa.0.8.vec.insert.i.i = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i, double %i.ad, i64 1
  %.sroa.5.16.vec.insert.i.i = insertelement <2 x double> poison, double %i.af, i64 0
  %.sroa.5.24.vec.insert.i.i = insertelement <2 x double> %.sroa.5.16.vec.insert.i.i, double %i.ae, i64 1
  %i.ag = load <2 x double>, ptr %i.ac, align 16, !noalias !158 ; 2 uses
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x double> %.sroa.0.8.vec.insert.i.i, %i.ah
  %i.aj = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ak = fmul <2 x double> %.sroa.5.24.vec.insert.i.i, %i.aj
  %i.al = fadd <2 x double> %i.ai, %i.ak
  %i.am = fadd <2 x double> %i.ab, %i.al
  %i.an = tail call double @fmod(double noundef %i.j, double noundef f0x401921FB54442D18) #29, !noalias !159 ; 2 uses
  %i.ao = fcmp ugt double %i.an, 0.000000e+00
  %.0.v.i.i5 = select i1 %i.ao, double f0xC00921FB54442D18, double f0x400921FB54442D18
  %.0.i.i6 = fadd double %i.an, %.0.v.i.i5        ; 4 uses
  %i.ap = tail call double @sin(double noundef %.0.i.i6) #29, !noalias !162 ; 2 uses
  %i.aq = tail call double @cos(double noundef %.0.i.i6) #29, !noalias !162 ; 2 uses
  %i.ar = fneg double %i.ap
  %.sroa.0.0.vec.insert.i.i.i.i7 = insertelement <2 x double> poison, double %i.aq, i64 0
  %.sroa.0.8.vec.insert.i.i.i.i8 = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i.i7, double %i.ap, i64 1
  %.sroa.5.16.vec.insert.i.i.i.i9 = insertelement <2 x double> poison, double %i.ar, i64 0
  %.sroa.5.24.vec.insert.i.i.i.i10 = insertelement <2 x double> %.sroa.5.16.vec.insert.i.i.i.i9, double %i.aq, i64 1
  %i.as = fmul <2 x double> %i.t, %.sroa.0.8.vec.insert.i.i.i.i8
  %i.at = fmul <2 x double> %i.z, %.sroa.5.24.vec.insert.i.i.i.i10
  %i.au = fadd <2 x double> %i.at, %i.as
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.aw = tail call double @sin(double noundef %.0.i.i6) #29, !noalias !173 ; 2 uses
  %i.ax = tail call double @cos(double noundef %.0.i.i6) #29, !noalias !173 ; 2 uses
  %i.ay = fneg double %i.aw
  %.sroa.0.0.vec.insert.i.i11 = insertelement <2 x double> poison, double %i.ax, i64 0
  %.sroa.0.8.vec.insert.i.i12 = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i11, double %i.aw, i64 1
  %.sroa.5.16.vec.insert.i.i13 = insertelement <2 x double> poison, double %i.ay, i64 0
  %.sroa.5.24.vec.insert.i.i14 = insertelement <2 x double> %.sroa.5.16.vec.insert.i.i13, double %i.ax, i64 1
  %i.az = load <2 x double>, ptr %i.av, align 16, !noalias !180 ; 2 uses
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = fmul <2 x double> %.sroa.0.8.vec.insert.i.i12, %i.ba
  %i.bc = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bd = fmul <2 x double> %.sroa.5.24.vec.insert.i.i14, %i.bc
  %i.be = fadd <2 x double> %i.bb, %i.bd
  %i.bf = fadd <2 x double> %i.au, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <2 x double> %i.am, ptr %i.bg, align 16, !tbaa !61
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <2 x double> %i.bf, ptr %i.bh, align 16, !tbaa !61
  ret i1 true
}

end_hunk_0

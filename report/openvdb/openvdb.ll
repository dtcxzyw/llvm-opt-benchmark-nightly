Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/openvdb?download=true
inline.NumInlined: 112558
inline.NumDeleted: 36881
loop-unroll.NumCompletelyUnrolled: 380
loop-unroll.NumRuntimeUnrolled: 183
loop-unroll.NumUnrolled: 1352
begin_hunk_0_@_ZN7openvdb5v13_04math10UnitaryMapC2ERKNS1_4Mat4IdEE:bb.a

bb.y:                                             ; preds = %_ZN7openvdb5v13_04math14hasTranslationIdEEbRKNS1_4Mat4IT_EE.exit.thread
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ac

bb.z:                                             ; preds = %bb.w
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ab

bb.aa:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn15 = phi { ptr, i32 } [ %i.bw, %bb.aa ], [ %i.bv, %bb.z ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #26
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %.pn15.pn = phi { ptr, i32 } [ %.pn15, %bb.ab ], [ %i.bu, %bb.y ]
  %.5 = extractvalue { ptr, i32 } %.pn15.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.bx = call ptr @__cxa_begin_catch(ptr %.5) #26 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.by = call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.by, ptr noundef nonnull @.str.7, ptr noundef nonnull align 8 dereferenceable(32) %8) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_015ArithmeticErrorE, i64 16), ptr %i.by, align 8, !tbaa !1113
  invoke void @__cxa_throw(ptr nonnull %i.by, ptr nonnull @_ZTIN7openvdb5v13_015ArithmeticErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #33
          to label %bb.ar unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %8, align 8, !tbaa !1127  ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.bl
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.ae
  %i.cc = load i64, ptr %i.bl, align 8, !tbaa !1126
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.aq

_ZN7openvdb5v13_04math14hasTranslationIdEEbRKNS1_4Mat4IT_EE.exit: ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 24, i1 false), !tbaa !1104
  %scevgep.1.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %11, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %scevgep.1.i, i64 24, i1 false), !tbaa !1104
  %scevgep.2.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %scevgep.2.i, i64 24, i1 false), !tbaa !1104
  %i.cg = call noundef zeroext i1 @_ZN7openvdb5v13_04math9isUnitaryINS1_4Mat3IdEEEEbRKT_(ptr noundef nonnull align 8 dereferenceable(72) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br i1 %i.cg, label %bb.ap, label %bb.af

bb.af:                                            ; preds = %_ZN7openvdb5v13_04math14hasTranslationIdEEbRKNS1_4Mat4IT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.ch = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.ch, ptr %12, align 8, !tbaa !1122
  %i.ci = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.ci, align 8, !tbaa !1125
  store i8 0, ptr %i.ch, align 8, !tbaa !1126
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %13)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull @.str.68, i64 noundef 51)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38 unwind label %bb.aj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38: ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(112) %13)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38
  %i.ck = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %14) #26 ; 0 uses
  %i.cl = load ptr, ptr %14, align 8, !tbaa !1127 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.ah
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !1126
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.an

bb.ai:                                            ; preds = %bb.af
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.am

bb.aj:                                            ; preds = %bb.ag
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.al

bb.ak:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn14 = phi { ptr, i32 } [ %i.cs, %bb.ak ], [ %i.cr, %bb.aj ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %13) #26
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai
  %.pn14.pn = phi { ptr, i32 } [ %.pn14, %bb.al ], [ %i.cq, %bb.ai ]
  %.7 = extractvalue { ptr, i32 } %.pn14.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.ct = call ptr @__cxa_begin_catch(ptr %.7) #26 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.cu = call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.cu, ptr noundef nonnull @.str.7, ptr noundef nonnull align 8 dereferenceable(32) %12) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_015ArithmeticErrorE, i64 16), ptr %i.cu, align 8, !tbaa !1113
  invoke void @__cxa_throw(ptr nonnull %i.cu, ptr nonnull @_ZTIN7openvdb5v13_015ArithmeticErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #33
          to label %bb.ar unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.cv = landingpad { ptr, i32 }
          cleanup
  %i.cw = load ptr, ptr %12, align 8, !tbaa !1127 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.ch
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.ao
  %i.cy = load i64, ptr %i.ch, align 8, !tbaa !1126
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.aq

bb.ap:                                            ; preds = %_ZN7openvdb5v13_04math14hasTranslationIdEEbRKNS1_4Mat4IT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @_ZN7openvdb5v13_04math9AffineMapC2ERKNS1_4Mat4IdEE(ptr noundef nonnull align 8 dereferenceable(376) %15, ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.da = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.db, ptr noundef nonnull align 8 dereferenceable(128) %i.da, i64 128, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %15, i64 136
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.dd, ptr noundef nonnull align 8 dereferenceable(128) %i.dc, i64 128, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %15, i64 264
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.df, ptr noundef nonnull align 8 dereferenceable(72) %i.de, i64 72, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %15, i64 336
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !1200
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 344
  store double %i.dh, ptr %i.di, align 8, !tbaa !1200
  %i.dj = getelementptr inbounds nuw i8, ptr %15, i64 344
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i64 24, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %15, i64 368
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !1201, !range !1154, !noundef !1155
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i8 %i.dm, ptr %i.dn, align 8, !tbaa !1201
  %i.do = getelementptr inbounds nuw i8, ptr %15, i64 369
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !1202, !range !1154, !noundef !1155
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 377
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !1202
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  ret void

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %.pn16.pn = phi { ptr, i32 } [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ], [ %i.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ]
  resume { ptr, i32 } %.pn16.pn

bb.ar:                                            ; preds = %bb.an, %bb.ad, %bb.t, %bb.j
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZNK7openvdb5v13_04math4Mat4IdE3detEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #6 comdat align 2 {
.split.us.3.3:
  %.sroa.0 = alloca [8 x double], align 16        ; 40 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load <2 x double>, ptr %i.a, align 8, !tbaa !1104
  store <2 x double> %i.b, ptr %.sroa.0, align 16, !tbaa !1104
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load <5 x double>, ptr %i.c, align 8, !tbaa !1104
  %i.e = shufflevector <5 x double> %i.d, <5 x double> poison, <4 x i32> <i32 0, i32 2, i32 3, i32 4>
  %.sroa.0.16..sroa_idx148.a = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  store <4 x double> %i.e, ptr %.sroa.0.16..sroa_idx148.a, align 16, !tbaa !1104
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load <2 x double>, ptr %i.f, align 8, !tbaa !1104
  %.sroa.0.48..sroa_idx171 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  store <2 x double> %i.g, ptr %.sroa.0.48..sroa_idx171, align 16, !tbaa !1104
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load double, ptr %i.h, align 8, !tbaa !1104
  %i.j = load double, ptr %0, align 8, !tbaa !1104
  %.sroa.0.0..sroa.0.0.103.a = load double, ptr %.sroa.0, align 16, !tbaa !1104
  %.sroa.0.8..sroa_idx145.a = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.0.8..sroa.0.8. = load double, ptr %.sroa.0.8..sroa_idx145.a, align 8, !tbaa !1104
  %.sroa.0.16..sroa_idx151.a = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  %.sroa.0.16..sroa.0.16. = load double, ptr %.sroa.0.16..sroa_idx151.a, align 16, !tbaa !1104
  %scevgep.164 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load <2 x double>, ptr %scevgep.164, align 8
  %i.l = shufflevector <2 x double> %i.k, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load double, ptr %i.m, align 8, !tbaa !1104
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load <2 x double>, ptr %i.o, align 8, !tbaa !1104
  %i.q = insertelement <4 x double> %i.l, double %i.n, i64 1
  %i.r = shufflevector <2 x double> %i.p, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.s = shufflevector <4 x double> %i.q, <4 x double> %i.r, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = load double, ptr %i.u, align 8, !tbaa !1104
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.x = load double, ptr %i.w, align 8, !tbaa !1104
  %i.y = load <2 x double>, ptr %i.t, align 8, !tbaa !1104
  %i.z = insertelement <4 x double> poison, double %i.v, i64 2
  %i.aa = insertelement <4 x double> %i.z, double %i.x, i64 3
  %i.ab = shufflevector <2 x double> %i.y, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ac = shufflevector <4 x double> %i.ab, <4 x double> %i.aa, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !1104
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load double, ptr %i.af, align 8, !tbaa !1104
  %scevgep.283 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load <2 x double>, ptr %scevgep.283, align 8, !tbaa !1104
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load <2 x double>, ptr %i.ai, align 8, !tbaa !1104
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load double, ptr %i.ak, align 8, !tbaa !1104
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.an = load double, ptr %i.am, align 8, !tbaa !1104
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ap = load <2 x double>, ptr %i.ao, align 8, !tbaa !1104
  %i.aq = insertelement <4 x double> poison, double %i.al, i64 0
  %i.ar = insertelement <4 x double> %i.aq, double %i.an, i64 1
  %i.as = shufflevector <2 x double> %i.ap, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.at = shufflevector <4 x double> %i.ar, <4 x double> %i.as, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.av = load double, ptr %i.au, align 8, !tbaa !1104 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !1104
  %scevgep.3 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = load <2 x double>, ptr %scevgep.3, align 8, !tbaa !1104
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.be = fneg double %i.av
  %i.bf = fneg double %i.ag
  %.sroa.0.24..sroa_idx156.a = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  %.sroa.0.24..sroa.0.24.120.a = load <2 x double>, ptr %.sroa.0.24..sroa_idx156.a, align 8, !tbaa !1104 ; 3 uses
  store <4 x double> %i.s, ptr %.sroa.0, align 16, !tbaa !1104
  %.sroa.0.24..sroa_idx158 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  %.sroa.0.24..sroa.0.24.124 = load double, ptr %.sroa.0.24..sroa_idx158, align 8, !tbaa !1104 ; 2 uses
  %.sroa.0.0..sroa.0.0. = load <2 x double>, ptr %.sroa.0, align 16, !tbaa !1104 ; 2 uses
  %.sroa.0.16..sroa_idx152.a = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  %.sroa.0.16..sroa.0.16.114.a = load double, ptr %.sroa.0.16..sroa_idx152.a, align 16, !tbaa !1104
  store <2 x double> %i.ah, ptr %.sroa.0, align 16, !tbaa !1104
  %.sroa.0.16..sroa_idx150 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  store <2 x double> %i.aj, ptr %.sroa.0.16..sroa_idx150, align 16, !tbaa !1104
  %.sroa.0.0..sroa.0.0.104 = load double, ptr %.sroa.0, align 16, !tbaa !1104
  %.sroa.0.8..sroa_idx146 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.0.8..sroa.0.8.107 = load double, ptr %.sroa.0.8..sroa_idx146, align 8, !tbaa !1104
  %.sroa.0.16..sroa_idx153 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  %.sroa.0.16..sroa.0.16.116.a = load double, ptr %.sroa.0.16..sroa_idx153, align 16, !tbaa !1104
  store <2 x double> %i.ay, ptr %.sroa.0, align 16, !tbaa !1104
  %i.bg = load double, ptr %i.az, align 8, !tbaa !1104
  %i.bh = load double, ptr %i.ba, align 8, !tbaa !1104
  %i.bi = load <2 x double>, ptr %i.bb, align 8, !tbaa !1104
  %i.bj = insertelement <4 x double> poison, double %i.bg, i64 0
  %i.bk = insertelement <4 x double> %i.bj, double %i.bh, i64 1
  %i.bl = shufflevector <2 x double> %i.bi, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bm = shufflevector <4 x double> %i.bk, <4 x double> %i.bl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bn = load <2 x double>, ptr %i.bc, align 8, !tbaa !1104
  %i.bo = load double, ptr %i.bd, align 8, !tbaa !1104 ; 2 uses
  %i.bp = shufflevector <2 x double> %.sroa.0.0..sroa.0.0., <2 x double> %.sroa.0.24..sroa.0.24.120.a, <2 x i32> <i32 1, i32 3>
  %i.bq = shufflevector <2 x double> %.sroa.0.0..sroa.0.0., <2 x double> %.sroa.0.24..sroa.0.24.120.a, <2 x i32> <i32 0, i32 2>
  %.sroa.0.48..sroa_idx169.a = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  %.sroa.0.48..sroa.0.48.138.a = load <2 x double>, ptr %.sroa.0.48..sroa_idx169.a, align 16, !tbaa !1104 ; 4 uses
  %.sroa.0.32..sroa_idx163 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32
  %.sroa.0.32..sroa.0.32.130.a = load <2 x double>, ptr %.sroa.0.32..sroa_idx163, align 16, !tbaa !1104 ; 2 uses
  %.sroa.0.32..sroa_idx159.a = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32
  store <4 x double> %i.ac, ptr %.sroa.0.32..sroa_idx159.a, align 16, !tbaa !1104
  %.sroa.0.32..sroa_idx162.a = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32
  %.sroa.0.32..sroa.0.32.128 = load <2 x double>, ptr %.sroa.0.32..sroa_idx162.a, align 16, !tbaa !1104 ; 3 uses
  %.sroa.0.48..sroa_idx168.a = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  %.sroa.0.48..sroa.0.48.136 = load <2 x double>, ptr %.sroa.0.48..sroa_idx168.a, align 16, !tbaa !1104 ; 3 uses
  %.sroa.0.56..sroa_idx173 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 56
  %.sroa.0.56..sroa.0.56..a = load double, ptr %.sroa.0.56..sroa_idx173, align 8, !tbaa !1104
  %.sroa.0.32..sroa_idx160 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32
  store <4 x double> %i.at, ptr %.sroa.0.32..sroa_idx160, align 16, !tbaa !1104
  %.sroa.0.40..sroa_idx166 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 40
  %.sroa.0.40..sroa.0.40.134 = load double, ptr %.sroa.0.40..sroa_idx166, align 8, !tbaa !1104
  %.sroa.0.32..sroa_idx161 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32
  %.sroa.0.32..sroa.0.32. = load <2 x double>, ptr %.sroa.0.32..sroa_idx161, align 16, !tbaa !1104
  %.sroa.0.48..sroa_idx167 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  %.sroa.0.48..sroa.0.48. = load <2 x double>, ptr %.sroa.0.48..sroa_idx167, align 16, !tbaa !1104 ; 3 uses
  %.sroa.0.24..sroa_idx155 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  %.sroa.0.24..sroa.0.24. = load <2 x double>, ptr %.sroa.0.24..sroa_idx155, align 8, !tbaa !1104 ; 2 uses
  %.sroa.0.16..sroa_idx149 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  store <4 x double> %i.bm, ptr %.sroa.0.16..sroa_idx149, align 16, !tbaa !1104
  %.sroa.0.48..sroa_idx172 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  store <2 x double> %i.bn, ptr %.sroa.0.48..sroa_idx172, align 16, !tbaa !1104
  %i.br = fneg <2 x double> %.sroa.0.48..sroa.0.48.
  %i.bs = fmul <2 x double> %.sroa.0.32..sroa.0.32., %i.br
  %i.bt = shufflevector <2 x double> %.sroa.0.48..sroa.0.48., <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bu = insertelement <2 x double> %i.bt, double %i.av, i64 1
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %.sroa.0.24..sroa.0.24., <2 x double> %i.bu, <2 x double> %i.bs) ; 2 uses
  %i.bw = extractelement <2 x double> %.sroa.0.24..sroa.0.24., i64 0
  %i.bx = fmul double %i.bw, %i.be
  %i.by = extractelement <2 x double> %.sroa.0.48..sroa.0.48., i64 0
  %i.bz = tail call double @llvm.fmuladd.f64(double %.sroa.0.40..sroa.0.40.134, double %i.by, double %i.bx)
  %i.ca = fmul double %.sroa.0.8..sroa.0.8.107, %i.bz
  %i.cb = extractelement <2 x double> %i.bv, i64 1
  %i.cc = tail call double @llvm.fmuladd.f64(double %.sroa.0.0..sroa.0.0.104, double %i.cb, double %i.ca)
  %i.cd = extractelement <2 x double> %i.bv, i64 0
  %i.ce = tail call noundef double @llvm.fmuladd.f64(double %.sroa.0.16..sroa.0.16.116.a, double %i.cd, double %i.cc)
  %i.cf = extractelement <2 x double> %.sroa.0.48..sroa.0.48.136, i64 0
  %i.cg = fneg double %i.cf
  %i.ch = extractelement <2 x double> %.sroa.0.32..sroa.0.32.128, i64 0
  %i.ci = fmul double %i.ch, %i.cg
  %i.cj = tail call double @llvm.fmuladd.f64(double %.sroa.0.24..sroa.0.24.124, double %.sroa.0.56..sroa.0.56..a, double %i.ci)
  %i.ck = shufflevector <2 x double> %.sroa.0.48..sroa.0.48.136, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cl = insertelement <2 x double> %i.ck, double %i.ae, i64 1 ; 2 uses
  %i.cm = fneg <2 x double> %i.cl
  %i.cn = shufflevector <2 x double> %.sroa.0.32..sroa.0.32.128, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.co = insertelement <2 x double> %i.cn, double %.sroa.0.24..sroa.0.24.124, i64 1
  %i.cp = fmul <2 x double> %i.co, %i.cm
  %i.cq = shufflevector <2 x double> %i.cl, <2 x double> %.sroa.0.48..sroa.0.48.136, <2 x i32> <i32 1, i32 2>
  %i.cr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %.sroa.0.32..sroa.0.32.128, <2 x double> %i.cq, <2 x double> %i.cp) ; 2 uses
  %i.cs = fneg <2 x double> %.sroa.0.48..sroa.0.48.138.a
  %i.ct = shufflevector <2 x double> %i.cr, <2 x double> %i.cs, <2 x i32> <i32 1, i32 2>
  %i.cu = fmul <2 x double> %i.bp, %i.ct
  %i.cv = shufflevector <2 x double> %i.cr, <2 x double> %.sroa.0.48..sroa.0.48.138.a, <2 x i32> <i32 0, i32 3>
  %i.cw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.cv, <2 x double> %i.cu) ; 2 uses
  %i.cx = extractelement <2 x double> %i.cw, i64 0
  %i.cy = tail call noundef double @llvm.fmuladd.f64(double %.sroa.0.16..sroa.0.16.114.a, double %i.cj, double %i.cx)
  %i.cz = shufflevector <2 x double> %.sroa.0.48..sroa.0.48.138.a, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.da = insertelement <2 x double> %i.cz, double %i.i, i64 1 ; 2 uses
  %i.db = fneg <2 x double> %i.da
  %i.dc = shufflevector <2 x double> %.sroa.0.32..sroa.0.32.130.a, <2 x double> %.sroa.0.24..sroa.0.24.120.a, <2 x i32> <i32 1, i32 2>
  %i.dd = fmul <2 x double> %i.dc, %i.db
  %i.de = shufflevector <2 x double> %i.da, <2 x double> %.sroa.0.48..sroa.0.48.138.a, <2 x i32> <i32 1, i32 2>
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %.sroa.0.32..sroa.0.32.130.a, <2 x double> %i.de, <2 x double> %i.dd) ; 2 uses
  %i.dg = extractelement <2 x double> %i.df, i64 1
  %i.dh = fmul double %.sroa.0.8..sroa.0.8., %i.dg
  %i.di = extractelement <2 x double> %i.df, i64 0
  %i.dj = tail call double @llvm.fmuladd.f64(double %.sroa.0.0..sroa.0.0.103.a, double %i.di, double %i.dh)
  %i.dk = extractelement <2 x double> %i.cw, i64 1
  %i.dl = tail call noundef double @llvm.fmuladd.f64(double %.sroa.0.16..sroa.0.16., double %i.dk, double %i.dj)
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.j, double %i.dl, double 0.000000e+00)
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.cy, double %i.dm)
  %i.do = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.ce, double %i.dn)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !1104
  %i.dr = fneg double %i.dq
  %.sroa.0.40..sroa_idx165 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 40
  %.sroa.0.40..sroa.0.40. = load double, ptr %.sroa.0.40..sroa_idx165, align 8, !tbaa !1104 ; 2 uses
  %.sroa.0.56..sroa_idx174 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 56
  %.sroa.0.56..sroa.0.56.144 = load double, ptr %.sroa.0.56..sroa_idx174, align 8, !tbaa !1104
  %.sroa.0.48..sroa_idx170 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  %.sroa.0.48..sroa.0.48.140 = load <2 x double>, ptr %.sroa.0.48..sroa_idx170, align 16, !tbaa !1104 ; 2 uses
  %1 = fneg double %.sroa.0.56..sroa.0.56.144
  %2 = fmul double %.sroa.0.40..sroa.0.40., %1
  %.sroa.0.32..sroa_idx164 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32
  %.sroa.0.32..sroa.0.32.132 = load double, ptr %.sroa.0.32..sroa_idx164, align 16, !tbaa !1104
  %.sroa.0.24..sroa_idx157 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  %.sroa.0.24..sroa.0.24.122 = load <2 x double>, ptr %.sroa.0.24..sroa_idx157, align 8, !tbaa !1104 ; 2 uses
  %3 = tail call double @llvm.fmuladd.f64(double %.sroa.0.32..sroa.0.32.132, double %i.bo, double %2)
  %4 = shufflevector <2 x double> %.sroa.0.48..sroa.0.48.140, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ds = insertelement <2 x double> %4, double %i.bo, i64 0
  %5 = fneg <2 x double> %i.ds
  %6 = fmul <2 x double> %.sroa.0.24..sroa.0.24.122, %5
  %7 = shufflevector <2 x double> %.sroa.0.24..sroa.0.24.122, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %8 = insertelement <2 x double> %7, double %.sroa.0.40..sroa.0.40., i64 0
  %9 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> %.sroa.0.48..sroa.0.48.140, <2 x double> %6) ; 2 uses
  %.sroa.0.0..sroa.0.0.105 = load double, ptr %.sroa.0, align 16, !tbaa !1104
  %.sroa.0.8..sroa_idx147 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.0.8..sroa.0.8.109 = load double, ptr %.sroa.0.8..sroa_idx147, align 8, !tbaa !1104
  %10 = extractelement <2 x double> %9, i64 0
  %11 = fmul double %.sroa.0.8..sroa.0.8.109, %10
  %12 = tail call double @llvm.fmuladd.f64(double %.sroa.0.0..sroa.0.0.105, double %3, double %11)
  %.sroa.0.16..sroa_idx154 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  %.sroa.0.16..sroa.0.16.118 = load double, ptr %.sroa.0.16..sroa_idx154, align 16, !tbaa !1104
  %i.dt = extractelement <2 x double> %9, i64 1
  %i.du = tail call noundef double @llvm.fmuladd.f64(double %.sroa.0.16..sroa.0.16.118, double %i.dt, double %12)
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.dr, double %i.du, double %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret double %i.dv
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_017typelist_internal13TSForEachImplINS0_11RegisterMapENS0_4math15UniformScaleMapEJNS4_14TranslationMapENS4_17ScaleTranslateMapENS4_24UniformScaleTranslateMapENS4_19NonlinearFrustumMapEEEEvv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !1122, !alias.scope !9667
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, ptr noundef nonnull align 1 dereferenceable(15) @.str.27, i64 15, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 15, ptr %i.b, align 8, !tbaa !1125, !alias.scope !9667
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 31
  store i8 0, ptr %i.c, align 1, !tbaa !1126, !alias.scope !9667
  invoke void @_ZN7openvdb5v13_04math11MapRegistry11registerMapERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFSt10shared_ptrINS1_7MapBaseEEvE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @_ZN7openvdb5v13_04math15UniformScaleMap6createEv)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !1127   ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZN7openvdb5v13_011RegisterMapINS0_4math15UniformScaleMapEEclEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !1126
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #35
  br label %_ZN7openvdb5v13_011RegisterMapINS0_4math15UniformScaleMapEEclEv.exit

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %1, align 8, !tbaa !1127   ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !1126
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %common.resume

_ZN7openvdb5v13_011RegisterMapINS0_4math15UniformScaleMapEEclEv.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !1122, !alias.scope !9668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.m, ptr noundef nonnull align 1 dereferenceable(14) @.str.28, i64 14, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 14, ptr %i.n, align 8, !tbaa !1125, !alias.scope !9668
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 0, ptr %i.o, align 2, !tbaa !1126, !alias.scope !9668
  invoke void @_ZN7openvdb5v13_04math11MapRegistry11registerMapERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFSt10shared_ptrINS1_7MapBaseEEvE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @_ZN7openvdb5v13_04math14TranslationMap6createEv)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN7openvdb5v13_011RegisterMapINS0_4math15UniformScaleMapEEclEv.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !1127   ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.m
  br i1 %i.q, label %_ZN7openvdb5v13_017typelist_internal13TSForEachImplINS0_11RegisterMapENS0_4math14TranslationMapEJNS4_17ScaleTranslateMapENS4_24UniformScaleTranslateMapENS4_19NonlinearFrustumMapEEEEvv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.m, align 8, !tbaa !1126
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #35
  br label %_ZN7openvdb5v13_017typelist_internal13TSForEachImplINS0_11RegisterMapENS0_4math14TranslationMapEJNS4_17ScaleTranslateMapENS4_24UniformScaleTranslateMapENS4_19NonlinearFrustumMapEEEEvv.exit

bb.e:                                             ; preds = %_ZN7openvdb5v13_011RegisterMapINS0_4math15UniformScaleMapEEclEv.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %0, align 8, !tbaa !1127   ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.m
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %bb.e
  %i.w = load i64, ptr %i.m, align 8, !tbaa !1126
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %common.resume

_ZN7openvdb5v13_017typelist_internal13TSForEachImplINS0_11RegisterMapENS0_4math14TranslationMapEJNS4_17ScaleTranslateMapENS4_24UniformScaleTranslateMapENS4_19NonlinearFrustumMapEEEEvv.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  call void @_ZN7openvdb5v13_04math17ScaleTranslateMap11registerMapEv()
  call void @_ZN7openvdb5v13_04math24UniformScaleTranslateMap11registerMapEv()
  call void @_ZN7openvdb5v13_04math19NonlinearFrustumMap11registerMapEv()
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math8ScaleMap6createEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0) #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #32 ; 13 uses
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN7openvdb5v13_04math8ScaleMapE, i64 16), ptr %i.a, align 8, !tbaa !1113
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store <2 x double> splat (double 1.000000e+00), ptr %i.b, align 8, !tbaa !1104
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store <2 x double> splat (double 1.000000e+00), ptr %i.c, align 8, !tbaa !1104
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store <2 x double> splat (double 1.000000e+00), ptr %i.d, align 8, !tbaa !1104
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store <2 x double> splat (double 1.000000e+00), ptr %i.e, align 8, !tbaa !1104
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store <2 x double> splat (double 1.000000e+00), ptr %i.f, align 8, !tbaa !1104
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store <2 x double> splat (double 1.000000e+00), ptr %i.g, align 8, !tbaa !1104
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store <2 x double> splat (double 5.000000e-01), ptr %i.h, align 8, !tbaa !1104
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store double 5.000000e-01, ptr %i.i, align 8, !tbaa !1104
  store ptr %i.a, ptr %0, align 8, !tbaa !1110
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !1111
  %i.k = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32
          to label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEC2INS2_8ScaleMapEvEEPT_.exit unwind label %bb.b ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #26 ; 0 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !1113
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(128) %i.a) #26, !inline_history !6
  invoke void @__cxa_rethrow() #33
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.r

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #34
  unreachable

bb.f:                                             ; preds = %bb.b
  unreachable

_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEC2INS2_8ScaleMapEvEEPT_.exit: ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 1, ptr %i.u, align 8, !tbaa !1115
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 1, ptr %i.v, align 4, !tbaa !1116
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7openvdb5v13_04math8ScaleMapELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.k, align 8, !tbaa !1113
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.a, ptr %i.w, align 8, !tbaa !1181
  store ptr %i.k, ptr %i.j, align 8, !tbaa !1111
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math15UniformScaleMap6createEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0) #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store <2 x double> splat (double 1.000000e+00), ptr %1, align 16, !tbaa !1104
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double 1.000000e+00, ptr %i.b, align 16, !tbaa !1104
  invoke void @_ZN7openvdb5v13_04math8ScaleMapC2ERKNS1_4Vec3IdEE(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN7openvdb5v13_04math15UniformScaleMapE, i64 16), ptr %i.a, align 8, !tbaa !1113
  store ptr %i.a, ptr %0, align 8, !tbaa !1110
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !1111
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32
          to label %_ZNSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEC2INS2_15UniformScaleMapEvEEPT_.exit unwind label %bb.c ; 5 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = call ptr @__cxa_begin_catch(ptr %i.f) #26 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 128) #35
  invoke void @__cxa_rethrow() #33
end_hunk_0

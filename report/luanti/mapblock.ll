Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mapblock?download=true
inline.NumInlined: 1707
inline.NumDeleted: 782
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN8MapBlock11deSerializeERSihb:bb.a
  %i.ys = phi ptr [ %.pre.i354, %.noexc355 ], [ %i.yj, %bb.hk ] ; 2 uses
  %i.yt = getelementptr inbounds i8, ptr %i.ys, i64 %i.yr
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 240
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !127 ; 6 uses
  %.not.i.i.i458 = icmp eq ptr %i.yv, null
  br i1 %.not.i.i.i458, label %bb.hn, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i459

bb.hn:                                            ; preds = %bb.hm
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc463 unwind label %bb.hq

.noexc463:                                        ; preds = %bb.hn
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i459: ; preds = %bb.hm
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 56
  %i.yx = load i8, ptr %i.yw, align 8, !tbaa !132
  %.not.i1.i.i460 = icmp eq i8 %i.yx, 0
  br i1 %.not.i1.i.i460, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i459
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yv, i64 67
  %i.yz = load i8, ptr %i.yy, align 1, !tbaa !95
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i461

bb.hp:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i459
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.yv)
          to label %.noexc464 unwind label %bb.hq

.noexc464:                                        ; preds = %bb.hp
  %i.za = load ptr, ptr %i.yv, align 8, !tbaa !112
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 48
  %i.zc = load ptr, ptr %i.zb, align 8
  %i.zd = invoke noundef signext i8 %i.zc(ptr noundef nonnull align 8 dereferenceable(570) %i.yv, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i461 unwind label %bb.hq, !inline_history !182

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i461: ; preds = %.noexc464, %bb.ho
  %.0.i.i.i462 = phi i8 [ %i.yz, %bb.ho ], [ %i.zd, %.noexc464 ]
  %i.ze = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ys, i8 noundef signext %.0.i.i.i462)
          to label %.noexc466 unwind label %bb.hq

.noexc466:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i461
  %i.zf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ze)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit357 unwind label %bb.hq ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit357:             ; preds = %bb.hj, %.noexc466
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  br label %bb.hr

bb.hq:                                            ; preds = %.noexc466, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i461, %.noexc464, %bb.hp, %bb.hn, %bb.hl, %bb.hi, %bb.hh
  %i.zg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  br label %bb.ht

bb.hr:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit357, %_ZN9LogStreamcvbEv.exit343
  call void @_ZN13NameIdMappingD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.zh = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.zh, ptr %7, align 8, !tbaa !112
  %i.zi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.zj = getelementptr i8, ptr %i.zh, i64 -24
  %i.zk = load i64, ptr %i.zj, align 8
  %i.zl = getelementptr inbounds i8, ptr %7, i64 %i.zk
  store ptr %i.zi, ptr %i.zl, align 8, !tbaa !112
  %i.zm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.zn = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.zm, ptr %i.zn, align 8, !tbaa !112
  %i.zo = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.zo, align 8, !tbaa !112
  %i.zp = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !94 ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  %i.zs = icmp eq ptr %i.zq, %i.zr
  br i1 %i.zs, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.hr
  %i.zt = load i64, ptr %i.zr, align 8, !tbaa !95
  %i.zu = add i64 %i.zt, 1
  call void @_ZdlPvm(ptr noundef %i.zq, i64 noundef %i.zu) #29
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.hr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.zo, align 8, !tbaa !112
  %i.zv = getelementptr inbounds nuw i8, ptr %7, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.zv) #20
  %i.zw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.zw, ptr %7, align 8, !tbaa !112
  %i.zx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.zy = getelementptr i8, ptr %i.zw, i64 -24
  %i.zz = load i64, ptr %i.zy, align 8
  %i.aaa = getelementptr inbounds i8, ptr %7, i64 %i.zz
  store ptr %i.zx, ptr %i.aaa, align 8, !tbaa !112
  %i.aab = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.aab, align 8, !tbaa !185
  %i.aac = getelementptr inbounds nuw i8, ptr %7, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.aac) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.hs

bb.hs:                                            ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.q
  ret void

bb.ht:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178.thread, %bb.ca, %bb.du, %bb.dv, %bb.ci, %bb.cd, %bb.hq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339, %bb.gy, %bb.gh, %bb.fs, %bb.fc, %bb.en, %bb.dg, %bb.cy, %bb.cb, %bb.bt, %bb.be, %bb.ao, %bb.an
  %.merged101 = phi { ptr, i32 } [ %i.fu, %bb.ao ], [ %i.jb, %bb.bt ], [ %i.ft, %bb.an ], [ %i.hq, %bb.be ], [ %i.jw, %bb.ca ], [ %i.ke, %bb.cd ], [ %i.jy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178.thread ], [ %i.km, %bb.ci ], [ %i.kg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181.thread ], [ %i.zg, %bb.hq ], [ %i.jx, %bb.cb ], [ %i.xr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339 ], [ %i.xa, %bb.gy ], [ %i.vk, %bb.gh ], [ %i.to, %bb.fs ], [ %i.sc, %bb.fc ], [ %i.qq, %bb.en ], [ %i.mb, %bb.cy ], [ %.pn87, %bb.dg ], [ %i.ox, %bb.du ], [ %.pn89, %bb.dv ]
  call void @_ZN13NameIdMappingD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.hu

bb.hu:                                            ; preds = %bb.w, %bb.ht, %bb.t
  %.merged99 = phi { ptr, i32 } [ %i.cx, %bb.t ], [ %.merged101, %bb.ht ], [ %i.dl, %bb.w ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.hv

bb.hv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.e, %bb.hu
  %.merged = phi { ptr, i32 } [ %.merged99, %bb.hu ], [ %i.ap, %bb.e ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  resume { ptr, i32 } %.merged

bb.hw:                                            ; preds = %bb.dv
  %i.aad = landingpad { ptr, i32 }
          catch ptr null
  %i.aae = extractvalue { ptr, i32 } %i.aad, 0
  call void @__clang_call_terminate(ptr %i.aae) #30
  unreachable

bb.hx:                                            ; preds = %bb.cg, %bb.bz, %bb.c
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN8MapBlock17deSerialize_pre22ERSihb(ptr noundef nonnull align 8 dereferenceable(328) initializes((64, 65), (80, 84)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 5 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca [2 x i8], align 2                 ; 5 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::allocator.25", align 1 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::allocator.25", align 1 ; 5 uses
  %i.j = alloca i8, align 1                       ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::allocator.25", align 1 ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::allocator.25", align 1 ; 5 uses
  %20 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.std::allocator.25", align 1 ; 5 uses
  %i.k = alloca i8, align 1                       ; 5 uses
  %25 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.std::allocator.25", align 1 ; 5 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %31 = alloca %"class.std::__cxx11::basic_istringstream", align 8 ; 7 uses
  %32 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %33 = alloca %"class.std::__cxx11::basic_istringstream", align 8 ; 7 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %35 = alloca %class.NameIdMapping, align 8      ; 21 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 83 ; 4 uses
  store i8 0, ptr %i.l, align 1, !tbaa !76
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  store i8 0, ptr %i.m, align 8, !tbaa !152
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i16 -1, ptr %i.n, align 8, !tbaa !74
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 82 ; 2 uses
  store i8 1, ptr %i.o, align 2, !tbaa !75
  %i.p = tail call noundef i32 @_ZN7MapNode16serializedLengthEh(i8 noundef zeroext %2) ; 19 uses
  %i.q = shl i32 %i.p, 12                         ; 3 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %_ZN6BufferIhEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #28
  br label %_ZN6BufferIhEC2Em.exit

_ZN6BufferIhEC2Em.exit:                           ; preds = %bb.a, %bb.b
  %storemerge.i = phi ptr [ %i.s, %bb.b ], [ null, %bb.a ] ; 39 uses
  switch i8 %2, label %bb.r [
    i8 6, label %bb.c
    i8 5, label %bb.c
    i8 3, label %bb.c
    i8 2, label %bb.c
    i8 1, label %bb.c
    i8 0, label %bb.c
  ]

bb.c:                                             ; preds = %_ZN6BufferIhEC2Em.exit, %_ZN6BufferIhEC2Em.exit, %_ZN6BufferIhEC2Em.exit, %_ZN6BufferIhEC2Em.exit, %_ZN6BufferIhEC2Em.exit, %_ZN6BufferIhEC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  %i.t = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.i, i64 noundef 1)
          to label %bb.d unwind label %bb.h       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !185
  %.not235 = icmp eq i64 %i.v, 1
  br i1 %.not235, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8MapBlock17deSerialize_pre22ERSihb, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.32)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.g:                                             ; preds = %bb.f
  call void @_ZN18SerializationErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %4)
  invoke void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTI18SerializationError, ptr nonnull @_ZN13BaseExceptionD2Ev) #31
          to label %bb.gd unwind label %bb.i

bb.h:                                             ; preds = %bb.j, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.thread: ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.thread491

bb.i:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %4, align 8, !tbaa !94    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !95
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.af = load ptr, ptr %5, align 8, !tbaa !94    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %5, align 8, !tbaa !94    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.thread491, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !95
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.thread491

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = load i64, ptr %i.ag, align 8, !tbaa !95
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ap) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.thread491: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.thread
  %.pn256.pn484 = phi { ptr, i32 } [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.thread ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273.thread ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @__cxa_free_exception(ptr %i.w) #20
  br label %bb.q

bb.j:                                             ; preds = %bb.d
  %i.aq = load i8, ptr %i.i, align 1, !tbaa !95
  %i.ar = icmp ne i8 %i.aq, 0
  %i.as = zext i1 %i.ar to i8
  store i8 %i.as, ptr %i.l, align 1, !tbaa !76
  %i.at = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %storemerge.i, i64 noundef %i.r)
          to label %bb.k unwind label %bb.h       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.au = load i64, ptr %i.u, align 8, !tbaa !185
  %i.av = trunc i64 %i.au to i32
  %.not236 = icmp eq i32 %i.q, %i.av
  br i1 %.not236, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8MapBlock17deSerialize_pre22ERSihb, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.m unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281.thread

bb.m:                                             ; preds = %bb.l
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.32)
          to label %bb.n unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278.thread

bb.n:                                             ; preds = %bb.m
  call void @_ZN18SerializationErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %7)
  invoke void @__cxa_throw(ptr nonnull %i.aw, ptr nonnull @_ZTI18SerializationError, ptr nonnull @_ZN13BaseExceptionD2Ev) #31
          to label %bb.gd unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281.thread: ; preds = %bb.l
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281.thread503

bb.o:                                             ; preds = %bb.n
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %7, align 8, !tbaa !94    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276: ; preds = %bb.o
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !95
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276
  %i.be = load ptr, ptr %8, align 8, !tbaa !94    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278.thread: ; preds = %bb.m
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %8, align 8, !tbaa !94    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281.thread503, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278.thread
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !95
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281.thread503

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278
  %i.bn = load i64, ptr %i.bf, align 8, !tbaa !95
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bo) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281.thread503: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281.thread
  %.pn253.pn496 = phi { ptr, i32 } [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281.thread ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279.thread ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @__cxa_free_exception(ptr %i.aw) #20
  br label %bb.q

bb.p:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  br label %bb.ds

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281.thread503, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.thread491, %bb.h
  %.pn256.pn.pn = phi { ptr, i32 } [ %.pn256.pn484, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.thread491 ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275 ], [ %.pn253.pn496, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281.thread503 ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281 ], [ %i.x, %bb.h ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273 ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  br label %bb.gb

bb.r:                                             ; preds = %_ZN6BufferIhEC2Em.exit
  %i.bp = icmp ult i8 %2, 11
  br i1 %i.bp, label %bb.s, label %bb.bo

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  %i.bq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.j, i64 noundef 1)
          to label %bb.t unwind label %bb.ac      ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.br = load i8, ptr %i.j, align 1, !tbaa !95
  %i.bs = icmp ne i8 %i.br, 0
  %i.bt = zext i1 %i.bs to i8
  store i8 %i.bt, ptr %i.l, align 1, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(112) %10, i32 noundef 4)
          to label %bb.u unwind label %bb.ad

bb.u:                                             ; preds = %bb.t
  invoke void @_Z10decompressRSiRSoh(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %10, i8 noundef zeroext %2)
          to label %bb.v unwind label %bb.ae

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !298)
  call void @llvm.experimental.noalias.scope.decl(metadata !299)
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.bu, ptr %11, align 8, !tbaa !135, !alias.scope !300
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 0, ptr %i.bv, align 8, !tbaa !137, !alias.scope !300
  store i8 0, ptr %i.bu, align 8, !tbaa !95, !alias.scope !300
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !178, !noalias !300 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.bx, null
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !300 ; 2 uses
  %i.ca = icmp ugt ptr %i.bx, %i.bz
  %.08.i.i.i = select i1 %i.ca, ptr %i.bx, ptr %i.bz ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !179, !noalias !300 ; 2 uses
  %i.cd = ptrtoint ptr %.08.i.i.i to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.cc, i64 noundef %i.cf)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.x ; 0 uses

bb.x:                                             ; preds = %bb.y, %bb.w
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load ptr, ptr %11, align 8, !tbaa !94, !alias.scope !300 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.bu
  br i1 %i.cj, label %.body, label %.body.sink.split

bb.y:                                             ; preds = %bb.v
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ck)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.x

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.y, %bb.w
  %i.cl = load i64, ptr %i.bv, align 8, !tbaa !137
  %.not213 = icmp eq i64 %i.cl, 4096
  br i1 %.not213, label %.preheader574, label %bb.z

.preheader574:                                    ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cm = load ptr, ptr %11, align 8, !tbaa !94   ; 11 uses
  %ident.check.not = icmp ne i32 %i.p, 1
  %i.cn = ptrtoaddr ptr %storemerge.i to i64
  %41 = ptrtoaddr ptr %i.cm to i64
  %i.co = sub i64 %41, %i.cn
  %diff.check = icmp ugt i64 %i.co, -32
  %or.cond = select i1 %ident.check.not, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.preheader574, %vector.body
  %index = phi i64 [ %index.next.3, %vector.body ], [ 0, %.preheader574 ] ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %index ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %wide.load = load <16 x i8>, ptr %i.cp, align 1, !tbaa !95
  %wide.load733 = load <16 x i8>, ptr %i.cq, align 1, !tbaa !95
  %i.cr = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %index ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store <16 x i8> %wide.load, ptr %i.cr, align 1, !tbaa !95
  store <16 x i8> %wide.load733, ptr %i.cs, align 1, !tbaa !95
  %index.next = or disjoint i64 %index, 32        ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 %index.next ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %wide.load.1 = load <16 x i8>, ptr %i.ct, align 1, !tbaa !95
  %wide.load733.1 = load <16 x i8>, ptr %i.cu, align 1, !tbaa !95
  %i.cv = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %index.next ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store <16 x i8> %wide.load.1, ptr %i.cv, align 1, !tbaa !95
  store <16 x i8> %wide.load733.1, ptr %i.cw, align 1, !tbaa !95
  %index.next.1 = or disjoint i64 %index, 64      ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 %index.next.1 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load.2 = load <16 x i8>, ptr %i.cx, align 1, !tbaa !95
  %wide.load733.2 = load <16 x i8>, ptr %i.cy, align 1, !tbaa !95
  %i.cz = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %index.next.1 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store <16 x i8> %wide.load.2, ptr %i.cz, align 1, !tbaa !95
  store <16 x i8> %wide.load733.2, ptr %i.da, align 1, !tbaa !95
  %index.next.2 = or disjoint i64 %index, 96      ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cm, i64 %index.next.2 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load.3 = load <16 x i8>, ptr %i.db, align 1, !tbaa !95
  %wide.load733.3 = load <16 x i8>, ptr %i.dc, align 1, !tbaa !95
  %i.dd = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %index.next.2 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <16 x i8> %wide.load.3, ptr %i.dd, align 1, !tbaa !95
  store <16 x i8> %wide.load733.3, ptr %i.de, align 1, !tbaa !95
  %index.next.3 = add nuw nsw i64 %index, 128     ; 2 uses
  %i.df = icmp eq i64 %index.next.3, 4096
  br i1 %i.df, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288, label %vector.body, !llvm.loop !276

bb.z:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.dg = call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8MapBlock17deSerialize_pre22ERSihb, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.aa unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.thread

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.32)
          to label %bb.ab unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284.thread

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN18SerializationErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %12)
  invoke void @__cxa_throw(ptr nonnull %i.dg, ptr nonnull @_ZTI18SerializationError, ptr nonnull @_ZN13BaseExceptionD2Ev) #31
          to label %bb.gd unwind label %bb.af

bb.ac:                                            ; preds = %bb.s
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.ad:                                            ; preds = %bb.t
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ae:                                            ; preds = %bb.u
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.thread: ; preds = %bb.z
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.thread516

bb.af:                                            ; preds = %bb.ab
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dm = load ptr, ptr %12, align 8, !tbaa !94   ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282: ; preds = %bb.af
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !95
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282
  %i.dr = load ptr, ptr %13, align 8, !tbaa !94   ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284.thread: ; preds = %bb.aa
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dv = load ptr, ptr %13, align 8, !tbaa !94   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.thread516, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284.thread
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !95
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.thread516

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284
  %i.ea = load i64, ptr %i.ds, align 8, !tbaa !95
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.eb) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.ao

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.ao

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.thread516: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.thread
  %.pn228.pn509 = phi { ptr, i32 } [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.thread ], [ %i.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285.thread ], [ %i.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @__cxa_free_exception(ptr %i.dg) #20
  br label %bb.ao

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288: ; preds = %vector.body, %scalar.ph
  %i.ec = icmp ne ptr %i.cm, %i.bu
  call void @llvm.assume(i1 %i.ec)
  %i.ed = load i64, ptr %i.bu, align 8, !tbaa !95
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.ee) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.ef = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 4 uses
  store ptr %i.ef, ptr %10, align 8, !tbaa !112
  %i.eg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 3 uses
  %i.eh = getelementptr i8, ptr %i.ef, i64 -24    ; 3 uses
  %i.ei = load i64, ptr %i.eh, align 8
  %i.ej = getelementptr inbounds i8, ptr %10, i64 %i.ei
  store ptr %i.eg, ptr %i.ej, align 8, !tbaa !112
  %i.ek = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ek, align 8, !tbaa !112
  %i.el = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !94 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !95
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ek, align 8, !tbaa !112
  %i.er = getelementptr inbounds nuw i8, ptr %10, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.er) #20
  %i.es = getelementptr inbounds nuw i8, ptr %10, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.es) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(112) %15, i32 noundef 4)
          to label %bb.ag unwind label %bb.ar

scalar.ph:                                        ; preds = %.preheader574, %scalar.ph
  %indvars.iv607 = phi i64 [ %indvars.iv.next608.3, %scalar.ph ], [ 0, %.preheader574 ] ; 6 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.cm, i64 %indvars.iv607
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !95
  %i.ev = trunc nuw i64 %indvars.iv607 to i32
  %i.ew = mul i32 %i.p, %i.ev
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.ex
  store i8 %i.eu, ptr %i.ey, align 1, !tbaa !95
  %indvars.iv.next608 = or disjoint i64 %indvars.iv607, 1 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cm, i64 %indvars.iv.next608
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !95
  %i.fb = trunc nuw i64 %indvars.iv.next608 to i32
  %i.fc = mul i32 %i.p, %i.fb
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.fd
  store i8 %i.fa, ptr %i.fe, align 1, !tbaa !95
  %indvars.iv.next608.1 = or disjoint i64 %indvars.iv607, 2 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cm, i64 %indvars.iv.next608.1
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !95
  %i.fh = trunc nuw i64 %indvars.iv.next608.1 to i32
  %i.fi = mul i32 %i.p, %i.fh
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.fj
  store i8 %i.fg, ptr %i.fk, align 1, !tbaa !95
  %indvars.iv.next608.2 = or disjoint i64 %indvars.iv607, 3 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.cm, i64 %indvars.iv.next608.2
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !95
  %i.fn = trunc nuw i64 %indvars.iv.next608.2 to i32
  %i.fo = mul i32 %i.p, %i.fn
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.fp
  store i8 %i.fm, ptr %i.fq, align 1, !tbaa !95
  %indvars.iv.next608.3 = add nuw nsw i64 %indvars.iv607, 4 ; 2 uses
  %exitcond610.not.3 = icmp eq i64 %indvars.iv.next608.3, 4096
  br i1 %exitcond610.not.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288, label %scalar.ph, !llvm.loop !277

bb.ag:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  invoke void @_Z10decompressRSiRSoh(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %15, i8 noundef zeroext %2)
          to label %bb.ah unwind label %bb.as

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !301)
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.fr = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  store ptr %i.fr, ptr %16, align 8, !tbaa !135, !alias.scope !303
  %i.fs = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store i64 0, ptr %i.fs, align 8, !tbaa !137, !alias.scope !303
  store i8 0, ptr %i.fr, align 8, !tbaa !95, !alias.scope !303
  %i.ft = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !178, !noalias !303 ; 3 uses
  %.not.i.not.i.i291 = icmp eq ptr %i.fu, null
  %i.fv = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !303 ; 2 uses
  %i.fx = icmp ugt ptr %i.fu, %i.fw
  %.08.i.i.i292 = select i1 %i.fx, ptr %i.fu, ptr %i.fw ; 2 uses
  %.not5.i.i293 = icmp eq ptr %.08.i.i.i292, null
  %.not.i.i294 = select i1 %.not.i.not.i.i291, i1 true, i1 %.not5.i.i293
  br i1 %.not.i.i294, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fy = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !179, !noalias !303 ; 2 uses
  %i.ga = ptrtoint ptr %.08.i.i.i292 to i64
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef 0, i64 noundef 0, ptr noundef %i.fz, i64 noundef %i.gc)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit300 unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %bb.ak, %bb.ai
  %i.ge = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gf = load ptr, ptr %16, align 8, !tbaa !94, !alias.scope !303 ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.fr
  br i1 %i.gg, label %.body298, label %.body298.sink.split

bb.ak:                                            ; preds = %bb.ah
  %i.gh = getelementptr inbounds nuw i8, ptr %15, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %i.gh)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit300 unwind label %bb.aj

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit300: ; preds = %bb.ak, %bb.ai
  %i.gi = load i64, ptr %i.fs, align 8, !tbaa !137
  %.not214 = icmp eq i64 %i.gi, 4096
  br i1 %.not214, label %.preheader573, label %bb.al

.preheader573:                                    ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit300
  %i.gj = load ptr, ptr %16, align 8, !tbaa !94   ; 11 uses
  %ident.check735.not = icmp ne i32 %i.p, 1
  %i.gk = ptrtoaddr ptr %storemerge.i to i64
  %42 = ptrtoaddr ptr %i.gj to i64
  %i.gl = sub i64 %i.gk, %42
  %diff.check737 = icmp ult i64 %i.gl, 31
  %or.cond760 = select i1 %ident.check735.not, i1 true, i1 %diff.check737
  br i1 %or.cond760, label %scalar.ph738, label %vector.body740

vector.body740:                                   ; preds = %.preheader573, %vector.body740
  %index741 = phi i64 [ %index.next744.3, %vector.body740 ], [ 0, %.preheader573 ] ; 6 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 %index741 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %wide.load742 = load <16 x i8>, ptr %i.gm, align 1, !tbaa !95
  %wide.load743 = load <16 x i8>, ptr %i.gn, align 1, !tbaa !95
  %i.go = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %index741 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 1
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 17
  store <16 x i8> %wide.load742, ptr %i.gp, align 1, !tbaa !95
  store <16 x i8> %wide.load743, ptr %i.gq, align 1, !tbaa !95
  %index.next744 = or disjoint i64 %index741, 32  ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gj, i64 %index.next744 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %wide.load742.1 = load <16 x i8>, ptr %i.gr, align 1, !tbaa !95
  %wide.load743.1 = load <16 x i8>, ptr %i.gs, align 1, !tbaa !95
  %i.gt = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %index.next744 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 1
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 17
  store <16 x i8> %wide.load742.1, ptr %i.gu, align 1, !tbaa !95
  store <16 x i8> %wide.load743.1, ptr %i.gv, align 1, !tbaa !95
  %index.next744.1 = or disjoint i64 %index741, 64 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gj, i64 %index.next744.1 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %wide.load742.2 = load <16 x i8>, ptr %i.gw, align 1, !tbaa !95
  %wide.load743.2 = load <16 x i8>, ptr %i.gx, align 1, !tbaa !95
  %i.gy = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %index.next744.1 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 1
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 17
  store <16 x i8> %wide.load742.2, ptr %i.gz, align 1, !tbaa !95
  store <16 x i8> %wide.load743.2, ptr %i.ha, align 1, !tbaa !95
  %index.next744.2 = or disjoint i64 %index741, 96 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gj, i64 %index.next744.2 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %wide.load742.3 = load <16 x i8>, ptr %i.hb, align 1, !tbaa !95
  %wide.load743.3 = load <16 x i8>, ptr %i.hc, align 1, !tbaa !95
  %i.hd = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %index.next744.2 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 1
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 17
  store <16 x i8> %wide.load742.3, ptr %i.he, align 1, !tbaa !95
  store <16 x i8> %wide.load743.3, ptr %i.hf, align 1, !tbaa !95
  %index.next744.3 = add nuw nsw i64 %index741, 128 ; 2 uses
  %i.hg = icmp eq i64 %index.next744.3, 4096
  br i1 %i.hg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310, label %vector.body740, !llvm.loop !282

bb.al:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit300
  %i.hh = call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8MapBlock17deSerialize_pre22ERSihb, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.am unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309.thread

bb.am:                                            ; preds = %bb.al
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.32)
          to label %bb.an unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306.thread

bb.an:                                            ; preds = %bb.am
  call void @_ZN18SerializationErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.hh, ptr noundef nonnull align 8 dereferenceable(32) %17)
  invoke void @__cxa_throw(ptr nonnull %i.hh, ptr nonnull @_ZTI18SerializationError, ptr nonnull @_ZN13BaseExceptionD2Ev) #31
          to label %bb.gd unwind label %bb.at

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.thread516
  %.pn228.pn508 = phi { ptr, i32 } [ %i.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287 ], [ %.pn228.pn509, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.thread516 ], [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285 ] ; 2 uses
  %i.hi = load ptr, ptr %11, align 8, !tbaa !94   ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.bu
  br i1 %i.hj, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.ao, %bb.x
  %.sink = phi ptr [ %i.ci, %bb.x ], [ %i.hi, %bb.ao ]
  %.pn228.pn.pn.ph = phi { ptr, i32 } [ %i.ch, %bb.x ], [ %.pn228.pn508, %bb.ao ]
  %i.hk = load i64, ptr %i.bu, align 8, !tbaa !95
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.hl) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.ao, %bb.x
  %.pn228.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.x ], [ %.pn228.pn508, %bb.ao ], [ %.pn228.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.ap

bb.ap:                                            ; preds = %.body, %bb.ae
  %.pn228.pn.pn.pn = phi { ptr, i32 } [ %.pn228.pn.pn, %.body ], [ %i.dj, %bb.ae ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %10) #20
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ad
  %.pn228.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn228.pn.pn.pn, %bb.ap ], [ %i.di, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.bn

bb.ar:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.as:                                            ; preds = %bb.ag
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309.thread: ; preds = %bb.al
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309.thread529

bb.at:                                            ; preds = %bb.an
  %i.hp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hq = load ptr, ptr %17, align 8, !tbaa !94   ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.hs = icmp eq ptr %i.hq, %i.hr
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304: ; preds = %bb.at
  %i.ht = load i64, ptr %i.hr, align 8, !tbaa !95
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.hu) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304
  %i.hv = load ptr, ptr %18, align 8, !tbaa !94   ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306.thread: ; preds = %bb.am
  %i.hy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hz = load ptr, ptr %18, align 8, !tbaa !94   ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ib = icmp eq ptr %i.hz, %i.ia
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309.thread529, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306.thread
  %i.ic = load i64, ptr %i.ia, align 8, !tbaa !95
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.id) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309.thread529

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306
  %i.ie = load i64, ptr %i.hw, align 8, !tbaa !95
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.if) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.bd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.bd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309.thread529: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309.thread
  %.pn222.pn522 = phi { ptr, i32 } [ %i.ho, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309.thread ], [ %i.hy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307.thread ], [ %i.hy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @__cxa_free_exception(ptr %i.hh) #20
  br label %bb.bd

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310: ; preds = %vector.body740, %scalar.ph738
  %i.ig = icmp ne ptr %i.gj, %i.fr
  call void @llvm.assume(i1 %i.ig)
  %i.ih = load i64, ptr %i.fr, align 8, !tbaa !95
  %i.ii = add i64 %i.ih, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef %i.ii) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  store ptr %i.ef, ptr %15, align 8, !tbaa !112
  %i.ij = load i64, ptr %i.eh, align 8
  %i.ik = getelementptr inbounds i8, ptr %15, i64 %i.ij
  store ptr %i.eg, ptr %i.ik, align 8, !tbaa !112
  %i.il = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.il, align 8, !tbaa !112
  %i.im = getelementptr inbounds nuw i8, ptr %15, i64 80
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !94 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %15, i64 96 ; 2 uses
  %i.ip = icmp eq ptr %i.in, %i.io
  br i1 %i.ip, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit315, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i313

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i313: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310
  %i.iq = load i64, ptr %i.io, align 8, !tbaa !95
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.ir) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit315

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit315: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i313
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.il, align 8, !tbaa !112
  %i.is = getelementptr inbounds nuw i8, ptr %15, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.is) #20
  %i.it = getelementptr inbounds nuw i8, ptr %15, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.it) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.iu = icmp eq i8 %2, 10
  br i1 %i.iu, label %bb.au, label %bb.bm

scalar.ph738:                                     ; preds = %.preheader573, %scalar.ph738
  %indvars.iv611 = phi i64 [ %indvars.iv.next612.3, %scalar.ph738 ], [ 0, %.preheader573 ] ; 6 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.gj, i64 %indvars.iv611
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !95
  %i.ix = trunc nuw i64 %indvars.iv611 to i32
  %i.iy = mul i32 %i.p, %i.ix
  %i.iz = or disjoint i32 %i.iy, 1
  %i.ja = zext i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.ja
  store i8 %i.iw, ptr %i.jb, align 1, !tbaa !95
  %indvars.iv.next612 = or disjoint i64 %indvars.iv611, 1 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.gj, i64 %indvars.iv.next612
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !95
  %i.je = trunc nuw i64 %indvars.iv.next612 to i32
  %i.jf = mul i32 %i.p, %i.je
  %i.jg = add i32 %i.jf, 1
  %i.jh = zext i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.jh
  store i8 %i.jd, ptr %i.ji, align 1, !tbaa !95
  %indvars.iv.next612.1 = or disjoint i64 %indvars.iv611, 2 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.gj, i64 %indvars.iv.next612.1
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !95
  %i.jl = trunc nuw i64 %indvars.iv.next612.1 to i32
  %i.jm = mul i32 %i.p, %i.jl
  %i.jn = or disjoint i32 %i.jm, 1
  %i.jo = zext i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.jo
  store i8 %i.jk, ptr %i.jp, align 1, !tbaa !95
  %indvars.iv.next612.2 = or disjoint i64 %indvars.iv611, 3 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.gj, i64 %indvars.iv.next612.2
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !95
  %i.js = trunc nuw i64 %indvars.iv.next612.2 to i32
  %i.jt = mul i32 %i.p, %i.js
  %i.ju = add i32 %i.jt, 1
  %i.jv = zext i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.jv
  store i8 %i.jr, ptr %i.jw, align 1, !tbaa !95
  %indvars.iv.next612.3 = add nuw nsw i64 %indvars.iv611, 4 ; 2 uses
  %exitcond614.not.3 = icmp eq i64 %indvars.iv.next612.3, 4096
  br i1 %exitcond614.not.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310, label %scalar.ph738, !llvm.loop !283

bb.au:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit315
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(112) %20, i32 noundef 4)
          to label %bb.av unwind label %bb.bg

bb.av:                                            ; preds = %bb.au
  invoke void @_Z10decompressRSiRSoh(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %20, i8 noundef zeroext 10)
          to label %bb.aw unwind label %bb.bh

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !304)
  call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.jx = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  store ptr %i.jx, ptr %21, align 8, !tbaa !135, !alias.scope !306
  %i.jy = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store i64 0, ptr %i.jy, align 8, !tbaa !137, !alias.scope !306
  store i8 0, ptr %i.jx, align 8, !tbaa !95, !alias.scope !306
  %i.jz = getelementptr inbounds nuw i8, ptr %20, i64 48
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !178, !noalias !306 ; 3 uses
  %.not.i.not.i.i316 = icmp eq ptr %i.ka, null
  %i.kb = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.kc = load ptr, ptr %i.kb, align 8, !noalias !306 ; 2 uses
  %i.kd = icmp ugt ptr %i.ka, %i.kc
  %.08.i.i.i317 = select i1 %i.kd, ptr %i.ka, ptr %i.kc ; 2 uses
  %.not5.i.i318 = icmp eq ptr %.08.i.i.i317, null
  %.not.i.i319 = select i1 %.not.i.not.i.i316, i1 true, i1 %.not5.i.i318
  br i1 %.not.i.i319, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ke = getelementptr inbounds nuw i8, ptr %20, i64 40
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !179, !noalias !306 ; 2 uses
  %i.kg = ptrtoint ptr %.08.i.i.i317 to i64
  %i.kh = ptrtoint ptr %i.kf to i64
  %i.ki = sub i64 %i.kg, %i.kh
  %i.kj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef 0, i64 noundef 0, ptr noundef %i.kf, i64 noundef %i.ki)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit325 unwind label %bb.ay ; 0 uses

bb.ay:                                            ; preds = %bb.az, %bb.ax
  %i.kk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kl = load ptr, ptr %21, align 8, !tbaa !94, !alias.scope !306 ; 2 uses
  %i.km = icmp eq ptr %i.kl, %i.jx
  br i1 %i.km, label %.body323, label %.body323.sink.split

bb.az:                                            ; preds = %bb.aw
  %i.kn = getelementptr inbounds nuw i8, ptr %20, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %i.kn)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit325 unwind label %bb.ay

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit325: ; preds = %bb.az, %bb.ax
  %i.ko = load i64, ptr %i.jy, align 8, !tbaa !137
  %.not215 = icmp eq i64 %i.ko, 4096
  br i1 %.not215, label %.preheader, label %bb.ba

.preheader:                                       ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit325
  %i.kp = load ptr, ptr %21, align 8, !tbaa !94   ; 11 uses
  %ident.check748.not = icmp eq i32 %i.p, 1
  br i1 %ident.check748.not, label %vector.memcheck749, label %scalar.ph751.preheader

scalar.ph751.preheader:                           ; preds = %vector.memcheck749, %.preheader
  br label %scalar.ph751

vector.memcheck749:                               ; preds = %.preheader
  %43 = ptrtoaddr ptr %storemerge.i to i64
  %i.kq = ptrtoaddr ptr %i.kp to i64
  %i.kr = sub i64 %43, %i.kq
  %i.ks = add i64 %i.kr, 1
  %diff.check750 = icmp ult i64 %i.ks, 31
  br i1 %diff.check750, label %scalar.ph751.preheader, label %vector.body753

vector.body753:                                   ; preds = %vector.memcheck749, %vector.body753
  %index754 = phi i64 [ %index.next757.3, %vector.body753 ], [ 0, %vector.memcheck749 ] ; 6 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kp, i64 %index754 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %wide.load755 = load <16 x i8>, ptr %i.kt, align 1, !tbaa !95
  %wide.load756 = load <16 x i8>, ptr %i.ku, align 1, !tbaa !95
  %i.kv = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %index754 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 2
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 18
  store <16 x i8> %wide.load755, ptr %i.kw, align 1, !tbaa !95
  store <16 x i8> %wide.load756, ptr %i.kx, align 1, !tbaa !95
  %index.next757 = or disjoint i64 %index754, 32  ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kp, i64 %index.next757 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  %wide.load755.1 = load <16 x i8>, ptr %i.ky, align 1, !tbaa !95
  %wide.load756.1 = load <16 x i8>, ptr %i.kz, align 1, !tbaa !95
  %i.la = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %index.next757 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 2
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 18
  store <16 x i8> %wide.load755.1, ptr %i.lb, align 1, !tbaa !95
  store <16 x i8> %wide.load756.1, ptr %i.lc, align 1, !tbaa !95
  %index.next757.1 = or disjoint i64 %index754, 64 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kp, i64 %index.next757.1 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %wide.load755.2 = load <16 x i8>, ptr %i.ld, align 1, !tbaa !95
  %wide.load756.2 = load <16 x i8>, ptr %i.le, align 1, !tbaa !95
  %i.lf = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %index.next757.1 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 2
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 18
  store <16 x i8> %wide.load755.2, ptr %i.lg, align 1, !tbaa !95
  store <16 x i8> %wide.load756.2, ptr %i.lh, align 1, !tbaa !95
  %index.next757.2 = or disjoint i64 %index754, 96 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.kp, i64 %index.next757.2 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %wide.load755.3 = load <16 x i8>, ptr %i.li, align 1, !tbaa !95
  %wide.load756.3 = load <16 x i8>, ptr %i.lj, align 1, !tbaa !95
  %i.lk = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %index.next757.2 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 2
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 18
  store <16 x i8> %wide.load755.3, ptr %i.ll, align 1, !tbaa !95
  store <16 x i8> %wide.load756.3, ptr %i.lm, align 1, !tbaa !95
  %index.next757.3 = add nuw nsw i64 %index754, 128 ; 2 uses
  %i.ln = icmp eq i64 %index.next757.3, 4096
  br i1 %i.ln, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335, label %vector.body753, !llvm.loop !288

bb.ba:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit325
  %i.lo = call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8MapBlock17deSerialize_pre22ERSihb, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.bb unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334.thread

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.32)
          to label %bb.bc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331.thread

bb.bc:                                            ; preds = %bb.bb
  call void @_ZN18SerializationErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.lo, ptr noundef nonnull align 8 dereferenceable(32) %22)
  invoke void @__cxa_throw(ptr nonnull %i.lo, ptr nonnull @_ZTI18SerializationError, ptr nonnull @_ZN13BaseExceptionD2Ev) #31
          to label %bb.gd unwind label %bb.bi

bb.bd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309.thread529
  %.pn222.pn521 = phi { ptr, i32 } [ %i.hp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309 ], [ %.pn222.pn522, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309.thread529 ], [ %i.hp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307 ] ; 2 uses
  %i.lp = load ptr, ptr %16, align 8, !tbaa !94   ; 2 uses
  %i.lq = icmp eq ptr %i.lp, %i.fr
  br i1 %i.lq, label %.body298, label %.body298.sink.split

.body298.sink.split:                              ; preds = %bb.bd, %bb.aj
  %.sink763 = phi ptr [ %i.gf, %bb.aj ], [ %i.lp, %bb.bd ]
  %.pn222.pn.pn.ph = phi { ptr, i32 } [ %i.ge, %bb.aj ], [ %.pn222.pn521, %bb.bd ]
  %i.lr = load i64, ptr %i.fr, align 8, !tbaa !95
  %i.ls = add i64 %i.lr, 1
  call void @_ZdlPvm(ptr noundef %.sink763, i64 noundef %i.ls) #29
  br label %.body298

.body298:                                         ; preds = %.body298.sink.split, %bb.bd, %bb.aj
  %.pn222.pn.pn = phi { ptr, i32 } [ %i.ge, %bb.aj ], [ %.pn222.pn521, %bb.bd ], [ %.pn222.pn.pn.ph, %.body298.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.be

bb.be:                                            ; preds = %.body298, %bb.as
  %.pn222.pn.pn.pn = phi { ptr, i32 } [ %.pn222.pn.pn, %.body298 ], [ %i.hn, %bb.as ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %15) #20
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.ar
  %.pn222.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn222.pn.pn.pn, %bb.be ], [ %i.hm, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %bb.bn

bb.bg:                                            ; preds = %bb.au
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bh:                                            ; preds = %bb.av
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334.thread: ; preds = %bb.ba
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334.thread542

bb.bi:                                            ; preds = %bb.bc
  %i.lw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lx = load ptr, ptr %22, align 8, !tbaa !94   ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.lz = icmp eq ptr %i.lx, %i.ly
  br i1 %i.lz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329: ; preds = %bb.bi
  %i.ma = load i64, ptr %i.ly, align 8, !tbaa !95
  %i.mb = add i64 %i.ma, 1
  call void @_ZdlPvm(ptr noundef %i.lx, i64 noundef %i.mb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329
  %i.mc = load ptr, ptr %23, align 8, !tbaa !94   ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.me = icmp eq ptr %i.mc, %i.md
  br i1 %i.me, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331.thread: ; preds = %bb.bb
  %i.mf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mg = load ptr, ptr %23, align 8, !tbaa !94   ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.mi = icmp eq ptr %i.mg, %i.mh
  br i1 %i.mi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334.thread542, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331.thread
  %i.mj = load i64, ptr %i.mh, align 8, !tbaa !95
  %i.mk = add i64 %i.mj, 1
  call void @_ZdlPvm(ptr noundef %i.mg, i64 noundef %i.mk) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334.thread542

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331
  %i.ml = load i64, ptr %i.md, align 8, !tbaa !95
  %i.mm = add i64 %i.ml, 1
  call void @_ZdlPvm(ptr noundef %i.mc, i64 noundef %i.mm) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  br label %bb.bj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  br label %bb.bj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334.thread542: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334.thread
  %.pn216.pn535 = phi { ptr, i32 } [ %i.lv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334.thread ], [ %i.mf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332.thread ], [ %i.mf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @__cxa_free_exception(ptr %i.lo) #20
  br label %bb.bj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335: ; preds = %vector.body753, %scalar.ph751
  %i.mn = icmp ne ptr %i.kp, %i.jx
  call void @llvm.assume(i1 %i.mn)
  %i.mo = load i64, ptr %i.jx, align 8, !tbaa !95
  %i.mp = add i64 %i.mo, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.kp, i64 noundef %i.mp) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  store ptr %i.ef, ptr %20, align 8, !tbaa !112
  %i.mq = load i64, ptr %i.eh, align 8
  %i.mr = getelementptr inbounds i8, ptr %20, i64 %i.mq
  store ptr %i.eg, ptr %i.mr, align 8, !tbaa !112
  %i.ms = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ms, align 8, !tbaa !112
  %i.mt = getelementptr inbounds nuw i8, ptr %20, i64 80
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !94 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %20, i64 96 ; 2 uses
  %i.mw = icmp eq ptr %i.mu, %i.mv
  br i1 %i.mw, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit340, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i338

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i338: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335
  %i.mx = load i64, ptr %i.mv, align 8, !tbaa !95
  %i.my = add i64 %i.mx, 1
  call void @_ZdlPvm(ptr noundef %i.mu, i64 noundef %i.my) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit340

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit340: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i338
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ms, align 8, !tbaa !112
  %i.mz = getelementptr inbounds nuw i8, ptr %20, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.mz) #20
  %i.na = getelementptr inbounds nuw i8, ptr %20, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.na) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %bb.bm
end_hunk_0

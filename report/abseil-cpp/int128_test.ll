inline.NumInlined: 10533
inline.NumDeleted: 1860
begin_hunk_0_@_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605266int128ES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_:bb.a
bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_202605266int128ES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %6, align 8, !tbaa !20     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !16
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.r = load ptr, ptr %5, align 8, !tbaa !20     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.u = load i64, ptr %i.s, align 8, !tbaa !16
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing13PrintToStringIN4absl12lts_202605266int128EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 16 dereferenceable(16) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i128, ptr %1, align 16, !tbaa !524
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_20260526lsERSoNS0_6int128E(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i128 %.sroa.0.0.copyload.i.i.i.i.i.i)
          to label %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_202605266int128EE5PrintERKS4_PSo.exit unwind label %bb.e ; 0 uses

_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_202605266int128EE5PrintERKS4_PSo.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !531)
  call void @llvm.experimental.noalias.scope.decl(metadata !534)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !9, !alias.scope !537
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !13, !alias.scope !537
  store i8 0, ptr %i.c, align 8, !tbaa !16, !alias.scope !537
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !504, !noalias !537 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !537 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_202605266int128EE5PrintERKS4_PSo.exit
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !506, !noalias !537 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !20, !alias.scope !537 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !tbaa !16, !alias.scope !537
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #28
  br label %.body

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_202605266int128EE5PrintERKS4_PSo.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !41
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8, !tbaa !41
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !41
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ab, align 8, !tbaa !41
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !20 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !16
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #28
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ab, align 8, !tbaa !41
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ai) #24
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.aj, ptr %2, align 8, !tbaa !41
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.al = getelementptr i8, ptr %i.aj, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %2, i64 %i.am
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !41
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ao, align 8, !tbaa !507
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ap) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.e:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.e ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %eh.lpad-body
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_20260526lsERSoNS0_6int128E(ptr noundef nonnull align 8 dereferenceable(8), i128) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_128Uint128_ConversionTests_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_128Uint128_ConversionTests_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_128Uint128_ConversionTests_TestE, i64 16), ptr %i.a, align 8, !tbaa !41
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #28
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_128Uint128_ConversionTests_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_128Uint128_ConversionTests_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605267uint128ES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit:
  %i.a = alloca i128, align 16                    ; 9 uses
  %1 = alloca %"class.absl::lts_20260526::uint128", align 16 ; 9 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %6 = alloca %"class.absl::lts_20260526::uint128", align 16 ; 5 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.b = alloca i128, align 16                    ; 4 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.c = alloca i128, align 16                    ; 4 uses
  %13 = alloca %"class.testing::Message", align 8 ; 7 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"class.absl::lts_20260526::uint128", align 16 ; 7 uses
  %16 = alloca %"class.absl::lts_20260526::uint128", align 16 ; 7 uses
  %17 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %18 = alloca %"class.testing::Message", align 8 ; 7 uses
  %19 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %20 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %21 = alloca %"class.testing::Message", align 8 ; 7 uses
  %22 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %23 = alloca %"class.absl::lts_20260526::uint128", align 16 ; 6 uses
  %24 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %25 = alloca %"class.testing::Message", align 8 ; 7 uses
  %26 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %27 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %28 = alloca %"class.absl::lts_20260526::uint128", align 16 ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %29 = alloca %"class.testing::Message", align 8 ; 7 uses
  %30 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %31 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %32 = alloca %"class.absl::lts_20260526::uint128", align 16 ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %33 = alloca %"class.testing::Message", align 8 ; 7 uses
  %34 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %35 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %36 = alloca %"class.absl::lts_20260526::uint128", align 16 ; 6 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %37 = alloca %"class.testing::Message", align 8 ; 7 uses
  %38 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %39 = alloca %"class.absl::lts_20260526::uint128", align 16 ; 8 uses
  %40 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %41 = alloca %"class.absl::lts_20260526::uint128", align 16 ; 6 uses
  %42 = alloca %"class.testing::Message", align 8 ; 7 uses
  %43 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %44 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %45 = alloca %"class.absl::lts_20260526::uint128", align 16 ; 6 uses
  %46 = alloca %"class.absl::lts_20260526::uint128", align 16 ; 6 uses
  %47 = alloca %"class.testing::Message", align 8 ; 7 uses
  %48 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %49 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %50 = alloca %"class.absl::lts_20260526::uint128", align 16 ; 6 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %51 = alloca %"class.testing::Message", align 8 ; 7 uses
  %52 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i128 77570131467302857006743625930919069381, ptr %i.a, align 16, !tbaa !524
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN12_GLOBAL__N_128Uint128_ConversionTests_Test8TestBodyEv.custom, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2)
  %.pre = load i8, ptr %2, align 8, !tbaa !265, !range !274
  %i.h = trunc nuw i8 %.pre to i1
  br i1 %i.h, label %bb.j, label %bb.a

bb.a:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605267uint128ES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !275  ; 2 uses
  %.not.i.i108 = icmp eq ptr %i.j, null
  br i1 %.not.i.i108, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.c, %bb.b
  %i.l = phi ptr [ %i.k, %bb.c ], [ @.str, %bb.b ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 267, ptr noundef %i.l)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.m = load ptr, ptr %3, align 8, !tbaa !276    ; 3 uses
  %.not.i.i109 = icmp eq ptr %i.m, null
  br i1 %.not.i.i109, label %_ZN7testing7MessageD2Ev.exit111, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i110

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i110: ; preds = %bb.e
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(128) %i.m) #24, !inline_history !278
  br label %_ZN7testing7MessageD2Ev.exit111

_ZN7testing7MessageD2Ev.exit111:                  ; preds = %bb.e, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit114

bb.g:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn55 = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.r, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.t = load ptr, ptr %3, align 8, !tbaa !276    ; 3 uses
  %.not.i.i112 = icmp eq ptr %i.t, null
  br i1 %.not.i.i112, label %_ZN7testing7MessageD2Ev.exit114, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113: ; preds = %bb.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(128) %i.t) #24, !inline_history !278
  br label %_ZN7testing7MessageD2Ev.exit114

_ZN7testing7MessageD2Ev.exit114:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113, %bb.i, %bb.f
  %.pn55.pn = phi { ptr, i32 } [ %i.q, %bb.f ], [ %.pn55, %bb.i ], [ %.pn55, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.fk

bb.j:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605267uint128ES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit, %_ZN7testing7MessageD2Ev.exit111
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !275  ; 4 uses
  %.not.i.i115 = icmp eq ptr %i.y, null
  br i1 %.not.i.i115, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.k
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !16
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.j, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.ae = load i128, ptr %i.a, align 16, !tbaa !524 ; 3 uses
  %i.af = trunc i128 %i.ae to i64
  store i64 %i.af, ptr %6, align 16, !tbaa !538
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ah = lshr i128 %i.ae, 64
  %i.ai = trunc nuw i128 %i.ah to i64
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !540
  %.sroa.01.0.copyload.i.i116 = load i64, ptr %1, align 16, !tbaa !38, !noalias !541
  %.sroa.22.0.copyload.i.i118 = load i64, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !38, !noalias !541
  %i.aj = zext i64 %.sroa.22.0.copyload.i.i118 to i128
  %i.ak = shl nuw i128 %i.aj, 64
  %i.al = zext i64 %.sroa.01.0.copyload.i.i116 to i128
  %i.am = or disjoint i128 %i.ak, %i.al
  %i.an = icmp eq i128 %i.am, %i.ae
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605267uint128ES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit122

bb.m:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605267uint128ES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.206, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %6)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605267uint128ES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit122

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605267uint128ES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit122: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.ao = load i8, ptr %5, align 8, !tbaa !265, !range !274, !noundef !282
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.w, label %bb.n

bb.n:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605267uint128ES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit122
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !275 ; 2 uses
  %.not.i.i123 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i123, label %_ZNK7testing15AssertionResult15failure_messageEv.exit124, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !20
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit124

_ZNK7testing15AssertionResult15failure_messageEv.exit124: ; preds = %bb.p, %bb.o
  %i.at = phi ptr [ %i.as, %bb.p ], [ @.str, %bb.o ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 268, ptr noundef %i.at)
          to label %bb.q unwind label %bb.t
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_128Uint128_ConversionTests_Test8TestBodyEv:_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605267uint128ES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
bb.af:                                            ; preds = %bb.aa
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit143

bb.ag:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit137
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ad
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #24
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn61 = phi { ptr, i32 } [ %i.cg, %bb.ah ], [ %i.cf, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.ch = load ptr, ptr %10, align 8, !tbaa !276  ; 3 uses
  %.not.i.i141 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i141, label %_ZN7testing7MessageD2Ev.exit143, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142: ; preds = %bb.ai
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !41
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(128) %i.ch) #24, !inline_history !278
  br label %_ZN7testing7MessageD2Ev.exit143

_ZN7testing7MessageD2Ev.exit143:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142, %bb.ai, %bb.af
  %.pn61.pn = phi { ptr, i32 } [ %i.ce, %bb.af ], [ %.pn61, %bb.ai ], [ %.pn61, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.fk

bb.aj:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIooTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit140
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !275 ; 4 uses
  %.not.i.i144 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i144, label %_ZN7testing15AssertionResultD2Ev.exit148, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !20 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i145: ; preds = %bb.ak
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !16
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i145
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit148

_ZN7testing15AssertionResultD2Ev.exit148:         ; preds = %bb.aj, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.cs = load i64, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !540
  %i.ct = zext i64 %i.cs to i128
  %i.cu = shl nuw i128 %i.ct, 64
  %i.cv = load i64, ptr %1, align 16, !tbaa !538
  %i.cw = zext i64 %i.cv to i128
  %i.cx = or disjoint i128 %i.cu, %i.cw           ; 2 uses
  store i128 %i.cx, ptr %i.c, align 16, !tbaa !524
  %i.cy = load i128, ptr %i.a, align 16, !tbaa !524, !noalias !551
  %i.cz = icmp eq i128 %i.cy, %i.cx
  br i1 %i.cz, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit148
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12)
  br label %_ZN7testing8internal8EqHelper7CompareIonTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

bb.am:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit148
  call void @_ZN7testing8internal18CmpHelperEQFailureIonEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12, ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.209, ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.c)
  br label %_ZN7testing8internal8EqHelper7CompareIonTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareIonTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.da = load i8, ptr %12, align 8, !tbaa !265, !range !274, !noundef !282
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.aw, label %bb.an

bb.an:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIonTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.dc = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !275 ; 2 uses
  %.not.i.i149 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i149, label %_ZNK7testing15AssertionResult15failure_messageEv.exit150, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !20
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit150

_ZNK7testing15AssertionResult15failure_messageEv.exit150: ; preds = %bb.ap, %bb.ao
  %i.df = phi ptr [ %i.de, %bb.ap ], [ @.str, %bb.ao ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 270, ptr noundef %i.df)
          to label %bb.aq unwind label %bb.at

bb.aq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit150
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.ar unwind label %bb.au

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  %i.dg = load ptr, ptr %13, align 8, !tbaa !276  ; 3 uses
  %.not.i.i151 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i151, label %_ZN7testing7MessageD2Ev.exit153, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i152

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i152: ; preds = %bb.ar
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !41
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(128) %i.dg) #24, !inline_history !278
  br label %_ZN7testing7MessageD2Ev.exit153

_ZN7testing7MessageD2Ev.exit153:                  ; preds = %bb.ar, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.aw

bb.as:                                            ; preds = %bb.an
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit156

bb.at:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit150
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.au:                                            ; preds = %bb.aq
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #24
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.pn64 = phi { ptr, i32 } [ %i.dm, %bb.au ], [ %i.dl, %bb.at ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  %i.dn = load ptr, ptr %13, align 8, !tbaa !276  ; 3 uses
  %.not.i.i154 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i154, label %_ZN7testing7MessageD2Ev.exit156, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155: ; preds = %bb.av
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !41
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(128) %i.dn) #24, !inline_history !278
  br label %_ZN7testing7MessageD2Ev.exit156

_ZN7testing7MessageD2Ev.exit156:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155, %bb.av, %bb.as
  %.pn64.pn = phi { ptr, i32 } [ %i.dk, %bb.as ], [ %.pn64, %bb.av ], [ %.pn64, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.fk

bb.aw:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIonTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit153
  %i.dr = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !275 ; 4 uses
  %.not.i.i157 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i157, label %_ZN7testing15AssertionResultD2Ev.exit161, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !20 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i158: ; preds = %bb.ax
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !16
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i159

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i159: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i158
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit161

_ZN7testing15AssertionResultD2Ev.exit161:         ; preds = %bb.aw, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @_ZN4absl12lts_202605267uint128C1Ed(ptr noundef nonnull align 16 dereferenceable(16) %15, double noundef f0x44D4C3B69D000000)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %16, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN12_GLOBAL__N_128Uint128_ConversionTests_Test8TestBodyEv.from_precise_ints, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %.sroa.01.0.copyload.i.i162 = load i64, ptr %15, align 16, !tbaa !38, !noalias !556
  %.sroa.22.0..sroa_idx.i.i163 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.sroa.22.0.copyload.i.i164 = load i64, ptr %.sroa.22.0..sroa_idx.i.i163, align 8, !tbaa !38, !noalias !556
  %.sroa.2.0..sroa_idx.i.i166 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dy = zext i64 %.sroa.22.0.copyload.i.i164 to i128
  %i.dz = shl nuw i128 %i.dy, 64
  %i.ea = zext i64 %.sroa.01.0.copyload.i.i162 to i128
  %i.eb = or disjoint i128 %i.dz, %i.ea
  %i.ec = icmp eq i128 %i.eb, 392230413701810053185536
  br i1 %i.ec, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit161
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %17)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605267uint128ES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit168

bb.az:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit161
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605267uint128ES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %17, ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.211, ptr noundef nonnull align 16 dereferenceable(16) %15, ptr noundef nonnull align 16 dereferenceable(16) %16)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605267uint128ES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit168

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605267uint128ES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit168: ; preds = %bb.ay, %bb.az
  %i.ed = load i8, ptr %17, align 8, !tbaa !265, !range !274, !noundef !282
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %bb.bj, label %bb.ba

bb.ba:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605267uint128ES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit168
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.bb unwind label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %i.ef = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !275 ; 2 uses
  %.not.i.i169 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i169, label %_ZNK7testing15AssertionResult15failure_messageEv.exit170, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !20
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit170

_ZNK7testing15AssertionResult15failure_messageEv.exit170: ; preds = %bb.bc, %bb.bb
  %i.ei = phi ptr [ %i.eh, %bb.bc ], [ @.str, %bb.bb ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 280, ptr noundef %i.ei)
          to label %bb.bd unwind label %bb.bg

bb.bd:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit170
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.be unwind label %bb.bh

bb.be:                                            ; preds = %bb.bd
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  %i.ej = load ptr, ptr %18, align 8, !tbaa !276  ; 3 uses
  %.not.i.i171 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i171, label %_ZN7testing7MessageD2Ev.exit173, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172: ; preds = %bb.be
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !41
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(128) %i.ej) #24, !inline_history !278
  br label %_ZN7testing7MessageD2Ev.exit173

_ZN7testing7MessageD2Ev.exit173:                  ; preds = %bb.be, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %bb.bj

bb.bf:                                            ; preds = %bb.ba
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit176

bb.bg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit170
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bd
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #24
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.pn67 = phi { ptr, i32 } [ %i.ep, %bb.bh ], [ %i.eo, %bb.bg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  %i.eq = load ptr, ptr %18, align 8, !tbaa !276  ; 3 uses
  %.not.i.i174 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i174, label %_ZN7testing7MessageD2Ev.exit176, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175: ; preds = %bb.bi
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !41
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(128) %i.eq) #24, !inline_history !278
  br label %_ZN7testing7MessageD2Ev.exit176

_ZN7testing7MessageD2Ev.exit176:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175, %bb.bi, %bb.bf
  %.pn67.pn = phi { ptr, i32 } [ %i.en, %bb.bf ], [ %.pn67, %bb.bi ], [ %.pn67, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %bb.fj

bb.bj:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605267uint128ES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit168, %_ZN7testing7MessageD2Ev.exit173
  %i.eu = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !275 ; 4 uses
  %.not.i.i177 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i177, label %_ZN7testing15AssertionResultD2Ev.exit181, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !20 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i178: ; preds = %bb.bk
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !16
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i178
  call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit181

_ZN7testing15AssertionResultD2Ev.exit181:         ; preds = %bb.bj, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  %53 = load i64, ptr %16, align 16, !tbaa !538
  %54 = uitofp i64 %53 to double
  %55 = load i64, ptr %.sroa.2.0..sroa_idx.i.i166, align 8, !tbaa !540
  %56 = uitofp i64 %55 to double
  %i.fb = call noundef double @llvm.fmuladd.f64(double %56, double f0x43F0000000000000, double %54)
  call void @_ZN7testing8internal24CmpHelperFloatingPointEQIdEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %20, ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.213, double noundef %i.fb, double noundef f0x44D4C3B69D000000)
  %i.fc = load i8, ptr %20, align 8, !tbaa !265, !range !274, !noundef !282
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.bu, label %bb.bl

bb.bl:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit181
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.bm unwind label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  %i.fe = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !275 ; 2 uses
  %.not.i.i182 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i182, label %_ZNK7testing15AssertionResult15failure_messageEv.exit183, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !20
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit183

_ZNK7testing15AssertionResult15failure_messageEv.exit183: ; preds = %bb.bn, %bb.bm
  %i.fh = phi ptr [ %i.fg, %bb.bn ], [ @.str, %bb.bm ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 281, ptr noundef %i.fh)
          to label %bb.bo unwind label %bb.br

bb.bo:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit183
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.bp unwind label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  %i.fi = load ptr, ptr %21, align 8, !tbaa !276  ; 3 uses
  %.not.i.i184 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i184, label %_ZN7testing7MessageD2Ev.exit186, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185: ; preds = %bb.bp
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !41
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(128) %i.fi) #24, !inline_history !278
  br label %_ZN7testing7MessageD2Ev.exit186

_ZN7testing7MessageD2Ev.exit186:                  ; preds = %bb.bp, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %bb.bu

bb.bq:                                            ; preds = %bb.bl
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit189

bb.br:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit183
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bo
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #24
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.pn70 = phi { ptr, i32 } [ %i.fo, %bb.bs ], [ %i.fn, %bb.br ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  %i.fp = load ptr, ptr %21, align 8, !tbaa !276  ; 3 uses
  %.not.i.i187 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i187, label %_ZN7testing7MessageD2Ev.exit189, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188: ; preds = %bb.bt
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !41
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(128) %i.fp) #24, !inline_history !278
  br label %_ZN7testing7MessageD2Ev.exit189

_ZN7testing7MessageD2Ev.exit189:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188, %bb.bt, %bb.bq
  %.pn70.pn = phi { ptr, i32 } [ %i.fm, %bb.bq ], [ %.pn70, %bb.bt ], [ %.pn70, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %bb.fj

bb.bu:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit181, %_ZN7testing7MessageD2Ev.exit186
  %i.ft = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !275 ; 4 uses
  %.not.i.i190 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i190, label %_ZN7testing15AssertionResultD2Ev.exit194, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !20 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 16 ; 2 uses
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i191: ; preds = %bb.bv
  %i.fy = load i64, ptr %i.fw, align 8, !tbaa !16
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fz) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i191
  call void @_ZdlPvm(ptr noundef nonnull %i.fu, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit194

_ZN7testing15AssertionResultD2Ev.exit194:         ; preds = %bb.bu, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  call void @_ZN4absl12lts_202605267uint128C1Ed(ptr noundef nonnull align 16 dereferenceable(16) %23, double noundef f0x47EFFFFDDDDBBBBA)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  %57 = load i64, ptr %23, align 16, !tbaa !538
  %58 = uitofp i64 %57 to double
  %59 = getelementptr inbounds nuw i8, ptr %23, i64 8
  %60 = load i64, ptr %59, align 8, !tbaa !540
  %61 = uitofp i64 %60 to double
  %i.ga = call noundef double @llvm.fmuladd.f64(double %61, double f0x43F0000000000000, double %58)
  call void @_ZN7testing8internal24CmpHelperFloatingPointEQIdEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %24, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.215, double noundef %i.ga, double noundef f0x47EFFFFDDDDBBBBA)
  %i.gb = load i8, ptr %24, align 8, !tbaa !265, !range !274, !noundef !282
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %bb.cf, label %bb.bw

bb.bw:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit194
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  %i.gd = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !275 ; 2 uses
  %.not.i.i195 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i195, label %_ZNK7testing15AssertionResult15failure_messageEv.exit196, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !20
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit196

_ZNK7testing15AssertionResult15failure_messageEv.exit196: ; preds = %bb.by, %bb.bx
  %i.gg = phi ptr [ %i.gf, %bb.by ], [ @.str, %bb.bx ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %26, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 287, ptr noundef %i.gg)
          to label %bb.bz unwind label %bb.cc

bb.bz:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit196
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.ca unwind label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  %i.gh = load ptr, ptr %25, align 8, !tbaa !276  ; 3 uses
  %.not.i.i197 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i197, label %_ZN7testing7MessageD2Ev.exit199, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i198

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i198: ; preds = %bb.ca
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !41
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(128) %i.gh) #24, !inline_history !278
  br label %_ZN7testing7MessageD2Ev.exit199

_ZN7testing7MessageD2Ev.exit199:                  ; preds = %bb.ca, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i198
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  br label %bb.cf

bb.cb:                                            ; preds = %bb.bw
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit202

bb.cc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit196
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.cd:                                            ; preds = %bb.bz
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #24
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.pn73 = phi { ptr, i32 } [ %i.gn, %bb.cd ], [ %i.gm, %bb.cc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  %i.go = load ptr, ptr %25, align 8, !tbaa !276  ; 3 uses
  %.not.i.i200 = icmp eq ptr %i.go, null
  br i1 %.not.i.i200, label %_ZN7testing7MessageD2Ev.exit202, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i201

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i201: ; preds = %bb.ce
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !41
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8
  call void %i.gr(ptr noundef nonnull align 8 dereferenceable(128) %i.go) #24, !inline_history !278
  br label %_ZN7testing7MessageD2Ev.exit202

_ZN7testing7MessageD2Ev.exit202:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i201, %bb.ce, %bb.cb
  %.pn73.pn = phi { ptr, i32 } [ %i.gl, %bb.cb ], [ %.pn73, %bb.ce ], [ %.pn73, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i201 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %24) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %bb.fi

bb.cf:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit194, %_ZN7testing7MessageD2Ev.exit199
  %i.gs = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !275 ; 4 uses
  %.not.i.i203 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i203, label %_ZN7testing15AssertionResultD2Ev.exit207, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !20 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 2 uses
  %i.gw = icmp eq ptr %i.gu, %i.gv
  br i1 %i.gw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i204: ; preds = %bb.cg
  %i.gx = load i64, ptr %i.gv, align 8, !tbaa !16
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gy) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i204
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit207

_ZN7testing15AssertionResultD2Ev.exit207:         ; preds = %bb.cf, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  call void @_ZN4absl12lts_202605267uint128C1Ed(ptr noundef nonnull align 16 dereferenceable(16) %28, double noundef f0x3FE6666666666666)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i32 0, ptr %i.d, align 4, !tbaa !516
  %.sroa.0.0.copyload.i.i208 = load i64, ptr %28, align 16, !tbaa !38, !noalias !561
  %.sroa.2.0..sroa_idx.i.i209 = getelementptr inbounds nuw i8, ptr %28, i64 8
  %.sroa.2.0.copyload.i.i210 = load i64, ptr %.sroa.2.0..sroa_idx.i.i209, align 8, !tbaa !38, !noalias !561
  %i.gz = or i64 %.sroa.2.0.copyload.i.i210, %.sroa.0.0.copyload.i.i208
  %i.ha = icmp eq i64 %i.gz, 0
  br i1 %i.ha, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit207
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %27)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605267uint128EiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit

bb.ci:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit207
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605267uint128EiEENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %27, ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.145, ptr noundef nonnull align 16 dereferenceable(16) %28, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605267uint128EiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605267uint128EiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit: ; preds = %bb.ch, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  %i.hb = load i8, ptr %27, align 8, !tbaa !265, !range !274, !noundef !282
  %i.hc = trunc nuw i8 %i.hb to i1
  br i1 %i.hc, label %bb.cs, label %bb.cj

bb.cj:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605267uint128EiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.ck unwind label %bb.co

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #24
  %i.hd = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !275 ; 2 uses
  %.not.i.i211 = icmp eq ptr %i.he, null
  br i1 %.not.i.i211, label %_ZNK7testing15AssertionResult15failure_messageEv.exit212, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !20
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit212

_ZNK7testing15AssertionResult15failure_messageEv.exit212: ; preds = %bb.cl, %bb.ck
  %i.hg = phi ptr [ %i.hf, %bb.cl ], [ @.str, %bb.ck ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %30, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 292, ptr noundef %i.hg)
          to label %bb.cm unwind label %bb.cp

bb.cm:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit212
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.cn unwind label %bb.cq

bb.cn:                                            ; preds = %bb.cm
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  %i.hh = load ptr, ptr %29, align 8, !tbaa !276  ; 3 uses
  %.not.i.i213 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i213, label %_ZN7testing7MessageD2Ev.exit215, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214: ; preds = %bb.cn
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !41
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8
  call void %i.hk(ptr noundef nonnull align 8 dereferenceable(128) %i.hh) #24, !inline_history !278
  br label %_ZN7testing7MessageD2Ev.exit215

_ZN7testing7MessageD2Ev.exit215:                  ; preds = %bb.cn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  br label %bb.cs

bb.co:                                            ; preds = %bb.cj
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit218

bb.cp:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit212
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.cq:                                            ; preds = %bb.cm
  %i.hn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #24
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.pn76 = phi { ptr, i32 } [ %i.hn, %bb.cq ], [ %i.hm, %bb.cp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  %i.ho = load ptr, ptr %29, align 8, !tbaa !276  ; 3 uses
  %.not.i.i216 = icmp eq ptr %i.ho, null
end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/ecdsa_test?download=true
inline.NumInlined: 1780
inline.NumDeleted: 498
begin_hunk_0_@_ZN7testing8internal18CmpHelperOpFailureI5BytesS2_EENS_15AssertionResultEPKcS5_RKT_RKT0_S5_:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing13PrintToStringI5BytesEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK5Bytes(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN7testing8internal21UniversalTersePrinterI5BytesE5PrintERKS2_PSo.exit unwind label %bb.e ; 0 uses

_ZN7testing8internal21UniversalTersePrinterI5BytesE5PrintERKS2_PSo.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !163)
  call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !74, !alias.scope !165
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !76, !alias.scope !165
  store i8 0, ptr %i.c, align 8, !tbaa !46, !alias.scope !165
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !88, !noalias !165 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !165 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterI5BytesE5PrintERKS2_PSo.exit
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !89, !noalias !165 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !45, !alias.scope !165 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !tbaa !46, !alias.scope !165
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #21
  br label %.body

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterI5BytesE5PrintERKS2_PSo.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !19
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8, !tbaa !19
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !19
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ab, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !45 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !46
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #21
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ab, align 8, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ai) #20
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.aj, ptr %2, align 8, !tbaa !19
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.al = getelementptr i8, ptr %i.aj, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %2, i64 %i.am
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ao, align 8, !tbaa !91
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ap) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.e:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.e ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %eh.lpad-body
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK5Bytes(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

declare void @ECDSA_SIG_free(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal18CmpHelperEQFailureImmEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZN7testing13PrintToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZN7testing13PrintToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageImmEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageImmEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageImmEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.a = load ptr, ptr %6, align 8, !tbaa !45     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !46
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.f = load ptr, ptr %5, align 8, !tbaa !45     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = load i64, ptr %i.g, align 8, !tbaa !46
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageImmEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %6, align 8, !tbaa !45     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !46
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.r = load ptr, ptr %5, align 8, !tbaa !45     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.u = load i64, ptr %i.s, align 8, !tbaa !46
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvP8FileTestEZN32ECDSATest_VerifyTestVectors_Test8TestBodyEvE3$_0E9_M_invokeERKSt9_Any_dataOS1_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %2 = alloca %"class.testing::ScopedTrace", align 1 ; 8 uses
  %3 = alloca %"class.std::unique_ptr.10", align 8 ; 9 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::unique_ptr.10", align 8 ; 5 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::unique_ptr.48", align 8 ; 9 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %15 = alloca %"class.testing::Message", align 8 ; 7 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::unique_ptr.48", align 8 ; 8 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::unique_ptr.48", align 8 ; 7 uses
  %24 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %25 = alloca %"class.testing::Message", align 8 ; 7 uses
  %26 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::unique_ptr.48", align 8 ; 6 uses
  %29 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %30 = alloca %"class.testing::Message", align 8 ; 7 uses
  %31 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %33 = alloca %"class.std::vector", align 8      ; 10 uses
  %34 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %36 = alloca %"class.testing::Message", align 8 ; 7 uses
  %37 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %39 = alloca %"class.std::unique_ptr.18", align 8 ; 5 uses
  %40 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %41 = alloca %"class.testing::Message", align 8 ; 7 uses
  %42 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %44 = alloca %"class.std::unique_ptr.54", align 8 ; 5 uses
  %45 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %46 = alloca %"class.testing::Message", align 8 ; 7 uses
  %47 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %49 = alloca %"class.std::unique_ptr.27", align 8 ; 5 uses
  %50 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %51 = alloca %"class.testing::Message", align 8 ; 7 uses
  %52 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %54 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %55 = alloca %"class.testing::Message", align 8 ; 7 uses
  %56 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %58 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %59 = alloca %"class.testing::Message", align 8 ; 7 uses
  %60 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %62 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %63 = alloca %"class.testing::Message", align 8 ; 7 uses
  %64 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %65 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %66 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %67 = alloca %"class.testing::Message", align 8 ; 7 uses
  %68 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %69 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %70 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %71 = alloca %"class.testing::Message", align 8 ; 7 uses
  %72 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %73 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %74 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %75 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %76 = alloca %"class.testing::Message", align 8 ; 7 uses
  %77 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !93    ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %54, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %58, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %70, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %75, i64 16 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %75, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %74, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %35, i64 22
  %i.al = getelementptr inbounds nuw i8, ptr %75, i64 23
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrI11ec_group_stN4bssl8internal7DeleterEED2Ev.exit632.i.i.i, %bb.a
  %.0145.ptr.sroa.idx.i.i.i = phi i8 [ 0, %bb.a ], [ 1, %_ZNSt10unique_ptrI11ec_group_stN4bssl8internal7DeleterEED2Ev.exit632.i.i.i ]
  %.not.i.i.i = phi i1 [ false, %bb.a ], [ true, %_ZNSt10unique_ptrI11ec_group_stN4bssl8internal7DeleterEED2Ev.exit632.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 %.0145.ptr.sroa.idx.i.i.i, ptr %i.a, align 1, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZN7testing11ScopedTraceC2IbEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull @.str.2, i32 noundef 353, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke fastcc void @_ZL8GetCurveP8FileTestPKc(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.am = load ptr, ptr %3, align 8, !tbaa !62    ; 4 uses
  %i.an = icmp ne ptr %i.am, null                 ; 2 uses
  %i.ao = zext i1 %i.an to i8
  store i8 %i.ao, ptr %4, align 8, !tbaa !40
  store ptr null, ptr %i.d, align 8, !tbaa !41
  br i1 %i.an, label %bb.p, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.jq

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %7, align 8, !tbaa !45
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 355, ptr noundef %i.aq)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #20
  %i.ar = load ptr, ptr %7, align 8, !tbaa !45    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.au = load i64, ptr %i.as, align 8, !tbaa !46
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.aw = load ptr, ptr %5, align 8, !tbaa !48    ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i, label %_ZN7testing7MessageD2Ev.exit.i.i.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #20, !call_target !57, !inline_history !166
  br label %_ZN7testing7MessageD2Ev.exit.i.i.i

_ZN7testing7MessageD2Ev.exit.i.i.i:               ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.ba = load ptr, ptr %i.d, align 8, !tbaa !58  ; 4 uses
  %.not.i.i271.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i271.i.i.i, label %_ZN7testing15AssertionResultD2Ev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN7testing7MessageD2Ev.exit.i.i.i
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !45 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !46
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #21
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 32) #21
  br label %_ZN7testing15AssertionResultD2Ev.exit.i.i.i

_ZN7testing15AssertionResultD2Ev.exit.i.i.i:      ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i, %_ZN7testing7MessageD2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.loopexit.sink.split.i.i.i

bb.k:                                             ; preds = %bb.e
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit277.i.i.i

bb.l:                                             ; preds = %bb.f
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274.i.i.i

bb.m:                                             ; preds = %bb.g
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.h
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #20
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bj, %bb.n ], [ %i.bi, %bb.m ] ; 2 uses
  %i.bk = load ptr, ptr %7, align 8, !tbaa !45    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272.i.i.i: ; preds = %bb.o
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !46
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272.i.i.i, %bb.l
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.bh, %bb.l ], [ %.pn.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272.i.i.i ], [ %.pn.i.i.i, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.bp = load ptr, ptr %5, align 8, !tbaa !48    ; 3 uses
  %.not.i.i275.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i275.i.i.i, label %_ZN7testing7MessageD2Ev.exit277.i.i.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i276.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i276.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274.i.i.i
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !19
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(128) %i.bp) #20, !call_target !57, !inline_history !166
  br label %_ZN7testing7MessageD2Ev.exit277.i.i.i

_ZN7testing7MessageD2Ev.exit277.i.i.i:            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i276.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274.i.i.i, %bb.k
  %.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.bg, %bb.k ], [ %.pn.pn.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274.i.i.i ], [ %.pn.pn.i.i.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i276.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.jp

bb.p:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.bt = load i8, ptr %i.a, align 1, !tbaa !94, !range !66, !noundef !67
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  invoke fastcc void @_ZL15MakeCustomClonePK11ec_group_st(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull %i.am)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bv = load ptr, ptr %8, align 8, !tbaa !62    ; 3 uses
  store ptr %i.bv, ptr %3, align 8, !tbaa !62
  invoke void @EC_GROUP_free(ptr noundef nonnull %i.am)
          to label %_ZNSt10unique_ptrI11ec_group_stN4bssl8internal7DeleterEED2Ev.exit.i.i.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #24
  unreachable

_ZNSt10unique_ptrI11ec_group_stN4bssl8internal7DeleterEED2Ev.exit.i.i.i: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.by = icmp ne ptr %i.bv, null                 ; 2 uses
  %i.bz = zext i1 %i.by to i8
  store i8 %i.bz, ptr %9, align 8, !tbaa !40
  store ptr null, ptr %i.e, align 8, !tbaa !41
  br i1 %i.by, label %_ZN7testing15AssertionResultD2Ev.exit304.i.i.i, label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.jp

bb.u:                                             ; preds = %_ZNSt10unique_ptrI11ec_group_stN4bssl8internal7DeleterEED2Ev.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFvP8FileTestEZN32ECDSATest_VerifyTestVectors_Test8TestBodyEvE3$_0E9_M_invokeERKSt9_Any_dataOS1_":bb.a
  %i.vn = ptrtoint ptr %i.vm to i64
  %i.vo = ptrtoint ptr %i.vl to i64
  %i.vp = sub i64 %i.vn, %i.vo
  call void @_ZdlPvm(ptr noundef nonnull %i.vl, i64 noundef %i.vp) #21
  br label %bb.io

bb.in:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i379.i.i.i, %_ZN7testing7MessageD2Ev.exit376.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  br label %bb.iq

bb.io:                                            ; preds = %bb.im, %bb.il
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  invoke void @BN_free(ptr noundef nonnull %i.gy)
          to label %bb.iq unwind label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.vq = landingpad { ptr, i32 }
          catch ptr null
  %i.vr = extractvalue { ptr, i32 } %i.vq, 0
  call void @__clang_call_terminate(ptr %i.vr) #24
  unreachable

bb.iq:                                            ; preds = %bb.io, %bb.in
  %.19140521.i.i.i = phi i1 [ true, %bb.in ], [ %.18139.i.i.i, %bb.io ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  invoke void @BN_free(ptr noundef nonnull %i.ft)
          to label %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit626.i.i.i unwind label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.vs = landingpad { ptr, i32 }
          catch ptr null
  %i.vt = extractvalue { ptr, i32 } %i.vs, 0
  call void @__clang_call_terminate(ptr %i.vt) #24
  unreachable

_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit626.i.i.i: ; preds = %bb.iq
  %.pre.i = load ptr, ptr %18, align 8, !tbaa !77 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  %.not.i627.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i627.i.i.i, label %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit628.i.i.i, label %bb.is

bb.is:                                            ; preds = %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit626.i.i.i, %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit626.i.i.thread.i
  %.20141.i460.i454.i = phi i1 [ true, %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit626.i.i.thread.i ], [ %.19140521.i.i.i, %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit626.i.i.i ]
  %i.vu = phi ptr [ %i.em, %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit626.i.i.thread.i ], [ %.pre.i, %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit626.i.i.i ]
  invoke void @BN_free(ptr noundef nonnull %i.vu)
          to label %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit628.i.i.i unwind label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.vv = landingpad { ptr, i32 }
          catch ptr null
  %i.vw = extractvalue { ptr, i32 } %i.vv, 0
  call void @__clang_call_terminate(ptr %i.vw) #24
  unreachable

_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit628.i.i.i: ; preds = %bb.is, %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit626.i.i.i
  %.20141.i460.i455.i = phi i1 [ %.20141.i460.i454.i, %bb.is ], [ %.19140521.i.i.i, %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit626.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  %i.vx = load ptr, ptr %13, align 8, !tbaa !77   ; 2 uses
  %.not.i629.i.i.i = icmp eq ptr %i.vx, null
  br i1 %.not.i629.i.i.i, label %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit630.i.i.i, label %bb.iu

bb.iu:                                            ; preds = %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit628.i.i.i
  invoke void @BN_free(ptr noundef nonnull %i.vx)
          to label %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit630.i.i.i unwind label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.vy = landingpad { ptr, i32 }
          catch ptr null
  %i.vz = extractvalue { ptr, i32 } %i.vy, 0
  call void @__clang_call_terminate(ptr %i.vz) #24
  unreachable

_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit630.i.i.i: ; preds = %bb.iu, %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit628.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.wa = load ptr, ptr %3, align 8, !tbaa !62    ; 2 uses
  %.not.i631.i.i.i = icmp eq ptr %i.wa, null
  br i1 %.not.i631.i.i.i, label %_ZNSt10unique_ptrI11ec_group_stN4bssl8internal7DeleterEED2Ev.exit632.i.i.i, label %bb.iw

bb.iw:                                            ; preds = %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit630.i.i.i
  invoke void @EC_GROUP_free(ptr noundef nonnull %i.wa)
          to label %_ZNSt10unique_ptrI11ec_group_stN4bssl8internal7DeleterEED2Ev.exit632.i.i.i unwind label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.wb = landingpad { ptr, i32 }
          catch ptr null
  %i.wc = extractvalue { ptr, i32 } %i.wb, 0
  call void @__clang_call_terminate(ptr %i.wc) #24
  unreachable

_ZNSt10unique_ptrI11ec_group_stN4bssl8internal7DeleterEED2Ev.exit632.i.i.i: ; preds = %bb.iw, %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit630.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br i1 %.20141.i460.i455.i, label %"_ZSt10__invoke_rIvRZN32ECDSATest_VerifyTestVectors_Test8TestBodyEvE3$_0JP8FileTestEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES6_E4typeEOS7_DpOS8_.exit", label %bb.b

bb.iy:                                            ; preds = %_ZN7testing7MessageD2Ev.exit615.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608.i.i.i
  %.pn216.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn216.pn.i.i.i, %_ZN7testing7MessageD2Ev.exit615.i.i.i ], [ %.pn213.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #20
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.hn, %bb.gw, %bb.gh, %bb.fs, %bb.fd, %_ZN7testing7MessageD2Ev.exit481.i.i.i
  %.pn216.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn216.pn.pn.i.i.i, %bb.iy ], [ %.pn208.pn.pn.pn.i.i.i, %bb.hn ], [ %.pn203.pn.pn.pn.i.i.i, %bb.gw ], [ %.pn198.pn.pn.pn.i.i.i, %bb.gh ], [ %.pn193.pn.pn.pn.i.i.i, %bb.fs ], [ %.pn188.pn.pn.pn.i.i.i, %bb.fd ], [ %.pn184.pn.pn.i.i.i, %_ZN7testing7MessageD2Ev.exit481.i.i.i ]
  call void @_ZNSt10unique_ptrI12ecdsa_sig_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %49) #20
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iz, %bb.eb
  %.pn216.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn216.pn.pn.pn.i.i.i, %bb.iz ], [ %i.mi, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #20
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %_ZN7testing7MessageD2Ev.exit459.i.i.i
  %.pn216.pn.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn216.pn.pn.pn.pn.i.i.i, %bb.ja ], [ %.pn180.pn.pn.i.i.i, %_ZN7testing7MessageD2Ev.exit459.i.i.i ]
  call void @_ZNSt10unique_ptrI11ec_point_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %44) #20
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %bb.dn
  %.pn216.pn.pn.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn216.pn.pn.pn.pn.pn.i.i.i, %bb.jb ], [ %i.ld, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #20
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jc, %_ZN7testing7MessageD2Ev.exit437.i.i.i
  %.pn216.pn.pn.pn.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn216.pn.pn.pn.pn.pn.pn.i.i.i, %bb.jc ], [ %.pn176.pn.pn.i.i.i, %_ZN7testing7MessageD2Ev.exit437.i.i.i ]
  call void @_ZNSt10unique_ptrI9ec_key_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %39) #20
  br label %bb.je

bb.je:                                            ; preds = %bb.jd, %bb.cz
  %.pn216.pn.pn.pn.pn.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn216.pn.pn.pn.pn.pn.pn.pn.i.i.i, %bb.jd ], [ %i.jy, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20
  br label %bb.jf

bb.jf:                                            ; preds = %bb.je, %bb.cy
  %.pn216.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn216.pn.pn.pn.pn.pn.pn.pn.pn.i.i.i, %bb.je ], [ %.pn171.pn.pn.pn.i.i.i, %bb.cy ]
  %i.wd = load ptr, ptr %33, align 8, !tbaa !96   ; 3 uses
  %.not.i.i.i633.i.i.i = icmp eq ptr %i.wd, null
  br i1 %.not.i.i.i633.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit634.i.i.i, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.we = load ptr, ptr %i.aj, align 8, !tbaa !98
  %i.wf = ptrtoint ptr %i.we to i64
  %i.wg = ptrtoint ptr %i.wd to i64
  %i.wh = sub i64 %i.wf, %i.wg
  call void @_ZdlPvm(ptr noundef nonnull %i.wd, i64 noundef %i.wh) #21
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit634.i.i.i

_ZNSt6vectorIhSaIhEED2Ev.exit634.i.i.i:           ; preds = %bb.jg, %bb.jf
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  br label %bb.jh

bb.jh:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit634.i.i.i, %_ZN7testing7MessageD2Ev.exit387.i.i.i
  %.pn216.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn216.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i.i, %_ZNSt6vectorIhSaIhEED2Ev.exit634.i.i.i ], [ %.pn165.pn.pn.i.i.i, %_ZN7testing7MessageD2Ev.exit387.i.i.i ]
  call void @_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #20
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jh, %bb.bx
  %.pn216.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn216.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i.i, %bb.jh ], [ %i.hb, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  br label %bb.jj

bb.jj:                                            ; preds = %bb.ji, %_ZN7testing7MessageD2Ev.exit365.i.i.i
  %.pn216.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn216.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i.i, %bb.ji ], [ %.pn161.pn.pn.i.i.i, %_ZN7testing7MessageD2Ev.exit365.i.i.i ]
  call void @_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #20
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.bj
  %.pn216.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn216.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i.i, %bb.jj ], [ %i.fw, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %_ZN7testing7MessageD2Ev.exit343.i.i.i
  %.pn216.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn216.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i.i, %bb.jk ], [ %.pn157.pn.pn.i.i.i, %_ZN7testing7MessageD2Ev.exit343.i.i.i ]
  call void @_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #20
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.av
  %.pn216.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn216.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i.i, %bb.jl ], [ %i.ep, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %_ZN7testing7MessageD2Ev.exit321.i.i.i
  %.pn216.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn216.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i.i, %bb.jm ], [ %.pn153.pn.pn.i.i.i, %_ZN7testing7MessageD2Ev.exit321.i.i.i ]
  call void @_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #20
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %bb.ah
  %.pn216.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn216.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i.i, %bb.jn ], [ %i.di, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jo, %_ZN7testing7MessageD2Ev.exit299.i.i.i, %bb.t, %_ZN7testing7MessageD2Ev.exit277.i.i.i
  %.pn216.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn216.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i.i, %bb.jo ], [ %.pn149.pn.pn.i.i.i, %_ZN7testing7MessageD2Ev.exit299.i.i.i ], [ %i.ca, %bb.t ], [ %.pn.pn.pn.i.i.i, %_ZN7testing7MessageD2Ev.exit277.i.i.i ]
  call void @_ZNSt10unique_ptrI11ec_group_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  br label %bb.jq

bb.jq:                                            ; preds = %bb.jp, %bb.d
  %.pn216.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn216.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i.i, %bb.jp ], [ %i.ap, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  resume { ptr, i32 } %.pn216.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i.i

bb.jr:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i313.i.i.i, %_ZN7testing7MessageD2Ev.exit310.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  invoke void @EC_GROUP_free(ptr noundef nonnull %i.de)
          to label %.loopexit.sink.split.i.i.i unwind label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.wi = landingpad { ptr, i32 }
          catch ptr null
  %i.wj = extractvalue { ptr, i32 } %i.wi, 0
  call void @__clang_call_terminate(ptr %i.wj) #24
  unreachable

bb.jt:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i335.i.i.i, %_ZN7testing7MessageD2Ev.exit332.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  invoke void @BN_free(ptr noundef nonnull %i.df)
          to label %bb.jv unwind label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.wk = landingpad { ptr, i32 }
          catch ptr null
  %i.wl = extractvalue { ptr, i32 } %i.wk, 0
  call void @__clang_call_terminate(ptr %i.wl) #24
  unreachable

bb.jv:                                            ; preds = %bb.jt
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  invoke void @EC_GROUP_free(ptr noundef nonnull %i.de)
          to label %.loopexit.sink.split.i.i.i unwind label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.wm = landingpad { ptr, i32 }
          catch ptr null
  %i.wn = extractvalue { ptr, i32 } %i.wm, 0
  call void @__clang_call_terminate(ptr %i.wn) #24
  unreachable

.loopexit.sink.split.i.i.i:                       ; preds = %bb.jv, %bb.jr, %_ZN7testing15AssertionResultD2Ev.exit293.i.i.i, %_ZN7testing15AssertionResultD2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %"_ZSt10__invoke_rIvRZN32ECDSATest_VerifyTestVectors_Test8TestBodyEvE3$_0JP8FileTestEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES6_E4typeEOS7_DpOS8_.exit"

"_ZSt10__invoke_rIvRZN32ECDSATest_VerifyTestVectors_Test8TestBodyEvE3$_0JP8FileTestEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES6_E4typeEOS7_DpOS8_.exit": ; preds = %_ZNSt10unique_ptrI11ec_group_stN4bssl8internal7DeleterEED2Ev.exit632.i.i.i, %.loopexit.sink.split.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvP8FileTestEZN32ECDSATest_VerifyTestVectors_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN32ECDSATest_VerifyTestVectors_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZN32ECDSATest_VerifyTestVectors_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN32ECDSATest_VerifyTestVectors_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN32ECDSATest_VerifyTestVectors_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN32ECDSATest_VerifyTestVectors_Test8TestBodyEvE3$_0", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !99
  br label %"_ZNSt14_Function_base13_Base_managerIZN32ECDSATest_VerifyTestVectors_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN32ECDSATest_VerifyTestVectors_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN32ECDSATest_VerifyTestVectors_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing11ScopedTraceC2IbEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.testing::Message", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.a = load i8, ptr %3, align 1, !tbaa !94, !range !66, !noundef !67
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = select i1 %i.b, ptr @.str.5, ptr @.str.4
  %i.d = load ptr, ptr %5, align 8, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = select i1 %i.b, i64 4, i64 5
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull %i.c, i64 noundef %i.f)
          to label %_ZN7testing7MessagelsEb.exit unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsEb.exit:                     ; preds = %bb.a
  invoke void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing7MessagelsEb.exit
  invoke void @_ZN7testing11ScopedTrace9PushTraceEPKciNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %4, align 8, !tbaa !45     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.k = load i64, ptr %i.i, align 8, !tbaa !46
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.m = load ptr, ptr %5, align 8, !tbaa !48     ; 3 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(128) %i.m) #20, !call_target !57, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void

bb.d:                                             ; preds = %bb.a, %_ZN7testing7MessagelsEb.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

bb.e:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %4, align 8, !tbaa !45     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.e
  %i.v = load i64, ptr %i.t, align 8, !tbaa !46
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7, %bb.d
  %.pn = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ], [ %i.r, %bb.e ]
  %i.x = load ptr, ptr %5, align 8, !tbaa !48     ; 3 uses
  %.not.i.i10 = icmp eq ptr %i.x, null
  br i1 %.not.i.i10, label %_ZN7testing7MessageD2Ev.exit12, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(128) %i.x) #20, !call_target !57, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit12

_ZN7testing7MessageD2Ev.exit12:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL8GetCurveP8FileTestPKc(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull %1) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.testing::Message", align 8  ; 9 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !76
  store i8 0, ptr %i.a, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.c, ptr noundef nonnull align 1 dereferenceable(5) @.str.79, i64 5, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 5, ptr %i.d, align 8, !tbaa !76
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 21
  store i8 0, ptr %i.e, align 1, !tbaa !46
  %i.f = invoke noundef zeroext i1 @_ZN8FileTest12GetAttributeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_(ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.g = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.c
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.i = load i64, ptr %i.c, align 8, !tbaa !46
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br i1 %i.f, label %bb.c, label %.sink.split

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.c
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.b
  %i.n = load i64, ptr %i.c, align 8, !tbaa !46
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.o

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.p = load i64, ptr %i.b, align 8, !tbaa !76   ; 2 uses
  switch i64 %i.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25.thread5 [
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.c
  %i.q = load ptr, ptr %2, align 8, !tbaa !45     ; 8 uses
  %i.r = load i32, ptr %i.q, align 1
  %i.s = xor i32 %i.r, 842149200
  %i.t = getelementptr i8, ptr %i.q, i64 4
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i32
  %i.w = xor i32 %i.v, 52
  %i.x = or i32 %i.s, %i.w
  %i.y = icmp ne i32 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ab = invoke ptr @EC_group_p224()
          to label %.sink.split unwind label %bb.d

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ad = load i32, ptr %i.q, align 1
end_hunk_1
begin_hunk_2_@_ZL9GetBIGNUMP8FileTestPKc:bb.a
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %2, align 1, !tbaa !46
  store i8 %i.i, ptr %i.h, align 1, !tbaa !46
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %2, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !76
  %i.l = load ptr, ptr %4, align 8, !tbaa !45
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.n = invoke noundef zeroext i1 @_ZN8FileTest8GetBytesEPSt6vectorIhSaIhEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %4, align 8, !tbaa !45     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.q = load i64, ptr %i.b, align 8, !tbaa !46
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br i1 %i.n, label %bb.j, label %bb.l

bb.h:                                             ; preds = %.noexc.i, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

bb.i:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %4, align 8, !tbaa !45     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.b
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.i
  %i.w = load i64, ptr %i.b, align 8, !tbaa !46
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9, %bb.h
  %.pn = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9 ], [ %i.t, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.n

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = load ptr, ptr %3, align 8, !tbaa !96     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !97
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = invoke ptr @BN_bin2bn(ptr noundef %i.y, i64 noundef %i.ad, ptr noundef null)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.l:                                             ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %storemerge = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ae, %bb.j ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !77
  %i.ag = load ptr, ptr %3, align 8, !tbaa !96    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !98
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #21
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.n:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %.pn6 = phi { ptr, i32 } [ %i.af, %bb.k ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11 ]
  %i.am = load ptr, ptr %3, align 8, !tbaa !96    ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !98
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #21
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn6
}

declare noundef zeroext i1 @_ZN8FileTest8GetBytesEPSt6vectorIhSaIhEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(392), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

declare i32 @EC_KEY_set_public_key(ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @BN_copy(ptr noundef, ptr noundef) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN8FileTest12HasAttributeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(392), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN8FileTest12GetAttributeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_(ptr noundef nonnull align 8 dereferenceable(392), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

declare ptr @EC_group_p224() local_unnamed_addr #0

declare ptr @EC_group_p256() local_unnamed_addr #0

declare ptr @EC_group_p384() local_unnamed_addr #0

declare ptr @EC_group_p521() local_unnamed_addr #0

declare ptr @BN_CTX_new() local_unnamed_addr #0

declare ptr @BN_new() local_unnamed_addr #0

declare i32 @EC_GROUP_get_curve_GFp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @EC_POINT_get_affine_coordinates_GFp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @EC_GROUP_get0_generator(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrI10bignum_ctxN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !101    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN4bssl8internal7DeleterclI10bignum_ctxEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @BN_CTX_free(ptr noundef nonnull %i.a)
          to label %_ZN4bssl8internal7DeleterclI10bignum_ctxEEvPT_.exit unwind label %bb.c

_ZN4bssl8internal7DeleterclI10bignum_ctxEEvPT_.exit: ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #24
  unreachable
}

declare void @BN_CTX_free(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvP8FileTestEZN30ECDSATest_SignTestVectors_Test8TestBodyEvE3$_0E9_M_invokeERKSt9_Any_dataOS1_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #2 align 2 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !93
  tail call fastcc void @"_ZZN30ECDSATest_SignTestVectors_Test8TestBodyEvENK3$_0clEP8FileTest"(ptr noundef %.val)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvP8FileTestEZN30ECDSATest_SignTestVectors_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN30ECDSATest_SignTestVectors_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZN30ECDSATest_SignTestVectors_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN30ECDSATest_SignTestVectors_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN30ECDSATest_SignTestVectors_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN30ECDSATest_SignTestVectors_Test8TestBodyEvE3$_0", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !99
  br label %"_ZNSt14_Function_base13_Base_managerIZN30ECDSATest_SignTestVectors_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN30ECDSATest_SignTestVectors_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN30ECDSATest_SignTestVectors_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN30ECDSATest_SignTestVectors_Test8TestBodyEvENK3$_0clEP8FileTest"(ptr noundef %0) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %1 = alloca %"class.testing::ScopedTrace", align 1 ; 8 uses
  %2 = alloca %"class.std::unique_ptr.10", align 8 ; 9 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::unique_ptr.10", align 8 ; 5 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::unique_ptr.48", align 8 ; 9 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::unique_ptr.48", align 8 ; 8 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::unique_ptr.48", align 8 ; 7 uses
  %23 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %24 = alloca %"class.testing::Message", align 8 ; 7 uses
  %25 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::vector", align 8      ; 10 uses
  %28 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %30 = alloca %"class.testing::Message", align 8 ; 7 uses
  %31 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %33 = alloca %"class.std::unique_ptr.48", align 8 ; 7 uses
  %34 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %35 = alloca %"class.testing::Message", align 8 ; 7 uses
  %36 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %38 = alloca %"class.std::unique_ptr.48", align 8 ; 7 uses
  %39 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %40 = alloca %"class.testing::Message", align 8 ; 7 uses
  %41 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %43 = alloca %"class.std::vector", align 8      ; 10 uses
  %44 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %46 = alloca %"class.testing::Message", align 8 ; 7 uses
  %47 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %49 = alloca %"class.std::unique_ptr.18", align 8 ; 5 uses
  %50 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %51 = alloca %"class.testing::Message", align 8 ; 7 uses
  %52 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %54 = alloca %"class.std::unique_ptr.54", align 8 ; 5 uses
  %55 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %56 = alloca %"class.testing::Message", align 8 ; 7 uses
  %57 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %59 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %60 = alloca %"class.testing::Message", align 8 ; 7 uses
  %61 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %63 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %64 = alloca %"class.testing::Message", align 8 ; 7 uses
  %65 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %66 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %67 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %68 = alloca %"class.testing::Message", align 8 ; 7 uses
  %69 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %70 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %71 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %72 = alloca %"class.testing::Message", align 8 ; 7 uses
  %73 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %75 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %76 = alloca %"class.testing::Message", align 8 ; 7 uses
  %77 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %78 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %79 = alloca %"class.std::unique_ptr.27", align 8 ; 5 uses
  %80 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %81 = alloca %"class.testing::Message", align 8 ; 7 uses
  %82 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %83 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %84 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %85 = alloca %"class.testing::Message", align 8 ; 7 uses
  %86 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %87 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %88 = alloca %"class.testing::Message", align 8 ; 7 uses
  %89 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %55, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %71, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %74, i64 16 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %75, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %78, i64 16 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %80, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %83, i64 16 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %84, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %87, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %29, i64 17
  %i.au = getelementptr inbounds nuw i8, ptr %45, i64 22
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrI11ec_group_stN4bssl8internal7DeleterEED2Ev.exit736, %bb.a
  %.0166.ptr.sroa.idx = phi i8 [ 0, %bb.a ], [ 1, %_ZNSt10unique_ptrI11ec_group_stN4bssl8internal7DeleterEED2Ev.exit736 ]
  %.not = phi i1 [ false, %bb.a ], [ true, %_ZNSt10unique_ptrI11ec_group_stN4bssl8internal7DeleterEED2Ev.exit736 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 %.0166.ptr.sroa.idx, ptr %i.a, align 1, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @_ZN7testing11ScopedTraceC2IbEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull @.str.2, i32 noundef 395, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke fastcc void @_ZL8GetCurveP8FileTestPKc(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.av = load ptr, ptr %2, align 8, !tbaa !62    ; 4 uses
  %i.aw = icmp ne ptr %i.av, null                 ; 2 uses
  %i.ax = zext i1 %i.aw to i8
  store i8 %i.ax, ptr %3, align 8, !tbaa !40
  store ptr null, ptr %i.f, align 8, !tbaa !41
  br i1 %i.aw, label %bb.p, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.ls

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.az = load ptr, ptr %6, align 8, !tbaa !45
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 397, ptr noundef %i.az)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #20
  %i.ba = load ptr, ptr %6, align 8, !tbaa !45    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !46
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.bf = load ptr, ptr %4, align 8, !tbaa !48    ; 3 uses
  %.not.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !19
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(128) %i.bf) #20, !call_target !57, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.bj = load ptr, ptr %i.f, align 8, !tbaa !58  ; 4 uses
  %.not.i.i311 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i311, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !45 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !46
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #21
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef 32) #21
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.loopexit.sink.split

bb.k:                                             ; preds = %bb.e
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit317

bb.l:                                             ; preds = %bb.f
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

bb.m:                                             ; preds = %bb.g
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.h
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #20
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.n ], [ %i.br, %bb.m ] ; 2 uses
  %i.bt = load ptr, ptr %6, align 8, !tbaa !45    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312: ; preds = %bb.o
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !46
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.bq, %bb.l ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312 ], [ %.pn, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.by = load ptr, ptr %4, align 8, !tbaa !48    ; 3 uses
  %.not.i.i315 = icmp eq ptr %i.by, null
  br i1 %.not.i.i315, label %_ZN7testing7MessageD2Ev.exit317, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i316

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i316: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !19
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(128) %i.by) #20, !call_target !57, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit317

_ZN7testing7MessageD2Ev.exit317:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i316, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, %bb.k
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bp, %bb.k ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i316 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.lr

bb.p:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.cc = load i8, ptr %i.a, align 1, !tbaa !94, !range !66, !noundef !67
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke fastcc void @_ZL15MakeCustomClonePK11ec_group_st(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull %i.av)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ce = load ptr, ptr %7, align 8, !tbaa !62    ; 3 uses
  store ptr %i.ce, ptr %2, align 8, !tbaa !62
  invoke void @EC_GROUP_free(ptr noundef nonnull %i.av)
          to label %_ZNSt10unique_ptrI11ec_group_stN4bssl8internal7DeleterEED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #24
  unreachable

_ZNSt10unique_ptrI11ec_group_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.ch = icmp ne ptr %i.ce, null                 ; 2 uses
  %i.ci = zext i1 %i.ch to i8
  store i8 %i.ci, ptr %8, align 8, !tbaa !40
  store ptr null, ptr %i.g, align 8, !tbaa !41
  br i1 %i.ch, label %_ZN7testing15AssertionResultD2Ev.exit344, label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.lr

bb.u:                                             ; preds = %_ZNSt10unique_ptrI11ec_group_stN4bssl8internal7DeleterEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
end_hunk_2
begin_hunk_3_@"_ZZN30ECDSATest_SignTestVectors_Test8TestBodyEvENK3$_0clEP8FileTest":bb.a
  invoke void @BN_free(ptr noundef nonnull %i.aac)
          to label %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit730 unwind label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.aad = landingpad { ptr, i32 }
          catch ptr null
  %i.aae = extractvalue { ptr, i32 } %i.aad, 0
  call void @__clang_call_terminate(ptr %i.aae) #24
  unreachable

_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit730: ; preds = %bb.kn, %bb.ko
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  %i.aaf = load ptr, ptr %17, align 8, !tbaa !77  ; 2 uses
  %.not.i731 = icmp eq ptr %i.aaf, null
  br i1 %.not.i731, label %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit732, label %bb.kq

bb.kq:                                            ; preds = %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit730
  invoke void @BN_free(ptr noundef nonnull %i.aaf)
          to label %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit732 unwind label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.aag = landingpad { ptr, i32 }
          catch ptr null
  %i.aah = extractvalue { ptr, i32 } %i.aag, 0
  call void @__clang_call_terminate(ptr %i.aah) #24
  unreachable

_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit732: ; preds = %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit730, %bb.kq
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  %i.aai = load ptr, ptr %12, align 8, !tbaa !77  ; 2 uses
  %.not.i733 = icmp eq ptr %i.aai, null
  br i1 %.not.i733, label %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit734, label %bb.ks

bb.ks:                                            ; preds = %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit732
  invoke void @BN_free(ptr noundef nonnull %i.aai)
          to label %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit734 unwind label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.aaj = landingpad { ptr, i32 }
          catch ptr null
  %i.aak = extractvalue { ptr, i32 } %i.aaj, 0
  call void @__clang_call_terminate(ptr %i.aak) #24
  unreachable

_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit734: ; preds = %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit732, %bb.ks
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.aal = load ptr, ptr %2, align 8, !tbaa !62   ; 2 uses
  %.not.i735 = icmp eq ptr %i.aal, null
  br i1 %.not.i735, label %_ZNSt10unique_ptrI11ec_group_stN4bssl8internal7DeleterEED2Ev.exit736, label %bb.ku

bb.ku:                                            ; preds = %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit734
  invoke void @EC_GROUP_free(ptr noundef nonnull %i.aal)
          to label %_ZNSt10unique_ptrI11ec_group_stN4bssl8internal7DeleterEED2Ev.exit736 unwind label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.aam = landingpad { ptr, i32 }
          catch ptr null
  %i.aan = extractvalue { ptr, i32 } %i.aam, 0
  call void @__clang_call_terminate(ptr %i.aan) #24
  unreachable

_ZNSt10unique_ptrI11ec_group_stN4bssl8internal7DeleterEED2Ev.exit736: ; preds = %_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev.exit734, %bb.ku
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br i1 %.24162, label %.loopexit, label %bb.b

bb.kw:                                            ; preds = %_ZN7testing7MessageD2Ev.exit715, %bb.ji
  %.pn249.pn.pn = phi { ptr, i32 } [ %.pn249.pn, %_ZN7testing7MessageD2Ev.exit715 ], [ %i.yj, %bb.ji ]
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #20
  br label %bb.kx

bb.kx:                                            ; preds = %bb.kw, %bb.jh, %_ZN7testing7MessageD2Ev.exit685
  %.pn249.pn.pn.pn = phi { ptr, i32 } [ %.pn249.pn.pn, %bb.kw ], [ %.pn245.pn.pn, %bb.jh ], [ %.pn241.pn.pn, %_ZN7testing7MessageD2Ev.exit685 ]
  call void @_ZNSt10unique_ptrI12ecdsa_sig_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %79) #20
  br label %bb.ky

bb.ky:                                            ; preds = %bb.kx, %bb.ic
  %.pn249.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn249.pn.pn.pn, %bb.kx ], [ %i.vz, %bb.ic ]
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #20
  br label %bb.kz

bb.kz:                                            ; preds = %bb.ky, %bb.ib, %bb.hm, %bb.gx, %bb.gi, %bb.ft, %_ZN7testing7MessageD2Ev.exit553
  %.pn249.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn249.pn.pn.pn.pn, %bb.ky ], [ %.pn236.pn.pn.pn, %bb.ib ], [ %.pn231.pn.pn.pn, %bb.hm ], [ %.pn226.pn.pn.pn, %bb.gx ], [ %.pn221.pn.pn.pn, %bb.gi ], [ %.pn216.pn.pn.pn, %bb.ft ], [ %.pn212.pn.pn, %_ZN7testing7MessageD2Ev.exit553 ]
  call void @_ZNSt10unique_ptrI11ec_point_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %54) #20
  br label %bb.la

bb.la:                                            ; preds = %bb.kz, %bb.er
  %.pn249.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn249.pn.pn.pn.pn.pn, %bb.kz ], [ %i.ol, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #20
  br label %bb.lb

bb.lb:                                            ; preds = %bb.la, %_ZN7testing7MessageD2Ev.exit531
  %.pn249.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn249.pn.pn.pn.pn.pn.pn, %bb.la ], [ %.pn208.pn.pn, %_ZN7testing7MessageD2Ev.exit531 ]
  call void @_ZNSt10unique_ptrI9ec_key_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %49) #20
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lb, %bb.ed
  %.pn249.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn249.pn.pn.pn.pn.pn.pn.pn, %bb.lb ], [ %i.ng, %bb.ed ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #20
  br label %bb.ld

bb.ld:                                            ; preds = %bb.lc, %bb.ec
  %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn249.pn.pn.pn.pn.pn.pn.pn.pn, %bb.lc ], [ %.pn203.pn.pn.pn, %bb.ec ]
  %i.aao = load ptr, ptr %43, align 8, !tbaa !96  ; 3 uses
  %.not.i.i.i737 = icmp eq ptr %i.aao, null
  br i1 %.not.i.i.i737, label %_ZNSt6vectorIhSaIhEED2Ev.exit738, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.aap = load ptr, ptr %i.ar, align 8, !tbaa !98
  %i.aaq = ptrtoint ptr %i.aap to i64
  %i.aar = ptrtoint ptr %i.aao to i64
  %i.aas = sub i64 %i.aaq, %i.aar
  call void @_ZdlPvm(ptr noundef nonnull %i.aao, i64 noundef %i.aas) #21
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit738

_ZNSt6vectorIhSaIhEED2Ev.exit738:                 ; preds = %bb.ld, %bb.le
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #20
  br label %bb.lf

bb.lf:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit738, %_ZN7testing7MessageD2Ev.exit477
  %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit738 ], [ %.pn197.pn.pn, %_ZN7testing7MessageD2Ev.exit477 ]
  call void @_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %38) #20
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lf, %bb.da
  %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.lf ], [ %i.ki, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #20
  br label %bb.lh

bb.lh:                                            ; preds = %bb.lg, %_ZN7testing7MessageD2Ev.exit455
  %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.lg ], [ %.pn193.pn.pn, %_ZN7testing7MessageD2Ev.exit455 ]
  call void @_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #20
  br label %bb.li

bb.li:                                            ; preds = %bb.lh, %bb.cm
  %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.lh ], [ %i.jd, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  br label %bb.lj

bb.lj:                                            ; preds = %bb.li, %bb.cl
  %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.li ], [ %.pn188.pn.pn.pn, %bb.cl ]
  %i.aat = load ptr, ptr %27, align 8, !tbaa !96  ; 3 uses
  %.not.i.i.i739 = icmp eq ptr %i.aat, null
  br i1 %.not.i.i.i739, label %_ZNSt6vectorIhSaIhEED2Ev.exit740, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.aau = load ptr, ptr %i.as, align 8, !tbaa !98
  %i.aav = ptrtoint ptr %i.aau to i64
  %i.aaw = ptrtoint ptr %i.aat to i64
  %i.aax = sub i64 %i.aav, %i.aaw
  call void @_ZdlPvm(ptr noundef nonnull %i.aat, i64 noundef %i.aax) #21
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit740

_ZNSt6vectorIhSaIhEED2Ev.exit740:                 ; preds = %bb.lj, %bb.lk
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  br label %bb.ll

bb.ll:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit740, %_ZN7testing7MessageD2Ev.exit405
  %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit740 ], [ %.pn182.pn.pn, %_ZN7testing7MessageD2Ev.exit405 ]
  call void @_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #20
  br label %bb.lm

bb.lm:                                            ; preds = %bb.ll, %bb.bj
  %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ll ], [ %i.gf, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lm, %_ZN7testing7MessageD2Ev.exit383
  %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.lm ], [ %.pn178.pn.pn, %_ZN7testing7MessageD2Ev.exit383 ]
  call void @_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #20
  br label %bb.lo

bb.lo:                                            ; preds = %bb.ln, %bb.av
  %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ln ], [ %i.ey, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.lp

bb.lp:                                            ; preds = %bb.lo, %_ZN7testing7MessageD2Ev.exit361
  %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.lo ], [ %.pn174.pn.pn, %_ZN7testing7MessageD2Ev.exit361 ]
  call void @_ZNSt10unique_ptrI9bignum_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #20
  br label %bb.lq

bb.lq:                                            ; preds = %bb.lp, %bb.ah
  %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.lp ], [ %i.dr, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %_ZN7testing7MessageD2Ev.exit339, %bb.t, %_ZN7testing7MessageD2Ev.exit317
  %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.lq ], [ %.pn170.pn.pn, %_ZN7testing7MessageD2Ev.exit339 ], [ %i.cj, %bb.t ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit317 ]
  call void @_ZNSt10unique_ptrI11ec_group_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #20
  br label %bb.ls

bb.ls:                                            ; preds = %bb.lr, %bb.d
  %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.lr ], [ %i.ay, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  resume { ptr, i32 } %.pn249.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn

bb.lt:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i353, %_ZN7testing7MessageD2Ev.exit350
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  invoke void @EC_GROUP_free(ptr noundef nonnull %i.dn)
          to label %.loopexit.sink.split unwind label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.aay = landingpad { ptr, i32 }
          catch ptr null
  %i.aaz = extractvalue { ptr, i32 } %i.aay, 0
  call void @__clang_call_terminate(ptr %i.aaz) #24
  unreachable

bb.lv:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i375, %_ZN7testing7MessageD2Ev.exit372
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  invoke void @BN_free(ptr noundef nonnull %i.do)
          to label %bb.lx unwind label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.aba = landingpad { ptr, i32 }
          catch ptr null
  %i.abb = extractvalue { ptr, i32 } %i.aba, 0
  call void @__clang_call_terminate(ptr %i.abb) #24
  unreachable

bb.lx:                                            ; preds = %bb.lv
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  invoke void @EC_GROUP_free(ptr noundef nonnull %i.dn)
          to label %.loopexit.sink.split unwind label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  %i.abc = landingpad { ptr, i32 }
          catch ptr null
  %i.abd = extractvalue { ptr, i32 } %i.abc, 0
  call void @__clang_call_terminate(ptr %i.abd) #24
  unreachable

.loopexit.sink.split:                             ; preds = %bb.lx, %bb.lt, %_ZN7testing15AssertionResultD2Ev.exit333, %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt10unique_ptrI11ec_group_stN4bssl8internal7DeleterEED2Ev.exit736, %.loopexit.sink.split
  ret void
}

declare i32 @EC_KEY_set_private_key(ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @ECDSA_sign_with_nonce_and_leak_private_key_for_testing(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

declare i32 @BN_cmp(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_ecdsa_test.cc() #15 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %1 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.e, ptr %9, align 8, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.e, ptr noundef nonnull align 1 dereferenceable(9) @.str, i64 9, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 9, ptr %i.f, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 25
  store i8 0, ptr %i.g, align 1, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 11 uses
  store ptr %i.h, ptr %11, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i64 96, ptr %i.d, align 8, !tbaa !75
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc9.i unwind label %bb.h  ; 3 uses

.noexc9.i:                                        ; preds = %bb.a
  store ptr %i.i, ptr %11, align 8, !tbaa !45
  %i.j = load i64, ptr %i.d, align 8, !tbaa !75   ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(96) %i.i, ptr noundef nonnull align 1 dereferenceable(96) @.str.2, i64 96, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  store i8 0, ptr %i.l, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.m, ptr %10, align 8, !tbaa !74
  %i.n = load ptr, ptr %11, align 8, !tbaa !45    ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.h
  br i1 %i.o, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.b:                                             ; preds = %.noexc9.i
  %i.p = load i64, ptr %i.k, align 8, !tbaa !76   ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.p, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.r, i1 false)
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.noexc9.i
  store ptr %i.n, ptr %10, align 8, !tbaa !45
  %i.s = load i64, ptr %i.h, align 8, !tbaa !46
  store i64 %i.s, ptr %i.m, align 8, !tbaa !46
  %.pre.i = load i64, ptr %i.k, align 8, !tbaa !76
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i

_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.b
  %i.t = phi i64 [ %i.p, %bb.b ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !76
  store ptr %i.h, ptr %11, align 8, !tbaa !45
  store i64 0, ptr %i.k, align 8, !tbaa !76
  store i8 0, ptr %i.h, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i32 143, ptr %i.v, align 8, !tbaa !183
  %i.w = invoke noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i
  %i.x = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(ptr noundef nonnull @.str.2, i32 noundef 143)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.y = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(ptr noundef nonnull @.str.2, i32 noundef 143)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.z = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #23
          to label %bb.f unwind label %bb.i       ; 2 uses

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI28ECDSATest_BuiltinCurves_TestEE, i64 16), ptr %i.z, align 8, !tbaa !19
  %i.aa = invoke noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS8_S8_NS0_12CodeLocationEPKvPFvvESD_PNS0_15TestFactoryBaseE(ptr noundef nonnull align 8 %9, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 %10, ptr noundef %i.w, ptr noundef %i.x, ptr noundef %i.y, ptr noundef nonnull %i.z)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %10, align 8, !tbaa !45   ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.m
  br i1 %i.ac, label %_ZN7testing8internal12CodeLocationD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !46
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #21
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit.i

_ZN7testing8internal12CodeLocationD2Ev.exit.i:    ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.af = load ptr, ptr %11, align 8, !tbaa !45   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.h
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i
  %i.ah = load i64, ptr %i.h, align 8, !tbaa !46
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i
  %i.aj = load ptr, ptr %9, align 8, !tbaa !45    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.e
  br i1 %i.ak, label %__cxx_global_var_init.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.al = load i64, ptr %i.e, align 8, !tbaa !46
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #21
  br label %__cxx_global_var_init.exit

bb.h:                                             ; preds = %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i

bb.i:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %10, align 8, !tbaa !45   ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.m
  br i1 %i.aq, label %_ZN7testing8internal12CodeLocationD2Ev.exit17.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15.i: ; preds = %bb.i
  %i.ar = load i64, ptr %i.m, align 8, !tbaa !46
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #21
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit17.i

_ZN7testing8internal12CodeLocationD2Ev.exit17.i:  ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15.i
  %i.at = load ptr, ptr %11, align 8, !tbaa !45   ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.h
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit17.i
  %i.av = load i64, ptr %i.h, align 8, !tbaa !46
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit17.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i, %bb.h
  %.pn.pn.i = phi { ptr, i32 } [ %i.an, %bb.h ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i ], [ %i.ao, %_ZN7testing8internal12CodeLocationD2Ev.exit17.i ] ; 2 uses
  %i.ax = load ptr, ptr %9, align 8, !tbaa !45    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.e
  br i1 %i.ay, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i
  %i.az = load i64, ptr %i.e, align 8, !tbaa !46
  br label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i33
  %.sink110 = phi i64 [ %i.gr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i33 ], [ %i.eu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i11 ], [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i ]
  %.sink = phi ptr [ %i.gp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i33 ], [ %i.es, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i11 ], [ %i.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %.pn.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i33 ], [ %.pn.i10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i11 ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i ], [ %.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i ]
  %i.ba = add i64 %.sink110, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ba) #21
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i ], [ %.pn.i10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i9 ], [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i ], [ %.pn.i32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i31 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

__cxx_global_var_init.exit:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i
  store ptr %i.aa, ptr @_ZN28ECDSATest_BuiltinCurves_Test10test_info_E, align 8, !tbaa !185
  %i.bb = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN28ECDSATest_BuiltinCurves_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.bc, ptr %6, align 8, !tbaa !74
end_hunk_3

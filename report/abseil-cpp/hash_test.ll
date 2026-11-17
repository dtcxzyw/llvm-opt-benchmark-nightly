Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/hash_test?download=true
inline.NumInlined: 34654
inline.NumDeleted: 14014
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZNK4absl12lts_2026052613hash_internal12PrintVisitorclIPiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_:bb.a
  store ptr @.str.149, ptr %i.s, align 8, !noalias !3041
  invoke void @_ZN4absl12lts_2026052616strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull %3, i64 5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34, !noalias !3041
  %i.t = load ptr, ptr %5, align 8, !tbaa !183    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.w = load i64, ptr %i.u, align 8, !tbaa !186
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void

bb.c:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %5, align 8, !tbaa !183    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !186
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing13PrintToStringIPiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !392    ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.199, i64 noundef 4)
          to label %_ZN7testing8internal21UniversalTersePrinterIPiE5PrintERKS2_PSo.exit unwind label %bb.g ; 0 uses

bb.c:                                             ; preds = %bb.a
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b)
          to label %_ZN7testing8internal21UniversalTersePrinterIPiE5PrintERKS2_PSo.exit unwind label %bb.g ; 0 uses

_ZN7testing8internal21UniversalTersePrinterIPiE5PrintERKS2_PSo.exit: ; preds = %bb.b, %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !3046)
  call void @llvm.experimental.noalias.scope.decl(metadata !3047)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !184, !alias.scope !3048
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !187, !alias.scope !3048
  store i8 0, ptr %i.f, align 8, !tbaa !186, !alias.scope !3048
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !266, !noalias !3048 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !noalias !3048 ; 2 uses
  %i.l = icmp ugt ptr %i.i, %i.k
  %.08.i.i.i = select i1 %i.l, ptr %i.i, ptr %i.k ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIPiE5PrintERKS2_PSo.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !267, !noalias !3048 ; 2 uses
  %i.o = ptrtoint ptr %.08.i.i.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.n, i64 noundef %i.q)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !183, !alias.scope !3048 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.f
  br i1 %i.u, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.v = load i64, ptr %i.f, align 8, !tbaa !186, !alias.scope !3048
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #37
  br label %.body

bb.f:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIPiE5PrintERKS2_PSo.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.f, %bb.d
  %i.y = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.y, ptr %2, align 8, !tbaa !196
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.aa = getelementptr i8, ptr %i.y, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %2, i64 %i.ab
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !196
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !196
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8, !tbaa !196
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !183 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !186
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #37
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8, !tbaa !196
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.al) #34
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.am, ptr %2, align 8, !tbaa !196
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ao = getelementptr i8, ptr %i.am, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %2, i64 %i.ap
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !196
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ar, align 8, !tbaa !269
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.as) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret void

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.at, %bb.g ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.s, %bb.e ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  resume { ptr, i32 } %eh.lpad-body
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_135HashValueTest_PointerAlignment_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_135HashValueTest_PointerAlignment_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #39 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_135HashValueTest_PointerAlignment_TestE, i64 16), ptr %i.a, align 8, !tbaa !196
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #37
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_135HashValueTest_PointerAlignment_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_135HashValueTest_PointerAlignment_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 12 uses
  %i.c = alloca i64, align 8                      ; 10 uses
  %1 = alloca %"class.testing::ScopedTrace", align 1 ; 8 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %6 = alloca %"class.testing::Message", align 8  ; 9 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.g = alloca double, align 8                   ; 5 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 1048576, ptr %i.a, align 8, !tbaa !185
  %i.h = tail call noalias noundef nonnull dereferenceable(1048576) ptr @_Znam(i64 noundef 1048576) #39 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  store i64 1, ptr %i.c, align 8, !tbaa !185
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %bb.b

.thread112:                                       ; preds = %bb.an
  store i64 %i.do, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.k = uitofp nneg i64 %i.dp to double
  %i.l = fmul nnan double %i.k, 2.000000e-01      ; 2 uses
  store double %i.l, ptr %i.g, align 8, !tbaa !328
  %i.m = sitofp i64 %i.do to double
  %i.n = fcmp ult double %i.l, %i.m
  br i1 %i.n, label %bb.as, label %bb.ar

bb.b:                                             ; preds = %bb.a, %bb.an
  %i.o = phi i64 [ 0, %bb.a ], [ %i.dp, %bb.an ]
  %.037128 = phi i64 [ 0, %bb.a ], [ %i.do, %bb.an ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  invoke void @_ZN7testing11ScopedTraceC2ImEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull @.str, i32 noundef 179, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.p = load i64, ptr %i.c, align 8, !tbaa !185
  %i.q = shl i64 %i.p, 5                          ; 2 uses
  store i64 %i.q, ptr %i.d, align 8, !tbaa !185
  %i.r = load i64, ptr %i.a, align 8, !tbaa !185, !noalias !3053
  %.not.i = icmp ugt i64 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2)
          to label %_ZN7testing8internal11CmpHelperLEImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  invoke void @_ZN7testing8internal18CmpHelperOpFailureImmEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.201, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.207)
          to label %_ZN7testing8internal11CmpHelperLEImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.g

_ZN7testing8internal11CmpHelperLEImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  %i.s = load i8, ptr %2, align 8, !tbaa !225, !range !177, !noundef !178
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.critedge, label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  store i64 %.037128, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br label %bb.w

bb.h:                                             ; preds = %_ZN7testing8internal11CmpHelperLEImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  store i64 %.037128, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !228  ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !183
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.j, %bb.i
  %i.y = phi ptr [ %i.x, %bb.j ], [ @.str.158, %bb.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 180, ptr noundef %i.y)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.z = load ptr, ptr %3, align 8, !tbaa !227    ; 3 uses
  %.not.i.i60 = icmp eq ptr %i.z, null
  br i1 %.not.i.i60, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !196
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(128) %i.z) #34, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.l, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !228 ; 4 uses
  %.not.i.i61 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i61, label %.thread115, label %bb.m

bb.m:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !183 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !186
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #37
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 32) #37
  br label %.thread115

.thread115:                                       ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.n:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit64

bb.o:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.k
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #34
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.al, %bb.p ], [ %i.ak, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.am = load ptr, ptr %3, align 8, !tbaa !227   ; 3 uses
  %.not.i.i62 = icmp eq ptr %i.am, null
  br i1 %.not.i.i62, label %_ZN7testing7MessageD2Ev.exit64, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63: ; preds = %bb.q
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !196
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(128) %i.am) #34, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit64

_ZN7testing7MessageD2Ev.exit64:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63, %bb.q, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.aj, %bb.n ], [ %.pn, %bb.q ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #34
  br label %bb.w

.critedge:                                        ; preds = %_ZN7testing8internal11CmpHelperLEImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !228 ; 4 uses
  %.not.i.i65 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i65, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.critedge
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !183 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i66: ; preds = %bb.r
  %i.au = load i64, ptr %i.as, align 8, !tbaa !186
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #37
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i67

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i67: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i66
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 32) #37
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i67, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.aw = load i64, ptr %i.c, align 8, !tbaa !185 ; 2 uses
  br label %bb.x

bb.t:                                             ; preds = %bb.x
  %i.ax = xor i64 %i.bx, -1
  %i.ay = or i64 %i.by, %i.ax
  %i.az = and i64 %i.ay, 4095                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.ba = call range(i64 0, 13) i64 @llvm.ctpop.i64(i64 %i.az) ; 2 uses
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  store i32 %i.bb, ptr %i.e, align 4, !tbaa !254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  store i64 5, ptr %i.f, align 8, !tbaa !185
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %.not.i70 = icmp samesign ugt i64 %i.ba, 5
  br i1 %.not.i70, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
          to label %_ZN7testing8internal11CmpHelperLEIimEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.y

bb.v:                                             ; preds = %bb.t
  invoke void @_ZN7testing8internal18CmpHelperOpFailureIimEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.203, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.207)
          to label %_ZN7testing8internal11CmpHelperLEIimEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.y

bb.w:                                             ; preds = %_ZN7testing7MessageD2Ev.exit64, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit64 ], [ %i.v, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.ap

bb.x:                                             ; preds = %bb.x, %bb.s
  %.0127 = phi i64 [ 0, %bb.s ], [ %i.bz, %bb.x ] ; 3 uses
  %.017126 = phi i64 [ -1, %bb.s ], [ %i.by, %bb.x ]
  %.018125 = phi i64 [ 0, %bb.s ], [ %i.bx, %bb.x ]
  %i.bc = mul i64 %i.aw, %.0127
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bc
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = xor i64 %i.be, ptrtoint (ptr @_ZN4absl12lts_2026052613hash_internal15MixingHashState5kSeedE to i64)
  %i.bg = zext i64 %i.bf to i128
  %i.bh = mul nuw nsw i128 %i.bg, 8779197792823184629 ; 2 uses
  %i.bi = lshr i128 %i.bh, 64
  %i.bj = xor i128 %i.bi, %i.bh
  %i.bk = trunc i128 %i.bj to i64                 ; 2 uses
  %i.bl = or i64 %.018125, %i.bk
  %i.bm = and i64 %.017126, %i.bk
  %i.bn = or disjoint i64 %.0127, 1
  %i.bo = mul i64 %i.aw, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bo
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = xor i64 %i.bq, ptrtoint (ptr @_ZN4absl12lts_2026052613hash_internal15MixingHashState5kSeedE to i64)
  %i.bs = zext i64 %i.br to i128
  %i.bt = mul nuw nsw i128 %i.bs, 8779197792823184629 ; 2 uses
  %i.bu = lshr i128 %i.bt, 64
  %i.bv = xor i128 %i.bu, %i.bt
  %i.bw = trunc i128 %i.bv to i64                 ; 2 uses
  %i.bx = or i64 %i.bl, %i.bw                     ; 2 uses
  %i.by = and i64 %i.bm, %i.bw                    ; 2 uses
  %i.bz = add nuw nsw i64 %.0127, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bz, 32
  br i1 %exitcond.not.1, label %bb.t, label %bb.x, !llvm.loop !3051

_ZN7testing8internal11CmpHelperLEIimEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.u, %bb.v
  %i.ca = load i8, ptr %5, align 8, !tbaa !225, !range !177, !noundef !178
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.al, label %bb.z

bb.y:                                             ; preds = %bb.v, %bb.u
  %i.cc = landingpad { ptr, i32 }
          cleanup
  store i64 %.037128, ptr %i.b, align 8
  br label %bb.ao

bb.z:                                             ; preds = %_ZN7testing8internal11CmpHelperLEIimEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %bb.z
  %i.cd = load ptr, ptr %6, align 8, !tbaa !227
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull @.str.204, i64 noundef 2)
          to label %bb.ab unwind label %bb.ag     ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.cg = load ptr, ptr %6, align 8, !tbaa !227
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !196
  %i.cj = getelementptr i8, ptr %i.ci, i64 -24
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds i8, ptr %i.ch, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !3054
  %i.co = and i32 %i.cn, -75
  %i.cp = or disjoint i32 %i.co, 8
  store i32 %i.cp, ptr %i.cm, align 8, !tbaa !3055
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, i64 noundef %i.az)
          to label %_ZN7testing7MessagelsImEERS0_RKT_.exit unwind label %bb.ag ; 0 uses

_ZN7testing7MessagelsImEERS0_RKT_.exit:           ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.cr = load ptr, ptr %i.j, align 8, !tbaa !228 ; 2 uses
  %.not.i.i76 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i76, label %_ZNK7testing15AssertionResult15failure_messageEv.exit77, label %bb.ac

bb.ac:                                            ; preds = %_ZN7testing7MessagelsImEERS0_RKT_.exit
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !183
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit77

_ZNK7testing15AssertionResult15failure_messageEv.exit77: ; preds = %bb.ac, %_ZN7testing7MessagelsImEERS0_RKT_.exit
  %i.ct = phi ptr [ %i.cs, %bb.ac ], [ @.str.158, %_ZN7testing7MessagelsImEERS0_RKT_.exit ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 196, ptr noundef %i.ct)
          to label %bb.ad unwind label %bb.ah

bb.ad:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit77
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.cu = load ptr, ptr %6, align 8, !tbaa !227   ; 3 uses
  %.not.i.i78 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i78, label %_ZN7testing7MessageD2Ev.exit80, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i79

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i79: ; preds = %bb.ae
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !196
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(128) %i.cu) #34, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit80

_ZN7testing7MessageD2Ev.exit80:                   ; preds = %bb.ae, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.al

bb.af:                                            ; preds = %bb.z
  %i.cy = landingpad { ptr, i32 }
          cleanup
  store i64 %.037128, ptr %i.b, align 8
  br label %_ZN7testing7MessageD2Ev.exit83

bb.ag:                                            ; preds = %bb.ab, %bb.aa
  %i.cz = landingpad { ptr, i32 }
          cleanup
  store i64 %.037128, ptr %i.b, align 8
  br label %bb.ak

bb.ah:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit77
  %i.da = landingpad { ptr, i32 }
          cleanup
  store i64 %.037128, ptr %i.b, align 8
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ad
  %i.db = landingpad { ptr, i32 }
          cleanup
  store i64 %.037128, ptr %i.b, align 8
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #34
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn45 = phi { ptr, i32 } [ %i.db, %bb.ai ], [ %i.da, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ag
  %.pn45.pn = phi { ptr, i32 } [ %.pn45, %bb.aj ], [ %i.cz, %bb.ag ] ; 2 uses
  %i.dc = load ptr, ptr %6, align 8, !tbaa !227   ; 3 uses
  %.not.i.i81 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i81, label %_ZN7testing7MessageD2Ev.exit83, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82: ; preds = %bb.ak
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !196
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(128) %i.dc) #34, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit83

_ZN7testing7MessageD2Ev.exit83:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82, %bb.ak, %bb.af
  %.pn45.pn.pn = phi { ptr, i32 } [ %i.cy, %bb.af ], [ %.pn45.pn, %bb.ak ], [ %.pn45.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #34
  br label %bb.ao

bb.al:                                            ; preds = %_ZN7testing8internal11CmpHelperLEIimEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit, %_ZN7testing7MessageD2Ev.exit80
  %i.dg = load ptr, ptr %i.j, align 8, !tbaa !228 ; 4 uses
  %.not.i.i84 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i84, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !183 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i85: ; preds = %bb.am
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !186
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #37
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i85
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef 32) #37
  br label %bb.an

bb.an:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.dm = load i32, ptr %i.e, align 4, !tbaa !254
  %i.dn = sext i32 %i.dm to i64
  %i.do = add nsw i64 %.037128, %i.dn             ; 3 uses
  %i.dp = add nuw nsw i64 %i.o, 1                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %i.dq = load i64, ptr %i.c, align 8, !tbaa !185 ; 3 uses
  %i.dr = icmp ult i64 %i.dq, 8
  %i.ds = icmp ult i64 %i.dq, 1024
  %. = select i1 %i.ds, i64 8, i64 32
  %.sink156 = select i1 %i.dr, i64 1, i64 %.
  %i.dt = add i64 %i.dq, %.sink156                ; 2 uses
  store i64 %i.dt, ptr %i.c, align 8, !tbaa !185
  %i.du = icmp ugt i64 %i.dt, 32767
  br i1 %i.du, label %.thread112, label %bb.b, !llvm.loop !3052

bb.ao:                                            ; preds = %_ZN7testing7MessageD2Ev.exit83, %bb.y
  %.pn45.pn.pn.pn = phi { ptr, i32 } [ %.pn45.pn.pn, %_ZN7testing7MessageD2Ev.exit83 ], [ %i.cc, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.w
  %.pn54.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.w ], [ %.pn45.pn.pn.pn, %bb.ao ]
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #34
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.f
  %.pn54.pn.pn = phi { ptr, i32 } [ %.pn54.pn, %bb.ap ], [ %i.u, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit107

bb.ar:                                            ; preds = %.thread112
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal11CmpHelperLEIldEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.at

bb.as:                                            ; preds = %.thread112
  invoke void @_ZN7testing8internal18CmpHelperOpFailureIldEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.206, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.207)
          to label %_ZN7testing8internal11CmpHelperLEIldEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.at

_ZN7testing8internal11CmpHelperLEIldEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  %i.dv = load i8, ptr %8, align 8, !tbaa !225, !range !177, !noundef !178
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.bd, label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  br label %bb.bf

bb.au:                                            ; preds = %_ZN7testing8internal11CmpHelperLEIldEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.av unwind label %bb.az

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !228 ; 2 uses
  %.not.i.i91 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i91, label %_ZNK7testing15AssertionResult15failure_messageEv.exit92, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !183
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit92

_ZNK7testing15AssertionResult15failure_messageEv.exit92: ; preds = %bb.aw, %bb.av
  %i.eb = phi ptr [ %i.ea, %bb.aw ], [ @.str.158, %bb.av ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 204, ptr noundef %i.eb)
          to label %bb.ax unwind label %bb.ba

bb.ax:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit92
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.ec = load ptr, ptr %9, align 8, !tbaa !227   ; 3 uses
  %.not.i.i93 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i93, label %_ZN7testing7MessageD2Ev.exit95, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94: ; preds = %bb.ay
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !196
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(128) %i.ec) #34, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit95

_ZN7testing7MessageD2Ev.exit95:                   ; preds = %bb.ay, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.bd

bb.az:                                            ; preds = %bb.au
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit98

bb.ba:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit92
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ax
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #34
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.pn50 = phi { ptr, i32 } [ %i.ei, %bb.bb ], [ %i.eh, %bb.ba ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.ej = load ptr, ptr %9, align 8, !tbaa !227   ; 3 uses
  %.not.i.i96 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i96, label %_ZN7testing7MessageD2Ev.exit98, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97: ; preds = %bb.bc
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !196
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(128) %i.ej) #34, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit98

_ZN7testing7MessageD2Ev.exit98:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97, %bb.bc, %bb.az
  %.pn50.pn = phi { ptr, i32 } [ %i.eg, %bb.az ], [ %.pn50, %bb.bc ], [ %.pn50, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #34
  br label %bb.bf

bb.bd:                                            ; preds = %_ZN7testing8internal11CmpHelperLEIldEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit, %_ZN7testing7MessageD2Ev.exit95
  %i.en = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !228 ; 4 uses
  %.not.i.i99 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i99, label %_ZN7testing15AssertionResultD2Ev.exit103, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !183 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100: ; preds = %bb.be
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !186
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #37
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef 32) #37
  br label %_ZN7testing15AssertionResultD2Ev.exit103

_ZN7testing15AssertionResultD2Ev.exit103:         ; preds = %bb.bd, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %.thread115, %_ZN7testing15AssertionResultD2Ev.exit103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @_ZdaPv(ptr noundef nonnull %i.h) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret void

bb.bf:                                            ; preds = %_ZN7testing7MessageD2Ev.exit98, %bb.at
  %.pn50.pn.pn = phi { ptr, i32 } [ %.pn50.pn, %_ZN7testing7MessageD2Ev.exit98 ], [ %i.dx, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit107

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit107: ; preds = %bb.bf, %bb.aq
  %.pn54.pn.pn.pn = phi { ptr, i32 } [ %.pn54.pn.pn, %bb.aq ], [ %.pn50.pn.pn, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @_ZdaPv(ptr noundef nonnull %i.h) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  resume { ptr, i32 } %.pn54.pn.pn.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing11ScopedTraceC2ImEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.testing::Message", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.a = load ptr, ptr %5, align 8, !tbaa !227
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %3, align 8, !tbaa !185
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.c)
          to label %_ZN7testing7MessagelsImEERS0_RKT_.exit unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsImEERS0_RKT_.exit:           ; preds = %bb.a
  invoke void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing7MessagelsImEERS0_RKT_.exit
  invoke void @_ZN7testing11ScopedTrace9PushTraceEPKciNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 %4)
          to label %bb.c unwind label %bb.e

end_hunk_0

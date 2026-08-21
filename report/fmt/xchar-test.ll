Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/xchar-test?download=true
inline.NumInlined: 12086
inline.NumDeleted: 3130
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 104
loop-unroll.NumUnrolled: 143
begin_hunk_0_@_ZN26xchar_test_to_wstring_Test8TestBodyEv:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal8EqHelper7CompareIA3_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !18
  %i.k = shl i64 %i.j, 2
  %i.l = add i64 %i.k, 4
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.l) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %_ZN7testing8internal8EqHelper7CompareIA3_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.m = load i8, ptr %2, align 8, !tbaa !69, !range !78, !noundef !79
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.l, label %bb.c

bb.b:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i, %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %3, align 8, !tbaa !68     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i8: ; preds = %bb.b
  %i.s = load i64, ptr %i.q, align 8, !tbaa !18
  %i.t = shl i64 %i.s, 2
  %i.u = add i64 %i.t, 4
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.u) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit10: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.n

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !80   ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !16
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.e, %bb.d
  %i.y = phi ptr [ %i.x, %bb.e ], [ @.str, %bb.d ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 300, ptr noundef %i.y)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.z = load ptr, ptr %4, align 8, !tbaa !81     ; 3 uses
  %.not.i.i11 = icmp eq ptr %i.z, null
  br i1 %.not.i.i11, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.g
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !42
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(128) %i.z) #29, !inline_history !83
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.g, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit14

bb.i:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #29
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.af, %bb.j ], [ %i.ae, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.ag = load ptr, ptr %4, align 8, !tbaa !81    ; 3 uses
  %.not.i.i12 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i12, label %_ZN7testing7MessageD2Ev.exit14, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i13

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i13: ; preds = %bb.k
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !42
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(128) %i.ag) #29, !inline_history !83
  br label %_ZN7testing7MessageD2Ev.exit14

_ZN7testing7MessageD2Ev.exit14:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i13, %bb.k, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.ad, %bb.h ], [ %.pn, %bb.k ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i13 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #29
  br label %bb.n

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %_ZN7testing7MessageD2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !80 ; 4 uses
  %.not.i.i15 = icmp eq ptr %i.al, null
  br i1 %.not.i.i15, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !18
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 32) #33
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.l, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void

bb.n:                                             ; preds = %_ZN7testing7MessageD2Ev.exit14, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit10
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit14 ], [ %i.o, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit10 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN33locale_test_localized_double_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v12::detail::format_arg_store.568", align 16 ; 4 uses
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.568", align 16 ; 4 uses
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.568", align 16 ; 4 uses
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.568", align 16 ; 4 uses
  %5 = alloca %"struct.fmt::v12::detail::format_arg_store.568", align 16 ; 4 uses
  %6 = alloca %"struct.fmt::v12::detail::format_arg_store.568", align 16 ; 4 uses
  %7 = alloca %"struct.fmt::v12::detail::format_arg_store.568", align 16 ; 4 uses
  %8 = alloca %"struct.fmt::v12::detail::format_arg_store.568", align 16 ; 4 uses
  %9 = alloca %"class.std::locale", align 8       ; 14 uses
  %10 = alloca %"class.std::locale", align 8      ; 7 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.testing::Message", align 8 ; 7 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %21 = alloca %"class.testing::Message", align 8 ; 7 uses
  %22 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %23 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %25 = alloca %"class.testing::Message", align 8 ; 7 uses
  %26 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %27 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %29 = alloca %"class.testing::Message", align 8 ; 7 uses
  %30 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %31 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %33 = alloca %"class.testing::Message", align 8 ; 7 uses
  %34 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %35 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %37 = alloca %"class.testing::Message", align 8 ; 7 uses
  %38 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %39 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %41 = alloca %"class.testing::Message", align 8 ; 7 uses
  %42 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #29
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32
          to label %bb.b unwind label %bb.f       ; 8 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVNSt7__cxx118numpunctIcEE, i64 16), ptr %i.a, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !618
  invoke void @_ZNSt7__cxx118numpunctIcE22_M_initialize_numpunctEP15__locale_struct(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef null)
          to label %bb.c unwind label %.body

.body:                                            ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6locale5facetD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(24) %i.a) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #33
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV8numpunctIcE, i64 16), ptr %i.a, align 8, !tbaa !42
  invoke void @_ZNSt6localeC2I8numpunctIcEEERKS_PT_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %i.a)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29, !noalias !622
  store double 1.230000e+00, ptr %1, align 16, !tbaa !18, !noalias !622
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_10locale_refENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr nonnull %9, ptr nonnull @.str.214, i64 4, i64 10, ptr nonnull %1)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29, !noalias !622
  %i.d = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19, !noalias !625
  %i.f = icmp eq i64 %i.e, 4
  br i1 %i.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i: ; preds = %bb.e
  %i.g = load ptr, ptr %12, align 8, !tbaa !16, !noalias !625
  %i.h = load i32, ptr %i.g, align 1
  %i.i = icmp ne i32 %i.h, 858930993
  %i.j = zext i1 %i.i to i32
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i, %bb.e
  invoke void @_ZN7testing8internal18CmpHelperEQFailureINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11, ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.213, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 1 dereferenceable(5) @.str.215)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.i

_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i
  %i.l = load ptr, ptr %12, align 8, !tbaa !16    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit
  %i.o = load i64, ptr %i.m, align 8, !tbaa !18
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %i.q = load i8, ptr %11, align 8, !tbaa !69, !range !78, !noundef !79
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.s, label %bb.j

bb.f:                                             ; preds = %bb.c, %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.s, %bb.f ], [ %i.c, %.body ]
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.ee

bb.h:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %12, align 8, !tbaa !16    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %bb.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !18
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %bb.i, %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119
  %.pn53.pn = phi { ptr, i32 } [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119 ], [ %i.t, %bb.h ], [ %i.u, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %bb.w

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !80 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !16
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.l, %bb.k
  %i.ad = phi ptr [ %i.ac, %bb.l ], [ @.str, %bb.k ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 334, ptr noundef %i.ad)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  %i.ae = load ptr, ptr %13, align 8, !tbaa !81   ; 3 uses
  %.not.i.i122 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i122, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.n
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !42
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(128) %i.ae) #29, !inline_history !83
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.n, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %bb.s

bb.o:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit125

bb.p:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #29
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn56 = phi { ptr, i32 } [ %i.ak, %bb.q ], [ %i.aj, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  %i.al = load ptr, ptr %13, align 8, !tbaa !81   ; 3 uses
  %.not.i.i123 = icmp eq ptr %i.al, null
  br i1 %.not.i.i123, label %_ZN7testing7MessageD2Ev.exit125, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124: ; preds = %bb.r
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !42
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(128) %i.al) #29, !inline_history !83
  br label %_ZN7testing7MessageD2Ev.exit125

_ZN7testing7MessageD2Ev.exit125:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124, %bb.r, %bb.o
  %.pn56.pn = phi { ptr, i32 } [ %i.ai, %bb.o ], [ %.pn56, %bb.r ], [ %.pn56, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #29
  br label %bb.w

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN7testing7MessageD2Ev.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !80 ; 4 uses
  %.not.i.i126 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i126, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.au = load i64, ptr %i.as, align 8, !tbaa !18
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 32) #33
  br label %bb.u

bb.u:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29, !noalias !630
  store double 1.230000e+00, ptr %2, align 16, !tbaa !18, !noalias !630
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_10locale_refENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr nonnull %9, ptr nonnull @.str.218, i64 5, i64 10, ptr nonnull %2)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
end_hunk_0
begin_hunk_1_@_ZN33locale_test_localized_double_Test8TestBodyEv:bb.a
  call void %i.nk(ptr noundef nonnull align 8 dereferenceable(128) %i.nh) #29, !inline_history !83
  br label %_ZN7testing7MessageD2Ev.exit299

_ZN7testing7MessageD2Ev.exit299:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i298, %bb.dz, %bb.dw
  %.pn105.pn = phi { ptr, i32 } [ %i.ne, %bb.dw ], [ %.pn105, %bb.dz ], [ %.pn105, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i298 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %39) #29
  br label %bb.ec

bb.ea:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288, %_ZN7testing7MessageD2Ev.exit296
  %i.nl = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !80 ; 4 uses
  %.not.i.i300 = icmp eq ptr %i.nm, null
  br i1 %.not.i.i300, label %_ZN7testing15AssertionResultD2Ev.exit304, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !16 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nm, i64 16 ; 2 uses
  %i.np = icmp eq ptr %i.nn, %i.no
  br i1 %i.np, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i302, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i301: ; preds = %bb.eb
  %i.nq = load i64, ptr %i.no, align 8, !tbaa !18
  %i.nr = add i64 %i.nq, 1
  call void @_ZdlPvm(ptr noundef %i.nn, i64 noundef %i.nr) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i302

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i302: ; preds = %bb.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i301
  call void @_ZdlPvm(ptr noundef nonnull %i.nm, i64 noundef 32) #33
  br label %_ZN7testing15AssertionResultD2Ev.exit304

_ZN7testing15AssertionResultD2Ev.exit304:         ; preds = %bb.ea, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i302
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #29
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  ret void

bb.ec:                                            ; preds = %_ZN7testing7MessageD2Ev.exit299, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291
  %.pn105.pn.pn = phi { ptr, i32 } [ %.pn105.pn, %_ZN7testing7MessageD2Ev.exit299 ], [ %.pn102.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #29
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.do, %bb.cy, %bb.ci, %bb.bs, %bb.bc, %bb.am, %bb.w
  %.pn105.pn.pn.pn = phi { ptr, i32 } [ %.pn105.pn.pn, %bb.ec ], [ %.pn98.pn.pn, %bb.do ], [ %.pn91.pn.pn, %bb.cy ], [ %.pn84.pn.pn, %bb.ci ], [ %.pn77.pn.pn, %bb.bs ], [ %.pn70.pn.pn, %bb.bc ], [ %.pn63.pn.pn, %bb.am ], [ %.pn56.pn.pn, %bb.w ]
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #29
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.g
  %.pn105.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn105.pn.pn.pn, %bb.ed ], [ %.pn, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  resume { ptr, i32 } %.pn105.pn.pn.pn.pn
}

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6localeC2I8numpunctIcEEERKS_PT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #32 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !686
  invoke void @_ZNSt6locale5_ImplC1ERKS0_m(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 noundef 1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !686
  invoke void @_ZNSt6locale5_Impl16_M_install_facetEPKNS_2idEPKNS_5facetE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull @_ZNSt7__cxx118numpunctIcE2idE, ptr noundef %2)
          to label %bb.f unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #33
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  %i.f = tail call ptr @__cxa_begin_catch(ptr %i.e) #29 ; 0 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !686
  tail call void @_ZNSt6locale5_Impl19_M_remove_referenceEv(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #29
  invoke void @__cxa_rethrow() #30
          to label %bb.k unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !686
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !687  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !692  ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #33
  %.pre = load ptr, ptr %0, align 8, !tbaa !686
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %.pre8 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !687
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = phi ptr [ %.pre8, %bb.g ], [ %i.k, %bb.f ]
  store ptr null, ptr %i.n, align 8, !tbaa !692
  ret void

bb.i:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.c, %bb.c ]
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #34
  unreachable

bb.k:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN23locale_test_format_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.fmt::v12::detail::iterator_buffer.569", align 8 ; 6 uses
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.572", align 16 ; 4 uses
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.141", align 16 ; 4 uses
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.141", align 16 ; 4 uses
  %5 = alloca %"struct.fmt::v12::detail::format_arg_store.141", align 16 ; 4 uses
  %6 = alloca %"struct.fmt::v12::detail::format_arg_store.141", align 16 ; 4 uses
  %7 = alloca %"struct.fmt::v12::detail::format_arg_store.141", align 16 ; 4 uses
  %8 = alloca %"struct.fmt::v12::detail::format_arg_store.141", align 16 ; 4 uses
  %9 = alloca %"struct.fmt::v12::detail::format_arg_store.141", align 16 ; 4 uses
  %10 = alloca %"struct.fmt::v12::detail::format_arg_store.141", align 16 ; 4 uses
  %11 = alloca %"class.std::locale", align 8      ; 11 uses
  %12 = alloca %"class.std::locale", align 8      ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.std::locale", align 8      ; 7 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %22 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %24 = alloca %"class.testing::Message", align 8 ; 7 uses
  %25 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %26 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %28 = alloca %"class.testing::Message", align 8 ; 7 uses
  %29 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %30 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %32 = alloca %"struct.fmt::v12::detail::format_arg_store.141", align 16 ; 5 uses
  %33 = alloca %"class.testing::Message", align 8 ; 7 uses
  %34 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %36 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %37 = alloca %"class.testing::Message", align 8 ; 7 uses
  %38 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %39 = alloca %"class.std::locale", align 8      ; 7 uses
  %40 = alloca %"class.std::locale", align 8      ; 7 uses
  %41 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %43 = alloca %"class.testing::Message", align 8 ; 7 uses
  %44 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %45 = alloca %"class.std::locale", align 8      ; 8 uses
  %46 = alloca %"class.std::locale", align 8      ; 7 uses
  %47 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %49 = alloca %"class.testing::Message", align 8 ; 7 uses
  %50 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %51 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %53 = alloca %"class.testing::Message", align 8 ; 7 uses
  %54 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %55 = alloca %"class.std::locale", align 8      ; 7 uses
  %56 = alloca %"class.std::locale", align 8      ; 7 uses
  %57 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %59 = alloca %"class.testing::Message", align 8 ; 7 uses
  %60 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #29
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32
          to label %bb.b unwind label %bb.f       ; 8 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVNSt7__cxx118numpunctIcEE, i64 16), ptr %i.a, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !618
  invoke void @_ZNSt7__cxx118numpunctIcE22_M_initialize_numpunctEP15__locale_struct(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef null)
          to label %bb.c unwind label %.body

.body:                                            ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6locale5facetD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(24) %i.a) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #33
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV8numpunctIcE, i64 16), ptr %i.a, align 8, !tbaa !42
  invoke void @_ZNSt6localeC2I8numpunctIcEEERKS_PT_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %i.a)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29, !noalias !693
  store i32 1234567, ptr %4, align 16, !tbaa !18, !noalias !693
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_10locale_refENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr nonnull %15, ptr nonnull @.str.214, i64 4, i64 1, ptr nonnull %4)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29, !noalias !693
  %i.d = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19, !noalias !696
  %i.f = icmp eq i64 %i.e, 7
  br i1 %i.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i: ; preds = %bb.e
  %i.g = load ptr, ptr %14, align 8, !tbaa !16, !noalias !696 ; 2 uses
  %i.h = load i32, ptr %i.g, align 1
  %i.i = xor i32 %i.h, 875770417
  %i.j = getelementptr i8, ptr %i.g, i64 3
  %i.k = load i32, ptr %i.j, align 1
  %i.l = xor i32 %i.k, 926299444
  %i.m = or i32 %i.i, %i.l
  %i.n = icmp ne i32 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13)
          to label %_ZN7testing8internal8EqHelper7CompareIA8_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i, %bb.e
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA8_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.241, ptr noundef nonnull @.str.242, ptr noundef nonnull align 1 dereferenceable(8) @.str.243, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %_ZN7testing8internal8EqHelper7CompareIA8_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.i

_ZN7testing8internal8EqHelper7CompareIA8_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i
  %i.q = load ptr, ptr %14, align 8, !tbaa !16    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal8EqHelper7CompareIA8_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit
  %i.t = load i64, ptr %i.r, align 8, !tbaa !18
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal8EqHelper7CompareIA8_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  %i.v = load i8, ptr %13, align 8, !tbaa !69, !range !78, !noundef !79
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.s, label %bb.j

bb.f:                                             ; preds = %bb.c, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.x, %bb.f ], [ %i.c, %.body ]
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %bb.gc

bb.h:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %14, align 8, !tbaa !16   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %bb.i
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !18
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162: ; preds = %bb.i, %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160
  %.pn71.pn = phi { ptr, i32 } [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160 ], [ %i.y, %bb.h ], [ %i.z, %bb.i ]
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br label %bb.w

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !80 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !16
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.l, %bb.k
  %i.ai = phi ptr [ %i.ah, %bb.l ], [ @.str, %bb.k ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 346, ptr noundef %i.ai)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  %i.aj = load ptr, ptr %16, align 8, !tbaa !81   ; 3 uses
  %.not.i.i163 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i163, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.n
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !42
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(128) %i.aj) #29, !inline_history !83
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.n, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %bb.s

bb.o:                                             ; preds = %bb.j
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit166

bb.p:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #29
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn74 = phi { ptr, i32 } [ %i.ap, %bb.q ], [ %i.ao, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  %i.aq = load ptr, ptr %16, align 8, !tbaa !81   ; 3 uses
  %.not.i.i164 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i164, label %_ZN7testing7MessageD2Ev.exit166, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165: ; preds = %bb.r
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !42
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(128) %i.aq) #29, !inline_history !83
  br label %_ZN7testing7MessageD2Ev.exit166

_ZN7testing7MessageD2Ev.exit166:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165, %bb.r, %bb.o
  %.pn74.pn = phi { ptr, i32 } [ %i.an, %bb.o ], [ %.pn74, %bb.r ], [ %.pn74, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #29
  br label %bb.w

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN7testing7MessageD2Ev.exit
  %i.au = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !80 ; 4 uses
  %.not.i.i167 = icmp eq ptr %i.av, null
  br i1 %.not.i.i167, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !18
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 32) #33
  br label %bb.u
end_hunk_1
begin_hunk_2_@_ZN23locale_test_format_Test8TestBodyEv:bb.a
  %.not.i.i264 = icmp eq ptr %i.ih, null
  br i1 %.not.i.i264, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !16 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 16 ; 2 uses
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i266, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i265

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i265: ; preds = %bb.cf
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !18
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.im) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i266

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i266: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i265
  call void @_ZdlPvm(ptr noundef nonnull %i.ih, i64 noundef 32) #33
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ce, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i266
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #29
  %i.in = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 6 uses
  store ptr %i.in, ptr %35, align 8, !tbaa !10
  %i.io = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  store i64 0, ptr %i.io, align 8, !tbaa !19
  store i8 0, ptr %i.in, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i32 1234567, ptr %3, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ip, i8 0, i64 16, i1 false)
  store ptr @_ZN3fmt3v126detail16container_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4growERNS1_6bufferIcEEm, ptr %i.iq, align 8, !tbaa !730, !alias.scope !732
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %35, ptr %i.ir, align 8, !tbaa !80, !alias.scope !732
  invoke void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull @.str.214, i64 4, i64 1, ptr nonnull %3, ptr nonnull %11)
          to label %bb.ch unwind label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #29
  %i.is = load i64, ptr %i.io, align 8, !tbaa !19, !noalias !735
  %i.it = icmp eq i64 %i.is, 9
  br i1 %i.it, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i271, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i270

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i271: ; preds = %bb.ch
  %i.iu = load ptr, ptr %35, align 8, !tbaa !16, !noalias !735 ; 2 uses
  %i.iv = load i64, ptr %i.iu, align 1
  %i.iw = xor i64 %i.iv, 3906167014476119601
  %i.ix = getelementptr i8, ptr %i.iu, i64 8
  %i.iy = load i8, ptr %i.ix, align 1
  %i.iz = zext i8 %i.iy to i64
  %i.ja = xor i64 %i.iz, 55
  %i.jb = or i64 %i.iw, %i.ja
  %i.jc = icmp ne i64 %i.jb, 0
  %i.jd = zext i1 %i.jc to i32
  %i.je = icmp eq i32 %i.jd, 0
  br i1 %i.je, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i273, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i270

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i273: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i271
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %36)
          to label %_ZN7testing8internal8EqHelper7CompareIA10_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit276 unwind label %bb.ck

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i270: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i271, %bb.ch
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA10_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %36, ptr noundef nonnull @.str.244, ptr noundef nonnull @.str.254, ptr noundef nonnull align 1 dereferenceable(10) @.str.246, ptr noundef nonnull align 8 dereferenceable(32) %35)
          to label %_ZN7testing8internal8EqHelper7CompareIA10_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit276 unwind label %bb.ck

_ZN7testing8internal8EqHelper7CompareIA10_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit276: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i273, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i270
  %i.jf = load i8, ptr %36, align 8, !tbaa !69, !range !78, !noundef !79
  %i.jg = trunc nuw i8 %i.jf to i1
  br i1 %i.jg, label %bb.cu, label %bb.cl

bb.ci:                                            ; preds = %_ZN7testing7MessageD2Ev.exit263, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255
  %.pn102.pn.pn = phi { ptr, i32 } [ %.pn102.pn, %_ZN7testing7MessageD2Ev.exit263 ], [ %.pn99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #29
  br label %bb.gb

bb.cj:                                            ; preds = %bb.cg
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

bb.ck:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i270, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i273
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cl:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA10_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit276
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.cm unwind label %bb.cq

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #29
  %i.jj = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !80 ; 2 uses
  %.not.i.i277 = icmp eq ptr %i.jk, null
  br i1 %.not.i.i277, label %_ZNK7testing15AssertionResult15failure_messageEv.exit278, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !16
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit278

_ZNK7testing15AssertionResult15failure_messageEv.exit278: ; preds = %bb.cn, %bb.cm
  %i.jm = phi ptr [ %i.jl, %bb.cn ], [ @.str, %bb.cm ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %38, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 354, ptr noundef %i.jm)
          to label %bb.co unwind label %bb.cr

bb.co:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit278
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.cp unwind label %bb.cs

bb.cp:                                            ; preds = %bb.co
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %38) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #29
  %i.jn = load ptr, ptr %37, align 8, !tbaa !81   ; 3 uses
  %.not.i.i279 = icmp eq ptr %i.jn, null
  br i1 %.not.i.i279, label %_ZN7testing7MessageD2Ev.exit281, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i280

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i280: ; preds = %bb.cp
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !42
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8
  call void %i.jq(ptr noundef nonnull align 8 dereferenceable(128) %i.jn) #29, !inline_history !83
  br label %_ZN7testing7MessageD2Ev.exit281

_ZN7testing7MessageD2Ev.exit281:                  ; preds = %bb.cp, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i280
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #29
  br label %bb.cu

bb.cq:                                            ; preds = %bb.cl
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit284

bb.cr:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit278
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cs:                                            ; preds = %bb.co
  %i.jt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %38) #29
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.pn106 = phi { ptr, i32 } [ %i.jt, %bb.cs ], [ %i.js, %bb.cr ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #29
  %i.ju = load ptr, ptr %37, align 8, !tbaa !81   ; 3 uses
  %.not.i.i282 = icmp eq ptr %i.ju, null
  br i1 %.not.i.i282, label %_ZN7testing7MessageD2Ev.exit284, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i283

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i283: ; preds = %bb.ct
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !42
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8
  call void %i.jx(ptr noundef nonnull align 8 dereferenceable(128) %i.ju) #29, !inline_history !83
  br label %_ZN7testing7MessageD2Ev.exit284

_ZN7testing7MessageD2Ev.exit284:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i283, %bb.ct, %bb.cq
  %.pn106.pn = phi { ptr, i32 } [ %i.jr, %bb.cq ], [ %.pn106, %bb.ct ], [ %.pn106, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i283 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %36) #29
  br label %bb.da

bb.cu:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA10_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit276, %_ZN7testing7MessageD2Ev.exit281
  %i.jy = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !80 ; 4 uses
  %.not.i.i285 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i285, label %_ZN7testing15AssertionResultD2Ev.exit289, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !16 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 16 ; 2 uses
  %i.kc = icmp eq ptr %i.ka, %i.kb
  br i1 %i.kc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i287, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i286

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i286: ; preds = %bb.cv
  %i.kd = load i64, ptr %i.kb, align 8, !tbaa !18
  %i.ke = add i64 %i.kd, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.ke) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i287

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i287: ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i286
  call void @_ZdlPvm(ptr noundef nonnull %i.jz, i64 noundef 32) #33
  br label %_ZN7testing15AssertionResultD2Ev.exit289

_ZN7testing15AssertionResultD2Ev.exit289:         ; preds = %bb.cu, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i287
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #29
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %40) #29
  %i.kf = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32
          to label %bb.cw unwind label %bb.db     ; 8 uses

bb.cw:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit289
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.kf, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVNSt7__cxx118numpunctIcEE, i64 16), ptr %i.kf, align 8, !tbaa !42
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  store ptr null, ptr %i.kg, align 8, !tbaa !618
  invoke void @_ZNSt7__cxx118numpunctIcE22_M_initialize_numpunctEP15__locale_struct(ptr noundef nonnull align 8 dereferenceable(24) %i.kf, ptr noundef null)
          to label %bb.cx unwind label %.body290

.body290:                                         ; preds = %bb.cw
  %i.kh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6locale5facetD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(24) %i.kf) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.kf, i64 noundef 24) #33
  br label %bb.dc

bb.cx:                                            ; preds = %bb.cw
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV11no_groupingIcE, i64 16), ptr %i.kf, align 8, !tbaa !42
  invoke void @_ZNSt6localeC2I11no_groupingIcEEERKS_PT_(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %i.kf)
          to label %bb.cy unwind label %bb.db

bb.cy:                                            ; preds = %bb.cx
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29, !noalias !740
  store i32 1234567, ptr %8, align 16, !tbaa !18, !noalias !740
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_10locale_refENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %42, ptr nonnull %39, ptr nonnull @.str.214, i64 4, i64 1, ptr nonnull %8)
          to label %bb.cz unwind label %bb.dd

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29, !noalias !740
  %i.ki = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !19, !noalias !743
  %i.kk = icmp eq i64 %i.kj, 7
  br i1 %i.kk, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i293, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i292

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i293: ; preds = %bb.cz
  %i.kl = load ptr, ptr %42, align 8, !tbaa !16, !noalias !743 ; 2 uses
  %i.km = load i32, ptr %i.kl, align 1
  %i.kn = xor i32 %i.km, 875770417
  %i.ko = getelementptr i8, ptr %i.kl, i64 3
  %i.kp = load i32, ptr %i.ko, align 1
  %i.kq = xor i32 %i.kp, 926299444
  %i.kr = or i32 %i.kn, %i.kq
  %i.ks = icmp ne i32 %i.kr, 0
  %i.kt = zext i1 %i.ks to i32
  %i.ku = icmp eq i32 %i.kt, 0
  br i1 %i.ku, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i295, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i292

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i295: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i293
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %41)
          to label %_ZN7testing8internal8EqHelper7CompareIA8_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit298 unwind label %bb.de

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i292: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i293, %bb.cz
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA8_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %41, ptr noundef nonnull @.str.241, ptr noundef nonnull @.str.255, ptr noundef nonnull align 1 dereferenceable(8) @.str.243, ptr noundef nonnull align 8 dereferenceable(32) %42)
          to label %_ZN7testing8internal8EqHelper7CompareIA8_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit298 unwind label %bb.de

_ZN7testing8internal8EqHelper7CompareIA8_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit298: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i295, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i292
  %i.kv = load ptr, ptr %42, align 8, !tbaa !16   ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.kx = icmp eq ptr %i.kv, %i.kw
  br i1 %i.kx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299: ; preds = %_ZN7testing8internal8EqHelper7CompareIA8_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit298
  %i.ky = load i64, ptr %i.kw, align 8, !tbaa !18
  %i.kz = add i64 %i.ky, 1
  call void @_ZdlPvm(ptr noundef %i.kv, i64 noundef %i.kz) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301: ; preds = %_ZN7testing8internal8EqHelper7CompareIA8_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit298, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #29
  %i.la = load i8, ptr %41, align 8, !tbaa !69, !range !78, !noundef !79
  %i.lb = trunc nuw i8 %i.la to i1
  br i1 %i.lb, label %bb.do, label %bb.df

bb.da:                                            ; preds = %_ZN7testing7MessageD2Ev.exit284, %bb.ck
  %.pn106.pn.pn = phi { ptr, i32 } [ %.pn106.pn, %_ZN7testing7MessageD2Ev.exit284 ], [ %i.ji, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #29
  br label %bb.ga

bb.db:                                            ; preds = %bb.cx, %_ZN7testing15AssertionResultD2Ev.exit289
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.dc:                                            ; preds = %.body290, %bb.db
  %.pn110 = phi { ptr, i32 } [ %i.lc, %bb.db ], [ %i.kh, %.body290 ]
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #29
  br label %bb.fz

bb.dd:                                            ; preds = %bb.cy
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304

bb.de:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i292, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i295
  %i.le = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lf = load ptr, ptr %42, align 8, !tbaa !16   ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.lh = icmp eq ptr %i.lf, %i.lg
  br i1 %i.lh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302: ; preds = %bb.de
  %i.li = load i64, ptr %i.lg, align 8, !tbaa !18
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.lj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304: ; preds = %bb.de, %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302
  %.pn112.pn = phi { ptr, i32 } [ %i.le, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302 ], [ %i.ld, %bb.dd ], [ %i.le, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #29
  br label %bb.du

bb.df:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %43)
          to label %bb.dg unwind label %bb.dk

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #29
  %i.lk = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !80 ; 2 uses
  %.not.i.i305 = icmp eq ptr %i.ll, null
  br i1 %.not.i.i305, label %_ZNK7testing15AssertionResult15failure_messageEv.exit306, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !16
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit306

_ZNK7testing15AssertionResult15failure_messageEv.exit306: ; preds = %bb.dh, %bb.dg
  %i.ln = phi ptr [ %i.lm, %bb.dh ], [ @.str, %bb.dg ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %44, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 357, ptr noundef %i.ln)
          to label %bb.di unwind label %bb.dl

bb.di:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit306
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef nonnull align 8 dereferenceable(8) %43)
          to label %bb.dj unwind label %bb.dm

bb.dj:                                            ; preds = %bb.di
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %44) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #29
  %i.lo = load ptr, ptr %43, align 8, !tbaa !81   ; 3 uses
  %.not.i.i307 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i307, label %_ZN7testing7MessageD2Ev.exit309, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i308

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i308: ; preds = %bb.dj
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !42
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.lr = load ptr, ptr %i.lq, align 8
  call void %i.lr(ptr noundef nonnull align 8 dereferenceable(128) %i.lo) #29, !inline_history !83
  br label %_ZN7testing7MessageD2Ev.exit309

_ZN7testing7MessageD2Ev.exit309:                  ; preds = %bb.dj, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i308
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #29
  br label %bb.do

bb.dk:                                            ; preds = %bb.df
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit312

bb.dl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit306
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.dm:                                            ; preds = %bb.di
  %i.lu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %44) #29
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.pn115 = phi { ptr, i32 } [ %i.lu, %bb.dm ], [ %i.lt, %bb.dl ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #29
  %i.lv = load ptr, ptr %43, align 8, !tbaa !81   ; 3 uses
  %.not.i.i310 = icmp eq ptr %i.lv, null
  br i1 %.not.i.i310, label %_ZN7testing7MessageD2Ev.exit312, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i311

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i311: ; preds = %bb.dn
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !42
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.ly = load ptr, ptr %i.lx, align 8
  call void %i.ly(ptr noundef nonnull align 8 dereferenceable(128) %i.lv) #29, !inline_history !83
  br label %_ZN7testing7MessageD2Ev.exit312

_ZN7testing7MessageD2Ev.exit312:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i311, %bb.dn, %bb.dk
  %.pn115.pn = phi { ptr, i32 } [ %i.ls, %bb.dk ], [ %.pn115, %bb.dn ], [ %.pn115, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i311 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %41) #29
  br label %bb.du

bb.do:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301, %_ZN7testing7MessageD2Ev.exit309
  %i.lz = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !80 ; 4 uses
  %.not.i.i313 = icmp eq ptr %i.ma, null
  br i1 %.not.i.i313, label %_ZN7testing15AssertionResultD2Ev.exit317, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !16 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 16 ; 2 uses
  %i.md = icmp eq ptr %i.mb, %i.mc
  br i1 %i.md, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i315, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i314

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i314: ; preds = %bb.dp
  %i.me = load i64, ptr %i.mc, align 8, !tbaa !18
  %i.mf = add i64 %i.me, 1
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.mf) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i315

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i315: ; preds = %bb.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i314
  call void @_ZdlPvm(ptr noundef nonnull %i.ma, i64 noundef 32) #33
  br label %_ZN7testing15AssertionResultD2Ev.exit317

_ZN7testing15AssertionResultD2Ev.exit317:         ; preds = %bb.do, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i315
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #29
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %46) #29
  %i.mg = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32
          to label %bb.dq unwind label %bb.dv     ; 8 uses

bb.dq:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit317
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.mg, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVNSt7__cxx118numpunctIcEE, i64 16), ptr %i.mg, align 8, !tbaa !42
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  store ptr null, ptr %i.mh, align 8, !tbaa !618
  invoke void @_ZNSt7__cxx118numpunctIcE22_M_initialize_numpunctEP15__locale_struct(ptr noundef nonnull align 8 dereferenceable(24) %i.mg, ptr noundef null)
          to label %bb.dr unwind label %.body318

.body318:                                         ; preds = %bb.dq
  %i.mi = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6locale5facetD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(24) %i.mg) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.mg, i64 noundef 24) #33
  br label %bb.dw

bb.dr:                                            ; preds = %bb.dq
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV16special_groupingIcE, i64 16), ptr %i.mg, align 8, !tbaa !42
  invoke void @_ZNSt6localeC2I16special_groupingIcEEERKS_PT_(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef nonnull %i.mg)
          to label %bb.ds unwind label %bb.dv

bb.ds:                                            ; preds = %bb.dr
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %46) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29, !noalias !748
  store i32 12345678, ptr %9, align 16, !tbaa !18, !noalias !748
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_10locale_refENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %48, ptr nonnull %45, ptr nonnull @.str.214, i64 4, i64 1, ptr nonnull %9)
          to label %bb.dt unwind label %bb.dx

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29, !noalias !748
  %i.mj = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !19, !noalias !751
  %i.ml = icmp eq i64 %i.mk, 11
  br i1 %i.ml, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i321, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i320

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i321: ; preds = %bb.dt
  %i.mm = load ptr, ptr %48, align 8, !tbaa !16, !noalias !751 ; 2 uses
  %i.mn = load i64, ptr %i.mm, align 1
  %i.mo = xor i64 %i.mn, 3185509675876625457
  %i.mp = getelementptr i8, ptr %i.mm, i64 3
  %i.mq = load i64, ptr %i.mp, align 1
  %i.mr = xor i64 %i.mq, 4050765953342123059
  %i.ms = or i64 %i.mo, %i.mr
  %i.mt = icmp ne i64 %i.ms, 0
  %i.mu = zext i1 %i.mt to i32
  %i.mv = icmp eq i32 %i.mu, 0
  br i1 %i.mv, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i323, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i320

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i323: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i321
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %47)
          to label %_ZN7testing8internal8EqHelper7CompareIA12_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.dy

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i320: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i321, %bb.dt
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA12_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %47, ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.257, ptr noundef nonnull align 1 dereferenceable(12) @.str.258, ptr noundef nonnull align 8 dereferenceable(32) %48)
          to label %_ZN7testing8internal8EqHelper7CompareIA12_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.dy

_ZN7testing8internal8EqHelper7CompareIA12_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i323, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i320
  %i.mw = load ptr, ptr %48, align 8, !tbaa !16   ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
  %i.my = icmp eq ptr %i.mw, %i.mx
  br i1 %i.my, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326: ; preds = %_ZN7testing8internal8EqHelper7CompareIA12_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit
  %i.mz = load i64, ptr %i.mx, align 8, !tbaa !18
  %i.na = add i64 %i.mz, 1
  call void @_ZdlPvm(ptr noundef %i.mw, i64 noundef %i.na) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328: ; preds = %_ZN7testing8internal8EqHelper7CompareIA12_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #29
  %i.nb = load i8, ptr %47, align 8, !tbaa !69, !range !78, !noundef !79
  %i.nc = trunc nuw i8 %i.nb to i1
  br i1 %i.nc, label %bb.ei, label %bb.dz

bb.du:                                            ; preds = %_ZN7testing7MessageD2Ev.exit312, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304
  %.pn115.pn.pn = phi { ptr, i32 } [ %.pn115.pn, %_ZN7testing7MessageD2Ev.exit312 ], [ %.pn112.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #29
  br label %bb.fy

bb.dv:                                            ; preds = %bb.dr, %_ZN7testing15AssertionResultD2Ev.exit317
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.dw:                                            ; preds = %.body318, %bb.dv
  %.pn119 = phi { ptr, i32 } [ %i.nd, %bb.dv ], [ %i.mi, %.body318 ]
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %46) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #29
  br label %bb.fx

bb.dx:                                            ; preds = %bb.ds
  %i.ne = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331

bb.dy:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i320, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i323
  %i.nf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ng = load ptr, ptr %48, align 8, !tbaa !16   ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
  %i.ni = icmp eq ptr %i.ng, %i.nh
  br i1 %i.ni, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329: ; preds = %bb.dy
  %i.nj = load i64, ptr %i.nh, align 8, !tbaa !18
  %i.nk = add i64 %i.nj, 1
  call void @_ZdlPvm(ptr noundef %i.ng, i64 noundef %i.nk) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331: ; preds = %bb.dy, %bb.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329
  %.pn121.pn = phi { ptr, i32 } [ %i.nf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329 ], [ %i.ne, %bb.dx ], [ %i.nf, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #29
  br label %bb.em

bb.dz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %49)
          to label %bb.ea unwind label %bb.ee

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #29
  %i.nl = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !80 ; 2 uses
  %.not.i.i332 = icmp eq ptr %i.nm, null
  br i1 %.not.i.i332, label %_ZNK7testing15AssertionResult15failure_messageEv.exit333, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !16
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit333

_ZNK7testing15AssertionResult15failure_messageEv.exit333: ; preds = %bb.eb, %bb.ea
  %i.no = phi ptr [ %i.nn, %bb.eb ], [ @.str, %bb.ea ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %50, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 361, ptr noundef %i.no)
          to label %bb.ec unwind label %bb.ef

bb.ec:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit333
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef nonnull align 8 dereferenceable(8) %49)
          to label %bb.ed unwind label %bb.eg

bb.ed:                                            ; preds = %bb.ec
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %50) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #29
  %i.np = load ptr, ptr %49, align 8, !tbaa !81   ; 3 uses
  %.not.i.i334 = icmp eq ptr %i.np, null
  br i1 %.not.i.i334, label %_ZN7testing7MessageD2Ev.exit336, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i335

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i335: ; preds = %bb.ed
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !42
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.ns = load ptr, ptr %i.nr, align 8
  call void %i.ns(ptr noundef nonnull align 8 dereferenceable(128) %i.np) #29, !inline_history !83
  br label %_ZN7testing7MessageD2Ev.exit336

_ZN7testing7MessageD2Ev.exit336:                  ; preds = %bb.ed, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i335
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #29
  br label %bb.ei

bb.ee:                                            ; preds = %bb.dz
  %i.nt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit339

bb.ef:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit333
  %i.nu = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ec
  %i.nv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %50) #29
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %.pn124 = phi { ptr, i32 } [ %i.nv, %bb.eg ], [ %i.nu, %bb.ef ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #29
  %i.nw = load ptr, ptr %49, align 8, !tbaa !81   ; 3 uses
  %.not.i.i337 = icmp eq ptr %i.nw, null
  br i1 %.not.i.i337, label %_ZN7testing7MessageD2Ev.exit339, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i338

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i338: ; preds = %bb.eh
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !42
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %i.nz = load ptr, ptr %i.ny, align 8
  call void %i.nz(ptr noundef nonnull align 8 dereferenceable(128) %i.nw) #29, !inline_history !83
  br label %_ZN7testing7MessageD2Ev.exit339

_ZN7testing7MessageD2Ev.exit339:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i338, %bb.eh, %bb.ee
  %.pn124.pn = phi { ptr, i32 } [ %i.nt, %bb.ee ], [ %.pn124, %bb.eh ], [ %.pn124, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i338 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %47) #29
  br label %bb.em

bb.ei:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, %_ZN7testing7MessageD2Ev.exit336
  %i.oa = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !80 ; 4 uses
  %.not.i.i340 = icmp eq ptr %i.ob, null
  br i1 %.not.i.i340, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !16 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.ob, i64 16 ; 2 uses
  %i.oe = icmp eq ptr %i.oc, %i.od
  br i1 %i.oe, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i341

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i341: ; preds = %bb.ej
  %i.of = load i64, ptr %i.od, align 8, !tbaa !18
  %i.og = add i64 %i.of, 1
  call void @_ZdlPvm(ptr noundef %i.oc, i64 noundef %i.og) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342: ; preds = %bb.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i341
  call void @_ZdlPvm(ptr noundef nonnull %i.ob, i64 noundef 32) #33
  br label %bb.ek

bb.ek:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i342, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29, !noalias !756
  store i32 12345, ptr %10, align 16, !tbaa !18, !noalias !756
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_10locale_refENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %52, ptr nonnull %45, ptr nonnull @.str.214, i64 4, i64 1, ptr nonnull %10)
          to label %bb.el unwind label %bb.en

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29, !noalias !756
  %i.oh = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !19, !noalias !759
  %i.oj = icmp eq i64 %i.oi, 6
  br i1 %i.oj, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i346, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i345

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i346: ; preds = %bb.el
  %i.ok = load ptr, ptr %52, align 8, !tbaa !16, !noalias !759 ; 2 uses
  %i.ol = load i32, ptr %i.ok, align 1
  %i.om = xor i32 %i.ol, 858534449
  %i.on = getelementptr i8, ptr %i.ok, i64 4
  %i.oo = load i16, ptr %i.on, align 1
  %i.op = zext i16 %i.oo to i32
  %i.oq = xor i32 %i.op, 13620
  %i.or = or i32 %i.om, %i.oq
  %i.os = icmp ne i32 %i.or, 0
  %i.ot = zext i1 %i.os to i32
  %i.ou = icmp eq i32 %i.ot, 0
  br i1 %i.ou, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i348, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i345

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i348: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i346
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %51)
          to label %_ZN7testing8internal8EqHelper7CompareIA7_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.eo

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i345: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i346, %bb.el
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA7_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %51, ptr noundef nonnull @.str.259, ptr noundef nonnull @.str.260, ptr noundef nonnull align 1 dereferenceable(7) @.str.261, ptr noundef nonnull align 8 dereferenceable(32) %52)
          to label %_ZN7testing8internal8EqHelper7CompareIA7_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.eo

_ZN7testing8internal8EqHelper7CompareIA7_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i348, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i345
  %i.ov = load ptr, ptr %52, align 8, !tbaa !16   ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 2 uses
  %i.ox = icmp eq ptr %i.ov, %i.ow
  br i1 %i.ox, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351: ; preds = %_ZN7testing8internal8EqHelper7CompareIA7_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit
  %i.oy = load i64, ptr %i.ow, align 8, !tbaa !18
  %i.oz = add i64 %i.oy, 1
  call void @_ZdlPvm(ptr noundef %i.ov, i64 noundef %i.oz) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353: ; preds = %_ZN7testing8internal8EqHelper7CompareIA7_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #29
  %i.pa = load i8, ptr %51, align 8, !tbaa !69, !range !78, !noundef !79
  %i.pb = trunc nuw i8 %i.pa to i1
  br i1 %i.pb, label %bb.ey, label %bb.ep

bb.em:                                            ; preds = %_ZN7testing7MessageD2Ev.exit339, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331
  %.pn124.pn.pn = phi { ptr, i32 } [ %.pn124.pn, %_ZN7testing7MessageD2Ev.exit339 ], [ %.pn121.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #29
  br label %bb.fw

bb.en:                                            ; preds = %bb.ek
  %i.pc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356

bb.eo:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i345, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i348
  %i.pd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pe = load ptr, ptr %52, align 8, !tbaa !16   ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 2 uses
  %i.pg = icmp eq ptr %i.pe, %i.pf
  br i1 %i.pg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i354

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i354: ; preds = %bb.eo
  %i.ph = load i64, ptr %i.pf, align 8, !tbaa !18
  %i.pi = add i64 %i.ph, 1
  call void @_ZdlPvm(ptr noundef %i.pe, i64 noundef %i.pi) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356: ; preds = %bb.eo, %bb.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i354
  %.pn128.pn = phi { ptr, i32 } [ %i.pd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i354 ], [ %i.pc, %bb.en ], [ %i.pd, %bb.eo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #29
  br label %bb.fe

bb.ep:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %53)
          to label %bb.eq unwind label %bb.eu

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #29
  %i.pj = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !80 ; 2 uses
  %.not.i.i357 = icmp eq ptr %i.pk, null
  br i1 %.not.i.i357, label %_ZNK7testing15AssertionResult15failure_messageEv.exit358, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !16
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit358

_ZNK7testing15AssertionResult15failure_messageEv.exit358: ; preds = %bb.er, %bb.eq
  %i.pm = phi ptr [ %i.pl, %bb.er ], [ @.str, %bb.eq ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %54, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 362, ptr noundef %i.pm)
          to label %bb.es unwind label %bb.ev

bb.es:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit358
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef nonnull align 8 dereferenceable(8) %53)
          to label %bb.et unwind label %bb.ew

bb.et:                                            ; preds = %bb.es
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %54) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #29
  %i.pn = load ptr, ptr %53, align 8, !tbaa !81   ; 3 uses
  %.not.i.i359 = icmp eq ptr %i.pn, null
  br i1 %.not.i.i359, label %_ZN7testing7MessageD2Ev.exit361, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i360

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i360: ; preds = %bb.et
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !42
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 8
  %i.pq = load ptr, ptr %i.pp, align 8
  call void %i.pq(ptr noundef nonnull align 8 dereferenceable(128) %i.pn) #29, !inline_history !83
  br label %_ZN7testing7MessageD2Ev.exit361

_ZN7testing7MessageD2Ev.exit361:                  ; preds = %bb.et, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i360
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #29
  br label %bb.ey

bb.eu:                                            ; preds = %bb.ep
  %i.pr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit364

bb.ev:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit358
  %i.ps = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.ew:                                            ; preds = %bb.es
  %i.pt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %54) #29
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %.pn131 = phi { ptr, i32 } [ %i.pt, %bb.ew ], [ %i.ps, %bb.ev ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #29
  %i.pu = load ptr, ptr %53, align 8, !tbaa !81   ; 3 uses
  %.not.i.i362 = icmp eq ptr %i.pu, null
  br i1 %.not.i.i362, label %_ZN7testing7MessageD2Ev.exit364, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i363

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i363: ; preds = %bb.ex
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !42
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %i.px = load ptr, ptr %i.pw, align 8
  call void %i.px(ptr noundef nonnull align 8 dereferenceable(128) %i.pu) #29, !inline_history !83
  br label %_ZN7testing7MessageD2Ev.exit364

_ZN7testing7MessageD2Ev.exit364:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i363, %bb.ex, %bb.eu
  %.pn131.pn = phi { ptr, i32 } [ %i.pr, %bb.eu ], [ %.pn131, %bb.ex ], [ %.pn131, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i363 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %51) #29
  br label %bb.fe

bb.ey:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353, %_ZN7testing7MessageD2Ev.exit361
  %i.py = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !80 ; 4 uses
  %.not.i.i365 = icmp eq ptr %i.pz, null
  br i1 %.not.i.i365, label %_ZN7testing15AssertionResultD2Ev.exit369, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !16 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pz, i64 16 ; 2 uses
  %i.qc = icmp eq ptr %i.qa, %i.qb
  br i1 %i.qc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i367, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i366

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i366: ; preds = %bb.ez
  %i.qd = load i64, ptr %i.qb, align 8, !tbaa !18
  %i.qe = add i64 %i.qd, 1
  call void @_ZdlPvm(ptr noundef %i.qa, i64 noundef %i.qe) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i367

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i367: ; preds = %bb.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i366
  call void @_ZdlPvm(ptr noundef nonnull %i.pz, i64 noundef 32) #33
  br label %_ZN7testing15AssertionResultD2Ev.exit369

_ZN7testing15AssertionResultD2Ev.exit369:         ; preds = %bb.ey, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i367
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #29
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %56) #29
  %i.qf = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32
          to label %bb.fa unwind label %bb.ff     ; 8 uses

bb.fa:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit369
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.qf, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVNSt7__cxx118numpunctIcEE, i64 16), ptr %i.qf, align 8, !tbaa !42
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 16
  store ptr null, ptr %i.qg, align 8, !tbaa !618
  invoke void @_ZNSt7__cxx118numpunctIcE22_M_initialize_numpunctEP15__locale_struct(ptr noundef nonnull align 8 dereferenceable(24) %i.qf, ptr noundef null)
          to label %bb.fb unwind label %.body370

.body370:                                         ; preds = %bb.fa
  %i.qh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6locale5facetD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(24) %i.qf) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.qf, i64 noundef 24) #33
  br label %bb.fg

bb.fb:                                            ; preds = %bb.fa
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV14small_groupingIcE, i64 16), ptr %i.qf, align 8, !tbaa !42
  invoke void @_ZNSt6localeC2I14small_groupingIcEEERKS_PT_(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef nonnull %i.qf)
          to label %bb.fc unwind label %bb.ff

bb.fc:                                            ; preds = %bb.fb
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %56) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29, !noalias !764
  store i32 -1, ptr %2, align 16, !tbaa !18, !noalias !764
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_10locale_refENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %58, ptr nonnull %55, ptr nonnull @.str.214, i64 4, i64 2, ptr nonnull %2)
          to label %bb.fd unwind label %bb.fh

bb.fd:                                            ; preds = %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29, !noalias !764
  %i.qi = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !19, !noalias !767
  %i.qk = icmp eq i64 %i.qj, 19
  br i1 %i.qk, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i373, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i372

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i373: ; preds = %bb.fd
  %i.ql = load ptr, ptr %58, align 8, !tbaa !16, !noalias !767 ; 2 uses
  %i.qm = load i128, ptr %i.ql, align 1
  %i.qn = xor i128 %i.qm, 58746543454717370012404507718452390964
  %i.qo = getelementptr i8, ptr %i.ql, i64 3
  %i.qp = load i128, ptr %i.qo, align 1
  %i.qq = xor i128 %i.qp, 70678704437290336225249287175274248492
  %i.qr = or i128 %i.qn, %i.qq
  %i.qs = icmp ne i128 %i.qr, 0
  %i.qt = zext i1 %i.qs to i32
  %i.qu = icmp eq i32 %i.qt, 0
  br i1 %i.qu, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i375, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i372

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i375: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i373
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %57)
          to label %_ZN7testing8internal8EqHelper7CompareIA20_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.fi

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i372: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i373, %bb.fd
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA20_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %57, ptr noundef nonnull @.str.262, ptr noundef nonnull @.str.263, ptr noundef nonnull align 1 dereferenceable(20) @.str.264, ptr noundef nonnull align 8 dereferenceable(32) %58)
          to label %_ZN7testing8internal8EqHelper7CompareIA20_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.fi

_ZN7testing8internal8EqHelper7CompareIA20_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i375, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i372
  %i.qv = load ptr, ptr %58, align 8, !tbaa !16   ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 2 uses
  %i.qx = icmp eq ptr %i.qv, %i.qw
  br i1 %i.qx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378: ; preds = %_ZN7testing8internal8EqHelper7CompareIA20_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit
  %i.qy = load i64, ptr %i.qw, align 8, !tbaa !18
  %i.qz = add i64 %i.qy, 1
  call void @_ZdlPvm(ptr noundef %i.qv, i64 noundef %i.qz) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380: ; preds = %_ZN7testing8internal8EqHelper7CompareIA20_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #29
  %i.ra = load i8, ptr %57, align 8, !tbaa !69, !range !78, !noundef !79
  %i.rb = trunc nuw i8 %i.ra to i1
  br i1 %i.rb, label %bb.fs, label %bb.fj

bb.fe:                                            ; preds = %_ZN7testing7MessageD2Ev.exit364, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356
  %.pn131.pn.pn = phi { ptr, i32 } [ %.pn131.pn, %_ZN7testing7MessageD2Ev.exit364 ], [ %.pn128.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #29
  br label %bb.fw

bb.ff:                                            ; preds = %bb.fb, %_ZN7testing15AssertionResultD2Ev.exit369
  %i.rc = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.fg:                                            ; preds = %.body370, %bb.ff
  %.pn135 = phi { ptr, i32 } [ %i.rc, %bb.ff ], [ %i.qh, %.body370 ]
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %56) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #29
  br label %bb.fv

bb.fh:                                            ; preds = %bb.fc
  %i.rd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383

bb.fi:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i372, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i375
  %i.re = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rf = load ptr, ptr %58, align 8, !tbaa !16   ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 2 uses
  %i.rh = icmp eq ptr %i.rf, %i.rg
  br i1 %i.rh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381: ; preds = %bb.fi
  %i.ri = load i64, ptr %i.rg, align 8, !tbaa !18
  %i.rj = add i64 %i.ri, 1
  call void @_ZdlPvm(ptr noundef %i.rf, i64 noundef %i.rj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383: ; preds = %bb.fi, %bb.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381
  %.pn137.pn = phi { ptr, i32 } [ %i.re, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381 ], [ %i.rd, %bb.fh ], [ %i.re, %bb.fi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #29
  br label %bb.fu

bb.fj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %59)
          to label %bb.fk unwind label %bb.fo

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #29
  %i.rk = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !80 ; 2 uses
  %.not.i.i384 = icmp eq ptr %i.rl, null
  br i1 %.not.i.i384, label %_ZNK7testing15AssertionResult15failure_messageEv.exit385, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !16
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit385

_ZNK7testing15AssertionResult15failure_messageEv.exit385: ; preds = %bb.fl, %bb.fk
  %i.rn = phi ptr [ %i.rm, %bb.fl ], [ @.str, %bb.fk ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %60, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 367, ptr noundef %i.rn)
          to label %bb.fm unwind label %bb.fp

bb.fm:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit385
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull align 8 dereferenceable(8) %59)
          to label %bb.fn unwind label %bb.fq

bb.fn:                                            ; preds = %bb.fm
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %60) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #29
  %i.ro = load ptr, ptr %59, align 8, !tbaa !81   ; 3 uses
  %.not.i.i386 = icmp eq ptr %i.ro, null
  br i1 %.not.i.i386, label %_ZN7testing7MessageD2Ev.exit388, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i387

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i387: ; preds = %bb.fn
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !42
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %i.rr = load ptr, ptr %i.rq, align 8
  call void %i.rr(ptr noundef nonnull align 8 dereferenceable(128) %i.ro) #29, !inline_history !83
  br label %_ZN7testing7MessageD2Ev.exit388

_ZN7testing7MessageD2Ev.exit388:                  ; preds = %bb.fn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i387
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #29
  br label %bb.fs

bb.fo:                                            ; preds = %bb.fj
  %i.rs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit391

bb.fp:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit385
  %i.rt = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.fq:                                            ; preds = %bb.fm
  %i.ru = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %60) #29
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %.pn140 = phi { ptr, i32 } [ %i.ru, %bb.fq ], [ %i.rt, %bb.fp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #29
  %i.rv = load ptr, ptr %59, align 8, !tbaa !81   ; 3 uses
  %.not.i.i389 = icmp eq ptr %i.rv, null
  br i1 %.not.i.i389, label %_ZN7testing7MessageD2Ev.exit391, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i390

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i390: ; preds = %bb.fr
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !42
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  %i.ry = load ptr, ptr %i.rx, align 8
  call void %i.ry(ptr noundef nonnull align 8 dereferenceable(128) %i.rv) #29, !inline_history !83
  br label %_ZN7testing7MessageD2Ev.exit391

_ZN7testing7MessageD2Ev.exit391:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i390, %bb.fr, %bb.fo
  %.pn140.pn = phi { ptr, i32 } [ %i.rs, %bb.fo ], [ %.pn140, %bb.fr ], [ %.pn140, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i390 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %57) #29
  br label %bb.fu

bb.fs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380, %_ZN7testing7MessageD2Ev.exit388
  %i.rz = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !80 ; 4 uses
  %.not.i.i392 = icmp eq ptr %i.sa, null
  br i1 %.not.i.i392, label %_ZN7testing15AssertionResultD2Ev.exit396, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !16 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sa, i64 16 ; 2 uses
  %i.sd = icmp eq ptr %i.sb, %i.sc
  br i1 %i.sd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i394, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i393

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i393: ; preds = %bb.ft
  %i.se = load i64, ptr %i.sc, align 8, !tbaa !18
  %i.sf = add i64 %i.se, 1
  call void @_ZdlPvm(ptr noundef %i.sb, i64 noundef %i.sf) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i394

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i394: ; preds = %bb.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i393
  call void @_ZdlPvm(ptr noundef nonnull %i.sa, i64 noundef 32) #33
  br label %_ZN7testing15AssertionResultD2Ev.exit396

end_hunk_2
begin_hunk_3_@_ZNSt6localeC2I11no_groupingIcEEERKS_PT_:bb.a

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !686
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !687  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !692  ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #33
  %.pre = load ptr, ptr %0, align 8, !tbaa !686
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %.pre8 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !687
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = phi ptr [ %.pre8, %bb.g ], [ %i.k, %bb.f ]
  store ptr null, ptr %i.n, align 8, !tbaa !692
  ret void

bb.i:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.c, %bb.c ]
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #34
  unreachable

bb.k:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6localeC2I16special_groupingIcEEERKS_PT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #32 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !686
  invoke void @_ZNSt6locale5_ImplC1ERKS0_m(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 noundef 1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !686
  invoke void @_ZNSt6locale5_Impl16_M_install_facetEPKNS_2idEPKNS_5facetE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull @_ZNSt7__cxx118numpunctIcE2idE, ptr noundef %2)
          to label %bb.f unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #33
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  %i.f = tail call ptr @__cxa_begin_catch(ptr %i.e) #29 ; 0 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !686
  tail call void @_ZNSt6locale5_Impl19_M_remove_referenceEv(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #29
  invoke void @__cxa_rethrow() #30
          to label %bb.k unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !686
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !687  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !692  ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #33
  %.pre = load ptr, ptr %0, align 8, !tbaa !686
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %.pre8 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !687
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = phi ptr [ %.pre8, %bb.g ], [ %i.k, %bb.f ]
  store ptr null, ptr %i.n, align 8, !tbaa !692
  ret void

bb.i:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.c, %bb.c ]
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #34
  unreachable

bb.k:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6localeC2I14small_groupingIcEEERKS_PT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #32 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !686
  invoke void @_ZNSt6locale5_ImplC1ERKS0_m(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 noundef 1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !686
  invoke void @_ZNSt6locale5_Impl16_M_install_facetEPKNS_2idEPKNS_5facetE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull @_ZNSt7__cxx118numpunctIcE2idE, ptr noundef %2)
          to label %bb.f unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #33
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  %i.f = tail call ptr @__cxa_begin_catch(ptr %i.e) #29 ; 0 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !686
  tail call void @_ZNSt6locale5_Impl19_M_remove_referenceEv(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #29
  invoke void @__cxa_rethrow() #30
          to label %bb.k unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !686
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !687  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !692  ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #33
  %.pre = load ptr, ptr %0, align 8, !tbaa !686
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %.pre8 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !687
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = phi ptr [ %.pre8, %bb.g ], [ %i.k, %bb.f ]
  store ptr null, ptr %i.n, align 8, !tbaa !692
  ret void

bb.i:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.c, %bb.c ]
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #34
  unreachable

bb.k:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN37locale_test_format_default_align_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v12::detail::format_arg_store.141", align 16 ; 4 uses
  %2 = alloca %"class.std::locale", align 8       ; 7 uses
  %3 = alloca %"class.std::locale", align 8       ; 7 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #29
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32
          to label %bb.b unwind label %bb.f       ; 8 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVNSt7__cxx118numpunctIcEE, i64 16), ptr %i.a, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !618
  invoke void @_ZNSt7__cxx118numpunctIcE22_M_initialize_numpunctEP15__locale_struct(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef null)
          to label %bb.c unwind label %.body

.body:                                            ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6locale5facetD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(24) %i.a) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #33
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV16special_groupingIcE, i64 16), ptr %i.a, align 8, !tbaa !42
  invoke void @_ZNSt6localeC2I16special_groupingIcEEERKS_PT_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.a)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29, !noalias !775
  store i32 12345, ptr %1, align 16, !tbaa !18, !noalias !775
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_10locale_refENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull %2, ptr nonnull @.str.228, i64 5, i64 1, ptr nonnull %1)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29, !noalias !775
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19, !noalias !778
  %i.f = icmp eq i64 %i.e, 8
  br i1 %i.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i: ; preds = %bb.e
  %i.g = load ptr, ptr %5, align 8, !tbaa !16, !noalias !778
  %i.h = load i64, ptr %i.g, align 1
  %i.i = icmp ne i64 %i.h, 3833745447712792608
  %i.j = zext i1 %i.i to i32
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
          to label %_ZN7testing8internal8EqHelper7CompareIA9_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i, %bb.e
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA9_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.267, ptr noundef nonnull @.str.268, ptr noundef nonnull align 1 dereferenceable(9) @.str.269, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZN7testing8internal8EqHelper7CompareIA9_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.i

_ZN7testing8internal8EqHelper7CompareIA9_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i
  %i.l = load ptr, ptr %5, align 8, !tbaa !16     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal8EqHelper7CompareIA9_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit
  %i.o = load i64, ptr %i.m, align 8, !tbaa !18
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal8EqHelper7CompareIA9_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.q = load i8, ptr %4, align 8, !tbaa !69, !range !78, !noundef !79
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.s, label %bb.j

bb.f:                                             ; preds = %bb.c, %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.s, %bb.f ], [ %i.c, %.body ]
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.v

bb.h:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %5, align 8, !tbaa !16     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !18
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.i, %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  %.pn9.pn = phi { ptr, i32 } [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %i.t, %bb.h ], [ %i.u, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.u

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !80 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !16
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.l, %bb.k
  %i.ad = phi ptr [ %i.ac, %bb.l ], [ @.str, %bb.k ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 372, ptr noundef %i.ad)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.ae = load ptr, ptr %6, align 8, !tbaa !81    ; 3 uses
  %.not.i.i21 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i21, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.n
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !42
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(128) %i.ae) #29, !inline_history !83
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.n, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.s

bb.o:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit24

bb.p:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #29
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn12 = phi { ptr, i32 } [ %i.ak, %bb.q ], [ %i.aj, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.al = load ptr, ptr %6, align 8, !tbaa !81    ; 3 uses
  %.not.i.i22 = icmp eq ptr %i.al, null
  br i1 %.not.i.i22, label %_ZN7testing7MessageD2Ev.exit24, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i23

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i23: ; preds = %bb.r
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !42
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(128) %i.al) #29, !inline_history !83
  br label %_ZN7testing7MessageD2Ev.exit24

_ZN7testing7MessageD2Ev.exit24:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i23, %bb.r, %bb.o
  %.pn12.pn = phi { ptr, i32 } [ %i.ai, %bb.o ], [ %.pn12, %bb.r ], [ %.pn12, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i23 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #29
  br label %bb.u

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN7testing7MessageD2Ev.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !80 ; 4 uses
  %.not.i.i25 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i25, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.au = load i64, ptr %i.as, align 8, !tbaa !18
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 32) #33
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void

bb.u:                                             ; preds = %_ZN7testing7MessageD2Ev.exit24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %.pn12.pn.pn = phi { ptr, i32 } [ %.pn12.pn, %_ZN7testing7MessageD2Ev.exit24 ], [ %.pn9.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #29
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.g
  %.pn12.pn.pn.pn = phi { ptr, i32 } [ %.pn12.pn.pn, %bb.u ], [ %.pn, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn12.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN28locale_test_format_plus_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v12::detail::format_arg_store.141", align 16 ; 4 uses
  %2 = alloca %"class.std::locale", align 8       ; 7 uses
  %3 = alloca %"class.std::locale", align 8       ; 7 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #29
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32
          to label %bb.b unwind label %bb.f       ; 8 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVNSt7__cxx118numpunctIcEE, i64 16), ptr %i.a, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !618
  invoke void @_ZNSt7__cxx118numpunctIcE22_M_initialize_numpunctEP15__locale_struct(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef null)
          to label %bb.c unwind label %.body

.body:                                            ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6locale5facetD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(24) %i.a) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #33
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV16special_groupingIcE, i64 16), ptr %i.a, align 8, !tbaa !42
  invoke void @_ZNSt6localeC2I16special_groupingIcEEERKS_PT_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.a)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29, !noalias !783
  store i32 100, ptr %1, align 16, !tbaa !18, !noalias !783
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_10locale_refENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull %2, ptr nonnull @.str.275, i64 5, i64 1, ptr nonnull %1)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29, !noalias !783
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19, !noalias !786
  %i.f = icmp eq i64 %i.e, 4
  br i1 %i.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i: ; preds = %bb.e
  %i.g = load ptr, ptr %5, align 8, !tbaa !16, !noalias !786
  %i.h = load i32, ptr %i.g, align 1
  %i.i = icmp ne i32 %i.h, 808464683
  %i.j = zext i1 %i.i to i32
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
          to label %_ZN7testing8internal8EqHelper7CompareIA5_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i, %bb.e
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA5_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.272, ptr noundef nonnull @.str.273, ptr noundef nonnull align 1 dereferenceable(5) @.str.274, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZN7testing8internal8EqHelper7CompareIA5_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.i

_ZN7testing8internal8EqHelper7CompareIA5_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i
  %i.l = load ptr, ptr %5, align 8, !tbaa !16     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal8EqHelper7CompareIA5_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit
  %i.o = load i64, ptr %i.m, align 8, !tbaa !18
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal8EqHelper7CompareIA5_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.q = load i8, ptr %4, align 8, !tbaa !69, !range !78, !noundef !79
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.s, label %bb.j

bb.f:                                             ; preds = %bb.c, %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.s, %bb.f ], [ %i.c, %.body ]
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.v

bb.h:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %5, align 8, !tbaa !16     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !18
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.i, %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  %.pn9.pn = phi { ptr, i32 } [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %i.t, %bb.h ], [ %i.u, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.u

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !80 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !16
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.l, %bb.k
  %i.ad = phi ptr [ %i.ac, %bb.l ], [ @.str, %bb.k ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 377, ptr noundef %i.ad)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.ae = load ptr, ptr %6, align 8, !tbaa !81    ; 3 uses
  %.not.i.i21 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i21, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.n
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !42
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(128) %i.ae) #29, !inline_history !83
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.n, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.s

bb.o:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit24

bb.p:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #29
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn12 = phi { ptr, i32 } [ %i.ak, %bb.q ], [ %i.aj, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.al = load ptr, ptr %6, align 8, !tbaa !81    ; 3 uses
  %.not.i.i22 = icmp eq ptr %i.al, null
  br i1 %.not.i.i22, label %_ZN7testing7MessageD2Ev.exit24, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i23

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i23: ; preds = %bb.r
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !42
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(128) %i.al) #29, !inline_history !83
  br label %_ZN7testing7MessageD2Ev.exit24

_ZN7testing7MessageD2Ev.exit24:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i23, %bb.r, %bb.o
  %.pn12.pn = phi { ptr, i32 } [ %i.ai, %bb.o ], [ %.pn12, %bb.r ], [ %.pn12, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i23 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #29
  br label %bb.u

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN7testing7MessageD2Ev.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !80 ; 4 uses
  %.not.i.i25 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i25, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.au = load i64, ptr %i.as, align 8, !tbaa !18
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 32) #33
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void

bb.u:                                             ; preds = %_ZN7testing7MessageD2Ev.exit24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %.pn12.pn.pn = phi { ptr, i32 } [ %.pn12.pn, %_ZN7testing7MessageD2Ev.exit24 ], [ %.pn9.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #29
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.g
  %.pn12.pn.pn.pn = phi { ptr, i32 } [ %.pn12.pn.pn, %bb.u ], [ %.pn, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn12.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN24locale_test_wformat_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.fmt::v12::basic_string_view", align 8 ; 5 uses
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.573", align 16 ; 4 uses
  %3 = alloca %"class.fmt::v12::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 4 uses
  %5 = alloca %"class.fmt::v12::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 4 uses
  %7 = alloca %"class.fmt::v12::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 4 uses
  %9 = alloca %"class.fmt::v12::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 4 uses
  %11 = alloca %"class.fmt::v12::basic_string_view", align 8 ; 5 uses
  %12 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 4 uses
  %13 = alloca %"class.std::locale", align 8      ; 8 uses
  %14 = alloca %"class.std::locale", align 8      ; 7 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string.6", align 8 ; 11 uses
  %17 = alloca %"class.std::locale", align 8      ; 7 uses
  %18 = alloca %"class.testing::Message", align 8 ; 7 uses
  %19 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %20 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string.6", align 8 ; 11 uses
  %22 = alloca %"class.testing::Message", align 8 ; 7 uses
  %23 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %24 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string.6", align 8 ; 11 uses
  %26 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 5 uses
  %27 = alloca %"class.testing::Message", align 8 ; 7 uses
  %28 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %29 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %30 = alloca %"class.std::__cxx11::basic_string.6", align 8 ; 11 uses
  %31 = alloca %"class.std::locale", align 8      ; 7 uses
  %32 = alloca %"class.testing::Message", align 8 ; 7 uses
  %33 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %34 = alloca %"class.std::locale", align 8      ; 7 uses
  %35 = alloca %"class.std::locale", align 8      ; 7 uses
  %36 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %37 = alloca %"class.std::__cxx11::basic_string.6", align 8 ; 11 uses
  %38 = alloca %"class.testing::Message", align 8 ; 7 uses
  %39 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %40 = alloca %"class.std::locale", align 8      ; 7 uses
  %41 = alloca %"class.std::locale", align 8      ; 7 uses
  %42 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %43 = alloca %"class.std::__cxx11::basic_string.6", align 8 ; 11 uses
  %44 = alloca %"class.testing::Message", align 8 ; 7 uses
  %45 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %46 = alloca %"class.std::locale", align 8      ; 7 uses
  %47 = alloca %"class.std::locale", align 8      ; 7 uses
  %48 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %49 = alloca %"class.std::__cxx11::basic_string.6", align 8 ; 11 uses
  %50 = alloca %"class.testing::Message", align 8 ; 7 uses
  %51 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #29
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32
          to label %bb.b unwind label %bb.f       ; 8 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVNSt7__cxx118numpunctIwEE, i64 16), ptr %i.a, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !791
  invoke void @_ZNSt7__cxx118numpunctIwE22_M_initialize_numpunctEP15__locale_struct(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef null)
          to label %bb.c unwind label %.body

.body:                                            ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6locale5facetD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(24) %i.a) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #33
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV8numpunctIwE, i64 16), ptr %i.a, align 8, !tbaa !42
  invoke void @_ZNSt6localeC2I8numpunctIwEEERKS_PT_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull %i.a)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29, !noalias !794
  store ptr @.str.281, ptr %11, align 8, !noalias !794
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 4, ptr %i.d, align 8, !noalias !794
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29, !noalias !794
  store i128 1234567, ptr %12, align 16, !noalias !794
  invoke void @_ZN3fmt3v127vformatINS0_17basic_string_viewIwEEwTnNSt9enable_ifIXsr6detail14is_exotic_charIT0_EE5valueEiE4typeELi0EEENSt7__cxx1112basic_stringIS5_St11char_traitsIS5_ESaIS5_EEENS0_10locale_refERKT_NS0_17basic_format_argsINSt11conditionalIXsr3std7is_sameIS5_cEE5valueENS0_7contextENS0_15generic_contextINS0_14basic_appenderIS5_EES5_EEE4typeEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.6") align 8 %16, ptr nonnull %17, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 1, ptr nonnull %12)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29, !noalias !794
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29, !noalias !794
  %i.e = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !59, !noalias !797
  %i.g = icmp eq i64 %i.f, 7
  br i1 %i.g, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i: ; preds = %bb.e
  %i.h = load ptr, ptr %16, align 8, !tbaa !68, !noalias !797
  %i.i = call i32 @wmemcmp(ptr noundef %i.h, ptr noundef nonnull align 4 dereferenceable(32) @.str.280, i64 noundef 7) #31, !noalias !797
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i: ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15)
          to label %_ZN7testing8internal8EqHelper7CompareIA8_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.i

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i: ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i, %bb.e
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA8_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15, ptr noundef nonnull @.str.278, ptr noundef nonnull @.str.279, ptr noundef nonnull align 4 dereferenceable(32) @.str.280, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %_ZN7testing8internal8EqHelper7CompareIA8_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.i

_ZN7testing8internal8EqHelper7CompareIA8_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit: ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i, %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i
  %i.k = load ptr, ptr %16, align 8, !tbaa !68    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal8EqHelper7CompareIA8_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit
  %i.n = load i64, ptr %i.l, align 8, !tbaa !18
  %i.o = shl i64 %i.n, 2
  %i.p = add i64 %i.o, 4
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.p) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %_ZN7testing8internal8EqHelper7CompareIA8_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  %i.q = load i8, ptr %15, align 8, !tbaa !69, !range !78, !noundef !79
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.s, label %bb.j

bb.f:                                             ; preds = %bb.c, %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.s, %bb.f ], [ %i.c, %.body ]
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br label %bb.eh

bb.h:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit125

bb.i:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i, %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %16, align 8, !tbaa !68    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i123: ; preds = %bb.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !18
  %i.z = shl i64 %i.y, 2
  %i.aa = add i64 %i.z, 4
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.aa) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit125: ; preds = %bb.i, %bb.h, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i123
  %.pn58.pn = phi { ptr, i32 } [ %i.u, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i123 ], [ %i.t, %bb.h ], [ %i.u, %bb.i ]
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %bb.w

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #29
  %i.ab = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !80 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !16
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.l, %bb.k
  %i.ae = phi ptr [ %i.ad, %bb.l ], [ @.str, %bb.k ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 382, ptr noundef %i.ae)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  %i.af = load ptr, ptr %18, align 8, !tbaa !81   ; 3 uses
  %.not.i.i126 = icmp eq ptr %i.af, null
  br i1 %.not.i.i126, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.n
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !42
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(128) %i.af) #29, !inline_history !83
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.n, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %bb.s

bb.o:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit129

bb.p:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #29
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn61 = phi { ptr, i32 } [ %i.al, %bb.q ], [ %i.ak, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  %i.am = load ptr, ptr %18, align 8, !tbaa !81   ; 3 uses
  %.not.i.i127 = icmp eq ptr %i.am, null
  br i1 %.not.i.i127, label %_ZN7testing7MessageD2Ev.exit129, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128: ; preds = %bb.r
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !42
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(128) %i.am) #29, !inline_history !83
  br label %_ZN7testing7MessageD2Ev.exit129

_ZN7testing7MessageD2Ev.exit129:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128, %bb.r, %bb.o
  %.pn61.pn = phi { ptr, i32 } [ %i.aj, %bb.o ], [ %.pn61, %bb.r ], [ %.pn61, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #29
  br label %bb.w

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %_ZN7testing7MessageD2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !80 ; 4 uses
  %.not.i.i130 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i130, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.av = load i64, ptr %i.at, align 8, !tbaa !18
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef 32) #33
  br label %bb.u
end_hunk_3
begin_hunk_4_@_ZN24locale_test_wformat_Test8TestBodyEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29, !noalias !815
  store i128 1234567, ptr %8, align 16, !noalias !815
  invoke void @_ZN3fmt3v127vformatINS0_17basic_string_viewIwEEwTnNSt9enable_ifIXsr6detail14is_exotic_charIT0_EE5valueEiE4typeELi0EEENSt7__cxx1112basic_stringIS5_St11char_traitsIS5_ESaIS5_EEENS0_10locale_refERKT_NS0_17basic_format_argsINSt11conditionalIXsr3std7is_sameIS5_cEE5valueENS0_7contextENS0_15generic_contextINS0_14basic_appenderIS5_EES5_EEE4typeEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.6") align 8 %30, ptr nonnull %31, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 1, ptr nonnull %8)
          to label %bb.bb unwind label %bb.be

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29, !noalias !815
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29, !noalias !815
  %i.ej = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !59, !noalias !818
  %i.el = icmp eq i64 %i.ek, 7
  br i1 %i.el, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i189, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i188

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i189: ; preds = %bb.bb
  %i.em = load ptr, ptr %30, align 8, !tbaa !68, !noalias !818
  %i.en = call i32 @wmemcmp(ptr noundef %i.em, ptr noundef nonnull align 4 dereferenceable(32) @.str.280, i64 noundef 7) #31, !noalias !818
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i190, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i188

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i190: ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i189
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %29)
          to label %_ZN7testing8internal8EqHelper7CompareIA8_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit193 unwind label %bb.bf

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i188: ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i189, %bb.bb
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA8_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %29, ptr noundef nonnull @.str.278, ptr noundef nonnull @.str.286, ptr noundef nonnull align 4 dereferenceable(32) @.str.280, ptr noundef nonnull align 8 dereferenceable(32) %30)
          to label %_ZN7testing8internal8EqHelper7CompareIA8_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit193 unwind label %bb.bf

_ZN7testing8internal8EqHelper7CompareIA8_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit193: ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i190, %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i188
  %i.ep = load ptr, ptr %30, align 8, !tbaa !68   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit196, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i194

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i194: ; preds = %_ZN7testing8internal8EqHelper7CompareIA8_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit193
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !18
  %i.et = shl i64 %i.es, 2
  %i.eu = add i64 %i.et, 4
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.eu) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit196

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit196: ; preds = %_ZN7testing8internal8EqHelper7CompareIA8_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit193, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i194
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %31) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #29
  %i.ev = load i8, ptr %29, align 8, !tbaa !69, !range !78, !noundef !79
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.bq, label %bb.bh

bb.bc:                                            ; preds = %_ZN7testing7MessageD2Ev.exit178, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit170
  %.pn75.pn.pn = phi { ptr, i32 } [ %.pn75.pn, %_ZN7testing7MessageD2Ev.exit178 ], [ %.pn72, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit170 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  br label %bb.eg

bb.bd:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit183
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.be:                                            ; preds = %bb.ba
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit199

bb.bf:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i188, %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i190
  %i.ez = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fa = load ptr, ptr %30, align 8, !tbaa !68   ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit199, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i197

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i197: ; preds = %bb.bf
  %i.fd = load i64, ptr %i.fb, align 8, !tbaa !18
  %i.fe = shl i64 %i.fd, 2
  %i.ff = add i64 %i.fe, 4
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.ff) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit199

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit199: ; preds = %bb.bf, %bb.be, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i197
  %.pn79.pn = phi { ptr, i32 } [ %i.ez, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i197 ], [ %i.ey, %bb.be ], [ %i.ez, %bb.bf ]
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %31) #29
  br label %bb.bg

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit199, %bb.bd
  %.pn79.pn.pn = phi { ptr, i32 } [ %.pn79.pn, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit199 ], [ %i.ex, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #29
  br label %bb.bw

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit196
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.bi unwind label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #29
  %i.fg = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !80 ; 2 uses
  %.not.i.i200 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i200, label %_ZNK7testing15AssertionResult15failure_messageEv.exit201, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !16
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit201

_ZNK7testing15AssertionResult15failure_messageEv.exit201: ; preds = %bb.bj, %bb.bi
  %i.fj = phi ptr [ %i.fi, %bb.bj ], [ @.str, %bb.bi ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %33, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 387, ptr noundef %i.fj)
          to label %bb.bk unwind label %bb.bn

bb.bk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit201
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.bl unwind label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #29
  %i.fk = load ptr, ptr %32, align 8, !tbaa !81   ; 3 uses
  %.not.i.i202 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i202, label %_ZN7testing7MessageD2Ev.exit204, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i203

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i203: ; preds = %bb.bl
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !42
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(128) %i.fk) #29, !inline_history !83
  br label %_ZN7testing7MessageD2Ev.exit204

_ZN7testing7MessageD2Ev.exit204:                  ; preds = %bb.bl, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i203
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #29
  br label %bb.bq

bb.bm:                                            ; preds = %bb.bh
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit207

bb.bn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit201
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bk
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #29
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn83 = phi { ptr, i32 } [ %i.fq, %bb.bo ], [ %i.fp, %bb.bn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #29
  %i.fr = load ptr, ptr %32, align 8, !tbaa !81   ; 3 uses
  %.not.i.i205 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i205, label %_ZN7testing7MessageD2Ev.exit207, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i206

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i206: ; preds = %bb.bp
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !42
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(128) %i.fr) #29, !inline_history !83
  br label %_ZN7testing7MessageD2Ev.exit207

_ZN7testing7MessageD2Ev.exit207:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i206, %bb.bp, %bb.bm
  %.pn83.pn = phi { ptr, i32 } [ %i.fo, %bb.bm ], [ %.pn83, %bb.bp ], [ %.pn83, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i206 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %29) #29
  br label %bb.bw

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit196, %_ZN7testing7MessageD2Ev.exit204
  %i.fv = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !80 ; 4 uses
  %.not.i.i208 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i208, label %_ZN7testing15AssertionResultD2Ev.exit212, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !16 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 16 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i209: ; preds = %bb.br
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !18
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gb) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i210

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i210: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i209
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef 32) #33
  br label %_ZN7testing15AssertionResultD2Ev.exit212

_ZN7testing15AssertionResultD2Ev.exit212:         ; preds = %bb.bq, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i210
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #29
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %35) #29
  %i.gc = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32
          to label %bb.bs unwind label %bb.bx     ; 8 uses

bb.bs:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit212
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.gc, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVNSt7__cxx118numpunctIwEE, i64 16), ptr %i.gc, align 8, !tbaa !42
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store ptr null, ptr %i.gd, align 8, !tbaa !791
  invoke void @_ZNSt7__cxx118numpunctIwE22_M_initialize_numpunctEP15__locale_struct(ptr noundef nonnull align 8 dereferenceable(24) %i.gc, ptr noundef null)
          to label %bb.bt unwind label %.body213

.body213:                                         ; preds = %bb.bs
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6locale5facetD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(24) %i.gc) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef 24) #33
  br label %bb.by

bb.bt:                                            ; preds = %bb.bs
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV11no_groupingIwE, i64 16), ptr %i.gc, align 8, !tbaa !42
  invoke void @_ZNSt6localeC2I11no_groupingIwEEERKS_PT_(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull %i.gc)
          to label %bb.bu unwind label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29, !noalias !823
  store ptr @.str.281, ptr %5, align 8, !noalias !823
  %i.gf = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 4, ptr %i.gf, align 8, !noalias !823
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29, !noalias !823
  store i128 1234567, ptr %6, align 16, !noalias !823
  invoke void @_ZN3fmt3v127vformatINS0_17basic_string_viewIwEEwTnNSt9enable_ifIXsr6detail14is_exotic_charIT0_EE5valueEiE4typeELi0EEENSt7__cxx1112basic_stringIS5_St11char_traitsIS5_ESaIS5_EEENS0_10locale_refERKT_NS0_17basic_format_argsINSt11conditionalIXsr3std7is_sameIS5_cEE5valueENS0_7contextENS0_15generic_contextINS0_14basic_appenderIS5_EES5_EEE4typeEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.6") align 8 %37, ptr nonnull %34, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 1, ptr nonnull %6)
          to label %bb.bv unwind label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29, !noalias !823
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29, !noalias !823
  %i.gg = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !59, !noalias !826
  %i.gi = icmp eq i64 %i.gh, 7
  br i1 %i.gi, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i220, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i219

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i220: ; preds = %bb.bv
  %i.gj = load ptr, ptr %37, align 8, !tbaa !68, !noalias !826
  %i.gk = call i32 @wmemcmp(ptr noundef %i.gj, ptr noundef nonnull align 4 dereferenceable(32) @.str.280, i64 noundef 7) #31, !noalias !826
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i221, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i219

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i221: ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i220
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %36)
          to label %_ZN7testing8internal8EqHelper7CompareIA8_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit224 unwind label %bb.ca

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i219: ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i220, %bb.bv
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA8_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %36, ptr noundef nonnull @.str.278, ptr noundef nonnull @.str.288, ptr noundef nonnull align 4 dereferenceable(32) @.str.280, ptr noundef nonnull align 8 dereferenceable(32) %37)
          to label %_ZN7testing8internal8EqHelper7CompareIA8_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit224 unwind label %bb.ca

_ZN7testing8internal8EqHelper7CompareIA8_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit224: ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i221, %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i219
  %i.gm = load ptr, ptr %37, align 8, !tbaa !68   ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  %i.go = icmp eq ptr %i.gm, %i.gn
  br i1 %i.go, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit227, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i225

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i225: ; preds = %_ZN7testing8internal8EqHelper7CompareIA8_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit224
  %i.gp = load i64, ptr %i.gn, align 8, !tbaa !18
  %i.gq = shl i64 %i.gp, 2
  %i.gr = add i64 %i.gq, 4
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gr) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit227

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit227: ; preds = %_ZN7testing8internal8EqHelper7CompareIA8_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit224, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i225
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #29
  %i.gs = load i8, ptr %36, align 8, !tbaa !69, !range !78, !noundef !79
  %i.gt = trunc nuw i8 %i.gs to i1
  br i1 %i.gt, label %bb.ck, label %bb.cb

bb.bw:                                            ; preds = %_ZN7testing7MessageD2Ev.exit207, %bb.bg
  %.pn83.pn.pn = phi { ptr, i32 } [ %.pn83.pn, %_ZN7testing7MessageD2Ev.exit207 ], [ %.pn79.pn.pn, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29
  br label %bb.eg

bb.bx:                                            ; preds = %bb.bt, %_ZN7testing15AssertionResultD2Ev.exit212
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.by:                                            ; preds = %.body213, %bb.bx
  %.pn87 = phi { ptr, i32 } [ %i.gu, %bb.bx ], [ %i.ge, %.body213 ]
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #29
  br label %bb.ef

bb.bz:                                            ; preds = %bb.bu
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit230

bb.ca:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i219, %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i221
  %i.gw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gx = load ptr, ptr %37, align 8, !tbaa !68   ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  %i.gz = icmp eq ptr %i.gx, %i.gy
  br i1 %i.gz, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit230, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i228

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i228: ; preds = %bb.ca
  %i.ha = load i64, ptr %i.gy, align 8, !tbaa !18
  %i.hb = shl i64 %i.ha, 2
  %i.hc = add i64 %i.hb, 4
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.hc) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit230

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit230: ; preds = %bb.ca, %bb.bz, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i228
  %.pn89.pn = phi { ptr, i32 } [ %i.gw, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i228 ], [ %i.gv, %bb.bz ], [ %i.gw, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #29
  br label %bb.cq

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit227
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %38)
          to label %bb.cc unwind label %bb.cg

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #29
  %i.hd = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !80 ; 2 uses
  %.not.i.i231 = icmp eq ptr %i.he, null
  br i1 %.not.i.i231, label %_ZNK7testing15AssertionResult15failure_messageEv.exit232, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !16
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit232

_ZNK7testing15AssertionResult15failure_messageEv.exit232: ; preds = %bb.cd, %bb.cc
  %i.hg = phi ptr [ %i.hf, %bb.cd ], [ @.str, %bb.cc ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %39, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 390, ptr noundef %i.hg)
          to label %bb.ce unwind label %bb.ch

bb.ce:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit232
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull align 8 dereferenceable(8) %38)
          to label %bb.cf unwind label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %39) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #29
  %i.hh = load ptr, ptr %38, align 8, !tbaa !81   ; 3 uses
  %.not.i.i233 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i233, label %_ZN7testing7MessageD2Ev.exit235, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i234

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i234: ; preds = %bb.cf
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !42
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8
  call void %i.hk(ptr noundef nonnull align 8 dereferenceable(128) %i.hh) #29, !inline_history !83
  br label %_ZN7testing7MessageD2Ev.exit235

_ZN7testing7MessageD2Ev.exit235:                  ; preds = %bb.cf, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i234
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #29
  br label %bb.ck

bb.cg:                                            ; preds = %bb.cb
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit238

bb.ch:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit232
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.ci:                                            ; preds = %bb.ce
  %i.hn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %39) #29
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.pn92 = phi { ptr, i32 } [ %i.hn, %bb.ci ], [ %i.hm, %bb.ch ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #29
  %i.ho = load ptr, ptr %38, align 8, !tbaa !81   ; 3 uses
  %.not.i.i236 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i236, label %_ZN7testing7MessageD2Ev.exit238, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i237

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i237: ; preds = %bb.cj
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !42
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8
  call void %i.hr(ptr noundef nonnull align 8 dereferenceable(128) %i.ho) #29, !inline_history !83
  br label %_ZN7testing7MessageD2Ev.exit238

_ZN7testing7MessageD2Ev.exit238:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i237, %bb.cj, %bb.cg
  %.pn92.pn = phi { ptr, i32 } [ %i.hl, %bb.cg ], [ %.pn92, %bb.cj ], [ %.pn92, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i237 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %36) #29
  br label %bb.cq

bb.ck:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit227, %_ZN7testing7MessageD2Ev.exit235
  %i.hs = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !80 ; 4 uses
  %.not.i.i239 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i239, label %_ZN7testing15AssertionResultD2Ev.exit243, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !16 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 16 ; 2 uses
  %i.hw = icmp eq ptr %i.hu, %i.hv
  br i1 %i.hw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i240

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i240: ; preds = %bb.cl
  %i.hx = load i64, ptr %i.hv, align 8, !tbaa !18
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hu, i64 noundef %i.hy) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i241

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i241: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i240
  call void @_ZdlPvm(ptr noundef nonnull %i.ht, i64 noundef 32) #33
  br label %_ZN7testing15AssertionResultD2Ev.exit243

_ZN7testing15AssertionResultD2Ev.exit243:         ; preds = %bb.ck, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i241
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #29
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %41) #29
  %i.hz = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32
          to label %bb.cm unwind label %bb.cr     ; 8 uses

bb.cm:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit243
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.hz, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVNSt7__cxx118numpunctIwEE, i64 16), ptr %i.hz, align 8, !tbaa !42
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  store ptr null, ptr %i.ia, align 8, !tbaa !791
  invoke void @_ZNSt7__cxx118numpunctIwE22_M_initialize_numpunctEP15__locale_struct(ptr noundef nonnull align 8 dereferenceable(24) %i.hz, ptr noundef null)
          to label %bb.cn unwind label %.body244

.body244:                                         ; preds = %bb.cm
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6locale5facetD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(24) %i.hz) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.hz, i64 noundef 24) #33
  br label %bb.cs

bb.cn:                                            ; preds = %bb.cm
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV16special_groupingIwE, i64 16), ptr %i.hz, align 8, !tbaa !42
  invoke void @_ZNSt6localeC2I16special_groupingIwEEERKS_PT_(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull %i.hz)
          to label %bb.co unwind label %bb.cr

bb.co:                                            ; preds = %bb.cn
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %41) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29, !noalias !831
  store ptr @.str.281, ptr %3, align 8, !noalias !831
  %i.ic = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 4, ptr %i.ic, align 8, !noalias !831
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29, !noalias !831
  store i128 12345678, ptr %4, align 16, !noalias !831
  invoke void @_ZN3fmt3v127vformatINS0_17basic_string_viewIwEEwTnNSt9enable_ifIXsr6detail14is_exotic_charIT0_EE5valueEiE4typeELi0EEENSt7__cxx1112basic_stringIS5_St11char_traitsIS5_ESaIS5_EEENS0_10locale_refERKT_NS0_17basic_format_argsINSt11conditionalIXsr3std7is_sameIS5_cEE5valueENS0_7contextENS0_15generic_contextINS0_14basic_appenderIS5_EES5_EEE4typeEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.6") align 8 %43, ptr nonnull %40, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 1, ptr nonnull %4)
          to label %bb.cp unwind label %bb.ct

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29, !noalias !831
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29, !noalias !831
  %i.id = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !59, !noalias !834
  %i.if = icmp eq i64 %i.ie, 11
  br i1 %i.if, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i251, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i250

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i251: ; preds = %bb.cp
  %i.ig = load ptr, ptr %43, align 8, !tbaa !68, !noalias !834
  %i.ih = call i32 @wmemcmp(ptr noundef %i.ig, ptr noundef nonnull align 4 dereferenceable(48) @.str.291, i64 noundef 11) #31, !noalias !834
  %i.ii = icmp eq i32 %i.ih, 0
  br i1 %i.ii, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i252, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i250

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i252: ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i251
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %42)
          to label %_ZN7testing8internal8EqHelper7CompareIA12_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.cu

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i250: ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i251, %bb.cp
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA12_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %42, ptr noundef nonnull @.str.289, ptr noundef nonnull @.str.290, ptr noundef nonnull align 4 dereferenceable(48) @.str.291, ptr noundef nonnull align 8 dereferenceable(32) %43)
          to label %_ZN7testing8internal8EqHelper7CompareIA12_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.cu

_ZN7testing8internal8EqHelper7CompareIA12_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit: ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i252, %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i250
  %i.ij = load ptr, ptr %43, align 8, !tbaa !68   ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.il = icmp eq ptr %i.ij, %i.ik
  br i1 %i.il, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit257, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i255

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i255: ; preds = %_ZN7testing8internal8EqHelper7CompareIA12_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit
  %i.im = load i64, ptr %i.ik, align 8, !tbaa !18
  %i.in = shl i64 %i.im, 2
  %i.io = add i64 %i.in, 4
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.io) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit257

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit257: ; preds = %_ZN7testing8internal8EqHelper7CompareIA12_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i255
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #29
  %i.ip = load i8, ptr %42, align 8, !tbaa !69, !range !78, !noundef !79
  %i.iq = trunc nuw i8 %i.ip to i1
  br i1 %i.iq, label %bb.de, label %bb.cv

bb.cq:                                            ; preds = %_ZN7testing7MessageD2Ev.exit238, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit230
  %.pn92.pn.pn = phi { ptr, i32 } [ %.pn92.pn, %_ZN7testing7MessageD2Ev.exit238 ], [ %.pn89.pn, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit230 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #29
  br label %bb.ee

bb.cr:                                            ; preds = %bb.cn, %_ZN7testing15AssertionResultD2Ev.exit243
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cs:                                            ; preds = %.body244, %bb.cr
  %.pn96 = phi { ptr, i32 } [ %i.ir, %bb.cr ], [ %i.ib, %.body244 ]
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %41) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #29
  br label %bb.ed

bb.ct:                                            ; preds = %bb.co
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit260

bb.cu:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i250, %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i252
  %i.it = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iu = load ptr, ptr %43, align 8, !tbaa !68   ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.iw = icmp eq ptr %i.iu, %i.iv
  br i1 %i.iw, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit260, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i258

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i258: ; preds = %bb.cu
  %i.ix = load i64, ptr %i.iv, align 8, !tbaa !18
  %i.iy = shl i64 %i.ix, 2
  %i.iz = add i64 %i.iy, 4
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.iz) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit260

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit260: ; preds = %bb.cu, %bb.ct, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i258
  %.pn98.pn = phi { ptr, i32 } [ %i.it, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i258 ], [ %i.is, %bb.ct ], [ %i.it, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #29
  br label %bb.dk

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit257
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %44)
          to label %bb.cw unwind label %bb.da

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #29
  %i.ja = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !80 ; 2 uses
  %.not.i.i261 = icmp eq ptr %i.jb, null
  br i1 %.not.i.i261, label %_ZNK7testing15AssertionResult15failure_messageEv.exit262, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !16
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit262

_ZNK7testing15AssertionResult15failure_messageEv.exit262: ; preds = %bb.cx, %bb.cw
  %i.jd = phi ptr [ %i.jc, %bb.cx ], [ @.str, %bb.cw ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %45, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 395, ptr noundef %i.jd)
          to label %bb.cy unwind label %bb.db

bb.cy:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit262
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef nonnull align 8 dereferenceable(8) %44)
          to label %bb.cz unwind label %bb.dc

bb.cz:                                            ; preds = %bb.cy
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %45) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #29
  %i.je = load ptr, ptr %44, align 8, !tbaa !81   ; 3 uses
  %.not.i.i263 = icmp eq ptr %i.je, null
  br i1 %.not.i.i263, label %_ZN7testing7MessageD2Ev.exit265, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i264

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i264: ; preds = %bb.cz
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !42
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8
  call void %i.jh(ptr noundef nonnull align 8 dereferenceable(128) %i.je) #29, !inline_history !83
  br label %_ZN7testing7MessageD2Ev.exit265

_ZN7testing7MessageD2Ev.exit265:                  ; preds = %bb.cz, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i264
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #29
  br label %bb.de

bb.da:                                            ; preds = %bb.cv
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit268

bb.db:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit262
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.dc:                                            ; preds = %bb.cy
  %i.jk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %45) #29
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.pn101 = phi { ptr, i32 } [ %i.jk, %bb.dc ], [ %i.jj, %bb.db ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #29
  %i.jl = load ptr, ptr %44, align 8, !tbaa !81   ; 3 uses
  %.not.i.i266 = icmp eq ptr %i.jl, null
  br i1 %.not.i.i266, label %_ZN7testing7MessageD2Ev.exit268, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i267

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i267: ; preds = %bb.dd
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !42
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jo = load ptr, ptr %i.jn, align 8
  call void %i.jo(ptr noundef nonnull align 8 dereferenceable(128) %i.jl) #29, !inline_history !83
  br label %_ZN7testing7MessageD2Ev.exit268

_ZN7testing7MessageD2Ev.exit268:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i267, %bb.dd, %bb.da
  %.pn101.pn = phi { ptr, i32 } [ %i.ji, %bb.da ], [ %.pn101, %bb.dd ], [ %.pn101, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i267 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %42) #29
  br label %bb.dk

bb.de:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit257, %_ZN7testing7MessageD2Ev.exit265
  %i.jp = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !80 ; 4 uses
  %.not.i.i269 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i269, label %_ZN7testing15AssertionResultD2Ev.exit273, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !16 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 16 ; 2 uses
  %i.jt = icmp eq ptr %i.jr, %i.js
  br i1 %i.jt, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i271, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i270

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i270: ; preds = %bb.df
  %i.ju = load i64, ptr %i.js, align 8, !tbaa !18
  %i.jv = add i64 %i.ju, 1
  call void @_ZdlPvm(ptr noundef %i.jr, i64 noundef %i.jv) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i271

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i271: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i270
  call void @_ZdlPvm(ptr noundef nonnull %i.jq, i64 noundef 32) #33
  br label %_ZN7testing15AssertionResultD2Ev.exit273

_ZN7testing15AssertionResultD2Ev.exit273:         ; preds = %bb.de, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i271
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #29
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %47) #29
  %i.jw = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32
          to label %bb.dg unwind label %bb.dl     ; 8 uses

bb.dg:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit273
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.jw, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVNSt7__cxx118numpunctIwEE, i64 16), ptr %i.jw, align 8, !tbaa !42
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  store ptr null, ptr %i.jx, align 8, !tbaa !791
  invoke void @_ZNSt7__cxx118numpunctIwE22_M_initialize_numpunctEP15__locale_struct(ptr noundef nonnull align 8 dereferenceable(24) %i.jw, ptr noundef null)
          to label %bb.dh unwind label %.body274

.body274:                                         ; preds = %bb.dg
  %i.jy = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6locale5facetD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(24) %i.jw) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.jw, i64 noundef 24) #33
  br label %bb.dm

bb.dh:                                            ; preds = %bb.dg
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV14small_groupingIwE, i64 16), ptr %i.jw, align 8, !tbaa !42
  invoke void @_ZNSt6localeC2I14small_groupingIwEEERKS_PT_(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef nonnull %i.jw)
          to label %bb.di unwind label %bb.dl

bb.di:                                            ; preds = %bb.dh
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %47) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29, !noalias !839
  store ptr @.str.281, ptr %1, align 8, !noalias !839
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 4, ptr %i.jz, align 8, !noalias !839
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29, !noalias !839
  store i128 4294967295, ptr %2, align 16, !noalias !839
  invoke void @_ZN3fmt3v127vformatINS0_17basic_string_viewIwEEwTnNSt9enable_ifIXsr6detail14is_exotic_charIT0_EE5valueEiE4typeELi0EEENSt7__cxx1112basic_stringIS5_St11char_traitsIS5_ESaIS5_EEENS0_10locale_refERKT_NS0_17basic_format_argsINSt11conditionalIXsr3std7is_sameIS5_cEE5valueENS0_7contextENS0_15generic_contextINS0_14basic_appenderIS5_EES5_EEE4typeEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.6") align 8 %49, ptr nonnull %46, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 2, ptr nonnull %2)
          to label %bb.dj unwind label %bb.dn

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29, !noalias !839
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29, !noalias !839
  %i.ka = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !59, !noalias !842
  %i.kc = icmp eq i64 %i.kb, 19
  br i1 %i.kc, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i280, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i279

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i280: ; preds = %bb.dj
  %i.kd = load ptr, ptr %49, align 8, !tbaa !68, !noalias !842
  %i.ke = call i32 @wmemcmp(ptr noundef %i.kd, ptr noundef nonnull align 4 dereferenceable(80) @.str.294, i64 noundef 19) #31, !noalias !842
  %i.kf = icmp eq i32 %i.ke, 0
  br i1 %i.kf, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i281, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i279

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i281: ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i280
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %48)
          to label %_ZN7testing8internal8EqHelper7CompareIA20_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.do

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i279: ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i280, %bb.dj
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA20_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %48, ptr noundef nonnull @.str.292, ptr noundef nonnull @.str.293, ptr noundef nonnull align 4 dereferenceable(80) @.str.294, ptr noundef nonnull align 8 dereferenceable(32) %49)
          to label %_ZN7testing8internal8EqHelper7CompareIA20_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.do

_ZN7testing8internal8EqHelper7CompareIA20_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit: ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i281, %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i279
  %i.kg = load ptr, ptr %49, align 8, !tbaa !68   ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 2 uses
  %i.ki = icmp eq ptr %i.kg, %i.kh
  br i1 %i.ki, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit286, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i284

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i284: ; preds = %_ZN7testing8internal8EqHelper7CompareIA20_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit
  %i.kj = load i64, ptr %i.kh, align 8, !tbaa !18
  %i.kk = shl i64 %i.kj, 2
  %i.kl = add i64 %i.kk, 4
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %i.kl) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit286

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit286: ; preds = %_ZN7testing8internal8EqHelper7CompareIA20_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i284
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #29
  %i.km = load i8, ptr %48, align 8, !tbaa !69, !range !78, !noundef !79
  %i.kn = trunc nuw i8 %i.km to i1
  br i1 %i.kn, label %bb.dy, label %bb.dp

bb.dk:                                            ; preds = %_ZN7testing7MessageD2Ev.exit268, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit260
  %.pn101.pn.pn = phi { ptr, i32 } [ %.pn101.pn, %_ZN7testing7MessageD2Ev.exit268 ], [ %.pn98.pn, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit260 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #29
  br label %bb.ec

bb.dl:                                            ; preds = %bb.dh, %_ZN7testing15AssertionResultD2Ev.exit273
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.dm:                                            ; preds = %.body274, %bb.dl
  %.pn105 = phi { ptr, i32 } [ %i.ko, %bb.dl ], [ %i.jy, %.body274 ]
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %47) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #29
  br label %bb.eb

bb.dn:                                            ; preds = %bb.di
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit289

bb.do:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i279, %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i281
  %i.kq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kr = load ptr, ptr %49, align 8, !tbaa !68   ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 2 uses
  %i.kt = icmp eq ptr %i.kr, %i.ks
  br i1 %i.kt, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit289, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i287

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i287: ; preds = %bb.do
  %i.ku = load i64, ptr %i.ks, align 8, !tbaa !18
  %i.kv = shl i64 %i.ku, 2
  %i.kw = add i64 %i.kv, 4
  call void @_ZdlPvm(ptr noundef %i.kr, i64 noundef %i.kw) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit289

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit289: ; preds = %bb.do, %bb.dn, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i287
  %.pn107.pn = phi { ptr, i32 } [ %i.kq, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i287 ], [ %i.kp, %bb.dn ], [ %i.kq, %bb.do ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #29
  br label %bb.ea

bb.dp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit286
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %50)
          to label %bb.dq unwind label %bb.du

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #29
  %i.kx = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !80 ; 2 uses
  %.not.i.i290 = icmp eq ptr %i.ky, null
  br i1 %.not.i.i290, label %_ZNK7testing15AssertionResult15failure_messageEv.exit291, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !16
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit291

_ZNK7testing15AssertionResult15failure_messageEv.exit291: ; preds = %bb.dr, %bb.dq
  %i.la = phi ptr [ %i.kz, %bb.dr ], [ @.str, %bb.dq ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %51, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 400, ptr noundef %i.la)
          to label %bb.ds unwind label %bb.dv

bb.ds:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit291
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %51, ptr noundef nonnull align 8 dereferenceable(8) %50)
          to label %bb.dt unwind label %bb.dw

bb.dt:                                            ; preds = %bb.ds
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %51) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #29
  %i.lb = load ptr, ptr %50, align 8, !tbaa !81   ; 3 uses
  %.not.i.i292 = icmp eq ptr %i.lb, null
  br i1 %.not.i.i292, label %_ZN7testing7MessageD2Ev.exit294, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i293

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i293: ; preds = %bb.dt
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !42
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.le = load ptr, ptr %i.ld, align 8
  call void %i.le(ptr noundef nonnull align 8 dereferenceable(128) %i.lb) #29, !inline_history !83
  br label %_ZN7testing7MessageD2Ev.exit294

_ZN7testing7MessageD2Ev.exit294:                  ; preds = %bb.dt, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i293
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #29
  br label %bb.dy

bb.du:                                            ; preds = %bb.dp
  %i.lf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit297

bb.dv:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit291
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.dw:                                            ; preds = %bb.ds
  %i.lh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %51) #29
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %.pn110 = phi { ptr, i32 } [ %i.lh, %bb.dw ], [ %i.lg, %bb.dv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #29
  %i.li = load ptr, ptr %50, align 8, !tbaa !81   ; 3 uses
  %.not.i.i295 = icmp eq ptr %i.li, null
  br i1 %.not.i.i295, label %_ZN7testing7MessageD2Ev.exit297, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i296

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i296: ; preds = %bb.dx
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !42
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.ll = load ptr, ptr %i.lk, align 8
  call void %i.ll(ptr noundef nonnull align 8 dereferenceable(128) %i.li) #29, !inline_history !83
  br label %_ZN7testing7MessageD2Ev.exit297

_ZN7testing7MessageD2Ev.exit297:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i296, %bb.dx, %bb.du
  %.pn110.pn = phi { ptr, i32 } [ %i.lf, %bb.du ], [ %.pn110, %bb.dx ], [ %.pn110, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i296 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %48) #29
  br label %bb.ea

bb.dy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit286, %_ZN7testing7MessageD2Ev.exit294
  %i.lm = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !80 ; 4 uses
  %.not.i.i298 = icmp eq ptr %i.ln, null
  br i1 %.not.i.i298, label %_ZN7testing15AssertionResultD2Ev.exit302, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !16 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 16 ; 2 uses
  %i.lq = icmp eq ptr %i.lo, %i.lp
  br i1 %i.lq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i300, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i299

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i299: ; preds = %bb.dz
  %i.lr = load i64, ptr %i.lp, align 8, !tbaa !18
  %i.ls = add i64 %i.lr, 1
  call void @_ZdlPvm(ptr noundef %i.lo, i64 noundef %i.ls) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i300

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i300: ; preds = %bb.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i299
  call void @_ZdlPvm(ptr noundef nonnull %i.ln, i64 noundef 32) #33
  br label %_ZN7testing15AssertionResultD2Ev.exit302

end_hunk_4
begin_hunk_5_@_ZNSt6localeC2I11no_groupingIwEEERKS_PT_:bb.a
          to label %bb.i unwind label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !686
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !687  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !692  ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #33
  %.pre = load ptr, ptr %0, align 8, !tbaa !686
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %.pre8 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !687
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = phi ptr [ %.pre8, %bb.g ], [ %i.k, %bb.f ]
  store ptr null, ptr %i.n, align 8, !tbaa !692
  ret void

bb.i:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.c, %bb.c ]
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #34
  unreachable

bb.k:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6localeC2I16special_groupingIwEEERKS_PT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #32 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !686
  invoke void @_ZNSt6locale5_ImplC1ERKS0_m(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 noundef 1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !686
  invoke void @_ZNSt6locale5_Impl16_M_install_facetEPKNS_2idEPKNS_5facetE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull @_ZNSt7__cxx118numpunctIwE2idE, ptr noundef %2)
          to label %bb.f unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #33
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  %i.f = tail call ptr @__cxa_begin_catch(ptr %i.e) #29 ; 0 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !686
  tail call void @_ZNSt6locale5_Impl19_M_remove_referenceEv(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #29
  invoke void @__cxa_rethrow() #30
          to label %bb.k unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !686
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !687  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !692  ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #33
  %.pre = load ptr, ptr %0, align 8, !tbaa !686
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %.pre8 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !687
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = phi ptr [ %.pre8, %bb.g ], [ %i.k, %bb.f ]
  store ptr null, ptr %i.n, align 8, !tbaa !692
  ret void

bb.i:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.c, %bb.c ]
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #34
  unreachable

bb.k:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6localeC2I14small_groupingIwEEERKS_PT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #32 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !686
  invoke void @_ZNSt6locale5_ImplC1ERKS0_m(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 noundef 1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !686
  invoke void @_ZNSt6locale5_Impl16_M_install_facetEPKNS_2idEPKNS_5facetE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull @_ZNSt7__cxx118numpunctIwE2idE, ptr noundef %2)
          to label %bb.f unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #33
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  %i.f = tail call ptr @__cxa_begin_catch(ptr %i.e) #29 ; 0 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !686
  tail call void @_ZNSt6locale5_Impl19_M_remove_referenceEv(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #29
  invoke void @__cxa_rethrow() #30
          to label %bb.k unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !686
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !687  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !692  ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #33
  %.pre = load ptr, ptr %0, align 8, !tbaa !686
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %.pre8 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !687
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = phi ptr [ %.pre8, %bb.g ], [ %i.k, %bb.f ]
  store ptr null, ptr %i.n, align 8, !tbaa !692
  ret void

bb.i:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.c, %bb.c ]
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #34
  unreachable

bb.k:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN30locale_test_int_formatter_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::locale", align 8       ; 7 uses
  %2 = alloca %"class.std::locale", align 8       ; 7 uses
  %3 = alloca %"struct.fmt::v12::formatter", align 8 ; 11 uses
  %4 = alloca %"class.fmt::v12::parse_context", align 8 ; 7 uses
  %5 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  %6 = alloca %"class.fmt::v12::context", align 8 ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #29
  %i.c = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32
          to label %bb.b unwind label %bb.k       ; 8 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVNSt7__cxx118numpunctIcEE, i64 16), ptr %i.c, align 8, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr null, ptr %i.d, align 8, !tbaa !618
  invoke void @_ZNSt7__cxx118numpunctIcE22_M_initialize_numpunctEP15__locale_struct(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef null)
          to label %bb.c unwind label %.body

.body:                                            ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6locale5facetD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(24) %i.c) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 24) #33
  br label %bb.l

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV16special_groupingIcE, i64 16), ptr %i.c, align 8, !tbaa !42
  invoke void @_ZNSt6localeC2I16special_groupingIcEEERKS_PT_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.c)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  store i32 32768, ptr %3, align 8, !tbaa !847
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 32, ptr %i.g, align 4, !tbaa !18
  %scevgep.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.h, align 4, !tbaa !849
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.i, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr @.str.297, ptr %4, align 8, !tbaa !692
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.j, align 8, !tbaa !851
  %i.k = invoke noundef ptr @_ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE(ptr noundef nonnull @.str.297, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.297, i64 1), ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(20) %4, i32 noundef 1)
          to label %bb.e unwind label %bb.m       ; 0 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.n, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.m, align 8, !tbaa !730
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  store ptr %i.o, ptr %5, align 8, !tbaa !772
  store i64 500, ptr %i.l, align 8, !tbaa !773
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  store ptr %5, ptr %6, align 8, !tbaa !854
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store ptr %1, ptr %i.q, align 8, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i32 12345, ptr %i.b, align 4, !tbaa !166
  %i.r = invoke ptr @_ZNK3fmt3v126detail16native_formatterIicLNS1_4typeE1EE6formatINS0_7contextEEEDTcldtfp0_3outEERKiRT_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.f unwind label %bb.n       ; 0 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !856)
  %i.s = load i64, ptr %i.n, align 8, !tbaa !774, !noalias !856 ; 6 uses
  %i.t = icmp ult i64 %i.s, 4611686018427387903
  call void @llvm.assume(i1 %i.t)
  %i.u = load ptr, ptr %5, align 8, !tbaa !772, !noalias !856 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.v, ptr %8, align 8, !tbaa !10, !alias.scope !856
  %i.w = icmp eq ptr %i.u, null
  %i.x = icmp ne i64 %i.s, 0
  %or.cond.i.i = and i1 %i.x, %i.w
  br i1 %or.cond.i.i, label %.noexc.i, label %bb.g

.noexc.i:                                         ; preds = %bb.f
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.359) #30
          to label %.noexc22 unwind label %bb.o

.noexc22:                                         ; preds = %.noexc.i
  unreachable

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29, !noalias !856
  store i64 %i.s, ptr %i.a, align 8, !tbaa !14, !noalias !856
  %i.y = icmp samesign ugt i64 %i.s, 15
  br i1 %i.y, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.g
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc23 unwind label %bb.o   ; 2 uses

.noexc23:                                         ; preds = %.noexc.i.i
  store ptr %i.z, ptr %8, align 8, !tbaa !16, !alias.scope !856
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !14, !noalias !856
  store i64 %i.aa, ptr %i.v, align 8, !tbaa !18, !alias.scope !856
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc23, %bb.g
  %i.ab = phi ptr [ %i.z, %.noexc23 ], [ %i.v, %bb.g ] ; 2 uses
  switch i64 %i.s, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.ac = load i8, ptr %i.u, align 1, !tbaa !18
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !18
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.u, i64 %i.s, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !14, !noalias !856 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !19, !alias.scope !856
  %i.af = load ptr, ptr %8, align 8, !tbaa !16, !alias.scope !856
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29, !noalias !856
  %i.ah = load i64, ptr %i.ae, align 8, !tbaa !19, !noalias !859
  %i.ai = icmp eq i64 %i.ah, 6
  br i1 %i.ai, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i: ; preds = %bb.j
  %i.aj = load ptr, ptr %8, align 8, !tbaa !16, !noalias !859 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 1
  %i.al = xor i32 %i.ak, 858534449
  %i.am = getelementptr i8, ptr %i.aj, i64 4
  %i.an = load i16, ptr %i.am, align 1
  %i.ao = zext i16 %i.an to i32
  %i.ap = xor i32 %i.ao, 13620
  %i.aq = or i32 %i.al, %i.ap
  %i.ar = icmp ne i32 %i.aq, 0
  %i.as = zext i1 %i.ar to i32
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA7_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.p

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i, %bb.j
  invoke void @_ZN7testing8internal18CmpHelperEQFailureINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA7_cEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7, ptr noundef nonnull @.str.298, ptr noundef nonnull @.str.259, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 1 dereferenceable(7) @.str.261)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA7_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.p

_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA7_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i
  %i.au = load ptr, ptr %8, align 8, !tbaa !16    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.v
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA7_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit
  %i.aw = load i64, ptr %i.v, align 8, !tbaa !18
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA7_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.ay = load i8, ptr %7, align 8, !tbaa !69, !range !78, !noundef !79
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.z, label %bb.q

bb.k:                                             ; preds = %bb.c, %bb.a
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.body, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.k ], [ %i.e, %.body ]
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.ag

bb.m:                                             ; preds = %bb.d
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.n:                                             ; preds = %bb.e
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %bb.ad

bb.o:                                             ; preds = %.noexc.i.i, %.noexc.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.p:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = load ptr, ptr %8, align 8, !tbaa !16    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.v
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.p
  %i.bh = load i64, ptr %i.v, align 8, !tbaa !18
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.o
  %.pn11 = phi { ptr, i32 } [ %i.bd, %bb.o ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.be, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.ac

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_5

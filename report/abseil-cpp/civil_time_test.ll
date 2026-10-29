Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/civil_time_test?download=true
inline.NumInlined: 11821
inline.NumDeleted: 2364
begin_hunk_0_@_ZN12_GLOBAL__N_126CivilTime_RangeLimits_Test8TestBodyEv:bb.a
  %8 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.59", align 8 ; 5 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %12 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.58", align 8 ; 7 uses
  %13 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.58", align 8 ; 5 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %17 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.57", align 8 ; 10 uses
  %18 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.57", align 8 ; 5 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %21 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %22 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.56", align 8 ; 7 uses
  %23 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.56", align 8 ; 5 uses
  %24 = alloca %"class.testing::Message", align 8 ; 7 uses
  %25 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %26 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %27 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time", align 8 ; 7 uses
  %28 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time", align 8 ; 5 uses
  %29 = alloca %"class.testing::Message", align 8 ; 7 uses
  %30 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %31 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %32 = alloca %"class.testing::Message", align 8 ; 7 uses
  %33 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %34 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %35 = alloca %"class.testing::Message", align 8 ; 7 uses
  %36 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %37 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %38 = alloca %"class.testing::Message", align 8 ; 7 uses
  %39 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %40 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %41 = alloca %"class.testing::Message", align 8 ; 7 uses
  %42 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %43 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %44 = alloca %"class.testing::Message", align 8 ; 7 uses
  %45 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %46 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %47 = alloca %"class.testing::Message", align 8 ; 7 uses
  %48 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store i64 9223372036854775807, ptr %2, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 257, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = tail call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 9223372036854775807, i8 noundef signext 12, i64 noundef 31, i64 noundef 0, i8 noundef signext 23, i8 noundef signext 59, i8 noundef signext 59) #20
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 2 uses
  store i64 %i.b, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 257, ptr %i.c, align 8
  %i.d = icmp eq i64 %i.b, 9223372036854775807
  br i1 %i.d, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8year_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.i.i, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8year_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8year_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.i.i: ; preds = %bb.a
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8year_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i: ; preds = %bb.a
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_8year_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1, ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.202, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit: ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8year_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.i.i, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8year_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.e = load i8, ptr %1, align 8, !tbaa !79, !range !80, !noundef !81
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.k, label %bb.b

bb.b:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !82   ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.d, %bb.c
  %i.j = phi ptr [ %i.i, %bb.d ], [ @.str.100, %bb.c ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 156, ptr noundef %i.j)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.k = load ptr, ptr %4, align 8, !tbaa !84     ; 3 uses
  %.not.i.i72 = icmp eq ptr %i.k, null
  br i1 %.not.i.i72, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.f
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !52
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(128) %i.k) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.f, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit75

bb.h:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.q, %bb.i ], [ %i.p, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.r = load ptr, ptr %4, align 8, !tbaa !84     ; 3 uses
  %.not.i.i73 = icmp eq ptr %i.r, null
  br i1 %.not.i.i73, label %_ZN7testing7MessageD2Ev.exit75, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i74

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i74: ; preds = %bb.j
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !52
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(128) %i.r) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit75

_ZN7testing7MessageD2Ev.exit75:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i74, %bb.j, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.o, %bb.g ], [ %.pn, %bb.j ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.ei

bb.k:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !82   ; 4 uses
  %.not.i.i76 = icmp eq ptr %i.w, null
  br i1 %.not.i.i76, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !68   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !69
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.k, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store i64 9223372036854775807, ptr %7, align 8
  %.sroa.2.0..sroa_idx.i.i78 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i40 268, ptr %.sroa.2.0..sroa_idx.i.i78, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.ac = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 9223372036854775807, i8 noundef signext 12, i64 noundef 31, i64 noundef 0, i8 noundef signext 23, i8 noundef signext 59, i8 noundef signext 59) #20 ; 2 uses
  %.fca.1.extract.i.i.i = extractvalue { i64, i64 } %i.ac, 1 ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i = and i64 %.fca.1.extract.i.i.i, 255
  %.sroa.2.8.insert.insert.i.i.i.i = or disjoint i64 %.sroa.2.8.insert.ext.i.i.i.i, 256
  %i.ad = extractvalue { i64, i64 } %i.ac, 0      ; 2 uses
  store i64 %i.ad, ptr %8, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.sroa.2.8.insert.insert.i.i.i.i, ptr %i.ae, align 8
  %i.af = load i64, ptr %7, align 8, !tbaa !96, !noalias !658
  %i.ag = icmp eq i64 %i.af, %i.ad
  %i.ah = trunc i64 %.fca.1.extract.i.i.i to i8
  %i.ai = load <4 x i8>, ptr %.sroa.2.0..sroa_idx.i.i78, align 8
  %i.aj = insertelement <4 x i8> <i8 poison, i8 1, i8 0, i8 0>, i8 %i.ah, i64 0
  %i.ak = icmp eq <4 x i8> %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.am = load i8, ptr %i.al, align 4
  %i.an = icmp eq i8 %i.am, 0
  %i.ao = freeze <4 x i1> %i.ak
  %i.ap = bitcast <4 x i1> %i.ao to i4
  %i.aq = icmp eq i4 %i.ap, -1
  %op.rdx615 = select i1 %i.aq, i1 %i.ag, i1 false
  %op.rdx616 = select i1 %op.rdx615, i1 %i.an, i1 false
  br i1 %op.rdx616, label %bb.m, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_9month_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i

bb.m:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_9month_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_9month_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_9month_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.204, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_9month_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_9month_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit: ; preds = %bb.m, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_9month_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.ar = load i8, ptr %6, align 8, !tbaa !79, !range !80, !noundef !81
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.w, label %bb.n

bb.n:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_9month_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !82 ; 2 uses
  %.not.i.i80 = icmp eq ptr %i.au, null
  br i1 %.not.i.i80, label %_ZNK7testing15AssertionResult15failure_messageEv.exit81, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit81

_ZNK7testing15AssertionResult15failure_messageEv.exit81: ; preds = %bb.p, %bb.o
  %i.aw = phi ptr [ %i.av, %bb.p ], [ @.str.100, %bb.o ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 157, ptr noundef %i.aw)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit81
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.ax = load ptr, ptr %9, align 8, !tbaa !84    ; 3 uses
  %.not.i.i82 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i82, label %_ZN7testing7MessageD2Ev.exit84, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83: ; preds = %bb.r
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !52
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(128) %i.ax) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit84

_ZN7testing7MessageD2Ev.exit84:                   ; preds = %bb.r, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.w

bb.s:                                             ; preds = %bb.n
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit87

bb.t:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit81
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.q
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #20
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn37 = phi { ptr, i32 } [ %i.bd, %bb.u ], [ %i.bc, %bb.t ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.be = load ptr, ptr %9, align 8, !tbaa !84    ; 3 uses
  %.not.i.i85 = icmp eq ptr %i.be, null
  br i1 %.not.i.i85, label %_ZN7testing7MessageD2Ev.exit87, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86: ; preds = %bb.v
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !52
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(128) %i.be) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit87

_ZN7testing7MessageD2Ev.exit87:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86, %bb.v, %bb.s
  %.pn37.pn = phi { ptr, i32 } [ %i.bb, %bb.s ], [ %.pn37, %bb.v ], [ %.pn37, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.ei

bb.w:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_9month_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit, %_ZN7testing7MessageD2Ev.exit84
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !82 ; 4 uses
  %.not.i.i88 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i88, label %_ZN7testing15AssertionResultD2Ev.exit92, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !68 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i89: ; preds = %bb.x
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !69
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i89
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit92

_ZN7testing15AssertionResultD2Ev.exit92:          ; preds = %bb.w, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.bp = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 9223372036854775807, i8 noundef signext 12, i64 noundef 31, i64 noundef 0, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i64 } %i.bp, 1
  %.fca.0.extract.i93 = extractvalue { i64, i64 } %i.bp, 0
  %.sroa.2.8.insert.insert.i.i.i95 = and i64 %.fca.1.extract.i.i, 65535
  store i64 %.fca.0.extract.i93, ptr %12, align 8
  %.sroa.2.0..sroa_idx.i.i96 = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %.sroa.2.0.extract.trunc.i.i97 = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i95 to i40
  store i40 %.sroa.2.0.extract.trunc.i.i97, ptr %.sroa.2.0..sroa_idx.i.i96, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.bq = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 9223372036854775807, i8 noundef signext 12, i64 noundef 31, i64 noundef 0, i8 noundef signext 23, i8 noundef signext 59, i8 noundef signext 59) #20 ; 2 uses
  %.fca.1.extract.i.i.i98 = extractvalue { i64, i64 } %i.bq, 1 ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i.i99 = and i64 %.fca.1.extract.i.i.i98, 65535
  %i.br = extractvalue { i64, i64 } %i.bq, 0      ; 2 uses
  store i64 %i.br, ptr %13, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %.sroa.2.8.insert.insert.i.i.i.i99, ptr %i.bs, align 8
  %i.bt = load i64, ptr %12, align 8, !tbaa !98, !noalias !659
  %i.bu = icmp eq i64 %i.bt, %i.br
  %i.bv = lshr i64 %.fca.1.extract.i.i.i98, 8
  %i.bw = trunc i64 %i.bv to i8
  %i.bx = trunc i64 %.fca.1.extract.i.i.i98 to i8
  %i.by = load i8, ptr %.sroa.2.0..sroa_idx.i.i96, align 8
  %i.bz = icmp eq i8 %i.by, %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 9
  %i.cb = load <4 x i8>, ptr %i.ca, align 1
  %i.cc = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %i.bw, i64 0
  %i.cd = icmp eq <4 x i8> %i.cb, %i.cc
  %i.ce = freeze <4 x i1> %i.cd
  %i.cf = bitcast <4 x i1> %i.ce to i4
  %i.cg = icmp eq i4 %i.cf, -1
  %op.rdx613 = select i1 %i.cg, i1 %i.bu, i1 false
  %op.rdx614 = select i1 %op.rdx613, i1 %i.bz, i1 false
  br i1 %op.rdx614, label %bb.y, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i

bb.y:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit92
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit92
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11, ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.206, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit: ; preds = %bb.y, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.ch = load i8, ptr %11, align 8, !tbaa !79, !range !80, !noundef !81
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.ai, label %bb.z

bb.z:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !82 ; 2 uses
  %.not.i.i101 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i101, label %_ZNK7testing15AssertionResult15failure_messageEv.exit102, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit102

_ZNK7testing15AssertionResult15failure_messageEv.exit102: ; preds = %bb.ab, %bb.aa
  %i.cm = phi ptr [ %i.cl, %bb.ab ], [ @.str.100, %bb.aa ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 158, ptr noundef %i.cm)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit102
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.cn = load ptr, ptr %14, align 8, !tbaa !84   ; 3 uses
  %.not.i.i103 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i103, label %_ZN7testing7MessageD2Ev.exit105, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104: ; preds = %bb.ad
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !52
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(128) %i.cn) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit105

_ZN7testing7MessageD2Ev.exit105:                  ; preds = %bb.ad, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.ai

bb.ae:                                            ; preds = %bb.z
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit108

bb.af:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit102
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ac
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #20
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn40 = phi { ptr, i32 } [ %i.ct, %bb.ag ], [ %i.cs, %bb.af ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.cu = load ptr, ptr %14, align 8, !tbaa !84   ; 3 uses
  %.not.i.i106 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i106, label %_ZN7testing7MessageD2Ev.exit108, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i107

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i107: ; preds = %bb.ah
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !52
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(128) %i.cu) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit108

_ZN7testing7MessageD2Ev.exit108:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i107, %bb.ah, %bb.ae
  %.pn40.pn = phi { ptr, i32 } [ %i.cr, %bb.ae ], [ %.pn40, %bb.ah ], [ %.pn40, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i107 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.ei

bb.ai:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit, %_ZN7testing7MessageD2Ev.exit105
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !82 ; 4 uses
  %.not.i.i109 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i109, label %_ZN7testing15AssertionResultD2Ev.exit113, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !68 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i110: ; preds = %bb.aj
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !69
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i111

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i111: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i110
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit113

_ZN7testing15AssertionResultD2Ev.exit113:         ; preds = %bb.ai, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.df = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 9223372036854775807, i8 noundef signext 12, i64 noundef 31, i64 noundef 0, i8 noundef signext 23, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.fca.1.extract.i.i301 = extractvalue { i64, i64 } %i.df, 1
  %.fca.0.extract.i114 = extractvalue { i64, i64 } %i.df, 0
  %.sroa.2.8.insert.insert.i.i.i116 = and i64 %.fca.1.extract.i.i301, 16777215
  store i64 %.fca.0.extract.i114, ptr %17, align 8
  %.sroa.2.0..sroa_idx.i.i117 = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %.sroa.2.0.extract.trunc.i.i118 = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i116 to i40
  store i40 %.sroa.2.0.extract.trunc.i.i118, ptr %.sroa.2.0..sroa_idx.i.i117, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.dg = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 9223372036854775807, i8 noundef signext 12, i64 noundef 31, i64 noundef 0, i8 noundef signext 23, i8 noundef signext 59, i8 noundef signext 59) #20 ; 2 uses
  %.fca.1.extract.i.i.i119 = extractvalue { i64, i64 } %i.dg, 1 ; 4 uses
  %.sroa.2.8.insert.insert.i.i.i.i120 = and i64 %.fca.1.extract.i.i.i119, 16777215
  %i.dh = extractvalue { i64, i64 } %i.dg, 0      ; 2 uses
  store i64 %i.dh, ptr %18, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %.sroa.2.8.insert.insert.i.i.i.i120, ptr %i.di, align 8
  %i.dj = load i64, ptr %17, align 8, !tbaa !100, !noalias !660
  %i.dk = icmp eq i64 %i.dj, %i.dh
  %i.dl = lshr i64 %.fca.1.extract.i.i.i119, 8
  %i.dm = trunc i64 %i.dl to i8
  %i.dn = lshr i64 %.fca.1.extract.i.i.i119, 16
  %i.do = trunc i64 %i.dn to i8
  %i.dp = trunc i64 %.fca.1.extract.i.i.i119 to i8
  %i.dq = load i8, ptr %.sroa.2.0..sroa_idx.i.i117, align 8
  %i.dr = icmp eq i8 %i.dq, %i.dp
  %or.cond567 = select i1 %i.dk, i1 %i.dr, i1 false
  %i.ds = getelementptr inbounds nuw i8, ptr %17, i64 9
  %i.dt = load i8, ptr %i.ds, align 1
  %i.du = icmp eq i8 %i.dt, %i.dm
  %or.cond570 = select i1 %or.cond567, i1 %i.du, i1 false
  %i.dv = getelementptr inbounds nuw i8, ptr %17, i64 10
  %i.dw = load i8, ptr %i.dv, align 2
  %i.dx = icmp eq i8 %i.dw, %i.do
  %or.cond573 = select i1 %or.cond570, i1 %i.dx, i1 false
  %i.dy = getelementptr inbounds nuw i8, ptr %17, i64 11
  %i.dz = load i8, ptr %i.dy, align 1
  %i.ea = icmp eq i8 %i.dz, 0
  %or.cond576 = select i1 %or.cond573, i1 %i.ea, i1 false
  %i.eb = getelementptr inbounds nuw i8, ptr %17, i64 12
  %i.ec = load i8, ptr %i.eb, align 4
  %i.ed = icmp eq i8 %i.ec, 0
  %or.cond579 = select i1 %or.cond576, i1 %i.ed, i1 false
  br i1 %or.cond579, label %bb.ak, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8hour_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i

bb.ak:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit113
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8hour_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8hour_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit113
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_8hour_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.208, ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %18)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8hour_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8hour_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit: ; preds = %bb.ak, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8hour_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  %i.ee = load i8, ptr %16, align 8, !tbaa !79, !range !80, !noundef !81
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.au, label %bb.al

bb.al:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8hour_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  %i.eg = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !82 ; 2 uses
  %.not.i.i122 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i122, label %_ZNK7testing15AssertionResult15failure_messageEv.exit123, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit123

_ZNK7testing15AssertionResult15failure_messageEv.exit123: ; preds = %bb.an, %bb.am
  %i.ej = phi ptr [ %i.ei, %bb.an ], [ @.str.100, %bb.am ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 159, ptr noundef %i.ej)
          to label %bb.ao unwind label %bb.ar

bb.ao:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit123
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.ap unwind label %bb.as

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  %i.ek = load ptr, ptr %19, align 8, !tbaa !84   ; 3 uses
  %.not.i.i124 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i124, label %_ZN7testing7MessageD2Ev.exit126, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125: ; preds = %bb.ap
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !52
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(128) %i.ek) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit126

_ZN7testing7MessageD2Ev.exit126:                  ; preds = %bb.ap, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %bb.au

bb.aq:                                            ; preds = %bb.al
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit129

bb.ar:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit123
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %bb.ao
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #20
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pn43 = phi { ptr, i32 } [ %i.eq, %bb.as ], [ %i.ep, %bb.ar ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  %i.er = load ptr, ptr %19, align 8, !tbaa !84   ; 3 uses
  %.not.i.i127 = icmp eq ptr %i.er, null
  br i1 %.not.i.i127, label %_ZN7testing7MessageD2Ev.exit129, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128: ; preds = %bb.at
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !52
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(128) %i.er) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit129

_ZN7testing7MessageD2Ev.exit129:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128, %bb.at, %bb.aq
  %.pn43.pn = phi { ptr, i32 } [ %i.eo, %bb.aq ], [ %.pn43, %bb.at ], [ %.pn43, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.ei

bb.au:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8hour_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit, %_ZN7testing7MessageD2Ev.exit126
  %i.ev = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !82 ; 4 uses
  %.not.i.i130 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i130, label %_ZN7testing15AssertionResultD2Ev.exit134, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !68 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i131: ; preds = %bb.av
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !69
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fb) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i131
  call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit134

_ZN7testing15AssertionResultD2Ev.exit134:         ; preds = %bb.au, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  %i.fc = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 9223372036854775807, i8 noundef signext 12, i64 noundef 31, i64 noundef 0, i8 noundef signext 23, i8 noundef signext 59, i8 noundef signext 0) #20 ; 2 uses
  %.fca.1.extract.i.i321 = extractvalue { i64, i64 } %i.fc, 1
  %.fca.0.extract.i135 = extractvalue { i64, i64 } %i.fc, 0
  %.sroa.2.8.insert.insert.i.i.i137 = and i64 %.fca.1.extract.i.i321, 4294967295
  store i64 %.fca.0.extract.i135, ptr %22, align 8
  %.sroa.2.0..sroa_idx.i.i138 = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %.sroa.2.0.extract.trunc.i.i139 = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i137 to i40
  store i40 %.sroa.2.0.extract.trunc.i.i139, ptr %.sroa.2.0..sroa_idx.i.i138, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  %i.fd = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 9223372036854775807, i8 noundef signext 12, i64 noundef 31, i64 noundef 0, i8 noundef signext 23, i8 noundef signext 59, i8 noundef signext 59) #20 ; 2 uses
  %.fca.1.extract.i.i.i140 = extractvalue { i64, i64 } %i.fd, 1 ; 2 uses
  %.sroa.2.8.insert.insert.i.i.i.i141 = and i64 %.fca.1.extract.i.i.i140, 4294967295
  %i.fe = extractvalue { i64, i64 } %i.fd, 0      ; 2 uses
  store i64 %i.fe, ptr %23, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %.sroa.2.8.insert.insert.i.i.i.i141, ptr %i.ff, align 8
  %i.fg = load i64, ptr %22, align 8, !tbaa !102, !noalias !661
  %i.fh = icmp eq i64 %i.fg, %i.fe
  %i.fi = load <4 x i8>, ptr %.sroa.2.0..sroa_idx.i.i138, align 8
  %i.fj = bitcast i64 %.fca.1.extract.i.i.i140 to <8 x i8>
  %i.fk = shufflevector <8 x i8> %i.fj, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fl = icmp eq <4 x i8> %i.fi, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %22, i64 12
  %i.fn = load i8, ptr %i.fm, align 4
  %i.fo = icmp eq i8 %i.fn, 0
  %i.fp = freeze <4 x i1> %i.fl
  %i.fq = bitcast <4 x i1> %i.fp to i4
  %i.fr = icmp eq i4 %i.fq, -1
  %op.rdx611 = select i1 %i.fr, i1 %i.fh, i1 false
  %op.rdx612 = select i1 %op.rdx611, i1 %i.fo, i1 false
  br i1 %op.rdx612, label %bb.aw, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10minute_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i

bb.aw:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit134
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %21)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10minute_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10minute_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit134
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10minute_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %21, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.210, ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(16) %23)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10minute_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10minute_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit: ; preds = %bb.aw, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10minute_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  %i.fs = load i8, ptr %21, align 8, !tbaa !79, !range !80, !noundef !81
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %bb.bg, label %bb.ax

bb.ax:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10minute_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.ay unwind label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  %i.fu = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !82 ; 2 uses
  %.not.i.i143 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i143, label %_ZNK7testing15AssertionResult15failure_messageEv.exit144, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit144

_ZNK7testing15AssertionResult15failure_messageEv.exit144: ; preds = %bb.az, %bb.ay
  %i.fx = phi ptr [ %i.fw, %bb.az ], [ @.str.100, %bb.ay ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %25, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 161, ptr noundef %i.fx)
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit144
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.bb unwind label %bb.be

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  %i.fy = load ptr, ptr %24, align 8, !tbaa !84   ; 3 uses
  %.not.i.i145 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i145, label %_ZN7testing7MessageD2Ev.exit147, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146: ; preds = %bb.bb
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !52
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8
  call void %i.gb(ptr noundef nonnull align 8 dereferenceable(128) %i.fy) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit147

_ZN7testing7MessageD2Ev.exit147:                  ; preds = %bb.bb, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  br label %bb.bg

bb.bc:                                            ; preds = %bb.ax
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit150

bb.bd:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit144
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.be:                                            ; preds = %bb.ba
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #20
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.pn46 = phi { ptr, i32 } [ %i.ge, %bb.be ], [ %i.gd, %bb.bd ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  %i.gf = load ptr, ptr %24, align 8, !tbaa !84   ; 3 uses
  %.not.i.i148 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i148, label %_ZN7testing7MessageD2Ev.exit150, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i149

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i149: ; preds = %bb.bf
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !52
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8
  call void %i.gi(ptr noundef nonnull align 8 dereferenceable(128) %i.gf) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit150

_ZN7testing7MessageD2Ev.exit150:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i149, %bb.bf, %bb.bc
  %.pn46.pn = phi { ptr, i32 } [ %i.gc, %bb.bc ], [ %.pn46, %bb.bf ], [ %.pn46, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i149 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %bb.ei

bb.bg:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10minute_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit, %_ZN7testing7MessageD2Ev.exit147
  %i.gj = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !82 ; 4 uses
  %.not.i.i151 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i151, label %_ZN7testing15AssertionResultD2Ev.exit155, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !68 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 16 ; 2 uses
  %i.gn = icmp eq ptr %i.gl, %i.gm
  br i1 %i.gn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i152: ; preds = %bb.bh
  %i.go = load i64, ptr %i.gm, align 8, !tbaa !69
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.gp) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i152
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit155

_ZN7testing15AssertionResultD2Ev.exit155:         ; preds = %bb.bg, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  %i.gq = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 9223372036854775807, i8 noundef signext 12, i64 noundef 31, i64 noundef 0, i8 noundef signext 23, i8 noundef signext 59, i8 noundef signext 59) #20 ; 2 uses
  %.fca.1.extract.i.i341 = extractvalue { i64, i64 } %i.gq, 1
  %.fca.0.extract.i156 = extractvalue { i64, i64 } %i.gq, 0
  store i64 %.fca.0.extract.i156, ptr %27, align 8
  %.sroa.2.0..sroa_idx.i.i158 = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %.sroa.2.0.extract.trunc.i.i159 = trunc i64 %.fca.1.extract.i.i341 to i40
  store i40 %.sroa.2.0.extract.trunc.i.i159, ptr %.sroa.2.0..sroa_idx.i.i158, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  %i.gr = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 9223372036854775807, i8 noundef signext 12, i64 noundef 31, i64 noundef 0, i8 noundef signext 23, i8 noundef signext 59, i8 noundef signext 59) #20 ; 2 uses
  %.fca.1.extract.i.i.i160 = extractvalue { i64, i64 } %i.gr, 1 ; 3 uses
  %.sroa.2.8.insert.ext.i = and i64 %.fca.1.extract.i.i.i160, 1099511627775
  %i.gs = extractvalue { i64, i64 } %i.gr, 0      ; 2 uses
  store i64 %i.gs, ptr %28, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 %.sroa.2.8.insert.ext.i, ptr %i.gt, align 8
  %i.gu = load i64, ptr %27, align 8, !tbaa !104, !noalias !662
  %i.gv = icmp eq i64 %i.gu, %i.gs
  %i.gw = lshr i64 %.fca.1.extract.i.i.i160, 32
  %i.gx = trunc i64 %i.gw to i8
  %i.gy = load <4 x i8>, ptr %.sroa.2.0..sroa_idx.i.i158, align 8
  %i.gz = bitcast i64 %.fca.1.extract.i.i.i160 to <8 x i8>
  %i.ha = shufflevector <8 x i8> %i.gz, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hb = icmp eq <4 x i8> %i.gy, %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %27, i64 12
  %i.hd = load i8, ptr %i.hc, align 4
  %i.he = icmp eq i8 %i.hd, %i.gx
  %i.hf = freeze <4 x i1> %i.hb
  %i.hg = bitcast <4 x i1> %i.hf to i4
  %i.hh = icmp eq i4 %i.hg, -1
  %op.rdx = select i1 %i.hh, i1 %i.gv, i1 false
  %op.rdx610 = select i1 %op.rdx, i1 %i.he, i1 false
  br i1 %op.rdx610, label %bb.bi, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i

bb.bi:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit155
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %26)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit155
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %26, ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.212, ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(16) %28)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit: ; preds = %bb.bi, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  %i.hi = load i8, ptr %26, align 8, !tbaa !79, !range !80, !noundef !81
  %i.hj = trunc nuw i8 %i.hi to i1
  br i1 %i.hj, label %bb.bs, label %bb.bj

bb.bj:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.bk unwind label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #20
  %i.hk = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !82 ; 2 uses
  %.not.i.i162 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i162, label %_ZNK7testing15AssertionResult15failure_messageEv.exit163, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit163

_ZNK7testing15AssertionResult15failure_messageEv.exit163: ; preds = %bb.bl, %bb.bk
  %i.hn = phi ptr [ %i.hm, %bb.bl ], [ @.str.100, %bb.bk ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %30, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 163, ptr noundef %i.hn)
          to label %bb.bm unwind label %bb.bp

bb.bm:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit163
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.bn unwind label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  %i.ho = load ptr, ptr %29, align 8, !tbaa !84   ; 3 uses
  %.not.i.i164 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i164, label %_ZN7testing7MessageD2Ev.exit166, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165: ; preds = %bb.bn
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !52
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8
  call void %i.hr(ptr noundef nonnull align 8 dereferenceable(128) %i.ho) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit166

_ZN7testing7MessageD2Ev.exit166:                  ; preds = %bb.bn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  br label %bb.bs

bb.bo:                                            ; preds = %bb.bj
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit169

bb.bp:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit163
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bq:                                            ; preds = %bb.bm
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #20
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.pn49 = phi { ptr, i32 } [ %i.hu, %bb.bq ], [ %i.ht, %bb.bp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  %i.hv = load ptr, ptr %29, align 8, !tbaa !84   ; 3 uses
  %.not.i.i167 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i167, label %_ZN7testing7MessageD2Ev.exit169, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i168

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i168: ; preds = %bb.br
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !52
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(128) %i.hv) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit169

_ZN7testing7MessageD2Ev.exit169:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i168, %bb.br, %bb.bo
  %.pn49.pn = phi { ptr, i32 } [ %i.hs, %bb.bo ], [ %.pn49, %bb.br ], [ %.pn49, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i168 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %26) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  br label %bb.ei

bb.bs:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit, %_ZN7testing7MessageD2Ev.exit166
  %i.hz = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !82 ; 4 uses
  %.not.i.i170 = icmp eq ptr %i.ia, null
  br i1 %.not.i.i170, label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit179, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !68 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 16 ; 2 uses
  %i.id = icmp eq ptr %i.ib, %i.ic
  br i1 %i.id, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i171: ; preds = %bb.bt
  %i.ie = load i64, ptr %i.ic, align 8, !tbaa !69
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.if) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i171
  call void @_ZdlPvm(ptr noundef nonnull %i.ia, i64 noundef 32) #22
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit179

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit179: ; preds = %bb.bs, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #20
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %31)
  %.pre = load i8, ptr %31, align 8, !tbaa !79, !range !80
  %i.ig = trunc nuw i8 %.pre to i1
  br i1 %i.ig, label %bb.cd, label %bb.bu

bb.bu:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit179
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.bv unwind label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #20
  %i.ih = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !82 ; 2 uses
  %.not.i.i180 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i180, label %_ZNK7testing15AssertionResult15failure_messageEv.exit181, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit181

_ZNK7testing15AssertionResult15failure_messageEv.exit181: ; preds = %bb.bw, %bb.bv
  %i.ik = phi ptr [ %i.ij, %bb.bw ], [ @.str.100, %bb.bv ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %33, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 167, ptr noundef %i.ik)
          to label %bb.bx unwind label %bb.ca

bb.bx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit181
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.by unwind label %bb.cb

bb.by:                                            ; preds = %bb.bx
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  %i.il = load ptr, ptr %32, align 8, !tbaa !84   ; 3 uses
  %.not.i.i182 = icmp eq ptr %i.il, null
  br i1 %.not.i.i182, label %_ZN7testing7MessageD2Ev.exit184, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183: ; preds = %bb.by
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !52
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load ptr, ptr %i.in, align 8
  call void %i.io(ptr noundef nonnull align 8 dereferenceable(128) %i.il) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit184

_ZN7testing7MessageD2Ev.exit184:                  ; preds = %bb.by, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  br label %bb.cd

bb.bz:                                            ; preds = %bb.bu
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit187

bb.ca:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit181
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bx
  %i.ir = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #20
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.pn52 = phi { ptr, i32 } [ %i.ir, %bb.cb ], [ %i.iq, %bb.ca ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  %i.is = load ptr, ptr %32, align 8, !tbaa !84   ; 3 uses
  %.not.i.i185 = icmp eq ptr %i.is, null
  br i1 %.not.i.i185, label %_ZN7testing7MessageD2Ev.exit187, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i186

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i186: ; preds = %bb.cc
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !52
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8
  call void %i.iv(ptr noundef nonnull align 8 dereferenceable(128) %i.is) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit187

end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_129CivilTime_ParseEdgeCases_Test8TestBodyEv:bb.a
  %i.aky = getelementptr inbounds nuw i8, ptr %111, i64 8
  %i.akz = load ptr, ptr %i.aky, align 8, !tbaa !82 ; 4 uses
  %.not.i.i979 = icmp eq ptr %i.akz, null
  br i1 %.not.i.i979, label %_ZN7testing15AssertionResultD2Ev.exit983, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.ala = load ptr, ptr %i.akz, align 8, !tbaa !68 ; 2 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %i.akz, i64 16 ; 2 uses
  %i.alc = icmp eq ptr %i.ala, %i.alb
  br i1 %i.alc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i981, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i980

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i980: ; preds = %bb.kn
  %i.ald = load i64, ptr %i.alb, align 8, !tbaa !69
  %i.ale = add i64 %i.ald, 1
  call void @_ZdlPvm(ptr noundef %i.ala, i64 noundef %i.ale) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i981

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i981: ; preds = %bb.kn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i980
  call void @_ZdlPvm(ptr noundef nonnull %i.akz, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit983

_ZN7testing15AssertionResultD2Ev.exit983:         ; preds = %bb.km, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i981
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %115) #20
  %i.alf = call noundef zeroext i1 @_ZN4absl12lts_2026052621ParseLenientCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_10second_tagEEE(i64 1, ptr nonnull @.str.425, ptr noundef nonnull %1) ; 2 uses
  %i.alg = zext i1 %i.alf to i8
  store i8 %i.alg, ptr %115, align 8, !tbaa !79
  %i.alh = getelementptr inbounds nuw i8, ptr %115, i64 8 ; 2 uses
  store ptr null, ptr %i.alh, align 8, !tbaa !107
  %i.ali = getelementptr inbounds nuw i8, ptr %115, i64 16
  store i8 1, ptr %i.ali, align 8, !tbaa !109
  br i1 %i.alf, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1003, label %bb.kp

bb.ko:                                            ; preds = %_ZN7testing7MessageD2Ev.exit978, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit970
  %.pn342.pn.pn = phi { ptr, i32 } [ %.pn342.pn, %_ZN7testing7MessageD2Ev.exit978 ], [ %i.akd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit970 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #20
  br label %bb.zn

bb.kp:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit983
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %116)
          to label %bb.kq unwind label %bb.ku

bb.kq:                                            ; preds = %bb.kp
  %i.alj = load ptr, ptr %116, align 8, !tbaa !84
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 16
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !92
  %.sroa.2.0.copyload.i = load i64, ptr %i.a, align 8
  %i.all = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052613time_internallsERSoNS1_4cctz6detail10civil_timeINS1_10second_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.alk, i64 %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i)
          to label %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit unwind label %bb.kv ; 0 uses

_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit: ; preds = %bb.kq
  call void @llvm.lifetime.start.p0(ptr nonnull %117) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %119) #20
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %119, ptr noundef nonnull align 8 dereferenceable(16) %115, ptr noundef nonnull @.str.594, ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.232)
          to label %bb.kr unwind label %bb.kw

bb.kr:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit
  %i.alm = load ptr, ptr %119, align 8, !tbaa !68
  %i.aln = getelementptr inbounds nuw i8, ptr %119, i64 8
  %i.alo = load i64, ptr %i.aln, align 8, !tbaa !67
  store i64 %i.alo, ptr %118, align 8
  %i.alp = getelementptr inbounds nuw i8, ptr %118, i64 8
  store ptr %i.alm, ptr %i.alp, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %117, i32 noundef 1, i64 66, ptr nonnull @.str.2, i32 noundef 802, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %118)
          to label %bb.ks unwind label %bb.kx

bb.ks:                                            ; preds = %bb.kr
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef nonnull align 8 dereferenceable(8) %116)
          to label %bb.kt unwind label %bb.ky

bb.kt:                                            ; preds = %bb.ks
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %117) #20
  %i.alq = load ptr, ptr %119, align 8, !tbaa !68 ; 2 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %119, i64 16 ; 2 uses
  %i.als = icmp eq ptr %i.alq, %i.alr
  br i1 %i.als, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit989, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i987

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i987: ; preds = %bb.kt
  %i.alt = load i64, ptr %i.alr, align 8, !tbaa !69
  %i.alu = add i64 %i.alt, 1
  call void @_ZdlPvm(ptr noundef %i.alq, i64 noundef %i.alu) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit989

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit989: ; preds = %bb.kt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i987
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %117) #20
  %i.alv = load ptr, ptr %116, align 8, !tbaa !84 ; 3 uses
  %.not.i.i990 = icmp eq ptr %i.alv, null
  br i1 %.not.i.i990, label %bb.lb, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i991

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i991: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit989
  %i.alw = load ptr, ptr %i.alv, align 8, !tbaa !52
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 8
  %i.aly = load ptr, ptr %i.alx, align 8
  call void %i.aly(ptr noundef nonnull align 8 dereferenceable(128) %i.alv) #20, !inline_history !0
  br label %bb.lb

bb.ku:                                            ; preds = %bb.kp
  %i.alz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit998

bb.kv:                                            ; preds = %bb.kq
  %i.ama = landingpad { ptr, i32 }
          cleanup
  br label %bb.la

bb.kw:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit
  %i.amb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995

bb.kx:                                            ; preds = %bb.kr
  %i.amc = landingpad { ptr, i32 }
          cleanup
  br label %bb.kz

bb.ky:                                            ; preds = %bb.ks
  %i.amd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %117) #20
  br label %bb.kz

bb.kz:                                            ; preds = %bb.ky, %bb.kx
  %.pn346 = phi { ptr, i32 } [ %i.amd, %bb.ky ], [ %i.amc, %bb.kx ] ; 2 uses
  %i.ame = load ptr, ptr %119, align 8, !tbaa !68 ; 2 uses
  %i.amf = getelementptr inbounds nuw i8, ptr %119, i64 16 ; 2 uses
  %i.amg = icmp eq ptr %i.ame, %i.amf
  br i1 %i.amg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i993

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i993: ; preds = %bb.kz
  %i.amh = load i64, ptr %i.amf, align 8, !tbaa !69
  %i.ami = add i64 %i.amh, 1
  call void @_ZdlPvm(ptr noundef %i.ame, i64 noundef %i.ami) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995: ; preds = %bb.kz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i993, %bb.kw
  %.pn346.pn = phi { ptr, i32 } [ %i.amb, %bb.kw ], [ %.pn346, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i993 ], [ %.pn346, %bb.kz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %117) #20
  br label %bb.la

bb.la:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995, %bb.kv
  %.pn346.pn.pn = phi { ptr, i32 } [ %.pn346.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995 ], [ %i.ama, %bb.kv ] ; 2 uses
  %i.amj = load ptr, ptr %116, align 8, !tbaa !84 ; 3 uses
  %.not.i.i996 = icmp eq ptr %i.amj, null
  br i1 %.not.i.i996, label %_ZN7testing7MessageD2Ev.exit998, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i997

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i997: ; preds = %bb.la
  %i.amk = load ptr, ptr %i.amj, align 8, !tbaa !52
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 8
  %i.amm = load ptr, ptr %i.aml, align 8
  call void %i.amm(ptr noundef nonnull align 8 dereferenceable(128) %i.amj) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit998

_ZN7testing7MessageD2Ev.exit998:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i997, %bb.la, %bb.ku
  %.pn346.pn.pn.pn = phi { ptr, i32 } [ %i.alz, %bb.ku ], [ %.pn346.pn.pn, %bb.la ], [ %.pn346.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i997 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #20
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %115) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #20
  br label %bb.zn

bb.lb:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i991, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit989
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #20
  %.pr1834 = load ptr, ptr %i.alh, align 8, !tbaa !82 ; 4 uses
  %.not.i.i.i999 = icmp eq ptr %.pr1834, null
  br i1 %.not.i.i.i999, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1003, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.amn = load ptr, ptr %.pr1834, align 8, !tbaa !68 ; 2 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %.pr1834, i64 16 ; 2 uses
  %i.amp = icmp eq ptr %i.amn, %i.amo
  br i1 %i.amp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1001, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1000

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1000: ; preds = %bb.lc
  %i.amq = load i64, ptr %i.amo, align 8, !tbaa !69
  %i.amr = add i64 %i.amq, 1
  call void @_ZdlPvm(ptr noundef %i.amn, i64 noundef %i.amr) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1001

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1001: ; preds = %bb.lc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1000
  call void @_ZdlPvm(ptr noundef nonnull %.pr1834, i64 noundef 32) #22
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1003

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1003: ; preds = %_ZN7testing15AssertionResultD2Ev.exit983, %bb.lb, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1001
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %121) #20
  store i64 0, ptr %121, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %121, i64 8
  store i40 257, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.ams = load i64, ptr %1, align 8, !tbaa !104, !noalias !1514
  %i.amt = icmp eq i64 %i.ams, 0
  %i.amu = load <4 x i8>, ptr %i.a, align 8
  %.fr = freeze <4 x i8> %i.amu
  %i.amv = load i8, ptr %i.b, align 4
  %i.amw = icmp eq i8 %i.amv, 0
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %i.amx = icmp eq i32 %.fr.scalar, 257
  %op.rdx2427 = select i1 %i.amx, i1 %i.amt, i1 false
  %op.rdx2428 = select i1 %op.rdx2427, i1 %i.amw, i1 false
  br i1 %op.rdx2428, label %bb.ld, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8year_tagENS1_10second_tagEEEbRKNS3_10civil_timeIT_EERKNS7_IT0_EE.exit.thread.i.i

bb.ld:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1003
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %120)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEENS8_INS5_10second_tagEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8year_tagENS1_10second_tagEEEbRKNS3_10civil_timeIT_EERKNS7_IT0_EE.exit.thread.i.i: ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1003
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_8year_tagEEENS7_INS4_10second_tagEEEEENS_15AssertionResultEPKcSE_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %120, ptr noundef nonnull @.str.595, ptr noundef nonnull @.str.596, ptr noundef nonnull align 8 dereferenceable(16) %121, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEENS8_INS5_10second_tagEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEENS8_INS5_10second_tagEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit: ; preds = %bb.ld, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8year_tagENS1_10second_tagEEEbRKNS3_10civil_timeIT_EERKNS7_IT0_EE.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #20
  %i.amy = load i8, ptr %120, align 8, !tbaa !79, !range !80, !noundef !81
  %i.amz = trunc nuw i8 %i.amy to i1
  br i1 %i.amz, label %bb.ln, label %bb.le

bb.le:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEENS8_INS5_10second_tagEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %122) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %122)
          to label %bb.lf unwind label %bb.lj

bb.lf:                                            ; preds = %bb.le
  call void @llvm.lifetime.start.p0(ptr nonnull %123) #20
  %i.ana = getelementptr inbounds nuw i8, ptr %120, i64 8
  %i.anb = load ptr, ptr %i.ana, align 8, !tbaa !82 ; 2 uses
  %.not.i.i1004 = icmp eq ptr %i.anb, null
  br i1 %.not.i.i1004, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1005, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.anc = load ptr, ptr %i.anb, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1005

_ZNK7testing15AssertionResult15failure_messageEv.exit1005: ; preds = %bb.lg, %bb.lf
  %i.and = phi ptr [ %i.anc, %bb.lg ], [ @.str.100, %bb.lf ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %123, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 803, ptr noundef %i.and)
          to label %bb.lh unwind label %bb.lk

bb.lh:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1005
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %123, ptr noundef nonnull align 8 dereferenceable(8) %122)
          to label %bb.li unwind label %bb.ll

bb.li:                                            ; preds = %bb.lh
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %123) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #20
  %i.ane = load ptr, ptr %122, align 8, !tbaa !84 ; 3 uses
  %.not.i.i1006 = icmp eq ptr %i.ane, null
  br i1 %.not.i.i1006, label %_ZN7testing7MessageD2Ev.exit1008, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1007

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1007: ; preds = %bb.li
  %i.anf = load ptr, ptr %i.ane, align 8, !tbaa !52
  %i.ang = getelementptr inbounds nuw i8, ptr %i.anf, i64 8
  %i.anh = load ptr, ptr %i.ang, align 8
  call void %i.anh(ptr noundef nonnull align 8 dereferenceable(128) %i.ane) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1008

_ZN7testing7MessageD2Ev.exit1008:                 ; preds = %bb.li, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1007
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #20
  br label %bb.ln

bb.lj:                                            ; preds = %bb.le
  %i.ani = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1011

bb.lk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1005
  %i.anj = landingpad { ptr, i32 }
          cleanup
  br label %bb.lm

bb.ll:                                            ; preds = %bb.lh
  %i.ank = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %123) #20
  br label %bb.lm

bb.lm:                                            ; preds = %bb.ll, %bb.lk
  %.pn351 = phi { ptr, i32 } [ %i.ank, %bb.ll ], [ %i.anj, %bb.lk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #20
  %i.anl = load ptr, ptr %122, align 8, !tbaa !84 ; 3 uses
  %.not.i.i1009 = icmp eq ptr %i.anl, null
  br i1 %.not.i.i1009, label %_ZN7testing7MessageD2Ev.exit1011, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1010

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1010: ; preds = %bb.lm
  %i.anm = load ptr, ptr %i.anl, align 8, !tbaa !52
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anm, i64 8
  %i.ano = load ptr, ptr %i.ann, align 8
  call void %i.ano(ptr noundef nonnull align 8 dereferenceable(128) %i.anl) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1011

_ZN7testing7MessageD2Ev.exit1011:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1010, %bb.lm, %bb.lj
  %.pn351.pn = phi { ptr, i32 } [ %i.ani, %bb.lj ], [ %.pn351, %bb.lm ], [ %.pn351, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1010 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %120) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #20
  br label %bb.zn

bb.ln:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEENS8_INS5_10second_tagEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit, %_ZN7testing7MessageD2Ev.exit1008
  %i.anp = getelementptr inbounds nuw i8, ptr %120, i64 8
  %i.anq = load ptr, ptr %i.anp, align 8, !tbaa !82 ; 4 uses
  %.not.i.i1012 = icmp eq ptr %i.anq, null
  br i1 %.not.i.i1012, label %_ZN7testing15AssertionResultD2Ev.exit1016, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.anr = load ptr, ptr %i.anq, align 8, !tbaa !68 ; 2 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anq, i64 16 ; 2 uses
  %i.ant = icmp eq ptr %i.anr, %i.ans
  br i1 %i.ant, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1014, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1013

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1013: ; preds = %bb.lo
  %i.anu = load i64, ptr %i.ans, align 8, !tbaa !69
  %i.anv = add i64 %i.anu, 1
  call void @_ZdlPvm(ptr noundef %i.anr, i64 noundef %i.anv) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1014

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1014: ; preds = %bb.lo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1013
  call void @_ZdlPvm(ptr noundef nonnull %i.anq, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit1016

_ZN7testing15AssertionResultD2Ev.exit1016:        ; preds = %bb.ln, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1014
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %124) #20
  %i.anw = call noundef zeroext i1 @_ZN4absl12lts_2026052621ParseLenientCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_10second_tagEEE(i64 3, ptr nonnull @.str.597, ptr noundef nonnull %1) ; 2 uses
  %i.anx = zext i1 %i.anw to i8
  store i8 %i.anx, ptr %124, align 8, !tbaa !79
  %i.any = getelementptr inbounds nuw i8, ptr %124, i64 8 ; 2 uses
  store ptr null, ptr %i.any, align 8, !tbaa !107
  %i.anz = getelementptr inbounds nuw i8, ptr %124, i64 16
  store i8 1, ptr %i.anz, align 8, !tbaa !109
  br i1 %i.anw, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1040, label %bb.lp

bb.lp:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit1016
  call void @llvm.lifetime.start.p0(ptr nonnull %125) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %125)
          to label %bb.lq unwind label %bb.lu

bb.lq:                                            ; preds = %bb.lp
  %i.aoa = load ptr, ptr %125, align 8, !tbaa !84
  %i.aob = getelementptr inbounds nuw i8, ptr %i.aoa, i64 16
  %.sroa.0.0.copyload.i1017 = load i64, ptr %1, align 8, !tbaa !92
  %.sroa.2.0.copyload.i1019 = load i64, ptr %i.a, align 8
  %i.aoc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052613time_internallsERSoNS1_4cctz6detail10civil_timeINS1_10second_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.aob, i64 %.sroa.0.0.copyload.i1017, i64 %.sroa.2.0.copyload.i1019)
          to label %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit1021 unwind label %bb.lv ; 0 uses

_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit1021: ; preds = %bb.lq
  call void @llvm.lifetime.start.p0(ptr nonnull %126) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %128) #20
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %128, ptr noundef nonnull align 8 dereferenceable(16) %124, ptr noundef nonnull @.str.598, ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.232)
          to label %bb.lr unwind label %bb.lw

bb.lr:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit1021
  %i.aod = load ptr, ptr %128, align 8, !tbaa !68
  %i.aoe = getelementptr inbounds nuw i8, ptr %128, i64 8
  %i.aof = load i64, ptr %i.aoe, align 8, !tbaa !67
  store i64 %i.aof, ptr %127, align 8
  %i.aog = getelementptr inbounds nuw i8, ptr %127, i64 8
  store ptr %i.aod, ptr %i.aog, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %126, i32 noundef 1, i64 66, ptr nonnull @.str.2, i32 noundef 804, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %127)
          to label %bb.ls unwind label %bb.lx

bb.ls:                                            ; preds = %bb.lr
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %126, ptr noundef nonnull align 8 dereferenceable(8) %125)
          to label %bb.lt unwind label %bb.ly

bb.lt:                                            ; preds = %bb.ls
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %126) #20
  %i.aoh = load ptr, ptr %128, align 8, !tbaa !68 ; 2 uses
  %i.aoi = getelementptr inbounds nuw i8, ptr %128, i64 16 ; 2 uses
  %i.aoj = icmp eq ptr %i.aoh, %i.aoi
  br i1 %i.aoj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1026, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1024

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1024: ; preds = %bb.lt
  %i.aok = load i64, ptr %i.aoi, align 8, !tbaa !69
  %i.aol = add i64 %i.aok, 1
  call void @_ZdlPvm(ptr noundef %i.aoh, i64 noundef %i.aol) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1026

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1026: ; preds = %bb.lt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1024
  call void @llvm.lifetime.end.p0(ptr nonnull %128) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #20
  %i.aom = load ptr, ptr %125, align 8, !tbaa !84 ; 3 uses
  %.not.i.i1027 = icmp eq ptr %i.aom, null
  br i1 %.not.i.i1027, label %bb.mb, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1028

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1028: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1026
  %i.aon = load ptr, ptr %i.aom, align 8, !tbaa !52
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aon, i64 8
  %i.aop = load ptr, ptr %i.aoo, align 8
  call void %i.aop(ptr noundef nonnull align 8 dereferenceable(128) %i.aom) #20, !inline_history !0
  br label %bb.mb

bb.lu:                                            ; preds = %bb.lp
  %i.aoq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1035

bb.lv:                                            ; preds = %bb.lq
  %i.aor = landingpad { ptr, i32 }
          cleanup
  br label %bb.ma

bb.lw:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit1021
  %i.aos = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1032

bb.lx:                                            ; preds = %bb.lr
  %i.aot = landingpad { ptr, i32 }
          cleanup
  br label %bb.lz

bb.ly:                                            ; preds = %bb.ls
  %i.aou = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %126) #20
  br label %bb.lz

bb.lz:                                            ; preds = %bb.ly, %bb.lx
  %.pn354 = phi { ptr, i32 } [ %i.aou, %bb.ly ], [ %i.aot, %bb.lx ] ; 2 uses
  %i.aov = load ptr, ptr %128, align 8, !tbaa !68 ; 2 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %128, i64 16 ; 2 uses
  %i.aox = icmp eq ptr %i.aov, %i.aow
  br i1 %i.aox, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1032, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1030

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1030: ; preds = %bb.lz
  %i.aoy = load i64, ptr %i.aow, align 8, !tbaa !69
  %i.aoz = add i64 %i.aoy, 1
  call void @_ZdlPvm(ptr noundef %i.aov, i64 noundef %i.aoz) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1032

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1032: ; preds = %bb.lz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1030, %bb.lw
  %.pn354.pn = phi { ptr, i32 } [ %i.aos, %bb.lw ], [ %.pn354, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1030 ], [ %.pn354, %bb.lz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %128) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #20
  br label %bb.ma

bb.ma:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1032, %bb.lv
  %.pn354.pn.pn = phi { ptr, i32 } [ %.pn354.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1032 ], [ %i.aor, %bb.lv ] ; 2 uses
  %i.apa = load ptr, ptr %125, align 8, !tbaa !84 ; 3 uses
  %.not.i.i1033 = icmp eq ptr %i.apa, null
  br i1 %.not.i.i1033, label %_ZN7testing7MessageD2Ev.exit1035, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1034

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1034: ; preds = %bb.ma
  %i.apb = load ptr, ptr %i.apa, align 8, !tbaa !52
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apb, i64 8
  %i.apd = load ptr, ptr %i.apc, align 8
  call void %i.apd(ptr noundef nonnull align 8 dereferenceable(128) %i.apa) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1035

_ZN7testing7MessageD2Ev.exit1035:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1034, %bb.ma, %bb.lu
  %.pn354.pn.pn.pn = phi { ptr, i32 } [ %i.aoq, %bb.lu ], [ %.pn354.pn.pn, %bb.ma ], [ %.pn354.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1034 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #20
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %124) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #20
  br label %bb.zn

bb.mb:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1028, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1026
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #20
  %.pr1837 = load ptr, ptr %i.any, align 8, !tbaa !82 ; 4 uses
  %.not.i.i.i1036 = icmp eq ptr %.pr1837, null
  br i1 %.not.i.i.i1036, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1040, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %i.ape = load ptr, ptr %.pr1837, align 8, !tbaa !68 ; 2 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %.pr1837, i64 16 ; 2 uses
  %i.apg = icmp eq ptr %i.ape, %i.apf
  br i1 %i.apg, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1038, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1037

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1037: ; preds = %bb.mc
  %i.aph = load i64, ptr %i.apf, align 8, !tbaa !69
  %i.api = add i64 %i.aph, 1
  call void @_ZdlPvm(ptr noundef %i.ape, i64 noundef %i.api) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1038

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1038: ; preds = %bb.mc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1037
  call void @_ZdlPvm(ptr noundef nonnull %.pr1837, i64 noundef 32) #22
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1040

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1040: ; preds = %_ZN7testing15AssertionResultD2Ev.exit1016, %bb.mb, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1038
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %129) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %130) #20
  store i64 0, ptr %130, align 8
  %.sroa.2.0..sroa_idx.i.i1042 = getelementptr inbounds nuw i8, ptr %130, i64 8
  store i40 257, ptr %.sroa.2.0..sroa_idx.i.i1042, align 8
  %i.apj = load i64, ptr %1, align 8, !tbaa !104, !noalias !1515
  %i.apk = icmp eq i64 %i.apj, 0
  %i.apl = load <4 x i8>, ptr %i.a, align 8
  %.fr2429 = freeze <4 x i8> %i.apl
  %i.apm = load i8, ptr %i.b, align 4
  %i.apn = icmp eq i8 %i.apm, 0
  %.fr2429.scalar = bitcast <4 x i8> %.fr2429 to i32
  %i.apo = icmp eq i32 %.fr2429.scalar, 257
  %op.rdx2425 = select i1 %i.apo, i1 %i.apk, i1 false
  %op.rdx2426 = select i1 %op.rdx2425, i1 %i.apn, i1 false
  br i1 %op.rdx2426, label %bb.md, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_9month_tagENS1_10second_tagEEEbRKNS3_10civil_timeIT_EERKNS7_IT0_EE.exit.thread.i.i

bb.md:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1040
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %129)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_9month_tagEEENS8_INS5_10second_tagEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_9month_tagENS1_10second_tagEEEbRKNS3_10civil_timeIT_EERKNS7_IT0_EE.exit.thread.i.i: ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1040
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_9month_tagEEENS7_INS4_10second_tagEEEEENS_15AssertionResultEPKcSE_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %129, ptr noundef nonnull @.str.599, ptr noundef nonnull @.str.596, ptr noundef nonnull align 8 dereferenceable(16) %130, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_9month_tagEEENS8_INS5_10second_tagEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_9month_tagEEENS8_INS5_10second_tagEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit: ; preds = %bb.md, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_9month_tagENS1_10second_tagEEEbRKNS3_10civil_timeIT_EERKNS7_IT0_EE.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #20
  %i.app = load i8, ptr %129, align 8, !tbaa !79, !range !80, !noundef !81
  %i.apq = trunc nuw i8 %i.app to i1
  br i1 %i.apq, label %bb.mn, label %bb.me

bb.me:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_9month_tagEEENS8_INS5_10second_tagEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %131) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %131)
          to label %bb.mf unwind label %bb.mj

bb.mf:                                            ; preds = %bb.me
  call void @llvm.lifetime.start.p0(ptr nonnull %132) #20
  %i.apr = getelementptr inbounds nuw i8, ptr %129, i64 8
  %i.aps = load ptr, ptr %i.apr, align 8, !tbaa !82 ; 2 uses
  %.not.i.i1043 = icmp eq ptr %i.aps, null
  br i1 %.not.i.i1043, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1044, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  %i.apt = load ptr, ptr %i.aps, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1044

_ZNK7testing15AssertionResult15failure_messageEv.exit1044: ; preds = %bb.mg, %bb.mf
  %i.apu = phi ptr [ %i.apt, %bb.mg ], [ @.str.100, %bb.mf ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %132, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 805, ptr noundef %i.apu)
          to label %bb.mh unwind label %bb.mk

bb.mh:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1044
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %132, ptr noundef nonnull align 8 dereferenceable(8) %131)
          to label %bb.mi unwind label %bb.ml

bb.mi:                                            ; preds = %bb.mh
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %132) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #20
  %i.apv = load ptr, ptr %131, align 8, !tbaa !84 ; 3 uses
  %.not.i.i1045 = icmp eq ptr %i.apv, null
  br i1 %.not.i.i1045, label %_ZN7testing7MessageD2Ev.exit1047, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1046

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1046: ; preds = %bb.mi
  %i.apw = load ptr, ptr %i.apv, align 8, !tbaa !52
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apw, i64 8
  %i.apy = load ptr, ptr %i.apx, align 8
  call void %i.apy(ptr noundef nonnull align 8 dereferenceable(128) %i.apv) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1047

_ZN7testing7MessageD2Ev.exit1047:                 ; preds = %bb.mi, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1046
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #20
  br label %bb.mn

bb.mj:                                            ; preds = %bb.me
  %i.apz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1050

bb.mk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1044
  %i.aqa = landingpad { ptr, i32 }
          cleanup
  br label %bb.mm

bb.ml:                                            ; preds = %bb.mh
  %i.aqb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %132) #20
  br label %bb.mm

bb.mm:                                            ; preds = %bb.ml, %bb.mk
  %.pn359 = phi { ptr, i32 } [ %i.aqb, %bb.ml ], [ %i.aqa, %bb.mk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #20
  %i.aqc = load ptr, ptr %131, align 8, !tbaa !84 ; 3 uses
  %.not.i.i1048 = icmp eq ptr %i.aqc, null
  br i1 %.not.i.i1048, label %_ZN7testing7MessageD2Ev.exit1050, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1049

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1049: ; preds = %bb.mm
  %i.aqd = load ptr, ptr %i.aqc, align 8, !tbaa !52
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqd, i64 8
  %i.aqf = load ptr, ptr %i.aqe, align 8
  call void %i.aqf(ptr noundef nonnull align 8 dereferenceable(128) %i.aqc) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1050

_ZN7testing7MessageD2Ev.exit1050:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1049, %bb.mm, %bb.mj
  %.pn359.pn = phi { ptr, i32 } [ %i.apz, %bb.mj ], [ %.pn359, %bb.mm ], [ %.pn359, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1049 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %129) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #20
  br label %bb.zn

bb.mn:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_9month_tagEEENS8_INS5_10second_tagEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit, %_ZN7testing7MessageD2Ev.exit1047
  %i.aqg = getelementptr inbounds nuw i8, ptr %129, i64 8
  %i.aqh = load ptr, ptr %i.aqg, align 8, !tbaa !82 ; 4 uses
  %.not.i.i1051 = icmp eq ptr %i.aqh, null
  br i1 %.not.i.i1051, label %_ZN7testing15AssertionResultD2Ev.exit1055, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.aqi = load ptr, ptr %i.aqh, align 8, !tbaa !68 ; 2 uses
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqh, i64 16 ; 2 uses
  %i.aqk = icmp eq ptr %i.aqi, %i.aqj
  br i1 %i.aqk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1053, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1052

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1052: ; preds = %bb.mo
  %i.aql = load i64, ptr %i.aqj, align 8, !tbaa !69
  %i.aqm = add i64 %i.aql, 1
  call void @_ZdlPvm(ptr noundef %i.aqi, i64 noundef %i.aqm) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1053

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1053: ; preds = %bb.mo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1052
  call void @_ZdlPvm(ptr noundef nonnull %i.aqh, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit1055

_ZN7testing15AssertionResultD2Ev.exit1055:        ; preds = %bb.mn, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1053
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %133) #20
  %i.aqn = call noundef zeroext i1 @_ZN4absl12lts_2026052621ParseLenientCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_10second_tagEEE(i64 6, ptr nonnull @.str.600, ptr noundef nonnull %1) ; 2 uses
  %i.aqo = zext i1 %i.aqn to i8
  store i8 %i.aqo, ptr %133, align 8, !tbaa !79
  %i.aqp = getelementptr inbounds nuw i8, ptr %133, i64 8 ; 2 uses
  store ptr null, ptr %i.aqp, align 8, !tbaa !107
  %i.aqq = getelementptr inbounds nuw i8, ptr %133, i64 16
  store i8 1, ptr %i.aqq, align 8, !tbaa !109
  br i1 %i.aqn, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1079, label %bb.mp

bb.mp:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit1055
  call void @llvm.lifetime.start.p0(ptr nonnull %134) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %134)
          to label %bb.mq unwind label %bb.mu

bb.mq:                                            ; preds = %bb.mp
  %i.aqr = load ptr, ptr %134, align 8, !tbaa !84
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqr, i64 16
  %.sroa.0.0.copyload.i1056 = load i64, ptr %1, align 8, !tbaa !92
  %.sroa.2.0.copyload.i1058 = load i64, ptr %i.a, align 8
  %i.aqt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052613time_internallsERSoNS1_4cctz6detail10civil_timeINS1_10second_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.aqs, i64 %.sroa.0.0.copyload.i1056, i64 %.sroa.2.0.copyload.i1058)
          to label %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit1060 unwind label %bb.mv ; 0 uses

_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit1060: ; preds = %bb.mq
  call void @llvm.lifetime.start.p0(ptr nonnull %135) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %137) #20
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %137, ptr noundef nonnull align 8 dereferenceable(16) %133, ptr noundef nonnull @.str.601, ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.232)
          to label %bb.mr unwind label %bb.mw

bb.mr:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit1060
  %i.aqu = load ptr, ptr %137, align 8, !tbaa !68
  %i.aqv = getelementptr inbounds nuw i8, ptr %137, i64 8
  %i.aqw = load i64, ptr %i.aqv, align 8, !tbaa !67
  store i64 %i.aqw, ptr %136, align 8
  %i.aqx = getelementptr inbounds nuw i8, ptr %136, i64 8
  store ptr %i.aqu, ptr %i.aqx, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %135, i32 noundef 1, i64 66, ptr nonnull @.str.2, i32 noundef 806, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %136)
          to label %bb.ms unwind label %bb.mx

bb.ms:                                            ; preds = %bb.mr
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %135, ptr noundef nonnull align 8 dereferenceable(8) %134)
          to label %bb.mt unwind label %bb.my

bb.mt:                                            ; preds = %bb.ms
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %135) #20
  %i.aqy = load ptr, ptr %137, align 8, !tbaa !68 ; 2 uses
  %i.aqz = getelementptr inbounds nuw i8, ptr %137, i64 16 ; 2 uses
  %i.ara = icmp eq ptr %i.aqy, %i.aqz
  br i1 %i.ara, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1065, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1063

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1063: ; preds = %bb.mt
  %i.arb = load i64, ptr %i.aqz, align 8, !tbaa !69
  %i.arc = add i64 %i.arb, 1
  call void @_ZdlPvm(ptr noundef %i.aqy, i64 noundef %i.arc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1065

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1065: ; preds = %bb.mt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1063
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #20
  %i.ard = load ptr, ptr %134, align 8, !tbaa !84 ; 3 uses
  %.not.i.i1066 = icmp eq ptr %i.ard, null
  br i1 %.not.i.i1066, label %bb.nb, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1067

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1067: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1065
  %i.are = load ptr, ptr %i.ard, align 8, !tbaa !52
  %i.arf = getelementptr inbounds nuw i8, ptr %i.are, i64 8
  %i.arg = load ptr, ptr %i.arf, align 8
  call void %i.arg(ptr noundef nonnull align 8 dereferenceable(128) %i.ard) #20, !inline_history !0
  br label %bb.nb

bb.mu:                                            ; preds = %bb.mp
  %i.arh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1074

bb.mv:                                            ; preds = %bb.mq
  %i.ari = landingpad { ptr, i32 }
          cleanup
  br label %bb.na

bb.mw:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit1060
  %i.arj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1071

bb.mx:                                            ; preds = %bb.mr
  %i.ark = landingpad { ptr, i32 }
          cleanup
  br label %bb.mz

bb.my:                                            ; preds = %bb.ms
  %i.arl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %135) #20
  br label %bb.mz

bb.mz:                                            ; preds = %bb.my, %bb.mx
  %.pn362 = phi { ptr, i32 } [ %i.arl, %bb.my ], [ %i.ark, %bb.mx ] ; 2 uses
  %i.arm = load ptr, ptr %137, align 8, !tbaa !68 ; 2 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %137, i64 16 ; 2 uses
  %i.aro = icmp eq ptr %i.arm, %i.arn
  br i1 %i.aro, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1071, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1069

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1069: ; preds = %bb.mz
  %i.arp = load i64, ptr %i.arn, align 8, !tbaa !69
  %i.arq = add i64 %i.arp, 1
  call void @_ZdlPvm(ptr noundef %i.arm, i64 noundef %i.arq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1071

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1071: ; preds = %bb.mz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1069, %bb.mw
  %.pn362.pn = phi { ptr, i32 } [ %i.arj, %bb.mw ], [ %.pn362, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1069 ], [ %.pn362, %bb.mz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #20
  br label %bb.na

bb.na:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1071, %bb.mv
  %.pn362.pn.pn = phi { ptr, i32 } [ %.pn362.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1071 ], [ %i.ari, %bb.mv ] ; 2 uses
  %i.arr = load ptr, ptr %134, align 8, !tbaa !84 ; 3 uses
  %.not.i.i1072 = icmp eq ptr %i.arr, null
  br i1 %.not.i.i1072, label %_ZN7testing7MessageD2Ev.exit1074, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1073

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1073: ; preds = %bb.na
  %i.ars = load ptr, ptr %i.arr, align 8, !tbaa !52
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 8
  %i.aru = load ptr, ptr %i.art, align 8
  call void %i.aru(ptr noundef nonnull align 8 dereferenceable(128) %i.arr) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1074

_ZN7testing7MessageD2Ev.exit1074:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1073, %bb.na, %bb.mu
  %.pn362.pn.pn.pn = phi { ptr, i32 } [ %i.arh, %bb.mu ], [ %.pn362.pn.pn, %bb.na ], [ %.pn362.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1073 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #20
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %133) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #20
  br label %bb.zn

bb.nb:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1067, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1065
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #20
  %.pr1840 = load ptr, ptr %i.aqp, align 8, !tbaa !82 ; 4 uses
  %.not.i.i.i1075 = icmp eq ptr %.pr1840, null
  br i1 %.not.i.i.i1075, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1079, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  %i.arv = load ptr, ptr %.pr1840, align 8, !tbaa !68 ; 2 uses
  %i.arw = getelementptr inbounds nuw i8, ptr %.pr1840, i64 16 ; 2 uses
  %i.arx = icmp eq ptr %i.arv, %i.arw
  br i1 %i.arx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1077, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1076

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1076: ; preds = %bb.nc
  %i.ary = load i64, ptr %i.arw, align 8, !tbaa !69
  %i.arz = add i64 %i.ary, 1
  call void @_ZdlPvm(ptr noundef %i.arv, i64 noundef %i.arz) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1077

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1077: ; preds = %bb.nc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1076
  call void @_ZdlPvm(ptr noundef nonnull %.pr1840, i64 noundef 32) #22
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1079

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1079: ; preds = %_ZN7testing15AssertionResultD2Ev.exit1055, %bb.nb, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1077
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %138) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %139) #20
  store i64 2015, ptr %139, align 8
  %.sroa.2.0..sroa_idx.i.i1081 = getelementptr inbounds nuw i8, ptr %139, i64 8
  store i40 257, ptr %.sroa.2.0..sroa_idx.i.i1081, align 8
  %i.asa = load i64, ptr %1, align 8, !tbaa !104, !noalias !1516
  %i.asb = icmp eq i64 %i.asa, 2015
  %i.asc = load <4 x i8>, ptr %i.a, align 8
  %.fr2430 = freeze <4 x i8> %i.asc
  %i.asd = load i8, ptr %i.b, align 4
  %i.ase = icmp eq i8 %i.asd, 0
  %.fr2430.scalar = bitcast <4 x i8> %.fr2430 to i32
  %i.asf = icmp eq i32 %.fr2430.scalar, 257
  %op.rdx2423 = select i1 %i.asf, i1 %i.asb, i1 false
  %op.rdx2424 = select i1 %op.rdx2423, i1 %i.ase, i1 false
  br i1 %op.rdx2424, label %bb.nd, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8year_tagENS1_10second_tagEEEbRKNS3_10civil_timeIT_EERKNS7_IT0_EE.exit.thread.i.i1082

bb.nd:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1079
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %138)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEENS8_INS5_10second_tagEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit1084

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8year_tagENS1_10second_tagEEEbRKNS3_10civil_timeIT_EERKNS7_IT0_EE.exit.thread.i.i1082: ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1079
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_8year_tagEEENS7_INS4_10second_tagEEEEENS_15AssertionResultEPKcSE_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %138, ptr noundef nonnull @.str.602, ptr noundef nonnull @.str.596, ptr noundef nonnull align 8 dereferenceable(16) %139, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEENS8_INS5_10second_tagEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit1084

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEENS8_INS5_10second_tagEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit1084: ; preds = %bb.nd, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8year_tagENS1_10second_tagEEEbRKNS3_10civil_timeIT_EERKNS7_IT0_EE.exit.thread.i.i1082
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #20
  %i.asg = load i8, ptr %138, align 8, !tbaa !79, !range !80, !noundef !81
  %i.ash = trunc nuw i8 %i.asg to i1
  br i1 %i.ash, label %bb.nn, label %bb.ne

bb.ne:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEENS8_INS5_10second_tagEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit1084
  call void @llvm.lifetime.start.p0(ptr nonnull %140) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %140)
          to label %bb.nf unwind label %bb.nj

bb.nf:                                            ; preds = %bb.ne
  call void @llvm.lifetime.start.p0(ptr nonnull %141) #20
  %i.asi = getelementptr inbounds nuw i8, ptr %138, i64 8
  %i.asj = load ptr, ptr %i.asi, align 8, !tbaa !82 ; 2 uses
  %.not.i.i1085 = icmp eq ptr %i.asj, null
  br i1 %.not.i.i1085, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1086, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  %i.ask = load ptr, ptr %i.asj, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1086

_ZNK7testing15AssertionResult15failure_messageEv.exit1086: ; preds = %bb.ng, %bb.nf
  %i.asl = phi ptr [ %i.ask, %bb.ng ], [ @.str.100, %bb.nf ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %141, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 807, ptr noundef %i.asl)
          to label %bb.nh unwind label %bb.nk

bb.nh:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1086
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %141, ptr noundef nonnull align 8 dereferenceable(8) %140)
          to label %bb.ni unwind label %bb.nl

bb.ni:                                            ; preds = %bb.nh
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %141) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #20
  %i.asm = load ptr, ptr %140, align 8, !tbaa !84 ; 3 uses
  %.not.i.i1087 = icmp eq ptr %i.asm, null
  br i1 %.not.i.i1087, label %_ZN7testing7MessageD2Ev.exit1089, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1088

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1088: ; preds = %bb.ni
  %i.asn = load ptr, ptr %i.asm, align 8, !tbaa !52
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asn, i64 8
  %i.asp = load ptr, ptr %i.aso, align 8
  call void %i.asp(ptr noundef nonnull align 8 dereferenceable(128) %i.asm) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1089

_ZN7testing7MessageD2Ev.exit1089:                 ; preds = %bb.ni, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1088
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #20
  br label %bb.nn

bb.nj:                                            ; preds = %bb.ne
  %i.asq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1092

bb.nk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1086
  %i.asr = landingpad { ptr, i32 }
          cleanup
  br label %bb.nm

bb.nl:                                            ; preds = %bb.nh
  %i.ass = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %141) #20
  br label %bb.nm

bb.nm:                                            ; preds = %bb.nl, %bb.nk
  %.pn367 = phi { ptr, i32 } [ %i.ass, %bb.nl ], [ %i.asr, %bb.nk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #20
  %i.ast = load ptr, ptr %140, align 8, !tbaa !84 ; 3 uses
  %.not.i.i1090 = icmp eq ptr %i.ast, null
  br i1 %.not.i.i1090, label %_ZN7testing7MessageD2Ev.exit1092, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1091

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1091: ; preds = %bb.nm
  %i.asu = load ptr, ptr %i.ast, align 8, !tbaa !52
  %i.asv = getelementptr inbounds nuw i8, ptr %i.asu, i64 8
  %i.asw = load ptr, ptr %i.asv, align 8
  call void %i.asw(ptr noundef nonnull align 8 dereferenceable(128) %i.ast) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1092

_ZN7testing7MessageD2Ev.exit1092:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1091, %bb.nm, %bb.nj
  %.pn367.pn = phi { ptr, i32 } [ %i.asq, %bb.nj ], [ %.pn367, %bb.nm ], [ %.pn367, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1091 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %138) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #20
  br label %bb.zn

bb.nn:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEENS8_INS5_10second_tagEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit1084, %_ZN7testing7MessageD2Ev.exit1089
  %i.asx = getelementptr inbounds nuw i8, ptr %138, i64 8
  %i.asy = load ptr, ptr %i.asx, align 8, !tbaa !82 ; 4 uses
  %.not.i.i1093 = icmp eq ptr %i.asy, null
  br i1 %.not.i.i1093, label %_ZN7testing15AssertionResultD2Ev.exit1097, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.asz = load ptr, ptr %i.asy, align 8, !tbaa !68 ; 2 uses
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asy, i64 16 ; 2 uses
  %i.atb = icmp eq ptr %i.asz, %i.ata
  br i1 %i.atb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1095, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1094

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1094: ; preds = %bb.no
  %i.atc = load i64, ptr %i.ata, align 8, !tbaa !69
  %i.atd = add i64 %i.atc, 1
  call void @_ZdlPvm(ptr noundef %i.asz, i64 noundef %i.atd) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1095

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1095: ; preds = %bb.no, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1094
  call void @_ZdlPvm(ptr noundef nonnull %i.asy, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit1097

_ZN7testing15AssertionResultD2Ev.exit1097:        ; preds = %bb.nn, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1095
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %142) #20
  %i.ate = call noundef zeroext i1 @_ZN4absl12lts_2026052621ParseLenientCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_10second_tagEEE(i64 8, ptr nonnull @.str.603, ptr noundef nonnull %1) ; 2 uses
  %i.atf = zext i1 %i.ate to i8
  store i8 %i.atf, ptr %142, align 8, !tbaa !79
  %i.atg = getelementptr inbounds nuw i8, ptr %142, i64 8 ; 2 uses
  store ptr null, ptr %i.atg, align 8, !tbaa !107
  %i.ath = getelementptr inbounds nuw i8, ptr %142, i64 16
  store i8 1, ptr %i.ath, align 8, !tbaa !109
  br i1 %i.ate, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1121, label %bb.np

bb.np:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit1097
  call void @llvm.lifetime.start.p0(ptr nonnull %143) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %143)
          to label %bb.nq unwind label %bb.nu

bb.nq:                                            ; preds = %bb.np
  %i.ati = load ptr, ptr %143, align 8, !tbaa !84
  %i.atj = getelementptr inbounds nuw i8, ptr %i.ati, i64 16
  %.sroa.0.0.copyload.i1098 = load i64, ptr %1, align 8, !tbaa !92
  %.sroa.2.0.copyload.i1100 = load i64, ptr %i.a, align 8
  %i.atk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052613time_internallsERSoNS1_4cctz6detail10civil_timeINS1_10second_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.atj, i64 %.sroa.0.0.copyload.i1098, i64 %.sroa.2.0.copyload.i1100)
          to label %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit1102 unwind label %bb.nv ; 0 uses

_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit1102: ; preds = %bb.nq
  call void @llvm.lifetime.start.p0(ptr nonnull %144) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %146) #20
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %146, ptr noundef nonnull align 8 dereferenceable(16) %142, ptr noundef nonnull @.str.604, ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.232)
          to label %bb.nr unwind label %bb.nw

bb.nr:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit1102
  %i.atl = load ptr, ptr %146, align 8, !tbaa !68
  %i.atm = getelementptr inbounds nuw i8, ptr %146, i64 8
  %i.atn = load i64, ptr %i.atm, align 8, !tbaa !67
  store i64 %i.atn, ptr %145, align 8
  %i.ato = getelementptr inbounds nuw i8, ptr %145, i64 8
  store ptr %i.atl, ptr %i.ato, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %144, i32 noundef 1, i64 66, ptr nonnull @.str.2, i32 noundef 808, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %145)
          to label %bb.ns unwind label %bb.nx

bb.ns:                                            ; preds = %bb.nr
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %144, ptr noundef nonnull align 8 dereferenceable(8) %143)
          to label %bb.nt unwind label %bb.ny

bb.nt:                                            ; preds = %bb.ns
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %144) #20
  %i.atp = load ptr, ptr %146, align 8, !tbaa !68 ; 2 uses
  %i.atq = getelementptr inbounds nuw i8, ptr %146, i64 16 ; 2 uses
  %i.atr = icmp eq ptr %i.atp, %i.atq
  br i1 %i.atr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1105: ; preds = %bb.nt
  %i.ats = load i64, ptr %i.atq, align 8, !tbaa !69
  %i.att = add i64 %i.ats, 1
  call void @_ZdlPvm(ptr noundef %i.atp, i64 noundef %i.att) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1107: ; preds = %bb.nt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1105
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #20
  %i.atu = load ptr, ptr %143, align 8, !tbaa !84 ; 3 uses
  %.not.i.i1108 = icmp eq ptr %i.atu, null
  br i1 %.not.i.i1108, label %bb.ob, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1109

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1107
  %i.atv = load ptr, ptr %i.atu, align 8, !tbaa !52
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atv, i64 8
  %i.atx = load ptr, ptr %i.atw, align 8
  call void %i.atx(ptr noundef nonnull align 8 dereferenceable(128) %i.atu) #20, !inline_history !0
  br label %bb.ob

bb.nu:                                            ; preds = %bb.np
  %i.aty = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1116

bb.nv:                                            ; preds = %bb.nq
  %i.atz = landingpad { ptr, i32 }
          cleanup
  br label %bb.oa

bb.nw:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit1102
  %i.aua = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1113

bb.nx:                                            ; preds = %bb.nr
  %i.aub = landingpad { ptr, i32 }
          cleanup
  br label %bb.nz

bb.ny:                                            ; preds = %bb.ns
  %i.auc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %144) #20
  br label %bb.nz

bb.nz:                                            ; preds = %bb.ny, %bb.nx
  %.pn370 = phi { ptr, i32 } [ %i.auc, %bb.ny ], [ %i.aub, %bb.nx ] ; 2 uses
  %i.aud = load ptr, ptr %146, align 8, !tbaa !68 ; 2 uses
  %i.aue = getelementptr inbounds nuw i8, ptr %146, i64 16 ; 2 uses
  %i.auf = icmp eq ptr %i.aud, %i.aue
  br i1 %i.auf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1111: ; preds = %bb.nz
  %i.aug = load i64, ptr %i.aue, align 8, !tbaa !69
  %i.auh = add i64 %i.aug, 1
  call void @_ZdlPvm(ptr noundef %i.aud, i64 noundef %i.auh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1113: ; preds = %bb.nz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1111, %bb.nw
  %.pn370.pn = phi { ptr, i32 } [ %i.aua, %bb.nw ], [ %.pn370, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1111 ], [ %.pn370, %bb.nz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #20
  br label %bb.oa

bb.oa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1113, %bb.nv
  %.pn370.pn.pn = phi { ptr, i32 } [ %.pn370.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1113 ], [ %i.atz, %bb.nv ] ; 2 uses
  %i.aui = load ptr, ptr %143, align 8, !tbaa !84 ; 3 uses
  %.not.i.i1114 = icmp eq ptr %i.aui, null
  br i1 %.not.i.i1114, label %_ZN7testing7MessageD2Ev.exit1116, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1115

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1115: ; preds = %bb.oa
  %i.auj = load ptr, ptr %i.aui, align 8, !tbaa !52
  %i.auk = getelementptr inbounds nuw i8, ptr %i.auj, i64 8
  %i.aul = load ptr, ptr %i.auk, align 8
  call void %i.aul(ptr noundef nonnull align 8 dereferenceable(128) %i.aui) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1116

_ZN7testing7MessageD2Ev.exit1116:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1115, %bb.oa, %bb.nu
  %.pn370.pn.pn.pn = phi { ptr, i32 } [ %i.aty, %bb.nu ], [ %.pn370.pn.pn, %bb.oa ], [ %.pn370.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1115 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #20
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %142) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #20
  br label %bb.zn

bb.ob:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1107
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #20
  %.pr1843 = load ptr, ptr %i.atg, align 8, !tbaa !82 ; 4 uses
  %.not.i.i.i1117 = icmp eq ptr %.pr1843, null
  br i1 %.not.i.i.i1117, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1121, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  %i.aum = load ptr, ptr %.pr1843, align 8, !tbaa !68 ; 2 uses
  %i.aun = getelementptr inbounds nuw i8, ptr %.pr1843, i64 16 ; 2 uses
  %i.auo = icmp eq ptr %i.aum, %i.aun
  br i1 %i.auo, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1118: ; preds = %bb.oc
  %i.aup = load i64, ptr %i.aun, align 8, !tbaa !69
  %i.auq = add i64 %i.aup, 1
  call void @_ZdlPvm(ptr noundef %i.aum, i64 noundef %i.auq) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1119

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1119: ; preds = %bb.oc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1118
  call void @_ZdlPvm(ptr noundef nonnull %.pr1843, i64 noundef 32) #22
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1121

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1121: ; preds = %_ZN7testing15AssertionResultD2Ev.exit1097, %bb.ob, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1119
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %147) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %148) #20
  store i64 2015, ptr %148, align 8
  %.sroa.2.0..sroa_idx.i.i1126 = getelementptr inbounds nuw i8, ptr %148, i64 8
  store i40 262, ptr %.sroa.2.0..sroa_idx.i.i1126, align 8
  %i.aur = load i64, ptr %1, align 8, !tbaa !104, !noalias !1517
  %i.aus = icmp eq i64 %i.aur, 2015
  %i.aut = load <4 x i8>, ptr %i.a, align 8
  %.fr2431 = freeze <4 x i8> %i.aut
  %i.auu = load i8, ptr %i.b, align 4
  %i.auv = icmp eq i8 %i.auu, 0
  %.fr2431.scalar = bitcast <4 x i8> %.fr2431 to i32
  %i.auw = icmp eq i32 %.fr2431.scalar, 262
  %op.rdx2421 = select i1 %i.auw, i1 %i.aus, i1 false
  %op.rdx2422 = select i1 %op.rdx2421, i1 %i.auv, i1 false
  br i1 %op.rdx2422, label %bb.od, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_9month_tagENS1_10second_tagEEEbRKNS3_10civil_timeIT_EERKNS7_IT0_EE.exit.thread.i.i1128

bb.od:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1121
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %147)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_9month_tagEEENS8_INS5_10second_tagEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit1130

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_9month_tagENS1_10second_tagEEEbRKNS3_10civil_timeIT_EERKNS7_IT0_EE.exit.thread.i.i1128: ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1121
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_9month_tagEEENS7_INS4_10second_tagEEEEENS_15AssertionResultEPKcSE_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %147, ptr noundef nonnull @.str.605, ptr noundef nonnull @.str.596, ptr noundef nonnull align 8 dereferenceable(16) %148, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_9month_tagEEENS8_INS5_10second_tagEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit1130

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_9month_tagEEENS8_INS5_10second_tagEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit1130: ; preds = %bb.od, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_9month_tagENS1_10second_tagEEEbRKNS3_10civil_timeIT_EERKNS7_IT0_EE.exit.thread.i.i1128
  call void @llvm.lifetime.end.p0(ptr nonnull %148) #20
  %i.aux = load i8, ptr %147, align 8, !tbaa !79, !range !80, !noundef !81
  %i.auy = trunc nuw i8 %i.aux to i1
  br i1 %i.auy, label %bb.on, label %bb.oe

bb.oe:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_9month_tagEEENS8_INS5_10second_tagEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit1130
  call void @llvm.lifetime.start.p0(ptr nonnull %149) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %149)
          to label %bb.of unwind label %bb.oj

bb.of:                                            ; preds = %bb.oe
  call void @llvm.lifetime.start.p0(ptr nonnull %150) #20
  %i.auz = getelementptr inbounds nuw i8, ptr %147, i64 8
  %i.ava = load ptr, ptr %i.auz, align 8, !tbaa !82 ; 2 uses
  %.not.i.i1131 = icmp eq ptr %i.ava, null
  br i1 %.not.i.i1131, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1132, label %bb.og

bb.og:                                            ; preds = %bb.of
  %i.avb = load ptr, ptr %i.ava, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1132

_ZNK7testing15AssertionResult15failure_messageEv.exit1132: ; preds = %bb.og, %bb.of
  %i.avc = phi ptr [ %i.avb, %bb.og ], [ @.str.100, %bb.of ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %150, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 809, ptr noundef %i.avc)
          to label %bb.oh unwind label %bb.ok

bb.oh:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1132
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %150, ptr noundef nonnull align 8 dereferenceable(8) %149)
          to label %bb.oi unwind label %bb.ol

bb.oi:                                            ; preds = %bb.oh
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %150) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %150) #20
  %i.avd = load ptr, ptr %149, align 8, !tbaa !84 ; 3 uses
  %.not.i.i1133 = icmp eq ptr %i.avd, null
  br i1 %.not.i.i1133, label %_ZN7testing7MessageD2Ev.exit1135, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1134

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1134: ; preds = %bb.oi
  %i.ave = load ptr, ptr %i.avd, align 8, !tbaa !52
  %i.avf = getelementptr inbounds nuw i8, ptr %i.ave, i64 8
  %i.avg = load ptr, ptr %i.avf, align 8
  call void %i.avg(ptr noundef nonnull align 8 dereferenceable(128) %i.avd) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1135

_ZN7testing7MessageD2Ev.exit1135:                 ; preds = %bb.oi, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1134
  call void @llvm.lifetime.end.p0(ptr nonnull %149) #20
  br label %bb.on

bb.oj:                                            ; preds = %bb.oe
  %i.avh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1138

bb.ok:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1132
  %i.avi = landingpad { ptr, i32 }
          cleanup
  br label %bb.om

bb.ol:                                            ; preds = %bb.oh
  %i.avj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %150) #20
  br label %bb.om

bb.om:                                            ; preds = %bb.ol, %bb.ok
  %.pn375 = phi { ptr, i32 } [ %i.avj, %bb.ol ], [ %i.avi, %bb.ok ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %150) #20
  %i.avk = load ptr, ptr %149, align 8, !tbaa !84 ; 3 uses
  %.not.i.i1136 = icmp eq ptr %i.avk, null
  br i1 %.not.i.i1136, label %_ZN7testing7MessageD2Ev.exit1138, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1137

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1137: ; preds = %bb.om
  %i.avl = load ptr, ptr %i.avk, align 8, !tbaa !52
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avl, i64 8
  %i.avn = load ptr, ptr %i.avm, align 8
  call void %i.avn(ptr noundef nonnull align 8 dereferenceable(128) %i.avk) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1138

_ZN7testing7MessageD2Ev.exit1138:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1137, %bb.om, %bb.oj
  %.pn375.pn = phi { ptr, i32 } [ %i.avh, %bb.oj ], [ %.pn375, %bb.om ], [ %.pn375, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1137 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %149) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %147) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #20
  br label %bb.zn

bb.on:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_9month_tagEEENS8_INS5_10second_tagEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit1130, %_ZN7testing7MessageD2Ev.exit1135
  %i.avo = getelementptr inbounds nuw i8, ptr %147, i64 8
  %i.avp = load ptr, ptr %i.avo, align 8, !tbaa !82 ; 4 uses
  %.not.i.i1139 = icmp eq ptr %i.avp, null
  br i1 %.not.i.i1139, label %_ZN7testing15AssertionResultD2Ev.exit1143, label %bb.oo

bb.oo:                                            ; preds = %bb.on
  %i.avq = load ptr, ptr %i.avp, align 8, !tbaa !68 ; 2 uses
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avp, i64 16 ; 2 uses
  %i.avs = icmp eq ptr %i.avq, %i.avr
  br i1 %i.avs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1140: ; preds = %bb.oo
  %i.avt = load i64, ptr %i.avr, align 8, !tbaa !69
  %i.avu = add i64 %i.avt, 1
  call void @_ZdlPvm(ptr noundef %i.avq, i64 noundef %i.avu) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1141

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1141: ; preds = %bb.oo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1140
  call void @_ZdlPvm(ptr noundef nonnull %i.avp, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit1143

_ZN7testing15AssertionResultD2Ev.exit1143:        ; preds = %bb.on, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1141
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %151) #20
  %i.avv = call noundef zeroext i1 @_ZN4absl12lts_2026052621ParseLenientCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_10second_tagEEE(i64 8, ptr nonnull @.str.606, ptr noundef nonnull %1) ; 2 uses
  %i.avw = zext i1 %i.avv to i8
  store i8 %i.avw, ptr %151, align 8, !tbaa !79
  %i.avx = getelementptr inbounds nuw i8, ptr %151, i64 8 ; 2 uses
  store ptr null, ptr %i.avx, align 8, !tbaa !107
  %i.avy = getelementptr inbounds nuw i8, ptr %151, i64 16
  store i8 1, ptr %i.avy, align 8, !tbaa !109
  br i1 %i.avv, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1167, label %bb.op

bb.op:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit1143
  call void @llvm.lifetime.start.p0(ptr nonnull %152) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %152)
          to label %bb.oq unwind label %bb.ou

bb.oq:                                            ; preds = %bb.op
  %i.avz = load ptr, ptr %152, align 8, !tbaa !84
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avz, i64 16
  %.sroa.0.0.copyload.i1144 = load i64, ptr %1, align 8, !tbaa !92
  %.sroa.2.0.copyload.i1146 = load i64, ptr %i.a, align 8
  %i.awb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052613time_internallsERSoNS1_4cctz6detail10civil_timeINS1_10second_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.awa, i64 %.sroa.0.0.copyload.i1144, i64 %.sroa.2.0.copyload.i1146)
          to label %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit1148 unwind label %bb.ov ; 0 uses

_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit1148: ; preds = %bb.oq
  call void @llvm.lifetime.start.p0(ptr nonnull %153) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %155) #20
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %155, ptr noundef nonnull align 8 dereferenceable(16) %151, ptr noundef nonnull @.str.607, ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.232)
          to label %bb.or unwind label %bb.ow

bb.or:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit1148
  %i.awc = load ptr, ptr %155, align 8, !tbaa !68
  %i.awd = getelementptr inbounds nuw i8, ptr %155, i64 8
  %i.awe = load i64, ptr %i.awd, align 8, !tbaa !67
  store i64 %i.awe, ptr %154, align 8
  %i.awf = getelementptr inbounds nuw i8, ptr %154, i64 8
  store ptr %i.awc, ptr %i.awf, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %153, i32 noundef 1, i64 66, ptr nonnull @.str.2, i32 noundef 810, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %154)
          to label %bb.os unwind label %bb.ox

bb.os:                                            ; preds = %bb.or
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %153, ptr noundef nonnull align 8 dereferenceable(8) %152)
          to label %bb.ot unwind label %bb.oy

bb.ot:                                            ; preds = %bb.os
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %153) #20
  %i.awg = load ptr, ptr %155, align 8, !tbaa !68 ; 2 uses
  %i.awh = getelementptr inbounds nuw i8, ptr %155, i64 16 ; 2 uses
  %i.awi = icmp eq ptr %i.awg, %i.awh
  br i1 %i.awi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1151: ; preds = %bb.ot
  %i.awj = load i64, ptr %i.awh, align 8, !tbaa !69
  %i.awk = add i64 %i.awj, 1
  call void @_ZdlPvm(ptr noundef %i.awg, i64 noundef %i.awk) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1153: ; preds = %bb.ot, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1151
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #20
  %i.awl = load ptr, ptr %152, align 8, !tbaa !84 ; 3 uses
  %.not.i.i1154 = icmp eq ptr %i.awl, null
  br i1 %.not.i.i1154, label %bb.pb, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1155

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1153
  %i.awm = load ptr, ptr %i.awl, align 8, !tbaa !52
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awm, i64 8
  %i.awo = load ptr, ptr %i.awn, align 8
  call void %i.awo(ptr noundef nonnull align 8 dereferenceable(128) %i.awl) #20, !inline_history !0
  br label %bb.pb

bb.ou:                                            ; preds = %bb.op
  %i.awp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1162

bb.ov:                                            ; preds = %bb.oq
  %i.awq = landingpad { ptr, i32 }
          cleanup
  br label %bb.pa

bb.ow:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit1148
  %i.awr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1159

bb.ox:                                            ; preds = %bb.or
  %i.aws = landingpad { ptr, i32 }
          cleanup
  br label %bb.oz

bb.oy:                                            ; preds = %bb.os
  %i.awt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %153) #20
  br label %bb.oz

bb.oz:                                            ; preds = %bb.oy, %bb.ox
  %.pn378 = phi { ptr, i32 } [ %i.awt, %bb.oy ], [ %i.aws, %bb.ox ] ; 2 uses
  %i.awu = load ptr, ptr %155, align 8, !tbaa !68 ; 2 uses
  %i.awv = getelementptr inbounds nuw i8, ptr %155, i64 16 ; 2 uses
  %i.aww = icmp eq ptr %i.awu, %i.awv
  br i1 %i.aww, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1157: ; preds = %bb.oz
  %i.awx = load i64, ptr %i.awv, align 8, !tbaa !69
  %i.awy = add i64 %i.awx, 1
  call void @_ZdlPvm(ptr noundef %i.awu, i64 noundef %i.awy) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1159

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1159: ; preds = %bb.oz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1157, %bb.ow
  %.pn378.pn = phi { ptr, i32 } [ %i.awr, %bb.ow ], [ %.pn378, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1157 ], [ %.pn378, %bb.oz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #20
  br label %bb.pa

bb.pa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1159, %bb.ov
  %.pn378.pn.pn = phi { ptr, i32 } [ %.pn378.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1159 ], [ %i.awq, %bb.ov ] ; 2 uses
  %i.awz = load ptr, ptr %152, align 8, !tbaa !84 ; 3 uses
  %.not.i.i1160 = icmp eq ptr %i.awz, null
  br i1 %.not.i.i1160, label %_ZN7testing7MessageD2Ev.exit1162, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1161

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1161: ; preds = %bb.pa
  %i.axa = load ptr, ptr %i.awz, align 8, !tbaa !52
  %i.axb = getelementptr inbounds nuw i8, ptr %i.axa, i64 8
  %i.axc = load ptr, ptr %i.axb, align 8
  call void %i.axc(ptr noundef nonnull align 8 dereferenceable(128) %i.awz) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1162

_ZN7testing7MessageD2Ev.exit1162:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1161, %bb.pa, %bb.ou
  %.pn378.pn.pn.pn = phi { ptr, i32 } [ %i.awp, %bb.ou ], [ %.pn378.pn.pn, %bb.pa ], [ %.pn378.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1161 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #20
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %151) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %151) #20
  br label %bb.zn

bb.pb:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1153
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #20
  %.pr1846 = load ptr, ptr %i.avx, align 8, !tbaa !82 ; 4 uses
  %.not.i.i.i1163 = icmp eq ptr %.pr1846, null
  br i1 %.not.i.i.i1163, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1167, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  %i.axd = load ptr, ptr %.pr1846, align 8, !tbaa !68 ; 2 uses
  %i.axe = getelementptr inbounds nuw i8, ptr %.pr1846, i64 16 ; 2 uses
  %i.axf = icmp eq ptr %i.axd, %i.axe
  br i1 %i.axf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1164: ; preds = %bb.pc
  %i.axg = load i64, ptr %i.axe, align 8, !tbaa !69
  %i.axh = add i64 %i.axg, 1
  call void @_ZdlPvm(ptr noundef %i.axd, i64 noundef %i.axh) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1165

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1165: ; preds = %bb.pc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1164
  call void @_ZdlPvm(ptr noundef nonnull %.pr1846, i64 noundef 32) #22
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1167

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1167: ; preds = %_ZN7testing15AssertionResultD2Ev.exit1143, %bb.pb, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1165
  call void @llvm.lifetime.end.p0(ptr nonnull %151) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %156) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %157) #20
  store i64 2015, ptr %157, align 8
  %.sroa.2.0..sroa_idx.i.i1171 = getelementptr inbounds nuw i8, ptr %157, i64 8
  store i40 1798, ptr %.sroa.2.0..sroa_idx.i.i1171, align 8
  %i.axi = load i64, ptr %1, align 8, !tbaa !104, !noalias !1518
  %i.axj = icmp eq i64 %i.axi, 2015
  %i.axk = load <4 x i8>, ptr %i.a, align 8
  %.fr2432 = freeze <4 x i8> %i.axk
  %i.axl = load i8, ptr %i.b, align 4
  %i.axm = icmp eq i8 %i.axl, 0
  %.fr2432.scalar = bitcast <4 x i8> %.fr2432 to i32
  %i.axn = icmp eq i32 %.fr2432.scalar, 1798
  %op.rdx2419 = select i1 %i.axn, i1 %i.axj, i1 false
  %op.rdx2420 = select i1 %op.rdx2419, i1 %i.axm, i1 false
  br i1 %op.rdx2420, label %bb.pd, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagENS1_10second_tagEEEbRKNS3_10civil_timeIT_EERKNS7_IT0_EE.exit.thread.i.i

bb.pd:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1167
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %156)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEENS8_INS5_10second_tagEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagENS1_10second_tagEEEbRKNS3_10civil_timeIT_EERKNS7_IT0_EE.exit.thread.i.i: ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1167
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEENS7_INS4_10second_tagEEEEENS_15AssertionResultEPKcSE_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %156, ptr noundef nonnull @.str.608, ptr noundef nonnull @.str.596, ptr noundef nonnull align 8 dereferenceable(16) %157, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEENS8_INS5_10second_tagEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEENS8_INS5_10second_tagEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit: ; preds = %bb.pd, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagENS1_10second_tagEEEbRKNS3_10civil_timeIT_EERKNS7_IT0_EE.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #20
  %i.axo = load i8, ptr %156, align 8, !tbaa !79, !range !80, !noundef !81
  %i.axp = trunc nuw i8 %i.axo to i1
  br i1 %i.axp, label %bb.pn, label %bb.pe

bb.pe:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEENS8_INS5_10second_tagEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %158) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %158)
          to label %bb.pf unwind label %bb.pj

bb.pf:                                            ; preds = %bb.pe
  call void @llvm.lifetime.start.p0(ptr nonnull %159) #20
  %i.axq = getelementptr inbounds nuw i8, ptr %156, i64 8
  %i.axr = load ptr, ptr %i.axq, align 8, !tbaa !82 ; 2 uses
  %.not.i.i1173 = icmp eq ptr %i.axr, null
  br i1 %.not.i.i1173, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1174, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.axs = load ptr, ptr %i.axr, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1174

_ZNK7testing15AssertionResult15failure_messageEv.exit1174: ; preds = %bb.pg, %bb.pf
  %i.axt = phi ptr [ %i.axs, %bb.pg ], [ @.str.100, %bb.pf ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %159, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 811, ptr noundef %i.axt)
          to label %bb.ph unwind label %bb.pk

bb.ph:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1174
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %159, ptr noundef nonnull align 8 dereferenceable(8) %158)
          to label %bb.pi unwind label %bb.pl

bb.pi:                                            ; preds = %bb.ph
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %159) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %159) #20
  %i.axu = load ptr, ptr %158, align 8, !tbaa !84 ; 3 uses
  %.not.i.i1175 = icmp eq ptr %i.axu, null
  br i1 %.not.i.i1175, label %_ZN7testing7MessageD2Ev.exit1177, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1176

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1176: ; preds = %bb.pi
  %i.axv = load ptr, ptr %i.axu, align 8, !tbaa !52
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axv, i64 8
  %i.axx = load ptr, ptr %i.axw, align 8
  call void %i.axx(ptr noundef nonnull align 8 dereferenceable(128) %i.axu) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1177

_ZN7testing7MessageD2Ev.exit1177:                 ; preds = %bb.pi, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1176
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #20
  br label %bb.pn

bb.pj:                                            ; preds = %bb.pe
  %i.axy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1180

bb.pk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1174
  %i.axz = landingpad { ptr, i32 }
          cleanup
  br label %bb.pm

bb.pl:                                            ; preds = %bb.ph
  %i.aya = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %159) #20
  br label %bb.pm

bb.pm:                                            ; preds = %bb.pl, %bb.pk
  %.pn383 = phi { ptr, i32 } [ %i.aya, %bb.pl ], [ %i.axz, %bb.pk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %159) #20
  %i.ayb = load ptr, ptr %158, align 8, !tbaa !84 ; 3 uses
  %.not.i.i1178 = icmp eq ptr %i.ayb, null
  br i1 %.not.i.i1178, label %_ZN7testing7MessageD2Ev.exit1180, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1179

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1179: ; preds = %bb.pm
  %i.ayc = load ptr, ptr %i.ayb, align 8, !tbaa !52
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.ayc, i64 8
  %i.aye = load ptr, ptr %i.ayd, align 8
  call void %i.aye(ptr noundef nonnull align 8 dereferenceable(128) %i.ayb) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1180

_ZN7testing7MessageD2Ev.exit1180:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1179, %bb.pm, %bb.pj
  %.pn383.pn = phi { ptr, i32 } [ %i.axy, %bb.pj ], [ %.pn383, %bb.pm ], [ %.pn383, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1179 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %156) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #20
  br label %bb.zn

bb.pn:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEENS8_INS5_10second_tagEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit, %_ZN7testing7MessageD2Ev.exit1177
  %i.ayf = getelementptr inbounds nuw i8, ptr %156, i64 8
  %i.ayg = load ptr, ptr %i.ayf, align 8, !tbaa !82 ; 4 uses
  %.not.i.i1181 = icmp eq ptr %i.ayg, null
  br i1 %.not.i.i1181, label %_ZN7testing15AssertionResultD2Ev.exit1185, label %bb.po

bb.po:                                            ; preds = %bb.pn
  %i.ayh = load ptr, ptr %i.ayg, align 8, !tbaa !68 ; 2 uses
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.ayg, i64 16 ; 2 uses
  %i.ayj = icmp eq ptr %i.ayh, %i.ayi
  br i1 %i.ayj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1182: ; preds = %bb.po
  %i.ayk = load i64, ptr %i.ayi, align 8, !tbaa !69
  %i.ayl = add i64 %i.ayk, 1
  call void @_ZdlPvm(ptr noundef %i.ayh, i64 noundef %i.ayl) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1183

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1183: ; preds = %bb.po, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1182
  call void @_ZdlPvm(ptr noundef nonnull %i.ayg, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit1185

_ZN7testing15AssertionResultD2Ev.exit1185:        ; preds = %bb.pn, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1183
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %160) #20
  %i.aym = call noundef zeroext i1 @_ZN4absl12lts_2026052621ParseLenientCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_10second_tagEEE(i64 10, ptr nonnull @.str.609, ptr noundef nonnull %1) ; 2 uses
  %i.ayn = zext i1 %i.aym to i8
  store i8 %i.ayn, ptr %160, align 8, !tbaa !79
  %i.ayo = getelementptr inbounds nuw i8, ptr %160, i64 8 ; 2 uses
  store ptr null, ptr %i.ayo, align 8, !tbaa !107
  %i.ayp = getelementptr inbounds nuw i8, ptr %160, i64 16
  store i8 1, ptr %i.ayp, align 8, !tbaa !109
  br i1 %i.aym, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1209, label %bb.pp

bb.pp:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit1185
  call void @llvm.lifetime.start.p0(ptr nonnull %161) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %161)
          to label %bb.pq unwind label %bb.pu

bb.pq:                                            ; preds = %bb.pp
  %i.ayq = load ptr, ptr %161, align 8, !tbaa !84
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayq, i64 16
  %.sroa.0.0.copyload.i1186 = load i64, ptr %1, align 8, !tbaa !92
  %.sroa.2.0.copyload.i1188 = load i64, ptr %i.a, align 8
  %i.ays = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052613time_internallsERSoNS1_4cctz6detail10civil_timeINS1_10second_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.ayr, i64 %.sroa.0.0.copyload.i1186, i64 %.sroa.2.0.copyload.i1188)
          to label %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit1190 unwind label %bb.pv ; 0 uses

_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit1190: ; preds = %bb.pq
  call void @llvm.lifetime.start.p0(ptr nonnull %162) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %164) #20
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %164, ptr noundef nonnull align 8 dereferenceable(16) %160, ptr noundef nonnull @.str.610, ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.232)
          to label %bb.pr unwind label %bb.pw

bb.pr:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit1190
  %i.ayt = load ptr, ptr %164, align 8, !tbaa !68
  %i.ayu = getelementptr inbounds nuw i8, ptr %164, i64 8
  %i.ayv = load i64, ptr %i.ayu, align 8, !tbaa !67
  store i64 %i.ayv, ptr %163, align 8
  %i.ayw = getelementptr inbounds nuw i8, ptr %163, i64 8
  store ptr %i.ayt, ptr %i.ayw, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %162, i32 noundef 1, i64 66, ptr nonnull @.str.2, i32 noundef 812, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %163)
          to label %bb.ps unwind label %bb.px

bb.ps:                                            ; preds = %bb.pr
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %162, ptr noundef nonnull align 8 dereferenceable(8) %161)
          to label %bb.pt unwind label %bb.py

bb.pt:                                            ; preds = %bb.ps
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %162) #20
  %i.ayx = load ptr, ptr %164, align 8, !tbaa !68 ; 2 uses
  %i.ayy = getelementptr inbounds nuw i8, ptr %164, i64 16 ; 2 uses
  %i.ayz = icmp eq ptr %i.ayx, %i.ayy
  br i1 %i.ayz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1193: ; preds = %bb.pt
  %i.aza = load i64, ptr %i.ayy, align 8, !tbaa !69
  %i.azb = add i64 %i.aza, 1
  call void @_ZdlPvm(ptr noundef %i.ayx, i64 noundef %i.azb) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1195

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1195: ; preds = %bb.pt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1193
  call void @llvm.lifetime.end.p0(ptr nonnull %164) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %162) #20
  %i.azc = load ptr, ptr %161, align 8, !tbaa !84 ; 3 uses
  %.not.i.i1196 = icmp eq ptr %i.azc, null
  br i1 %.not.i.i1196, label %bb.qb, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1197

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1197: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1195
  %i.azd = load ptr, ptr %i.azc, align 8, !tbaa !52
  %i.aze = getelementptr inbounds nuw i8, ptr %i.azd, i64 8
  %i.azf = load ptr, ptr %i.aze, align 8
  call void %i.azf(ptr noundef nonnull align 8 dereferenceable(128) %i.azc) #20, !inline_history !0
  br label %bb.qb

bb.pu:                                            ; preds = %bb.pp
  %i.azg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1204

bb.pv:                                            ; preds = %bb.pq
  %i.azh = landingpad { ptr, i32 }
          cleanup
  br label %bb.qa

bb.pw:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit1190
  %i.azi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1201

bb.px:                                            ; preds = %bb.pr
  %i.azj = landingpad { ptr, i32 }
          cleanup
  br label %bb.pz

bb.py:                                            ; preds = %bb.ps
  %i.azk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %162) #20
  br label %bb.pz

bb.pz:                                            ; preds = %bb.py, %bb.px
  %.pn386 = phi { ptr, i32 } [ %i.azk, %bb.py ], [ %i.azj, %bb.px ] ; 2 uses
  %i.azl = load ptr, ptr %164, align 8, !tbaa !68 ; 2 uses
  %i.azm = getelementptr inbounds nuw i8, ptr %164, i64 16 ; 2 uses
  %i.azn = icmp eq ptr %i.azl, %i.azm
  br i1 %i.azn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1199: ; preds = %bb.pz
  %i.azo = load i64, ptr %i.azm, align 8, !tbaa !69
  %i.azp = add i64 %i.azo, 1
  call void @_ZdlPvm(ptr noundef %i.azl, i64 noundef %i.azp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1201

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1201: ; preds = %bb.pz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1199, %bb.pw
  %.pn386.pn = phi { ptr, i32 } [ %i.azi, %bb.pw ], [ %.pn386, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1199 ], [ %.pn386, %bb.pz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %164) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %162) #20
  br label %bb.qa

bb.qa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1201, %bb.pv
  %.pn386.pn.pn = phi { ptr, i32 } [ %.pn386.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1201 ], [ %i.azh, %bb.pv ] ; 2 uses
  %i.azq = load ptr, ptr %161, align 8, !tbaa !84 ; 3 uses
  %.not.i.i1202 = icmp eq ptr %i.azq, null
  br i1 %.not.i.i1202, label %_ZN7testing7MessageD2Ev.exit1204, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1203

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1203: ; preds = %bb.qa
  %i.azr = load ptr, ptr %i.azq, align 8, !tbaa !52
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azr, i64 8
  %i.azt = load ptr, ptr %i.azs, align 8
  call void %i.azt(ptr noundef nonnull align 8 dereferenceable(128) %i.azq) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1204

_ZN7testing7MessageD2Ev.exit1204:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1203, %bb.qa, %bb.pu
  %.pn386.pn.pn.pn = phi { ptr, i32 } [ %i.azg, %bb.pu ], [ %.pn386.pn.pn, %bb.qa ], [ %.pn386.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1203 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %161) #20
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %160) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %160) #20
  br label %bb.zn

bb.qb:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1197, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1195
  call void @llvm.lifetime.end.p0(ptr nonnull %161) #20
  %.pr1849 = load ptr, ptr %i.ayo, align 8, !tbaa !82 ; 4 uses
  %.not.i.i.i1205 = icmp eq ptr %.pr1849, null
  br i1 %.not.i.i.i1205, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1209, label %bb.qc

bb.qc:                                            ; preds = %bb.qb
  %i.azu = load ptr, ptr %.pr1849, align 8, !tbaa !68 ; 2 uses
  %i.azv = getelementptr inbounds nuw i8, ptr %.pr1849, i64 16 ; 2 uses
  %i.azw = icmp eq ptr %i.azu, %i.azv
  br i1 %i.azw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1206: ; preds = %bb.qc
  %i.azx = load i64, ptr %i.azv, align 8, !tbaa !69
  %i.azy = add i64 %i.azx, 1
  call void @_ZdlPvm(ptr noundef %i.azu, i64 noundef %i.azy) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1207

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1207: ; preds = %bb.qc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1206
  call void @_ZdlPvm(ptr noundef nonnull %.pr1849, i64 noundef 32) #22
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1209

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1209: ; preds = %_ZN7testing15AssertionResultD2Ev.exit1185, %bb.qb, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1207
  call void @llvm.lifetime.end.p0(ptr nonnull %160) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %165) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %166) #20
  store i64 2015, ptr %166, align 8
  %.sroa.2.0..sroa_idx.i.i1213 = getelementptr inbounds nuw i8, ptr %166, i64 8
  store i40 1798, ptr %.sroa.2.0..sroa_idx.i.i1213, align 8
  %i.azz = load i64, ptr %1, align 8, !tbaa !104, !noalias !1519
  %i.baa = icmp eq i64 %i.azz, 2015
  %i.bab = load <4 x i8>, ptr %i.a, align 8
  %.fr2433 = freeze <4 x i8> %i.bab
  %i.bac = load i8, ptr %i.b, align 4
  %i.bad = icmp eq i8 %i.bac, 0
  %.fr2433.scalar = bitcast <4 x i8> %.fr2433 to i32
  %i.bae = icmp eq i32 %.fr2433.scalar, 1798
  %op.rdx2417 = select i1 %i.bae, i1 %i.baa, i1 false
  %op.rdx2418 = select i1 %op.rdx2417, i1 %i.bad, i1 false
  br i1 %op.rdx2418, label %bb.qd, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagENS1_10second_tagEEEbRKNS3_10civil_timeIT_EERKNS7_IT0_EE.exit.thread.i.i1215

bb.qd:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1209
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %165)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEENS8_INS5_10second_tagEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit1217

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagENS1_10second_tagEEEbRKNS3_10civil_timeIT_EERKNS7_IT0_EE.exit.thread.i.i1215: ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1209
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEENS7_INS4_10second_tagEEEEENS_15AssertionResultEPKcSE_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %165, ptr noundef nonnull @.str.608, ptr noundef nonnull @.str.596, ptr noundef nonnull align 8 dereferenceable(16) %166, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEENS8_INS5_10second_tagEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit1217

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEENS8_INS5_10second_tagEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit1217: ; preds = %bb.qd, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagENS1_10second_tagEEEbRKNS3_10civil_timeIT_EERKNS7_IT0_EE.exit.thread.i.i1215
  call void @llvm.lifetime.end.p0(ptr nonnull %166) #20
  %i.baf = load i8, ptr %165, align 8, !tbaa !79, !range !80, !noundef !81
  %i.bag = trunc nuw i8 %i.baf to i1
  br i1 %i.bag, label %bb.qn, label %bb.qe

bb.qe:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEENS8_INS5_10second_tagEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit1217
  call void @llvm.lifetime.start.p0(ptr nonnull %167) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %167)
          to label %bb.qf unwind label %bb.qj

bb.qf:                                            ; preds = %bb.qe
  call void @llvm.lifetime.start.p0(ptr nonnull %168) #20
  %i.bah = getelementptr inbounds nuw i8, ptr %165, i64 8
  %i.bai = load ptr, ptr %i.bah, align 8, !tbaa !82 ; 2 uses
  %.not.i.i1218 = icmp eq ptr %i.bai, null
  br i1 %.not.i.i1218, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1219, label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  %i.baj = load ptr, ptr %i.bai, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1219

_ZNK7testing15AssertionResult15failure_messageEv.exit1219: ; preds = %bb.qg, %bb.qf
  %i.bak = phi ptr [ %i.baj, %bb.qg ], [ @.str.100, %bb.qf ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %168, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 813, ptr noundef %i.bak)
          to label %bb.qh unwind label %bb.qk

bb.qh:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1219
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %168, ptr noundef nonnull align 8 dereferenceable(8) %167)
          to label %bb.qi unwind label %bb.ql

bb.qi:                                            ; preds = %bb.qh
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %168) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %168) #20
  %i.bal = load ptr, ptr %167, align 8, !tbaa !84 ; 3 uses
  %.not.i.i1220 = icmp eq ptr %i.bal, null
  br i1 %.not.i.i1220, label %_ZN7testing7MessageD2Ev.exit1222, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1221

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1221: ; preds = %bb.qi
  %i.bam = load ptr, ptr %i.bal, align 8, !tbaa !52
  %i.ban = getelementptr inbounds nuw i8, ptr %i.bam, i64 8
  %i.bao = load ptr, ptr %i.ban, align 8
  call void %i.bao(ptr noundef nonnull align 8 dereferenceable(128) %i.bal) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1222

_ZN7testing7MessageD2Ev.exit1222:                 ; preds = %bb.qi, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1221
  call void @llvm.lifetime.end.p0(ptr nonnull %167) #20
  br label %bb.qn

bb.qj:                                            ; preds = %bb.qe
  %i.bap = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1225

bb.qk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1219
  %i.baq = landingpad { ptr, i32 }
          cleanup
  br label %bb.qm

bb.ql:                                            ; preds = %bb.qh
  %i.bar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %168) #20
  br label %bb.qm

bb.qm:                                            ; preds = %bb.ql, %bb.qk
  %.pn391 = phi { ptr, i32 } [ %i.bar, %bb.ql ], [ %i.baq, %bb.qk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %168) #20
  %i.bas = load ptr, ptr %167, align 8, !tbaa !84 ; 3 uses
  %.not.i.i1223 = icmp eq ptr %i.bas, null
  br i1 %.not.i.i1223, label %_ZN7testing7MessageD2Ev.exit1225, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1224

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1224: ; preds = %bb.qm
  %i.bat = load ptr, ptr %i.bas, align 8, !tbaa !52
  %i.bau = getelementptr inbounds nuw i8, ptr %i.bat, i64 8
  %i.bav = load ptr, ptr %i.bau, align 8
  call void %i.bav(ptr noundef nonnull align 8 dereferenceable(128) %i.bas) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1225

_ZN7testing7MessageD2Ev.exit1225:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1224, %bb.qm, %bb.qj
  %.pn391.pn = phi { ptr, i32 } [ %i.bap, %bb.qj ], [ %.pn391, %bb.qm ], [ %.pn391, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1224 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %167) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %165) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %165) #20
  br label %bb.zn

bb.qn:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEENS8_INS5_10second_tagEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit1217, %_ZN7testing7MessageD2Ev.exit1222
  %i.baw = getelementptr inbounds nuw i8, ptr %165, i64 8
  %i.bax = load ptr, ptr %i.baw, align 8, !tbaa !82 ; 4 uses
  %.not.i.i1226 = icmp eq ptr %i.bax, null
  br i1 %.not.i.i1226, label %_ZN7testing15AssertionResultD2Ev.exit1230, label %bb.qo

bb.qo:                                            ; preds = %bb.qn
  %i.bay = load ptr, ptr %i.bax, align 8, !tbaa !68 ; 2 uses
  %i.baz = getelementptr inbounds nuw i8, ptr %i.bax, i64 16 ; 2 uses
  %i.bba = icmp eq ptr %i.bay, %i.baz
  br i1 %i.bba, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1227: ; preds = %bb.qo
  %i.bbb = load i64, ptr %i.baz, align 8, !tbaa !69
  %i.bbc = add i64 %i.bbb, 1
  call void @_ZdlPvm(ptr noundef %i.bay, i64 noundef %i.bbc) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1228

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1228: ; preds = %bb.qo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1227
  call void @_ZdlPvm(ptr noundef nonnull %i.bax, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit1230

_ZN7testing15AssertionResultD2Ev.exit1230:        ; preds = %bb.qn, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1228
  call void @llvm.lifetime.end.p0(ptr nonnull %165) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %169) #20
  %i.bbd = call noundef zeroext i1 @_ZN4absl12lts_2026052621ParseLenientCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_10second_tagEEE(i64 20, ptr nonnull @.str.611, ptr noundef nonnull %1) ; 2 uses
  %i.bbe = zext i1 %i.bbd to i8
  store i8 %i.bbe, ptr %169, align 8, !tbaa !79
  %i.bbf = getelementptr inbounds nuw i8, ptr %169, i64 8 ; 2 uses
  store ptr null, ptr %i.bbf, align 8, !tbaa !107
  %i.bbg = getelementptr inbounds nuw i8, ptr %169, i64 16
  store i8 1, ptr %i.bbg, align 8, !tbaa !109
  br i1 %i.bbd, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1254, label %bb.qp

bb.qp:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit1230
  call void @llvm.lifetime.start.p0(ptr nonnull %170) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %170)
          to label %bb.qq unwind label %bb.qu

bb.qq:                                            ; preds = %bb.qp
  %i.bbh = load ptr, ptr %170, align 8, !tbaa !84
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.bbh, i64 16
  %.sroa.0.0.copyload.i1231 = load i64, ptr %1, align 8, !tbaa !92
  %.sroa.2.0.copyload.i1233 = load i64, ptr %i.a, align 8
  %i.bbj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052613time_internallsERSoNS1_4cctz6detail10civil_timeINS1_10second_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.bbi, i64 %.sroa.0.0.copyload.i1231, i64 %.sroa.2.0.copyload.i1233)
          to label %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit1235 unwind label %bb.qv ; 0 uses

_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit1235: ; preds = %bb.qq
  call void @llvm.lifetime.start.p0(ptr nonnull %171) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %173) #20
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %173, ptr noundef nonnull align 8 dereferenceable(16) %169, ptr noundef nonnull @.str.612, ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.232)
          to label %bb.qr unwind label %bb.qw

bb.qr:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit1235
  %i.bbk = load ptr, ptr %173, align 8, !tbaa !68
  %i.bbl = getelementptr inbounds nuw i8, ptr %173, i64 8
  %i.bbm = load i64, ptr %i.bbl, align 8, !tbaa !67
  store i64 %i.bbm, ptr %172, align 8
  %i.bbn = getelementptr inbounds nuw i8, ptr %172, i64 8
  store ptr %i.bbk, ptr %i.bbn, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %171, i32 noundef 1, i64 66, ptr nonnull @.str.2, i32 noundef 814, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %172)
          to label %bb.qs unwind label %bb.qx

bb.qs:                                            ; preds = %bb.qr
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %171, ptr noundef nonnull align 8 dereferenceable(8) %170)
          to label %bb.qt unwind label %bb.qy

bb.qt:                                            ; preds = %bb.qs
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %171) #20
  %i.bbo = load ptr, ptr %173, align 8, !tbaa !68 ; 2 uses
  %i.bbp = getelementptr inbounds nuw i8, ptr %173, i64 16 ; 2 uses
  %i.bbq = icmp eq ptr %i.bbo, %i.bbp
  br i1 %i.bbq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1238

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1238: ; preds = %bb.qt
  %i.bbr = load i64, ptr %i.bbp, align 8, !tbaa !69
  %i.bbs = add i64 %i.bbr, 1
  call void @_ZdlPvm(ptr noundef %i.bbo, i64 noundef %i.bbs) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1240

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1240: ; preds = %bb.qt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1238
  call void @llvm.lifetime.end.p0(ptr nonnull %173) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %171) #20
  %i.bbt = load ptr, ptr %170, align 8, !tbaa !84 ; 3 uses
  %.not.i.i1241 = icmp eq ptr %i.bbt, null
  br i1 %.not.i.i1241, label %bb.rb, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1242

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1242: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1240
  %i.bbu = load ptr, ptr %i.bbt, align 8, !tbaa !52
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bbu, i64 8
  %i.bbw = load ptr, ptr %i.bbv, align 8
  call void %i.bbw(ptr noundef nonnull align 8 dereferenceable(128) %i.bbt) #20, !inline_history !0
  br label %bb.rb

bb.qu:                                            ; preds = %bb.qp
  %i.bbx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1249

bb.qv:                                            ; preds = %bb.qq
  %i.bby = landingpad { ptr, i32 }
          cleanup
  br label %bb.ra

bb.qw:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit1235
  %i.bbz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1246

bb.qx:                                            ; preds = %bb.qr
  %i.bca = landingpad { ptr, i32 }
          cleanup
  br label %bb.qz

bb.qy:                                            ; preds = %bb.qs
  %i.bcb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %171) #20
  br label %bb.qz

bb.qz:                                            ; preds = %bb.qy, %bb.qx
  %.pn394 = phi { ptr, i32 } [ %i.bcb, %bb.qy ], [ %i.bca, %bb.qx ] ; 2 uses
  %i.bcc = load ptr, ptr %173, align 8, !tbaa !68 ; 2 uses
  %i.bcd = getelementptr inbounds nuw i8, ptr %173, i64 16 ; 2 uses
  %i.bce = icmp eq ptr %i.bcc, %i.bcd
  br i1 %i.bce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1244

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1244: ; preds = %bb.qz
  %i.bcf = load i64, ptr %i.bcd, align 8, !tbaa !69
  %i.bcg = add i64 %i.bcf, 1
  call void @_ZdlPvm(ptr noundef %i.bcc, i64 noundef %i.bcg) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1246

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1246: ; preds = %bb.qz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1244, %bb.qw
  %.pn394.pn = phi { ptr, i32 } [ %i.bbz, %bb.qw ], [ %.pn394, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1244 ], [ %.pn394, %bb.qz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %173) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %171) #20
  br label %bb.ra

bb.ra:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1246, %bb.qv
  %.pn394.pn.pn = phi { ptr, i32 } [ %.pn394.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1246 ], [ %i.bby, %bb.qv ] ; 2 uses
  %i.bch = load ptr, ptr %170, align 8, !tbaa !84 ; 3 uses
  %.not.i.i1247 = icmp eq ptr %i.bch, null
  br i1 %.not.i.i1247, label %_ZN7testing7MessageD2Ev.exit1249, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1248

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1248: ; preds = %bb.ra
  %i.bci = load ptr, ptr %i.bch, align 8, !tbaa !52
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bci, i64 8
  %i.bck = load ptr, ptr %i.bcj, align 8
  call void %i.bck(ptr noundef nonnull align 8 dereferenceable(128) %i.bch) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1249

_ZN7testing7MessageD2Ev.exit1249:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1248, %bb.ra, %bb.qu
  %.pn394.pn.pn.pn = phi { ptr, i32 } [ %i.bbx, %bb.qu ], [ %.pn394.pn.pn, %bb.ra ], [ %.pn394.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1248 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %170) #20
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %169) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %169) #20
  br label %bb.zn

bb.rb:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1242, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1240
  call void @llvm.lifetime.end.p0(ptr nonnull %170) #20
  %.pr1852 = load ptr, ptr %i.bbf, align 8, !tbaa !82 ; 4 uses
  %.not.i.i.i1250 = icmp eq ptr %.pr1852, null
  br i1 %.not.i.i.i1250, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1254, label %bb.rc

bb.rc:                                            ; preds = %bb.rb
  %i.bcl = load ptr, ptr %.pr1852, align 8, !tbaa !68 ; 2 uses
  %i.bcm = getelementptr inbounds nuw i8, ptr %.pr1852, i64 16 ; 2 uses
  %i.bcn = icmp eq ptr %i.bcl, %i.bcm
  br i1 %i.bcn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1252, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1251: ; preds = %bb.rc
  %i.bco = load i64, ptr %i.bcm, align 8, !tbaa !69
  %i.bcp = add i64 %i.bco, 1
  call void @_ZdlPvm(ptr noundef %i.bcl, i64 noundef %i.bcp) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1252

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1252: ; preds = %bb.rc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1251
  call void @_ZdlPvm(ptr noundef nonnull %.pr1852, i64 noundef 32) #22
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1254

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1254: ; preds = %_ZN7testing15AssertionResultD2Ev.exit1230, %bb.rb, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1252
  call void @llvm.lifetime.end.p0(ptr nonnull %169) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %174) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %175) #20
  store i64 2015, ptr %175, align 8
  %.sroa.2.0..sroa_idx.i.i1257 = getelementptr inbounds nuw i8, ptr %175, i64 8
  store i40 51724814086, ptr %.sroa.2.0..sroa_idx.i.i1257, align 8
  %i.bcq = load i64, ptr %1, align 8, !tbaa !104, !noalias !1520
  %i.bcr = icmp eq i64 %i.bcq, 2015
  %i.bcs = load <4 x i8>, ptr %i.a, align 8
  %.fr2434 = freeze <4 x i8> %i.bcs
  %i.bct = load i8, ptr %i.b, align 4
  %i.bcu = icmp eq i8 %i.bct, 12
  %.fr2434.scalar = bitcast <4 x i8> %.fr2434 to i32
  %i.bcv = icmp eq i32 %.fr2434.scalar, 185206534
  %op.rdx2415 = select i1 %i.bcv, i1 %i.bcr, i1 false
  %op.rdx2416 = select i1 %op.rdx2415, i1 %i.bcu, i1 false
  br i1 %op.rdx2416, label %bb.rd, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i

bb.rd:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1254
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %174)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i: ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1254
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %174, ptr noundef nonnull @.str.613, ptr noundef nonnull @.str.596, ptr noundef nonnull align 8 dereferenceable(16) %175, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit: ; preds = %bb.rd, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %175) #20
  %i.bcw = load i8, ptr %174, align 8, !tbaa !79, !range !80, !noundef !81
  %i.bcx = trunc nuw i8 %i.bcw to i1
  br i1 %i.bcx, label %bb.rn, label %bb.re

bb.re:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %176) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %176)
          to label %bb.rf unwind label %bb.rj

bb.rf:                                            ; preds = %bb.re
  call void @llvm.lifetime.start.p0(ptr nonnull %177) #20
  %i.bcy = getelementptr inbounds nuw i8, ptr %174, i64 8
  %i.bcz = load ptr, ptr %i.bcy, align 8, !tbaa !82 ; 2 uses
  %.not.i.i1259 = icmp eq ptr %i.bcz, null
  br i1 %.not.i.i1259, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1260, label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  %i.bda = load ptr, ptr %i.bcz, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1260

_ZNK7testing15AssertionResult15failure_messageEv.exit1260: ; preds = %bb.rg, %bb.rf
  %i.bdb = phi ptr [ %i.bda, %bb.rg ], [ @.str.100, %bb.rf ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %177, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 815, ptr noundef %i.bdb)
          to label %bb.rh unwind label %bb.rk

bb.rh:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1260
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %177, ptr noundef nonnull align 8 dereferenceable(8) %176)
          to label %bb.ri unwind label %bb.rl

bb.ri:                                            ; preds = %bb.rh
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %177) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %177) #20
  %i.bdc = load ptr, ptr %176, align 8, !tbaa !84 ; 3 uses
  %.not.i.i1261 = icmp eq ptr %i.bdc, null
  br i1 %.not.i.i1261, label %_ZN7testing7MessageD2Ev.exit1263, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1262

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1262: ; preds = %bb.ri
  %i.bdd = load ptr, ptr %i.bdc, align 8, !tbaa !52
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bdd, i64 8
  %i.bdf = load ptr, ptr %i.bde, align 8
  call void %i.bdf(ptr noundef nonnull align 8 dereferenceable(128) %i.bdc) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1263

_ZN7testing7MessageD2Ev.exit1263:                 ; preds = %bb.ri, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1262
  call void @llvm.lifetime.end.p0(ptr nonnull %176) #20
  br label %bb.rn

bb.rj:                                            ; preds = %bb.re
  %i.bdg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1266

bb.rk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1260
  %i.bdh = landingpad { ptr, i32 }
          cleanup
  br label %bb.rm

bb.rl:                                            ; preds = %bb.rh
  %i.bdi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %177) #20
  br label %bb.rm

bb.rm:                                            ; preds = %bb.rl, %bb.rk
  %.pn399 = phi { ptr, i32 } [ %i.bdi, %bb.rl ], [ %i.bdh, %bb.rk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %177) #20
  %i.bdj = load ptr, ptr %176, align 8, !tbaa !84 ; 3 uses
  %.not.i.i1264 = icmp eq ptr %i.bdj, null
  br i1 %.not.i.i1264, label %_ZN7testing7MessageD2Ev.exit1266, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1265

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1265: ; preds = %bb.rm
  %i.bdk = load ptr, ptr %i.bdj, align 8, !tbaa !52
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bdk, i64 8
  %i.bdm = load ptr, ptr %i.bdl, align 8
  call void %i.bdm(ptr noundef nonnull align 8 dereferenceable(128) %i.bdj) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1266

_ZN7testing7MessageD2Ev.exit1266:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1265, %bb.rm, %bb.rj
  %.pn399.pn = phi { ptr, i32 } [ %i.bdg, %bb.rj ], [ %.pn399, %bb.rm ], [ %.pn399, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1265 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %176) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %174) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %174) #20
  br label %bb.zn

bb.rn:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit, %_ZN7testing7MessageD2Ev.exit1263
  %i.bdn = getelementptr inbounds nuw i8, ptr %174, i64 8
  %i.bdo = load ptr, ptr %i.bdn, align 8, !tbaa !82 ; 4 uses
  %.not.i.i1267 = icmp eq ptr %i.bdo, null
  br i1 %.not.i.i1267, label %_ZN7testing15AssertionResultD2Ev.exit1271, label %bb.ro

bb.ro:                                            ; preds = %bb.rn
  %i.bdp = load ptr, ptr %i.bdo, align 8, !tbaa !68 ; 2 uses
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bdo, i64 16 ; 2 uses
  %i.bdr = icmp eq ptr %i.bdp, %i.bdq
  br i1 %i.bdr, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1269, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1268

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1268: ; preds = %bb.ro
  %i.bds = load i64, ptr %i.bdq, align 8, !tbaa !69
  %i.bdt = add i64 %i.bds, 1
  call void @_ZdlPvm(ptr noundef %i.bdp, i64 noundef %i.bdt) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1269

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1269: ; preds = %bb.ro, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1268
  call void @_ZdlPvm(ptr noundef nonnull %i.bdo, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit1271

_ZN7testing15AssertionResultD2Ev.exit1271:        ; preds = %bb.rn, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1269
  call void @llvm.lifetime.end.p0(ptr nonnull %174) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %178) #20
  %i.bdu = call noundef zeroext i1 @_ZN4absl12lts_2026052621ParseLenientCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_10second_tagEEE(i64 21, ptr nonnull @.str.614, ptr noundef nonnull %1) ; 2 uses
  %i.bdv = zext i1 %i.bdu to i8
  store i8 %i.bdv, ptr %178, align 8, !tbaa !79
  %i.bdw = getelementptr inbounds nuw i8, ptr %178, i64 8 ; 2 uses
  store ptr null, ptr %i.bdw, align 8, !tbaa !107
  %i.bdx = getelementptr inbounds nuw i8, ptr %178, i64 16
  store i8 1, ptr %i.bdx, align 8, !tbaa !109
  br i1 %i.bdu, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1295, label %bb.rp

bb.rp:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit1271
  call void @llvm.lifetime.start.p0(ptr nonnull %179) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %179)
          to label %bb.rq unwind label %bb.ru

bb.rq:                                            ; preds = %bb.rp
  %i.bdy = load ptr, ptr %179, align 8, !tbaa !84
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bdy, i64 16
  %.sroa.0.0.copyload.i1272 = load i64, ptr %1, align 8, !tbaa !92
  %.sroa.2.0.copyload.i1274 = load i64, ptr %i.a, align 8
  %i.bea = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052613time_internallsERSoNS1_4cctz6detail10civil_timeINS1_10second_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.bdz, i64 %.sroa.0.0.copyload.i1272, i64 %.sroa.2.0.copyload.i1274)
          to label %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit1276 unwind label %bb.rv ; 0 uses

_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit1276: ; preds = %bb.rq
  call void @llvm.lifetime.start.p0(ptr nonnull %180) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %182) #20
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %182, ptr noundef nonnull align 8 dereferenceable(16) %178, ptr noundef nonnull @.str.615, ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.232)
          to label %bb.rr unwind label %bb.rw

bb.rr:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit1276
  %i.beb = load ptr, ptr %182, align 8, !tbaa !68
  %i.bec = getelementptr inbounds nuw i8, ptr %182, i64 8
  %i.bed = load i64, ptr %i.bec, align 8, !tbaa !67
  store i64 %i.bed, ptr %181, align 8
  %i.bee = getelementptr inbounds nuw i8, ptr %181, i64 8
  store ptr %i.beb, ptr %i.bee, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %180, i32 noundef 1, i64 66, ptr nonnull @.str.2, i32 noundef 816, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %181)
          to label %bb.rs unwind label %bb.rx

bb.rs:                                            ; preds = %bb.rr
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %180, ptr noundef nonnull align 8 dereferenceable(8) %179)
          to label %bb.rt unwind label %bb.ry

bb.rt:                                            ; preds = %bb.rs
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %180) #20
  %i.bef = load ptr, ptr %182, align 8, !tbaa !68 ; 2 uses
  %i.beg = getelementptr inbounds nuw i8, ptr %182, i64 16 ; 2 uses
  %i.beh = icmp eq ptr %i.bef, %i.beg
  br i1 %i.beh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1281, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1279

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1279: ; preds = %bb.rt
  %i.bei = load i64, ptr %i.beg, align 8, !tbaa !69
  %i.bej = add i64 %i.bei, 1
  call void @_ZdlPvm(ptr noundef %i.bef, i64 noundef %i.bej) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1281

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1281: ; preds = %bb.rt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1279
  call void @llvm.lifetime.end.p0(ptr nonnull %182) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %180) #20
  %i.bek = load ptr, ptr %179, align 8, !tbaa !84 ; 3 uses
  %.not.i.i1282 = icmp eq ptr %i.bek, null
  br i1 %.not.i.i1282, label %bb.sb, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1283

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1283: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1281
  %i.bel = load ptr, ptr %i.bek, align 8, !tbaa !52
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bel, i64 8
  %i.ben = load ptr, ptr %i.bem, align 8
  call void %i.ben(ptr noundef nonnull align 8 dereferenceable(128) %i.bek) #20, !inline_history !0
  br label %bb.sb

bb.ru:                                            ; preds = %bb.rp
  %i.beo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1290

bb.rv:                                            ; preds = %bb.rq
  %i.bep = landingpad { ptr, i32 }
          cleanup
  br label %bb.sa

bb.rw:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit1276
  %i.beq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1287

bb.rx:                                            ; preds = %bb.rr
  %i.ber = landingpad { ptr, i32 }
          cleanup
  br label %bb.rz

bb.ry:                                            ; preds = %bb.rs
  %i.bes = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %180) #20
  br label %bb.rz

bb.rz:                                            ; preds = %bb.ry, %bb.rx
  %.pn402 = phi { ptr, i32 } [ %i.bes, %bb.ry ], [ %i.ber, %bb.rx ] ; 2 uses
  %i.bet = load ptr, ptr %182, align 8, !tbaa !68 ; 2 uses
  %i.beu = getelementptr inbounds nuw i8, ptr %182, i64 16 ; 2 uses
  %i.bev = icmp eq ptr %i.bet, %i.beu
  br i1 %i.bev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1287, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1285

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1285: ; preds = %bb.rz
  %i.bew = load i64, ptr %i.beu, align 8, !tbaa !69
  %i.bex = add i64 %i.bew, 1
  call void @_ZdlPvm(ptr noundef %i.bet, i64 noundef %i.bex) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1287

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1287: ; preds = %bb.rz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1285, %bb.rw
  %.pn402.pn = phi { ptr, i32 } [ %i.beq, %bb.rw ], [ %.pn402, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1285 ], [ %.pn402, %bb.rz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %182) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %180) #20
  br label %bb.sa

bb.sa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1287, %bb.rv
  %.pn402.pn.pn = phi { ptr, i32 } [ %.pn402.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1287 ], [ %i.bep, %bb.rv ] ; 2 uses
  %i.bey = load ptr, ptr %179, align 8, !tbaa !84 ; 3 uses
  %.not.i.i1288 = icmp eq ptr %i.bey, null
  br i1 %.not.i.i1288, label %_ZN7testing7MessageD2Ev.exit1290, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1289

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1289: ; preds = %bb.sa
  %i.bez = load ptr, ptr %i.bey, align 8, !tbaa !52
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.bez, i64 8
  %i.bfb = load ptr, ptr %i.bfa, align 8
  call void %i.bfb(ptr noundef nonnull align 8 dereferenceable(128) %i.bey) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1290

_ZN7testing7MessageD2Ev.exit1290:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1289, %bb.sa, %bb.ru
  %.pn402.pn.pn.pn = phi { ptr, i32 } [ %i.beo, %bb.ru ], [ %.pn402.pn.pn, %bb.sa ], [ %.pn402.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1289 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %179) #20
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %178) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %178) #20
  br label %bb.zn

bb.sb:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1283, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1281
  call void @llvm.lifetime.end.p0(ptr nonnull %179) #20
  %.pr1855 = load ptr, ptr %i.bdw, align 8, !tbaa !82 ; 4 uses
  %.not.i.i.i1291 = icmp eq ptr %.pr1855, null
  br i1 %.not.i.i.i1291, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1295, label %bb.sc

bb.sc:                                            ; preds = %bb.sb
  %i.bfc = load ptr, ptr %.pr1855, align 8, !tbaa !68 ; 2 uses
  %i.bfd = getelementptr inbounds nuw i8, ptr %.pr1855, i64 16 ; 2 uses
  %i.bfe = icmp eq ptr %i.bfc, %i.bfd
  br i1 %i.bfe, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1293, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1292

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1292: ; preds = %bb.sc
  %i.bff = load i64, ptr %i.bfd, align 8, !tbaa !69
  %i.bfg = add i64 %i.bff, 1
  call void @_ZdlPvm(ptr noundef %i.bfc, i64 noundef %i.bfg) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1293

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1293: ; preds = %bb.sc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1292
  call void @_ZdlPvm(ptr noundef nonnull %.pr1855, i64 noundef 32) #22
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1295

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1295: ; preds = %_ZN7testing15AssertionResultD2Ev.exit1271, %bb.sb, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1293
  call void @llvm.lifetime.end.p0(ptr nonnull %178) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %183) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %184) #20
  store i64 2015, ptr %184, align 8
  %.sroa.2.0..sroa_idx.i.i1298 = getelementptr inbounds nuw i8, ptr %184, i64 8
  store i40 51724814086, ptr %.sroa.2.0..sroa_idx.i.i1298, align 8
  %i.bfh = load i64, ptr %1, align 8, !tbaa !104, !noalias !1521
  %i.bfi = icmp eq i64 %i.bfh, 2015
  %i.bfj = load <4 x i8>, ptr %i.a, align 8
  %.fr2435 = freeze <4 x i8> %i.bfj
  %i.bfk = load i8, ptr %i.b, align 4
  %i.bfl = icmp eq i8 %i.bfk, 12
  %.fr2435.scalar = bitcast <4 x i8> %.fr2435 to i32
  %i.bfm = icmp eq i32 %.fr2435.scalar, 185206534
  %op.rdx2413 = select i1 %i.bfm, i1 %i.bfi, i1 false
  %op.rdx2414 = select i1 %op.rdx2413, i1 %i.bfl, i1 false
  br i1 %op.rdx2414, label %bb.sd, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i1300

bb.sd:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1295
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %183)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit1302

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i1300: ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1295
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %183, ptr noundef nonnull @.str.613, ptr noundef nonnull @.str.596, ptr noundef nonnull align 8 dereferenceable(16) %184, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit1302

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit1302: ; preds = %bb.sd, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i1300
  call void @llvm.lifetime.end.p0(ptr nonnull %184) #20
  %i.bfn = load i8, ptr %183, align 8, !tbaa !79, !range !80, !noundef !81
  %i.bfo = trunc nuw i8 %i.bfn to i1
  br i1 %i.bfo, label %bb.sn, label %bb.se

bb.se:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit1302
  call void @llvm.lifetime.start.p0(ptr nonnull %185) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %185)
          to label %bb.sf unwind label %bb.sj

bb.sf:                                            ; preds = %bb.se
  call void @llvm.lifetime.start.p0(ptr nonnull %186) #20
  %i.bfp = getelementptr inbounds nuw i8, ptr %183, i64 8
  %i.bfq = load ptr, ptr %i.bfp, align 8, !tbaa !82 ; 2 uses
  %.not.i.i1303 = icmp eq ptr %i.bfq, null
  br i1 %.not.i.i1303, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1304, label %bb.sg

bb.sg:                                            ; preds = %bb.sf
  %i.bfr = load ptr, ptr %i.bfq, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1304

_ZNK7testing15AssertionResult15failure_messageEv.exit1304: ; preds = %bb.sg, %bb.sf
  %i.bfs = phi ptr [ %i.bfr, %bb.sg ], [ @.str.100, %bb.sf ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %186, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 817, ptr noundef %i.bfs)
          to label %bb.sh unwind label %bb.sk

bb.sh:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1304
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %186, ptr noundef nonnull align 8 dereferenceable(8) %185)
          to label %bb.si unwind label %bb.sl

bb.si:                                            ; preds = %bb.sh
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %186) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %186) #20
  %i.bft = load ptr, ptr %185, align 8, !tbaa !84 ; 3 uses
  %.not.i.i1305 = icmp eq ptr %i.bft, null
  br i1 %.not.i.i1305, label %_ZN7testing7MessageD2Ev.exit1307, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1306

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1306: ; preds = %bb.si
  %i.bfu = load ptr, ptr %i.bft, align 8, !tbaa !52
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bfu, i64 8
  %i.bfw = load ptr, ptr %i.bfv, align 8
  call void %i.bfw(ptr noundef nonnull align 8 dereferenceable(128) %i.bft) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1307

_ZN7testing7MessageD2Ev.exit1307:                 ; preds = %bb.si, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1306
  call void @llvm.lifetime.end.p0(ptr nonnull %185) #20
  br label %bb.sn

bb.sj:                                            ; preds = %bb.se
  %i.bfx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1310

bb.sk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1304
  %i.bfy = landingpad { ptr, i32 }
          cleanup
  br label %bb.sm

bb.sl:                                            ; preds = %bb.sh
  %i.bfz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %186) #20
  br label %bb.sm

bb.sm:                                            ; preds = %bb.sl, %bb.sk
  %.pn407 = phi { ptr, i32 } [ %i.bfz, %bb.sl ], [ %i.bfy, %bb.sk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %186) #20
  %i.bga = load ptr, ptr %185, align 8, !tbaa !84 ; 3 uses
  %.not.i.i1308 = icmp eq ptr %i.bga, null
  br i1 %.not.i.i1308, label %_ZN7testing7MessageD2Ev.exit1310, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1309

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1309: ; preds = %bb.sm
  %i.bgb = load ptr, ptr %i.bga, align 8, !tbaa !52
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bgb, i64 8
  %i.bgd = load ptr, ptr %i.bgc, align 8
  call void %i.bgd(ptr noundef nonnull align 8 dereferenceable(128) %i.bga) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1310

_ZN7testing7MessageD2Ev.exit1310:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1309, %bb.sm, %bb.sj
  %.pn407.pn = phi { ptr, i32 } [ %i.bfx, %bb.sj ], [ %.pn407, %bb.sm ], [ %.pn407, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1309 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %185) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %183) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %183) #20
  br label %bb.zn

bb.sn:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit1302, %_ZN7testing7MessageD2Ev.exit1307
  %i.bge = getelementptr inbounds nuw i8, ptr %183, i64 8
  %i.bgf = load ptr, ptr %i.bge, align 8, !tbaa !82 ; 4 uses
  %.not.i.i1311 = icmp eq ptr %i.bgf, null
  br i1 %.not.i.i1311, label %_ZN7testing15AssertionResultD2Ev.exit1315, label %bb.so

bb.so:                                            ; preds = %bb.sn
  %i.bgg = load ptr, ptr %i.bgf, align 8, !tbaa !68 ; 2 uses
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.bgf, i64 16 ; 2 uses
  %i.bgi = icmp eq ptr %i.bgg, %i.bgh
  br i1 %i.bgi, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1313, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1312

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1312: ; preds = %bb.so
  %i.bgj = load i64, ptr %i.bgh, align 8, !tbaa !69
  %i.bgk = add i64 %i.bgj, 1
  call void @_ZdlPvm(ptr noundef %i.bgg, i64 noundef %i.bgk) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1313

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1313: ; preds = %bb.so, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1312
  call void @_ZdlPvm(ptr noundef nonnull %i.bgf, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit1315

_ZN7testing15AssertionResultD2Ev.exit1315:        ; preds = %bb.sn, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1313
  call void @llvm.lifetime.end.p0(ptr nonnull %183) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %187) #20
  %i.bgl = call noundef zeroext i1 @_ZN4absl12lts_2026052621ParseLenientCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_10second_tagEEE(i64 6, ptr nonnull @.str.616, ptr noundef nonnull %1) ; 2 uses
  %i.bgm = zext i1 %i.bgl to i8
  store i8 %i.bgm, ptr %187, align 8, !tbaa !79
  %i.bgn = getelementptr inbounds nuw i8, ptr %187, i64 8 ; 2 uses
  store ptr null, ptr %i.bgn, align 8, !tbaa !107
  %i.bgo = getelementptr inbounds nuw i8, ptr %187, i64 16
  store i8 1, ptr %i.bgo, align 8, !tbaa !109
  br i1 %i.bgl, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1339, label %bb.sp

bb.sp:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit1315
  call void @llvm.lifetime.start.p0(ptr nonnull %188) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %188)
          to label %bb.sq unwind label %bb.su

bb.sq:                                            ; preds = %bb.sp
  %i.bgp = load ptr, ptr %188, align 8, !tbaa !84
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bgp, i64 16
  %.sroa.0.0.copyload.i1316 = load i64, ptr %1, align 8, !tbaa !92
  %.sroa.2.0.copyload.i1318 = load i64, ptr %i.a, align 8
  %i.bgr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052613time_internallsERSoNS1_4cctz6detail10civil_timeINS1_10second_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.bgq, i64 %.sroa.0.0.copyload.i1316, i64 %.sroa.2.0.copyload.i1318)
          to label %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit1320 unwind label %bb.sv ; 0 uses

_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit1320: ; preds = %bb.sq
  call void @llvm.lifetime.start.p0(ptr nonnull %189) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %191) #20
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %191, ptr noundef nonnull align 8 dereferenceable(16) %187, ptr noundef nonnull @.str.617, ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.232)
          to label %bb.sr unwind label %bb.sw

bb.sr:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit1320
  %i.bgs = load ptr, ptr %191, align 8, !tbaa !68
  %i.bgt = getelementptr inbounds nuw i8, ptr %191, i64 8
  %i.bgu = load i64, ptr %i.bgt, align 8, !tbaa !67
  store i64 %i.bgu, ptr %190, align 8
  %i.bgv = getelementptr inbounds nuw i8, ptr %190, i64 8
  store ptr %i.bgs, ptr %i.bgv, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %189, i32 noundef 1, i64 66, ptr nonnull @.str.2, i32 noundef 818, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %190)
          to label %bb.ss unwind label %bb.sx

bb.ss:                                            ; preds = %bb.sr
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %189, ptr noundef nonnull align 8 dereferenceable(8) %188)
          to label %bb.st unwind label %bb.sy

bb.st:                                            ; preds = %bb.ss
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %189) #20
  %i.bgw = load ptr, ptr %191, align 8, !tbaa !68 ; 2 uses
  %i.bgx = getelementptr inbounds nuw i8, ptr %191, i64 16 ; 2 uses
  %i.bgy = icmp eq ptr %i.bgw, %i.bgx
  br i1 %i.bgy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1323: ; preds = %bb.st
  %i.bgz = load i64, ptr %i.bgx, align 8, !tbaa !69
  %i.bha = add i64 %i.bgz, 1
  call void @_ZdlPvm(ptr noundef %i.bgw, i64 noundef %i.bha) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1325

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1325: ; preds = %bb.st, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1323
  call void @llvm.lifetime.end.p0(ptr nonnull %191) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %189) #20
  %i.bhb = load ptr, ptr %188, align 8, !tbaa !84 ; 3 uses
  %.not.i.i1326 = icmp eq ptr %i.bhb, null
  br i1 %.not.i.i1326, label %bb.tb, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1327

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1327: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1325
  %i.bhc = load ptr, ptr %i.bhb, align 8, !tbaa !52
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.bhc, i64 8
  %i.bhe = load ptr, ptr %i.bhd, align 8
  call void %i.bhe(ptr noundef nonnull align 8 dereferenceable(128) %i.bhb) #20, !inline_history !0
  br label %bb.tb

bb.su:                                            ; preds = %bb.sp
  %i.bhf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1334

bb.sv:                                            ; preds = %bb.sq
  %i.bhg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ta

bb.sw:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit1320
  %i.bhh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1331

bb.sx:                                            ; preds = %bb.sr
  %i.bhi = landingpad { ptr, i32 }
          cleanup
  br label %bb.sz

bb.sy:                                            ; preds = %bb.ss
  %i.bhj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %189) #20
  br label %bb.sz

bb.sz:                                            ; preds = %bb.sy, %bb.sx
  %.pn410 = phi { ptr, i32 } [ %i.bhj, %bb.sy ], [ %i.bhi, %bb.sx ] ; 2 uses
  %i.bhk = load ptr, ptr %191, align 8, !tbaa !68 ; 2 uses
  %i.bhl = getelementptr inbounds nuw i8, ptr %191, i64 16 ; 2 uses
  %i.bhm = icmp eq ptr %i.bhk, %i.bhl
  br i1 %i.bhm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1331, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1329

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1329: ; preds = %bb.sz
  %i.bhn = load i64, ptr %i.bhl, align 8, !tbaa !69
  %i.bho = add i64 %i.bhn, 1
  call void @_ZdlPvm(ptr noundef %i.bhk, i64 noundef %i.bho) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1331

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1331: ; preds = %bb.sz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1329, %bb.sw
  %.pn410.pn = phi { ptr, i32 } [ %i.bhh, %bb.sw ], [ %.pn410, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1329 ], [ %.pn410, %bb.sz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %191) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %189) #20
  br label %bb.ta

bb.ta:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1331, %bb.sv
  %.pn410.pn.pn = phi { ptr, i32 } [ %.pn410.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1331 ], [ %i.bhg, %bb.sv ] ; 2 uses
  %i.bhp = load ptr, ptr %188, align 8, !tbaa !84 ; 3 uses
  %.not.i.i1332 = icmp eq ptr %i.bhp, null
  br i1 %.not.i.i1332, label %_ZN7testing7MessageD2Ev.exit1334, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1333

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1333: ; preds = %bb.ta
  %i.bhq = load ptr, ptr %i.bhp, align 8, !tbaa !52
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bhq, i64 8
  %i.bhs = load ptr, ptr %i.bhr, align 8
  call void %i.bhs(ptr noundef nonnull align 8 dereferenceable(128) %i.bhp) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1334

_ZN7testing7MessageD2Ev.exit1334:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1333, %bb.ta, %bb.su
  %.pn410.pn.pn.pn = phi { ptr, i32 } [ %i.bhf, %bb.su ], [ %.pn410.pn.pn, %bb.ta ], [ %.pn410.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1333 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %188) #20
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %187) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %187) #20
  br label %bb.zn

bb.tb:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1327, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1325
  call void @llvm.lifetime.end.p0(ptr nonnull %188) #20
  %.pr1858 = load ptr, ptr %i.bgn, align 8, !tbaa !82 ; 4 uses
  %.not.i.i.i1335 = icmp eq ptr %.pr1858, null
  br i1 %.not.i.i.i1335, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1339, label %bb.tc

bb.tc:                                            ; preds = %bb.tb
  %i.bht = load ptr, ptr %.pr1858, align 8, !tbaa !68 ; 2 uses
  %i.bhu = getelementptr inbounds nuw i8, ptr %.pr1858, i64 16 ; 2 uses
  %i.bhv = icmp eq ptr %i.bht, %i.bhu
  br i1 %i.bhv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1337, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1336

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1336: ; preds = %bb.tc
  %i.bhw = load i64, ptr %i.bhu, align 8, !tbaa !69
  %i.bhx = add i64 %i.bhw, 1
  call void @_ZdlPvm(ptr noundef %i.bht, i64 noundef %i.bhx) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1337

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1337: ; preds = %bb.tc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1336
  call void @_ZdlPvm(ptr noundef nonnull %.pr1858, i64 noundef 32) #22
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1339

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1339: ; preds = %_ZN7testing15AssertionResultD2Ev.exit1315, %bb.tb, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1337
  call void @llvm.lifetime.end.p0(ptr nonnull %187) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %192) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %193) #20
  store i64 -1, ptr %193, align 8
  %.sroa.2.0..sroa_idx.i.i1344 = getelementptr inbounds nuw i8, ptr %193, i64 8
  store i40 257, ptr %.sroa.2.0..sroa_idx.i.i1344, align 8
  %i.bhy = load i64, ptr %1, align 8, !tbaa !104, !noalias !1522
  %i.bhz = icmp eq i64 %i.bhy, -1
  %i.bia = load <4 x i8>, ptr %i.a, align 8
  %.fr2436 = freeze <4 x i8> %i.bia
  %i.bib = load i8, ptr %i.b, align 4
  %i.bic = icmp eq i8 %i.bib, 0
  %.fr2436.scalar = bitcast <4 x i8> %.fr2436 to i32
  %i.bid = icmp eq i32 %.fr2436.scalar, 257
  %op.rdx = select i1 %i.bid, i1 %i.bhz, i1 false
  %op.rdx2412 = select i1 %op.rdx, i1 %i.bic, i1 false
  br i1 %op.rdx2412, label %bb.td, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_9month_tagENS1_10second_tagEEEbRKNS3_10civil_timeIT_EERKNS7_IT0_EE.exit.thread.i.i1346

bb.td:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1339
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %192)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_9month_tagEEENS8_INS5_10second_tagEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit1348

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_9month_tagENS1_10second_tagEEEbRKNS3_10civil_timeIT_EERKNS7_IT0_EE.exit.thread.i.i1346: ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1339
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_9month_tagEEENS7_INS4_10second_tagEEEEENS_15AssertionResultEPKcSE_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %192, ptr noundef nonnull @.str.618, ptr noundef nonnull @.str.596, ptr noundef nonnull align 8 dereferenceable(16) %193, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_9month_tagEEENS8_INS5_10second_tagEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit1348

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_9month_tagEEENS8_INS5_10second_tagEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit1348: ; preds = %bb.td, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_9month_tagENS1_10second_tagEEEbRKNS3_10civil_timeIT_EERKNS7_IT0_EE.exit.thread.i.i1346
  call void @llvm.lifetime.end.p0(ptr nonnull %193) #20
  %i.bie = load i8, ptr %192, align 8, !tbaa !79, !range !80, !noundef !81
  %i.bif = trunc nuw i8 %i.bie to i1
  br i1 %i.bif, label %bb.tn, label %bb.te

bb.te:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_9month_tagEEENS8_INS5_10second_tagEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit1348
  call void @llvm.lifetime.start.p0(ptr nonnull %194) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %194)
          to label %bb.tf unwind label %bb.tj

bb.tf:                                            ; preds = %bb.te
  call void @llvm.lifetime.start.p0(ptr nonnull %195) #20
  %i.big = getelementptr inbounds nuw i8, ptr %192, i64 8
  %i.bih = load ptr, ptr %i.big, align 8, !tbaa !82 ; 2 uses
  %.not.i.i1349 = icmp eq ptr %i.bih, null
  br i1 %.not.i.i1349, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1350, label %bb.tg

bb.tg:                                            ; preds = %bb.tf
  %i.bii = load ptr, ptr %i.bih, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1350

_ZNK7testing15AssertionResult15failure_messageEv.exit1350: ; preds = %bb.tg, %bb.tf
  %i.bij = phi ptr [ %i.bii, %bb.tg ], [ @.str.100, %bb.tf ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %195, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 819, ptr noundef %i.bij)
          to label %bb.th unwind label %bb.tk

bb.th:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1350
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %195, ptr noundef nonnull align 8 dereferenceable(8) %194)
          to label %bb.ti unwind label %bb.tl

bb.ti:                                            ; preds = %bb.th
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %195) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %195) #20
  %i.bik = load ptr, ptr %194, align 8, !tbaa !84 ; 3 uses
  %.not.i.i1351 = icmp eq ptr %i.bik, null
  br i1 %.not.i.i1351, label %_ZN7testing7MessageD2Ev.exit1353, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1352

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1352: ; preds = %bb.ti
  %i.bil = load ptr, ptr %i.bik, align 8, !tbaa !52
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bil, i64 8
  %i.bin = load ptr, ptr %i.bim, align 8
  call void %i.bin(ptr noundef nonnull align 8 dereferenceable(128) %i.bik) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1353

_ZN7testing7MessageD2Ev.exit1353:                 ; preds = %bb.ti, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1352
  call void @llvm.lifetime.end.p0(ptr nonnull %194) #20
  br label %bb.tn

bb.tj:                                            ; preds = %bb.te
  %i.bio = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1356

bb.tk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1350
  %i.bip = landingpad { ptr, i32 }
          cleanup
  br label %bb.tm

bb.tl:                                            ; preds = %bb.th
  %i.biq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %195) #20
  br label %bb.tm

bb.tm:                                            ; preds = %bb.tl, %bb.tk
  %.pn415 = phi { ptr, i32 } [ %i.biq, %bb.tl ], [ %i.bip, %bb.tk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %195) #20
  %i.bir = load ptr, ptr %194, align 8, !tbaa !84 ; 3 uses
  %.not.i.i1354 = icmp eq ptr %i.bir, null
  br i1 %.not.i.i1354, label %_ZN7testing7MessageD2Ev.exit1356, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1355

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1355: ; preds = %bb.tm
  %i.bis = load ptr, ptr %i.bir, align 8, !tbaa !52
  %i.bit = getelementptr inbounds nuw i8, ptr %i.bis, i64 8
  %i.biu = load ptr, ptr %i.bit, align 8
  call void %i.biu(ptr noundef nonnull align 8 dereferenceable(128) %i.bir) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1356

_ZN7testing7MessageD2Ev.exit1356:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1355, %bb.tm, %bb.tj
  %.pn415.pn = phi { ptr, i32 } [ %i.bio, %bb.tj ], [ %.pn415, %bb.tm ], [ %.pn415, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1355 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %194) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %192) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %192) #20
  br label %bb.zn

bb.tn:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_9month_tagEEENS8_INS5_10second_tagEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit1348, %_ZN7testing7MessageD2Ev.exit1353
  %i.biv = getelementptr inbounds nuw i8, ptr %192, i64 8
  %i.biw = load ptr, ptr %i.biv, align 8, !tbaa !82 ; 4 uses
  %.not.i.i1357 = icmp eq ptr %i.biw, null
  br i1 %.not.i.i1357, label %_ZN7testing15AssertionResultD2Ev.exit1361, label %bb.to

bb.to:                                            ; preds = %bb.tn
  %i.bix = load ptr, ptr %i.biw, align 8, !tbaa !68 ; 2 uses
  %i.biy = getelementptr inbounds nuw i8, ptr %i.biw, i64 16 ; 2 uses
  %i.biz = icmp eq ptr %i.bix, %i.biy
  br i1 %i.biz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1359, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1358

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1358: ; preds = %bb.to
  %i.bja = load i64, ptr %i.biy, align 8, !tbaa !69
  %i.bjb = add i64 %i.bja, 1
  call void @_ZdlPvm(ptr noundef %i.bix, i64 noundef %i.bjb) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1359

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1359: ; preds = %bb.to, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1358
  call void @_ZdlPvm(ptr noundef nonnull %i.biw, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit1361

_ZN7testing15AssertionResultD2Ev.exit1361:        ; preds = %bb.tn, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1359
  call void @llvm.lifetime.end.p0(ptr nonnull %192) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %196) #20
  %i.bjc = call noundef zeroext i1 @_ZN4absl12lts_2026052621ParseLenientCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_10second_tagEEE(i64 10, ptr nonnull @.str.619, ptr noundef nonnull %1) ; 2 uses
  %i.bjd = zext i1 %i.bjc to i8
  store i8 %i.bjd, ptr %196, align 8, !tbaa !79
  %i.bje = getelementptr inbounds nuw i8, ptr %196, i64 8 ; 2 uses
  store ptr null, ptr %i.bje, align 8, !tbaa !107
  %i.bjf = getelementptr inbounds nuw i8, ptr %196, i64 16
  store i8 0, ptr %i.bjf, align 8, !tbaa !109
  br i1 %i.bjc, label %bb.tp, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1385

bb.tp:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit1361
  call void @llvm.lifetime.start.p0(ptr nonnull %197) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %197)
          to label %bb.tq unwind label %bb.tu

bb.tq:                                            ; preds = %bb.tp
  %i.bjg = load ptr, ptr %197, align 8, !tbaa !84
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.bjg, i64 16
  %.sroa.0.0.copyload.i1362 = load i64, ptr %1, align 8, !tbaa !92
  %.sroa.2.0.copyload.i1364 = load i64, ptr %i.a, align 8
  %i.bji = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052613time_internallsERSoNS1_4cctz6detail10civil_timeINS1_10second_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.bjh, i64 %.sroa.0.0.copyload.i1362, i64 %.sroa.2.0.copyload.i1364)
          to label %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit1366 unwind label %bb.tv ; 0 uses

_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit1366: ; preds = %bb.tq
  call void @llvm.lifetime.start.p0(ptr nonnull %198) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %200) #20
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %200, ptr noundef nonnull align 8 dereferenceable(16) %196, ptr noundef nonnull @.str.620, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.233)
          to label %bb.tr unwind label %bb.tw

bb.tr:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEEEERS0_RKT_.exit1366
  %i.bjj = load ptr, ptr %200, align 8, !tbaa !68
  %i.bjk = getelementptr inbounds nuw i8, ptr %200, i64 8
  %i.bjl = load i64, ptr %i.bjk, align 8, !tbaa !67
  store i64 %i.bjl, ptr %199, align 8
  %i.bjm = getelementptr inbounds nuw i8, ptr %199, i64 8
  store ptr %i.bjj, ptr %i.bjm, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %198, i32 noundef 1, i64 66, ptr nonnull @.str.2, i32 noundef 822, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %199)
          to label %bb.ts unwind label %bb.tx

bb.ts:                                            ; preds = %bb.tr
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %198, ptr noundef nonnull align 8 dereferenceable(8) %197)
          to label %bb.tt unwind label %bb.ty

bb.tt:                                            ; preds = %bb.ts
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %198) #20
  %i.bjn = load ptr, ptr %200, align 8, !tbaa !68 ; 2 uses
  %i.bjo = getelementptr inbounds nuw i8, ptr %200, i64 16 ; 2 uses
  %i.bjp = icmp eq ptr %i.bjn, %i.bjo
  br i1 %i.bjp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1371, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1369

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1369: ; preds = %bb.tt
  %i.bjq = load i64, ptr %i.bjo, align 8, !tbaa !69
  %i.bjr = add i64 %i.bjq, 1
  call void @_ZdlPvm(ptr noundef %i.bjn, i64 noundef %i.bjr) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1371

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1371: ; preds = %bb.tt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1369
  call void @llvm.lifetime.end.p0(ptr nonnull %200) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %198) #20
  %i.bjs = load ptr, ptr %197, align 8, !tbaa !84 ; 3 uses
  %.not.i.i1372 = icmp eq ptr %i.bjs, null
  br i1 %.not.i.i1372, label %bb.ub, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1373

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1373: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1371
  %i.bjt = load ptr, ptr %i.bjs, align 8, !tbaa !52
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bjt, i64 8
  %i.bjv = load ptr, ptr %i.bju, align 8
  call void %i.bjv(ptr noundef nonnull align 8 dereferenceable(128) %i.bjs) #20, !inline_history !0
  br label %bb.ub

bb.tu:                                            ; preds = %bb.tp
  %i.bjw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1380

bb.tv:                                            ; preds = %bb.tq
  %i.bjx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ua

end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_130CivilTime_NextPrevWeekday_Test8TestBodyEv:bb.a
  store i32 7, ptr %i.a, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %.sroa.22.8.extract.trunc.i.i = trunc i64 %.fca.1.extract.i.i.i.i to i8 ; 2 uses
  %.sroa.43.8.extract.shift.i.i = lshr i64 %.fca.1.extract.i.i.i.i, 8
  %.sroa.43.8.extract.trunc.i.i = trunc i64 %.sroa.43.8.extract.shift.i.i to i8
  %i.r = tail call noundef i64 @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %i.q, i8 noundef signext %.sroa.22.8.extract.trunc.i.i, i8 noundef signext %.sroa.43.8.extract.trunc.i.i, i64 noundef 1970, i8 noundef signext 1, i8 noundef signext 1) #20 ; 2 uses
  store i64 %i.r, ptr %i.b, align 8, !tbaa !92
  %i.s = icmp eq i64 %i.r, 7
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

bb.d:                                             ; preds = %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit
  call void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1, ptr noundef nonnull @.str.664, ptr noundef nonnull @.str.665, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.t = load i8, ptr %1, align 8, !tbaa !79, !range !80, !noundef !81
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.p, label %bb.e

bb.e:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %2, align 8, !tbaa !84
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052613time_internallsERSoNS1_4cctz6detail10civil_timeINS1_7day_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i64 %i.q, i64 %.sroa.2.8.insert.insert.i.i.i.i.i)
          to label %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit unwind label %bb.k ; 0 uses

_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !82   ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.g, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit
  %i.ab = phi ptr [ %i.aa, %bb.g ], [ @.str.100, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 927, ptr noundef %i.ab)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.ac = load ptr, ptr %2, align 8, !tbaa !84    ; 3 uses
  %.not.i.i166 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i166, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !52
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(128) %i.ac) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.p

bb.j:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit169

bb.k:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %i.ai, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.ah, %bb.k ] ; 2 uses
  %i.ak = load ptr, ptr %2, align 8, !tbaa !84    ; 3 uses
  %.not.i.i167 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i167, label %_ZN7testing7MessageD2Ev.exit169, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i168

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i168: ; preds = %bb.o
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !52
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(128) %i.ak) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit169

_ZN7testing7MessageD2Ev.exit169:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i168, %bb.o, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.j ], [ %.pn.pn, %bb.o ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i168 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.gv

bb.p:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !82 ; 4 uses
  %.not.i.i170 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i170, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !68 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.q
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !69
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.p, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.av = shl nuw i64 %.sroa.2.8.insert.insert.i.i.i.i.i, 48
  %i.aw = ashr i64 %i.av, 56
  %i.ax = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %i.q, i8 noundef signext %.sroa.22.8.extract.trunc.i.i, i64 noundef %i.aw, i64 noundef -14, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.sroa.3.0.in.in.i = extractvalue { i64, i64 } %i.ax, 1
  %.sroa.3.0.in.i = and i64 %.sroa.3.0.in.in.i, 65535
  %i.ay = extractvalue { i64, i64 } %i.ax, 0
  store i64 %i.ay, ptr %5, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %.sroa.3.0.in.i, ptr %i.az, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %_ZN7testing15AssertionResultD2Ev.exit
  %indvars.iv.i.i181 = phi i64 [ %indvars.iv.next.i.i182, %bb.r ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit ] ; 4 uses
  %indvars.iv.next.i.i182 = add nuw nsw i64 %indvars.iv.i.i181, 1
  switch i64 %indvars.iv.i.i181, label %bb.r [
    i64 10, label %.preheader.i.i184.preheader
    i64 3, label %.preheader.i.i184.preheader
  ]

.preheader.i.i184.preheader:                      ; preds = %bb.r, %bb.r
  br label %.preheader.i.i184

.preheader.i.i184:                                ; preds = %.preheader.i.i184.preheader, %.preheader.i.i184
  %indvars.iv17.i.i185 = phi i64 [ %indvars.iv.next18.i.i186, %.preheader.i.i184 ], [ %indvars.iv.i.i181, %.preheader.i.i184.preheader ]
  %indvars.iv.next18.i.i186 = add nuw nsw i64 %indvars.iv17.i.i185, 1 ; 3 uses
  switch i64 %indvars.iv.next18.i.i186, label %.preheader.i.i184 [
    i64 10, label %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit
    i64 3, label %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit
  ]

_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit: ; preds = %.preheader.i.i184, %.preheader.i.i184
  %i.ba = sub nuw nsw i64 %indvars.iv.next18.i.i186, %indvars.iv.i.i181
  %i.bb = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detailmiENS3_10civil_timeINS3_7day_tagEEEl(i64 1970, i64 257, i64 noundef %i.ba) #20 ; 2 uses
  %i.bc = extractvalue { i64, i64 } %i.bb, 1      ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i4.i = and i64 %i.bc, 65535
  %i.bd = extractvalue { i64, i64 } %i.bb, 0      ; 2 uses
  store i64 %i.bd, ptr %6, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.sroa.2.8.insert.insert.i.i.i4.i, ptr %i.be, align 8
  %i.bf = load i64, ptr %5, align 8, !tbaa !98, !noalias !1788
  %i.bg = icmp eq i64 %i.bf, %i.bd
  %i.bh = lshr i64 %i.bc, 8
  %i.bi = trunc i64 %i.bh to i8
  %i.bj = trunc i64 %i.bc to i8
  %i.bk = load i8, ptr %i.az, align 8
  %i.bl = icmp eq i8 %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 9
  %i.bn = load <4 x i8>, ptr %i.bm, align 1
  %i.bo = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %i.bi, i64 0
  %i.bp = icmp eq <4 x i8> %i.bn, %i.bo
  %i.bq = freeze <4 x i1> %i.bp
  %i.br = bitcast <4 x i1> %i.bq to i4
  %i.bs = icmp eq i4 %i.br, -1
  %op.rdx989 = select i1 %i.bs, i1 %i.bg, i1 false
  %op.rdx990 = select i1 %op.rdx989, i1 %i.bl, i1 false
  br i1 %op.rdx990, label %bb.s, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i

bb.s:                                             ; preds = %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i: ; preds = %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.666, ptr noundef nonnull @.str.667, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit: ; preds = %bb.s, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.bt = load i8, ptr %4, align 8, !tbaa !79, !range !80, !noundef !81
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.ac, label %bb.t

bb.t:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !82 ; 2 uses
  %.not.i.i189 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i189, label %_ZNK7testing15AssertionResult15failure_messageEv.exit190, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit190

_ZNK7testing15AssertionResult15failure_messageEv.exit190: ; preds = %bb.v, %bb.u
  %i.by = phi ptr [ %i.bx, %bb.v ], [ @.str.100, %bb.u ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 928, ptr noundef %i.by)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit190
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %bb.w
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.bz = load ptr, ptr %7, align 8, !tbaa !84    ; 3 uses
  %.not.i.i191 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i191, label %_ZN7testing7MessageD2Ev.exit193, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192: ; preds = %bb.x
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !52
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(128) %i.bz) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit193

_ZN7testing7MessageD2Ev.exit193:                  ; preds = %bb.x, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.ac

bb.y:                                             ; preds = %bb.t
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit196

bb.z:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit190
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.w
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #20
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn119 = phi { ptr, i32 } [ %i.cf, %bb.aa ], [ %i.ce, %bb.z ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.cg = load ptr, ptr %7, align 8, !tbaa !84    ; 3 uses
  %.not.i.i194 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i194, label %_ZN7testing7MessageD2Ev.exit196, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195: ; preds = %bb.ab
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !52
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(128) %i.cg) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit196

_ZN7testing7MessageD2Ev.exit196:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195, %bb.ab, %bb.y
  %.pn119.pn = phi { ptr, i32 } [ %i.cd, %bb.y ], [ %.pn119, %bb.ab ], [ %.pn119, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.gv

bb.ac:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit, %_ZN7testing7MessageD2Ev.exit193
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !82 ; 4 uses
  %.not.i.i197 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i197, label %_ZN7testing15AssertionResultD2Ev.exit201, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !68 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i198: ; preds = %bb.ad
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !69
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i199

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i199: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i198
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit201

_ZN7testing15AssertionResultD2Ev.exit201:         ; preds = %bb.ac, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %_ZN7testing15AssertionResultD2Ev.exit201
  %indvars.iv.i.i210 = phi i64 [ %indvars.iv.next.i.i211, %bb.ae ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit201 ] ; 4 uses
  %indvars.iv.next.i.i211 = add nuw nsw i64 %indvars.iv.i.i210, 1
  switch i64 %indvars.iv.i.i210, label %bb.ae [
    i64 10, label %.preheader.i.i213.preheader
    i64 3, label %.preheader.i.i213.preheader
  ]

.preheader.i.i213.preheader:                      ; preds = %bb.ae, %bb.ae
  br label %.preheader.i.i213

.preheader.i.i213:                                ; preds = %.preheader.i.i213.preheader, %.preheader.i.i213
  %indvars.iv17.i.i214 = phi i64 [ %indvars.iv.next18.i.i215, %.preheader.i.i213 ], [ %indvars.iv.i.i210, %.preheader.i.i213.preheader ]
  %indvars.iv.next18.i.i215 = add nuw nsw i64 %indvars.iv17.i.i214, 1 ; 3 uses
  switch i64 %indvars.iv.next18.i.i215, label %.preheader.i.i213 [
    i64 11, label %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit220
    i64 4, label %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit220
  ]

_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit220: ; preds = %.preheader.i.i213, %.preheader.i.i213
  %i.cr = sub nuw nsw i64 %indvars.iv.next18.i.i215, %indvars.iv.i.i210
  %i.cs = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 1970, i8 noundef signext 1, i64 noundef 1, i64 noundef %i.cr, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.fca.1.extract.i.i.i.i217 = extractvalue { i64, i64 } %i.cs, 1 ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i.i.i218 = and i64 %.fca.1.extract.i.i.i.i217, 65535 ; 2 uses
  %i.ct = extractvalue { i64, i64 } %i.cs, 0      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 1, ptr %i.c, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %.sroa.22.8.extract.trunc.i.i221 = trunc i64 %.fca.1.extract.i.i.i.i217 to i8 ; 2 uses
  %.sroa.43.8.extract.shift.i.i222 = lshr i64 %.fca.1.extract.i.i.i.i217, 8
  %.sroa.43.8.extract.trunc.i.i223 = trunc i64 %.sroa.43.8.extract.shift.i.i222 to i8
  %i.cu = call noundef i64 @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %i.ct, i8 noundef signext %.sroa.22.8.extract.trunc.i.i221, i8 noundef signext %.sroa.43.8.extract.trunc.i.i223, i64 noundef 1970, i8 noundef signext 1, i8 noundef signext 1) #20 ; 2 uses
  store i64 %i.cu, ptr %i.d, align 8, !tbaa !92
  %i.cv = load i32, ptr %i.c, align 4, !tbaa !93, !noalias !1789
  %i.cw = sext i32 %i.cv to i64
  %i.cx = icmp eq i64 %i.cu, %i.cw
  br i1 %i.cx, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit220
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit227

bb.ag:                                            ; preds = %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit220
  call void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.448, ptr noundef nonnull @.str.665, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit227

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit227: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.cy = load i8, ptr %9, align 8, !tbaa !79, !range !80, !noundef !81
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.as, label %bb.ah

bb.ah:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit227
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.da = load ptr, ptr %10, align 8, !tbaa !84
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052613time_internallsERSoNS1_4cctz6detail10civil_timeINS1_7day_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.db, i64 %i.ct, i64 %.sroa.2.8.insert.insert.i.i.i.i.i218)
          to label %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit231 unwind label %bb.an ; 0 uses

_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit231: ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !82 ; 2 uses
  %.not.i.i232 = icmp eq ptr %i.de, null
  br i1 %.not.i.i232, label %_ZNK7testing15AssertionResult15failure_messageEv.exit233, label %bb.aj

bb.aj:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit231
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit233

_ZNK7testing15AssertionResult15failure_messageEv.exit233: ; preds = %bb.aj, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit231
  %i.dg = phi ptr [ %i.df, %bb.aj ], [ @.str.100, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit231 ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 932, ptr noundef %i.dg)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit233
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %bb.ak
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.dh = load ptr, ptr %10, align 8, !tbaa !84   ; 3 uses
  %.not.i.i234 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i234, label %_ZN7testing7MessageD2Ev.exit236, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235: ; preds = %bb.al
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !52
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(128) %i.dh) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit236

_ZN7testing7MessageD2Ev.exit236:                  ; preds = %bb.al, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.as

bb.am:                                            ; preds = %bb.ah
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit239

bb.an:                                            ; preds = %bb.ai
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ao:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit233
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ak
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #20
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn122 = phi { ptr, i32 } [ %i.do, %bb.ap ], [ %i.dn, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an
  %.pn122.pn = phi { ptr, i32 } [ %.pn122, %bb.aq ], [ %i.dm, %bb.an ] ; 2 uses
  %i.dp = load ptr, ptr %10, align 8, !tbaa !84   ; 3 uses
  %.not.i.i237 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i237, label %_ZN7testing7MessageD2Ev.exit239, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i238

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i238: ; preds = %bb.ar
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !52
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(128) %i.dp) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit239

_ZN7testing7MessageD2Ev.exit239:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i238, %bb.ar, %bb.am
  %.pn122.pn.pn = phi { ptr, i32 } [ %i.dl, %bb.am ], [ %.pn122.pn, %bb.ar ], [ %.pn122.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i238 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.gv

bb.as:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit227, %_ZN7testing7MessageD2Ev.exit236
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !82 ; 4 uses
  %.not.i.i240 = icmp eq ptr %i.du, null
  br i1 %.not.i.i240, label %_ZN7testing15AssertionResultD2Ev.exit244, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !68 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241: ; preds = %bb.at
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !69
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit244

_ZN7testing15AssertionResultD2Ev.exit244:         ; preds = %bb.as, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.ea = shl nuw i64 %.sroa.2.8.insert.insert.i.i.i.i.i218, 48
  %i.eb = ashr i64 %i.ea, 56
  %i.ec = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %i.ct, i8 noundef signext %.sroa.22.8.extract.trunc.i.i221, i64 noundef %i.eb, i64 noundef -7, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.sroa.3.0.in.in.i252 = extractvalue { i64, i64 } %i.ec, 1
  %.sroa.3.0.in.i253 = and i64 %.sroa.3.0.in.in.i252, 65535
  %i.ed = extractvalue { i64, i64 } %i.ec, 0
  store i64 %i.ed, ptr %13, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i64 %.sroa.3.0.in.i253, ptr %i.ee, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %_ZN7testing15AssertionResultD2Ev.exit244
  %indvars.iv.i.i263 = phi i64 [ %indvars.iv.next.i.i264, %bb.au ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit244 ] ; 4 uses
  %indvars.iv.next.i.i264 = add nuw nsw i64 %indvars.iv.i.i263, 1
  switch i64 %indvars.iv.i.i263, label %bb.au [
    i64 10, label %.preheader.i.i266.preheader
    i64 3, label %.preheader.i.i266.preheader
  ]

.preheader.i.i266.preheader:                      ; preds = %bb.au, %bb.au
  br label %.preheader.i.i266

.preheader.i.i266:                                ; preds = %.preheader.i.i266.preheader, %.preheader.i.i266
  %indvars.iv17.i.i267 = phi i64 [ %indvars.iv.next18.i.i268, %.preheader.i.i266 ], [ %indvars.iv.i.i263, %.preheader.i.i266.preheader ]
  %indvars.iv.next18.i.i268 = add nuw nsw i64 %indvars.iv17.i.i267, 1 ; 3 uses
  switch i64 %indvars.iv.next18.i.i268, label %.preheader.i.i266 [
    i64 9, label %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit272
    i64 2, label %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit272
  ]

_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit272: ; preds = %.preheader.i.i266, %.preheader.i.i266
  %i.ef = sub nuw nsw i64 %indvars.iv.next18.i.i268, %indvars.iv.i.i263
  %i.eg = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detailmiENS3_10civil_timeINS3_7day_tagEEEl(i64 1970, i64 257, i64 noundef %i.ef) #20 ; 2 uses
  %i.eh = extractvalue { i64, i64 } %i.eg, 1      ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i4.i270 = and i64 %i.eh, 65535
  %i.ei = extractvalue { i64, i64 } %i.eg, 0      ; 2 uses
  store i64 %i.ei, ptr %14, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %.sroa.2.8.insert.insert.i.i.i4.i270, ptr %i.ej, align 8
  %i.ek = load i64, ptr %13, align 8, !tbaa !98, !noalias !1790
  %i.el = icmp eq i64 %i.ek, %i.ei
  %i.em = lshr i64 %i.eh, 8
  %i.en = trunc i64 %i.em to i8
  %i.eo = trunc i64 %i.eh to i8
  %i.ep = load i8, ptr %i.ee, align 8
  %i.eq = icmp eq i8 %i.ep, %i.eo
  %i.er = getelementptr inbounds nuw i8, ptr %13, i64 9
  %i.es = load <4 x i8>, ptr %i.er, align 1
  %i.et = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %i.en, i64 0
  %i.eu = icmp eq <4 x i8> %i.es, %i.et
  %i.ev = freeze <4 x i1> %i.eu
  %i.ew = bitcast <4 x i1> %i.ev to i4
  %i.ex = icmp eq i4 %i.ew, -1
  %op.rdx987 = select i1 %i.ex, i1 %i.el, i1 false
  %op.rdx988 = select i1 %op.rdx987, i1 %i.eq, i1 false
  br i1 %op.rdx988, label %bb.av, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i273

bb.av:                                            ; preds = %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit272
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit275

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i273: ; preds = %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit272
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12, ptr noundef nonnull @.str.668, ptr noundef nonnull @.str.669, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %14)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit275

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit275: ; preds = %bb.av, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i273
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.ey = load i8, ptr %12, align 8, !tbaa !79, !range !80, !noundef !81
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.bf, label %bb.aw

bb.aw:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit275
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.fa = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !82 ; 2 uses
  %.not.i.i276 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i276, label %_ZNK7testing15AssertionResult15failure_messageEv.exit277, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit277

_ZNK7testing15AssertionResult15failure_messageEv.exit277: ; preds = %bb.ay, %bb.ax
  %i.fd = phi ptr [ %i.fc, %bb.ay ], [ @.str.100, %bb.ax ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 933, ptr noundef %i.fd)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit277
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %bb.az
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %i.fe = load ptr, ptr %15, align 8, !tbaa !84   ; 3 uses
  %.not.i.i278 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i278, label %_ZN7testing7MessageD2Ev.exit280, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i279

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i279: ; preds = %bb.ba
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !52
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(128) %i.fe) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit280

_ZN7testing7MessageD2Ev.exit280:                  ; preds = %bb.ba, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i279
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %bb.bf

bb.bb:                                            ; preds = %bb.aw
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit283

bb.bc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit277
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bd:                                            ; preds = %bb.az
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #20
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.pn126 = phi { ptr, i32 } [ %i.fk, %bb.bd ], [ %i.fj, %bb.bc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %i.fl = load ptr, ptr %15, align 8, !tbaa !84   ; 3 uses
  %.not.i.i281 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i281, label %_ZN7testing7MessageD2Ev.exit283, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i282

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i282: ; preds = %bb.be
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !52
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8
  call void %i.fo(ptr noundef nonnull align 8 dereferenceable(128) %i.fl) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit283

_ZN7testing7MessageD2Ev.exit283:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i282, %bb.be, %bb.bb
  %.pn126.pn = phi { ptr, i32 } [ %i.fi, %bb.bb ], [ %.pn126, %bb.be ], [ %.pn126, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i282 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.gv

bb.bf:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit275, %_ZN7testing7MessageD2Ev.exit280
  %i.fp = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !82 ; 4 uses
  %.not.i.i284 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i284, label %_ZN7testing15AssertionResultD2Ev.exit288, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !68 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 16 ; 2 uses
  %i.ft = icmp eq ptr %i.fr, %i.fs
  br i1 %i.ft, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i286, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i285

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i285: ; preds = %bb.bg
  %i.fu = load i64, ptr %i.fs, align 8, !tbaa !69
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fv) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i286

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i286: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i285
  call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit288

_ZN7testing15AssertionResultD2Ev.exit288:         ; preds = %bb.bf, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i286
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %_ZN7testing15AssertionResultD2Ev.exit288
  %indvars.iv.i.i297 = phi i64 [ %indvars.iv.next.i.i298, %bb.bh ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit288 ] ; 4 uses
  %indvars.iv.next.i.i298 = add nuw nsw i64 %indvars.iv.i.i297, 1
  switch i64 %indvars.iv.i.i297, label %bb.bh [
    i64 10, label %.preheader.i.i300.preheader
    i64 3, label %.preheader.i.i300.preheader
  ]

.preheader.i.i300.preheader:                      ; preds = %bb.bh, %bb.bh
  br label %.preheader.i.i300

.preheader.i.i300:                                ; preds = %.preheader.i.i300.preheader, %.preheader.i.i300
  %indvars.iv17.i.i301 = phi i64 [ %indvars.iv.next18.i.i302, %.preheader.i.i300 ], [ %indvars.iv.i.i297, %.preheader.i.i300.preheader ]
  %indvars.iv.next18.i.i302 = add nuw nsw i64 %indvars.iv17.i.i301, 1 ; 3 uses
  switch i64 %indvars.iv.next18.i.i302, label %.preheader.i.i300 [
    i64 12, label %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit307
    i64 5, label %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit307
  ]

_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit307: ; preds = %.preheader.i.i300, %.preheader.i.i300
  %i.fw = sub nuw nsw i64 %indvars.iv.next18.i.i302, %indvars.iv.i.i297
  %i.fx = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 1970, i8 noundef signext 1, i64 noundef 1, i64 noundef %i.fw, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.fca.1.extract.i.i.i.i304 = extractvalue { i64, i64 } %i.fx, 1 ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i.i.i305 = and i64 %.fca.1.extract.i.i.i.i304, 65535 ; 2 uses
  %i.fy = extractvalue { i64, i64 } %i.fx, 0      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store i32 2, ptr %i.e, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %.sroa.22.8.extract.trunc.i.i308 = trunc i64 %.fca.1.extract.i.i.i.i304 to i8 ; 2 uses
  %.sroa.43.8.extract.shift.i.i309 = lshr i64 %.fca.1.extract.i.i.i.i304, 8
  %.sroa.43.8.extract.trunc.i.i310 = trunc i64 %.sroa.43.8.extract.shift.i.i309 to i8
  %i.fz = call noundef i64 @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %i.fy, i8 noundef signext %.sroa.22.8.extract.trunc.i.i308, i8 noundef signext %.sroa.43.8.extract.trunc.i.i310, i64 noundef 1970, i8 noundef signext 1, i8 noundef signext 1) #20 ; 2 uses
  store i64 %i.fz, ptr %i.f, align 8, !tbaa !92
  %i.ga = load i32, ptr %i.e, align 4, !tbaa !93, !noalias !1791
  %i.gb = sext i32 %i.ga to i64
  %i.gc = icmp eq i64 %i.fz, %i.gb
  br i1 %i.gc, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit307
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %17)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit314

bb.bj:                                            ; preds = %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit307
  call void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %17, ptr noundef nonnull @.str.459, ptr noundef nonnull @.str.665, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit314

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit314: ; preds = %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.gd = load i8, ptr %17, align 8, !tbaa !79, !range !80, !noundef !81
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.bv, label %bb.bk

bb.bk:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit314
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.bl unwind label %bb.bp

bb.bl:                                            ; preds = %bb.bk
  %i.gf = load ptr, ptr %18, align 8, !tbaa !84
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052613time_internallsERSoNS1_4cctz6detail10civil_timeINS1_7day_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.gg, i64 %i.fy, i64 %.sroa.2.8.insert.insert.i.i.i.i.i305)
          to label %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit318 unwind label %bb.bq ; 0 uses

_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit318: ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  %i.gi = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !82 ; 2 uses
  %.not.i.i319 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i319, label %_ZNK7testing15AssertionResult15failure_messageEv.exit320, label %bb.bm

bb.bm:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit318
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit320

_ZNK7testing15AssertionResult15failure_messageEv.exit320: ; preds = %bb.bm, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit318
  %i.gl = phi ptr [ %i.gk, %bb.bm ], [ @.str.100, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit318 ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 937, ptr noundef %i.gl)
          to label %bb.bn unwind label %bb.br

bb.bn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit320
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.bo unwind label %bb.bs

bb.bo:                                            ; preds = %bb.bn
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  %i.gm = load ptr, ptr %18, align 8, !tbaa !84   ; 3 uses
  %.not.i.i321 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i321, label %_ZN7testing7MessageD2Ev.exit323, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i322

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i322: ; preds = %bb.bo
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !52
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load ptr, ptr %i.go, align 8
  call void %i.gp(ptr noundef nonnull align 8 dereferenceable(128) %i.gm) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit323

_ZN7testing7MessageD2Ev.exit323:                  ; preds = %bb.bo, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i322
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %bb.bv

bb.bp:                                            ; preds = %bb.bk
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit326

bb.bq:                                            ; preds = %bb.bl
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.br:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit320
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bn
  %i.gt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #20
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.pn129 = phi { ptr, i32 } [ %i.gt, %bb.bs ], [ %i.gs, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bq
  %.pn129.pn = phi { ptr, i32 } [ %.pn129, %bb.bt ], [ %i.gr, %bb.bq ] ; 2 uses
  %i.gu = load ptr, ptr %18, align 8, !tbaa !84   ; 3 uses
  %.not.i.i324 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i324, label %_ZN7testing7MessageD2Ev.exit326, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i325

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i325: ; preds = %bb.bu
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !52
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(128) %i.gu) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit326

_ZN7testing7MessageD2Ev.exit326:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i325, %bb.bu, %bb.bp
  %.pn129.pn.pn = phi { ptr, i32 } [ %i.gq, %bb.bp ], [ %.pn129.pn, %bb.bu ], [ %.pn129.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i325 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.gv

bb.bv:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit314, %_ZN7testing7MessageD2Ev.exit323
  %i.gy = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !82 ; 4 uses
  %.not.i.i327 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i327, label %_ZN7testing15AssertionResultD2Ev.exit331, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !68 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 16 ; 2 uses
  %i.hc = icmp eq ptr %i.ha, %i.hb
  br i1 %i.hc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i329, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i328

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i328: ; preds = %bb.bw
  %i.hd = load i64, ptr %i.hb, align 8, !tbaa !69
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.he) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i329

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i329: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i328
  call void @_ZdlPvm(ptr noundef nonnull %i.gz, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit331

_ZN7testing15AssertionResultD2Ev.exit331:         ; preds = %bb.bv, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i329
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  %i.hf = shl nuw i64 %.sroa.2.8.insert.insert.i.i.i.i.i305, 48
  %i.hg = ashr i64 %i.hf, 56
  %i.hh = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %i.fy, i8 noundef signext %.sroa.22.8.extract.trunc.i.i308, i64 noundef %i.hg, i64 noundef -7, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.sroa.3.0.in.in.i339 = extractvalue { i64, i64 } %i.hh, 1
  %.sroa.3.0.in.i340 = and i64 %.sroa.3.0.in.in.i339, 65535
  %i.hi = extractvalue { i64, i64 } %i.hh, 0
  store i64 %i.hi, ptr %21, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store i64 %.sroa.3.0.in.i340, ptr %i.hj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bx, %_ZN7testing15AssertionResultD2Ev.exit331
  %indvars.iv796 = phi i64 [ %indvars.iv.next797, %bb.bx ], [ 1, %_ZN7testing15AssertionResultD2Ev.exit331 ] ; 2 uses
  %indvars.iv794 = phi i64 [ %indvars.iv.next795, %bb.bx ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit331 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bx ], [ 7, %_ZN7testing15AssertionResultD2Ev.exit331 ] ; 2 uses
  %indvars.iv.i.i350 = phi i64 [ %indvars.iv.next.i.i351, %bb.bx ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit331 ] ; 3 uses
  %indvars.iv.next.i.i351 = add nuw nsw i64 %indvars.iv.i.i350, 1
  %indvars.iv.next = add i64 %indvars.iv, -1
  %indvars.iv.next795 = add i64 %indvars.iv794, -1
  %indvars.iv.next797 = add nuw i64 %indvars.iv796, 1
  switch i64 %indvars.iv.i.i350, label %bb.bx [
    i64 10, label %.preheader.i.i353.preheader
    i64 3, label %.preheader.i.i353.preheader
  ]

.preheader.i.i353.preheader:                      ; preds = %bb.bx, %bb.bx
  %umin = call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %indvars.iv794)
  %i.hk = add nuw i64 %umin, %indvars.iv796
  %i.hl = sub nuw nsw i64 %i.hk, %indvars.iv.i.i350
  %i.hm = and i64 %i.hl, 4294967295
  %i.hn = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detailmiENS3_10civil_timeINS3_7day_tagEEEl(i64 1970, i64 257, i64 noundef %i.hm) #20 ; 2 uses
  %i.ho = extractvalue { i64, i64 } %i.hn, 1      ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i4.i357 = and i64 %i.ho, 65535
  %i.hp = extractvalue { i64, i64 } %i.hn, 0      ; 2 uses
  store i64 %i.hp, ptr %22, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %.sroa.2.8.insert.insert.i.i.i4.i357, ptr %i.hq, align 8
  %i.hr = load i64, ptr %21, align 8, !tbaa !98, !noalias !1792
  %i.hs = icmp eq i64 %i.hr, %i.hp
  %i.ht = lshr i64 %i.ho, 8
  %i.hu = trunc i64 %i.ht to i8
  %i.hv = trunc i64 %i.ho to i8
  %i.hw = load i8, ptr %i.hj, align 8
  %i.hx = icmp eq i8 %i.hw, %i.hv
  %i.hy = getelementptr inbounds nuw i8, ptr %21, i64 9
  %i.hz = load <4 x i8>, ptr %i.hy, align 1
  %i.ia = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %i.hu, i64 0
  %i.ib = icmp eq <4 x i8> %i.hz, %i.ia
  %i.ic = freeze <4 x i1> %i.ib
  %i.id = bitcast <4 x i1> %i.ic to i4
  %i.ie = icmp eq i4 %i.id, -1
  %op.rdx985 = select i1 %i.ie, i1 %i.hs, i1 false
  %op.rdx986 = select i1 %op.rdx985, i1 %i.hx, i1 false
  br i1 %op.rdx986, label %bb.by, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i360

bb.by:                                            ; preds = %.preheader.i.i353.preheader
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %20)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit362

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i360: ; preds = %.preheader.i.i353.preheader
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %20, ptr noundef nonnull @.str.668, ptr noundef nonnull @.str.670, ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) %22)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit362

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit362: ; preds = %bb.by, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i360
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  %i.if = load i8, ptr %20, align 8, !tbaa !79, !range !80, !noundef !81
  %i.ig = trunc nuw i8 %i.if to i1
  br i1 %i.ig, label %bb.ci, label %bb.bz

bb.bz:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit362
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.ca unwind label %bb.ce

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  %i.ih = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !82 ; 2 uses
  %.not.i.i363 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i363, label %_ZNK7testing15AssertionResult15failure_messageEv.exit364, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit364

_ZNK7testing15AssertionResult15failure_messageEv.exit364: ; preds = %bb.cb, %bb.ca
  %i.ik = phi ptr [ %i.ij, %bb.cb ], [ @.str.100, %bb.ca ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %24, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 938, ptr noundef %i.ik)
          to label %bb.cc unwind label %bb.cf

bb.cc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit364
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.cd unwind label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  %i.il = load ptr, ptr %23, align 8, !tbaa !84   ; 3 uses
  %.not.i.i365 = icmp eq ptr %i.il, null
  br i1 %.not.i.i365, label %_ZN7testing7MessageD2Ev.exit367, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i366

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i366: ; preds = %bb.cd
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !52
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load ptr, ptr %i.in, align 8
  call void %i.io(ptr noundef nonnull align 8 dereferenceable(128) %i.il) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit367

_ZN7testing7MessageD2Ev.exit367:                  ; preds = %bb.cd, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i366
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  br label %bb.ci

bb.ce:                                            ; preds = %bb.bz
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit370

bb.cf:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit364
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cg:                                            ; preds = %bb.cc
  %i.ir = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #20
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.pn133 = phi { ptr, i32 } [ %i.ir, %bb.cg ], [ %i.iq, %bb.cf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  %i.is = load ptr, ptr %23, align 8, !tbaa !84   ; 3 uses
  %.not.i.i368 = icmp eq ptr %i.is, null
  br i1 %.not.i.i368, label %_ZN7testing7MessageD2Ev.exit370, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i369

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i369: ; preds = %bb.ch
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !52
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8
  call void %i.iv(ptr noundef nonnull align 8 dereferenceable(128) %i.is) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit370

_ZN7testing7MessageD2Ev.exit370:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i369, %bb.ch, %bb.ce
  %.pn133.pn = phi { ptr, i32 } [ %i.ip, %bb.ce ], [ %.pn133, %bb.ch ], [ %.pn133, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i369 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %bb.gv

bb.ci:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit362, %_ZN7testing7MessageD2Ev.exit367
  %i.iw = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !82 ; 4 uses
  %.not.i.i371 = icmp eq ptr %i.ix, null
  br i1 %.not.i.i371, label %_ZN7testing15AssertionResultD2Ev.exit375, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !68 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 16 ; 2 uses
  %i.ja = icmp eq ptr %i.iy, %i.iz
  br i1 %i.ja, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i373, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i372

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i372: ; preds = %bb.cj
  %i.jb = load i64, ptr %i.iz, align 8, !tbaa !69
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jc) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i373

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i373: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i372
  call void @_ZdlPvm(ptr noundef nonnull %i.ix, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit375

_ZN7testing15AssertionResultD2Ev.exit375:         ; preds = %bb.ci, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i373
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %_ZN7testing15AssertionResultD2Ev.exit375
  %indvars.iv.i.i384 = phi i64 [ %indvars.iv.next.i.i385, %bb.ck ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit375 ] ; 4 uses
  %indvars.iv.next.i.i385 = add nuw nsw i64 %indvars.iv.i.i384, 1
  switch i64 %indvars.iv.i.i384, label %bb.ck [
    i64 10, label %.preheader.i.i387.preheader
    i64 3, label %.preheader.i.i387.preheader
  ]

.preheader.i.i387.preheader:                      ; preds = %bb.ck, %bb.ck
  br label %.preheader.i.i387

.preheader.i.i387:                                ; preds = %.preheader.i.i387.preheader, %.preheader.i.i387
  %indvars.iv17.i.i388 = phi i64 [ %indvars.iv.next18.i.i389, %.preheader.i.i387 ], [ %indvars.iv.i.i384, %.preheader.i.i387.preheader ]
  %indvars.iv.next18.i.i389 = add nuw nsw i64 %indvars.iv17.i.i388, 1 ; 3 uses
  switch i64 %indvars.iv.next18.i.i389, label %.preheader.i.i387 [
    i64 13, label %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit394
    i64 6, label %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit394
  ]

_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit394: ; preds = %.preheader.i.i387, %.preheader.i.i387
  %i.jd = sub nuw nsw i64 %indvars.iv.next18.i.i389, %indvars.iv.i.i384
  %i.je = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 1970, i8 noundef signext 1, i64 noundef 1, i64 noundef %i.jd, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.fca.1.extract.i.i.i.i391 = extractvalue { i64, i64 } %i.je, 1 ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i.i.i392 = and i64 %.fca.1.extract.i.i.i.i391, 65535 ; 2 uses
  %i.jf = extractvalue { i64, i64 } %i.je, 0      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  store i32 3, ptr %i.g, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  %.sroa.22.8.extract.trunc.i.i395 = trunc i64 %.fca.1.extract.i.i.i.i391 to i8 ; 2 uses
  %.sroa.43.8.extract.shift.i.i396 = lshr i64 %.fca.1.extract.i.i.i.i391, 8
  %.sroa.43.8.extract.trunc.i.i397 = trunc i64 %.sroa.43.8.extract.shift.i.i396 to i8
  %i.jg = call noundef i64 @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %i.jf, i8 noundef signext %.sroa.22.8.extract.trunc.i.i395, i8 noundef signext %.sroa.43.8.extract.trunc.i.i397, i64 noundef 1970, i8 noundef signext 1, i8 noundef signext 1) #20 ; 2 uses
  store i64 %i.jg, ptr %i.h, align 8, !tbaa !92
  %i.jh = load i32, ptr %i.g, align 4, !tbaa !93, !noalias !1793
  %i.ji = sext i32 %i.jh to i64
  %i.jj = icmp eq i64 %i.jg, %i.ji
  br i1 %i.jj, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit394
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %25)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit401

bb.cm:                                            ; preds = %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit394
  call void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %25, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.665, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit401

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit401: ; preds = %bb.cl, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  %i.jk = load i8, ptr %25, align 8, !tbaa !79, !range !80, !noundef !81
  %i.jl = trunc nuw i8 %i.jk to i1
  br i1 %i.jl, label %bb.cy, label %bb.cn

bb.cn:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit401
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.co unwind label %bb.cs

bb.co:                                            ; preds = %bb.cn
  %i.jm = load ptr, ptr %26, align 8, !tbaa !84
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %i.jo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052613time_internallsERSoNS1_4cctz6detail10civil_timeINS1_7day_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.jn, i64 %i.jf, i64 %.sroa.2.8.insert.insert.i.i.i.i.i392)
          to label %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit405 unwind label %bb.ct ; 0 uses

_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit405: ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  %i.jp = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !82 ; 2 uses
  %.not.i.i406 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i406, label %_ZNK7testing15AssertionResult15failure_messageEv.exit407, label %bb.cp

bb.cp:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit405
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit407

_ZNK7testing15AssertionResult15failure_messageEv.exit407: ; preds = %bb.cp, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit405
  %i.js = phi ptr [ %i.jr, %bb.cp ], [ @.str.100, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit405 ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %27, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 942, ptr noundef %i.js)
          to label %bb.cq unwind label %bb.cu

bb.cq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit407
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.cr unwind label %bb.cv

bb.cr:                                            ; preds = %bb.cq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  %i.jt = load ptr, ptr %26, align 8, !tbaa !84   ; 3 uses
  %.not.i.i408 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i408, label %_ZN7testing7MessageD2Ev.exit410, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i409

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i409: ; preds = %bb.cr
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !52
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8
  call void %i.jw(ptr noundef nonnull align 8 dereferenceable(128) %i.jt) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit410

_ZN7testing7MessageD2Ev.exit410:                  ; preds = %bb.cr, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i409
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  br label %bb.cy

bb.cs:                                            ; preds = %bb.cn
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit413

bb.ct:                                            ; preds = %bb.co
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.cu:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit407
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cv:                                            ; preds = %bb.cq
  %i.ka = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #20
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.pn136 = phi { ptr, i32 } [ %i.ka, %bb.cv ], [ %i.jz, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.ct
  %.pn136.pn = phi { ptr, i32 } [ %.pn136, %bb.cw ], [ %i.jy, %bb.ct ] ; 2 uses
  %i.kb = load ptr, ptr %26, align 8, !tbaa !84   ; 3 uses
  %.not.i.i411 = icmp eq ptr %i.kb, null
  br i1 %.not.i.i411, label %_ZN7testing7MessageD2Ev.exit413, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i412

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i412: ; preds = %bb.cx
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !52
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8
  call void %i.ke(ptr noundef nonnull align 8 dereferenceable(128) %i.kb) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit413

_ZN7testing7MessageD2Ev.exit413:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i412, %bb.cx, %bb.cs
  %.pn136.pn.pn = phi { ptr, i32 } [ %i.jx, %bb.cs ], [ %.pn136.pn, %bb.cx ], [ %.pn136.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i412 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  br label %bb.gv

bb.cy:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit401, %_ZN7testing7MessageD2Ev.exit410
  %i.kf = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !82 ; 4 uses
  %.not.i.i414 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i414, label %_ZN7testing15AssertionResultD2Ev.exit418, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !68 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i416, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i415

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i415: ; preds = %bb.cz
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !69
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i416

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i416: ; preds = %bb.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i415
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit418

_ZN7testing15AssertionResultD2Ev.exit418:         ; preds = %bb.cy, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i416
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  %i.km = shl nuw i64 %.sroa.2.8.insert.insert.i.i.i.i.i392, 48
  %i.kn = ashr i64 %i.km, 56
  %i.ko = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %i.jf, i8 noundef signext %.sroa.22.8.extract.trunc.i.i395, i64 noundef %i.kn, i64 noundef -7, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.sroa.3.0.in.in.i426 = extractvalue { i64, i64 } %i.ko, 1
  %.sroa.3.0.in.i427 = and i64 %.sroa.3.0.in.in.i426, 65535
  %i.kp = extractvalue { i64, i64 } %i.ko, 0
  store i64 %i.kp, ptr %29, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  store i64 %.sroa.3.0.in.i427, ptr %i.kq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #20
  br label %bb.da

bb.da:                                            ; preds = %bb.da, %_ZN7testing15AssertionResultD2Ev.exit418
  %indvars.iv.i.i437 = phi i64 [ %indvars.iv.next.i.i438, %bb.da ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit418 ] ; 3 uses
  %indvars.iv.next.i.i438 = add nuw nsw i64 %indvars.iv.i.i437, 1
  switch i64 %indvars.iv.i.i437, label %bb.da [
    i64 10, label %.preheader.i.i440.preheader
    i64 3, label %.preheader.i.i440.preheader
  ]

.preheader.i.i440.preheader:                      ; preds = %bb.da, %bb.da
  %i.kr = sub nuw nsw i64 7, %indvars.iv.i.i437
  %i.ks = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detailmiENS3_10civil_timeINS3_7day_tagEEEl(i64 1970, i64 257, i64 noundef %i.kr) #20 ; 2 uses
  %i.kt = extractvalue { i64, i64 } %i.ks, 1      ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i4.i444 = and i64 %i.kt, 65535
  %i.ku = extractvalue { i64, i64 } %i.ks, 0      ; 2 uses
  store i64 %i.ku, ptr %30, align 8
  %i.kv = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 %.sroa.2.8.insert.insert.i.i.i4.i444, ptr %i.kv, align 8
  %i.kw = load i64, ptr %29, align 8, !tbaa !98, !noalias !1794
  %i.kx = icmp eq i64 %i.kw, %i.ku
  %i.ky = lshr i64 %i.kt, 8
  %i.kz = trunc i64 %i.ky to i8
  %i.la = trunc i64 %i.kt to i8
  %i.lb = load i8, ptr %i.kq, align 8
  %i.lc = icmp eq i8 %i.lb, %i.la
  %i.ld = getelementptr inbounds nuw i8, ptr %29, i64 9
  %i.le = load <4 x i8>, ptr %i.ld, align 1
  %i.lf = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %i.kz, i64 0
  %i.lg = icmp eq <4 x i8> %i.le, %i.lf
  %i.lh = freeze <4 x i1> %i.lg
  %i.li = bitcast <4 x i1> %i.lh to i4
  %i.lj = icmp eq i4 %i.li, -1
  %op.rdx983 = select i1 %i.lj, i1 %i.kx, i1 false
  %op.rdx984 = select i1 %op.rdx983, i1 %i.lc, i1 false
  br i1 %op.rdx984, label %bb.db, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i447

bb.db:                                            ; preds = %.preheader.i.i440.preheader
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %28)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit449

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i447: ; preds = %.preheader.i.i440.preheader
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %28, ptr noundef nonnull @.str.668, ptr noundef nonnull @.str.671, ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %30)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit449

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit449: ; preds = %bb.db, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i447
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  %i.lk = load i8, ptr %28, align 8, !tbaa !79, !range !80, !noundef !81
  %i.ll = trunc nuw i8 %i.lk to i1
  br i1 %i.ll, label %bb.dl, label %bb.dc

bb.dc:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit449
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.dd unwind label %bb.dh

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #20
  %i.lm = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !82 ; 2 uses
  %.not.i.i450 = icmp eq ptr %i.ln, null
  br i1 %.not.i.i450, label %_ZNK7testing15AssertionResult15failure_messageEv.exit451, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit451

_ZNK7testing15AssertionResult15failure_messageEv.exit451: ; preds = %bb.de, %bb.dd
  %i.lp = phi ptr [ %i.lo, %bb.de ], [ @.str.100, %bb.dd ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %32, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 943, ptr noundef %i.lp)
          to label %bb.df unwind label %bb.di

bb.df:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit451
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.dg unwind label %bb.dj

bb.dg:                                            ; preds = %bb.df
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  %i.lq = load ptr, ptr %31, align 8, !tbaa !84   ; 3 uses
  %.not.i.i452 = icmp eq ptr %i.lq, null
  br i1 %.not.i.i452, label %_ZN7testing7MessageD2Ev.exit454, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i453

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i453: ; preds = %bb.dg
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !52
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lt = load ptr, ptr %i.ls, align 8
  call void %i.lt(ptr noundef nonnull align 8 dereferenceable(128) %i.lq) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit454

_ZN7testing7MessageD2Ev.exit454:                  ; preds = %bb.dg, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i453
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  br label %bb.dl

bb.dh:                                            ; preds = %bb.dc
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit457

bb.di:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit451
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.dj:                                            ; preds = %bb.df
  %i.lw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #20
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.pn140 = phi { ptr, i32 } [ %i.lw, %bb.dj ], [ %i.lv, %bb.di ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  %i.lx = load ptr, ptr %31, align 8, !tbaa !84   ; 3 uses
  %.not.i.i455 = icmp eq ptr %i.lx, null
  br i1 %.not.i.i455, label %_ZN7testing7MessageD2Ev.exit457, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i456

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i456: ; preds = %bb.dk
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !52
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8
  call void %i.ma(ptr noundef nonnull align 8 dereferenceable(128) %i.lx) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit457

_ZN7testing7MessageD2Ev.exit457:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i456, %bb.dk, %bb.dh
  %.pn140.pn = phi { ptr, i32 } [ %i.lu, %bb.dh ], [ %.pn140, %bb.dk ], [ %.pn140, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i456 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %28) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  br label %bb.gv

bb.dl:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit449, %_ZN7testing7MessageD2Ev.exit454
  %i.mb = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !82 ; 4 uses
  %.not.i.i458 = icmp eq ptr %i.mc, null
  br i1 %.not.i.i458, label %_ZN7testing15AssertionResultD2Ev.exit462, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !68 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 16 ; 2 uses
  %i.mf = icmp eq ptr %i.md, %i.me
  br i1 %i.mf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i460, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i459

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i459: ; preds = %bb.dm
  %i.mg = load i64, ptr %i.me, align 8, !tbaa !69
  %i.mh = add i64 %i.mg, 1
  call void @_ZdlPvm(ptr noundef %i.md, i64 noundef %i.mh) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i460

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i460: ; preds = %bb.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i459
  call void @_ZdlPvm(ptr noundef nonnull %i.mc, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit462

_ZN7testing15AssertionResultD2Ev.exit462:         ; preds = %bb.dl, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i460
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dn, %_ZN7testing15AssertionResultD2Ev.exit462
  %indvars.iv.i.i471 = phi i64 [ %indvars.iv.next.i.i472, %bb.dn ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit462 ] ; 3 uses
  %indvars.iv.next.i.i472 = add nuw nsw i64 %indvars.iv.i.i471, 1
  switch i64 %indvars.iv.i.i471, label %bb.dn [
    i64 10, label %.preheader.i.i474.preheader
    i64 3, label %.preheader.i.i474.preheader
  ]

.preheader.i.i474.preheader:                      ; preds = %bb.dn, %bb.dn
  %i.mi = sub nuw nsw i64 7, %indvars.iv.i.i471
  %i.mj = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 1970, i8 noundef signext 1, i64 noundef 1, i64 noundef %i.mi, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.fca.1.extract.i.i.i.i478 = extractvalue { i64, i64 } %i.mj, 1 ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i.i.i479 = and i64 %.fca.1.extract.i.i.i.i478, 65535 ; 2 uses
  %i.mk = extractvalue { i64, i64 } %i.mj, 0      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  store i32 4, ptr %i.i, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  %.sroa.22.8.extract.trunc.i.i482 = trunc i64 %.fca.1.extract.i.i.i.i478 to i8 ; 2 uses
  %.sroa.43.8.extract.shift.i.i483 = lshr i64 %.fca.1.extract.i.i.i.i478, 8
  %.sroa.43.8.extract.trunc.i.i484 = trunc i64 %.sroa.43.8.extract.shift.i.i483 to i8
  %i.ml = call noundef i64 @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %i.mk, i8 noundef signext %.sroa.22.8.extract.trunc.i.i482, i8 noundef signext %.sroa.43.8.extract.trunc.i.i484, i64 noundef 1970, i8 noundef signext 1, i8 noundef signext 1) #20 ; 2 uses
  store i64 %i.ml, ptr %i.j, align 8, !tbaa !92
  %i.mm = load i32, ptr %i.i, align 4, !tbaa !93, !noalias !1795
  %i.mn = sext i32 %i.mm to i64
  %i.mo = icmp eq i64 %i.ml, %i.mn
  br i1 %i.mo, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %.preheader.i.i474.preheader
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %33)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit488

bb.dp:                                            ; preds = %.preheader.i.i474.preheader
  call void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %33, ptr noundef nonnull @.str.463, ptr noundef nonnull @.str.665, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit488

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit488: ; preds = %bb.do, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  %i.mp = load i8, ptr %33, align 8, !tbaa !79, !range !80, !noundef !81
  %i.mq = trunc nuw i8 %i.mp to i1
  br i1 %i.mq, label %bb.eb, label %bb.dq

bb.dq:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit488
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %bb.dr unwind label %bb.dv

bb.dr:                                            ; preds = %bb.dq
  %i.mr = load ptr, ptr %34, align 8, !tbaa !84
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %i.mt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052613time_internallsERSoNS1_4cctz6detail10civil_timeINS1_7day_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.ms, i64 %i.mk, i64 %.sroa.2.8.insert.insert.i.i.i.i.i479)
          to label %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit492 unwind label %bb.dw ; 0 uses

_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit492: ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #20
  %i.mu = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !82 ; 2 uses
  %.not.i.i493 = icmp eq ptr %i.mv, null
  br i1 %.not.i.i493, label %_ZNK7testing15AssertionResult15failure_messageEv.exit494, label %bb.ds

bb.ds:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit492
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit494

_ZNK7testing15AssertionResult15failure_messageEv.exit494: ; preds = %bb.ds, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit492
  %i.mx = phi ptr [ %i.mw, %bb.ds ], [ @.str.100, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit492 ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %35, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 947, ptr noundef %i.mx)
          to label %bb.dt unwind label %bb.dx

bb.dt:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit494
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %bb.du unwind label %bb.dy

bb.du:                                            ; preds = %bb.dt
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20
  %i.my = load ptr, ptr %34, align 8, !tbaa !84   ; 3 uses
  %.not.i.i495 = icmp eq ptr %i.my, null
  br i1 %.not.i.i495, label %_ZN7testing7MessageD2Ev.exit497, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i496

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i496: ; preds = %bb.du
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !52
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.nb = load ptr, ptr %i.na, align 8
  call void %i.nb(ptr noundef nonnull align 8 dereferenceable(128) %i.my) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit497

_ZN7testing7MessageD2Ev.exit497:                  ; preds = %bb.du, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i496
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #20
  br label %bb.eb

bb.dv:                                            ; preds = %bb.dq
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit500

bb.dw:                                            ; preds = %bb.dr
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.dx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit494
  %i.ne = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dt
  %i.nf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #20
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %.pn143 = phi { ptr, i32 } [ %i.nf, %bb.dy ], [ %i.ne, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dw
  %.pn143.pn = phi { ptr, i32 } [ %.pn143, %bb.dz ], [ %i.nd, %bb.dw ] ; 2 uses
  %i.ng = load ptr, ptr %34, align 8, !tbaa !84   ; 3 uses
  %.not.i.i498 = icmp eq ptr %i.ng, null
  br i1 %.not.i.i498, label %_ZN7testing7MessageD2Ev.exit500, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i499

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i499: ; preds = %bb.ea
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !52
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.nj = load ptr, ptr %i.ni, align 8
  call void %i.nj(ptr noundef nonnull align 8 dereferenceable(128) %i.ng) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit500

_ZN7testing7MessageD2Ev.exit500:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i499, %bb.ea, %bb.dv
  %.pn143.pn.pn = phi { ptr, i32 } [ %i.nc, %bb.dv ], [ %.pn143.pn, %bb.ea ], [ %.pn143.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i499 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  br label %bb.gv

bb.eb:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit488, %_ZN7testing7MessageD2Ev.exit497
  %i.nk = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !82 ; 4 uses
  %.not.i.i501 = icmp eq ptr %i.nl, null
  br i1 %.not.i.i501, label %_ZN7testing15AssertionResultD2Ev.exit505, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !68 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 16 ; 2 uses
  %i.no = icmp eq ptr %i.nm, %i.nn
  br i1 %i.no, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i503, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i502

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i502: ; preds = %bb.ec
  %i.np = load i64, ptr %i.nn, align 8, !tbaa !69
  %i.nq = add i64 %i.np, 1
  call void @_ZdlPvm(ptr noundef %i.nm, i64 noundef %i.nq) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i503

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i503: ; preds = %bb.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i502
  call void @_ZdlPvm(ptr noundef nonnull %i.nl, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit505

_ZN7testing15AssertionResultD2Ev.exit505:         ; preds = %bb.eb, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i503
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #20
  %i.nr = shl nuw i64 %.sroa.2.8.insert.insert.i.i.i.i.i479, 48
  %i.ns = ashr i64 %i.nr, 56
  %i.nt = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %i.mk, i8 noundef signext %.sroa.22.8.extract.trunc.i.i482, i64 noundef %i.ns, i64 noundef -7, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.sroa.3.0.in.in.i513 = extractvalue { i64, i64 } %i.nt, 1
  %.sroa.3.0.in.i514 = and i64 %.sroa.3.0.in.in.i513, 65535
  %i.nu = extractvalue { i64, i64 } %i.nt, 0
  store i64 %i.nu, ptr %37, align 8
  %i.nv = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  store i64 %.sroa.3.0.in.i514, ptr %i.nv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #20
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ed, %_ZN7testing15AssertionResultD2Ev.exit505
  %indvars.iv.i.i524 = phi i64 [ %indvars.iv.next.i.i525, %bb.ed ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit505 ] ; 4 uses
  %indvars.iv.next.i.i525 = add nuw nsw i64 %indvars.iv.i.i524, 1
  switch i64 %indvars.iv.i.i524, label %bb.ed [
    i64 10, label %.preheader.i.i527.preheader
    i64 3, label %.preheader.i.i527.preheader
  ]

.preheader.i.i527.preheader:                      ; preds = %bb.ed, %bb.ed
  br label %.preheader.i.i527

.preheader.i.i527:                                ; preds = %.preheader.i.i527.preheader, %.preheader.i.i527
  %indvars.iv17.i.i528 = phi i64 [ %indvars.iv.next18.i.i529, %.preheader.i.i527 ], [ %indvars.iv.i.i524, %.preheader.i.i527.preheader ]
  %indvars.iv.next18.i.i529 = add nuw nsw i64 %indvars.iv17.i.i528, 1 ; 3 uses
  switch i64 %indvars.iv.next18.i.i529, label %.preheader.i.i527 [
    i64 13, label %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit533
    i64 6, label %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit533
  ]

_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit533: ; preds = %.preheader.i.i527, %.preheader.i.i527
  %i.nw = sub nuw nsw i64 %indvars.iv.next18.i.i529, %indvars.iv.i.i524
  %i.nx = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detailmiENS3_10civil_timeINS3_7day_tagEEEl(i64 1970, i64 257, i64 noundef %i.nw) #20 ; 2 uses
  %i.ny = extractvalue { i64, i64 } %i.nx, 1      ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i4.i531 = and i64 %i.ny, 65535
  %i.nz = extractvalue { i64, i64 } %i.nx, 0      ; 2 uses
  store i64 %i.nz, ptr %38, align 8
  %i.oa = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 %.sroa.2.8.insert.insert.i.i.i4.i531, ptr %i.oa, align 8
  %i.ob = load i64, ptr %37, align 8, !tbaa !98, !noalias !1796
  %i.oc = icmp eq i64 %i.ob, %i.nz
  %i.od = lshr i64 %i.ny, 8
  %i.oe = trunc i64 %i.od to i8
  %i.of = trunc i64 %i.ny to i8
  %i.og = load i8, ptr %i.nv, align 8
  %i.oh = icmp eq i8 %i.og, %i.of
  %i.oi = getelementptr inbounds nuw i8, ptr %37, i64 9
  %i.oj = load <4 x i8>, ptr %i.oi, align 1
  %i.ok = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %i.oe, i64 0
  %i.ol = icmp eq <4 x i8> %i.oj, %i.ok
  %i.om = freeze <4 x i1> %i.ol
  %i.on = bitcast <4 x i1> %i.om to i4
  %i.oo = icmp eq i4 %i.on, -1
  %op.rdx981 = select i1 %i.oo, i1 %i.oc, i1 false
  %op.rdx982 = select i1 %op.rdx981, i1 %i.oh, i1 false
  br i1 %op.rdx982, label %bb.ee, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i534

bb.ee:                                            ; preds = %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit533
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %36)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit536

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i534: ; preds = %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit533
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %36, ptr noundef nonnull @.str.668, ptr noundef nonnull @.str.672, ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 8 dereferenceable(16) %38)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit536

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit536: ; preds = %bb.ee, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i534
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #20
  %i.op = load i8, ptr %36, align 8, !tbaa !79, !range !80, !noundef !81
  %i.oq = trunc nuw i8 %i.op to i1
  br i1 %i.oq, label %bb.eo, label %bb.ef

bb.ef:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit536
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.eg unwind label %bb.ek

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #20
  %i.or = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !82 ; 2 uses
  %.not.i.i537 = icmp eq ptr %i.os, null
  br i1 %.not.i.i537, label %_ZNK7testing15AssertionResult15failure_messageEv.exit538, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit538

_ZNK7testing15AssertionResult15failure_messageEv.exit538: ; preds = %bb.eh, %bb.eg
  %i.ou = phi ptr [ %i.ot, %bb.eh ], [ @.str.100, %bb.eg ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %40, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 948, ptr noundef %i.ou)
          to label %bb.ei unwind label %bb.el

bb.ei:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit538
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.ej unwind label %bb.em

bb.ej:                                            ; preds = %bb.ei
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #20
  %i.ov = load ptr, ptr %39, align 8, !tbaa !84   ; 3 uses
  %.not.i.i539 = icmp eq ptr %i.ov, null
  br i1 %.not.i.i539, label %_ZN7testing7MessageD2Ev.exit541, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i540

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i540: ; preds = %bb.ej
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !52
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  %i.oy = load ptr, ptr %i.ox, align 8
  call void %i.oy(ptr noundef nonnull align 8 dereferenceable(128) %i.ov) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit541

_ZN7testing7MessageD2Ev.exit541:                  ; preds = %bb.ej, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i540
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20
  br label %bb.eo

bb.ek:                                            ; preds = %bb.ef
  %i.oz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit544

bb.el:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit538
  %i.pa = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.em:                                            ; preds = %bb.ei
  %i.pb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #20
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %.pn147 = phi { ptr, i32 } [ %i.pb, %bb.em ], [ %i.pa, %bb.el ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #20
  %i.pc = load ptr, ptr %39, align 8, !tbaa !84   ; 3 uses
  %.not.i.i542 = icmp eq ptr %i.pc, null
  br i1 %.not.i.i542, label %_ZN7testing7MessageD2Ev.exit544, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i543

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i543: ; preds = %bb.en
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !52
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  %i.pf = load ptr, ptr %i.pe, align 8
  call void %i.pf(ptr noundef nonnull align 8 dereferenceable(128) %i.pc) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit544

_ZN7testing7MessageD2Ev.exit544:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i543, %bb.en, %bb.ek
  %.pn147.pn = phi { ptr, i32 } [ %i.oz, %bb.ek ], [ %.pn147, %bb.en ], [ %.pn147, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i543 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %36) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  br label %bb.gv

bb.eo:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit536, %_ZN7testing7MessageD2Ev.exit541
  %i.pg = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !82 ; 4 uses
  %.not.i.i545 = icmp eq ptr %i.ph, null
  br i1 %.not.i.i545, label %_ZN7testing15AssertionResultD2Ev.exit549, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !68 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ph, i64 16 ; 2 uses
  %i.pk = icmp eq ptr %i.pi, %i.pj
  br i1 %i.pk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i547, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i546

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i546: ; preds = %bb.ep
  %i.pl = load i64, ptr %i.pj, align 8, !tbaa !69
  %i.pm = add i64 %i.pl, 1
  call void @_ZdlPvm(ptr noundef %i.pi, i64 noundef %i.pm) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i547

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i547: ; preds = %bb.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i546
  call void @_ZdlPvm(ptr noundef nonnull %i.ph, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit549

_ZN7testing15AssertionResultD2Ev.exit549:         ; preds = %bb.eo, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i547
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  br label %bb.eq

bb.eq:                                            ; preds = %bb.eq, %_ZN7testing15AssertionResultD2Ev.exit549
  %indvars.iv803 = phi i64 [ %indvars.iv.next804, %bb.eq ], [ 1, %_ZN7testing15AssertionResultD2Ev.exit549 ] ; 2 uses
  %indvars.iv800 = phi i64 [ %indvars.iv.next801, %bb.eq ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit549 ] ; 2 uses
  %indvars.iv798 = phi i64 [ %indvars.iv.next799, %bb.eq ], [ 7, %_ZN7testing15AssertionResultD2Ev.exit549 ] ; 2 uses
  %indvars.iv.i.i558 = phi i64 [ %indvars.iv.next.i.i559, %bb.eq ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit549 ] ; 3 uses
  %indvars.iv.next.i.i559 = add nuw nsw i64 %indvars.iv.i.i558, 1
  %indvars.iv.next799 = add i64 %indvars.iv798, -1
  %indvars.iv.next801 = add i64 %indvars.iv800, -1
  %indvars.iv.next804 = add nuw i64 %indvars.iv803, 1
  switch i64 %indvars.iv.i.i558, label %bb.eq [
    i64 10, label %.preheader.i.i561.preheader
    i64 3, label %.preheader.i.i561.preheader
  ]

.preheader.i.i561.preheader:                      ; preds = %bb.eq, %bb.eq
  %umin802 = call i64 @llvm.umin.i64(i64 %indvars.iv798, i64 %indvars.iv800)
  %i.pn = add nuw i64 %umin802, %indvars.iv803
  %i.po = sub nuw nsw i64 %i.pn, %indvars.iv.i.i558
  %i.pp = and i64 %i.po, 4294967295
  %i.pq = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 1970, i8 noundef signext 1, i64 noundef 1, i64 noundef %i.pp, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.fca.1.extract.i.i.i.i565 = extractvalue { i64, i64 } %i.pq, 1 ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i.i.i566 = and i64 %.fca.1.extract.i.i.i.i565, 65535 ; 2 uses
  %i.pr = extractvalue { i64, i64 } %i.pq, 0      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #20
  store i32 5, ptr %i.k, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #20
  %.sroa.22.8.extract.trunc.i.i569 = trunc i64 %.fca.1.extract.i.i.i.i565 to i8 ; 2 uses
  %.sroa.43.8.extract.shift.i.i570 = lshr i64 %.fca.1.extract.i.i.i.i565, 8
  %.sroa.43.8.extract.trunc.i.i571 = trunc i64 %.sroa.43.8.extract.shift.i.i570 to i8
  %i.ps = call noundef i64 @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %i.pr, i8 noundef signext %.sroa.22.8.extract.trunc.i.i569, i8 noundef signext %.sroa.43.8.extract.trunc.i.i571, i64 noundef 1970, i8 noundef signext 1, i8 noundef signext 1) #20 ; 2 uses
  store i64 %i.ps, ptr %i.l, align 8, !tbaa !92
  %i.pt = load i32, ptr %i.k, align 4, !tbaa !93, !noalias !1797
  %i.pu = sext i32 %i.pt to i64
  %i.pv = icmp eq i64 %i.ps, %i.pu
  br i1 %i.pv, label %bb.er, label %bb.es

bb.er:                                            ; preds = %.preheader.i.i561.preheader
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %41)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit575

bb.es:                                            ; preds = %.preheader.i.i561.preheader
  call void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %41, ptr noundef nonnull @.str.465, ptr noundef nonnull @.str.665, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit575

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit575: ; preds = %bb.er, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #20
  %i.pw = load i8, ptr %41, align 8, !tbaa !79, !range !80, !noundef !81
  %i.px = trunc nuw i8 %i.pw to i1
  br i1 %i.px, label %bb.fe, label %bb.et

bb.et:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit575
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %42)
          to label %bb.eu unwind label %bb.ey

bb.eu:                                            ; preds = %bb.et
  %i.py = load ptr, ptr %42, align 8, !tbaa !84
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  %i.qa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052613time_internallsERSoNS1_4cctz6detail10civil_timeINS1_7day_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.pz, i64 %i.pr, i64 %.sroa.2.8.insert.insert.i.i.i.i.i566)
          to label %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit579 unwind label %bb.ez ; 0 uses

_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit579: ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #20
  %i.qb = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !82 ; 2 uses
  %.not.i.i580 = icmp eq ptr %i.qc, null
  br i1 %.not.i.i580, label %_ZNK7testing15AssertionResult15failure_messageEv.exit581, label %bb.ev

bb.ev:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit579
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit581

_ZNK7testing15AssertionResult15failure_messageEv.exit581: ; preds = %bb.ev, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit579
  %i.qe = phi ptr [ %i.qd, %bb.ev ], [ @.str.100, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit579 ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %43, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 952, ptr noundef %i.qe)
          to label %bb.ew unwind label %bb.fa

bb.ew:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit581
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef nonnull align 8 dereferenceable(8) %42)
          to label %bb.ex unwind label %bb.fb

bb.ex:                                            ; preds = %bb.ew
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %43) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #20
  %i.qf = load ptr, ptr %42, align 8, !tbaa !84   ; 3 uses
  %.not.i.i582 = icmp eq ptr %i.qf, null
  br i1 %.not.i.i582, label %_ZN7testing7MessageD2Ev.exit584, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i583

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i583: ; preds = %bb.ex
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !52
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  %i.qi = load ptr, ptr %i.qh, align 8
  call void %i.qi(ptr noundef nonnull align 8 dereferenceable(128) %i.qf) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit584

_ZN7testing7MessageD2Ev.exit584:                  ; preds = %bb.ex, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i583
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #20
  br label %bb.fe

bb.ey:                                            ; preds = %bb.et
  %i.qj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit587

bb.ez:                                            ; preds = %bb.eu
  %i.qk = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.fa:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit581
  %i.ql = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.fb:                                            ; preds = %bb.ew
  %i.qm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %43) #20
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %.pn150 = phi { ptr, i32 } [ %i.qm, %bb.fb ], [ %i.ql, %bb.fa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #20
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.ez
  %.pn150.pn = phi { ptr, i32 } [ %.pn150, %bb.fc ], [ %i.qk, %bb.ez ] ; 2 uses
  %i.qn = load ptr, ptr %42, align 8, !tbaa !84   ; 3 uses
  %.not.i.i585 = icmp eq ptr %i.qn, null
  br i1 %.not.i.i585, label %_ZN7testing7MessageD2Ev.exit587, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i586

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i586: ; preds = %bb.fd
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !52
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %i.qq = load ptr, ptr %i.qp, align 8
  call void %i.qq(ptr noundef nonnull align 8 dereferenceable(128) %i.qn) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit587

_ZN7testing7MessageD2Ev.exit587:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i586, %bb.fd, %bb.ey
  %.pn150.pn.pn = phi { ptr, i32 } [ %i.qj, %bb.ey ], [ %.pn150.pn, %bb.fd ], [ %.pn150.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i586 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %41) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #20
  br label %bb.gv

bb.fe:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit575, %_ZN7testing7MessageD2Ev.exit584
  %i.qr = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !82 ; 4 uses
  %.not.i.i588 = icmp eq ptr %i.qs, null
  br i1 %.not.i.i588, label %_ZN7testing15AssertionResultD2Ev.exit592, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !68 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qs, i64 16 ; 2 uses
  %i.qv = icmp eq ptr %i.qt, %i.qu
  br i1 %i.qv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i590, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i589

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i589: ; preds = %bb.ff
  %i.qw = load i64, ptr %i.qu, align 8, !tbaa !69
  %i.qx = add i64 %i.qw, 1
  call void @_ZdlPvm(ptr noundef %i.qt, i64 noundef %i.qx) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i590

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i590: ; preds = %bb.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i589
  call void @_ZdlPvm(ptr noundef nonnull %i.qs, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit592

_ZN7testing15AssertionResultD2Ev.exit592:         ; preds = %bb.fe, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i590
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #20
  %i.qy = shl nuw i64 %.sroa.2.8.insert.insert.i.i.i.i.i566, 48
  %i.qz = ashr i64 %i.qy, 56
  %i.ra = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %i.pr, i8 noundef signext %.sroa.22.8.extract.trunc.i.i569, i64 noundef %i.qz, i64 noundef -7, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.sroa.3.0.in.in.i600 = extractvalue { i64, i64 } %i.ra, 1
  %.sroa.3.0.in.i601 = and i64 %.sroa.3.0.in.in.i600, 65535
  %i.rb = extractvalue { i64, i64 } %i.ra, 0
  store i64 %i.rb, ptr %45, align 8
  %i.rc = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  store i64 %.sroa.3.0.in.i601, ptr %i.rc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #20
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fg, %_ZN7testing15AssertionResultD2Ev.exit592
  %indvars.iv.i.i611 = phi i64 [ %indvars.iv.next.i.i612, %bb.fg ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit592 ] ; 4 uses
  %indvars.iv.next.i.i612 = add nuw nsw i64 %indvars.iv.i.i611, 1
  switch i64 %indvars.iv.i.i611, label %bb.fg [
    i64 10, label %.preheader.i.i614.preheader
    i64 3, label %.preheader.i.i614.preheader
  ]

.preheader.i.i614.preheader:                      ; preds = %bb.fg, %bb.fg
  br label %.preheader.i.i614

.preheader.i.i614:                                ; preds = %.preheader.i.i614.preheader, %.preheader.i.i614
  %indvars.iv17.i.i615 = phi i64 [ %indvars.iv.next18.i.i616, %.preheader.i.i614 ], [ %indvars.iv.i.i611, %.preheader.i.i614.preheader ]
  %indvars.iv.next18.i.i616 = add nuw nsw i64 %indvars.iv17.i.i615, 1 ; 3 uses
  switch i64 %indvars.iv.next18.i.i616, label %.preheader.i.i614 [
    i64 12, label %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit620
    i64 5, label %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit620
  ]

_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit620: ; preds = %.preheader.i.i614, %.preheader.i.i614
  %i.rd = sub nuw nsw i64 %indvars.iv.next18.i.i616, %indvars.iv.i.i611
  %i.re = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detailmiENS3_10civil_timeINS3_7day_tagEEEl(i64 1970, i64 257, i64 noundef %i.rd) #20 ; 2 uses
  %i.rf = extractvalue { i64, i64 } %i.re, 1      ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i4.i618 = and i64 %i.rf, 65535
  %i.rg = extractvalue { i64, i64 } %i.re, 0      ; 2 uses
  store i64 %i.rg, ptr %46, align 8
  %i.rh = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i64 %.sroa.2.8.insert.insert.i.i.i4.i618, ptr %i.rh, align 8
  %i.ri = load i64, ptr %45, align 8, !tbaa !98, !noalias !1798
  %i.rj = icmp eq i64 %i.ri, %i.rg
  %i.rk = lshr i64 %i.rf, 8
  %i.rl = trunc i64 %i.rk to i8
  %i.rm = trunc i64 %i.rf to i8
  %i.rn = load i8, ptr %i.rc, align 8
  %i.ro = icmp eq i8 %i.rn, %i.rm
  %i.rp = getelementptr inbounds nuw i8, ptr %45, i64 9
  %i.rq = load <4 x i8>, ptr %i.rp, align 1
  %i.rr = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %i.rl, i64 0
  %i.rs = icmp eq <4 x i8> %i.rq, %i.rr
  %i.rt = freeze <4 x i1> %i.rs
  %i.ru = bitcast <4 x i1> %i.rt to i4
  %i.rv = icmp eq i4 %i.ru, -1
  %op.rdx = select i1 %i.rv, i1 %i.rj, i1 false
  %op.rdx980 = select i1 %op.rdx, i1 %i.ro, i1 false
  br i1 %op.rdx980, label %bb.fh, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i621

bb.fh:                                            ; preds = %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit620
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %44)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit623

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i621: ; preds = %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit620
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %44, ptr noundef nonnull @.str.668, ptr noundef nonnull @.str.673, ptr noundef nonnull align 8 dereferenceable(16) %45, ptr noundef nonnull align 8 dereferenceable(16) %46)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit623

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit623: ; preds = %bb.fh, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i621
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #20
  %i.rw = load i8, ptr %44, align 8, !tbaa !79, !range !80, !noundef !81
  %i.rx = trunc nuw i8 %i.rw to i1
  br i1 %i.rx, label %bb.fr, label %bb.fi

bb.fi:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit623
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %bb.fj unwind label %bb.fn

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #20
  %i.ry = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !82 ; 2 uses
  %.not.i.i624 = icmp eq ptr %i.rz, null
  br i1 %.not.i.i624, label %_ZNK7testing15AssertionResult15failure_messageEv.exit625, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit625

_ZNK7testing15AssertionResult15failure_messageEv.exit625: ; preds = %bb.fk, %bb.fj
  %i.sb = phi ptr [ %i.sa, %bb.fk ], [ @.str.100, %bb.fj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %48, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 953, ptr noundef %i.sb)
          to label %bb.fl unwind label %bb.fo

bb.fl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit625
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %bb.fm unwind label %bb.fp

bb.fm:                                            ; preds = %bb.fl
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %48) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #20
  %i.sc = load ptr, ptr %47, align 8, !tbaa !84   ; 3 uses
  %.not.i.i626 = icmp eq ptr %i.sc, null
  br i1 %.not.i.i626, label %_ZN7testing7MessageD2Ev.exit628, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i627

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i627: ; preds = %bb.fm
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !52
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 8
  %i.sf = load ptr, ptr %i.se, align 8
  call void %i.sf(ptr noundef nonnull align 8 dereferenceable(128) %i.sc) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit628

_ZN7testing7MessageD2Ev.exit628:                  ; preds = %bb.fm, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i627
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #20
  br label %bb.fr

bb.fn:                                            ; preds = %bb.fi
  %i.sg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit631

bb.fo:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit625
  %i.sh = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq

bb.fp:                                            ; preds = %bb.fl
  %i.si = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %48) #20
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %.pn154 = phi { ptr, i32 } [ %i.si, %bb.fp ], [ %i.sh, %bb.fo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #20
  %i.sj = load ptr, ptr %47, align 8, !tbaa !84   ; 3 uses
  %.not.i.i629 = icmp eq ptr %i.sj, null
  br i1 %.not.i.i629, label %_ZN7testing7MessageD2Ev.exit631, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i630

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i630: ; preds = %bb.fq
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !52
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %i.sm = load ptr, ptr %i.sl, align 8
  call void %i.sm(ptr noundef nonnull align 8 dereferenceable(128) %i.sj) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit631

_ZN7testing7MessageD2Ev.exit631:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i630, %bb.fq, %bb.fn
  %.pn154.pn = phi { ptr, i32 } [ %i.sg, %bb.fn ], [ %.pn154, %bb.fq ], [ %.pn154, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i630 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %44) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #20
  br label %bb.gv

bb.fr:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit623, %_ZN7testing7MessageD2Ev.exit628
  %i.sn = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !82 ; 4 uses
  %.not.i.i632 = icmp eq ptr %i.so, null
  br i1 %.not.i.i632, label %_ZN7testing15AssertionResultD2Ev.exit636, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !68 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.so, i64 16 ; 2 uses
  %i.sr = icmp eq ptr %i.sp, %i.sq
  br i1 %i.sr, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i634, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i633

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i633: ; preds = %bb.fs
  %i.ss = load i64, ptr %i.sq, align 8, !tbaa !69
  %i.st = add i64 %i.ss, 1
  call void @_ZdlPvm(ptr noundef %i.sp, i64 noundef %i.st) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i634

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i634: ; preds = %bb.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i633
  call void @_ZdlPvm(ptr noundef nonnull %i.so, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit636

_ZN7testing15AssertionResultD2Ev.exit636:         ; preds = %bb.fr, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i634
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #20
  br label %bb.ft

bb.ft:                                            ; preds = %bb.ft, %_ZN7testing15AssertionResultD2Ev.exit636
  %indvars.iv.i.i645 = phi i64 [ %indvars.iv.next.i.i646, %bb.ft ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit636 ] ; 4 uses
  %indvars.iv.next.i.i646 = add nuw nsw i64 %indvars.iv.i.i645, 1
  switch i64 %indvars.iv.i.i645, label %bb.ft [
    i64 10, label %.preheader.i.i648.preheader
    i64 3, label %.preheader.i.i648.preheader
  ]

.preheader.i.i648.preheader:                      ; preds = %bb.ft, %bb.ft
  br label %.preheader.i.i648

.preheader.i.i648:                                ; preds = %.preheader.i.i648.preheader, %.preheader.i.i648
  %indvars.iv17.i.i649 = phi i64 [ %indvars.iv.next18.i.i650, %.preheader.i.i648 ], [ %indvars.iv.i.i645, %.preheader.i.i648.preheader ]
  %indvars.iv.next18.i.i650 = add nuw nsw i64 %indvars.iv17.i.i649, 1 ; 3 uses
  switch i64 %indvars.iv.next18.i.i650, label %.preheader.i.i648 [
    i64 9, label %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit655
    i64 2, label %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit655
  ]

_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit655: ; preds = %.preheader.i.i648, %.preheader.i.i648
  %i.su = sub nuw nsw i64 %indvars.iv.next18.i.i650, %indvars.iv.i.i645
  %i.sv = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 1970, i8 noundef signext 1, i64 noundef 1, i64 noundef %i.su, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.fca.1.extract.i.i.i.i652 = extractvalue { i64, i64 } %i.sv, 1 ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i.i.i653 = and i64 %.fca.1.extract.i.i.i.i652, 65535 ; 2 uses
  %i.sw = extractvalue { i64, i64 } %i.sv, 0      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #20
  store i32 6, ptr %i.m, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #20
  %.sroa.22.8.extract.trunc.i.i656 = trunc i64 %.fca.1.extract.i.i.i.i652 to i8 ; 2 uses
  %.sroa.43.8.extract.shift.i.i657 = lshr i64 %.fca.1.extract.i.i.i.i652, 8
  %.sroa.43.8.extract.trunc.i.i658 = trunc i64 %.sroa.43.8.extract.shift.i.i657 to i8
  %i.sx = call noundef i64 @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %i.sw, i8 noundef signext %.sroa.22.8.extract.trunc.i.i656, i8 noundef signext %.sroa.43.8.extract.trunc.i.i658, i64 noundef 1970, i8 noundef signext 1, i8 noundef signext 1) #20 ; 2 uses
  store i64 %i.sx, ptr %i.n, align 8, !tbaa !92
  %i.sy = load i32, ptr %i.m, align 4, !tbaa !93, !noalias !1799
  %i.sz = sext i32 %i.sy to i64
  %i.ta = icmp eq i64 %i.sx, %i.sz
  br i1 %i.ta, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit655
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %49)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit662

bb.fv:                                            ; preds = %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit655
  call void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %49, ptr noundef nonnull @.str.467, ptr noundef nonnull @.str.665, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit662

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit662: ; preds = %bb.fu, %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #20
  %i.tb = load i8, ptr %49, align 8, !tbaa !79, !range !80, !noundef !81
  %i.tc = trunc nuw i8 %i.tb to i1
  br i1 %i.tc, label %bb.gh, label %bb.fw

bb.fw:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit662
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %50)
          to label %bb.fx unwind label %bb.gb

bb.fx:                                            ; preds = %bb.fw
  %i.td = load ptr, ptr %50, align 8, !tbaa !84
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  %i.tf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052613time_internallsERSoNS1_4cctz6detail10civil_timeINS1_7day_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.te, i64 %i.sw, i64 %.sroa.2.8.insert.insert.i.i.i.i.i653)
          to label %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit666 unwind label %bb.gc ; 0 uses

_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit666: ; preds = %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #20
  %i.tg = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !82 ; 2 uses
  %.not.i.i667 = icmp eq ptr %i.th, null
  br i1 %.not.i.i667, label %_ZNK7testing15AssertionResult15failure_messageEv.exit668, label %bb.fy

bb.fy:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit666
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit668

_ZNK7testing15AssertionResult15failure_messageEv.exit668: ; preds = %bb.fy, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit666
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_135CivilTime_DocumentationExample_Test8TestBodyEv:bb.a
_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i80: ; preds = %bb.an
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !52
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(128) %i.ex) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit81

_ZN7testing7MessageD2Ev.exit81:                   ; preds = %bb.an, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.as

bb.ao:                                            ; preds = %bb.aj
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit84

bb.ap:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit78
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %bb.am
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #20
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn27 = phi { ptr, i32 } [ %i.fd, %bb.aq ], [ %i.fc, %bb.ap ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.fe = load ptr, ptr %11, align 8, !tbaa !84   ; 3 uses
  %.not.i.i82 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i82, label %_ZN7testing7MessageD2Ev.exit84, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83: ; preds = %bb.ar
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !52
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(128) %i.fe) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit84

_ZN7testing7MessageD2Ev.exit84:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83, %bb.ar, %bb.ao
  %.pn27.pn = phi { ptr, i32 } [ %i.fb, %bb.ao ], [ %.pn27, %bb.ar ], [ %.pn27, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.cj

bb.as:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit81
  %i.fi = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !82 ; 4 uses
  %.not.i.i85 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i85, label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit95, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !68 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i86: ; preds = %bb.at
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !69
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fo) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i86
  call void @_ZdlPvm(ptr noundef nonnull %i.fj, i64 noundef 32) #22
  br label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit95

_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit95: ; preds = %bb.as, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  store i64 2015, ptr %13, align 8
  %.sroa.2.0..sroa_idx.i.i93 = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i40 513, ptr %.sroa.2.0..sroa_idx.i.i93, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %14)
  %.pre = load i8, ptr %14, align 8, !tbaa !79, !range !80
  %i.fp = trunc nuw i8 %.pre to i1
  br i1 %i.fp, label %bb.bd, label %bb.au

bb.au:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit95
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.av unwind label %bb.az

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.fq = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !82 ; 2 uses
  %.not.i.i96 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i96, label %_ZNK7testing15AssertionResult15failure_messageEv.exit97, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit97

_ZNK7testing15AssertionResult15failure_messageEv.exit97: ; preds = %bb.aw, %bb.av
  %i.ft = phi ptr [ %i.fs, %bb.aw ], [ @.str.100, %bb.av ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1203, ptr noundef %i.ft)
          to label %bb.ax unwind label %bb.ba

bb.ax:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit97
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %i.fu = load ptr, ptr %15, align 8, !tbaa !84   ; 3 uses
  %.not.i.i98 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i98, label %_ZN7testing7MessageD2Ev.exit100, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i99

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i99: ; preds = %bb.ay
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !52
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8
  call void %i.fx(ptr noundef nonnull align 8 dereferenceable(128) %i.fu) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit100

_ZN7testing7MessageD2Ev.exit100:                  ; preds = %bb.ay, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %bb.bd

bb.az:                                            ; preds = %bb.au
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit103

bb.ba:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit97
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ax
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #20
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.pn30 = phi { ptr, i32 } [ %i.ga, %bb.bb ], [ %i.fz, %bb.ba ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %i.gb = load ptr, ptr %15, align 8, !tbaa !84   ; 3 uses
  %.not.i.i101 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i101, label %_ZN7testing7MessageD2Ev.exit103, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102: ; preds = %bb.bc
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !52
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(128) %i.gb) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit103

_ZN7testing7MessageD2Ev.exit103:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102, %bb.bc, %bb.az
  %.pn30.pn = phi { ptr, i32 } [ %i.fy, %bb.az ], [ %.pn30, %bb.bc ], [ %.pn30, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.ci

bb.bd:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit95, %_ZN7testing7MessageD2Ev.exit100
  %i.gf = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !82 ; 4 uses
  %.not.i.i104 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i104, label %_ZN7testing15AssertionResultD2Ev.exit108, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !68 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 16 ; 2 uses
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i105: ; preds = %bb.be
  %i.gk = load i64, ptr %i.gi, align 8, !tbaa !69
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gl) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i106

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i106: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i105
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit108

_ZN7testing15AssertionResultD2Ev.exit108:         ; preds = %bb.bd, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  store i64 2015, ptr %18, align 8
  %.sroa.2.0..sroa_idx.i.i112 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i40 513, ptr %.sroa.2.0..sroa_idx.i.i112, align 8
  %i.gm = load i64, ptr %13, align 8, !tbaa !98, !noalias !2059
  %i.gn = icmp eq i64 %i.gm, 2015
  %i.go = load <4 x i8>, ptr %.sroa.2.0..sroa_idx.i.i93, align 8
  %.fr = freeze <4 x i8> %i.go
  %i.gp = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.gq = load i8, ptr %i.gp, align 4
  %i.gr = icmp eq i8 %i.gq, 0
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %i.gs = icmp eq i32 %.fr.scalar, 513
  %op.rdx = select i1 %i.gs, i1 %i.gn, i1 false
  %op.rdx259 = select i1 %op.rdx, i1 %i.gr, i1 false
  br i1 %op.rdx259, label %bb.bf, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i

bb.bf:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit108
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %17)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit108
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %17, ptr noundef nonnull @.str.773, ptr noundef nonnull @.str.774, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %13)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit: ; preds = %bb.bf, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  %i.gt = load i8, ptr %17, align 8, !tbaa !79, !range !80, !noundef !81
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %bb.bp, label %bb.bg

bb.bg:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.bh unwind label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  %i.gv = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !82 ; 2 uses
  %.not.i.i114 = icmp eq ptr %i.gw, null
  br i1 %.not.i.i114, label %_ZNK7testing15AssertionResult15failure_messageEv.exit115, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit115

_ZNK7testing15AssertionResult15failure_messageEv.exit115: ; preds = %bb.bi, %bb.bh
  %i.gy = phi ptr [ %i.gx, %bb.bi ], [ @.str.100, %bb.bh ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1204, ptr noundef %i.gy)
          to label %bb.bj unwind label %bb.bm

bb.bj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit115
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.bk unwind label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  %i.gz = load ptr, ptr %19, align 8, !tbaa !84   ; 3 uses
  %.not.i.i116 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i116, label %_ZN7testing7MessageD2Ev.exit118, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117: ; preds = %bb.bk
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !52
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(128) %i.gz) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit118

_ZN7testing7MessageD2Ev.exit118:                  ; preds = %bb.bk, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %bb.bp

bb.bl:                                            ; preds = %bb.bg
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit121

bb.bm:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit115
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bj
  %i.hf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #20
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.pn33 = phi { ptr, i32 } [ %i.hf, %bb.bn ], [ %i.he, %bb.bm ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  %i.hg = load ptr, ptr %19, align 8, !tbaa !84   ; 3 uses
  %.not.i.i119 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i119, label %_ZN7testing7MessageD2Ev.exit121, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120: ; preds = %bb.bo
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !52
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8
  call void %i.hj(ptr noundef nonnull align 8 dereferenceable(128) %i.hg) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit121

_ZN7testing7MessageD2Ev.exit121:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120, %bb.bo, %bb.bl
  %.pn33.pn = phi { ptr, i32 } [ %i.hd, %bb.bl ], [ %.pn33, %bb.bo ], [ %.pn33, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.ci

bb.bp:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit, %_ZN7testing7MessageD2Ev.exit118
  %i.hk = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !82 ; 4 uses
  %.not.i.i122 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i122, label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit139, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !68 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 16 ; 2 uses
  %i.ho = icmp eq ptr %i.hm, %i.hn
  br i1 %i.ho, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i123: ; preds = %bb.bq
  %i.hp = load i64, ptr %i.hn, align 8, !tbaa !69
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hq) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i123
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef 32) #22
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit139

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit139: ; preds = %bb.bp, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %21)
  %.pre191 = load i8, ptr %21, align 8, !tbaa !79, !range !80
  %i.hr = trunc nuw i8 %.pre191 to i1
  br i1 %i.hr, label %bb.ca, label %bb.br

bb.br:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit139
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.bs unwind label %bb.bw

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  %i.hs = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !82 ; 2 uses
  %.not.i.i140 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i140, label %_ZNK7testing15AssertionResult15failure_messageEv.exit141, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit141

_ZNK7testing15AssertionResult15failure_messageEv.exit141: ; preds = %bb.bt, %bb.bs
  %i.hv = phi ptr [ %i.hu, %bb.bt ], [ @.str.100, %bb.bs ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %23, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1208, ptr noundef %i.hv)
          to label %bb.bu unwind label %bb.bx

bb.bu:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit141
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.bv unwind label %bb.by

bb.bv:                                            ; preds = %bb.bu
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  %i.hw = load ptr, ptr %22, align 8, !tbaa !84   ; 3 uses
  %.not.i.i142 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i142, label %_ZN7testing7MessageD2Ev.exit144, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i143

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i143: ; preds = %bb.bv
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !52
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(128) %i.hw) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit144

_ZN7testing7MessageD2Ev.exit144:                  ; preds = %bb.bv, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  br label %bb.ca

bb.bw:                                            ; preds = %bb.br
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit147

bb.bx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit141
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.by:                                            ; preds = %bb.bu
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #20
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.pn36 = phi { ptr, i32 } [ %i.ic, %bb.by ], [ %i.ib, %bb.bx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  %i.id = load ptr, ptr %22, align 8, !tbaa !84   ; 3 uses
  %.not.i.i145 = icmp eq ptr %i.id, null
  br i1 %.not.i.i145, label %_ZN7testing7MessageD2Ev.exit147, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146: ; preds = %bb.bz
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !52
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = load ptr, ptr %i.if, align 8
  call void %i.ig(ptr noundef nonnull align 8 dereferenceable(128) %i.id) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit147

_ZN7testing7MessageD2Ev.exit147:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146, %bb.bz, %bb.bw
end_hunk_3

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/civil_time_test?download=true
inline.NumInlined: 11821
inline.NumDeleted: 2364
begin_hunk_0_@_ZN12_GLOBAL__N_122CivilTime_Weekday_Test8TestBodyEv:_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail7weekdayES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit
bb.t:                                             ; preds = %bb.o
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.u:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit50
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.q
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #20
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn11 = phi { ptr, i32 } [ %i.as, %bb.v ], [ %i.ar, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %bb.w ], [ %i.aq, %bb.t ] ; 2 uses
  %i.at = load ptr, ptr %5, align 8, !tbaa !46    ; 3 uses
  %.not.i.i54 = icmp eq ptr %i.at, null
  br i1 %.not.i.i54, label %_ZN7testing7MessageD2Ev.exit56, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i55

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i55: ; preds = %bb.x
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(128) %i.at) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit56

_ZN7testing7MessageD2Ev.exit56:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i55, %bb.x, %bb.s
  %.pn11.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.s ], [ %.pn11.pn, %bb.x ], [ %.pn11.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i55 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.aa

bb.y:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail7weekdayES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit44, %_ZN7testing7MessageD2Ev.exit53
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !45 ; 4 uses
  %.not.i.i57 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i57, label %_ZN7testing15AssertionResultD2Ev.exit61, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !31 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i58: ; preds = %bb.z
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !32
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i59

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i59: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i58
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit61

_ZN7testing15AssertionResultD2Ev.exit61:          ; preds = %bb.y, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void

bb.aa:                                            ; preds = %_ZN7testing7MessageD2Ev.exit56, %_ZN7testing7MessageD2Ev.exit24
  %.pn11.pn.pn.pn = phi { ptr, i32 } [ %.pn11.pn.pn, %_ZN7testing7MessageD2Ev.exit56 ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit24 ]
  resume { ptr, i32 } %.pn11.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_130CivilTime_NextPrevWeekday_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_130CivilTime_NextPrevWeekday_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_130CivilTime_NextPrevWeekday_TestE, i64 16), ptr %i.a, align 8, !tbaa !9
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #22
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_130CivilTime_NextPrevWeekday_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_130CivilTime_NextPrevWeekday_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %5 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.58", align 8 ; 7 uses
  %6 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.58", align 8 ; 5 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %10 = alloca %"class.testing::Message", align 8 ; 8 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %13 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.58", align 8 ; 7 uses
  %14 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.58", align 8 ; 5 uses
  %15 = alloca %"class.testing::Message", align 8 ; 7 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %17 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %18 = alloca %"class.testing::Message", align 8 ; 8 uses
  %19 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %20 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %21 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.58", align 8 ; 7 uses
  %22 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.58", align 8 ; 5 uses
  %23 = alloca %"class.testing::Message", align 8 ; 7 uses
  %24 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %25 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %26 = alloca %"class.testing::Message", align 8 ; 8 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %28 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %29 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.58", align 8 ; 7 uses
  %30 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.58", align 8 ; 5 uses
  %31 = alloca %"class.testing::Message", align 8 ; 7 uses
  %32 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %33 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %34 = alloca %"class.testing::Message", align 8 ; 8 uses
  %35 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %36 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %37 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.58", align 8 ; 7 uses
  %38 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.58", align 8 ; 5 uses
  %39 = alloca %"class.testing::Message", align 8 ; 7 uses
  %40 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %41 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %42 = alloca %"class.testing::Message", align 8 ; 8 uses
  %43 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %44 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %45 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.58", align 8 ; 7 uses
  %46 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.58", align 8 ; 5 uses
  %47 = alloca %"class.testing::Message", align 8 ; 7 uses
  %48 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %49 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %i.n = alloca i64, align 8                      ; 4 uses
  %50 = alloca %"class.testing::Message", align 8 ; 8 uses
  %51 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %52 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %53 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.58", align 8 ; 5 uses
  %54 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.58", align 8 ; 5 uses
  %55 = alloca %"class.testing::Message", align 8 ; 7 uses
  %56 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  switch i64 %indvars.iv.i.i, label %bb.b [
    i64 10, label %.preheader.i.i.preheader
    i64 3, label %.preheader.i.i.preheader
  ]

.preheader.i.i.preheader:                         ; preds = %bb.b, %bb.b
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %indvars.iv17.i.i = phi i64 [ %indvars.iv.next18.i.i, %.preheader.i.i ], [ %indvars.iv.i.i, %.preheader.i.i.preheader ]
  %indvars.iv.next18.i.i = add nuw nsw i64 %indvars.iv17.i.i, 1 ; 3 uses
  switch i64 %indvars.iv.next18.i.i, label %.preheader.i.i [
    i64 10, label %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit
    i64 3, label %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit
  ]

_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit: ; preds = %.preheader.i.i, %.preheader.i.i
  %i.o = sub nuw nsw i64 %indvars.iv.next18.i.i, %indvars.iv.i.i
  %i.p = tail call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 1970, i8 noundef signext 1, i64 noundef 1, i64 noundef %i.o, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.fca.1.extract.i.i.i.i = extractvalue { i64, i64 } %i.p, 1 ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i.i.i = and i64 %.fca.1.extract.i.i.i.i, 65535 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 7, ptr %i.a, align 4, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %.sroa.22.8.extract.trunc.i.i = trunc i64 %.fca.1.extract.i.i.i.i to i8 ; 2 uses
  %.sroa.43.8.extract.shift.i.i = lshr i64 %.fca.1.extract.i.i.i.i, 8
  %.sroa.43.8.extract.trunc.i.i = trunc i64 %.sroa.43.8.extract.shift.i.i to i8
  %i.r = tail call noundef i64 @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %i.q, i8 noundef signext %.sroa.22.8.extract.trunc.i.i, i8 noundef signext %.sroa.43.8.extract.trunc.i.i, i64 noundef 1970, i8 noundef signext 1, i8 noundef signext 1) #20 ; 2 uses
  store i64 %i.r, ptr %i.b, align 8, !tbaa !96
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
  %i.t = load i8, ptr %1, align 8, !tbaa !33, !range !43, !noundef !44
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.p, label %bb.e

bb.e:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %2, align 8, !tbaa !46
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052613time_internallsERSoNS1_4cctz6detail10civil_timeINS1_7day_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i64 %i.q, i64 %.sroa.2.8.insert.insert.i.i.i.i.i)
          to label %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit unwind label %bb.k ; 0 uses

_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !45   ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !31
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
  %i.ac = load ptr, ptr %2, align 8, !tbaa !46    ; 3 uses
  %.not.i.i166 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i166, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(128) %i.ac) #20, !inline_history !48
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
  %i.ak = load ptr, ptr %2, align 8, !tbaa !46    ; 3 uses
  %.not.i.i167 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i167, label %_ZN7testing7MessageD2Ev.exit169, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i168

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i168: ; preds = %bb.o
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !9
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(128) %i.ak) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit169

_ZN7testing7MessageD2Ev.exit169:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i168, %bb.o, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.j ], [ %.pn.pn, %bb.o ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i168 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.gv

bb.p:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !45 ; 4 uses
  %.not.i.i170 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i170, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !31 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.q
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !32
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
  %i.bf = load i64, ptr %5, align 8, !tbaa !438, !noalias !1559
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
  %i.bt = and i1 %i.bg, %i.bs
  %op.rdx1003 = select i1 %i.bt, i1 %i.bl, i1 false
  br i1 %op.rdx1003, label %bb.s, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i

bb.s:                                             ; preds = %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i: ; preds = %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.666, ptr noundef nonnull @.str.667, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit: ; preds = %bb.s, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.bu = load i8, ptr %4, align 8, !tbaa !33, !range !43, !noundef !44
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.ac, label %bb.t

bb.t:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !45 ; 2 uses
  %.not.i.i190 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i190, label %_ZNK7testing15AssertionResult15failure_messageEv.exit191, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit191

_ZNK7testing15AssertionResult15failure_messageEv.exit191: ; preds = %bb.v, %bb.u
  %i.bz = phi ptr [ %i.by, %bb.v ], [ @.str.100, %bb.u ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 928, ptr noundef %i.bz)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit191
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %bb.w
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.ca = load ptr, ptr %7, align 8, !tbaa !46    ; 3 uses
  %.not.i.i192 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i192, label %_ZN7testing7MessageD2Ev.exit194, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i193

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i193: ; preds = %bb.x
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !9
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(128) %i.ca) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit194

_ZN7testing7MessageD2Ev.exit194:                  ; preds = %bb.x, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i193
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.ac

bb.y:                                             ; preds = %bb.t
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit197

bb.z:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit191
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.w
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #20
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn119 = phi { ptr, i32 } [ %i.cg, %bb.aa ], [ %i.cf, %bb.z ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.ch = load ptr, ptr %7, align 8, !tbaa !46    ; 3 uses
  %.not.i.i195 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i195, label %_ZN7testing7MessageD2Ev.exit197, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i196

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i196: ; preds = %bb.ab
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !9
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(128) %i.ch) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit197

_ZN7testing7MessageD2Ev.exit197:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i196, %bb.ab, %bb.y
  %.pn119.pn = phi { ptr, i32 } [ %i.ce, %bb.y ], [ %.pn119, %bb.ab ], [ %.pn119, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i196 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.gv

bb.ac:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit, %_ZN7testing7MessageD2Ev.exit194
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !45 ; 4 uses
  %.not.i.i198 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i198, label %_ZN7testing15AssertionResultD2Ev.exit202, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !31 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i199: ; preds = %bb.ad
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !32
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i199
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit202

_ZN7testing15AssertionResultD2Ev.exit202:         ; preds = %bb.ac, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %_ZN7testing15AssertionResultD2Ev.exit202
  %indvars.iv.i.i211 = phi i64 [ %indvars.iv.next.i.i212, %bb.ae ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit202 ] ; 4 uses
  %indvars.iv.next.i.i212 = add nuw nsw i64 %indvars.iv.i.i211, 1
  switch i64 %indvars.iv.i.i211, label %bb.ae [
    i64 10, label %.preheader.i.i214.preheader
    i64 3, label %.preheader.i.i214.preheader
  ]

.preheader.i.i214.preheader:                      ; preds = %bb.ae, %bb.ae
  br label %.preheader.i.i214

.preheader.i.i214:                                ; preds = %.preheader.i.i214.preheader, %.preheader.i.i214
  %indvars.iv17.i.i215 = phi i64 [ %indvars.iv.next18.i.i216, %.preheader.i.i214 ], [ %indvars.iv.i.i211, %.preheader.i.i214.preheader ]
  %indvars.iv.next18.i.i216 = add nuw nsw i64 %indvars.iv17.i.i215, 1 ; 3 uses
  switch i64 %indvars.iv.next18.i.i216, label %.preheader.i.i214 [
    i64 11, label %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit222
    i64 4, label %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit222
  ]

_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit222: ; preds = %.preheader.i.i214, %.preheader.i.i214
  %i.cs = sub nuw nsw i64 %indvars.iv.next18.i.i216, %indvars.iv.i.i211
  %i.ct = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 1970, i8 noundef signext 1, i64 noundef 1, i64 noundef %i.cs, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.fca.1.extract.i.i.i.i219 = extractvalue { i64, i64 } %i.ct, 1 ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i.i.i220 = and i64 %.fca.1.extract.i.i.i.i219, 65535 ; 2 uses
  %i.cu = extractvalue { i64, i64 } %i.ct, 0      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 1, ptr %i.c, align 4, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %.sroa.22.8.extract.trunc.i.i223 = trunc i64 %.fca.1.extract.i.i.i.i219 to i8 ; 2 uses
  %.sroa.43.8.extract.shift.i.i224 = lshr i64 %.fca.1.extract.i.i.i.i219, 8
  %.sroa.43.8.extract.trunc.i.i225 = trunc i64 %.sroa.43.8.extract.shift.i.i224 to i8
  %i.cv = call noundef i64 @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %i.cu, i8 noundef signext %.sroa.22.8.extract.trunc.i.i223, i8 noundef signext %.sroa.43.8.extract.trunc.i.i225, i64 noundef 1970, i8 noundef signext 1, i8 noundef signext 1) #20 ; 2 uses
  store i64 %i.cv, ptr %i.d, align 8, !tbaa !96
  %i.cw = load i32, ptr %i.c, align 4, !tbaa !331, !noalias !1564
  %i.cx = sext i32 %i.cw to i64
  %i.cy = icmp eq i64 %i.cv, %i.cx
  br i1 %i.cy, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit222
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit229

bb.ag:                                            ; preds = %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit222
  call void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.448, ptr noundef nonnull @.str.665, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit229

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit229: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.cz = load i8, ptr %9, align 8, !tbaa !33, !range !43, !noundef !44
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.as, label %bb.ah

bb.ah:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit229
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.db = load ptr, ptr %10, align 8, !tbaa !46
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052613time_internallsERSoNS1_4cctz6detail10civil_timeINS1_7day_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, i64 %i.cu, i64 %.sroa.2.8.insert.insert.i.i.i.i.i220)
          to label %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit233 unwind label %bb.an ; 0 uses

_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit233: ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !45 ; 2 uses
  %.not.i.i234.a = icmp eq ptr %i.df, null
  br i1 %.not.i.i234.a, label %_ZNK7testing15AssertionResult15failure_messageEv.exit235, label %bb.aj

bb.aj:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit233
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit235

_ZNK7testing15AssertionResult15failure_messageEv.exit235: ; preds = %bb.aj, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit233
  %i.dh = phi ptr [ %i.dg, %bb.aj ], [ @.str.100, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit233 ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 932, ptr noundef %i.dh)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit235
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %bb.ak
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.di = load ptr, ptr %10, align 8, !tbaa !46   ; 3 uses
  %.not.i.i236 = icmp eq ptr %i.di, null
  br i1 %.not.i.i236, label %_ZN7testing7MessageD2Ev.exit238, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i237

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i237: ; preds = %bb.al
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !9
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(128) %i.di) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit238

_ZN7testing7MessageD2Ev.exit238:                  ; preds = %bb.al, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i237
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.as

bb.am:                                            ; preds = %bb.ah
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit241

bb.an:                                            ; preds = %bb.ai
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ao:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit235
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ak
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #20
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn122 = phi { ptr, i32 } [ %i.dp, %bb.ap ], [ %i.do, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an
  %.pn122.pn = phi { ptr, i32 } [ %.pn122, %bb.aq ], [ %i.dn, %bb.an ] ; 2 uses
  %i.dq = load ptr, ptr %10, align 8, !tbaa !46   ; 3 uses
  %.not.i.i239 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i239, label %_ZN7testing7MessageD2Ev.exit241, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i240

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i240: ; preds = %bb.ar
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !9
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(128) %i.dq) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit241

_ZN7testing7MessageD2Ev.exit241:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i240, %bb.ar, %bb.am
  %.pn122.pn.pn = phi { ptr, i32 } [ %i.dm, %bb.am ], [ %.pn122.pn, %bb.ar ], [ %.pn122.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i240 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.gv

bb.as:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit229, %_ZN7testing7MessageD2Ev.exit238
  %i.du = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !45 ; 4 uses
  %.not.i.i242 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i242, label %_ZN7testing15AssertionResultD2Ev.exit246, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !31 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i243: ; preds = %bb.at
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !32
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i244

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i244: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i243
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit246

_ZN7testing15AssertionResultD2Ev.exit246:         ; preds = %bb.as, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i244
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.eb = shl nuw i64 %.sroa.2.8.insert.insert.i.i.i.i.i220, 48
  %i.ec = ashr i64 %i.eb, 56
  %i.ed = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %i.cu, i8 noundef signext %.sroa.22.8.extract.trunc.i.i223, i64 noundef %i.ec, i64 noundef -7, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.sroa.3.0.in.in.i254 = extractvalue { i64, i64 } %i.ed, 1
  %.sroa.3.0.in.i255 = and i64 %.sroa.3.0.in.in.i254, 65535
  %i.ee = extractvalue { i64, i64 } %i.ed, 0
  store i64 %i.ee, ptr %13, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i64 %.sroa.3.0.in.i255, ptr %i.ef, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %_ZN7testing15AssertionResultD2Ev.exit246
  %indvars.iv.i.i265 = phi i64 [ %indvars.iv.next.i.i266, %bb.au ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit246 ] ; 4 uses
  %indvars.iv.next.i.i266 = add nuw nsw i64 %indvars.iv.i.i265, 1
  switch i64 %indvars.iv.i.i265, label %bb.au [
    i64 10, label %.preheader.i.i268.preheader
    i64 3, label %.preheader.i.i268.preheader
  ]

.preheader.i.i268.preheader:                      ; preds = %bb.au, %bb.au
  br label %.preheader.i.i268

.preheader.i.i268:                                ; preds = %.preheader.i.i268.preheader, %.preheader.i.i268
  %indvars.iv17.i.i269 = phi i64 [ %indvars.iv.next18.i.i270, %.preheader.i.i268 ], [ %indvars.iv.i.i265, %.preheader.i.i268.preheader ]
  %indvars.iv.next18.i.i270 = add nuw nsw i64 %indvars.iv17.i.i269, 1 ; 3 uses
  switch i64 %indvars.iv.next18.i.i270, label %.preheader.i.i268 [
    i64 9, label %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit275
    i64 2, label %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit275
  ]

_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit275: ; preds = %.preheader.i.i268, %.preheader.i.i268
  %i.eg = sub nuw nsw i64 %indvars.iv.next18.i.i270, %indvars.iv.i.i265
  %i.eh = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detailmiENS3_10civil_timeINS3_7day_tagEEEl(i64 1970, i64 257, i64 noundef %i.eg) #20 ; 2 uses
  %i.ei = extractvalue { i64, i64 } %i.eh, 1      ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i4.i273 = and i64 %i.ei, 65535
  %i.ej = extractvalue { i64, i64 } %i.eh, 0      ; 2 uses
  store i64 %i.ej, ptr %14, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %.sroa.2.8.insert.insert.i.i.i4.i273, ptr %i.ek, align 8
  %i.el = load i64, ptr %13, align 8, !tbaa !438, !noalias !1569
  %i.em = icmp eq i64 %i.el, %i.ej
  %i.en = lshr i64 %i.ei, 8
  %i.eo = trunc i64 %i.en to i8
  %i.ep = trunc i64 %i.ei to i8
  %i.eq = load i8, ptr %i.ef, align 8
  %i.er = icmp eq i8 %i.eq, %i.ep
  %i.es = getelementptr inbounds nuw i8, ptr %13, i64 9
  %i.et = load <4 x i8>, ptr %i.es, align 1
  %i.eu = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %i.eo, i64 0
  %i.ev = icmp eq <4 x i8> %i.et, %i.eu
  %i.ew = freeze <4 x i1> %i.ev
  %i.ex = bitcast <4 x i1> %i.ew to i4
  %i.ey = icmp eq i4 %i.ex, -1
  %i.ez = and i1 %i.em, %i.ey
  %op.rdx1001 = select i1 %i.ez, i1 %i.er, i1 false
  br i1 %op.rdx1001, label %bb.av, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i276

bb.av:                                            ; preds = %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit275
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit278

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i276: ; preds = %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit275
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12, ptr noundef nonnull @.str.668, ptr noundef nonnull @.str.669, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %14)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit278

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit278: ; preds = %bb.av, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i276
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.fa = load i8, ptr %12, align 8, !tbaa !33, !range !43, !noundef !44
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.bf, label %bb.aw

bb.aw:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit278
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.fc = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !45 ; 2 uses
  %.not.i.i279 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i279, label %_ZNK7testing15AssertionResult15failure_messageEv.exit280, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit280

_ZNK7testing15AssertionResult15failure_messageEv.exit280: ; preds = %bb.ay, %bb.ax
  %i.ff = phi ptr [ %i.fe, %bb.ay ], [ @.str.100, %bb.ax ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 933, ptr noundef %i.ff)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit280
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %bb.az
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %i.fg = load ptr, ptr %15, align 8, !tbaa !46   ; 3 uses
  %.not.i.i281.a = icmp eq ptr %i.fg, null
  br i1 %.not.i.i281.a, label %_ZN7testing7MessageD2Ev.exit283.a, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i282.a

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i282.a: ; preds = %bb.ba
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !9
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(128) %i.fg) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit283.a

_ZN7testing7MessageD2Ev.exit283.a:                ; preds = %bb.ba, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i282.a
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %bb.bf

bb.bb:                                            ; preds = %bb.aw
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit286

bb.bc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit280
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bd:                                            ; preds = %bb.az
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #20
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.pn126 = phi { ptr, i32 } [ %i.fm, %bb.bd ], [ %i.fl, %bb.bc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %i.fn = load ptr, ptr %15, align 8, !tbaa !46   ; 3 uses
  %.not.i.i284.a = icmp eq ptr %i.fn, null
  br i1 %.not.i.i284.a, label %_ZN7testing7MessageD2Ev.exit286, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i285

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i285: ; preds = %bb.be
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !9
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(128) %i.fn) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit286

_ZN7testing7MessageD2Ev.exit286:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i285, %bb.be, %bb.bb
  %.pn126.pn = phi { ptr, i32 } [ %i.fk, %bb.bb ], [ %.pn126, %bb.be ], [ %.pn126, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i285 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.gv

bb.bf:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit278, %_ZN7testing7MessageD2Ev.exit283.a
  %i.fr = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !45 ; 4 uses
  %.not.i.i287 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i287, label %_ZN7testing15AssertionResultD2Ev.exit291, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !31 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 16 ; 2 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i289, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i288

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i288: ; preds = %bb.bg
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !32
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i289

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i289: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i288
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit291

_ZN7testing15AssertionResultD2Ev.exit291:         ; preds = %bb.bf, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i289
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %_ZN7testing15AssertionResultD2Ev.exit291
  %indvars.iv.i.i300 = phi i64 [ %indvars.iv.next.i.i301, %bb.bh ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit291 ] ; 4 uses
  %indvars.iv.next.i.i301 = add nuw nsw i64 %indvars.iv.i.i300, 1
  switch i64 %indvars.iv.i.i300, label %bb.bh [
    i64 10, label %.preheader.i.i303.preheader
    i64 3, label %.preheader.i.i303.preheader
  ]

.preheader.i.i303.preheader:                      ; preds = %bb.bh, %bb.bh
  br label %.preheader.i.i303

.preheader.i.i303:                                ; preds = %.preheader.i.i303.preheader, %.preheader.i.i303
  %indvars.iv17.i.i304 = phi i64 [ %indvars.iv.next18.i.i305, %.preheader.i.i303 ], [ %indvars.iv.i.i300, %.preheader.i.i303.preheader ]
  %indvars.iv.next18.i.i305 = add nuw nsw i64 %indvars.iv17.i.i304, 1 ; 3 uses
  switch i64 %indvars.iv.next18.i.i305, label %.preheader.i.i303 [
    i64 12, label %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit311
    i64 5, label %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit311
  ]

_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit311: ; preds = %.preheader.i.i303, %.preheader.i.i303
  %i.fy = sub nuw nsw i64 %indvars.iv.next18.i.i305, %indvars.iv.i.i300
  %i.fz = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 1970, i8 noundef signext 1, i64 noundef 1, i64 noundef %i.fy, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.fca.1.extract.i.i.i.i308 = extractvalue { i64, i64 } %i.fz, 1 ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i.i.i309 = and i64 %.fca.1.extract.i.i.i.i308, 65535 ; 2 uses
  %i.ga = extractvalue { i64, i64 } %i.fz, 0      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store i32 2, ptr %i.e, align 4, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %.sroa.22.8.extract.trunc.i.i312 = trunc i64 %.fca.1.extract.i.i.i.i308 to i8 ; 2 uses
  %.sroa.43.8.extract.shift.i.i313 = lshr i64 %.fca.1.extract.i.i.i.i308, 8
  %.sroa.43.8.extract.trunc.i.i314 = trunc i64 %.sroa.43.8.extract.shift.i.i313 to i8
  %i.gb = call noundef i64 @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %i.ga, i8 noundef signext %.sroa.22.8.extract.trunc.i.i312, i8 noundef signext %.sroa.43.8.extract.trunc.i.i314, i64 noundef 1970, i8 noundef signext 1, i8 noundef signext 1) #20 ; 2 uses
  store i64 %i.gb, ptr %i.f, align 8, !tbaa !96
  %i.gc = load i32, ptr %i.e, align 4, !tbaa !331, !noalias !1574
  %i.gd = sext i32 %i.gc to i64
  %i.ge = icmp eq i64 %i.gb, %i.gd
  br i1 %i.ge, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit311
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %17)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit318

bb.bj:                                            ; preds = %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit311
  call void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %17, ptr noundef nonnull @.str.459, ptr noundef nonnull @.str.665, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit318

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit318: ; preds = %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.gf = load i8, ptr %17, align 8, !tbaa !33, !range !43, !noundef !44
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %bb.bv, label %bb.bk

bb.bk:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit318
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.bl unwind label %bb.bp

bb.bl:                                            ; preds = %bb.bk
  %i.gh = load ptr, ptr %18, align 8, !tbaa !46
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052613time_internallsERSoNS1_4cctz6detail10civil_timeINS1_7day_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.gi, i64 %i.ga, i64 %.sroa.2.8.insert.insert.i.i.i.i.i309)
          to label %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit322 unwind label %bb.bq ; 0 uses

_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit322: ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  %i.gk = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !45 ; 2 uses
  %.not.i.i323 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i323, label %_ZNK7testing15AssertionResult15failure_messageEv.exit324, label %bb.bm

bb.bm:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit322
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit324

_ZNK7testing15AssertionResult15failure_messageEv.exit324: ; preds = %bb.bm, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit322
  %i.gn = phi ptr [ %i.gm, %bb.bm ], [ @.str.100, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit322 ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 937, ptr noundef %i.gn)
          to label %bb.bn unwind label %bb.br

bb.bn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit324
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.bo unwind label %bb.bs

bb.bo:                                            ; preds = %bb.bn
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  %i.go = load ptr, ptr %18, align 8, !tbaa !46   ; 3 uses
  %.not.i.i325 = icmp eq ptr %i.go, null
  br i1 %.not.i.i325, label %_ZN7testing7MessageD2Ev.exit327, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i326

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i326: ; preds = %bb.bo
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !9
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8
  call void %i.gr(ptr noundef nonnull align 8 dereferenceable(128) %i.go) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit327

_ZN7testing7MessageD2Ev.exit327:                  ; preds = %bb.bo, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i326
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %bb.bv

bb.bp:                                            ; preds = %bb.bk
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit330

bb.bq:                                            ; preds = %bb.bl
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.br:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit324
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bn
  %i.gv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #20
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.pn129 = phi { ptr, i32 } [ %i.gv, %bb.bs ], [ %i.gu, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bq
  %.pn129.pn = phi { ptr, i32 } [ %.pn129, %bb.bt ], [ %i.gt, %bb.bq ] ; 2 uses
  %i.gw = load ptr, ptr %18, align 8, !tbaa !46   ; 3 uses
  %.not.i.i328 = icmp eq ptr %i.gw, null
  br i1 %.not.i.i328, label %_ZN7testing7MessageD2Ev.exit330, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i329

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i329: ; preds = %bb.bu
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !9
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8
  call void %i.gz(ptr noundef nonnull align 8 dereferenceable(128) %i.gw) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit330

_ZN7testing7MessageD2Ev.exit330:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i329, %bb.bu, %bb.bp
  %.pn129.pn.pn = phi { ptr, i32 } [ %i.gs, %bb.bp ], [ %.pn129.pn, %bb.bu ], [ %.pn129.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i329 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.gv

bb.bv:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit318, %_ZN7testing7MessageD2Ev.exit327
  %i.ha = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !45 ; 4 uses
  %.not.i.i331 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i331, label %_ZN7testing15AssertionResultD2Ev.exit335, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !31 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 16 ; 2 uses
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i333, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i332

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i332: ; preds = %bb.bw
  %i.hf = load i64, ptr %i.hd, align 8, !tbaa !32
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hg) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i333

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i333: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i332
  call void @_ZdlPvm(ptr noundef nonnull %i.hb, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit335

_ZN7testing15AssertionResultD2Ev.exit335:         ; preds = %bb.bv, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i333
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  %i.hh = shl nuw i64 %.sroa.2.8.insert.insert.i.i.i.i.i309, 48
  %i.hi = ashr i64 %i.hh, 56
  %i.hj = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %i.ga, i8 noundef signext %.sroa.22.8.extract.trunc.i.i312, i64 noundef %i.hi, i64 noundef -7, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.sroa.3.0.in.in.i343 = extractvalue { i64, i64 } %i.hj, 1
  %.sroa.3.0.in.i344 = and i64 %.sroa.3.0.in.in.i343, 65535
  %i.hk = extractvalue { i64, i64 } %i.hj, 0
  store i64 %i.hk, ptr %21, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store i64 %.sroa.3.0.in.i344, ptr %i.hl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bx, %_ZN7testing15AssertionResultD2Ev.exit335
  %indvars.iv809 = phi i64 [ %indvars.iv.next810, %bb.bx ], [ 1, %_ZN7testing15AssertionResultD2Ev.exit335 ] ; 2 uses
  %indvars.iv807 = phi i64 [ %indvars.iv.next808, %bb.bx ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit335 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bx ], [ 7, %_ZN7testing15AssertionResultD2Ev.exit335 ] ; 2 uses
  %indvars.iv.i.i354 = phi i64 [ %indvars.iv.next.i.i355, %bb.bx ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit335 ] ; 3 uses
  %indvars.iv.next.i.i355 = add nuw nsw i64 %indvars.iv.i.i354, 1
  %indvars.iv.next = add i64 %indvars.iv, -1
  %indvars.iv.next808 = add i64 %indvars.iv807, -1
  %indvars.iv.next810 = add nuw i64 %indvars.iv809, 1
  switch i64 %indvars.iv.i.i354, label %bb.bx [
    i64 10, label %.preheader.i.i357.preheader
    i64 3, label %.preheader.i.i357.preheader
  ]

.preheader.i.i357.preheader:                      ; preds = %bb.bx, %bb.bx
  %umin = call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %indvars.iv807)
  %i.hm = add i64 %umin, %indvars.iv809
  %i.hn = sub nuw nsw i64 %i.hm, %indvars.iv.i.i354
  %57 = and i64 %i.hn, 4294967295
  %i.ho = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detailmiENS3_10civil_timeINS3_7day_tagEEEl(i64 1970, i64 257, i64 noundef %57) #20 ; 2 uses
  %i.hp = extractvalue { i64, i64 } %i.ho, 1      ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i4.i362 = and i64 %i.hp, 65535
  %i.hq = extractvalue { i64, i64 } %i.ho, 0      ; 2 uses
  store i64 %i.hq, ptr %22, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %.sroa.2.8.insert.insert.i.i.i4.i362, ptr %i.hr, align 8
  %i.hs = load i64, ptr %21, align 8, !tbaa !438, !noalias !1579
  %i.ht = icmp eq i64 %i.hs, %i.hq
  %i.hu = lshr i64 %i.hp, 8
  %i.hv = trunc i64 %i.hu to i8
  %i.hw = trunc i64 %i.hp to i8
  %i.hx = load i8, ptr %i.hl, align 8
  %i.hy = icmp eq i8 %i.hx, %i.hw
  %i.hz = getelementptr inbounds nuw i8, ptr %21, i64 9
  %i.ia = load <4 x i8>, ptr %i.hz, align 1
  %i.ib = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %i.hv, i64 0
  %i.ic = icmp eq <4 x i8> %i.ia, %i.ib
  %i.id = freeze <4 x i1> %i.ic
  %i.ie = bitcast <4 x i1> %i.id to i4
  %i.if = icmp eq i4 %i.ie, -1
  %i.ig = and i1 %i.ht, %i.if
  %op.rdx999 = select i1 %i.ig, i1 %i.hy, i1 false
  br i1 %op.rdx999, label %bb.by, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i365

bb.by:                                            ; preds = %.preheader.i.i357.preheader
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %20)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit367

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i365: ; preds = %.preheader.i.i357.preheader
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %20, ptr noundef nonnull @.str.668, ptr noundef nonnull @.str.670, ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) %22)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit367

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit367: ; preds = %bb.by, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i365
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  %i.ih = load i8, ptr %20, align 8, !tbaa !33, !range !43, !noundef !44
  %i.ii = trunc nuw i8 %i.ih to i1
  br i1 %i.ii, label %bb.ci, label %bb.bz

bb.bz:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit367
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.ca unwind label %bb.ce

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  %i.ij = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !45 ; 2 uses
  %.not.i.i368.a = icmp eq ptr %i.ik, null
  br i1 %.not.i.i368.a, label %_ZNK7testing15AssertionResult15failure_messageEv.exit369, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit369

_ZNK7testing15AssertionResult15failure_messageEv.exit369: ; preds = %bb.cb, %bb.ca
  %i.im = phi ptr [ %i.il, %bb.cb ], [ @.str.100, %bb.ca ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %24, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 938, ptr noundef %i.im)
          to label %bb.cc unwind label %bb.cf

bb.cc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit369
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.cd unwind label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  %i.in = load ptr, ptr %23, align 8, !tbaa !46   ; 3 uses
  %.not.i.i370 = icmp eq ptr %i.in, null
  br i1 %.not.i.i370, label %_ZN7testing7MessageD2Ev.exit372, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i371

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i371: ; preds = %bb.cd
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !9
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8
  call void %i.iq(ptr noundef nonnull align 8 dereferenceable(128) %i.in) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit372

_ZN7testing7MessageD2Ev.exit372:                  ; preds = %bb.cd, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i371
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  br label %bb.ci

bb.ce:                                            ; preds = %bb.bz
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit375

bb.cf:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit369
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cg:                                            ; preds = %bb.cc
  %i.it = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #20
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.pn133 = phi { ptr, i32 } [ %i.it, %bb.cg ], [ %i.is, %bb.cf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  %i.iu = load ptr, ptr %23, align 8, !tbaa !46   ; 3 uses
  %.not.i.i373 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i373, label %_ZN7testing7MessageD2Ev.exit375, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i374

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i374: ; preds = %bb.ch
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !9
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8
  call void %i.ix(ptr noundef nonnull align 8 dereferenceable(128) %i.iu) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit375

_ZN7testing7MessageD2Ev.exit375:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i374, %bb.ch, %bb.ce
  %.pn133.pn = phi { ptr, i32 } [ %i.ir, %bb.ce ], [ %.pn133, %bb.ch ], [ %.pn133, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i374 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %bb.gv

bb.ci:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit367, %_ZN7testing7MessageD2Ev.exit372
  %i.iy = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !45 ; 4 uses
  %.not.i.i376 = icmp eq ptr %i.iz, null
  br i1 %.not.i.i376, label %_ZN7testing15AssertionResultD2Ev.exit380, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !31 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 16 ; 2 uses
  %i.jc = icmp eq ptr %i.ja, %i.jb
  br i1 %i.jc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i378, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i377

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i377: ; preds = %bb.cj
  %i.jd = load i64, ptr %i.jb, align 8, !tbaa !32
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.je) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i378

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i378: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i377
  call void @_ZdlPvm(ptr noundef nonnull %i.iz, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit380

_ZN7testing15AssertionResultD2Ev.exit380:         ; preds = %bb.ci, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i378
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %_ZN7testing15AssertionResultD2Ev.exit380
  %indvars.iv.i.i389 = phi i64 [ %indvars.iv.next.i.i390, %bb.ck ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit380 ] ; 4 uses
  %indvars.iv.next.i.i390 = add nuw nsw i64 %indvars.iv.i.i389, 1
  switch i64 %indvars.iv.i.i389, label %bb.ck [
    i64 10, label %.preheader.i.i392.preheader
    i64 3, label %.preheader.i.i392.preheader
  ]

.preheader.i.i392.preheader:                      ; preds = %bb.ck, %bb.ck
  br label %.preheader.i.i392

.preheader.i.i392:                                ; preds = %.preheader.i.i392.preheader, %.preheader.i.i392
  %indvars.iv17.i.i393 = phi i64 [ %indvars.iv.next18.i.i394, %.preheader.i.i392 ], [ %indvars.iv.i.i389, %.preheader.i.i392.preheader ]
  %indvars.iv.next18.i.i394 = add nuw nsw i64 %indvars.iv17.i.i393, 1 ; 3 uses
  switch i64 %indvars.iv.next18.i.i394, label %.preheader.i.i392 [
    i64 13, label %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit400
    i64 6, label %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit400
  ]

_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit400: ; preds = %.preheader.i.i392, %.preheader.i.i392
  %i.jf = sub nuw nsw i64 %indvars.iv.next18.i.i394, %indvars.iv.i.i389
  %i.jg = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 1970, i8 noundef signext 1, i64 noundef 1, i64 noundef %i.jf, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.fca.1.extract.i.i.i.i397 = extractvalue { i64, i64 } %i.jg, 1 ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i.i.i398 = and i64 %.fca.1.extract.i.i.i.i397, 65535 ; 2 uses
  %i.jh = extractvalue { i64, i64 } %i.jg, 0      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  store i32 3, ptr %i.g, align 4, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  %.sroa.22.8.extract.trunc.i.i401 = trunc i64 %.fca.1.extract.i.i.i.i397 to i8 ; 2 uses
  %.sroa.43.8.extract.shift.i.i402 = lshr i64 %.fca.1.extract.i.i.i.i397, 8
  %.sroa.43.8.extract.trunc.i.i403 = trunc i64 %.sroa.43.8.extract.shift.i.i402 to i8
  %i.ji = call noundef i64 @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %i.jh, i8 noundef signext %.sroa.22.8.extract.trunc.i.i401, i8 noundef signext %.sroa.43.8.extract.trunc.i.i403, i64 noundef 1970, i8 noundef signext 1, i8 noundef signext 1) #20 ; 2 uses
  store i64 %i.ji, ptr %i.h, align 8, !tbaa !96
  %i.jj = load i32, ptr %i.g, align 4, !tbaa !331, !noalias !1584
  %i.jk = sext i32 %i.jj to i64
  %i.jl = icmp eq i64 %i.ji, %i.jk
  br i1 %i.jl, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit400
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %25)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit407

bb.cm:                                            ; preds = %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit400
  call void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %25, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.665, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit407

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit407: ; preds = %bb.cl, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  %i.jm = load i8, ptr %25, align 8, !tbaa !33, !range !43, !noundef !44
  %i.jn = trunc nuw i8 %i.jm to i1
  br i1 %i.jn, label %bb.cy, label %bb.cn

bb.cn:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit407
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.co unwind label %bb.cs

bb.co:                                            ; preds = %bb.cn
  %i.jo = load ptr, ptr %26, align 8, !tbaa !46
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.jq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052613time_internallsERSoNS1_4cctz6detail10civil_timeINS1_7day_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.jp, i64 %i.jh, i64 %.sroa.2.8.insert.insert.i.i.i.i.i398)
          to label %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit411 unwind label %bb.ct ; 0 uses

_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit411: ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  %i.jr = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !45 ; 2 uses
  %.not.i.i412 = icmp eq ptr %i.js, null
  br i1 %.not.i.i412, label %_ZNK7testing15AssertionResult15failure_messageEv.exit413, label %bb.cp

bb.cp:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit411
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit413

_ZNK7testing15AssertionResult15failure_messageEv.exit413: ; preds = %bb.cp, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit411
  %i.ju = phi ptr [ %i.jt, %bb.cp ], [ @.str.100, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit411 ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %27, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 942, ptr noundef %i.ju)
          to label %bb.cq unwind label %bb.cu

bb.cq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit413
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.cr unwind label %bb.cv

bb.cr:                                            ; preds = %bb.cq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  %i.jv = load ptr, ptr %26, align 8, !tbaa !46   ; 3 uses
  %.not.i.i414.a = icmp eq ptr %i.jv, null
  br i1 %.not.i.i414.a, label %_ZN7testing7MessageD2Ev.exit416, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i415

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i415: ; preds = %bb.cr
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !9
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8
  call void %i.jy(ptr noundef nonnull align 8 dereferenceable(128) %i.jv) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit416

_ZN7testing7MessageD2Ev.exit416:                  ; preds = %bb.cr, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i415
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  br label %bb.cy

bb.cs:                                            ; preds = %bb.cn
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit419

bb.ct:                                            ; preds = %bb.co
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.cu:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit413
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cv:                                            ; preds = %bb.cq
  %i.kc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #20
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.pn136 = phi { ptr, i32 } [ %i.kc, %bb.cv ], [ %i.kb, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.ct
  %.pn136.pn = phi { ptr, i32 } [ %.pn136, %bb.cw ], [ %i.ka, %bb.ct ] ; 2 uses
  %i.kd = load ptr, ptr %26, align 8, !tbaa !46   ; 3 uses
  %.not.i.i417 = icmp eq ptr %i.kd, null
  br i1 %.not.i.i417, label %_ZN7testing7MessageD2Ev.exit419, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i418

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i418: ; preds = %bb.cx
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !9
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kg = load ptr, ptr %i.kf, align 8
  call void %i.kg(ptr noundef nonnull align 8 dereferenceable(128) %i.kd) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit419

_ZN7testing7MessageD2Ev.exit419:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i418, %bb.cx, %bb.cs
  %.pn136.pn.pn = phi { ptr, i32 } [ %i.jz, %bb.cs ], [ %.pn136.pn, %bb.cx ], [ %.pn136.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i418 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  br label %bb.gv

bb.cy:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit407, %_ZN7testing7MessageD2Ev.exit416
  %i.kh = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !45 ; 4 uses
  %.not.i.i420 = icmp eq ptr %i.ki, null
  br i1 %.not.i.i420, label %_ZN7testing15AssertionResultD2Ev.exit424, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !31 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 16 ; 2 uses
  %i.kl = icmp eq ptr %i.kj, %i.kk
  br i1 %i.kl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i422, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i421

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i421: ; preds = %bb.cz
  %i.km = load i64, ptr %i.kk, align 8, !tbaa !32
  %i.kn = add i64 %i.km, 1
  call void @_ZdlPvm(ptr noundef %i.kj, i64 noundef %i.kn) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i422

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i422: ; preds = %bb.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i421
  call void @_ZdlPvm(ptr noundef nonnull %i.ki, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit424

_ZN7testing15AssertionResultD2Ev.exit424:         ; preds = %bb.cy, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i422
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  %i.ko = shl nuw i64 %.sroa.2.8.insert.insert.i.i.i.i.i398, 48
  %i.kp = ashr i64 %i.ko, 56
  %i.kq = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %i.jh, i8 noundef signext %.sroa.22.8.extract.trunc.i.i401, i64 noundef %i.kp, i64 noundef -7, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.sroa.3.0.in.in.i432 = extractvalue { i64, i64 } %i.kq, 1
  %.sroa.3.0.in.i433 = and i64 %.sroa.3.0.in.in.i432, 65535
  %i.kr = extractvalue { i64, i64 } %i.kq, 0
  store i64 %i.kr, ptr %29, align 8
  %i.ks = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  store i64 %.sroa.3.0.in.i433, ptr %i.ks, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #20
  br label %bb.da

bb.da:                                            ; preds = %bb.da, %_ZN7testing15AssertionResultD2Ev.exit424
  %indvars.iv.i.i443 = phi i64 [ %indvars.iv.next.i.i444, %bb.da ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit424 ] ; 3 uses
  %indvars.iv.next.i.i444 = add nuw nsw i64 %indvars.iv.i.i443, 1
  switch i64 %indvars.iv.i.i443, label %bb.da [
    i64 10, label %.preheader.i.i446.preheader
    i64 3, label %.preheader.i.i446.preheader
  ]

.preheader.i.i446.preheader:                      ; preds = %bb.da, %bb.da
  %sext20.i.i450 = sub nuw nsw i64 7, %indvars.iv.i.i443
  %i.kt = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detailmiENS3_10civil_timeINS3_7day_tagEEEl(i64 1970, i64 257, i64 noundef %sext20.i.i450) #20 ; 2 uses
  %i.ku = extractvalue { i64, i64 } %i.kt, 1      ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i4.i451 = and i64 %i.ku, 65535
  %i.kv = extractvalue { i64, i64 } %i.kt, 0      ; 2 uses
  store i64 %i.kv, ptr %30, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 %.sroa.2.8.insert.insert.i.i.i4.i451, ptr %i.kw, align 8
  %i.kx = load i64, ptr %29, align 8, !tbaa !438, !noalias !1589
  %i.ky = icmp eq i64 %i.kx, %i.kv
  %i.kz = lshr i64 %i.ku, 8
  %i.la = trunc i64 %i.kz to i8
  %i.lb = trunc i64 %i.ku to i8
  %i.lc = load i8, ptr %i.ks, align 8
  %i.ld = icmp eq i8 %i.lc, %i.lb
  %i.le = getelementptr inbounds nuw i8, ptr %29, i64 9
  %i.lf = load <4 x i8>, ptr %i.le, align 1
  %i.lg = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %i.la, i64 0
  %i.lh = icmp eq <4 x i8> %i.lf, %i.lg
  %i.li = freeze <4 x i1> %i.lh
  %i.lj = bitcast <4 x i1> %i.li to i4
  %i.lk = icmp eq i4 %i.lj, -1
  %i.ll = and i1 %i.ky, %i.lk
  %op.rdx997 = select i1 %i.ll, i1 %i.ld, i1 false
  br i1 %op.rdx997, label %bb.db, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i454

bb.db:                                            ; preds = %.preheader.i.i446.preheader
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %28)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit456

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i454: ; preds = %.preheader.i.i446.preheader
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %28, ptr noundef nonnull @.str.668, ptr noundef nonnull @.str.671, ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %30)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit456

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit456: ; preds = %bb.db, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i454
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  %i.lm = load i8, ptr %28, align 8, !tbaa !33, !range !43, !noundef !44
  %i.ln = trunc nuw i8 %i.lm to i1
  br i1 %i.ln, label %bb.dl, label %bb.dc

bb.dc:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit456
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.dd unwind label %bb.dh

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #20
  %i.lo = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !45 ; 2 uses
  %.not.i.i457 = icmp eq ptr %i.lp, null
  br i1 %.not.i.i457, label %_ZNK7testing15AssertionResult15failure_messageEv.exit458, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit458

_ZNK7testing15AssertionResult15failure_messageEv.exit458: ; preds = %bb.de, %bb.dd
  %i.lr = phi ptr [ %i.lq, %bb.de ], [ @.str.100, %bb.dd ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %32, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 943, ptr noundef %i.lr)
          to label %bb.df unwind label %bb.di

bb.df:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit458
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.dg unwind label %bb.dj

bb.dg:                                            ; preds = %bb.df
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  %i.ls = load ptr, ptr %31, align 8, !tbaa !46   ; 3 uses
  %.not.i.i459 = icmp eq ptr %i.ls, null
  br i1 %.not.i.i459, label %_ZN7testing7MessageD2Ev.exit461, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i460

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i460: ; preds = %bb.dg
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !9
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.lv = load ptr, ptr %i.lu, align 8
  call void %i.lv(ptr noundef nonnull align 8 dereferenceable(128) %i.ls) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit461

_ZN7testing7MessageD2Ev.exit461:                  ; preds = %bb.dg, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i460
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  br label %bb.dl

bb.dh:                                            ; preds = %bb.dc
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit464

bb.di:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit458
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.dj:                                            ; preds = %bb.df
  %i.ly = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #20
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.pn140 = phi { ptr, i32 } [ %i.ly, %bb.dj ], [ %i.lx, %bb.di ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  %i.lz = load ptr, ptr %31, align 8, !tbaa !46   ; 3 uses
  %.not.i.i462 = icmp eq ptr %i.lz, null
  br i1 %.not.i.i462, label %_ZN7testing7MessageD2Ev.exit464, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i463

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i463: ; preds = %bb.dk
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !9
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mc = load ptr, ptr %i.mb, align 8
  call void %i.mc(ptr noundef nonnull align 8 dereferenceable(128) %i.lz) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit464

_ZN7testing7MessageD2Ev.exit464:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i463, %bb.dk, %bb.dh
  %.pn140.pn = phi { ptr, i32 } [ %i.lw, %bb.dh ], [ %.pn140, %bb.dk ], [ %.pn140, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i463 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %28) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  br label %bb.gv

bb.dl:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit456, %_ZN7testing7MessageD2Ev.exit461
  %i.md = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !45 ; 4 uses
  %.not.i.i465 = icmp eq ptr %i.me, null
  br i1 %.not.i.i465, label %_ZN7testing15AssertionResultD2Ev.exit469, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !31 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 16 ; 2 uses
  %i.mh = icmp eq ptr %i.mf, %i.mg
  br i1 %i.mh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i467, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i466

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i466: ; preds = %bb.dm
  %i.mi = load i64, ptr %i.mg, align 8, !tbaa !32
  %i.mj = add i64 %i.mi, 1
  call void @_ZdlPvm(ptr noundef %i.mf, i64 noundef %i.mj) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i467

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i467: ; preds = %bb.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i466
  call void @_ZdlPvm(ptr noundef nonnull %i.me, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit469

_ZN7testing15AssertionResultD2Ev.exit469:         ; preds = %bb.dl, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i467
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dn, %_ZN7testing15AssertionResultD2Ev.exit469
  %indvars.iv.i.i478 = phi i64 [ %indvars.iv.next.i.i479, %bb.dn ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit469 ] ; 3 uses
  %indvars.iv.next.i.i479 = add nuw nsw i64 %indvars.iv.i.i478, 1
  switch i64 %indvars.iv.i.i478, label %bb.dn [
    i64 10, label %.preheader.i.i481.preheader
    i64 3, label %.preheader.i.i481.preheader
  ]

.preheader.i.i481.preheader:                      ; preds = %bb.dn, %bb.dn
  %sext20.i.i484 = sub nuw nsw i64 7, %indvars.iv.i.i478
  %i.mk = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 1970, i8 noundef signext 1, i64 noundef 1, i64 noundef %sext20.i.i484, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.fca.1.extract.i.i.i.i486 = extractvalue { i64, i64 } %i.mk, 1 ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i.i.i487 = and i64 %.fca.1.extract.i.i.i.i486, 65535 ; 2 uses
  %i.ml = extractvalue { i64, i64 } %i.mk, 0      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  store i32 4, ptr %i.i, align 4, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  %.sroa.22.8.extract.trunc.i.i490 = trunc i64 %.fca.1.extract.i.i.i.i486 to i8 ; 2 uses
  %.sroa.43.8.extract.shift.i.i491 = lshr i64 %.fca.1.extract.i.i.i.i486, 8
  %.sroa.43.8.extract.trunc.i.i492 = trunc i64 %.sroa.43.8.extract.shift.i.i491 to i8
  %i.mm = call noundef i64 @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %i.ml, i8 noundef signext %.sroa.22.8.extract.trunc.i.i490, i8 noundef signext %.sroa.43.8.extract.trunc.i.i492, i64 noundef 1970, i8 noundef signext 1, i8 noundef signext 1) #20 ; 2 uses
  store i64 %i.mm, ptr %i.j, align 8, !tbaa !96
  %i.mn = load i32, ptr %i.i, align 4, !tbaa !331, !noalias !1594
  %i.mo = sext i32 %i.mn to i64
  %i.mp = icmp eq i64 %i.mm, %i.mo
  br i1 %i.mp, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %.preheader.i.i481.preheader
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %33)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit496

bb.dp:                                            ; preds = %.preheader.i.i481.preheader
  call void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %33, ptr noundef nonnull @.str.463, ptr noundef nonnull @.str.665, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit496

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit496: ; preds = %bb.do, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  %i.mq = load i8, ptr %33, align 8, !tbaa !33, !range !43, !noundef !44
  %i.mr = trunc nuw i8 %i.mq to i1
  br i1 %i.mr, label %bb.eb, label %bb.dq

bb.dq:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit496
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %bb.dr unwind label %bb.dv

bb.dr:                                            ; preds = %bb.dq
  %i.ms = load ptr, ptr %34, align 8, !tbaa !46
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %i.mu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052613time_internallsERSoNS1_4cctz6detail10civil_timeINS1_7day_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.mt, i64 %i.ml, i64 %.sroa.2.8.insert.insert.i.i.i.i.i487)
          to label %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit500 unwind label %bb.dw ; 0 uses

_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit500: ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #20
  %i.mv = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !45 ; 2 uses
  %.not.i.i501.a = icmp eq ptr %i.mw, null
  br i1 %.not.i.i501.a, label %_ZNK7testing15AssertionResult15failure_messageEv.exit502, label %bb.ds

bb.ds:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit500
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit502

_ZNK7testing15AssertionResult15failure_messageEv.exit502: ; preds = %bb.ds, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit500
  %i.my = phi ptr [ %i.mx, %bb.ds ], [ @.str.100, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit500 ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %35, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 947, ptr noundef %i.my)
          to label %bb.dt unwind label %bb.dx

bb.dt:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit502
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %bb.du unwind label %bb.dy

bb.du:                                            ; preds = %bb.dt
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20
  %i.mz = load ptr, ptr %34, align 8, !tbaa !46   ; 3 uses
  %.not.i.i503 = icmp eq ptr %i.mz, null
  br i1 %.not.i.i503, label %_ZN7testing7MessageD2Ev.exit505, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i504

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i504: ; preds = %bb.du
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !9
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.nc = load ptr, ptr %i.nb, align 8
  call void %i.nc(ptr noundef nonnull align 8 dereferenceable(128) %i.mz) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit505

_ZN7testing7MessageD2Ev.exit505:                  ; preds = %bb.du, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i504
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #20
  br label %bb.eb

bb.dv:                                            ; preds = %bb.dq
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit508

bb.dw:                                            ; preds = %bb.dr
  %i.ne = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.dx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit502
  %i.nf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dt
  %i.ng = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #20
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %.pn143 = phi { ptr, i32 } [ %i.ng, %bb.dy ], [ %i.nf, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dw
  %.pn143.pn = phi { ptr, i32 } [ %.pn143, %bb.dz ], [ %i.ne, %bb.dw ] ; 2 uses
  %i.nh = load ptr, ptr %34, align 8, !tbaa !46   ; 3 uses
  %.not.i.i506 = icmp eq ptr %i.nh, null
  br i1 %.not.i.i506, label %_ZN7testing7MessageD2Ev.exit508, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i507

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i507: ; preds = %bb.ea
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !9
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.nk = load ptr, ptr %i.nj, align 8
  call void %i.nk(ptr noundef nonnull align 8 dereferenceable(128) %i.nh) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit508

_ZN7testing7MessageD2Ev.exit508:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i507, %bb.ea, %bb.dv
  %.pn143.pn.pn = phi { ptr, i32 } [ %i.nd, %bb.dv ], [ %.pn143.pn, %bb.ea ], [ %.pn143.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i507 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  br label %bb.gv

bb.eb:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit496, %_ZN7testing7MessageD2Ev.exit505
  %i.nl = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !45 ; 4 uses
  %.not.i.i509 = icmp eq ptr %i.nm, null
  br i1 %.not.i.i509, label %_ZN7testing15AssertionResultD2Ev.exit513, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !31 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nm, i64 16 ; 2 uses
  %i.np = icmp eq ptr %i.nn, %i.no
  br i1 %i.np, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i511, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i510

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i510: ; preds = %bb.ec
  %i.nq = load i64, ptr %i.no, align 8, !tbaa !32
  %i.nr = add i64 %i.nq, 1
  call void @_ZdlPvm(ptr noundef %i.nn, i64 noundef %i.nr) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i511

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i511: ; preds = %bb.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i510
  call void @_ZdlPvm(ptr noundef nonnull %i.nm, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit513

_ZN7testing15AssertionResultD2Ev.exit513:         ; preds = %bb.eb, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i511
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #20
  %i.ns = shl nuw i64 %.sroa.2.8.insert.insert.i.i.i.i.i487, 48
  %i.nt = ashr i64 %i.ns, 56
  %i.nu = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %i.ml, i8 noundef signext %.sroa.22.8.extract.trunc.i.i490, i64 noundef %i.nt, i64 noundef -7, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.sroa.3.0.in.in.i521 = extractvalue { i64, i64 } %i.nu, 1
  %.sroa.3.0.in.i522 = and i64 %.sroa.3.0.in.in.i521, 65535
  %i.nv = extractvalue { i64, i64 } %i.nu, 0
  store i64 %i.nv, ptr %37, align 8
  %i.nw = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  store i64 %.sroa.3.0.in.i522, ptr %i.nw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #20
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ed, %_ZN7testing15AssertionResultD2Ev.exit513
  %indvars.iv.i.i532 = phi i64 [ %indvars.iv.next.i.i533, %bb.ed ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit513 ] ; 4 uses
  %indvars.iv.next.i.i533 = add nuw nsw i64 %indvars.iv.i.i532, 1
  switch i64 %indvars.iv.i.i532, label %bb.ed [
    i64 10, label %.preheader.i.i535.preheader
    i64 3, label %.preheader.i.i535.preheader
  ]

.preheader.i.i535.preheader:                      ; preds = %bb.ed, %bb.ed
  br label %.preheader.i.i535

.preheader.i.i535:                                ; preds = %.preheader.i.i535.preheader, %.preheader.i.i535
  %indvars.iv17.i.i536 = phi i64 [ %indvars.iv.next18.i.i537, %.preheader.i.i535 ], [ %indvars.iv.i.i532, %.preheader.i.i535.preheader ]
  %indvars.iv.next18.i.i537 = add nuw nsw i64 %indvars.iv17.i.i536, 1 ; 3 uses
  switch i64 %indvars.iv.next18.i.i537, label %.preheader.i.i535 [
    i64 13, label %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit542
    i64 6, label %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit542
  ]

_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit542: ; preds = %.preheader.i.i535, %.preheader.i.i535
  %i.nx = sub nuw nsw i64 %indvars.iv.next18.i.i537, %indvars.iv.i.i532
  %i.ny = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detailmiENS3_10civil_timeINS3_7day_tagEEEl(i64 1970, i64 257, i64 noundef %i.nx) #20 ; 2 uses
  %i.nz = extractvalue { i64, i64 } %i.ny, 1      ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i4.i540 = and i64 %i.nz, 65535
  %i.oa = extractvalue { i64, i64 } %i.ny, 0      ; 2 uses
  store i64 %i.oa, ptr %38, align 8
  %i.ob = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 %.sroa.2.8.insert.insert.i.i.i4.i540, ptr %i.ob, align 8
  %i.oc = load i64, ptr %37, align 8, !tbaa !438, !noalias !1599
  %i.od = icmp eq i64 %i.oc, %i.oa
  %i.oe = lshr i64 %i.nz, 8
  %i.of = trunc i64 %i.oe to i8
  %i.og = trunc i64 %i.nz to i8
  %i.oh = load i8, ptr %i.nw, align 8
  %i.oi = icmp eq i8 %i.oh, %i.og
  %i.oj = getelementptr inbounds nuw i8, ptr %37, i64 9
  %i.ok = load <4 x i8>, ptr %i.oj, align 1
  %i.ol = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %i.of, i64 0
  %i.om = icmp eq <4 x i8> %i.ok, %i.ol
  %i.on = freeze <4 x i1> %i.om
  %i.oo = bitcast <4 x i1> %i.on to i4
  %i.op = icmp eq i4 %i.oo, -1
  %i.oq = and i1 %i.od, %i.op
  %op.rdx995 = select i1 %i.oq, i1 %i.oi, i1 false
  br i1 %op.rdx995, label %bb.ee, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i543

bb.ee:                                            ; preds = %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit542
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %36)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit545

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i543: ; preds = %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit542
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %36, ptr noundef nonnull @.str.668, ptr noundef nonnull @.str.672, ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 8 dereferenceable(16) %38)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit545

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit545: ; preds = %bb.ee, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i543
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #20
  %i.or = load i8, ptr %36, align 8, !tbaa !33, !range !43, !noundef !44
  %i.os = trunc nuw i8 %i.or to i1
  br i1 %i.os, label %bb.eo, label %bb.ef

bb.ef:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit545
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.eg unwind label %bb.ek

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #20
  %i.ot = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !45 ; 2 uses
  %.not.i.i546 = icmp eq ptr %i.ou, null
  br i1 %.not.i.i546, label %_ZNK7testing15AssertionResult15failure_messageEv.exit547, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit547

_ZNK7testing15AssertionResult15failure_messageEv.exit547: ; preds = %bb.eh, %bb.eg
  %i.ow = phi ptr [ %i.ov, %bb.eh ], [ @.str.100, %bb.eg ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %40, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 948, ptr noundef %i.ow)
          to label %bb.ei unwind label %bb.el

bb.ei:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit547
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.ej unwind label %bb.em

bb.ej:                                            ; preds = %bb.ei
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #20
  %i.ox = load ptr, ptr %39, align 8, !tbaa !46   ; 3 uses
  %.not.i.i548 = icmp eq ptr %i.ox, null
  br i1 %.not.i.i548, label %_ZN7testing7MessageD2Ev.exit550, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i549

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i549: ; preds = %bb.ej
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !9
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %i.pa = load ptr, ptr %i.oz, align 8
  call void %i.pa(ptr noundef nonnull align 8 dereferenceable(128) %i.ox) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit550

_ZN7testing7MessageD2Ev.exit550:                  ; preds = %bb.ej, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i549
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20
  br label %bb.eo

bb.ek:                                            ; preds = %bb.ef
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit553

bb.el:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit547
  %i.pc = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.em:                                            ; preds = %bb.ei
  %i.pd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #20
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %.pn147 = phi { ptr, i32 } [ %i.pd, %bb.em ], [ %i.pc, %bb.el ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #20
  %i.pe = load ptr, ptr %39, align 8, !tbaa !46   ; 3 uses
  %.not.i.i551 = icmp eq ptr %i.pe, null
  br i1 %.not.i.i551, label %_ZN7testing7MessageD2Ev.exit553, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i552

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i552: ; preds = %bb.en
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !9
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.ph = load ptr, ptr %i.pg, align 8
  call void %i.ph(ptr noundef nonnull align 8 dereferenceable(128) %i.pe) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit553

_ZN7testing7MessageD2Ev.exit553:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i552, %bb.en, %bb.ek
  %.pn147.pn = phi { ptr, i32 } [ %i.pb, %bb.ek ], [ %.pn147, %bb.en ], [ %.pn147, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i552 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %36) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  br label %bb.gv

bb.eo:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit545, %_ZN7testing7MessageD2Ev.exit550
  %i.pi = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !45 ; 4 uses
  %.not.i.i554 = icmp eq ptr %i.pj, null
  br i1 %.not.i.i554, label %_ZN7testing15AssertionResultD2Ev.exit558, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !31 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pj, i64 16 ; 2 uses
  %i.pm = icmp eq ptr %i.pk, %i.pl
  br i1 %i.pm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i556, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i555

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i555: ; preds = %bb.ep
  %i.pn = load i64, ptr %i.pl, align 8, !tbaa !32
  %i.po = add i64 %i.pn, 1
  call void @_ZdlPvm(ptr noundef %i.pk, i64 noundef %i.po) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i556

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i556: ; preds = %bb.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i555
  call void @_ZdlPvm(ptr noundef nonnull %i.pj, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit558

_ZN7testing15AssertionResultD2Ev.exit558:         ; preds = %bb.eo, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i556
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  br label %bb.eq

bb.eq:                                            ; preds = %bb.eq, %_ZN7testing15AssertionResultD2Ev.exit558
  %indvars.iv816 = phi i64 [ %indvars.iv.next817, %bb.eq ], [ 1, %_ZN7testing15AssertionResultD2Ev.exit558 ] ; 2 uses
  %indvars.iv813 = phi i64 [ %indvars.iv.next814, %bb.eq ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit558 ] ; 2 uses
  %indvars.iv811 = phi i64 [ %indvars.iv.next812, %bb.eq ], [ 7, %_ZN7testing15AssertionResultD2Ev.exit558 ] ; 2 uses
  %indvars.iv.i.i567 = phi i64 [ %indvars.iv.next.i.i568, %bb.eq ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit558 ] ; 3 uses
  %indvars.iv.next.i.i568 = add nuw nsw i64 %indvars.iv.i.i567, 1
  %indvars.iv.next812 = add i64 %indvars.iv811, -1
  %indvars.iv.next814 = add i64 %indvars.iv813, -1
  %indvars.iv.next817 = add nuw i64 %indvars.iv816, 1
  switch i64 %indvars.iv.i.i567, label %bb.eq [
    i64 10, label %.preheader.i.i570.preheader
    i64 3, label %.preheader.i.i570.preheader
  ]

.preheader.i.i570.preheader:                      ; preds = %bb.eq, %bb.eq
  %umin815 = call i64 @llvm.umin.i64(i64 %indvars.iv811, i64 %indvars.iv813)
  %i.pp = add i64 %umin815, %indvars.iv816
  %i.pq = sub nuw nsw i64 %i.pp, %indvars.iv.i.i567
  %58 = and i64 %i.pq, 4294967295
  %i.pr = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 1970, i8 noundef signext 1, i64 noundef 1, i64 noundef %58, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.fca.1.extract.i.i.i.i575 = extractvalue { i64, i64 } %i.pr, 1 ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i.i.i576 = and i64 %.fca.1.extract.i.i.i.i575, 65535 ; 2 uses
  %i.ps = extractvalue { i64, i64 } %i.pr, 0      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #20
  store i32 5, ptr %i.k, align 4, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #20
  %.sroa.22.8.extract.trunc.i.i579 = trunc i64 %.fca.1.extract.i.i.i.i575 to i8 ; 2 uses
  %.sroa.43.8.extract.shift.i.i580 = lshr i64 %.fca.1.extract.i.i.i.i575, 8
  %.sroa.43.8.extract.trunc.i.i581 = trunc i64 %.sroa.43.8.extract.shift.i.i580 to i8
  %i.pt = call noundef i64 @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %i.ps, i8 noundef signext %.sroa.22.8.extract.trunc.i.i579, i8 noundef signext %.sroa.43.8.extract.trunc.i.i581, i64 noundef 1970, i8 noundef signext 1, i8 noundef signext 1) #20 ; 2 uses
  store i64 %i.pt, ptr %i.l, align 8, !tbaa !96
  %i.pu = load i32, ptr %i.k, align 4, !tbaa !331, !noalias !1604
  %i.pv = sext i32 %i.pu to i64
  %i.pw = icmp eq i64 %i.pt, %i.pv
  br i1 %i.pw, label %bb.er, label %bb.es

bb.er:                                            ; preds = %.preheader.i.i570.preheader
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %41)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit585

bb.es:                                            ; preds = %.preheader.i.i570.preheader
  call void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %41, ptr noundef nonnull @.str.465, ptr noundef nonnull @.str.665, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit585

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit585: ; preds = %bb.er, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #20
  %i.px = load i8, ptr %41, align 8, !tbaa !33, !range !43, !noundef !44
  %i.py = trunc nuw i8 %i.px to i1
  br i1 %i.py, label %bb.fe, label %bb.et

bb.et:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit585
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %42)
          to label %bb.eu unwind label %bb.ey

bb.eu:                                            ; preds = %bb.et
  %i.pz = load ptr, ptr %42, align 8, !tbaa !46
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  %i.qb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052613time_internallsERSoNS1_4cctz6detail10civil_timeINS1_7day_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.qa, i64 %i.ps, i64 %.sroa.2.8.insert.insert.i.i.i.i.i576)
          to label %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit589 unwind label %bb.ez ; 0 uses

_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit589: ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #20
  %i.qc = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !45 ; 2 uses
  %.not.i.i590 = icmp eq ptr %i.qd, null
  br i1 %.not.i.i590, label %_ZNK7testing15AssertionResult15failure_messageEv.exit591, label %bb.ev

bb.ev:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit589
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit591

_ZNK7testing15AssertionResult15failure_messageEv.exit591: ; preds = %bb.ev, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit589
  %i.qf = phi ptr [ %i.qe, %bb.ev ], [ @.str.100, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit589 ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %43, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 952, ptr noundef %i.qf)
          to label %bb.ew unwind label %bb.fa

bb.ew:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit591
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef nonnull align 8 dereferenceable(8) %42)
          to label %bb.ex unwind label %bb.fb

bb.ex:                                            ; preds = %bb.ew
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %43) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #20
  %i.qg = load ptr, ptr %42, align 8, !tbaa !46   ; 3 uses
  %.not.i.i592 = icmp eq ptr %i.qg, null
  br i1 %.not.i.i592, label %_ZN7testing7MessageD2Ev.exit594, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i593

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i593: ; preds = %bb.ex
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !9
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 8
  %i.qj = load ptr, ptr %i.qi, align 8
  call void %i.qj(ptr noundef nonnull align 8 dereferenceable(128) %i.qg) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit594

_ZN7testing7MessageD2Ev.exit594:                  ; preds = %bb.ex, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i593
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #20
  br label %bb.fe

bb.ey:                                            ; preds = %bb.et
  %i.qk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit597

bb.ez:                                            ; preds = %bb.eu
  %i.ql = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.fa:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit591
  %i.qm = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.fb:                                            ; preds = %bb.ew
  %i.qn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %43) #20
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %.pn150 = phi { ptr, i32 } [ %i.qn, %bb.fb ], [ %i.qm, %bb.fa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #20
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.ez
  %.pn150.pn = phi { ptr, i32 } [ %.pn150, %bb.fc ], [ %i.ql, %bb.ez ] ; 2 uses
  %i.qo = load ptr, ptr %42, align 8, !tbaa !46   ; 3 uses
  %.not.i.i595 = icmp eq ptr %i.qo, null
  br i1 %.not.i.i595, label %_ZN7testing7MessageD2Ev.exit597, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i596

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i596: ; preds = %bb.fd
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !9
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.qr = load ptr, ptr %i.qq, align 8
  call void %i.qr(ptr noundef nonnull align 8 dereferenceable(128) %i.qo) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit597

_ZN7testing7MessageD2Ev.exit597:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i596, %bb.fd, %bb.ey
  %.pn150.pn.pn = phi { ptr, i32 } [ %i.qk, %bb.ey ], [ %.pn150.pn, %bb.fd ], [ %.pn150.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i596 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %41) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #20
  br label %bb.gv

bb.fe:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit585, %_ZN7testing7MessageD2Ev.exit594
  %i.qs = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !45 ; 4 uses
  %.not.i.i598 = icmp eq ptr %i.qt, null
  br i1 %.not.i.i598, label %_ZN7testing15AssertionResultD2Ev.exit602, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !31 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qt, i64 16 ; 2 uses
  %i.qw = icmp eq ptr %i.qu, %i.qv
  br i1 %i.qw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i600, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i599

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i599: ; preds = %bb.ff
  %i.qx = load i64, ptr %i.qv, align 8, !tbaa !32
  %i.qy = add i64 %i.qx, 1
  call void @_ZdlPvm(ptr noundef %i.qu, i64 noundef %i.qy) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i600

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i600: ; preds = %bb.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i599
  call void @_ZdlPvm(ptr noundef nonnull %i.qt, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit602

_ZN7testing15AssertionResultD2Ev.exit602:         ; preds = %bb.fe, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i600
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #20
  %i.qz = shl nuw i64 %.sroa.2.8.insert.insert.i.i.i.i.i576, 48
  %i.ra = ashr i64 %i.qz, 56
  %i.rb = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %i.ps, i8 noundef signext %.sroa.22.8.extract.trunc.i.i579, i64 noundef %i.ra, i64 noundef -7, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.sroa.3.0.in.in.i610 = extractvalue { i64, i64 } %i.rb, 1
  %.sroa.3.0.in.i611 = and i64 %.sroa.3.0.in.in.i610, 65535
  %i.rc = extractvalue { i64, i64 } %i.rb, 0
  store i64 %i.rc, ptr %45, align 8
  %i.rd = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  store i64 %.sroa.3.0.in.i611, ptr %i.rd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #20
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fg, %_ZN7testing15AssertionResultD2Ev.exit602
  %indvars.iv.i.i621 = phi i64 [ %indvars.iv.next.i.i622, %bb.fg ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit602 ] ; 4 uses
  %indvars.iv.next.i.i622 = add nuw nsw i64 %indvars.iv.i.i621, 1
  switch i64 %indvars.iv.i.i621, label %bb.fg [
    i64 10, label %.preheader.i.i624.preheader
    i64 3, label %.preheader.i.i624.preheader
  ]

.preheader.i.i624.preheader:                      ; preds = %bb.fg, %bb.fg
  br label %.preheader.i.i624

.preheader.i.i624:                                ; preds = %.preheader.i.i624.preheader, %.preheader.i.i624
  %indvars.iv17.i.i625 = phi i64 [ %indvars.iv.next18.i.i626, %.preheader.i.i624 ], [ %indvars.iv.i.i621, %.preheader.i.i624.preheader ]
  %indvars.iv.next18.i.i626 = add nuw nsw i64 %indvars.iv17.i.i625, 1 ; 3 uses
  switch i64 %indvars.iv.next18.i.i626, label %.preheader.i.i624 [
    i64 12, label %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit631
    i64 5, label %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit631
  ]

_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit631: ; preds = %.preheader.i.i624, %.preheader.i.i624
  %i.re = sub nuw nsw i64 %indvars.iv.next18.i.i626, %indvars.iv.i.i621
  %i.rf = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detailmiENS3_10civil_timeINS3_7day_tagEEEl(i64 1970, i64 257, i64 noundef %i.re) #20 ; 2 uses
  %i.rg = extractvalue { i64, i64 } %i.rf, 1      ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i4.i629 = and i64 %i.rg, 65535
  %i.rh = extractvalue { i64, i64 } %i.rf, 0      ; 2 uses
  store i64 %i.rh, ptr %46, align 8
  %i.ri = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i64 %.sroa.2.8.insert.insert.i.i.i4.i629, ptr %i.ri, align 8
  %i.rj = load i64, ptr %45, align 8, !tbaa !438, !noalias !1609
  %i.rk = icmp eq i64 %i.rj, %i.rh
  %i.rl = lshr i64 %i.rg, 8
  %i.rm = trunc i64 %i.rl to i8
  %i.rn = trunc i64 %i.rg to i8
  %i.ro = load i8, ptr %i.rd, align 8
  %i.rp = icmp eq i8 %i.ro, %i.rn
  %i.rq = getelementptr inbounds nuw i8, ptr %45, i64 9
  %i.rr = load <4 x i8>, ptr %i.rq, align 1
  %i.rs = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %i.rm, i64 0
  %i.rt = icmp eq <4 x i8> %i.rr, %i.rs
  %i.ru = freeze <4 x i1> %i.rt
  %i.rv = bitcast <4 x i1> %i.ru to i4
  %i.rw = icmp eq i4 %i.rv, -1
  %i.rx = and i1 %i.rk, %i.rw
  %op.rdx993 = select i1 %i.rx, i1 %i.rp, i1 false
  br i1 %op.rdx993, label %bb.fh, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i632

bb.fh:                                            ; preds = %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit631
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %44)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit634

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i632: ; preds = %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit631
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %44, ptr noundef nonnull @.str.668, ptr noundef nonnull @.str.673, ptr noundef nonnull align 8 dereferenceable(16) %45, ptr noundef nonnull align 8 dereferenceable(16) %46)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit634

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit634: ; preds = %bb.fh, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i632
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #20
  %i.ry = load i8, ptr %44, align 8, !tbaa !33, !range !43, !noundef !44
  %i.rz = trunc nuw i8 %i.ry to i1
  br i1 %i.rz, label %bb.fr, label %bb.fi

bb.fi:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit634
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %bb.fj unwind label %bb.fn

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #20
  %i.sa = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !45 ; 2 uses
  %.not.i.i635 = icmp eq ptr %i.sb, null
  br i1 %.not.i.i635, label %_ZNK7testing15AssertionResult15failure_messageEv.exit636, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit636

_ZNK7testing15AssertionResult15failure_messageEv.exit636: ; preds = %bb.fk, %bb.fj
  %i.sd = phi ptr [ %i.sc, %bb.fk ], [ @.str.100, %bb.fj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %48, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 953, ptr noundef %i.sd)
          to label %bb.fl unwind label %bb.fo

bb.fl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit636
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %bb.fm unwind label %bb.fp

bb.fm:                                            ; preds = %bb.fl
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %48) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #20
  %i.se = load ptr, ptr %47, align 8, !tbaa !46   ; 3 uses
  %.not.i.i637 = icmp eq ptr %i.se, null
  br i1 %.not.i.i637, label %_ZN7testing7MessageD2Ev.exit639, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i638

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i638: ; preds = %bb.fm
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !9
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  %i.sh = load ptr, ptr %i.sg, align 8
  call void %i.sh(ptr noundef nonnull align 8 dereferenceable(128) %i.se) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit639

_ZN7testing7MessageD2Ev.exit639:                  ; preds = %bb.fm, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i638
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #20
  br label %bb.fr

bb.fn:                                            ; preds = %bb.fi
  %i.si = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit642

bb.fo:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit636
  %i.sj = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq

bb.fp:                                            ; preds = %bb.fl
  %i.sk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %48) #20
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %.pn154 = phi { ptr, i32 } [ %i.sk, %bb.fp ], [ %i.sj, %bb.fo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #20
  %i.sl = load ptr, ptr %47, align 8, !tbaa !46   ; 3 uses
  %.not.i.i640 = icmp eq ptr %i.sl, null
  br i1 %.not.i.i640, label %_ZN7testing7MessageD2Ev.exit642, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i641

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i641: ; preds = %bb.fq
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !9
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  %i.so = load ptr, ptr %i.sn, align 8
  call void %i.so(ptr noundef nonnull align 8 dereferenceable(128) %i.sl) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit642

_ZN7testing7MessageD2Ev.exit642:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i641, %bb.fq, %bb.fn
  %.pn154.pn = phi { ptr, i32 } [ %i.si, %bb.fn ], [ %.pn154, %bb.fq ], [ %.pn154, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i641 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %44) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #20
  br label %bb.gv

bb.fr:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit634, %_ZN7testing7MessageD2Ev.exit639
  %i.sp = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !45 ; 4 uses
  %.not.i.i643 = icmp eq ptr %i.sq, null
  br i1 %.not.i.i643, label %_ZN7testing15AssertionResultD2Ev.exit647, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !31 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sq, i64 16 ; 2 uses
  %i.st = icmp eq ptr %i.sr, %i.ss
  br i1 %i.st, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i645, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i644

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i644: ; preds = %bb.fs
  %i.su = load i64, ptr %i.ss, align 8, !tbaa !32
  %i.sv = add i64 %i.su, 1
  call void @_ZdlPvm(ptr noundef %i.sr, i64 noundef %i.sv) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i645

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i645: ; preds = %bb.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i644
  call void @_ZdlPvm(ptr noundef nonnull %i.sq, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit647

_ZN7testing15AssertionResultD2Ev.exit647:         ; preds = %bb.fr, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i645
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #20
  br label %bb.ft

bb.ft:                                            ; preds = %bb.ft, %_ZN7testing15AssertionResultD2Ev.exit647
  %indvars.iv.i.i656 = phi i64 [ %indvars.iv.next.i.i657, %bb.ft ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit647 ] ; 4 uses
  %indvars.iv.next.i.i657 = add nuw nsw i64 %indvars.iv.i.i656, 1
  switch i64 %indvars.iv.i.i656, label %bb.ft [
    i64 10, label %.preheader.i.i659.preheader
    i64 3, label %.preheader.i.i659.preheader
  ]

.preheader.i.i659.preheader:                      ; preds = %bb.ft, %bb.ft
  br label %.preheader.i.i659

.preheader.i.i659:                                ; preds = %.preheader.i.i659.preheader, %.preheader.i.i659
  %indvars.iv17.i.i660 = phi i64 [ %indvars.iv.next18.i.i661, %.preheader.i.i659 ], [ %indvars.iv.i.i656, %.preheader.i.i659.preheader ]
  %indvars.iv.next18.i.i661 = add nuw nsw i64 %indvars.iv17.i.i660, 1 ; 3 uses
  switch i64 %indvars.iv.next18.i.i661, label %.preheader.i.i659 [
    i64 9, label %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit667
    i64 2, label %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit667
  ]

_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit667: ; preds = %.preheader.i.i659, %.preheader.i.i659
  %i.sw = sub nuw nsw i64 %indvars.iv.next18.i.i661, %indvars.iv.i.i656
  %i.sx = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 1970, i8 noundef signext 1, i64 noundef 1, i64 noundef %i.sw, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.fca.1.extract.i.i.i.i664 = extractvalue { i64, i64 } %i.sx, 1 ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i.i.i665 = and i64 %.fca.1.extract.i.i.i.i664, 65535 ; 2 uses
  %i.sy = extractvalue { i64, i64 } %i.sx, 0      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #20
  store i32 6, ptr %i.m, align 4, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #20
  %.sroa.22.8.extract.trunc.i.i668 = trunc i64 %.fca.1.extract.i.i.i.i664 to i8 ; 2 uses
  %.sroa.43.8.extract.shift.i.i669 = lshr i64 %.fca.1.extract.i.i.i.i664, 8
  %.sroa.43.8.extract.trunc.i.i670 = trunc i64 %.sroa.43.8.extract.shift.i.i669 to i8
  %i.sz = call noundef i64 @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %i.sy, i8 noundef signext %.sroa.22.8.extract.trunc.i.i668, i8 noundef signext %.sroa.43.8.extract.trunc.i.i670, i64 noundef 1970, i8 noundef signext 1, i8 noundef signext 1) #20 ; 2 uses
  store i64 %i.sz, ptr %i.n, align 8, !tbaa !96
  %i.ta = load i32, ptr %i.m, align 4, !tbaa !331, !noalias !1614
  %i.tb = sext i32 %i.ta to i64
  %i.tc = icmp eq i64 %i.sz, %i.tb
  br i1 %i.tc, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit667
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %49)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit674

bb.fv:                                            ; preds = %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit667
  call void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %49, ptr noundef nonnull @.str.467, ptr noundef nonnull @.str.665, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit674

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit674: ; preds = %bb.fu, %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #20
  %i.td = load i8, ptr %49, align 8, !tbaa !33, !range !43, !noundef !44
  %i.te = trunc nuw i8 %i.td to i1
  br i1 %i.te, label %bb.gh, label %bb.fw

bb.fw:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit674
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %50)
          to label %bb.fx unwind label %bb.gb

bb.fx:                                            ; preds = %bb.fw
  %i.tf = load ptr, ptr %50, align 8, !tbaa !46
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 16
  %i.th = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052613time_internallsERSoNS1_4cctz6detail10civil_timeINS1_7day_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.tg, i64 %i.sy, i64 %.sroa.2.8.insert.insert.i.i.i.i.i665)
          to label %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit678 unwind label %bb.gc ; 0 uses

_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit678: ; preds = %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #20
  %i.ti = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !45 ; 2 uses
  %.not.i.i679 = icmp eq ptr %i.tj, null
  br i1 %.not.i.i679, label %_ZNK7testing15AssertionResult15failure_messageEv.exit680, label %bb.fy

bb.fy:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit678
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit680

_ZNK7testing15AssertionResult15failure_messageEv.exit680: ; preds = %bb.fy, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit678
  %i.tl = phi ptr [ %i.tk, %bb.fy ], [ @.str.100, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit678 ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %51, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 957, ptr noundef %i.tl)
          to label %bb.fz unwind label %bb.gd

bb.fz:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit680
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %51, ptr noundef nonnull align 8 dereferenceable(8) %50)
          to label %bb.ga unwind label %bb.ge

bb.ga:                                            ; preds = %bb.fz
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %51) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #20
  %i.tm = load ptr, ptr %50, align 8, !tbaa !46   ; 3 uses
  %.not.i.i681 = icmp eq ptr %i.tm, null
  br i1 %.not.i.i681, label %_ZN7testing7MessageD2Ev.exit683, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i682

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i682: ; preds = %bb.ga
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !9
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  %i.tp = load ptr, ptr %i.to, align 8
  call void %i.tp(ptr noundef nonnull align 8 dereferenceable(128) %i.tm) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit683

_ZN7testing7MessageD2Ev.exit683:                  ; preds = %bb.ga, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i682
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #20
  br label %bb.gh

bb.gb:                                            ; preds = %bb.fw
  %i.tq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit686

bb.gc:                                            ; preds = %bb.fx
  %i.tr = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.gd:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit680
  %i.ts = landingpad { ptr, i32 }
          cleanup
  br label %bb.gf

bb.ge:                                            ; preds = %bb.fz
  %i.tt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %51) #20
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %.pn157 = phi { ptr, i32 } [ %i.tt, %bb.ge ], [ %i.ts, %bb.gd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #20
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.gc
  %.pn157.pn = phi { ptr, i32 } [ %.pn157, %bb.gf ], [ %i.tr, %bb.gc ] ; 2 uses
  %i.tu = load ptr, ptr %50, align 8, !tbaa !46   ; 3 uses
  %.not.i.i684 = icmp eq ptr %i.tu, null
  br i1 %.not.i.i684, label %_ZN7testing7MessageD2Ev.exit686, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i685

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i685: ; preds = %bb.gg
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !9
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  %i.tx = load ptr, ptr %i.tw, align 8
  call void %i.tx(ptr noundef nonnull align 8 dereferenceable(128) %i.tu) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit686

_ZN7testing7MessageD2Ev.exit686:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i685, %bb.gg, %bb.gb
  %.pn157.pn.pn = phi { ptr, i32 } [ %i.tq, %bb.gb ], [ %.pn157.pn, %bb.gg ], [ %.pn157.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i685 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %49) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #20
  br label %bb.gv

bb.gh:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit674, %_ZN7testing7MessageD2Ev.exit683
  %i.ty = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !45 ; 4 uses
  %.not.i.i687 = icmp eq ptr %i.tz, null
  br i1 %.not.i.i687, label %_ZN7testing15AssertionResultD2Ev.exit691, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !31 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tz, i64 16 ; 2 uses
  %i.uc = icmp eq ptr %i.ua, %i.ub
  br i1 %i.uc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i689, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i688

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i688: ; preds = %bb.gi
  %i.ud = load i64, ptr %i.ub, align 8, !tbaa !32
  %i.ue = add i64 %i.ud, 1
  call void @_ZdlPvm(ptr noundef %i.ua, i64 noundef %i.ue) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i689

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i689: ; preds = %bb.gi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i688
  call void @_ZdlPvm(ptr noundef nonnull %i.tz, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit691

_ZN7testing15AssertionResultD2Ev.exit691:         ; preds = %bb.gh, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i689
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #20
  %i.uf = shl nuw i64 %.sroa.2.8.insert.insert.i.i.i.i.i665, 48
  %i.ug = ashr i64 %i.uf, 56
  %i.uh = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %i.sy, i8 noundef signext %.sroa.22.8.extract.trunc.i.i668, i64 noundef %i.ug, i64 noundef -7, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.sroa.3.0.in.in.i699 = extractvalue { i64, i64 } %i.uh, 1 ; 3 uses
  %.sroa.3.0.in.i700 = and i64 %.sroa.3.0.in.in.i699, 65535
  %i.ui = extractvalue { i64, i64 } %i.uh, 0      ; 2 uses
  store i64 %i.ui, ptr %53, align 8
  %i.uj = getelementptr inbounds nuw i8, ptr %53, i64 8
  store i64 %.sroa.3.0.in.i700, ptr %i.uj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #20
  %i.uk = trunc i64 %.sroa.3.0.in.in.i699 to i8
  %i.ul = lshr i64 %.sroa.3.0.in.in.i699, 8
  %i.um = trunc i64 %i.ul to i8
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gj, %_ZN7testing15AssertionResultD2Ev.exit691
  %indvars.iv.i.i710 = phi i64 [ %indvars.iv.next.i.i711, %bb.gj ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit691 ] ; 4 uses
  %indvars.iv.next.i.i711 = add nuw nsw i64 %indvars.iv.i.i710, 1
  switch i64 %indvars.iv.i.i710, label %bb.gj [
    i64 10, label %.preheader.i.i713.preheader
    i64 3, label %.preheader.i.i713.preheader
  ]

.preheader.i.i713.preheader:                      ; preds = %bb.gj, %bb.gj
  br label %.preheader.i.i713

.preheader.i.i713:                                ; preds = %.preheader.i.i713.preheader, %.preheader.i.i713
  %indvars.iv17.i.i714 = phi i64 [ %indvars.iv.next18.i.i715, %.preheader.i.i713 ], [ %indvars.iv.i.i710, %.preheader.i.i713.preheader ]
  %indvars.iv.next18.i.i715 = add nuw nsw i64 %indvars.iv17.i.i714, 1 ; 3 uses
  switch i64 %indvars.iv.next18.i.i715, label %.preheader.i.i713 [
    i64 11, label %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit720
    i64 4, label %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit720
  ]

_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit720: ; preds = %.preheader.i.i713, %.preheader.i.i713
  %i.un = sub nuw nsw i64 %indvars.iv.next18.i.i715, %indvars.iv.i.i710
  %i.uo = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detailmiENS3_10civil_timeINS3_7day_tagEEEl(i64 1970, i64 257, i64 noundef %i.un) #20 ; 2 uses
  %i.up = extractvalue { i64, i64 } %i.uo, 1      ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i4.i718 = and i64 %i.up, 65535
  %i.uq = extractvalue { i64, i64 } %i.uo, 0      ; 2 uses
  store i64 %i.uq, ptr %54, align 8
  %i.ur = getelementptr inbounds nuw i8, ptr %54, i64 8
  store i64 %.sroa.2.8.insert.insert.i.i.i4.i718, ptr %i.ur, align 8
  %i.us = icmp eq i64 %i.ui, %i.uq
  %i.ut = lshr i64 %i.up, 8
  %i.uu = trunc i64 %i.ut to i8
  %i.uv = trunc i64 %i.up to i8
  %i.uw = icmp eq i8 %i.uk, %i.uv
  %or.cond991 = select i1 %i.us, i1 %i.uw, i1 false
  %i.ux = icmp eq i8 %i.um, %i.uu
  %or.cond992 = select i1 %or.cond991, i1 %i.ux, i1 false
  br i1 %or.cond992, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.i.i722, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i721

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.i.i722: ; preds = %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit720
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %52)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit723

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i721: ; preds = %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit720
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %52, ptr noundef nonnull @.str.668, ptr noundef nonnull @.str.674, ptr noundef nonnull align 8 dereferenceable(16) %53, ptr noundef nonnull align 8 dereferenceable(16) %54)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit723

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit723: ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.i.i722, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i721
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #20
  %i.uy = load i8, ptr %52, align 8, !tbaa !33, !range !43, !noundef !44
  %i.uz = trunc nuw i8 %i.uy to i1
  br i1 %i.uz, label %bb.gt, label %bb.gk

bb.gk:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit723
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %55)
          to label %bb.gl unwind label %bb.gp

bb.gl:                                            ; preds = %bb.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #20
  %i.va = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !45 ; 2 uses
  %.not.i.i724 = icmp eq ptr %i.vb, null
  br i1 %.not.i.i724, label %_ZNK7testing15AssertionResult15failure_messageEv.exit725, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit725

_ZNK7testing15AssertionResult15failure_messageEv.exit725: ; preds = %bb.gm, %bb.gl
  %i.vd = phi ptr [ %i.vc, %bb.gm ], [ @.str.100, %bb.gl ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %56, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 958, ptr noundef %i.vd)
          to label %bb.gn unwind label %bb.gq

bb.gn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit725
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef nonnull align 8 dereferenceable(8) %55)
          to label %bb.go unwind label %bb.gr

bb.go:                                            ; preds = %bb.gn
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %56) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #20
  %i.ve = load ptr, ptr %55, align 8, !tbaa !46   ; 3 uses
  %.not.i.i726 = icmp eq ptr %i.ve, null
  br i1 %.not.i.i726, label %_ZN7testing7MessageD2Ev.exit728, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i727

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i727: ; preds = %bb.go
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !9
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  %i.vh = load ptr, ptr %i.vg, align 8
  call void %i.vh(ptr noundef nonnull align 8 dereferenceable(128) %i.ve) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit728

_ZN7testing7MessageD2Ev.exit728:                  ; preds = %bb.go, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i727
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #20
  br label %bb.gt

bb.gp:                                            ; preds = %bb.gk
  %i.vi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit731

bb.gq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit725
  %i.vj = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

bb.gr:                                            ; preds = %bb.gn
  %i.vk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %56) #20
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %.pn161 = phi { ptr, i32 } [ %i.vk, %bb.gr ], [ %i.vj, %bb.gq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #20
  %i.vl = load ptr, ptr %55, align 8, !tbaa !46   ; 3 uses
  %.not.i.i729 = icmp eq ptr %i.vl, null
  br i1 %.not.i.i729, label %_ZN7testing7MessageD2Ev.exit731, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i730

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i730: ; preds = %bb.gs
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !9
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  %i.vo = load ptr, ptr %i.vn, align 8
  call void %i.vo(ptr noundef nonnull align 8 dereferenceable(128) %i.vl) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit731

_ZN7testing7MessageD2Ev.exit731:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i730, %bb.gs, %bb.gp
  %.pn161.pn = phi { ptr, i32 } [ %i.vi, %bb.gp ], [ %.pn161, %bb.gs ], [ %.pn161, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i730 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %52) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #20
  br label %bb.gv

bb.gt:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit723, %_ZN7testing7MessageD2Ev.exit728
  %i.vp = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !45 ; 4 uses
  %.not.i.i732 = icmp eq ptr %i.vq, null
  br i1 %.not.i.i732, label %_ZN7testing15AssertionResultD2Ev.exit736, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !31 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vq, i64 16 ; 2 uses
  %i.vt = icmp eq ptr %i.vr, %i.vs
  br i1 %i.vt, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i734, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i733

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i733: ; preds = %bb.gu
  %i.vu = load i64, ptr %i.vs, align 8, !tbaa !32
  %i.vv = add i64 %i.vu, 1
  call void @_ZdlPvm(ptr noundef %i.vr, i64 noundef %i.vv) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i734

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i734: ; preds = %bb.gu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i733
  call void @_ZdlPvm(ptr noundef nonnull %i.vq, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit736

_ZN7testing15AssertionResultD2Ev.exit736:         ; preds = %bb.gt, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i734
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #20
  ret void

bb.gv:                                            ; preds = %_ZN7testing7MessageD2Ev.exit731, %_ZN7testing7MessageD2Ev.exit686, %_ZN7testing7MessageD2Ev.exit642, %_ZN7testing7MessageD2Ev.exit597, %_ZN7testing7MessageD2Ev.exit553, %_ZN7testing7MessageD2Ev.exit508, %_ZN7testing7MessageD2Ev.exit464, %_ZN7testing7MessageD2Ev.exit419, %_ZN7testing7MessageD2Ev.exit375, %_ZN7testing7MessageD2Ev.exit330, %_ZN7testing7MessageD2Ev.exit286, %_ZN7testing7MessageD2Ev.exit241, %_ZN7testing7MessageD2Ev.exit197, %_ZN7testing7MessageD2Ev.exit169
  %.pn161.pn.pn = phi { ptr, i32 } [ %.pn161.pn, %_ZN7testing7MessageD2Ev.exit731 ], [ %.pn157.pn.pn, %_ZN7testing7MessageD2Ev.exit686 ], [ %.pn154.pn, %_ZN7testing7MessageD2Ev.exit642 ], [ %.pn150.pn.pn, %_ZN7testing7MessageD2Ev.exit597 ], [ %.pn147.pn, %_ZN7testing7MessageD2Ev.exit553 ], [ %.pn143.pn.pn, %_ZN7testing7MessageD2Ev.exit508 ], [ %.pn140.pn, %_ZN7testing7MessageD2Ev.exit464 ], [ %.pn136.pn.pn, %_ZN7testing7MessageD2Ev.exit419 ], [ %.pn133.pn, %_ZN7testing7MessageD2Ev.exit375 ], [ %.pn129.pn.pn, %_ZN7testing7MessageD2Ev.exit330 ], [ %.pn126.pn, %_ZN7testing7MessageD2Ev.exit286 ], [ %.pn122.pn.pn, %_ZN7testing7MessageD2Ev.exit241 ], [ %.pn119.pn, %_ZN7testing7MessageD2Ev.exit197 ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit169 ]
  resume { ptr, i32 } %.pn161.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detailmiENS3_10civil_timeINS3_7day_tagEEEl(i64 %0, i64 %1, i64 noundef %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = sub nsw i64 0, %2
  %.sroa.22.8.extract.trunc.i = trunc i64 %1 to i8
  %.sroa.5.8.extract.shift.i = lshr i64 %1, 16
  %.sroa.5.8.extract.trunc.i = trunc i64 %.sroa.5.8.extract.shift.i to i8
  %.sroa.6.8.extract.shift.i = lshr i64 %1, 24
  %.sroa.6.8.extract.trunc.i = trunc i64 %.sroa.6.8.extract.shift.i to i8
  %.sroa.7.8.extract.shift.i = lshr i64 %1, 32
  %.sroa.7.8.extract.trunc.i = trunc i64 %.sroa.7.8.extract.shift.i to i8
  %i.b = shl i64 %1, 48
  %i.c = ashr i64 %i.b, 56
  %i.d = tail call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %0, i8 noundef signext %.sroa.22.8.extract.trunc.i, i64 noundef %i.c, i64 noundef %i.a, i8 noundef signext %.sroa.5.8.extract.trunc.i, i8 noundef signext %.sroa.6.8.extract.trunc.i, i8 noundef signext %.sroa.7.8.extract.trunc.i) #20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.22.8.extract.trunc.i34 = trunc i64 %1 to i8
  %.sroa.5.8.extract.shift.i35 = lshr i64 %1, 16
  %.sroa.5.8.extract.trunc.i36 = trunc i64 %.sroa.5.8.extract.shift.i35 to i8
  %.sroa.6.8.extract.shift.i37 = lshr i64 %1, 24
  %.sroa.6.8.extract.trunc.i38 = trunc i64 %.sroa.6.8.extract.shift.i37 to i8
  %.sroa.7.8.extract.shift.i39 = lshr i64 %1, 32
  %.sroa.7.8.extract.trunc.i40 = trunc i64 %.sroa.7.8.extract.shift.i39 to i8
  %i.e = shl i64 %1, 48
  %i.f = ashr i64 %i.e, 56
  %i.g = tail call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %0, i8 noundef signext %.sroa.22.8.extract.trunc.i34, i64 noundef %i.f, i64 noundef 9223372036854775807, i8 noundef signext %.sroa.5.8.extract.trunc.i36, i8 noundef signext %.sroa.6.8.extract.trunc.i38, i8 noundef signext %.sroa.7.8.extract.trunc.i40) #20 ; 2 uses
  %.fca.1.extract.i41 = extractvalue { i64, i64 } %i.g, 1 ; 5 uses
  %.fca.0.extract1 = extractvalue { i64, i64 } %i.g, 0
  %.sroa.22.8.extract.trunc.i44 = trunc i64 %.fca.1.extract.i41 to i8
  %.sroa.5.8.extract.shift.i45 = lshr i64 %.fca.1.extract.i41, 16
  %.sroa.5.8.extract.trunc.i46 = trunc i64 %.sroa.5.8.extract.shift.i45 to i8
  %.sroa.6.8.extract.shift.i47 = lshr i64 %.fca.1.extract.i41, 24
  %.sroa.6.8.extract.trunc.i48 = trunc i64 %.sroa.6.8.extract.shift.i47 to i8
  %.sroa.7.8.extract.shift.i49 = lshr i64 %.fca.1.extract.i41, 32
  %.sroa.7.8.extract.trunc.i50 = trunc i64 %.sroa.7.8.extract.shift.i49 to i8
  %i.h = shl i64 %.fca.1.extract.i41, 48
  %i.i = ashr i64 %i.h, 56
  %i.j = tail call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %.fca.0.extract1, i8 noundef signext %.sroa.22.8.extract.trunc.i44, i64 noundef %i.i, i64 noundef 1, i8 noundef signext %.sroa.5.8.extract.trunc.i46, i8 noundef signext %.sroa.6.8.extract.trunc.i48, i8 noundef signext %.sroa.7.8.extract.trunc.i50) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { i64, i64 } [ %i.j, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %.sroa.3.0.in.in = extractvalue { i64, i64 } %.pn, 1
  %.sroa.3.0.in = and i64 %.sroa.3.0.in.in, 65535
  %.fca.1.insert = insertvalue { i64, i64 } %.pn, i64 %.sroa.3.0.in, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_137CivilTime_DifferenceWithHugeYear_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #22
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_124CivilTime_LeapYears_Test8TestBodyEv:bb.a
  %i.hr = phi ptr [ %i.hq, %bb.bu ], [ @.str.100, %bb.bt ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1169, ptr noundef %i.hr)
          to label %bb.bv unwind label %bb.by

bb.bv:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit176
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bw unwind label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  %i.hs = load ptr, ptr %20, align 8, !tbaa !46   ; 3 uses
  %.not.i.i177 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i177, label %_ZN7testing7MessageD2Ev.exit179, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i178

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i178: ; preds = %bb.bw
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !9
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8
  call void %i.hv(ptr noundef nonnull align 8 dereferenceable(128) %i.hs) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit179

_ZN7testing7MessageD2Ev.exit179:                  ; preds = %bb.bw, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %bb.cb

bb.bx:                                            ; preds = %bb.bs
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit182

bb.by:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit176
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bv
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #20
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.pn54 = phi { ptr, i32 } [ %i.hy, %bb.bz ], [ %i.hx, %bb.by ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  %i.hz = load ptr, ptr %20, align 8, !tbaa !46   ; 3 uses
  %.not.i.i180 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i180, label %_ZN7testing7MessageD2Ev.exit182, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i181

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i181: ; preds = %bb.ca
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !9
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8
  call void %i.ic(ptr noundef nonnull align 8 dereferenceable(128) %i.hz) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit182

_ZN7testing7MessageD2Ev.exit182:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i181, %bb.ca, %bb.bx
  %.pn54.pn = phi { ptr, i32 } [ %i.hw, %bb.bx ], [ %.pn54, %bb.ca ], [ %.pn54, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i181 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %bb.cd

bb.cb:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit179
  %i.id = load ptr, ptr %i.ez, align 8, !tbaa !45 ; 4 uses
  %.not.i.i183 = icmp eq ptr %i.id, null
  br i1 %.not.i.i183, label %_ZN7testing15AssertionResultD2Ev.exit187, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !31 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 16 ; 2 uses
  %i.ig = icmp eq ptr %i.ie, %i.if
  br i1 %i.ig, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i184: ; preds = %bb.cc
  %i.ih = load i64, ptr %i.if, align 8, !tbaa !32
  %i.ii = add i64 %i.ih, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ii) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i184
  call void @_ZdlPvm(ptr noundef nonnull %i.id, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit187

_ZN7testing15AssertionResultD2Ev.exit187:         ; preds = %bb.cb, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 13
  br i1 %exitcond.not, label %bb.an, label %bb.ap, !llvm.loop !1857

bb.cd:                                            ; preds = %_ZN7testing7MessageD2Ev.exit182, %_ZN7testing7MessageD2Ev.exit156, %_ZN7testing7MessageD2Ev.exit142
  %.pn54.pn.pn = phi { ptr, i32 } [ %.pn54.pn, %_ZN7testing7MessageD2Ev.exit182 ], [ %.pn51.pn, %_ZN7testing7MessageD2Ev.exit156 ], [ %.pn48.pn, %_ZN7testing7MessageD2Ev.exit142 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.ce

bb.ce:                                            ; preds = %bb.aa, %bb.cd, %bb.ao, %bb.n
  %.pn54.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.n ], [ %.pn40.pn.pn, %bb.aa ], [ %.pn54.pn.pn, %bb.cd ], [ %.pn44.pn.pn, %bb.ao ]
  resume { ptr, i32 } %.pn54.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_135CivilTime_FirstThursdayInMonth_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_135CivilTime_FirstThursdayInMonth_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_135CivilTime_FirstThursdayInMonth_TestE, i64 16), ptr %i.a, align 8, !tbaa !9
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #22
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_135CivilTime_FirstThursdayInMonth_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_135CivilTime_FirstThursdayInMonth_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = tail call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 2014, i8 noundef signext 11, i64 noundef 1, i64 noundef -1, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.sroa.3.0.in.in.i = extractvalue { i64, i64 } %i.a, 1 ; 4 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 2 uses
  %i.c = srem i64 %i.b, 400
  %i.d = add nsw i64 %i.c, 2400
  %.sroa.4.8.extract.trunc.i.i = trunc i64 %.sroa.3.0.in.in.i to i8 ; 2 uses
  %i.e = icmp slt i8 %.sroa.4.8.extract.trunc.i.i, 3
  %.neg.i.i.i = sext i1 %i.e to i64
  %i.f = add nsw i64 %i.d, %.neg.i.i.i            ; 3 uses
  %i.g = lshr i64 %i.f, 2
  %.lhs.trunc.i.i.i = trunc nuw nsw i64 %i.f to i16 ; 2 uses
  %i.h = udiv i16 %.lhs.trunc.i.i.i, 100
  %.zext.i.i.i = zext nneg i16 %i.h to i64
  %i.i = udiv i16 %.lhs.trunc.i.i.i, 400
  %.zext10.i.i.i = zext nneg i16 %i.i to i64
  %sext.i.i = shl i64 %.sroa.3.0.in.in.i, 56
  %i.j = ashr exact i64 %sext.i.i, 54
  %i.k = getelementptr inbounds i8, ptr @__const._ZN4absl12lts_2026052613time_internal4cctz6detail11get_weekdayERKNS3_10civil_timeINS3_10second_tagEEE.k_weekday_offsets, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !331
  %.sroa.4.9.extract.shift15.i.i = lshr i64 %.sroa.3.0.in.in.i, 8
  %.sroa.4.9.extract.trunc.i.i = trunc i64 %.sroa.4.9.extract.shift15.i.i to i8
  %i.m = sext i8 %.sroa.4.9.extract.trunc.i.i to i32
  %i.n = add nsw i32 %i.l, %i.m
  %i.o = sext i32 %i.n to i64
  %i.p = add nuw nsw i64 %i.g, %i.f
  %i.q = add nsw i64 %i.p, %i.o
  %i.r = sub nsw i64 %i.q, %.zext.i.i.i
  %i.s = add nsw i64 %i.r, %.zext10.i.i.i
  %i.t = srem i64 %i.s, 7
  %i.u = getelementptr [4 x i8], ptr @__const._ZN4absl12lts_2026052613time_internal4cctz6detail11get_weekdayERKNS3_10civil_timeINS3_10second_tagEEE.k_weekday_by_mon_off, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 24
  %i.w = load i32, ptr %i.v, align 4, !tbaa !1858
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN4absl12lts_2026052613time_internal4cctz6detail12next_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.k_weekdays_forw, i64 %indvars.iv.i.i
  %i.y = load i32, ptr %i.x, align 4, !tbaa !1858
  %i.z = icmp eq i32 %i.w, %i.y
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  br i1 %i.z, label %.preheader.i.i, label %bb.b, !llvm.loop !1860

.preheader.i.i:                                   ; preds = %bb.b, %.preheader.i.i
  %indvars.iv17.i.i = phi i64 [ %indvars.iv.next18.i.i, %.preheader.i.i ], [ %indvars.iv.i.i, %bb.b ]
  %indvars.iv.next18.i.i = add nuw nsw i64 %indvars.iv17.i.i, 1 ; 3 uses
  switch i64 %indvars.iv.next18.i.i, label %.preheader.i.i [
    i64 10, label %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit
    i64 3, label %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit
  ]

_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit: ; preds = %.preheader.i.i, %.preheader.i.i
  %i.aa = sub nuw nsw i64 %indvars.iv.next18.i.i, %indvars.iv.i.i
  %.sroa.3.0.in.i = shl i64 %.sroa.3.0.in.in.i, 48
  %i.ab = ashr i64 %.sroa.3.0.in.i, 56
  %i.ac = tail call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %i.b, i8 noundef signext %.sroa.4.8.extract.trunc.i.i, i64 noundef %i.ab, i64 noundef %i.aa, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.fca.1.extract.i.i.i.i = extractvalue { i64, i64 } %i.ac, 1 ; 2 uses
  %.sroa.2.8.insert.insert.i.i.i.i.i = and i64 %.fca.1.extract.i.i.i.i, 65535 ; 2 uses
  %i.ad = extractvalue { i64, i64 } %i.ac, 0      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZN4absl12lts_2026052615FormatCivilTimeB5cxx11ENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, i64 %i.ad, i64 %.sroa.2.8.insert.insert.i.i.i.i.i)
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !22, !noalias !1861
  %i.ag = icmp eq i64 %i.af, 10
  br i1 %i.ag, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i: ; preds = %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit
  %i.ah = load ptr, ptr %2, align 8, !tbaa !31, !noalias !1861 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 1
  %i.aj = xor i64 %i.ai, 3256438075784507442
  %i.ak = getelementptr i8, ptr %i.ah, i64 8
  %i.al = load i16, ptr %i.ak, align 1
  %i.am = zext i16 %i.al to i64
  %i.an = xor i64 %i.am, 13872
  %i.ao = or i64 %i.aj, %i.an
  %i.ap = icmp ne i64 %i.ao, 0
  %i.aq = zext i1 %i.ap to i32
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
          to label %_ZN7testing8internal8EqHelper7CompareIA11_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.c

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i, %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA11_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1, ptr noundef nonnull @.str.763, ptr noundef nonnull @.str.764, ptr noundef nonnull align 1 dereferenceable(11) @.str.765, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN7testing8internal8EqHelper7CompareIA11_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.c

_ZN7testing8internal8EqHelper7CompareIA11_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i
  %i.as = load ptr, ptr %2, align 8, !tbaa !31    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal8EqHelper7CompareIA11_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit
  %i.av = load i64, ptr %i.at, align 8, !tbaa !32
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal8EqHelper7CompareIA11_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.ax = load i8, ptr %1, align 8, !tbaa !33, !range !43, !noundef !44
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.m, label %bb.d

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %2, align 8, !tbaa !31    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.c
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !32
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.o

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !45 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.f, %bb.e
  %i.bi = phi ptr [ %i.bh, %bb.f ], [ @.str.100, %bb.e ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1177, ptr noundef %i.bi)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.bj = load ptr, ptr %3, align 8, !tbaa !46    ; 3 uses
  %.not.i.i33 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i33, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.h
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !9
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(128) %i.bj) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.h, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.m

bb.i:                                             ; preds = %bb.d
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit36

bb.j:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bp, %bb.k ], [ %i.bo, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.bq = load ptr, ptr %3, align 8, !tbaa !46    ; 3 uses
  %.not.i.i34 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i34, label %_ZN7testing7MessageD2Ev.exit36, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35: ; preds = %bb.l
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !9
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(128) %i.bq) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit36

_ZN7testing7MessageD2Ev.exit36:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35, %bb.l, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.bn, %bb.i ], [ %.pn, %bb.l ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #20
  br label %bb.o

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN7testing7MessageD2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !45 ; 4 uses
  %.not.i.i37 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i37, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !31 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.n
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !32
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.m, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %.sroa.22.8.extract.trunc.i.i38 = trunc i64 %.fca.1.extract.i.i.i.i to i8
  %i.cb = shl nuw i64 %.sroa.2.8.insert.insert.i.i.i.i.i, 48
  %i.cc = ashr i64 %i.cb, 56
  %i.cd = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %i.ad, i8 noundef signext %.sroa.22.8.extract.trunc.i.i38, i64 noundef %i.cc, i64 noundef 21, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i64 } %i.cd, 1
  %.sroa.2.8.insert.insert.i.i.i45 = and i64 %.fca.1.extract.i.i, 65535
  %i.ce = extractvalue { i64, i64 } %i.cd, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZN4absl12lts_2026052615FormatCivilTimeB5cxx11ENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, i64 %i.ce, i64 %.sroa.2.8.insert.insert.i.i.i45)
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !22, !noalias !1866
  %i.ch = icmp eq i64 %i.cg, 10
  br i1 %i.ch, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i48, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i47

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i48: ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.ci = load ptr, ptr %6, align 8, !tbaa !31, !noalias !1866 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 1
  %i.ck = xor i64 %i.cj, 3256438075784507442
  %i.cl = getelementptr i8, ptr %i.ci, i64 8
  %i.cm = load i16, ptr %i.cl, align 1
  %i.cn = zext i16 %i.cm to i64
  %i.co = xor i64 %i.cn, 14130
  %i.cp = or i64 %i.ck, %i.co
  %i.cq = icmp ne i64 %i.cp, 0
  %i.cr = zext i1 %i.cq to i32
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i50, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i47
end_hunk_1

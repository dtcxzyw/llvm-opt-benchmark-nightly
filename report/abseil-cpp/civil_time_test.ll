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
  %op.rdx990 = select i1 %i.bt, i1 %i.bl, i1 false
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
  %.not.i.i189 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i189, label %_ZNK7testing15AssertionResult15failure_messageEv.exit190, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit190

_ZNK7testing15AssertionResult15failure_messageEv.exit190: ; preds = %bb.v, %bb.u
  %i.bz = phi ptr [ %i.by, %bb.v ], [ @.str.100, %bb.u ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 928, ptr noundef %i.bz)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit190
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %bb.w
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.ca = load ptr, ptr %7, align 8, !tbaa !46    ; 3 uses
  %.not.i.i191 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i191, label %_ZN7testing7MessageD2Ev.exit193, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192: ; preds = %bb.x
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !9
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(128) %i.ca) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit193

_ZN7testing7MessageD2Ev.exit193:                  ; preds = %bb.x, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.ac

bb.y:                                             ; preds = %bb.t
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit196

bb.z:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit190
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
  %.not.i.i194 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i194, label %_ZN7testing7MessageD2Ev.exit196, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195: ; preds = %bb.ab
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !9
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(128) %i.ch) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit196

_ZN7testing7MessageD2Ev.exit196:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195, %bb.ab, %bb.y
  %.pn119.pn = phi { ptr, i32 } [ %i.ce, %bb.y ], [ %.pn119, %bb.ab ], [ %.pn119, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.gv

bb.ac:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit, %_ZN7testing7MessageD2Ev.exit193
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !45 ; 4 uses
  %.not.i.i197 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i197, label %_ZN7testing15AssertionResultD2Ev.exit201, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !31 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i198: ; preds = %bb.ad
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !32
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i199

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i199: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i198
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef 32) #22
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
  %i.cs = sub nuw nsw i64 %indvars.iv.next18.i.i215, %indvars.iv.i.i210
  %i.ct = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 1970, i8 noundef signext 1, i64 noundef 1, i64 noundef %i.cs, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.fca.1.extract.i.i.i.i217 = extractvalue { i64, i64 } %i.ct, 1 ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i.i.i218 = and i64 %.fca.1.extract.i.i.i.i217, 65535 ; 2 uses
  %i.cu = extractvalue { i64, i64 } %i.ct, 0      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 1, ptr %i.c, align 4, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %.sroa.22.8.extract.trunc.i.i221 = trunc i64 %.fca.1.extract.i.i.i.i217 to i8 ; 2 uses
  %.sroa.43.8.extract.shift.i.i222 = lshr i64 %.fca.1.extract.i.i.i.i217, 8
  %.sroa.43.8.extract.trunc.i.i223 = trunc i64 %.sroa.43.8.extract.shift.i.i222 to i8
  %i.cv = call noundef i64 @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %i.cu, i8 noundef signext %.sroa.22.8.extract.trunc.i.i221, i8 noundef signext %.sroa.43.8.extract.trunc.i.i223, i64 noundef 1970, i8 noundef signext 1, i8 noundef signext 1) #20 ; 2 uses
  store i64 %i.cv, ptr %i.d, align 8, !tbaa !96
  %i.cw = load i32, ptr %i.c, align 4, !tbaa !331, !noalias !1564
  %i.cx = sext i32 %i.cw to i64
  %i.cy = icmp eq i64 %i.cv, %i.cx
  br i1 %i.cy, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit220
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit227

bb.ag:                                            ; preds = %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit220
  call void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.448, ptr noundef nonnull @.str.665, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit227

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit227: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.cz = load i8, ptr %9, align 8, !tbaa !33, !range !43, !noundef !44
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.as, label %bb.ah

bb.ah:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit227
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.db = load ptr, ptr %10, align 8, !tbaa !46
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052613time_internallsERSoNS1_4cctz6detail10civil_timeINS1_7day_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, i64 %i.cu, i64 %.sroa.2.8.insert.insert.i.i.i.i.i218)
          to label %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit231 unwind label %bb.an ; 0 uses

_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit231: ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !45 ; 2 uses
  %.not.i.i232 = icmp eq ptr %i.df, null
  br i1 %.not.i.i232, label %_ZNK7testing15AssertionResult15failure_messageEv.exit233, label %bb.aj

bb.aj:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit231
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit233

_ZNK7testing15AssertionResult15failure_messageEv.exit233: ; preds = %bb.aj, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit231
  %i.dh = phi ptr [ %i.dg, %bb.aj ], [ @.str.100, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit231 ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 932, ptr noundef %i.dh)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit233
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %bb.ak
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.di = load ptr, ptr %10, align 8, !tbaa !46   ; 3 uses
  %.not.i.i234 = icmp eq ptr %i.di, null
  br i1 %.not.i.i234, label %_ZN7testing7MessageD2Ev.exit236, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235: ; preds = %bb.al
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !9
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(128) %i.di) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit236

_ZN7testing7MessageD2Ev.exit236:                  ; preds = %bb.al, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.as

bb.am:                                            ; preds = %bb.ah
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit239

bb.an:                                            ; preds = %bb.ai
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ao:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit233
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
  %.not.i.i237 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i237, label %_ZN7testing7MessageD2Ev.exit239, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i238

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i238: ; preds = %bb.ar
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !9
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(128) %i.dq) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit239

_ZN7testing7MessageD2Ev.exit239:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i238, %bb.ar, %bb.am
  %.pn122.pn.pn = phi { ptr, i32 } [ %i.dm, %bb.am ], [ %.pn122.pn, %bb.ar ], [ %.pn122.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i238 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.gv

bb.as:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit227, %_ZN7testing7MessageD2Ev.exit236
  %i.du = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !45 ; 4 uses
  %.not.i.i240 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i240, label %_ZN7testing15AssertionResultD2Ev.exit244, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !31 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241: ; preds = %bb.at
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !32
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit244

_ZN7testing15AssertionResultD2Ev.exit244:         ; preds = %bb.as, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.eb = shl nuw i64 %.sroa.2.8.insert.insert.i.i.i.i.i218, 48
  %i.ec = ashr i64 %i.eb, 56
  %i.ed = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %i.cu, i8 noundef signext %.sroa.22.8.extract.trunc.i.i221, i64 noundef %i.ec, i64 noundef -7, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.sroa.3.0.in.in.i252 = extractvalue { i64, i64 } %i.ed, 1
  %.sroa.3.0.in.i253 = and i64 %.sroa.3.0.in.in.i252, 65535
  %i.ee = extractvalue { i64, i64 } %i.ed, 0
  store i64 %i.ee, ptr %13, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i64 %.sroa.3.0.in.i253, ptr %i.ef, align 8
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
  %i.eg = sub nuw nsw i64 %indvars.iv.next18.i.i268, %indvars.iv.i.i263
  %i.eh = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detailmiENS3_10civil_timeINS3_7day_tagEEEl(i64 1970, i64 257, i64 noundef %i.eg) #20 ; 2 uses
  %i.ei = extractvalue { i64, i64 } %i.eh, 1      ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i4.i270 = and i64 %i.ei, 65535
  %i.ej = extractvalue { i64, i64 } %i.eh, 0      ; 2 uses
  store i64 %i.ej, ptr %14, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %.sroa.2.8.insert.insert.i.i.i4.i270, ptr %i.ek, align 8
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
  %op.rdx988 = select i1 %i.ez, i1 %i.er, i1 false
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
  %i.fa = load i8, ptr %12, align 8, !tbaa !33, !range !43, !noundef !44
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.bf, label %bb.aw

bb.aw:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit275
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.fc = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !45 ; 2 uses
  %.not.i.i276 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i276, label %_ZNK7testing15AssertionResult15failure_messageEv.exit277, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit277

_ZNK7testing15AssertionResult15failure_messageEv.exit277: ; preds = %bb.ay, %bb.ax
  %i.ff = phi ptr [ %i.fe, %bb.ay ], [ @.str.100, %bb.ax ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 933, ptr noundef %i.ff)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit277
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %bb.az
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %i.fg = load ptr, ptr %15, align 8, !tbaa !46   ; 3 uses
  %.not.i.i278 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i278, label %_ZN7testing7MessageD2Ev.exit280, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i279

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i279: ; preds = %bb.ba
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !9
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(128) %i.fg) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit280

_ZN7testing7MessageD2Ev.exit280:                  ; preds = %bb.ba, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i279
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %bb.bf

bb.bb:                                            ; preds = %bb.aw
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit283

bb.bc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit277
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
  %.not.i.i281 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i281, label %_ZN7testing7MessageD2Ev.exit283, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i282

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i282: ; preds = %bb.be
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !9
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(128) %i.fn) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit283

_ZN7testing7MessageD2Ev.exit283:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i282, %bb.be, %bb.bb
  %.pn126.pn = phi { ptr, i32 } [ %i.fk, %bb.bb ], [ %.pn126, %bb.be ], [ %.pn126, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i282 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.gv

bb.bf:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit275, %_ZN7testing7MessageD2Ev.exit280
  %i.fr = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !45 ; 4 uses
  %.not.i.i284 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i284, label %_ZN7testing15AssertionResultD2Ev.exit288, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !31 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 16 ; 2 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i286, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i285

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i285: ; preds = %bb.bg
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !32
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i286

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i286: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i285
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef 32) #22
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
  %i.fy = sub nuw nsw i64 %indvars.iv.next18.i.i302, %indvars.iv.i.i297
  %i.fz = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 1970, i8 noundef signext 1, i64 noundef 1, i64 noundef %i.fy, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.fca.1.extract.i.i.i.i304 = extractvalue { i64, i64 } %i.fz, 1 ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i.i.i305 = and i64 %.fca.1.extract.i.i.i.i304, 65535 ; 2 uses
  %i.ga = extractvalue { i64, i64 } %i.fz, 0      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store i32 2, ptr %i.e, align 4, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %.sroa.22.8.extract.trunc.i.i308 = trunc i64 %.fca.1.extract.i.i.i.i304 to i8 ; 2 uses
  %.sroa.43.8.extract.shift.i.i309 = lshr i64 %.fca.1.extract.i.i.i.i304, 8
  %.sroa.43.8.extract.trunc.i.i310 = trunc i64 %.sroa.43.8.extract.shift.i.i309 to i8
  %i.gb = call noundef i64 @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %i.ga, i8 noundef signext %.sroa.22.8.extract.trunc.i.i308, i8 noundef signext %.sroa.43.8.extract.trunc.i.i310, i64 noundef 1970, i8 noundef signext 1, i8 noundef signext 1) #20 ; 2 uses
  store i64 %i.gb, ptr %i.f, align 8, !tbaa !96
  %i.gc = load i32, ptr %i.e, align 4, !tbaa !331, !noalias !1574
  %i.gd = sext i32 %i.gc to i64
  %i.ge = icmp eq i64 %i.gb, %i.gd
  br i1 %i.ge, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit307
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %17)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit314

bb.bj:                                            ; preds = %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit307
  call void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %17, ptr noundef nonnull @.str.459, ptr noundef nonnull @.str.665, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit314

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit314: ; preds = %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.gf = load i8, ptr %17, align 8, !tbaa !33, !range !43, !noundef !44
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %bb.bv, label %bb.bk

bb.bk:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit314
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.bl unwind label %bb.bp

bb.bl:                                            ; preds = %bb.bk
  %i.gh = load ptr, ptr %18, align 8, !tbaa !46
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052613time_internallsERSoNS1_4cctz6detail10civil_timeINS1_7day_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.gi, i64 %i.ga, i64 %.sroa.2.8.insert.insert.i.i.i.i.i305)
          to label %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit318 unwind label %bb.bq ; 0 uses

_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit318: ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  %i.gk = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !45 ; 2 uses
  %.not.i.i319 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i319, label %_ZNK7testing15AssertionResult15failure_messageEv.exit320, label %bb.bm

bb.bm:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit318
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit320

_ZNK7testing15AssertionResult15failure_messageEv.exit320: ; preds = %bb.bm, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit318
  %i.gn = phi ptr [ %i.gm, %bb.bm ], [ @.str.100, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit318 ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 937, ptr noundef %i.gn)
          to label %bb.bn unwind label %bb.br

bb.bn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit320
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.bo unwind label %bb.bs

bb.bo:                                            ; preds = %bb.bn
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  %i.go = load ptr, ptr %18, align 8, !tbaa !46   ; 3 uses
  %.not.i.i321 = icmp eq ptr %i.go, null
  br i1 %.not.i.i321, label %_ZN7testing7MessageD2Ev.exit323, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i322

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i322: ; preds = %bb.bo
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !9
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8
  call void %i.gr(ptr noundef nonnull align 8 dereferenceable(128) %i.go) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit323

_ZN7testing7MessageD2Ev.exit323:                  ; preds = %bb.bo, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i322
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %bb.bv

bb.bp:                                            ; preds = %bb.bk
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit326

bb.bq:                                            ; preds = %bb.bl
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.br:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit320
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
  %.not.i.i324 = icmp eq ptr %i.gw, null
  br i1 %.not.i.i324, label %_ZN7testing7MessageD2Ev.exit326, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i325

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i325: ; preds = %bb.bu
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !9
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8
  call void %i.gz(ptr noundef nonnull align 8 dereferenceable(128) %i.gw) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit326

_ZN7testing7MessageD2Ev.exit326:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i325, %bb.bu, %bb.bp
  %.pn129.pn.pn = phi { ptr, i32 } [ %i.gs, %bb.bp ], [ %.pn129.pn, %bb.bu ], [ %.pn129.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i325 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.gv

bb.bv:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit314, %_ZN7testing7MessageD2Ev.exit323
  %i.ha = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !45 ; 4 uses
  %.not.i.i327 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i327, label %_ZN7testing15AssertionResultD2Ev.exit331, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !31 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 16 ; 2 uses
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i329, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i328

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i328: ; preds = %bb.bw
  %i.hf = load i64, ptr %i.hd, align 8, !tbaa !32
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hg) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i329

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i329: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i328
  call void @_ZdlPvm(ptr noundef nonnull %i.hb, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit331

_ZN7testing15AssertionResultD2Ev.exit331:         ; preds = %bb.bv, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i329
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  %i.hh = shl nuw i64 %.sroa.2.8.insert.insert.i.i.i.i.i305, 48
  %i.hi = ashr i64 %i.hh, 56
  %i.hj = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %i.ga, i8 noundef signext %.sroa.22.8.extract.trunc.i.i308, i64 noundef %i.hi, i64 noundef -7, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.sroa.3.0.in.in.i339 = extractvalue { i64, i64 } %i.hj, 1
  %.sroa.3.0.in.i340 = and i64 %.sroa.3.0.in.in.i339, 65535
  %i.hk = extractvalue { i64, i64 } %i.hj, 0
  store i64 %i.hk, ptr %21, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store i64 %.sroa.3.0.in.i340, ptr %i.hl, align 8
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
  %i.hm = add i64 %umin, %indvars.iv796
  %i.hn = sub nuw nsw i64 %i.hm, %indvars.iv.i.i350
  %i.ho = and i64 %i.hn, 4294967295
  %i.hp = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detailmiENS3_10civil_timeINS3_7day_tagEEEl(i64 1970, i64 257, i64 noundef %i.ho) #20 ; 2 uses
  %i.hq = extractvalue { i64, i64 } %i.hp, 1      ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i4.i357 = and i64 %i.hq, 65535
  %i.hr = extractvalue { i64, i64 } %i.hp, 0      ; 2 uses
  store i64 %i.hr, ptr %22, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %.sroa.2.8.insert.insert.i.i.i4.i357, ptr %i.hs, align 8
  %i.ht = load i64, ptr %21, align 8, !tbaa !438, !noalias !1579
  %i.hu = icmp eq i64 %i.ht, %i.hr
  %i.hv = lshr i64 %i.hq, 8
  %i.hw = trunc i64 %i.hv to i8
  %i.hx = trunc i64 %i.hq to i8
  %i.hy = load i8, ptr %i.hl, align 8
  %i.hz = icmp eq i8 %i.hy, %i.hx
  %i.ia = getelementptr inbounds nuw i8, ptr %21, i64 9
  %i.ib = load <4 x i8>, ptr %i.ia, align 1
  %i.ic = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %i.hw, i64 0
  %i.id = icmp eq <4 x i8> %i.ib, %i.ic
  %i.ie = freeze <4 x i1> %i.id
  %i.if = bitcast <4 x i1> %i.ie to i4
  %i.ig = icmp eq i4 %i.if, -1
  %i.ih = and i1 %i.hu, %i.ig
  %op.rdx986 = select i1 %i.ih, i1 %i.hz, i1 false
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
  %i.ii = load i8, ptr %20, align 8, !tbaa !33, !range !43, !noundef !44
  %i.ij = trunc nuw i8 %i.ii to i1
  br i1 %i.ij, label %bb.ci, label %bb.bz

bb.bz:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit362
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.ca unwind label %bb.ce

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  %i.ik = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !45 ; 2 uses
  %.not.i.i363 = icmp eq ptr %i.il, null
  br i1 %.not.i.i363, label %_ZNK7testing15AssertionResult15failure_messageEv.exit364, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit364

_ZNK7testing15AssertionResult15failure_messageEv.exit364: ; preds = %bb.cb, %bb.ca
  %i.in = phi ptr [ %i.im, %bb.cb ], [ @.str.100, %bb.ca ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %24, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 938, ptr noundef %i.in)
          to label %bb.cc unwind label %bb.cf

bb.cc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit364
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.cd unwind label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  %i.io = load ptr, ptr %23, align 8, !tbaa !46   ; 3 uses
  %.not.i.i365 = icmp eq ptr %i.io, null
  br i1 %.not.i.i365, label %_ZN7testing7MessageD2Ev.exit367, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i366

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i366: ; preds = %bb.cd
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !9
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8
  call void %i.ir(ptr noundef nonnull align 8 dereferenceable(128) %i.io) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit367

_ZN7testing7MessageD2Ev.exit367:                  ; preds = %bb.cd, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i366
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  br label %bb.ci

bb.ce:                                            ; preds = %bb.bz
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit370

bb.cf:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit364
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cg:                                            ; preds = %bb.cc
  %i.iu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #20
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.pn133 = phi { ptr, i32 } [ %i.iu, %bb.cg ], [ %i.it, %bb.cf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  %i.iv = load ptr, ptr %23, align 8, !tbaa !46   ; 3 uses
  %.not.i.i368 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i368, label %_ZN7testing7MessageD2Ev.exit370, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i369

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i369: ; preds = %bb.ch
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !9
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8
  call void %i.iy(ptr noundef nonnull align 8 dereferenceable(128) %i.iv) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit370

_ZN7testing7MessageD2Ev.exit370:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i369, %bb.ch, %bb.ce
  %.pn133.pn = phi { ptr, i32 } [ %i.is, %bb.ce ], [ %.pn133, %bb.ch ], [ %.pn133, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i369 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %bb.gv

bb.ci:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit362, %_ZN7testing7MessageD2Ev.exit367
  %i.iz = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !45 ; 4 uses
  %.not.i.i371 = icmp eq ptr %i.ja, null
  br i1 %.not.i.i371, label %_ZN7testing15AssertionResultD2Ev.exit375, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !31 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 16 ; 2 uses
  %i.jd = icmp eq ptr %i.jb, %i.jc
  br i1 %i.jd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i373, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i372

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i372: ; preds = %bb.cj
  %i.je = load i64, ptr %i.jc, align 8, !tbaa !32
  %i.jf = add i64 %i.je, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.jf) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i373

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i373: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i372
  call void @_ZdlPvm(ptr noundef nonnull %i.ja, i64 noundef 32) #22
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
  %i.jg = sub nuw nsw i64 %indvars.iv.next18.i.i389, %indvars.iv.i.i384
  %i.jh = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 1970, i8 noundef signext 1, i64 noundef 1, i64 noundef %i.jg, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.fca.1.extract.i.i.i.i391 = extractvalue { i64, i64 } %i.jh, 1 ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i.i.i392 = and i64 %.fca.1.extract.i.i.i.i391, 65535 ; 2 uses
  %i.ji = extractvalue { i64, i64 } %i.jh, 0      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  store i32 3, ptr %i.g, align 4, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  %.sroa.22.8.extract.trunc.i.i395 = trunc i64 %.fca.1.extract.i.i.i.i391 to i8 ; 2 uses
  %.sroa.43.8.extract.shift.i.i396 = lshr i64 %.fca.1.extract.i.i.i.i391, 8
  %.sroa.43.8.extract.trunc.i.i397 = trunc i64 %.sroa.43.8.extract.shift.i.i396 to i8
  %i.jj = call noundef i64 @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %i.ji, i8 noundef signext %.sroa.22.8.extract.trunc.i.i395, i8 noundef signext %.sroa.43.8.extract.trunc.i.i397, i64 noundef 1970, i8 noundef signext 1, i8 noundef signext 1) #20 ; 2 uses
  store i64 %i.jj, ptr %i.h, align 8, !tbaa !96
  %i.jk = load i32, ptr %i.g, align 4, !tbaa !331, !noalias !1584
  %i.jl = sext i32 %i.jk to i64
  %i.jm = icmp eq i64 %i.jj, %i.jl
  br i1 %i.jm, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit394
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %25)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit401

bb.cm:                                            ; preds = %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit394
  call void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %25, ptr noundef nonnull @.str.461, ptr noundef nonnull @.str.665, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit401

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit401: ; preds = %bb.cl, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  %i.jn = load i8, ptr %25, align 8, !tbaa !33, !range !43, !noundef !44
  %i.jo = trunc nuw i8 %i.jn to i1
  br i1 %i.jo, label %bb.cy, label %bb.cn

bb.cn:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit401
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.co unwind label %bb.cs

bb.co:                                            ; preds = %bb.cn
  %i.jp = load ptr, ptr %26, align 8, !tbaa !46
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.jr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052613time_internallsERSoNS1_4cctz6detail10civil_timeINS1_7day_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.jq, i64 %i.ji, i64 %.sroa.2.8.insert.insert.i.i.i.i.i392)
          to label %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit405 unwind label %bb.ct ; 0 uses

_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit405: ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  %i.js = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !45 ; 2 uses
  %.not.i.i406 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i406, label %_ZNK7testing15AssertionResult15failure_messageEv.exit407, label %bb.cp

bb.cp:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit405
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit407

_ZNK7testing15AssertionResult15failure_messageEv.exit407: ; preds = %bb.cp, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit405
  %i.jv = phi ptr [ %i.ju, %bb.cp ], [ @.str.100, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit405 ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %27, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 942, ptr noundef %i.jv)
          to label %bb.cq unwind label %bb.cu

bb.cq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit407
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.cr unwind label %bb.cv

bb.cr:                                            ; preds = %bb.cq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  %i.jw = load ptr, ptr %26, align 8, !tbaa !46   ; 3 uses
  %.not.i.i408 = icmp eq ptr %i.jw, null
  br i1 %.not.i.i408, label %_ZN7testing7MessageD2Ev.exit410, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i409

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i409: ; preds = %bb.cr
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !9
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(128) %i.jw) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit410

_ZN7testing7MessageD2Ev.exit410:                  ; preds = %bb.cr, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i409
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  br label %bb.cy

bb.cs:                                            ; preds = %bb.cn
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit413

bb.ct:                                            ; preds = %bb.co
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.cu:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit407
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cv:                                            ; preds = %bb.cq
  %i.kd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #20
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.pn136 = phi { ptr, i32 } [ %i.kd, %bb.cv ], [ %i.kc, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.ct
  %.pn136.pn = phi { ptr, i32 } [ %.pn136, %bb.cw ], [ %i.kb, %bb.ct ] ; 2 uses
  %i.ke = load ptr, ptr %26, align 8, !tbaa !46   ; 3 uses
  %.not.i.i411 = icmp eq ptr %i.ke, null
  br i1 %.not.i.i411, label %_ZN7testing7MessageD2Ev.exit413, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i412

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i412: ; preds = %bb.cx
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !9
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kh = load ptr, ptr %i.kg, align 8
  call void %i.kh(ptr noundef nonnull align 8 dereferenceable(128) %i.ke) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit413

_ZN7testing7MessageD2Ev.exit413:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i412, %bb.cx, %bb.cs
  %.pn136.pn.pn = phi { ptr, i32 } [ %i.ka, %bb.cs ], [ %.pn136.pn, %bb.cx ], [ %.pn136.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i412 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  br label %bb.gv

bb.cy:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit401, %_ZN7testing7MessageD2Ev.exit410
  %i.ki = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !45 ; 4 uses
  %.not.i.i414 = icmp eq ptr %i.kj, null
  br i1 %.not.i.i414, label %_ZN7testing15AssertionResultD2Ev.exit418, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !31 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 16 ; 2 uses
  %i.km = icmp eq ptr %i.kk, %i.kl
  br i1 %i.km, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i416, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i415

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i415: ; preds = %bb.cz
  %i.kn = load i64, ptr %i.kl, align 8, !tbaa !32
  %i.ko = add i64 %i.kn, 1
  call void @_ZdlPvm(ptr noundef %i.kk, i64 noundef %i.ko) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i416

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i416: ; preds = %bb.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i415
  call void @_ZdlPvm(ptr noundef nonnull %i.kj, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit418

_ZN7testing15AssertionResultD2Ev.exit418:         ; preds = %bb.cy, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i416
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  %i.kp = shl nuw i64 %.sroa.2.8.insert.insert.i.i.i.i.i392, 48
  %i.kq = ashr i64 %i.kp, 56
  %i.kr = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %i.ji, i8 noundef signext %.sroa.22.8.extract.trunc.i.i395, i64 noundef %i.kq, i64 noundef -7, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.sroa.3.0.in.in.i426 = extractvalue { i64, i64 } %i.kr, 1
  %.sroa.3.0.in.i427 = and i64 %.sroa.3.0.in.in.i426, 65535
  %i.ks = extractvalue { i64, i64 } %i.kr, 0
  store i64 %i.ks, ptr %29, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  store i64 %.sroa.3.0.in.i427, ptr %i.kt, align 8
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
  %i.ku = sub nuw nsw i64 7, %indvars.iv.i.i437
  %i.kv = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detailmiENS3_10civil_timeINS3_7day_tagEEEl(i64 1970, i64 257, i64 noundef %i.ku) #20 ; 2 uses
  %i.kw = extractvalue { i64, i64 } %i.kv, 1      ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i4.i444 = and i64 %i.kw, 65535
  %i.kx = extractvalue { i64, i64 } %i.kv, 0      ; 2 uses
  store i64 %i.kx, ptr %30, align 8
  %i.ky = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 %.sroa.2.8.insert.insert.i.i.i4.i444, ptr %i.ky, align 8
  %i.kz = load i64, ptr %29, align 8, !tbaa !438, !noalias !1589
  %i.la = icmp eq i64 %i.kz, %i.kx
  %i.lb = lshr i64 %i.kw, 8
  %i.lc = trunc i64 %i.lb to i8
  %i.ld = trunc i64 %i.kw to i8
  %i.le = load i8, ptr %i.kt, align 8
  %i.lf = icmp eq i8 %i.le, %i.ld
  %i.lg = getelementptr inbounds nuw i8, ptr %29, i64 9
  %i.lh = load <4 x i8>, ptr %i.lg, align 1
  %i.li = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %i.lc, i64 0
  %i.lj = icmp eq <4 x i8> %i.lh, %i.li
  %i.lk = freeze <4 x i1> %i.lj
  %i.ll = bitcast <4 x i1> %i.lk to i4
  %i.lm = icmp eq i4 %i.ll, -1
  %i.ln = and i1 %i.la, %i.lm
  %op.rdx984 = select i1 %i.ln, i1 %i.lf, i1 false
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
  %i.lo = load i8, ptr %28, align 8, !tbaa !33, !range !43, !noundef !44
  %i.lp = trunc nuw i8 %i.lo to i1
  br i1 %i.lp, label %bb.dl, label %bb.dc

bb.dc:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit449
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.dd unwind label %bb.dh

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #20
  %i.lq = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !45 ; 2 uses
  %.not.i.i450 = icmp eq ptr %i.lr, null
  br i1 %.not.i.i450, label %_ZNK7testing15AssertionResult15failure_messageEv.exit451, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit451

_ZNK7testing15AssertionResult15failure_messageEv.exit451: ; preds = %bb.de, %bb.dd
  %i.lt = phi ptr [ %i.ls, %bb.de ], [ @.str.100, %bb.dd ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %32, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 943, ptr noundef %i.lt)
          to label %bb.df unwind label %bb.di

bb.df:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit451
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.dg unwind label %bb.dj

bb.dg:                                            ; preds = %bb.df
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  %i.lu = load ptr, ptr %31, align 8, !tbaa !46   ; 3 uses
  %.not.i.i452 = icmp eq ptr %i.lu, null
  br i1 %.not.i.i452, label %_ZN7testing7MessageD2Ev.exit454, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i453

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i453: ; preds = %bb.dg
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !9
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.lx = load ptr, ptr %i.lw, align 8
  call void %i.lx(ptr noundef nonnull align 8 dereferenceable(128) %i.lu) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit454

_ZN7testing7MessageD2Ev.exit454:                  ; preds = %bb.dg, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i453
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  br label %bb.dl

bb.dh:                                            ; preds = %bb.dc
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit457

bb.di:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit451
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.dj:                                            ; preds = %bb.df
  %i.ma = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #20
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.pn140 = phi { ptr, i32 } [ %i.ma, %bb.dj ], [ %i.lz, %bb.di ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  %i.mb = load ptr, ptr %31, align 8, !tbaa !46   ; 3 uses
  %.not.i.i455 = icmp eq ptr %i.mb, null
  br i1 %.not.i.i455, label %_ZN7testing7MessageD2Ev.exit457, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i456

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i456: ; preds = %bb.dk
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !9
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.me = load ptr, ptr %i.md, align 8
  call void %i.me(ptr noundef nonnull align 8 dereferenceable(128) %i.mb) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit457

_ZN7testing7MessageD2Ev.exit457:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i456, %bb.dk, %bb.dh
  %.pn140.pn = phi { ptr, i32 } [ %i.ly, %bb.dh ], [ %.pn140, %bb.dk ], [ %.pn140, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i456 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %28) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  br label %bb.gv

bb.dl:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit449, %_ZN7testing7MessageD2Ev.exit454
  %i.mf = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !45 ; 4 uses
  %.not.i.i458 = icmp eq ptr %i.mg, null
  br i1 %.not.i.i458, label %_ZN7testing15AssertionResultD2Ev.exit462, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !31 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mg, i64 16 ; 2 uses
  %i.mj = icmp eq ptr %i.mh, %i.mi
  br i1 %i.mj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i460, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i459

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i459: ; preds = %bb.dm
  %i.mk = load i64, ptr %i.mi, align 8, !tbaa !32
  %i.ml = add i64 %i.mk, 1
  call void @_ZdlPvm(ptr noundef %i.mh, i64 noundef %i.ml) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i460

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i460: ; preds = %bb.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i459
  call void @_ZdlPvm(ptr noundef nonnull %i.mg, i64 noundef 32) #22
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
  %i.mm = sub nuw nsw i64 7, %indvars.iv.i.i471
  %i.mn = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 1970, i8 noundef signext 1, i64 noundef 1, i64 noundef %i.mm, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.fca.1.extract.i.i.i.i478 = extractvalue { i64, i64 } %i.mn, 1 ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i.i.i479 = and i64 %.fca.1.extract.i.i.i.i478, 65535 ; 2 uses
  %i.mo = extractvalue { i64, i64 } %i.mn, 0      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  store i32 4, ptr %i.i, align 4, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  %.sroa.22.8.extract.trunc.i.i482 = trunc i64 %.fca.1.extract.i.i.i.i478 to i8 ; 2 uses
  %.sroa.43.8.extract.shift.i.i483 = lshr i64 %.fca.1.extract.i.i.i.i478, 8
  %.sroa.43.8.extract.trunc.i.i484 = trunc i64 %.sroa.43.8.extract.shift.i.i483 to i8
  %i.mp = call noundef i64 @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %i.mo, i8 noundef signext %.sroa.22.8.extract.trunc.i.i482, i8 noundef signext %.sroa.43.8.extract.trunc.i.i484, i64 noundef 1970, i8 noundef signext 1, i8 noundef signext 1) #20 ; 2 uses
  store i64 %i.mp, ptr %i.j, align 8, !tbaa !96
  %i.mq = load i32, ptr %i.i, align 4, !tbaa !331, !noalias !1594
  %i.mr = sext i32 %i.mq to i64
  %i.ms = icmp eq i64 %i.mp, %i.mr
  br i1 %i.ms, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %.preheader.i.i474.preheader
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %33)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit488

bb.dp:                                            ; preds = %.preheader.i.i474.preheader
  call void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %33, ptr noundef nonnull @.str.463, ptr noundef nonnull @.str.665, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit488

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit488: ; preds = %bb.do, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  %i.mt = load i8, ptr %33, align 8, !tbaa !33, !range !43, !noundef !44
  %i.mu = trunc nuw i8 %i.mt to i1
  br i1 %i.mu, label %bb.eb, label %bb.dq

bb.dq:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit488
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %bb.dr unwind label %bb.dv

bb.dr:                                            ; preds = %bb.dq
  %i.mv = load ptr, ptr %34, align 8, !tbaa !46
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %i.mx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052613time_internallsERSoNS1_4cctz6detail10civil_timeINS1_7day_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.mw, i64 %i.mo, i64 %.sroa.2.8.insert.insert.i.i.i.i.i479)
          to label %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit492 unwind label %bb.dw ; 0 uses

_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit492: ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #20
  %i.my = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !45 ; 2 uses
  %.not.i.i493 = icmp eq ptr %i.mz, null
  br i1 %.not.i.i493, label %_ZNK7testing15AssertionResult15failure_messageEv.exit494, label %bb.ds

bb.ds:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit492
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit494

_ZNK7testing15AssertionResult15failure_messageEv.exit494: ; preds = %bb.ds, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit492
  %i.nb = phi ptr [ %i.na, %bb.ds ], [ @.str.100, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit492 ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %35, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 947, ptr noundef %i.nb)
          to label %bb.dt unwind label %bb.dx

bb.dt:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit494
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %bb.du unwind label %bb.dy

bb.du:                                            ; preds = %bb.dt
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20
  %i.nc = load ptr, ptr %34, align 8, !tbaa !46   ; 3 uses
  %.not.i.i495 = icmp eq ptr %i.nc, null
  br i1 %.not.i.i495, label %_ZN7testing7MessageD2Ev.exit497, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i496

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i496: ; preds = %bb.du
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !9
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8
  call void %i.nf(ptr noundef nonnull align 8 dereferenceable(128) %i.nc) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit497

_ZN7testing7MessageD2Ev.exit497:                  ; preds = %bb.du, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i496
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #20
  br label %bb.eb

bb.dv:                                            ; preds = %bb.dq
  %i.ng = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit500

bb.dw:                                            ; preds = %bb.dr
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.dx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit494
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dt
  %i.nj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #20
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %.pn143 = phi { ptr, i32 } [ %i.nj, %bb.dy ], [ %i.ni, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dw
  %.pn143.pn = phi { ptr, i32 } [ %.pn143, %bb.dz ], [ %i.nh, %bb.dw ] ; 2 uses
  %i.nk = load ptr, ptr %34, align 8, !tbaa !46   ; 3 uses
  %.not.i.i498 = icmp eq ptr %i.nk, null
  br i1 %.not.i.i498, label %_ZN7testing7MessageD2Ev.exit500, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i499

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i499: ; preds = %bb.ea
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !9
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %i.nn = load ptr, ptr %i.nm, align 8
  call void %i.nn(ptr noundef nonnull align 8 dereferenceable(128) %i.nk) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit500

_ZN7testing7MessageD2Ev.exit500:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i499, %bb.ea, %bb.dv
  %.pn143.pn.pn = phi { ptr, i32 } [ %i.ng, %bb.dv ], [ %.pn143.pn, %bb.ea ], [ %.pn143.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i499 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  br label %bb.gv

bb.eb:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit488, %_ZN7testing7MessageD2Ev.exit497
  %i.no = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !45 ; 4 uses
  %.not.i.i501 = icmp eq ptr %i.np, null
  br i1 %.not.i.i501, label %_ZN7testing15AssertionResultD2Ev.exit505, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !31 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.np, i64 16 ; 2 uses
  %i.ns = icmp eq ptr %i.nq, %i.nr
  br i1 %i.ns, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i503, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i502

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i502: ; preds = %bb.ec
  %i.nt = load i64, ptr %i.nr, align 8, !tbaa !32
  %i.nu = add i64 %i.nt, 1
  call void @_ZdlPvm(ptr noundef %i.nq, i64 noundef %i.nu) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i503

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i503: ; preds = %bb.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i502
  call void @_ZdlPvm(ptr noundef nonnull %i.np, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit505

_ZN7testing15AssertionResultD2Ev.exit505:         ; preds = %bb.eb, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i503
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #20
  %i.nv = shl nuw i64 %.sroa.2.8.insert.insert.i.i.i.i.i479, 48
  %i.nw = ashr i64 %i.nv, 56
  %i.nx = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %i.mo, i8 noundef signext %.sroa.22.8.extract.trunc.i.i482, i64 noundef %i.nw, i64 noundef -7, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.sroa.3.0.in.in.i513 = extractvalue { i64, i64 } %i.nx, 1
  %.sroa.3.0.in.i514 = and i64 %.sroa.3.0.in.in.i513, 65535
  %i.ny = extractvalue { i64, i64 } %i.nx, 0
  store i64 %i.ny, ptr %37, align 8
  %i.nz = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  store i64 %.sroa.3.0.in.i514, ptr %i.nz, align 8
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
  %i.oa = sub nuw nsw i64 %indvars.iv.next18.i.i529, %indvars.iv.i.i524
  %i.ob = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detailmiENS3_10civil_timeINS3_7day_tagEEEl(i64 1970, i64 257, i64 noundef %i.oa) #20 ; 2 uses
  %i.oc = extractvalue { i64, i64 } %i.ob, 1      ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i4.i531 = and i64 %i.oc, 65535
  %i.od = extractvalue { i64, i64 } %i.ob, 0      ; 2 uses
  store i64 %i.od, ptr %38, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 %.sroa.2.8.insert.insert.i.i.i4.i531, ptr %i.oe, align 8
  %i.of = load i64, ptr %37, align 8, !tbaa !438, !noalias !1599
  %i.og = icmp eq i64 %i.of, %i.od
  %i.oh = lshr i64 %i.oc, 8
  %i.oi = trunc i64 %i.oh to i8
  %i.oj = trunc i64 %i.oc to i8
  %i.ok = load i8, ptr %i.nz, align 8
  %i.ol = icmp eq i8 %i.ok, %i.oj
  %i.om = getelementptr inbounds nuw i8, ptr %37, i64 9
  %i.on = load <4 x i8>, ptr %i.om, align 1
  %i.oo = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %i.oi, i64 0
  %i.op = icmp eq <4 x i8> %i.on, %i.oo
  %i.oq = freeze <4 x i1> %i.op
  %i.or = bitcast <4 x i1> %i.oq to i4
  %i.os = icmp eq i4 %i.or, -1
  %i.ot = and i1 %i.og, %i.os
  %op.rdx982 = select i1 %i.ot, i1 %i.ol, i1 false
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
  %i.ou = load i8, ptr %36, align 8, !tbaa !33, !range !43, !noundef !44
  %i.ov = trunc nuw i8 %i.ou to i1
  br i1 %i.ov, label %bb.eo, label %bb.ef

bb.ef:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit536
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.eg unwind label %bb.ek

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #20
  %i.ow = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !45 ; 2 uses
  %.not.i.i537 = icmp eq ptr %i.ox, null
  br i1 %.not.i.i537, label %_ZNK7testing15AssertionResult15failure_messageEv.exit538, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit538

_ZNK7testing15AssertionResult15failure_messageEv.exit538: ; preds = %bb.eh, %bb.eg
  %i.oz = phi ptr [ %i.oy, %bb.eh ], [ @.str.100, %bb.eg ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %40, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 948, ptr noundef %i.oz)
          to label %bb.ei unwind label %bb.el

bb.ei:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit538
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.ej unwind label %bb.em

bb.ej:                                            ; preds = %bb.ei
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #20
  %i.pa = load ptr, ptr %39, align 8, !tbaa !46   ; 3 uses
  %.not.i.i539 = icmp eq ptr %i.pa, null
  br i1 %.not.i.i539, label %_ZN7testing7MessageD2Ev.exit541, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i540

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i540: ; preds = %bb.ej
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !9
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %i.pd = load ptr, ptr %i.pc, align 8
  call void %i.pd(ptr noundef nonnull align 8 dereferenceable(128) %i.pa) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit541

_ZN7testing7MessageD2Ev.exit541:                  ; preds = %bb.ej, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i540
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20
  br label %bb.eo

bb.ek:                                            ; preds = %bb.ef
  %i.pe = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit544

bb.el:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit538
  %i.pf = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.em:                                            ; preds = %bb.ei
  %i.pg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #20
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %.pn147 = phi { ptr, i32 } [ %i.pg, %bb.em ], [ %i.pf, %bb.el ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #20
  %i.ph = load ptr, ptr %39, align 8, !tbaa !46   ; 3 uses
  %.not.i.i542 = icmp eq ptr %i.ph, null
  br i1 %.not.i.i542, label %_ZN7testing7MessageD2Ev.exit544, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i543

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i543: ; preds = %bb.en
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !9
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  %i.pk = load ptr, ptr %i.pj, align 8
  call void %i.pk(ptr noundef nonnull align 8 dereferenceable(128) %i.ph) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit544

_ZN7testing7MessageD2Ev.exit544:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i543, %bb.en, %bb.ek
  %.pn147.pn = phi { ptr, i32 } [ %i.pe, %bb.ek ], [ %.pn147, %bb.en ], [ %.pn147, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i543 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %36) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  br label %bb.gv

bb.eo:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit536, %_ZN7testing7MessageD2Ev.exit541
  %i.pl = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !45 ; 4 uses
  %.not.i.i545 = icmp eq ptr %i.pm, null
  br i1 %.not.i.i545, label %_ZN7testing15AssertionResultD2Ev.exit549, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !31 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pm, i64 16 ; 2 uses
  %i.pp = icmp eq ptr %i.pn, %i.po
  br i1 %i.pp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i547, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i546

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i546: ; preds = %bb.ep
  %i.pq = load i64, ptr %i.po, align 8, !tbaa !32
  %i.pr = add i64 %i.pq, 1
  call void @_ZdlPvm(ptr noundef %i.pn, i64 noundef %i.pr) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i547

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i547: ; preds = %bb.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i546
  call void @_ZdlPvm(ptr noundef nonnull %i.pm, i64 noundef 32) #22
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
  %i.ps = add i64 %umin802, %indvars.iv803
  %i.pt = sub nuw nsw i64 %i.ps, %indvars.iv.i.i558
  %i.pu = and i64 %i.pt, 4294967295
  %i.pv = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 1970, i8 noundef signext 1, i64 noundef 1, i64 noundef %i.pu, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.fca.1.extract.i.i.i.i565 = extractvalue { i64, i64 } %i.pv, 1 ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i.i.i566 = and i64 %.fca.1.extract.i.i.i.i565, 65535 ; 2 uses
  %i.pw = extractvalue { i64, i64 } %i.pv, 0      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #20
  store i32 5, ptr %i.k, align 4, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #20
  %.sroa.22.8.extract.trunc.i.i569 = trunc i64 %.fca.1.extract.i.i.i.i565 to i8 ; 2 uses
  %.sroa.43.8.extract.shift.i.i570 = lshr i64 %.fca.1.extract.i.i.i.i565, 8
  %.sroa.43.8.extract.trunc.i.i571 = trunc i64 %.sroa.43.8.extract.shift.i.i570 to i8
  %i.px = call noundef i64 @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %i.pw, i8 noundef signext %.sroa.22.8.extract.trunc.i.i569, i8 noundef signext %.sroa.43.8.extract.trunc.i.i571, i64 noundef 1970, i8 noundef signext 1, i8 noundef signext 1) #20 ; 2 uses
  store i64 %i.px, ptr %i.l, align 8, !tbaa !96
  %i.py = load i32, ptr %i.k, align 4, !tbaa !331, !noalias !1604
  %i.pz = sext i32 %i.py to i64
  %i.qa = icmp eq i64 %i.px, %i.pz
  br i1 %i.qa, label %bb.er, label %bb.es

bb.er:                                            ; preds = %.preheader.i.i561.preheader
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %41)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit575

bb.es:                                            ; preds = %.preheader.i.i561.preheader
  call void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %41, ptr noundef nonnull @.str.465, ptr noundef nonnull @.str.665, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit575

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit575: ; preds = %bb.er, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #20
  %i.qb = load i8, ptr %41, align 8, !tbaa !33, !range !43, !noundef !44
  %i.qc = trunc nuw i8 %i.qb to i1
  br i1 %i.qc, label %bb.fe, label %bb.et

bb.et:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit575
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %42)
          to label %bb.eu unwind label %bb.ey

bb.eu:                                            ; preds = %bb.et
  %i.qd = load ptr, ptr %42, align 8, !tbaa !46
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  %i.qf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052613time_internallsERSoNS1_4cctz6detail10civil_timeINS1_7day_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.qe, i64 %i.pw, i64 %.sroa.2.8.insert.insert.i.i.i.i.i566)
          to label %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit579 unwind label %bb.ez ; 0 uses

_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit579: ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #20
  %i.qg = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !45 ; 2 uses
  %.not.i.i580 = icmp eq ptr %i.qh, null
  br i1 %.not.i.i580, label %_ZNK7testing15AssertionResult15failure_messageEv.exit581, label %bb.ev

bb.ev:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit579
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit581

_ZNK7testing15AssertionResult15failure_messageEv.exit581: ; preds = %bb.ev, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit579
  %i.qj = phi ptr [ %i.qi, %bb.ev ], [ @.str.100, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit579 ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %43, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 952, ptr noundef %i.qj)
          to label %bb.ew unwind label %bb.fa

bb.ew:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit581
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef nonnull align 8 dereferenceable(8) %42)
          to label %bb.ex unwind label %bb.fb

bb.ex:                                            ; preds = %bb.ew
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %43) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #20
  %i.qk = load ptr, ptr %42, align 8, !tbaa !46   ; 3 uses
  %.not.i.i582 = icmp eq ptr %i.qk, null
  br i1 %.not.i.i582, label %_ZN7testing7MessageD2Ev.exit584, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i583

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i583: ; preds = %bb.ex
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !9
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  %i.qn = load ptr, ptr %i.qm, align 8
  call void %i.qn(ptr noundef nonnull align 8 dereferenceable(128) %i.qk) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit584

_ZN7testing7MessageD2Ev.exit584:                  ; preds = %bb.ex, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i583
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #20
  br label %bb.fe

bb.ey:                                            ; preds = %bb.et
  %i.qo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit587

bb.ez:                                            ; preds = %bb.eu
  %i.qp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.fa:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit581
  %i.qq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.fb:                                            ; preds = %bb.ew
  %i.qr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %43) #20
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %.pn150 = phi { ptr, i32 } [ %i.qr, %bb.fb ], [ %i.qq, %bb.fa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #20
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.ez
  %.pn150.pn = phi { ptr, i32 } [ %.pn150, %bb.fc ], [ %i.qp, %bb.ez ] ; 2 uses
  %i.qs = load ptr, ptr %42, align 8, !tbaa !46   ; 3 uses
  %.not.i.i585 = icmp eq ptr %i.qs, null
  br i1 %.not.i.i585, label %_ZN7testing7MessageD2Ev.exit587, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i586

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i586: ; preds = %bb.fd
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !9
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  %i.qv = load ptr, ptr %i.qu, align 8
  call void %i.qv(ptr noundef nonnull align 8 dereferenceable(128) %i.qs) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit587

_ZN7testing7MessageD2Ev.exit587:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i586, %bb.fd, %bb.ey
  %.pn150.pn.pn = phi { ptr, i32 } [ %i.qo, %bb.ey ], [ %.pn150.pn, %bb.fd ], [ %.pn150.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i586 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %41) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #20
  br label %bb.gv

bb.fe:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit575, %_ZN7testing7MessageD2Ev.exit584
  %i.qw = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !45 ; 4 uses
  %.not.i.i588 = icmp eq ptr %i.qx, null
  br i1 %.not.i.i588, label %_ZN7testing15AssertionResultD2Ev.exit592, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !31 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qx, i64 16 ; 2 uses
  %i.ra = icmp eq ptr %i.qy, %i.qz
  br i1 %i.ra, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i590, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i589

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i589: ; preds = %bb.ff
  %i.rb = load i64, ptr %i.qz, align 8, !tbaa !32
  %i.rc = add i64 %i.rb, 1
  call void @_ZdlPvm(ptr noundef %i.qy, i64 noundef %i.rc) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i590

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i590: ; preds = %bb.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i589
  call void @_ZdlPvm(ptr noundef nonnull %i.qx, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit592

_ZN7testing15AssertionResultD2Ev.exit592:         ; preds = %bb.fe, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i590
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #20
  %i.rd = shl nuw i64 %.sroa.2.8.insert.insert.i.i.i.i.i566, 48
  %i.re = ashr i64 %i.rd, 56
  %i.rf = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %i.pw, i8 noundef signext %.sroa.22.8.extract.trunc.i.i569, i64 noundef %i.re, i64 noundef -7, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.sroa.3.0.in.in.i600 = extractvalue { i64, i64 } %i.rf, 1
  %.sroa.3.0.in.i601 = and i64 %.sroa.3.0.in.in.i600, 65535
  %i.rg = extractvalue { i64, i64 } %i.rf, 0
  store i64 %i.rg, ptr %45, align 8
  %i.rh = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  store i64 %.sroa.3.0.in.i601, ptr %i.rh, align 8
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
  %i.ri = sub nuw nsw i64 %indvars.iv.next18.i.i616, %indvars.iv.i.i611
  %i.rj = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detailmiENS3_10civil_timeINS3_7day_tagEEEl(i64 1970, i64 257, i64 noundef %i.ri) #20 ; 2 uses
  %i.rk = extractvalue { i64, i64 } %i.rj, 1      ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i4.i618 = and i64 %i.rk, 65535
  %i.rl = extractvalue { i64, i64 } %i.rj, 0      ; 2 uses
  store i64 %i.rl, ptr %46, align 8
  %i.rm = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i64 %.sroa.2.8.insert.insert.i.i.i4.i618, ptr %i.rm, align 8
  %i.rn = load i64, ptr %45, align 8, !tbaa !438, !noalias !1609
  %i.ro = icmp eq i64 %i.rn, %i.rl
  %i.rp = lshr i64 %i.rk, 8
  %i.rq = trunc i64 %i.rp to i8
  %i.rr = trunc i64 %i.rk to i8
  %i.rs = load i8, ptr %i.rh, align 8
  %i.rt = icmp eq i8 %i.rs, %i.rr
  %i.ru = getelementptr inbounds nuw i8, ptr %45, i64 9
  %i.rv = load <4 x i8>, ptr %i.ru, align 1
  %i.rw = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %i.rq, i64 0
  %i.rx = icmp eq <4 x i8> %i.rv, %i.rw
  %i.ry = freeze <4 x i1> %i.rx
  %i.rz = bitcast <4 x i1> %i.ry to i4
  %i.sa = icmp eq i4 %i.rz, -1
  %i.sb = and i1 %i.ro, %i.sa
  %op.rdx980 = select i1 %i.sb, i1 %i.rt, i1 false
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
  %i.sc = load i8, ptr %44, align 8, !tbaa !33, !range !43, !noundef !44
  %i.sd = trunc nuw i8 %i.sc to i1
  br i1 %i.sd, label %bb.fr, label %bb.fi

bb.fi:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit623
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %bb.fj unwind label %bb.fn

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #20
  %i.se = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !45 ; 2 uses
  %.not.i.i624 = icmp eq ptr %i.sf, null
  br i1 %.not.i.i624, label %_ZNK7testing15AssertionResult15failure_messageEv.exit625, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit625

_ZNK7testing15AssertionResult15failure_messageEv.exit625: ; preds = %bb.fk, %bb.fj
  %i.sh = phi ptr [ %i.sg, %bb.fk ], [ @.str.100, %bb.fj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %48, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 953, ptr noundef %i.sh)
          to label %bb.fl unwind label %bb.fo

bb.fl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit625
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %bb.fm unwind label %bb.fp

bb.fm:                                            ; preds = %bb.fl
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %48) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #20
  %i.si = load ptr, ptr %47, align 8, !tbaa !46   ; 3 uses
  %.not.i.i626 = icmp eq ptr %i.si, null
  br i1 %.not.i.i626, label %_ZN7testing7MessageD2Ev.exit628, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i627

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i627: ; preds = %bb.fm
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !9
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.sl = load ptr, ptr %i.sk, align 8
  call void %i.sl(ptr noundef nonnull align 8 dereferenceable(128) %i.si) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit628

_ZN7testing7MessageD2Ev.exit628:                  ; preds = %bb.fm, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i627
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #20
  br label %bb.fr

bb.fn:                                            ; preds = %bb.fi
  %i.sm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit631

bb.fo:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit625
  %i.sn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq

bb.fp:                                            ; preds = %bb.fl
  %i.so = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %48) #20
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %.pn154 = phi { ptr, i32 } [ %i.so, %bb.fp ], [ %i.sn, %bb.fo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #20
  %i.sp = load ptr, ptr %47, align 8, !tbaa !46   ; 3 uses
  %.not.i.i629 = icmp eq ptr %i.sp, null
  br i1 %.not.i.i629, label %_ZN7testing7MessageD2Ev.exit631, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i630

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i630: ; preds = %bb.fq
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !9
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  %i.ss = load ptr, ptr %i.sr, align 8
  call void %i.ss(ptr noundef nonnull align 8 dereferenceable(128) %i.sp) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit631

_ZN7testing7MessageD2Ev.exit631:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i630, %bb.fq, %bb.fn
  %.pn154.pn = phi { ptr, i32 } [ %i.sm, %bb.fn ], [ %.pn154, %bb.fq ], [ %.pn154, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i630 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %44) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #20
  br label %bb.gv

bb.fr:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit623, %_ZN7testing7MessageD2Ev.exit628
  %i.st = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !45 ; 4 uses
  %.not.i.i632 = icmp eq ptr %i.su, null
  br i1 %.not.i.i632, label %_ZN7testing15AssertionResultD2Ev.exit636, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !31 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 16 ; 2 uses
  %i.sx = icmp eq ptr %i.sv, %i.sw
  br i1 %i.sx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i634, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i633

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i633: ; preds = %bb.fs
  %i.sy = load i64, ptr %i.sw, align 8, !tbaa !32
  %i.sz = add i64 %i.sy, 1
  call void @_ZdlPvm(ptr noundef %i.sv, i64 noundef %i.sz) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i634

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i634: ; preds = %bb.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i633
  call void @_ZdlPvm(ptr noundef nonnull %i.su, i64 noundef 32) #22
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
  %i.ta = sub nuw nsw i64 %indvars.iv.next18.i.i650, %indvars.iv.i.i645
  %i.tb = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 1970, i8 noundef signext 1, i64 noundef 1, i64 noundef %i.ta, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.fca.1.extract.i.i.i.i652 = extractvalue { i64, i64 } %i.tb, 1 ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i.i.i653 = and i64 %.fca.1.extract.i.i.i.i652, 65535 ; 2 uses
  %i.tc = extractvalue { i64, i64 } %i.tb, 0      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #20
  store i32 6, ptr %i.m, align 4, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #20
  %.sroa.22.8.extract.trunc.i.i656 = trunc i64 %.fca.1.extract.i.i.i.i652 to i8 ; 2 uses
  %.sroa.43.8.extract.shift.i.i657 = lshr i64 %.fca.1.extract.i.i.i.i652, 8
  %.sroa.43.8.extract.trunc.i.i658 = trunc i64 %.sroa.43.8.extract.shift.i.i657 to i8
  %i.td = call noundef i64 @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %i.tc, i8 noundef signext %.sroa.22.8.extract.trunc.i.i656, i8 noundef signext %.sroa.43.8.extract.trunc.i.i658, i64 noundef 1970, i8 noundef signext 1, i8 noundef signext 1) #20 ; 2 uses
  store i64 %i.td, ptr %i.n, align 8, !tbaa !96
  %i.te = load i32, ptr %i.m, align 4, !tbaa !331, !noalias !1614
  %i.tf = sext i32 %i.te to i64
  %i.tg = icmp eq i64 %i.td, %i.tf
  br i1 %i.tg, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit655
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %49)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit662

bb.fv:                                            ; preds = %_ZN4absl12lts_2026052611NextWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit655
  call void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %49, ptr noundef nonnull @.str.467, ptr noundef nonnull @.str.665, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  br label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit662

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit662: ; preds = %bb.fu, %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #20
  %i.th = load i8, ptr %49, align 8, !tbaa !33, !range !43, !noundef !44
  %i.ti = trunc nuw i8 %i.th to i1
  br i1 %i.ti, label %bb.gh, label %bb.fw

bb.fw:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit662
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %50)
          to label %bb.fx unwind label %bb.gb

bb.fx:                                            ; preds = %bb.fw
  %i.tj = load ptr, ptr %50, align 8, !tbaa !46
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 16
  %i.tl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052613time_internallsERSoNS1_4cctz6detail10civil_timeINS1_7day_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.tk, i64 %i.tc, i64 %.sroa.2.8.insert.insert.i.i.i.i.i653)
          to label %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit666 unwind label %bb.gc ; 0 uses

_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit666: ; preds = %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #20
  %i.tm = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !45 ; 2 uses
  %.not.i.i667 = icmp eq ptr %i.tn, null
  br i1 %.not.i.i667, label %_ZNK7testing15AssertionResult15failure_messageEv.exit668, label %bb.fy

bb.fy:                                            ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit666
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit668

_ZNK7testing15AssertionResult15failure_messageEv.exit668: ; preds = %bb.fy, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit666
  %i.tp = phi ptr [ %i.to, %bb.fy ], [ @.str.100, %_ZN7testing7MessagelsIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEEEERS0_RKT_.exit666 ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %51, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 957, ptr noundef %i.tp)
          to label %bb.fz unwind label %bb.gd

bb.fz:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit668
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %51, ptr noundef nonnull align 8 dereferenceable(8) %50)
          to label %bb.ga unwind label %bb.ge

bb.ga:                                            ; preds = %bb.fz
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %51) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #20
  %i.tq = load ptr, ptr %50, align 8, !tbaa !46   ; 3 uses
  %.not.i.i669 = icmp eq ptr %i.tq, null
  br i1 %.not.i.i669, label %_ZN7testing7MessageD2Ev.exit671, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i670

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i670: ; preds = %bb.ga
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !9
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  %i.tt = load ptr, ptr %i.ts, align 8
  call void %i.tt(ptr noundef nonnull align 8 dereferenceable(128) %i.tq) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit671

_ZN7testing7MessageD2Ev.exit671:                  ; preds = %bb.ga, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i670
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #20
  br label %bb.gh

bb.gb:                                            ; preds = %bb.fw
  %i.tu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit674

bb.gc:                                            ; preds = %bb.fx
  %i.tv = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.gd:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit668
  %i.tw = landingpad { ptr, i32 }
          cleanup
  br label %bb.gf

bb.ge:                                            ; preds = %bb.fz
  %i.tx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %51) #20
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %.pn157 = phi { ptr, i32 } [ %i.tx, %bb.ge ], [ %i.tw, %bb.gd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #20
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.gc
  %.pn157.pn = phi { ptr, i32 } [ %.pn157, %bb.gf ], [ %i.tv, %bb.gc ] ; 2 uses
  %i.ty = load ptr, ptr %50, align 8, !tbaa !46   ; 3 uses
  %.not.i.i672 = icmp eq ptr %i.ty, null
  br i1 %.not.i.i672, label %_ZN7testing7MessageD2Ev.exit674, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i673

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i673: ; preds = %bb.gg
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !9
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  %i.ub = load ptr, ptr %i.ua, align 8
  call void %i.ub(ptr noundef nonnull align 8 dereferenceable(128) %i.ty) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit674

_ZN7testing7MessageD2Ev.exit674:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i673, %bb.gg, %bb.gb
  %.pn157.pn.pn = phi { ptr, i32 } [ %i.tu, %bb.gb ], [ %.pn157.pn, %bb.gg ], [ %.pn157.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i673 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %49) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #20
  br label %bb.gv

bb.gh:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit662, %_ZN7testing7MessageD2Ev.exit671
  %i.uc = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !45 ; 4 uses
  %.not.i.i675 = icmp eq ptr %i.ud, null
  br i1 %.not.i.i675, label %_ZN7testing15AssertionResultD2Ev.exit679, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !31 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ud, i64 16 ; 2 uses
  %i.ug = icmp eq ptr %i.ue, %i.uf
  br i1 %i.ug, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i677, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i676

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i676: ; preds = %bb.gi
  %i.uh = load i64, ptr %i.uf, align 8, !tbaa !32
  %i.ui = add i64 %i.uh, 1
  call void @_ZdlPvm(ptr noundef %i.ue, i64 noundef %i.ui) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i677

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i677: ; preds = %bb.gi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i676
  call void @_ZdlPvm(ptr noundef nonnull %i.ud, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit679

_ZN7testing15AssertionResultD2Ev.exit679:         ; preds = %bb.gh, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i677
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #20
  %i.uj = shl nuw i64 %.sroa.2.8.insert.insert.i.i.i.i.i653, 48
  %i.uk = ashr i64 %i.uj, 56
  %i.ul = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %i.tc, i8 noundef signext %.sroa.22.8.extract.trunc.i.i656, i64 noundef %i.uk, i64 noundef -7, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.sroa.3.0.in.in.i687 = extractvalue { i64, i64 } %i.ul, 1 ; 3 uses
  %.sroa.3.0.in.i688 = and i64 %.sroa.3.0.in.in.i687, 65535
  %i.um = extractvalue { i64, i64 } %i.ul, 0      ; 2 uses
  store i64 %i.um, ptr %53, align 8
  %i.un = getelementptr inbounds nuw i8, ptr %53, i64 8
  store i64 %.sroa.3.0.in.i688, ptr %i.un, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #20
  %i.uo = trunc i64 %.sroa.3.0.in.in.i687 to i8
  %i.up = lshr i64 %.sroa.3.0.in.in.i687, 8
  %i.uq = trunc i64 %i.up to i8
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gj, %_ZN7testing15AssertionResultD2Ev.exit679
  %indvars.iv.i.i698 = phi i64 [ %indvars.iv.next.i.i699, %bb.gj ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit679 ] ; 4 uses
  %indvars.iv.next.i.i699 = add nuw nsw i64 %indvars.iv.i.i698, 1
  switch i64 %indvars.iv.i.i698, label %bb.gj [
    i64 10, label %.preheader.i.i701.preheader
    i64 3, label %.preheader.i.i701.preheader
  ]

.preheader.i.i701.preheader:                      ; preds = %bb.gj, %bb.gj
  br label %.preheader.i.i701

.preheader.i.i701:                                ; preds = %.preheader.i.i701.preheader, %.preheader.i.i701
  %indvars.iv17.i.i702 = phi i64 [ %indvars.iv.next18.i.i703, %.preheader.i.i701 ], [ %indvars.iv.i.i698, %.preheader.i.i701.preheader ]
  %indvars.iv.next18.i.i703 = add nuw nsw i64 %indvars.iv17.i.i702, 1 ; 3 uses
  switch i64 %indvars.iv.next18.i.i703, label %.preheader.i.i701 [
    i64 11, label %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit707
    i64 4, label %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit707
  ]

_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit707: ; preds = %.preheader.i.i701, %.preheader.i.i701
  %i.ur = sub nuw nsw i64 %indvars.iv.next18.i.i703, %indvars.iv.i.i698
  %i.us = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detailmiENS3_10civil_timeINS3_7day_tagEEEl(i64 1970, i64 257, i64 noundef %i.ur) #20 ; 2 uses
  %i.ut = extractvalue { i64, i64 } %i.us, 1      ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i4.i705 = and i64 %i.ut, 65535
  %i.uu = extractvalue { i64, i64 } %i.us, 0      ; 2 uses
  store i64 %i.uu, ptr %54, align 8
  %i.uv = getelementptr inbounds nuw i8, ptr %54, i64 8
  store i64 %.sroa.2.8.insert.insert.i.i.i4.i705, ptr %i.uv, align 8
  %i.uw = icmp eq i64 %i.um, %i.uu
  %i.ux = lshr i64 %i.ut, 8
  %i.uy = trunc i64 %i.ux to i8
  %i.uz = trunc i64 %i.ut to i8
  %i.va = icmp eq i8 %i.uo, %i.uz
  %or.cond978 = select i1 %i.uw, i1 %i.va, i1 false
  %i.vb = icmp eq i8 %i.uq, %i.uy
  %or.cond979 = select i1 %or.cond978, i1 %i.vb, i1 false
  br i1 %or.cond979, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.i.i709, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i708

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.i.i709: ; preds = %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit707
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %52)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit710

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i708: ; preds = %_ZN4absl12lts_2026052611PrevWeekdayENS0_13time_internal4cctz6detail10civil_timeINS1_7day_tagEEENS3_7weekdayE.exit707
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %52, ptr noundef nonnull @.str.668, ptr noundef nonnull @.str.674, ptr noundef nonnull align 8 dereferenceable(16) %53, ptr noundef nonnull align 8 dereferenceable(16) %54)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit710

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit710: ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.i.i709, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i708
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #20
  %i.vc = load i8, ptr %52, align 8, !tbaa !33, !range !43, !noundef !44
  %i.vd = trunc nuw i8 %i.vc to i1
  br i1 %i.vd, label %bb.gt, label %bb.gk

bb.gk:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit710
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %55)
          to label %bb.gl unwind label %bb.gp

bb.gl:                                            ; preds = %bb.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #20
  %i.ve = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !45 ; 2 uses
  %.not.i.i711 = icmp eq ptr %i.vf, null
  br i1 %.not.i.i711, label %_ZNK7testing15AssertionResult15failure_messageEv.exit712, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit712

_ZNK7testing15AssertionResult15failure_messageEv.exit712: ; preds = %bb.gm, %bb.gl
  %i.vh = phi ptr [ %i.vg, %bb.gm ], [ @.str.100, %bb.gl ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %56, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 958, ptr noundef %i.vh)
          to label %bb.gn unwind label %bb.gq

bb.gn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit712
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef nonnull align 8 dereferenceable(8) %55)
          to label %bb.go unwind label %bb.gr

bb.go:                                            ; preds = %bb.gn
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %56) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #20
  %i.vi = load ptr, ptr %55, align 8, !tbaa !46   ; 3 uses
  %.not.i.i713 = icmp eq ptr %i.vi, null
  br i1 %.not.i.i713, label %_ZN7testing7MessageD2Ev.exit715, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i714

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i714: ; preds = %bb.go
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !9
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 8
  %i.vl = load ptr, ptr %i.vk, align 8
  call void %i.vl(ptr noundef nonnull align 8 dereferenceable(128) %i.vi) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit715

_ZN7testing7MessageD2Ev.exit715:                  ; preds = %bb.go, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i714
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #20
  br label %bb.gt

bb.gp:                                            ; preds = %bb.gk
  %i.vm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit718

bb.gq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit712
  %i.vn = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

bb.gr:                                            ; preds = %bb.gn
  %i.vo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %56) #20
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %.pn161 = phi { ptr, i32 } [ %i.vo, %bb.gr ], [ %i.vn, %bb.gq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #20
  %i.vp = load ptr, ptr %55, align 8, !tbaa !46   ; 3 uses
  %.not.i.i716 = icmp eq ptr %i.vp, null
  br i1 %.not.i.i716, label %_ZN7testing7MessageD2Ev.exit718, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i717

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i717: ; preds = %bb.gs
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !9
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 8
  %i.vs = load ptr, ptr %i.vr, align 8
  call void %i.vs(ptr noundef nonnull align 8 dereferenceable(128) %i.vp) #20, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit718

_ZN7testing7MessageD2Ev.exit718:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i717, %bb.gs, %bb.gp
  %.pn161.pn = phi { ptr, i32 } [ %i.vm, %bb.gp ], [ %.pn161, %bb.gs ], [ %.pn161, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i717 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %52) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #20
  br label %bb.gv

bb.gt:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit710, %_ZN7testing7MessageD2Ev.exit715
  %i.vt = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !45 ; 4 uses
  %.not.i.i719 = icmp eq ptr %i.vu, null
  br i1 %.not.i.i719, label %_ZN7testing15AssertionResultD2Ev.exit723, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !31 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vu, i64 16 ; 2 uses
  %i.vx = icmp eq ptr %i.vv, %i.vw
  br i1 %i.vx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i721, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i720

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i720: ; preds = %bb.gu
  %i.vy = load i64, ptr %i.vw, align 8, !tbaa !32
  %i.vz = add i64 %i.vy, 1
  call void @_ZdlPvm(ptr noundef %i.vv, i64 noundef %i.vz) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i721

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i721: ; preds = %bb.gu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i720
  call void @_ZdlPvm(ptr noundef nonnull %i.vu, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit723

_ZN7testing15AssertionResultD2Ev.exit723:         ; preds = %bb.gt, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i721
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #20
  ret void

bb.gv:                                            ; preds = %_ZN7testing7MessageD2Ev.exit718, %_ZN7testing7MessageD2Ev.exit674, %_ZN7testing7MessageD2Ev.exit631, %_ZN7testing7MessageD2Ev.exit587, %_ZN7testing7MessageD2Ev.exit544, %_ZN7testing7MessageD2Ev.exit500, %_ZN7testing7MessageD2Ev.exit457, %_ZN7testing7MessageD2Ev.exit413, %_ZN7testing7MessageD2Ev.exit370, %_ZN7testing7MessageD2Ev.exit326, %_ZN7testing7MessageD2Ev.exit283, %_ZN7testing7MessageD2Ev.exit239, %_ZN7testing7MessageD2Ev.exit196, %_ZN7testing7MessageD2Ev.exit169
  %.pn161.pn.pn = phi { ptr, i32 } [ %.pn161.pn, %_ZN7testing7MessageD2Ev.exit718 ], [ %.pn157.pn.pn, %_ZN7testing7MessageD2Ev.exit674 ], [ %.pn154.pn, %_ZN7testing7MessageD2Ev.exit631 ], [ %.pn150.pn.pn, %_ZN7testing7MessageD2Ev.exit587 ], [ %.pn147.pn, %_ZN7testing7MessageD2Ev.exit544 ], [ %.pn143.pn.pn, %_ZN7testing7MessageD2Ev.exit500 ], [ %.pn140.pn, %_ZN7testing7MessageD2Ev.exit457 ], [ %.pn136.pn.pn, %_ZN7testing7MessageD2Ev.exit413 ], [ %.pn133.pn, %_ZN7testing7MessageD2Ev.exit370 ], [ %.pn129.pn.pn, %_ZN7testing7MessageD2Ev.exit326 ], [ %.pn126.pn, %_ZN7testing7MessageD2Ev.exit283 ], [ %.pn122.pn.pn, %_ZN7testing7MessageD2Ev.exit239 ], [ %.pn119.pn, %_ZN7testing7MessageD2Ev.exit196 ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit169 ]
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
  ret void
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

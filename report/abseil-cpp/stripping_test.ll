Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/stripping_test?download=true
inline.NumInlined: 1569
inline.NumDeleted: 596
begin_hunk_0_@_ZN12_GLOBAL__N_129StrippingTest_CheckStrOp_Test8TestBodyEv:bb.a
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %bb.df
  %i.iy = load i64, ptr %i.iw, align 8, !tbaa !26
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef %i.iz) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147, %bb.g
  %.pn63.pn.pn = phi { ptr, i32 } [ %i.k, %bb.g ], [ %.pn63.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147 ], [ %.pn63.pn, %bb.df ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.ja = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.jc = icmp eq ptr %i.ja, %i.jb
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %i.jd = load i64, ptr %i.jb, align 8, !tbaa !26
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.je) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150, %bb.f
  %.pn63.pn.pn.pn = phi { ptr, i32 } [ %i.j, %bb.f ], [ %.pn63.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150 ], [ %.pn63.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.jf = load ptr, ptr %1, align 8, !tbaa !25    ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.jh = icmp eq ptr %i.jf, %i.jg
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152
  %i.ji = load i64, ptr %i.jg, align 8, !tbaa !26
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.jj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  resume { ptr, i32 } %.pn63.pn.pn.pn
}

declare noundef ptr @_ZN4absl12lts_2026052612log_internal19CheckstrcmptrueImplEPKcS3_S3_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_126StrippingTest_CheckOk_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_126StrippingTest_CheckOk_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #34 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_126StrippingTest_CheckOk_TestE, i64 16), ptr %i.a, align 8, !tbaa !19
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #33
  resume { ptr, i32 } %i.b
}

; Function Attrs: nounwind
declare void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_126StrippingTest_CheckOk_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_126StrippingTest_CheckOk_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %3 = alloca %"class.absl::lts_20260526::Status", align 8 ; 10 uses
  %4 = alloca %"class.absl::lts_20260526::Status", align 8 ; 7 uses
  %5 = alloca %"class.absl::lts_20260526::log_internal::LogMessageFatal", align 8 ; 7 uses
  %6 = alloca %"class.std::unique_ptr.27", align 8 ; 14 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %8 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.35", align 1 ; 4 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %12 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.36", align 8 ; 9 uses
  %13 = alloca %"class.testing::Matcher", align 8 ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.36", align 8 ; 9 uses
  %18 = alloca %"class.testing::Matcher", align 8 ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @_ZN4absl12lts_2026052612Base64EscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, i64 24, ptr nonnull @.str.94)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  invoke void @_ZN4absl12lts_2026052612Base64EscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, i64 21, ptr nonnull @.str.95)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store volatile i8 0, ptr %i.b, align 1, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store i64 1, ptr %3, align 8, !tbaa !116, !alias.scope !366
  %.0..0..0..0. = load volatile i8, ptr %i.b, align 1, !tbaa !114, !range !37, !noundef !38
  %i.e = trunc nuw i8 %.0..0..0..0. to i1
  br i1 %i.e, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.f = load volatile i8, ptr @_ZL10kReallyDie, align 1, !tbaa !114, !range !37, !noundef !38 ; 0 uses
  br label %bb.p

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  invoke void @_ZN4absl12lts_2026052615status_internal13MakeErrorImplILi3EEENS0_6StatusESt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::Status") align 8 %4, i64 29, ptr nonnull @.str.96, i64 483, ptr nonnull @.str.2)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.g = load i64, ptr %4, align 8, !tbaa !116, !alias.scope !367 ; 4 uses
  %i.h = icmp ne i64 %i.g, 1
  call void @llvm.assume(i1 %i.h)
  %i.i = load i64, ptr %3, align 8, !tbaa !116    ; 3 uses
  %.not.i = icmp eq i64 %i.g, %i.i
  br i1 %.not.i, label %_ZN4absl12lts_202605266StatusaSEOS1_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.g, ptr %3, align 8, !tbaa !116
  store i64 55, ptr %4, align 8, !tbaa !116
  %i.j = trunc i64 %i.i to i1
  br i1 %i.j, label %_ZN4absl12lts_202605266StatusaSEOS1_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = inttoptr i64 %i.i to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.k)
          to label %._ZN4absl12lts_202605266StatusaSEOS1_.exit_crit_edge unwind label %bb.g

._ZN4absl12lts_202605266StatusaSEOS1_.exit_crit_edge: ; preds = %bb.f
  %.pre = load i64, ptr %4, align 8, !tbaa !116
  br label %_ZN4absl12lts_202605266StatusaSEOS1_.exit

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #32
  unreachable

_ZN4absl12lts_202605266StatusaSEOS1_.exit:        ; preds = %._ZN4absl12lts_202605266StatusaSEOS1_.exit_crit_edge, %bb.d
  %i.n = phi i64 [ %.pre, %._ZN4absl12lts_202605266StatusaSEOS1_.exit_crit_edge ], [ %i.g, %bb.d ] ; 2 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %_ZN4absl12lts_202605266StatusaSEOS1_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_202605266StatusaSEOS1_.exit
  %i.p = inttoptr i64 %i.n to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.p)
          to label %_ZN4absl12lts_202605266StatusaSEOS1_.exit.thread unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #32
  unreachable

bb.j:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

bb.k:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.cn

_ZN4absl12lts_202605266StatusaSEOS1_.exit.thread: ; preds = %bb.e, %bb.h, %_ZN4absl12lts_202605266StatusaSEOS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %.pre120 = load i64, ptr %3, align 8
  %i.u = icmp ne i64 %.pre120, 1
  %i.v = load volatile i8, ptr @_ZL10kReallyDie, align 1, !tbaa !114, !range !37, !noundef !38
  %i.w = trunc nuw i8 %i.v to i1
  %or.cond.not = select i1 %i.w, i1 %i.u, i1 false
  br i1 %or.cond.not, label %bb.l, label %bb.p, !prof !368

bb.l:                                             ; preds = %_ZN4absl12lts_202605266StatusaSEOS1_.exit.thread
  %i.x = call noundef ptr @_ZN4absl12lts_2026052615status_internal19MakeCheckFailStringEPKNS0_6StatusEPKc(ptr noundef nonnull %3, ptr noundef nonnull @.str.97) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  invoke void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.2, i32 noundef 486, ptr noundef %i.x) #36
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 28, ptr nonnull @.str.98)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi29EEERS2_RAT__Kc.exit unwind label %bb.o

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi29EEERS2_RAT__Kc.exit: ; preds = %bb.m
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.o

_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi29EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #32
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.cn

bb.o:                                             ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi29EEERS2_RAT__Kc.exit, %bb.m
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #32
  unreachable

bb.p:                                             ; preds = %.thread, %_ZN4absl12lts_202605266StatusaSEOS1_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  invoke fastcc void @_ZN12_GLOBAL__N_113StrippingTest18OpenTestExecutableEv(ptr dead_on_unwind noalias writable align 8 %6)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS_18PolymorphicMatcherINS0_14NotNullMatcherEEEEclISt10unique_ptrI8_IO_FILESt8functionIFvPS8_EEEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull @.str.25, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.aa = load i8, ptr %7, align 8, !tbaa !36, !range !37, !noundef !38
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %.critedge, label %bb.u

bb.s:                                             ; preds = %bb.p
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.t:                                             ; preds = %bb.q
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.ao

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !39 ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.w, %bb.v
  %i.ah = phi ptr [ %i.ag, %bb.w ], [ @.str.49, %bb.v ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 491, ptr noundef %i.ah)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  %i.ai = load ptr, ptr %9, align 8, !tbaa !41    ; 3 uses
  %.not.i.i50 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i50, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.y
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(128) %i.ai) #31, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.y, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !39 ; 4 uses
  %.not.i.i51 = icmp eq ptr %i.am, null
  br i1 %.not.i.i51, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !25 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.z
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !26
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 32) #33
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.ca

bb.aa:                                            ; preds = %bb.u
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit54

bb.ab:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %bb.x
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #31
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.au, %bb.ac ], [ %i.at, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  %i.av = load ptr, ptr %9, align 8, !tbaa !41    ; 3 uses
  %.not.i.i52 = icmp eq ptr %i.av, null
  br i1 %.not.i.i52, label %_ZN7testing7MessageD2Ev.exit54, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i53

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i53: ; preds = %bb.ad
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !19
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(128) %i.av) #31, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit54

_ZN7testing7MessageD2Ev.exit54:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i53, %bb.ad, %bb.aa
  %.pn.pn = phi { ptr, i32 } [ %i.as, %bb.aa ], [ %.pn, %bb.ad ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i53 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #31
  br label %bb.ao

.critedge:                                        ; preds = %bb.r
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !39 ; 4 uses
  %.not.i.i55 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i55, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.critedge
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !25 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i56: ; preds = %bb.ae
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !26
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i57

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i57: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i56
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 32) #33
  br label %bb.af

bb.af:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i57, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  %i.bg = load ptr, ptr %1, align 8, !tbaa !25
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !51
  invoke fastcc void @_ZN12_GLOBAL__N_113StrippingTest13FileHasSubstrESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable align 8 %13, i64 %i.bi, ptr %i.bg)
          to label %bb.ag unwind label %bb.ap

bb.ag:                                            ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !369)
  %i.bj = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !45, !noalias !369
  %i.bl = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !26, !noalias !369
  store ptr null, ptr %i.bj, align 8, !tbaa !45, !noalias !369
  %i.bn = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store ptr %i.bk, ptr %i.bn, align 8, !tbaa !45, !alias.scope !369
  %i.bo = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !26, !alias.scope !369
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIP8_IO_FILEEE, i64 16), ptr %12, align 8, !tbaa !19, !alias.scope !369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !47
  store ptr %i.bq, ptr %i.c, align 8, !tbaa !47
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEEclIS4_EENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull @.str.26, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.ah unwind label %bb.aq

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIP8_IO_FILEEE, i64 16), ptr %12, align 8, !tbaa !19
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i, label %_ZN7testing8internal29PredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIP8_IO_FILEE8IsSharedEv.exit.i.i.i

_ZNK7testing8internal11MatcherBaseIP8_IO_FILEE8IsSharedEv.exit.i.i.i: ; preds = %bb.ah
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !49
  %.not.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal29PredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIP8_IO_FILEE8IsSharedEv.exit.i.i.i
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !26
  %i.bv = atomicrmw sub ptr %i.bu, i32 1 acq_rel, align 4
  %i.bw = icmp eq i32 %i.bv, 1
  br i1 %i.bw, label %bb.aj, label %_ZN7testing8internal29PredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEED2Ev.exit

bb.aj:                                            ; preds = %bb.ai
  %i.bx = load ptr, ptr %i.bn, align 8, !tbaa !45
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !49
  %i.ca = load ptr, ptr %i.bo, align 8, !tbaa !26
  invoke void %i.bz(ptr noundef %i.ca)
          to label %_ZN7testing8internal29PredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEED2Ev.exit unwind label %bb.ak, !inline_history !1

bb.ak:                                            ; preds = %bb.aj
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #32, !inline_history !50
  unreachable

_ZN7testing8internal29PredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEED2Ev.exit: ; preds = %bb.ah, %_ZNK7testing8internal11MatcherBaseIP8_IO_FILEE8IsSharedEv.exit.i.i.i, %bb.ai, %bb.aj
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIP8_IO_FILEEE, i64 16), ptr %13, align 8, !tbaa !19
  %i.cd = load ptr, ptr %i.bj, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i60 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i60, label %_ZN7testing8internal11MatcherBaseIP8_IO_FILEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIP8_IO_FILEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIP8_IO_FILEE8IsSharedEv.exit.i.i: ; preds = %_ZN7testing8internal29PredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEED2Ev.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !49
  %.not.i.i61 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i61, label %_ZN7testing8internal11MatcherBaseIP8_IO_FILEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIP8_IO_FILEE8IsSharedEv.exit.i.i
  %i.cg = load ptr, ptr %i.bl, align 8, !tbaa !26
  %i.ch = atomicrmw sub ptr %i.cg, i32 1 acq_rel, align 4
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %bb.am, label %_ZN7testing8internal11MatcherBaseIP8_IO_FILEED2Ev.exit

bb.am:                                            ; preds = %bb.al
  %i.cj = load ptr, ptr %i.bj, align 8, !tbaa !45
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !49
  %i.cm = load ptr, ptr %i.bl, align 8, !tbaa !26
  invoke void %i.cl(ptr noundef %i.cm)
          to label %_ZN7testing8internal11MatcherBaseIP8_IO_FILEED2Ev.exit unwind label %bb.an, !inline_history !1

bb.an:                                            ; preds = %bb.am
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #32, !inline_history !50
  unreachable

_ZN7testing8internal11MatcherBaseIP8_IO_FILEED2Ev.exit: ; preds = %_ZN7testing8internal29PredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEED2Ev.exit, %_ZNK7testing8internal11MatcherBaseIP8_IO_FILEE8IsSharedEv.exit.i.i, %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  %i.cp = load i8, ptr %11, align 8, !tbaa !36, !range !37, !noundef !38
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.bb, label %bb.as

bb.ao:                                            ; preds = %_ZN7testing7MessageD2Ev.exit54, %bb.t
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit54 ], [ %i.ad, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.cl

bb.ap:                                            ; preds = %bb.af
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ag
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @_ZN7testing8internal29PredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #31
  call void @_ZN7testing8internal11MatcherBaseIP8_IO_FILEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #31
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn30.pn = phi { ptr, i32 } [ %i.cs, %bb.aq ], [ %i.cr, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %bb.bl

bb.as:                                            ; preds = %_ZN7testing8internal11MatcherBaseIP8_IO_FILEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.at unwind label %bb.ax

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !39 ; 2 uses
  %.not.i.i62 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i62, label %_ZNK7testing15AssertionResult15failure_messageEv.exit63, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit63

_ZNK7testing15AssertionResult15failure_messageEv.exit63: ; preds = %bb.au, %bb.at
  %i.cw = phi ptr [ %i.cv, %bb.au ], [ @.str.49, %bb.at ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 494, ptr noundef %i.cw)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit63
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.aw unwind label %bb.az

bb.aw:                                            ; preds = %bb.av
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  %i.cx = load ptr, ptr %14, align 8, !tbaa !41   ; 3 uses
  %.not.i.i64 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i64, label %_ZN7testing7MessageD2Ev.exit66, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65: ; preds = %bb.aw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !19
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(128) %i.cx) #31, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit66

_ZN7testing7MessageD2Ev.exit66:                   ; preds = %bb.aw, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  br label %bb.bb

bb.ax:                                            ; preds = %bb.as
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit69

bb.ay:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit63
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.az:                                            ; preds = %bb.av
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #31
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.pn33 = phi { ptr, i32 } [ %i.dd, %bb.az ], [ %i.dc, %bb.ay ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  %i.de = load ptr, ptr %14, align 8, !tbaa !41   ; 3 uses
  %.not.i.i67 = icmp eq ptr %i.de, null
  br i1 %.not.i.i67, label %_ZN7testing7MessageD2Ev.exit69, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i68

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i68: ; preds = %bb.ba
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !19
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(128) %i.de) #31, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit69

_ZN7testing7MessageD2Ev.exit69:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i68, %bb.ba, %bb.ax
  %.pn33.pn = phi { ptr, i32 } [ %i.db, %bb.ax ], [ %.pn33, %bb.ba ], [ %.pn33, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i68 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #31
  br label %bb.bl

bb.bb:                                            ; preds = %_ZN7testing8internal11MatcherBaseIP8_IO_FILEED2Ev.exit, %_ZN7testing7MessageD2Ev.exit66
  %i.di = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !39 ; 4 uses
  %.not.i.i70 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i70, label %_ZN7testing15AssertionResultD2Ev.exit74, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !25 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i71: ; preds = %bb.bc
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !26
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i72

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i72: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i71
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef 32) #33
  br label %_ZN7testing15AssertionResultD2Ev.exit74

_ZN7testing15AssertionResultD2Ev.exit74:          ; preds = %bb.bb, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  %i.dp = load ptr, ptr %2, align 8, !tbaa !25
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !51
  invoke fastcc void @_ZN12_GLOBAL__N_113StrippingTest13FileHasSubstrESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable align 8 %18, i64 %i.dr, ptr %i.dp)
          to label %bb.bd unwind label %bb.bm

bb.bd:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit74
  call void @llvm.experimental.noalias.scope.decl(metadata !370)
  %i.ds = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !45, !noalias !370
  %i.du = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !26, !noalias !370
  store ptr null, ptr %i.ds, align 8, !tbaa !45, !noalias !370
  %i.dw = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  store ptr %i.dt, ptr %i.dw, align 8, !tbaa !45, !alias.scope !370
  %i.dx = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  store i64 %i.dv, ptr %i.dx, align 8, !tbaa !26, !alias.scope !370
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIP8_IO_FILEEE, i64 16), ptr %17, align 8, !tbaa !19, !alias.scope !370
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.dy = load ptr, ptr %i.bp, align 8, !tbaa !47
  store ptr %i.dy, ptr %i.d, align 8, !tbaa !47
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEEclIS4_EENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull @.str.26, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.be unwind label %bb.bn

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIP8_IO_FILEEE, i64 16), ptr %17, align 8, !tbaa !19
  %i.dz = load ptr, ptr %i.dw, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i.i77 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i77, label %_ZN7testing8internal29PredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEED2Ev.exit80, label %_ZNK7testing8internal11MatcherBaseIP8_IO_FILEE8IsSharedEv.exit.i.i.i78

_ZNK7testing8internal11MatcherBaseIP8_IO_FILEE8IsSharedEv.exit.i.i.i78: ; preds = %bb.be
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !49
  %.not.i.i.i79 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i79, label %_ZN7testing8internal29PredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEED2Ev.exit80, label %bb.bf

bb.bf:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIP8_IO_FILEE8IsSharedEv.exit.i.i.i78
  %i.ec = load ptr, ptr %i.dx, align 8, !tbaa !26
  %i.ed = atomicrmw sub ptr %i.ec, i32 1 acq_rel, align 4
  %i.ee = icmp eq i32 %i.ed, 1
  br i1 %i.ee, label %bb.bg, label %_ZN7testing8internal29PredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEED2Ev.exit80

bb.bg:                                            ; preds = %bb.bf
  %i.ef = load ptr, ptr %i.dw, align 8, !tbaa !45
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !49
  %i.ei = load ptr, ptr %i.dx, align 8, !tbaa !26
  invoke void %i.eh(ptr noundef %i.ei)
          to label %_ZN7testing8internal29PredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEED2Ev.exit80 unwind label %bb.bh, !inline_history !1

bb.bh:                                            ; preds = %bb.bg
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  call void @__clang_call_terminate(ptr %i.ek) #32, !inline_history !50
  unreachable

_ZN7testing8internal29PredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEED2Ev.exit80: ; preds = %bb.be, %_ZNK7testing8internal11MatcherBaseIP8_IO_FILEE8IsSharedEv.exit.i.i.i78, %bb.bf, %bb.bg
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIP8_IO_FILEEE, i64 16), ptr %18, align 8, !tbaa !19
  %i.el = load ptr, ptr %i.ds, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i81 = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i81, label %_ZN7testing8internal11MatcherBaseIP8_IO_FILEED2Ev.exit84, label %_ZNK7testing8internal11MatcherBaseIP8_IO_FILEE8IsSharedEv.exit.i.i82

_ZNK7testing8internal11MatcherBaseIP8_IO_FILEE8IsSharedEv.exit.i.i82: ; preds = %_ZN7testing8internal29PredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEED2Ev.exit80
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !49
  %.not.i.i83 = icmp eq ptr %i.en, null
  br i1 %.not.i.i83, label %_ZN7testing8internal11MatcherBaseIP8_IO_FILEED2Ev.exit84, label %bb.bi

bb.bi:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIP8_IO_FILEE8IsSharedEv.exit.i.i82
  %i.eo = load ptr, ptr %i.du, align 8, !tbaa !26
  %i.ep = atomicrmw sub ptr %i.eo, i32 1 acq_rel, align 4
  %i.eq = icmp eq i32 %i.ep, 1
  br i1 %i.eq, label %bb.bj, label %_ZN7testing8internal11MatcherBaseIP8_IO_FILEED2Ev.exit84

bb.bj:                                            ; preds = %bb.bi
  %i.er = load ptr, ptr %i.ds, align 8, !tbaa !45
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !49
  %i.eu = load ptr, ptr %i.du, align 8, !tbaa !26
  invoke void %i.et(ptr noundef %i.eu)
          to label %_ZN7testing8internal11MatcherBaseIP8_IO_FILEED2Ev.exit84 unwind label %bb.bk, !inline_history !1

bb.bk:                                            ; preds = %bb.bj
  %i.ev = landingpad { ptr, i32 }
          catch ptr null
  %i.ew = extractvalue { ptr, i32 } %i.ev, 0
  call void @__clang_call_terminate(ptr %i.ew) #32, !inline_history !50
  unreachable

_ZN7testing8internal11MatcherBaseIP8_IO_FILEED2Ev.exit84: ; preds = %_ZN7testing8internal29PredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEED2Ev.exit80, %_ZNK7testing8internal11MatcherBaseIP8_IO_FILEE8IsSharedEv.exit.i.i82, %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  %i.ex = load i8, ptr %16, align 8, !tbaa !36, !range !37, !noundef !38
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %bb.by, label %bb.bp

bb.bl:                                            ; preds = %_ZN7testing7MessageD2Ev.exit69, %bb.ar
  %.pn33.pn.pn = phi { ptr, i32 } [ %.pn33.pn, %_ZN7testing7MessageD2Ev.exit69 ], [ %.pn30.pn, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %bb.cl

bb.bm:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit74
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bd
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @_ZN7testing8internal29PredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #31
  call void @_ZN7testing8internal11MatcherBaseIP8_IO_FILEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #31
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.pn37.pn = phi { ptr, i32 } [ %i.fa, %bb.bn ], [ %i.ez, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %bb.ck

bb.bp:                                            ; preds = %_ZN7testing8internal11MatcherBaseIP8_IO_FILEED2Ev.exit84
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.bq unwind label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #31
  %i.fb = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !39 ; 2 uses
  %.not.i.i85 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i85, label %_ZNK7testing15AssertionResult15failure_messageEv.exit86, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit86

_ZNK7testing15AssertionResult15failure_messageEv.exit86: ; preds = %bb.br, %bb.bq
  %i.fe = phi ptr [ %i.fd, %bb.br ], [ @.str.49, %bb.bq ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 495, ptr noundef %i.fe)
          to label %bb.bs unwind label %bb.bv

bb.bs:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit86
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.bt unwind label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  %i.ff = load ptr, ptr %19, align 8, !tbaa !41   ; 3 uses
  %.not.i.i87 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i87, label %_ZN7testing7MessageD2Ev.exit89, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88: ; preds = %bb.bt
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !19
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(128) %i.ff) #31, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit89

_ZN7testing7MessageD2Ev.exit89:                   ; preds = %bb.bt, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  br label %bb.by

bb.bu:                                            ; preds = %bb.bp
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit92

bb.bv:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit86
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bs
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #31
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.pn40 = phi { ptr, i32 } [ %i.fl, %bb.bw ], [ %i.fk, %bb.bv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  %i.fm = load ptr, ptr %19, align 8, !tbaa !41   ; 3 uses
  %.not.i.i90 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i90, label %_ZN7testing7MessageD2Ev.exit92, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91: ; preds = %bb.bx
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !19
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(128) %i.fm) #31, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit92

_ZN7testing7MessageD2Ev.exit92:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91, %bb.bx, %bb.bu
  %.pn40.pn = phi { ptr, i32 } [ %i.fj, %bb.bu ], [ %.pn40, %bb.bx ], [ %.pn40, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #31
  br label %bb.ck

bb.by:                                            ; preds = %_ZN7testing8internal11MatcherBaseIP8_IO_FILEED2Ev.exit84, %_ZN7testing7MessageD2Ev.exit89
  %i.fq = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !39 ; 4 uses
  %.not.i.i93 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i93, label %_ZN7testing15AssertionResultD2Ev.exit97, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !25 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i94: ; preds = %bb.bz
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !26
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i94
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_126StrippingTest_CheckOk_Test8TestBodyEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.gu = load ptr, ptr %1, align 8, !tbaa !25    ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.gw = icmp eq ptr %i.gu, %i.gv
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gx = load i64, ptr %i.gv, align 8, !tbaa !26
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gy) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret void

bb.ck:                                            ; preds = %_ZN7testing7MessageD2Ev.exit92, %bb.bo
  %.pn40.pn.pn = phi { ptr, i32 } [ %.pn40.pn, %_ZN7testing7MessageD2Ev.exit92 ], [ %.pn37.pn, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.bl, %bb.ao
  %.pn40.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn, %bb.ck ], [ %.pn33.pn.pn, %bb.bl ], [ %.pn.pn.pn, %bb.ao ]
  call void @_ZNSt10unique_ptrI8_IO_FILESt8functionIFvPS0_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #31
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.s
  %.pn40.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn.pn, %bb.cl ], [ %i.ac, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.n, %bb.k
  %.pn46 = phi { ptr, i32 } [ %i.y, %bb.n ], [ %.pn40.pn.pn.pn.pn, %bb.cm ], [ %i.t, %bb.k ] ; 2 uses
  call void @_ZN4absl12lts_202605266StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.gz = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.hb = icmp eq ptr %i.gz, %i.ha
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.cn
  %i.hc = load i64, ptr %i.ha, align 8, !tbaa !26
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105, %bb.j
  %.pn46.pn.pn = phi { ptr, i32 } [ %i.s, %bb.j ], [ %.pn46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105 ], [ %.pn46, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.he = load ptr, ptr %1, align 8, !tbaa !25    ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %i.hh = load i64, ptr %i.hf, align 8, !tbaa !26
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hi) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  resume { ptr, i32 } %.pn46.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_202605266StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !116    ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN4absl12lts_202605266Status5UnrefEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %_ZN4absl12lts_202605266Status5UnrefEm.exit unwind label %bb.c

_ZN4absl12lts_202605266Status5UnrefEm.exit:       ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #32
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZN4absl12lts_2026052615status_internal19MakeCheckFailStringEPKNS0_6StatusEPKc(ptr noundef, ptr noundef) local_unnamed_addr #25

declare void @_ZN4absl12lts_2026052615status_internal13MakeErrorImplILi3EEENS0_6StatusESt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE(ptr dead_on_unwind writable sret(%"class.absl::lts_20260526::Status") align 8, i64, ptr, i64, ptr) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

declare void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_stripping_test.cc() #27 section ".text.startup" personality ptr @__gxx_personality_v0 {
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
  %i.e = alloca i64, align 8                      ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  %i.k = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 6 uses
  store ptr %i.k, ptr %27, align 8, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.k, ptr noundef nonnull align 1 dereferenceable(13) @.str, i64 13, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 13, ptr %i.l, align 8, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %27, i64 29
  store i8 0, ptr %i.m, align 1, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 11 uses
  store ptr %i.n, ptr %29, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i64 64, ptr %i.j, align 8, !tbaa !97
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc9.i unwind label %bb.g  ; 3 uses

.noexc9.i:                                        ; preds = %bb.a
  store ptr %i.o, ptr %29, align 8, !tbaa !25
  %i.p = load i64, ptr %i.j, align 8, !tbaa !97   ; 3 uses
  store i64 %i.p, ptr %i.n, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.o, ptr noundef nonnull align 1 dereferenceable(64) @.str.2, i64 64, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 4 uses
  store i64 %i.p, ptr %i.q, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  store i8 0, ptr %i.r, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #31
  %i.s = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 7 uses
  store ptr %i.s, ptr %28, align 8, !tbaa !74
  %i.t = load ptr, ptr %29, align 8, !tbaa !25    ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.n
  br i1 %i.u, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.b:                                             ; preds = %.noexc9.i
  %i.v = load i64, ptr %i.q, align 8, !tbaa !51   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.x, i1 false)
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.noexc9.i
  store ptr %i.t, ptr %28, align 8, !tbaa !25
  %i.y = load i64, ptr %i.n, align 8, !tbaa !26
  store i64 %i.y, ptr %i.s, align 8, !tbaa !26
  %.pre.i = load i64, ptr %i.q, align 8, !tbaa !51
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i

_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.b
  %i.z = phi i64 [ %i.v, %bb.b ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !51
  store ptr %i.n, ptr %29, align 8, !tbaa !25
  store i64 0, ptr %i.q, align 8, !tbaa !51
  store i8 0, ptr %i.n, align 8, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %28, i64 32
  store i32 256, ptr %i.ab, align 8, !tbaa !372
  %i.ac = invoke fastcc noundef ptr @_ZN7testing8internal16SuiteApiResolverIN12_GLOBAL__N_113StrippingTestEE19GetSetUpCaseOrSuiteEPKci(i32 noundef 256)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i
  %i.ad = invoke fastcc noundef ptr @_ZN7testing8internal16SuiteApiResolverIN12_GLOBAL__N_113StrippingTestEE22GetTearDownCaseOrSuiteEPKci(i32 noundef 256)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.ae = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #34
          to label %bb.e unwind label %bb.h       ; 2 uses

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_126StrippingTest_Control_TestEEE, i64 16), ptr %i.ae, align 8, !tbaa !19
  %i.af = invoke noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS8_S8_NS0_12CodeLocationEPKvPFvvESD_PNS0_15TestFactoryBaseE(ptr noundef nonnull align 8 %27, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 %28, ptr noundef nonnull @_ZN7testing8internal12TypeIdHelperIN12_GLOBAL__N_113StrippingTestEE6dummy_E, ptr noundef %i.ac, ptr noundef %i.ad, ptr noundef nonnull %i.ae)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %28, align 8, !tbaa !25   ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %_ZN7testing8internal12CodeLocationD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.ai = load i64, ptr %i.s, align 8, !tbaa !26
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #33
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit.i

_ZN7testing8internal12CodeLocationD2Ev.exit.i:    ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ak = load ptr, ptr %29, align 8, !tbaa !25   ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.n
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i
  %i.am = load i64, ptr %i.n, align 8, !tbaa !26
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i
  %i.ao = load ptr, ptr %27, align 8, !tbaa !25   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.k
  br i1 %i.ap, label %__cxx_global_var_init.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.aq = load i64, ptr %i.k, align 8, !tbaa !26
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #33
  br label %__cxx_global_var_init.exit

bb.g:                                             ; preds = %bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i

bb.h:                                             ; preds = %bb.e, %bb.d, %bb.c, %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %28, align 8, !tbaa !25   ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.s
  br i1 %i.av, label %_ZN7testing8internal12CodeLocationD2Ev.exit17.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15.i: ; preds = %bb.h
  %i.aw = load i64, ptr %i.s, align 8, !tbaa !26
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #33
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit17.i

_ZN7testing8internal12CodeLocationD2Ev.exit17.i:  ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15.i
  %i.ay = load ptr, ptr %29, align 8, !tbaa !25   ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.n
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit17.i
  %i.ba = load i64, ptr %i.n, align 8, !tbaa !26
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit17.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i, %bb.g
  %.pn.pn.i = phi { ptr, i32 } [ %i.as, %bb.g ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i ], [ %i.at, %_ZN7testing8internal12CodeLocationD2Ev.exit17.i ] ; 2 uses
  %i.bc = load ptr, ptr %27, align 8, !tbaa !25   ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.k
  br i1 %i.bd, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i
  %i.be = load i64, ptr %i.k, align 8, !tbaa !26
  br label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i165
  %.sink332 = phi i64 [ %i.rv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i165 ], [ %i.pz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i143 ], [ %i.od, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i121 ], [ %i.mh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i99 ], [ %i.kl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i77 ], [ %i.ip, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i55 ], [ %i.gt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i33 ], [ %i.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i11 ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i ]
  %.sink = phi ptr [ %i.rt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i165 ], [ %i.px, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i143 ], [ %i.ob, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i121 ], [ %i.mf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i99 ], [ %i.kj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i77 ], [ %i.in, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i55 ], [ %i.gr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i33 ], [ %i.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i11 ], [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %.pn.i164, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i165 ], [ %.pn.i142, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i143 ], [ %.pn.i120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i121 ], [ %.pn.i98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i99 ], [ %.pn.i76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i77 ], [ %.pn.i54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i55 ], [ %.pn.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i33 ], [ %.pn.i10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i11 ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i ], [ %.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i ]
  %i.bf = add i64 %.sink332, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bf) #33
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i163, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i141, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i119 ], [ %.pn.i142, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i141 ], [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i ], [ %.pn.i10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i9 ], [ %.pn.i32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i31 ], [ %.pn.i54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i53 ], [ %.pn.i76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i75 ], [ %.pn.i98, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i97 ], [ %.pn.i164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i163 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

__cxx_global_var_init.exit:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i
  store ptr %i.af, ptr @_ZN12_GLOBAL__N_126StrippingTest_Control_Test10test_info_E, align 8, !tbaa !374
  %i.bg = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN12_GLOBAL__N_126StrippingTest_Control_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  %i.bh = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.bh, ptr %24, align 8, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.bh, ptr noundef nonnull align 1 dereferenceable(13) @.str, i64 13, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 13, ptr %i.bi, align 8, !tbaa !51
  %i.bj = getelementptr inbounds nuw i8, ptr %24, i64 29
  store i8 0, ptr %i.bj, align 1, !tbaa !26
  %i.bk = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 11 uses
  store ptr %i.bk, ptr %26, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  store i64 64, ptr %i.i, align 8, !tbaa !97
  %i.bl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc7.i unwind label %bb.n  ; 3 uses

.noexc7.i:                                        ; preds = %__cxx_global_var_init.exit
  store ptr %i.bl, ptr %26, align 8, !tbaa !25
  %i.bm = load i64, ptr %i.i, align 8, !tbaa !97  ; 3 uses
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.bl, ptr noundef nonnull align 1 dereferenceable(64) @.str.2, i64 64, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 4 uses
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !51
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bm
  store i8 0, ptr %i.bo, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #31
  %i.bp = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 7 uses
  store ptr %i.bp, ptr %25, align 8, !tbaa !74
  %i.bq = load ptr, ptr %26, align 8, !tbaa !25   ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.bk
  br i1 %i.br, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1

bb.i:                                             ; preds = %.noexc7.i
  %i.bs = load i64, ptr %i.bn, align 8, !tbaa !51 ; 3 uses
  %i.bt = icmp ult i64 %i.bs, 16
  call void @llvm.assume(i1 %i.bt)
  %i.bu = add nuw nsw i64 %i.bs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bp, ptr noundef nonnull align 8 dereferenceable(1) %i.bk, i64 %i.bu, i1 false)
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1: ; preds = %.noexc7.i
  store ptr %i.bq, ptr %25, align 8, !tbaa !25
  %i.bv = load i64, ptr %i.bk, align 8, !tbaa !26
  store i64 %i.bv, ptr %i.bp, align 8, !tbaa !26
  %.pre.i2 = load i64, ptr %i.bn, align 8, !tbaa !51
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i3

_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i3: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1, %bb.i
  %i.bw = phi i64 [ %i.bs, %bb.i ], [ %.pre.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1 ]
  %i.bx = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !51
  store ptr %i.bk, ptr %26, align 8, !tbaa !25
  store i64 0, ptr %i.bn, align 8, !tbaa !51
  store i8 0, ptr %i.bk, align 8, !tbaa !26
  %i.by = getelementptr inbounds nuw i8, ptr %25, i64 32
  store i32 273, ptr %i.by, align 8, !tbaa !372
  %i.bz = invoke fastcc noundef ptr @_ZN7testing8internal16SuiteApiResolverIN12_GLOBAL__N_113StrippingTestEE19GetSetUpCaseOrSuiteEPKci(i32 noundef 273)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i3
  %i.ca = invoke fastcc noundef ptr @_ZN7testing8internal16SuiteApiResolverIN12_GLOBAL__N_113StrippingTestEE22GetTearDownCaseOrSuiteEPKci(i32 noundef 273)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.cb = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #34
          to label %bb.l unwind label %bb.o       ; 2 uses

bb.l:                                             ; preds = %bb.k
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_126StrippingTest_Literal_TestEEE, i64 16), ptr %i.cb, align 8, !tbaa !19
  %i.cc = invoke noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS8_S8_NS0_12CodeLocationEPKvPFvvESD_PNS0_15TestFactoryBaseE(ptr noundef nonnull align 8 %24, ptr noundef nonnull @.str.4, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 %25, ptr noundef nonnull @_ZN7testing8internal12TypeIdHelperIN12_GLOBAL__N_113StrippingTestEE6dummy_E, ptr noundef %i.bz, ptr noundef %i.ca, ptr noundef nonnull %i.cb)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cd = load ptr, ptr %25, align 8, !tbaa !25   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.bp
  br i1 %i.ce, label %_ZN7testing8internal12CodeLocationD2Ev.exit.i5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i4: ; preds = %bb.m
  %i.cf = load i64, ptr %i.bp, align 8, !tbaa !26
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #33
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit.i5

_ZN7testing8internal12CodeLocationD2Ev.exit.i5:   ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i4
  %i.ch = load ptr, ptr %26, align 8, !tbaa !25   ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.bk
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i5
  %i.cj = load i64, ptr %i.bk, align 8, !tbaa !26
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i6: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i
  %i.cl = load ptr, ptr %24, align 8, !tbaa !25   ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bh
  br i1 %i.cm, label %__cxx_global_var_init.3.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i6
  %i.cn = load i64, ptr %i.bh, align 8, !tbaa !26
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #33
  br label %__cxx_global_var_init.3.exit

bb.n:                                             ; preds = %__cxx_global_var_init.exit
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i

bb.o:                                             ; preds = %bb.l, %bb.k, %bb.j, %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i3
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = load ptr, ptr %25, align 8, !tbaa !25   ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.bp
  br i1 %i.cs, label %_ZN7testing8internal12CodeLocationD2Ev.exit15.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i: ; preds = %bb.o
  %i.ct = load i64, ptr %i.bp, align 8, !tbaa !26
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #33
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit15.i

_ZN7testing8internal12CodeLocationD2Ev.exit15.i:  ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i
  %i.cv = load ptr, ptr %26, align 8, !tbaa !25   ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.bk
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit15.i
  %i.cx = load i64, ptr %i.bk, align 8, !tbaa !26
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit15.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i, %bb.n
  %.pn.i = phi { ptr, i32 } [ %i.cp, %bb.n ], [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i ], [ %i.cq, %_ZN7testing8internal12CodeLocationD2Ev.exit15.i ] ; 2 uses
  %i.cz = load ptr, ptr %24, align 8, !tbaa !25   ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.bh
  br i1 %i.da, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i
  %i.db = load i64, ptr %i.bh, align 8, !tbaa !26
  br label %common.resume.sink.split

__cxx_global_var_init.3.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i
  store ptr %i.cc, ptr @_ZN12_GLOBAL__N_126StrippingTest_Literal_Test10test_info_E, align 8, !tbaa !374
  %i.dc = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN12_GLOBAL__N_126StrippingTest_Literal_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  %i.dd = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  store ptr %i.dd, ptr %21, align 8, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.dd, ptr noundef nonnull align 1 dereferenceable(13) @.str, i64 13, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 13, ptr %i.de, align 8, !tbaa !51
  %i.df = getelementptr inbounds nuw i8, ptr %21, i64 29
  store i8 0, ptr %i.df, align 1, !tbaa !26
  %i.dg = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 11 uses
  store ptr %i.dg, ptr %23, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  store i64 64, ptr %i.h, align 8, !tbaa !97
  %i.dh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc7.i14 unwind label %bb.u ; 3 uses

.noexc7.i14:                                      ; preds = %__cxx_global_var_init.3.exit
  store ptr %i.dh, ptr %23, align 8, !tbaa !25
  %i.di = load i64, ptr %i.h, align 8, !tbaa !97  ; 3 uses
  store i64 %i.di, ptr %i.dg, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.dh, ptr noundef nonnull align 1 dereferenceable(64) @.str.2, i64 64, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 4 uses
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !51
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.di
  store i8 0, ptr %i.dk, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #31
  %i.dl = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  store ptr %i.dl, ptr %22, align 8, !tbaa !74
  %i.dm = load ptr, ptr %23, align 8, !tbaa !25   ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.dg
  br i1 %i.dn, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15

bb.p:                                             ; preds = %.noexc7.i14
  %i.do = load i64, ptr %i.dj, align 8, !tbaa !51 ; 3 uses
  %i.dp = icmp ult i64 %i.do, 16
  call void @llvm.assume(i1 %i.dp)
  %i.dq = add nuw nsw i64 %i.do, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dl, ptr noundef nonnull align 8 dereferenceable(1) %i.dg, i64 %i.dq, i1 false)
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15: ; preds = %.noexc7.i14
  store ptr %i.dm, ptr %22, align 8, !tbaa !25
  %i.dr = load i64, ptr %i.dg, align 8, !tbaa !26
  store i64 %i.dr, ptr %i.dl, align 8, !tbaa !26
  %.pre.i16 = load i64, ptr %i.dj, align 8, !tbaa !51
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i17

_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i17: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15, %bb.p
  %i.ds = phi i64 [ %i.do, %bb.p ], [ %.pre.i16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15 ]
  %i.dt = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !51
  store ptr %i.dg, ptr %23, align 8, !tbaa !25
  store i64 0, ptr %i.dj, align 8, !tbaa !51
  store i8 0, ptr %i.dg, align 8, !tbaa !26
  %i.du = getelementptr inbounds nuw i8, ptr %22, i64 32
  store i32 289, ptr %i.du, align 8, !tbaa !372
  %i.dv = invoke fastcc noundef ptr @_ZN7testing8internal16SuiteApiResolverIN12_GLOBAL__N_113StrippingTestEE19GetSetUpCaseOrSuiteEPKci(i32 noundef 289)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i17
  %i.dw = invoke fastcc noundef ptr @_ZN7testing8internal16SuiteApiResolverIN12_GLOBAL__N_113StrippingTestEE22GetTearDownCaseOrSuiteEPKci(i32 noundef 289)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.dx = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #34
          to label %bb.s unwind label %bb.v       ; 2 uses

bb.s:                                             ; preds = %bb.r
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_138StrippingTest_LiteralInExpression_TestEEE, i64 16), ptr %i.dx, align 8, !tbaa !19
  %i.dy = invoke noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS8_S8_NS0_12CodeLocationEPKvPFvvESD_PNS0_15TestFactoryBaseE(ptr noundef nonnull align 8 %21, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 %22, ptr noundef nonnull @_ZN7testing8internal12TypeIdHelperIN12_GLOBAL__N_113StrippingTestEE6dummy_E, ptr noundef %i.dv, ptr noundef %i.dw, ptr noundef nonnull %i.dx)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.dz = load ptr, ptr %22, align 8, !tbaa !25   ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.dl
  br i1 %i.ea, label %_ZN7testing8internal12CodeLocationD2Ev.exit.i24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i23: ; preds = %bb.t
  %i.eb = load i64, ptr %i.dl, align 8, !tbaa !26
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #33
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit.i24

_ZN7testing8internal12CodeLocationD2Ev.exit.i24:  ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i23
  %i.ed = load ptr, ptr %23, align 8, !tbaa !25   ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.dg
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i25: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i24
  %i.ef = load i64, ptr %i.dg, align 8, !tbaa !26
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i26: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i25
  %i.eh = load ptr, ptr %21, align 8, !tbaa !25   ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.dd
  br i1 %i.ei, label %__cxx_global_var_init.5.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i26
  %i.ej = load i64, ptr %i.dd, align 8, !tbaa !26
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #33
  br label %__cxx_global_var_init.5.exit

bb.u:                                             ; preds = %__cxx_global_var_init.3.exit
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i9

bb.v:                                             ; preds = %bb.s, %bb.r, %bb.q, %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i17
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.en = load ptr, ptr %22, align 8, !tbaa !25   ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.dl
  br i1 %i.eo, label %_ZN7testing8internal12CodeLocationD2Ev.exit15.i19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i18: ; preds = %bb.v
  %i.ep = load i64, ptr %i.dl, align 8, !tbaa !26
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #33
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit15.i19

_ZN7testing8internal12CodeLocationD2Ev.exit15.i19: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i18
  %i.er = load ptr, ptr %23, align 8, !tbaa !25   ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.dg
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i20: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit15.i19
  %i.et = load i64, ptr %i.dg, align 8, !tbaa !26
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i9: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit15.i19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i20, %bb.u
  %.pn.i10 = phi { ptr, i32 } [ %i.el, %bb.u ], [ %i.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i20 ], [ %i.em, %_ZN7testing8internal12CodeLocationD2Ev.exit15.i19 ] ; 2 uses
  %i.ev = load ptr, ptr %21, align 8, !tbaa !25   ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.dd
  br i1 %i.ew, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i9
  %i.ex = load i64, ptr %i.dd, align 8, !tbaa !26
  br label %common.resume.sink.split

__cxx_global_var_init.5.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i27
  store ptr %i.dy, ptr @_ZN12_GLOBAL__N_138StrippingTest_LiteralInExpression_Test10test_info_E, align 8, !tbaa !374
  %i.ey = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN12_GLOBAL__N_138StrippingTest_LiteralInExpression_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  %i.ez = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.ez, ptr %18, align 8, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ez, ptr noundef nonnull align 1 dereferenceable(13) @.str, i64 13, i1 false)
  %i.fa = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 13, ptr %i.fa, align 8, !tbaa !51
  %i.fb = getelementptr inbounds nuw i8, ptr %18, i64 29
  store i8 0, ptr %i.fb, align 1, !tbaa !26
  %i.fc = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 11 uses
  store ptr %i.fc, ptr %20, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  store i64 64, ptr %i.g, align 8, !tbaa !97
  %i.fd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc7.i36 unwind label %bb.ab ; 3 uses

.noexc7.i36:                                      ; preds = %__cxx_global_var_init.5.exit
  store ptr %i.fd, ptr %20, align 8, !tbaa !25
  %i.fe = load i64, ptr %i.g, align 8, !tbaa !97  ; 3 uses
  store i64 %i.fe, ptr %i.fc, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.fd, ptr noundef nonnull align 1 dereferenceable(64) @.str.2, i64 64, i1 false)
  %i.ff = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 4 uses
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !51
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fe
  store i8 0, ptr %i.fg, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  %i.fh = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  store ptr %i.fh, ptr %19, align 8, !tbaa !74
  %i.fi = load ptr, ptr %20, align 8, !tbaa !25   ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.fc
  br i1 %i.fj, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37

bb.w:                                             ; preds = %.noexc7.i36
  %i.fk = load i64, ptr %i.ff, align 8, !tbaa !51 ; 3 uses
  %i.fl = icmp ult i64 %i.fk, 16
  call void @llvm.assume(i1 %i.fl)
  %i.fm = add nuw nsw i64 %i.fk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fh, ptr noundef nonnull align 8 dereferenceable(1) %i.fc, i64 %i.fm, i1 false)
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37: ; preds = %.noexc7.i36
  store ptr %i.fi, ptr %19, align 8, !tbaa !25
  %i.fn = load i64, ptr %i.fc, align 8, !tbaa !26
  store i64 %i.fn, ptr %i.fh, align 8, !tbaa !26
  %.pre.i38 = load i64, ptr %i.ff, align 8, !tbaa !51
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i39

_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i39: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37, %bb.w
  %i.fo = phi i64 [ %i.fk, %bb.w ], [ %.pre.i38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37 ]
  %i.fp = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %i.fo, ptr %i.fp, align 8, !tbaa !51
  store ptr %i.fc, ptr %20, align 8, !tbaa !25
  store i64 0, ptr %i.ff, align 8, !tbaa !51
  store i8 0, ptr %i.fc, align 8, !tbaa !26
  %i.fq = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i32 307, ptr %i.fq, align 8, !tbaa !372
  %i.fr = invoke fastcc noundef ptr @_ZN7testing8internal16SuiteApiResolverIN12_GLOBAL__N_113StrippingTestEE19GetSetUpCaseOrSuiteEPKci(i32 noundef 307)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i39
  %i.fs = invoke fastcc noundef ptr @_ZN7testing8internal16SuiteApiResolverIN12_GLOBAL__N_113StrippingTestEE22GetTearDownCaseOrSuiteEPKci(i32 noundef 307)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.ft = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #34
          to label %bb.z unwind label %bb.ac      ; 2 uses

bb.z:                                             ; preds = %bb.y
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_124StrippingTest_Fatal_TestEEE, i64 16), ptr %i.ft, align 8, !tbaa !19
  %i.fu = invoke noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS8_S8_NS0_12CodeLocationEPKvPFvvESD_PNS0_15TestFactoryBaseE(ptr noundef nonnull align 8 %18, ptr noundef nonnull @.str.8, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 %19, ptr noundef nonnull @_ZN7testing8internal12TypeIdHelperIN12_GLOBAL__N_113StrippingTestEE6dummy_E, ptr noundef %i.fr, ptr noundef %i.fs, ptr noundef nonnull %i.ft)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.fv = load ptr, ptr %19, align 8, !tbaa !25   ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.fh
  br i1 %i.fw, label %_ZN7testing8internal12CodeLocationD2Ev.exit.i46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i45: ; preds = %bb.aa
  %i.fx = load i64, ptr %i.fh, align 8, !tbaa !26
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #33
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit.i46

_ZN7testing8internal12CodeLocationD2Ev.exit.i46:  ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i45
  %i.fz = load ptr, ptr %20, align 8, !tbaa !25   ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.fc
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i47: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i46
  %i.gb = load i64, ptr %i.fc, align 8, !tbaa !26
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i48: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i47
  %i.gd = load ptr, ptr %18, align 8, !tbaa !25   ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.ez
  br i1 %i.ge, label %__cxx_global_var_init.7.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i48
  %i.gf = load i64, ptr %i.ez, align 8, !tbaa !26
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gg) #33
  br label %__cxx_global_var_init.7.exit

bb.ab:                                            ; preds = %__cxx_global_var_init.5.exit
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i31

bb.ac:                                            ; preds = %bb.z, %bb.y, %bb.x, %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i39
  %i.gi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gj = load ptr, ptr %19, align 8, !tbaa !25   ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.fh
  br i1 %i.gk, label %_ZN7testing8internal12CodeLocationD2Ev.exit15.i41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i40: ; preds = %bb.ac
  %i.gl = load i64, ptr %i.fh, align 8, !tbaa !26
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #33
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit15.i41

_ZN7testing8internal12CodeLocationD2Ev.exit15.i41: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i40
  %i.gn = load ptr, ptr %20, align 8, !tbaa !25   ; 2 uses
  %i.go = icmp eq ptr %i.gn, %i.fc
  br i1 %i.go, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i42: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit15.i41
  %i.gp = load i64, ptr %i.fc, align 8, !tbaa !26
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i31: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit15.i41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i42, %bb.ab
  %.pn.i32 = phi { ptr, i32 } [ %i.gh, %bb.ab ], [ %i.gi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i42 ], [ %i.gi, %_ZN7testing8internal12CodeLocationD2Ev.exit15.i41 ] ; 2 uses
  %i.gr = load ptr, ptr %18, align 8, !tbaa !25   ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.ez
  br i1 %i.gs, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i31
  %i.gt = load i64, ptr %i.ez, align 8, !tbaa !26
  br label %common.resume.sink.split

__cxx_global_var_init.7.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i49
  store ptr %i.fu, ptr @_ZN12_GLOBAL__N_124StrippingTest_Fatal_Test10test_info_E, align 8, !tbaa !374
  %i.gu = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN12_GLOBAL__N_124StrippingTest_Fatal_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  %i.gv = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.gv, ptr %15, align 8, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.gv, ptr noundef nonnull align 1 dereferenceable(13) @.str, i64 13, i1 false)
  %i.gw = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 13, ptr %i.gw, align 8, !tbaa !51
  %i.gx = getelementptr inbounds nuw i8, ptr %15, i64 29
  store i8 0, ptr %i.gx, align 1, !tbaa !26
  %i.gy = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 11 uses
  store ptr %i.gy, ptr %17, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  store i64 64, ptr %i.f, align 8, !tbaa !97
  %i.gz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc7.i58 unwind label %bb.ai ; 3 uses

.noexc7.i58:                                      ; preds = %__cxx_global_var_init.7.exit
  store ptr %i.gz, ptr %17, align 8, !tbaa !25
  %i.ha = load i64, ptr %i.f, align 8, !tbaa !97  ; 3 uses
  store i64 %i.ha, ptr %i.gy, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.gz, ptr noundef nonnull align 1 dereferenceable(64) @.str.2, i64 64, i1 false)
  %i.hb = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  store i64 %i.ha, ptr %i.hb, align 8, !tbaa !51
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.ha
  store i8 0, ptr %i.hc, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  %i.hd = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  store ptr %i.hd, ptr %16, align 8, !tbaa !74
  %i.he = load ptr, ptr %17, align 8, !tbaa !25   ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.gy
  br i1 %i.hf, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59

bb.ad:                                            ; preds = %.noexc7.i58
  %i.hg = load i64, ptr %i.hb, align 8, !tbaa !51 ; 3 uses
  %i.hh = icmp ult i64 %i.hg, 16
  call void @llvm.assume(i1 %i.hh)
  %i.hi = add nuw nsw i64 %i.hg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hd, ptr noundef nonnull align 8 dereferenceable(1) %i.gy, i64 %i.hi, i1 false)
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59: ; preds = %.noexc7.i58
  store ptr %i.he, ptr %16, align 8, !tbaa !25
  %i.hj = load i64, ptr %i.gy, align 8, !tbaa !26
  store i64 %i.hj, ptr %i.hd, align 8, !tbaa !26
  %.pre.i60 = load i64, ptr %i.hb, align 8, !tbaa !51
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i61

_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i61: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59, %bb.ad
  %i.hk = phi i64 [ %i.hg, %bb.ad ], [ %.pre.i60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59 ]
  %i.hl = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.hk, ptr %i.hl, align 8, !tbaa !51
  store ptr %i.gy, ptr %17, align 8, !tbaa !25
  store i64 0, ptr %i.hb, align 8, !tbaa !51
  store i8 0, ptr %i.gy, align 8, !tbaa !26
  %i.hm = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i32 326, ptr %i.hm, align 8, !tbaa !372
  %i.hn = invoke fastcc noundef ptr @_ZN7testing8internal16SuiteApiResolverIN12_GLOBAL__N_113StrippingTestEE19GetSetUpCaseOrSuiteEPKci(i32 noundef 326)
          to label %bb.ae unwind label %bb.aj

bb.ae:                                            ; preds = %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i61
  %i.ho = invoke fastcc noundef ptr @_ZN7testing8internal16SuiteApiResolverIN12_GLOBAL__N_113StrippingTestEE22GetTearDownCaseOrSuiteEPKci(i32 noundef 326)
          to label %bb.af unwind label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.hp = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #34
          to label %bb.ag unwind label %bb.aj     ; 2 uses

bb.ag:                                            ; preds = %bb.af
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_125StrippingTest_DFatal_TestEEE, i64 16), ptr %i.hp, align 8, !tbaa !19
  %i.hq = invoke noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS8_S8_NS0_12CodeLocationEPKvPFvvESD_PNS0_15TestFactoryBaseE(ptr noundef nonnull align 8 %15, ptr noundef nonnull @.str.10, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 %16, ptr noundef nonnull @_ZN7testing8internal12TypeIdHelperIN12_GLOBAL__N_113StrippingTestEE6dummy_E, ptr noundef %i.hn, ptr noundef %i.ho, ptr noundef nonnull %i.hp)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.hr = load ptr, ptr %16, align 8, !tbaa !25   ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.hd
  br i1 %i.hs, label %_ZN7testing8internal12CodeLocationD2Ev.exit.i68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i67: ; preds = %bb.ah
  %i.ht = load i64, ptr %i.hd, align 8, !tbaa !26
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hu) #33
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit.i68

_ZN7testing8internal12CodeLocationD2Ev.exit.i68:  ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i67
  %i.hv = load ptr, ptr %17, align 8, !tbaa !25   ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.gy
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i69: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i68
  %i.hx = load i64, ptr %i.gy, align 8, !tbaa !26
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i70: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i69
  %i.hz = load ptr, ptr %15, align 8, !tbaa !25   ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.gv
  br i1 %i.ia, label %__cxx_global_var_init.9.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i70
  %i.ib = load i64, ptr %i.gv, align 8, !tbaa !26
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ic) #33
  br label %__cxx_global_var_init.9.exit

bb.ai:                                            ; preds = %__cxx_global_var_init.7.exit
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i53

bb.aj:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i61
  %i.ie = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.if = load ptr, ptr %16, align 8, !tbaa !25   ; 2 uses
  %i.ig = icmp eq ptr %i.if, %i.hd
  br i1 %i.ig, label %_ZN7testing8internal12CodeLocationD2Ev.exit15.i63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i62: ; preds = %bb.aj
  %i.ih = load i64, ptr %i.hd, align 8, !tbaa !26
  %i.ii = add i64 %i.ih, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ii) #33
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit15.i63

_ZN7testing8internal12CodeLocationD2Ev.exit15.i63: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i62
  %i.ij = load ptr, ptr %17, align 8, !tbaa !25   ; 2 uses
  %i.ik = icmp eq ptr %i.ij, %i.gy
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i64: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit15.i63
  %i.il = load i64, ptr %i.gy, align 8, !tbaa !26
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.im) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i53: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit15.i63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i64, %bb.ai
  %.pn.i54 = phi { ptr, i32 } [ %i.id, %bb.ai ], [ %i.ie, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i64 ], [ %i.ie, %_ZN7testing8internal12CodeLocationD2Ev.exit15.i63 ] ; 2 uses
  %i.in = load ptr, ptr %15, align 8, !tbaa !25   ; 2 uses
  %i.io = icmp eq ptr %i.in, %i.gv
  br i1 %i.io, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i53
  %i.ip = load i64, ptr %i.gv, align 8, !tbaa !26
  br label %common.resume.sink.split

__cxx_global_var_init.9.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i71
  store ptr %i.hq, ptr @_ZN12_GLOBAL__N_125StrippingTest_DFatal_Test10test_info_E, align 8, !tbaa !374
  %i.iq = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN12_GLOBAL__N_125StrippingTest_DFatal_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.ir = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.ir, ptr %12, align 8, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ir, ptr noundef nonnull align 1 dereferenceable(13) @.str, i64 13, i1 false)
  %i.is = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 13, ptr %i.is, align 8, !tbaa !51
  %i.it = getelementptr inbounds nuw i8, ptr %12, i64 29
  store i8 0, ptr %i.it, align 1, !tbaa !26
  %i.iu = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 11 uses
  store ptr %i.iu, ptr %14, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  store i64 64, ptr %i.e, align 8, !tbaa !97
  %i.iv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc7.i80 unwind label %bb.ap ; 3 uses

.noexc7.i80:                                      ; preds = %__cxx_global_var_init.9.exit
  store ptr %i.iv, ptr %14, align 8, !tbaa !25
  %i.iw = load i64, ptr %i.e, align 8, !tbaa !97  ; 3 uses
  store i64 %i.iw, ptr %i.iu, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.iv, ptr noundef nonnull align 1 dereferenceable(64) @.str.2, i64 64, i1 false)
  %i.ix = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store i64 %i.iw, ptr %i.ix, align 8, !tbaa !51
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.iw
  store i8 0, ptr %i.iy, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  %i.iz = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.iz, ptr %13, align 8, !tbaa !74
  %i.ja = load ptr, ptr %14, align 8, !tbaa !25   ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.iu
  br i1 %i.jb, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81

bb.ak:                                            ; preds = %.noexc7.i80
  %i.jc = load i64, ptr %i.ix, align 8, !tbaa !51 ; 3 uses
  %i.jd = icmp ult i64 %i.jc, 16
  call void @llvm.assume(i1 %i.jd)
  %i.je = add nuw nsw i64 %i.jc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.iz, ptr noundef nonnull align 8 dereferenceable(1) %i.iu, i64 %i.je, i1 false)
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81: ; preds = %.noexc7.i80
  store ptr %i.ja, ptr %13, align 8, !tbaa !25
  %i.jf = load i64, ptr %i.iu, align 8, !tbaa !26
  store i64 %i.jf, ptr %i.iz, align 8, !tbaa !26
  %.pre.i82 = load i64, ptr %i.ix, align 8, !tbaa !51
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i83

_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i83: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81, %bb.ak
  %i.jg = phi i64 [ %i.jc, %bb.ak ], [ %.pre.i82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81 ]
  %i.jh = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.jg, ptr %i.jh, align 8, !tbaa !51
  store ptr %i.iu, ptr %14, align 8, !tbaa !25
  store i64 0, ptr %i.ix, align 8, !tbaa !51
  store i8 0, ptr %i.iu, align 8, !tbaa !26
  %i.ji = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i32 369, ptr %i.ji, align 8, !tbaa !372
  %i.jj = invoke fastcc noundef ptr @_ZN7testing8internal16SuiteApiResolverIN12_GLOBAL__N_113StrippingTestEE19GetSetUpCaseOrSuiteEPKci(i32 noundef 369)
          to label %bb.al unwind label %bb.aq

bb.al:                                            ; preds = %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i83
  %i.jk = invoke fastcc noundef ptr @_ZN7testing8internal16SuiteApiResolverIN12_GLOBAL__N_113StrippingTestEE22GetTearDownCaseOrSuiteEPKci(i32 noundef 369)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.jl = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #34
          to label %bb.an unwind label %bb.aq     ; 2 uses

bb.an:                                            ; preds = %bb.am
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_124StrippingTest_Level_TestEEE, i64 16), ptr %i.jl, align 8, !tbaa !19
  %i.jm = invoke noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS8_S8_NS0_12CodeLocationEPKvPFvvESD_PNS0_15TestFactoryBaseE(ptr noundef nonnull align 8 %12, ptr noundef nonnull @.str.12, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 %13, ptr noundef nonnull @_ZN7testing8internal12TypeIdHelperIN12_GLOBAL__N_113StrippingTestEE6dummy_E, ptr noundef %i.jj, ptr noundef %i.jk, ptr noundef nonnull %i.jl)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.jn = load ptr, ptr %13, align 8, !tbaa !25   ; 2 uses
  %i.jo = icmp eq ptr %i.jn, %i.iz
  br i1 %i.jo, label %_ZN7testing8internal12CodeLocationD2Ev.exit.i90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i89: ; preds = %bb.ao
  %i.jp = load i64, ptr %i.iz, align 8, !tbaa !26
  %i.jq = add i64 %i.jp, 1
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jq) #33
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit.i90

_ZN7testing8internal12CodeLocationD2Ev.exit.i90:  ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i89
  %i.jr = load ptr, ptr %14, align 8, !tbaa !25   ; 2 uses
  %i.js = icmp eq ptr %i.jr, %i.iu
  br i1 %i.js, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i91: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i90
  %i.jt = load i64, ptr %i.iu, align 8, !tbaa !26
  %i.ju = add i64 %i.jt, 1
  call void @_ZdlPvm(ptr noundef %i.jr, i64 noundef %i.ju) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i92: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i91
  %i.jv = load ptr, ptr %12, align 8, !tbaa !25   ; 2 uses
  %i.jw = icmp eq ptr %i.jv, %i.ir
  br i1 %i.jw, label %__cxx_global_var_init.11.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i92
  %i.jx = load i64, ptr %i.ir, align 8, !tbaa !26
  %i.jy = add i64 %i.jx, 1
  call void @_ZdlPvm(ptr noundef %i.jv, i64 noundef %i.jy) #33
  br label %__cxx_global_var_init.11.exit

bb.ap:                                            ; preds = %__cxx_global_var_init.9.exit
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i75

bb.aq:                                            ; preds = %bb.an, %bb.am, %bb.al, %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i83
  %i.ka = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kb = load ptr, ptr %13, align 8, !tbaa !25   ; 2 uses
  %i.kc = icmp eq ptr %i.kb, %i.iz
  br i1 %i.kc, label %_ZN7testing8internal12CodeLocationD2Ev.exit15.i85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i84: ; preds = %bb.aq
  %i.kd = load i64, ptr %i.iz, align 8, !tbaa !26
  %i.ke = add i64 %i.kd, 1
  call void @_ZdlPvm(ptr noundef %i.kb, i64 noundef %i.ke) #33
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit15.i85

_ZN7testing8internal12CodeLocationD2Ev.exit15.i85: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i84
  %i.kf = load ptr, ptr %14, align 8, !tbaa !25   ; 2 uses
  %i.kg = icmp eq ptr %i.kf, %i.iu
  br i1 %i.kg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i86: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit15.i85
  %i.kh = load i64, ptr %i.iu, align 8, !tbaa !26
  %i.ki = add i64 %i.kh, 1
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.ki) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i75: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit15.i85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i86, %bb.ap
  %.pn.i76 = phi { ptr, i32 } [ %i.jz, %bb.ap ], [ %i.ka, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i86 ], [ %i.ka, %_ZN7testing8internal12CodeLocationD2Ev.exit15.i85 ] ; 2 uses
  %i.kj = load ptr, ptr %12, align 8, !tbaa !25   ; 2 uses
  %i.kk = icmp eq ptr %i.kj, %i.ir
  br i1 %i.kk, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i75
  %i.kl = load i64, ptr %i.ir, align 8, !tbaa !26
  br label %common.resume.sink.split

__cxx_global_var_init.11.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i93
  store ptr %i.jm, ptr @_ZN12_GLOBAL__N_124StrippingTest_Level_Test10test_info_E, align 8, !tbaa !374
  %i.km = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN12_GLOBAL__N_124StrippingTest_Level_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.kn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.kn, ptr %9, align 8, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.kn, ptr noundef nonnull align 1 dereferenceable(13) @.str, i64 13, i1 false)
  %i.ko = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 13, ptr %i.ko, align 8, !tbaa !51
  %i.kp = getelementptr inbounds nuw i8, ptr %9, i64 29
  store i8 0, ptr %i.kp, align 1, !tbaa !26
  %i.kq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 11 uses
  store ptr %i.kq, ptr %11, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  store i64 64, ptr %i.d, align 8, !tbaa !97
  %i.kr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc7.i102 unwind label %bb.aw ; 3 uses

.noexc7.i102:                                     ; preds = %__cxx_global_var_init.11.exit
  store ptr %i.kr, ptr %11, align 8, !tbaa !25
  %i.ks = load i64, ptr %i.d, align 8, !tbaa !97  ; 3 uses
  store i64 %i.ks, ptr %i.kq, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.kr, ptr noundef nonnull align 1 dereferenceable(64) @.str.2, i64 64, i1 false)
  %i.kt = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i64 %i.ks, ptr %i.kt, align 8, !tbaa !51
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.ks
  store i8 0, ptr %i.ku, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  %i.kv = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.kv, ptr %10, align 8, !tbaa !74
  %i.kw = load ptr, ptr %11, align 8, !tbaa !25   ; 2 uses
  %i.kx = icmp eq ptr %i.kw, %i.kq
  br i1 %i.kx, label %bb.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i103

bb.ar:                                            ; preds = %.noexc7.i102
  %i.ky = load i64, ptr %i.kt, align 8, !tbaa !51 ; 3 uses
  %i.kz = icmp ult i64 %i.ky, 16
  call void @llvm.assume(i1 %i.kz)
  %i.la = add nuw nsw i64 %i.ky, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.kv, ptr noundef nonnull align 8 dereferenceable(1) %i.kq, i64 %i.la, i1 false)
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i103: ; preds = %.noexc7.i102
  store ptr %i.kw, ptr %10, align 8, !tbaa !25
  %i.lb = load i64, ptr %i.kq, align 8, !tbaa !26
  store i64 %i.lb, ptr %i.kv, align 8, !tbaa !26
  %.pre.i104 = load i64, ptr %i.kt, align 8, !tbaa !51
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i105

_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i105: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i103, %bb.ar
  %i.lc = phi i64 [ %i.ky, %bb.ar ], [ %.pre.i104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i103 ]
  %i.ld = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.lc, ptr %i.ld, align 8, !tbaa !51
  store ptr %i.kq, ptr %11, align 8, !tbaa !25
  store i64 0, ptr %i.kt, align 8, !tbaa !51
  store i8 0, ptr %i.kq, align 8, !tbaa !26
  %i.le = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i32 392, ptr %i.le, align 8, !tbaa !372
  %i.lf = invoke fastcc noundef ptr @_ZN7testing8internal16SuiteApiResolverIN12_GLOBAL__N_113StrippingTestEE19GetSetUpCaseOrSuiteEPKci(i32 noundef 392)
          to label %bb.as unwind label %bb.ax

bb.as:                                            ; preds = %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i105
  %i.lg = invoke fastcc noundef ptr @_ZN7testing8internal16SuiteApiResolverIN12_GLOBAL__N_113StrippingTestEE22GetTearDownCaseOrSuiteEPKci(i32 noundef 392)
          to label %bb.at unwind label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.lh = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #34
          to label %bb.au unwind label %bb.ax     ; 2 uses

bb.au:                                            ; preds = %bb.at
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_124StrippingTest_Check_TestEEE, i64 16), ptr %i.lh, align 8, !tbaa !19
  %i.li = invoke noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS8_S8_NS0_12CodeLocationEPKvPFvvESD_PNS0_15TestFactoryBaseE(ptr noundef nonnull align 8 %9, ptr noundef nonnull @.str.14, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 %10, ptr noundef nonnull @_ZN7testing8internal12TypeIdHelperIN12_GLOBAL__N_113StrippingTestEE6dummy_E, ptr noundef %i.lf, ptr noundef %i.lg, ptr noundef nonnull %i.lh)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.lj = load ptr, ptr %10, align 8, !tbaa !25   ; 2 uses
  %i.lk = icmp eq ptr %i.lj, %i.kv
  br i1 %i.lk, label %_ZN7testing8internal12CodeLocationD2Ev.exit.i112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i111: ; preds = %bb.av
  %i.ll = load i64, ptr %i.kv, align 8, !tbaa !26
  %i.lm = add i64 %i.ll, 1
  call void @_ZdlPvm(ptr noundef %i.lj, i64 noundef %i.lm) #33
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit.i112

_ZN7testing8internal12CodeLocationD2Ev.exit.i112: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i111
  %i.ln = load ptr, ptr %11, align 8, !tbaa !25   ; 2 uses
  %i.lo = icmp eq ptr %i.ln, %i.kq
  br i1 %i.lo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i113: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i112
  %i.lp = load i64, ptr %i.kq, align 8, !tbaa !26
  %i.lq = add i64 %i.lp, 1
  call void @_ZdlPvm(ptr noundef %i.ln, i64 noundef %i.lq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i114: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i113
  %i.lr = load ptr, ptr %9, align 8, !tbaa !25    ; 2 uses
  %i.ls = icmp eq ptr %i.lr, %i.kn
  br i1 %i.ls, label %__cxx_global_var_init.13.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i114
  %i.lt = load i64, ptr %i.kn, align 8, !tbaa !26
  %i.lu = add i64 %i.lt, 1
  call void @_ZdlPvm(ptr noundef %i.lr, i64 noundef %i.lu) #33
  br label %__cxx_global_var_init.13.exit

bb.aw:                                            ; preds = %__cxx_global_var_init.11.exit
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i97

bb.ax:                                            ; preds = %bb.au, %bb.at, %bb.as, %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i105
  %i.lw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lx = load ptr, ptr %10, align 8, !tbaa !25   ; 2 uses
  %i.ly = icmp eq ptr %i.lx, %i.kv
  br i1 %i.ly, label %_ZN7testing8internal12CodeLocationD2Ev.exit15.i107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i106: ; preds = %bb.ax
  %i.lz = load i64, ptr %i.kv, align 8, !tbaa !26
  %i.ma = add i64 %i.lz, 1
  call void @_ZdlPvm(ptr noundef %i.lx, i64 noundef %i.ma) #33
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit15.i107

_ZN7testing8internal12CodeLocationD2Ev.exit15.i107: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i106
  %i.mb = load ptr, ptr %11, align 8, !tbaa !25   ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %i.kq
  br i1 %i.mc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i108: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit15.i107
  %i.md = load i64, ptr %i.kq, align 8, !tbaa !26
  %i.me = add i64 %i.md, 1
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.me) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i97: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit15.i107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i108, %bb.aw
  %.pn.i98 = phi { ptr, i32 } [ %i.lv, %bb.aw ], [ %i.lw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i108 ], [ %i.lw, %_ZN7testing8internal12CodeLocationD2Ev.exit15.i107 ] ; 2 uses
  %i.mf = load ptr, ptr %9, align 8, !tbaa !25    ; 2 uses
  %i.mg = icmp eq ptr %i.mf, %i.kn
  br i1 %i.mg, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i97
  %i.mh = load i64, ptr %i.kn, align 8, !tbaa !26
  br label %common.resume.sink.split

__cxx_global_var_init.13.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i115
  store ptr %i.li, ptr @_ZN12_GLOBAL__N_124StrippingTest_Check_Test10test_info_E, align 8, !tbaa !374
  %i.mi = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN12_GLOBAL__N_124StrippingTest_Check_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.mj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.mj, ptr %6, align 8, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.mj, ptr noundef nonnull align 1 dereferenceable(13) @.str, i64 13, i1 false)
  %i.mk = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 13, ptr %i.mk, align 8, !tbaa !51
  %i.ml = getelementptr inbounds nuw i8, ptr %6, i64 29
  store i8 0, ptr %i.ml, align 1, !tbaa !26
  %i.mm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 11 uses
  store ptr %i.mm, ptr %8, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  store i64 64, ptr %i.c, align 8, !tbaa !97
  %i.mn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc7.i124 unwind label %bb.bd ; 3 uses

.noexc7.i124:                                     ; preds = %__cxx_global_var_init.13.exit
  store ptr %i.mn, ptr %8, align 8, !tbaa !25
  %i.mo = load i64, ptr %i.c, align 8, !tbaa !97  ; 3 uses
  store i64 %i.mo, ptr %i.mm, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.mn, ptr noundef nonnull align 1 dereferenceable(64) @.str.2, i64 64, i1 false)
  %i.mp = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i64 %i.mo, ptr %i.mp, align 8, !tbaa !51
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.mo
  store i8 0, ptr %i.mq, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  %i.mr = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.mr, ptr %7, align 8, !tbaa !74
  %i.ms = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.mt = icmp eq ptr %i.ms, %i.mm
  br i1 %i.mt, label %bb.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i125

bb.ay:                                            ; preds = %.noexc7.i124
  %i.mu = load i64, ptr %i.mp, align 8, !tbaa !51 ; 3 uses
  %i.mv = icmp ult i64 %i.mu, 16
  call void @llvm.assume(i1 %i.mv)
  %i.mw = add nuw nsw i64 %i.mu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.mr, ptr noundef nonnull align 8 dereferenceable(1) %i.mm, i64 %i.mw, i1 false)
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i125: ; preds = %.noexc7.i124
  store ptr %i.ms, ptr %7, align 8, !tbaa !25
  %i.mx = load i64, ptr %i.mm, align 8, !tbaa !26
  store i64 %i.mx, ptr %i.mr, align 8, !tbaa !26
  %.pre.i126 = load i64, ptr %i.mp, align 8, !tbaa !51
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i127

_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i127: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i125, %bb.ay
  %i.my = phi i64 [ %i.mu, %bb.ay ], [ %.pre.i126, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i125 ]
  %i.mz = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.my, ptr %i.mz, align 8, !tbaa !51
  store ptr %i.mm, ptr %8, align 8, !tbaa !25
  store i64 0, ptr %i.mp, align 8, !tbaa !51
  store i8 0, ptr %i.mm, align 8, !tbaa !26
  %i.na = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 418, ptr %i.na, align 8, !tbaa !372
  %i.nb = invoke fastcc noundef ptr @_ZN7testing8internal16SuiteApiResolverIN12_GLOBAL__N_113StrippingTestEE19GetSetUpCaseOrSuiteEPKci(i32 noundef 418)
          to label %bb.az unwind label %bb.be

bb.az:                                            ; preds = %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i127
  %i.nc = invoke fastcc noundef ptr @_ZN7testing8internal16SuiteApiResolverIN12_GLOBAL__N_113StrippingTestEE22GetTearDownCaseOrSuiteEPKci(i32 noundef 418)
          to label %bb.ba unwind label %bb.be

bb.ba:                                            ; preds = %bb.az
  %i.nd = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #34
          to label %bb.bb unwind label %bb.be     ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_126StrippingTest_CheckOp_TestEEE, i64 16), ptr %i.nd, align 8, !tbaa !19
  %i.ne = invoke noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS8_S8_NS0_12CodeLocationEPKvPFvvESD_PNS0_15TestFactoryBaseE(ptr noundef nonnull align 8 %6, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 %7, ptr noundef nonnull @_ZN7testing8internal12TypeIdHelperIN12_GLOBAL__N_113StrippingTestEE6dummy_E, ptr noundef %i.nb, ptr noundef %i.nc, ptr noundef nonnull %i.nd)
          to label %bb.bc unwind label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.nf = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.ng = icmp eq ptr %i.nf, %i.mr
  br i1 %i.ng, label %_ZN7testing8internal12CodeLocationD2Ev.exit.i134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i133: ; preds = %bb.bc
  %i.nh = load i64, ptr %i.mr, align 8, !tbaa !26
  %i.ni = add i64 %i.nh, 1
  call void @_ZdlPvm(ptr noundef %i.nf, i64 noundef %i.ni) #33
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit.i134

_ZN7testing8internal12CodeLocationD2Ev.exit.i134: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i133
  %i.nj = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.nk = icmp eq ptr %i.nj, %i.mm
  br i1 %i.nk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i135: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i134
  %i.nl = load i64, ptr %i.mm, align 8, !tbaa !26
  %i.nm = add i64 %i.nl, 1
  call void @_ZdlPvm(ptr noundef %i.nj, i64 noundef %i.nm) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i136: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i135
  %i.nn = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.no = icmp eq ptr %i.nn, %i.mj
  br i1 %i.no, label %__cxx_global_var_init.15.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i137: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i136
  %i.np = load i64, ptr %i.mj, align 8, !tbaa !26
  %i.nq = add i64 %i.np, 1
  call void @_ZdlPvm(ptr noundef %i.nn, i64 noundef %i.nq) #33
  br label %__cxx_global_var_init.15.exit

bb.bd:                                            ; preds = %__cxx_global_var_init.13.exit
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i119

bb.be:                                            ; preds = %bb.bb, %bb.ba, %bb.az, %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i127
  %i.ns = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nt = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.nu = icmp eq ptr %i.nt, %i.mr
  br i1 %i.nu, label %_ZN7testing8internal12CodeLocationD2Ev.exit15.i129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i128: ; preds = %bb.be
  %i.nv = load i64, ptr %i.mr, align 8, !tbaa !26
  %i.nw = add i64 %i.nv, 1
  call void @_ZdlPvm(ptr noundef %i.nt, i64 noundef %i.nw) #33
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit15.i129

_ZN7testing8internal12CodeLocationD2Ev.exit15.i129: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i128
  %i.nx = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.ny = icmp eq ptr %i.nx, %i.mm
  br i1 %i.ny, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i130: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit15.i129
  %i.nz = load i64, ptr %i.mm, align 8, !tbaa !26
  %i.oa = add i64 %i.nz, 1
  call void @_ZdlPvm(ptr noundef %i.nx, i64 noundef %i.oa) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i119: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit15.i129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i130, %bb.bd
  %.pn.i120 = phi { ptr, i32 } [ %i.nr, %bb.bd ], [ %i.ns, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i130 ], [ %i.ns, %_ZN7testing8internal12CodeLocationD2Ev.exit15.i129 ] ; 2 uses
  %i.ob = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.oc = icmp eq ptr %i.ob, %i.mj
  br i1 %i.oc, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i121: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i119
  %i.od = load i64, ptr %i.mj, align 8, !tbaa !26
  br label %common.resume.sink.split

__cxx_global_var_init.15.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i136, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i137
  store ptr %i.ne, ptr @_ZN12_GLOBAL__N_126StrippingTest_CheckOp_Test10test_info_E, align 8, !tbaa !374
  %i.oe = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN12_GLOBAL__N_126StrippingTest_CheckOp_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.of = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.of, ptr %3, align 8, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.of, ptr noundef nonnull align 1 dereferenceable(13) @.str, i64 13, i1 false)
  %i.og = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 13, ptr %i.og, align 8, !tbaa !51
  %i.oh = getelementptr inbounds nuw i8, ptr %3, i64 29
  store i8 0, ptr %i.oh, align 1, !tbaa !26
  %i.oi = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 11 uses
  store ptr %i.oi, ptr %5, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i64 64, ptr %i.b, align 8, !tbaa !97
  %i.oj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc7.i146 unwind label %bb.bk ; 3 uses

.noexc7.i146:                                     ; preds = %__cxx_global_var_init.15.exit
  store ptr %i.oj, ptr %5, align 8, !tbaa !25
  %i.ok = load i64, ptr %i.b, align 8, !tbaa !97  ; 3 uses
  store i64 %i.ok, ptr %i.oi, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.oj, ptr noundef nonnull align 1 dereferenceable(64) @.str.2, i64 64, i1 false)
  %i.ol = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 %i.ok, ptr %i.ol, align 8, !tbaa !51
  %i.om = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.ok
  store i8 0, ptr %i.om, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.on = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.on, ptr %4, align 8, !tbaa !74
  %i.oo = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.op = icmp eq ptr %i.oo, %i.oi
  br i1 %i.op, label %bb.bf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147

bb.bf:                                            ; preds = %.noexc7.i146
  %i.oq = load i64, ptr %i.ol, align 8, !tbaa !51 ; 3 uses
  %i.or = icmp ult i64 %i.oq, 16
  call void @llvm.assume(i1 %i.or)
  %i.os = add nuw nsw i64 %i.oq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.on, ptr noundef nonnull align 8 dereferenceable(1) %i.oi, i64 %i.os, i1 false)
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147: ; preds = %.noexc7.i146
  store ptr %i.oo, ptr %4, align 8, !tbaa !25
  %i.ot = load i64, ptr %i.oi, align 8, !tbaa !26
  store i64 %i.ot, ptr %i.on, align 8, !tbaa !26
  %.pre.i148 = load i64, ptr %i.ol, align 8, !tbaa !51
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i149

_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i149: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147, %bb.bf
  %i.ou = phi i64 [ %i.oq, %bb.bf ], [ %.pre.i148, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147 ]
  %i.ov = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ou, ptr %i.ov, align 8, !tbaa !51
  store ptr %i.oi, ptr %5, align 8, !tbaa !25
  store i64 0, ptr %i.ol, align 8, !tbaa !51
  store i8 0, ptr %i.oi, align 8, !tbaa !26
  %i.ow = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 446, ptr %i.ow, align 8, !tbaa !372
  %i.ox = invoke fastcc noundef ptr @_ZN7testing8internal16SuiteApiResolverIN12_GLOBAL__N_113StrippingTestEE19GetSetUpCaseOrSuiteEPKci(i32 noundef 446)
          to label %bb.bg unwind label %bb.bl

bb.bg:                                            ; preds = %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i149
  %i.oy = invoke fastcc noundef ptr @_ZN7testing8internal16SuiteApiResolverIN12_GLOBAL__N_113StrippingTestEE22GetTearDownCaseOrSuiteEPKci(i32 noundef 446)
          to label %bb.bh unwind label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  %i.oz = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #34
          to label %bb.bi unwind label %bb.bl     ; 2 uses

bb.bi:                                            ; preds = %bb.bh
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_129StrippingTest_CheckStrOp_TestEEE, i64 16), ptr %i.oz, align 8, !tbaa !19
  %i.pa = invoke noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS8_S8_NS0_12CodeLocationEPKvPFvvESD_PNS0_15TestFactoryBaseE(ptr noundef nonnull align 8 %3, ptr noundef nonnull @.str.18, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 %4, ptr noundef nonnull @_ZN7testing8internal12TypeIdHelperIN12_GLOBAL__N_113StrippingTestEE6dummy_E, ptr noundef %i.ox, ptr noundef %i.oy, ptr noundef nonnull %i.oz)
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.pb = load ptr, ptr %4, align 8, !tbaa !25    ; 2 uses
  %i.pc = icmp eq ptr %i.pb, %i.on
  br i1 %i.pc, label %_ZN7testing8internal12CodeLocationD2Ev.exit.i156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i155: ; preds = %bb.bj
  %i.pd = load i64, ptr %i.on, align 8, !tbaa !26
  %i.pe = add i64 %i.pd, 1
  call void @_ZdlPvm(ptr noundef %i.pb, i64 noundef %i.pe) #33
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit.i156

_ZN7testing8internal12CodeLocationD2Ev.exit.i156: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i155
  %i.pf = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.pg = icmp eq ptr %i.pf, %i.oi
  br i1 %i.pg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i157: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i156
  %i.ph = load i64, ptr %i.oi, align 8, !tbaa !26
  %i.pi = add i64 %i.ph, 1
  call void @_ZdlPvm(ptr noundef %i.pf, i64 noundef %i.pi) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i158: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i157
  %i.pj = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.pk = icmp eq ptr %i.pj, %i.of
  br i1 %i.pk, label %__cxx_global_var_init.17.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i158
  %i.pl = load i64, ptr %i.of, align 8, !tbaa !26
  %i.pm = add i64 %i.pl, 1
  call void @_ZdlPvm(ptr noundef %i.pj, i64 noundef %i.pm) #33
  br label %__cxx_global_var_init.17.exit

bb.bk:                                            ; preds = %__cxx_global_var_init.15.exit
  %i.pn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i141

bb.bl:                                            ; preds = %bb.bi, %bb.bh, %bb.bg, %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i149
  %i.po = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pp = load ptr, ptr %4, align 8, !tbaa !25    ; 2 uses
  %i.pq = icmp eq ptr %i.pp, %i.on
  br i1 %i.pq, label %_ZN7testing8internal12CodeLocationD2Ev.exit15.i151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i150: ; preds = %bb.bl
  %i.pr = load i64, ptr %i.on, align 8, !tbaa !26
  %i.ps = add i64 %i.pr, 1
  call void @_ZdlPvm(ptr noundef %i.pp, i64 noundef %i.ps) #33
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit15.i151

_ZN7testing8internal12CodeLocationD2Ev.exit15.i151: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i150
  %i.pt = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.pu = icmp eq ptr %i.pt, %i.oi
  br i1 %i.pu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i152: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit15.i151
  %i.pv = load i64, ptr %i.oi, align 8, !tbaa !26
  %i.pw = add i64 %i.pv, 1
  call void @_ZdlPvm(ptr noundef %i.pt, i64 noundef %i.pw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i141: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit15.i151, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i152, %bb.bk
  %.pn.i142 = phi { ptr, i32 } [ %i.pn, %bb.bk ], [ %i.po, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i152 ], [ %i.po, %_ZN7testing8internal12CodeLocationD2Ev.exit15.i151 ] ; 2 uses
  %i.px = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.py = icmp eq ptr %i.px, %i.of
  br i1 %i.py, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i141
  %i.pz = load i64, ptr %i.of, align 8, !tbaa !26
  br label %common.resume.sink.split

__cxx_global_var_init.17.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i158, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i159
  store ptr %i.pa, ptr @_ZN12_GLOBAL__N_129StrippingTest_CheckStrOp_Test10test_info_E, align 8, !tbaa !374
  %i.qa = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN12_GLOBAL__N_129StrippingTest_CheckStrOp_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.qb, ptr %0, align 8, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.qb, ptr noundef nonnull align 1 dereferenceable(13) @.str, i64 13, i1 false)
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 13, ptr %i.qc, align 8, !tbaa !51
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 0, ptr %i.qd, align 1, !tbaa !26
  %i.qe = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  store ptr %i.qe, ptr %2, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 64, ptr %i.a, align 8, !tbaa !97
  %i.qf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc7.i168 unwind label %bb.br ; 3 uses

.noexc7.i168:                                     ; preds = %__cxx_global_var_init.17.exit
  store ptr %i.qf, ptr %2, align 8, !tbaa !25
  %i.qg = load i64, ptr %i.a, align 8, !tbaa !97  ; 3 uses
  store i64 %i.qg, ptr %i.qe, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.qf, ptr noundef nonnull align 1 dereferenceable(64) @.str.2, i64 64, i1 false)
  %i.qh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 %i.qg, ptr %i.qh, align 8, !tbaa !51
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qf, i64 %i.qg
  store i8 0, ptr %i.qi, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.qj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.qj, ptr %1, align 8, !tbaa !74
  %i.qk = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %i.ql = icmp eq ptr %i.qk, %i.qe
  br i1 %i.ql, label %bb.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i169

bb.bm:                                            ; preds = %.noexc7.i168
  %i.qm = load i64, ptr %i.qh, align 8, !tbaa !51 ; 3 uses
  %i.qn = icmp ult i64 %i.qm, 16
  call void @llvm.assume(i1 %i.qn)
  %i.qo = add nuw nsw i64 %i.qm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.qj, ptr noundef nonnull align 8 dereferenceable(1) %i.qe, i64 %i.qo, i1 false)
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i169: ; preds = %.noexc7.i168
  store ptr %i.qk, ptr %1, align 8, !tbaa !25
  %i.qp = load i64, ptr %i.qe, align 8, !tbaa !26
  store i64 %i.qp, ptr %i.qj, align 8, !tbaa !26
  %.pre.i170 = load i64, ptr %i.qh, align 8, !tbaa !51
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i171

_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i171: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i169, %bb.bm
  %i.qq = phi i64 [ %i.qm, %bb.bm ], [ %.pre.i170, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i169 ]
  %i.qr = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.qq, ptr %i.qr, align 8, !tbaa !51
  store ptr %i.qe, ptr %2, align 8, !tbaa !25
  store i64 0, ptr %i.qh, align 8, !tbaa !51
  store i8 0, ptr %i.qe, align 8, !tbaa !26
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 475, ptr %i.qs, align 8, !tbaa !372
  %i.qt = invoke fastcc noundef ptr @_ZN7testing8internal16SuiteApiResolverIN12_GLOBAL__N_113StrippingTestEE19GetSetUpCaseOrSuiteEPKci(i32 noundef 475)
          to label %bb.bn unwind label %bb.bs

bb.bn:                                            ; preds = %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i171
  %i.qu = invoke fastcc noundef ptr @_ZN7testing8internal16SuiteApiResolverIN12_GLOBAL__N_113StrippingTestEE22GetTearDownCaseOrSuiteEPKci(i32 noundef 475)
          to label %bb.bo unwind label %bb.bs

bb.bo:                                            ; preds = %bb.bn
  %i.qv = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #34
          to label %bb.bp unwind label %bb.bs     ; 2 uses

bb.bp:                                            ; preds = %bb.bo
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_126StrippingTest_CheckOk_TestEEE, i64 16), ptr %i.qv, align 8, !tbaa !19
  %i.qw = invoke noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS8_S8_NS0_12CodeLocationEPKvPFvvESD_PNS0_15TestFactoryBaseE(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.20, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 %1, ptr noundef nonnull @_ZN7testing8internal12TypeIdHelperIN12_GLOBAL__N_113StrippingTestEE6dummy_E, ptr noundef %i.qt, ptr noundef %i.qu, ptr noundef nonnull %i.qv)
          to label %bb.bq unwind label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.qx = load ptr, ptr %1, align 8, !tbaa !25    ; 2 uses
  %i.qy = icmp eq ptr %i.qx, %i.qj
  br i1 %i.qy, label %_ZN7testing8internal12CodeLocationD2Ev.exit.i178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i177: ; preds = %bb.bq
  %i.qz = load i64, ptr %i.qj, align 8, !tbaa !26
  %i.ra = add i64 %i.qz, 1
  call void @_ZdlPvm(ptr noundef %i.qx, i64 noundef %i.ra) #33
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit.i178

_ZN7testing8internal12CodeLocationD2Ev.exit.i178: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i177
  %i.rb = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %i.rc = icmp eq ptr %i.rb, %i.qe
  br i1 %i.rc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i179: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i178
  %i.rd = load i64, ptr %i.qe, align 8, !tbaa !26
  %i.re = add i64 %i.rd, 1
  call void @_ZdlPvm(ptr noundef %i.rb, i64 noundef %i.re) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i180: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i178, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i179
  %i.rf = load ptr, ptr %0, align 8, !tbaa !25    ; 2 uses
  %i.rg = icmp eq ptr %i.rf, %i.qb
  br i1 %i.rg, label %__cxx_global_var_init.19.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i181: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i180
  %i.rh = load i64, ptr %i.qb, align 8, !tbaa !26
  %i.ri = add i64 %i.rh, 1
  call void @_ZdlPvm(ptr noundef %i.rf, i64 noundef %i.ri) #33
  br label %__cxx_global_var_init.19.exit

bb.br:                                            ; preds = %__cxx_global_var_init.17.exit
  %i.rj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i163

bb.bs:                                            ; preds = %bb.bp, %bb.bo, %bb.bn, %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i171
  %i.rk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rl = load ptr, ptr %1, align 8, !tbaa !25    ; 2 uses
  %i.rm = icmp eq ptr %i.rl, %i.qj
  br i1 %i.rm, label %_ZN7testing8internal12CodeLocationD2Ev.exit15.i173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i172: ; preds = %bb.bs
  %i.rn = load i64, ptr %i.qj, align 8, !tbaa !26
  %i.ro = add i64 %i.rn, 1
  call void @_ZdlPvm(ptr noundef %i.rl, i64 noundef %i.ro) #33
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit15.i173

_ZN7testing8internal12CodeLocationD2Ev.exit15.i173: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i172
  %i.rp = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %i.rq = icmp eq ptr %i.rp, %i.qe
  br i1 %i.rq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i174: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit15.i173
  %i.rr = load i64, ptr %i.qe, align 8, !tbaa !26
  %i.rs = add i64 %i.rr, 1
  call void @_ZdlPvm(ptr noundef %i.rp, i64 noundef %i.rs) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i163: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit15.i173, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i174, %bb.br
  %.pn.i164 = phi { ptr, i32 } [ %i.rj, %bb.br ], [ %i.rk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i174 ], [ %i.rk, %_ZN7testing8internal12CodeLocationD2Ev.exit15.i173 ] ; 2 uses
  %i.rt = load ptr, ptr %0, align 8, !tbaa !25    ; 2 uses
  %i.ru = icmp eq ptr %i.rt, %i.qb
  br i1 %i.ru, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i165: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i163
  %i.rv = load i64, ptr %i.qb, align 8, !tbaa !26
  br label %common.resume.sink.split

__cxx_global_var_init.19.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i180, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i181
  store ptr %i.qw, ptr @_ZN12_GLOBAL__N_126StrippingTest_CheckOk_Test10test_info_E, align 8, !tbaa !374
  %i.rw = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN12_GLOBAL__N_126StrippingTest_CheckOk_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #28

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #31 = { nounwind }
attributes #32 = { noreturn nounwind }
attributes #33 = { builtin nounwind }
attributes #34 = { builtin allocsize(0) }
attributes #35 = { noreturn }
attributes #36 = { cold }
attributes #37 = { nounwind willreturn memory(none) }
attributes #38 = { cold nounwind }
attributes #39 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{null, null, null}
!1 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIP8_IO_FILEED2Ev, null}
!2 = distinct !{null}
!3 = distinct !{null, null, null, null}
!4 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, null}
!5 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKSt10unique_ptrI8_IO_FILESt8functionIFvPS3_EEEED2Ev, null}
!6 = distinct !{null}
!7 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKP8_IO_FILEED2Ev, null}
!8 = distinct !{null}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!13 = !{!"Simple C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!"__libc_errno", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"vtable pointer", !13, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"any pointer", !14, i64 0}
!21 = !{!"p1 omnipotent char", !20, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !21, i64 0}
!23 = !{!"long", !14, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0, !23, i64 8, !14, i64 16}
!25 = !{!24, !21, i64 0}
!26 = !{!14, !14, i64 0}
!27 = !{!"bool", !14, i64 0}
!28 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0}
!29 = !{!"_ZTSSt10_Head_baseILm0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE", !28, i64 0}
!30 = !{!"_ZTSSt11_Tuple_implILm0EJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !29, i64 0}
!31 = !{!"_ZTSSt5tupleIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !30, i64 0}
!32 = !{!"_ZTSSt15__uniq_ptr_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !31, i64 0}
!33 = !{!"_ZTSSt15__uniq_ptr_dataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_ELb1ELb1EE", !32, i64 0}
!34 = !{!"_ZTSSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !33, i64 0}
!35 = !{!"_ZTSN7testing15AssertionResultE", !27, i64 0, !34, i64 8}
!36 = !{!35, !27, i64 0}
!37 = !{i8 0, i8 2}
!38 = !{}
!39 = !{!28, !28, i64 0}
!40 = !{!"p1 _ZTSNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE", !20, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!"_ZTSN7testing25MatcherDescriberInterfaceE"}
!43 = !{!"p1 _ZTSN7testing8internal11MatcherBaseIP8_IO_FILEE6VTableE", !20, i64 0}
!44 = !{!"_ZTSN7testing8internal11MatcherBaseIP8_IO_FILEEE", !42, i64 0, !43, i64 8, !14, i64 16}
!45 = !{!44, !43, i64 8}
!46 = !{!"p1 _ZTS8_IO_FILE", !20, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!"_ZTSN7testing8internal11MatcherBaseIP8_IO_FILEE6VTableE", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24}
!49 = !{!48, !20, i64 24}
!50 = !{ptr @_ZN7testing8internal11MatcherBaseIP8_IO_FILEED2Ev}
!51 = !{!24, !23, i64 8}
!52 = !{!"_ZTSSt14_Function_base", !14, i64 0, !20, i64 16}
!53 = !{!52, !20, i64 16}
!54 = !{!"_ZTSSt8functionIFvP8_IO_FILEEE", !52, i64 0, !20, i64 24}
!55 = !{!54, !20, i64 24}
!56 = !{!"p1 _ZTSN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6VTableE", !20, i64 0}
!57 = !{!"_ZTSN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !42, i64 0, !56, i64 8, !14, i64 16}
!58 = !{!57, !56, i64 8}
!59 = !{!"p1 _ZTSSo", !20, i64 0}
!60 = !{!"_ZTSN7testing19MatchResultListenerE", !59, i64 8}
!61 = !{!60, !59, i64 8}
!62 = !{!"_ZTSN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6VTableE", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24}
!63 = !{!62, !20, i64 0}
!64 = !{!"_ZTSSt13_Ios_Fmtflags", !14, i64 0}
!65 = !{!"_ZTSSt12_Ios_Iostate", !14, i64 0}
!66 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !20, i64 0}
!67 = !{!"_ZTSNSt8ios_base6_WordsE", !20, i64 0, !23, i64 8}
!68 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !20, i64 0}
!69 = !{!"p1 _ZTSNSt6locale5_ImplE", !20, i64 0}
!70 = !{!"_ZTSSt6locale", !69, i64 0}
!71 = !{!"_ZTSSt8ios_base", !23, i64 8, !23, i64 16, !64, i64 24, !65, i64 28, !65, i64 32, !66, i64 40, !67, i64 48, !14, i64 64, !15, i64 192, !68, i64 200, !70, i64 208}
!72 = !{!71, !65, i64 32}
!73 = !{!62, !20, i64 8}
!74 = !{!22, !21, i64 0}
!75 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !70, i64 56}
!76 = !{!75, !21, i64 40}
!77 = !{!75, !21, i64 32}
!78 = !{ptr @_ZN7testing25StringMatchResultListenerD2Ev}
!79 = !{!"_ZTSSi", !23, i64 8}
!80 = !{!79, !23, i64 8}
!81 = !{!62, !20, i64 24}
!82 = !{ptr @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev}
!83 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!84 = !{!15, !15, i64 0}
!85 = !{!"p1 _ZTSN7testing8internal11MatcherBaseIRKSt10unique_ptrI8_IO_FILESt8functionIFvPS3_EEEE6VTableE", !20, i64 0}
!86 = !{!"_ZTSN7testing8internal11MatcherBaseIRKSt10unique_ptrI8_IO_FILESt8functionIFvPS3_EEEEE", !42, i64 0, !85, i64 8, !14, i64 16}
!87 = !{!86, !85, i64 8}
!88 = !{!"_ZTSSt13__atomic_baseIiE", !15, i64 0}
!89 = !{!88, !15, i64 0}
!90 = !{!"p1 _ZTSN7testing16MatcherInterfaceIRKSt10unique_ptrI8_IO_FILESt8functionIFvPS2_EEEEE", !20, i64 0}
!91 = !{!90, !90, i64 0}
!92 = !{!"_ZTSN7testing8internal11MatcherBaseIRKSt10unique_ptrI8_IO_FILESt8functionIFvPS3_EEEE6VTableE", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24}
!93 = !{!92, !20, i64 0}
!94 = !{!92, !20, i64 8}
!95 = !{!92, !20, i64 24}
!96 = !{ptr @_ZN7testing8internal11MatcherBaseIRKSt10unique_ptrI8_IO_FILESt8functionIFvPS3_EEEED2Ev}
!97 = !{!23, !23, i64 0}
!98 = !{!"p1 _ZTSN7testing16MatcherInterfaceIP8_IO_FILEEE", !20, i64 0}
!99 = !{!98, !98, i64 0}
!100 = !{!"p1 _ZTSN7testing8internal11MatcherBaseIRKP8_IO_FILEE6VTableE", !20, i64 0}
!101 = !{!"_ZTSN7testing8internal11MatcherBaseIRKP8_IO_FILEEE", !42, i64 0, !100, i64 8, !14, i64 16}
!102 = !{!101, !100, i64 8}
!103 = !{!"p1 _ZTSN7testing16MatcherInterfaceIRKP8_IO_FILEEE", !20, i64 0}
!104 = !{!103, !103, i64 0}
!105 = !{!"_ZTSN7testing8internal11MatcherBaseIRKP8_IO_FILEE6VTableE", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24}
!106 = !{!105, !20, i64 0}
!107 = !{!105, !20, i64 8}
!108 = !{ptr @_ZNK7testing8internal11MatcherBaseIRKP8_IO_FILEE10DescribeToEPSo}
!109 = !{!105, !20, i64 24}
!110 = !{ptr @_ZN7testing8internal11MatcherBaseIRKP8_IO_FILEED2Ev}
!111 = !{!21, !21, i64 0}
!112 = !{!"llvm.loop.mustprogress"}
!113 = !{!48, !20, i64 8}
!114 = !{!27, !27, i64 0}
!115 = !{!"_ZTSN4absl12lts_202605266StatusE", !23, i64 0}
!116 = !{!115, !23, i64 0}
!117 = distinct !{!117, i1 false, !"_ZN7testing8internal33MakePredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_"}
!118 = distinct !{!118, !117, !"_ZN7testing8internal33MakePredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_: argument 0"}
!119 = distinct !{!119, i1 false, !"_ZN7testing3NotINS_7MatcherIP8_IO_FILEEEEENS_8internal10NotMatcherIT_EES7_"}
!120 = distinct !{!120, !119, !"_ZN7testing3NotINS_7MatcherIP8_IO_FILEEEEENS_8internal10NotMatcherIT_EES7_: argument 0"}
!121 = distinct !{!121, i1 false, !"_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_10NotMatcherINS_7MatcherIP8_IO_FILEEEEEEENS0_29PredicateFormatterFromMatcherIT_EES9_"}
!122 = distinct !{!122, !121, !"_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_10NotMatcherINS_7MatcherIP8_IO_FILEEEEEEENS0_29PredicateFormatterFromMatcherIT_EES9_: argument 0"}
!123 = !{!118}
!124 = !{!120}
!125 = !{!122}
!126 = distinct !{!126, i1 false, !"_ZN7testing15SafeMatcherCastIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8internal9EqMatcherIPKcEEEENS_7MatcherIT_EERKT0_"}
!127 = distinct !{!127, !126, !"_ZN7testing15SafeMatcherCastIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8internal9EqMatcherIPKcEEEENS_7MatcherIT_EERKT0_: argument 0"}
!128 = distinct !{!128, i1 false, !"_ZN7testing11MatcherCastIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8internal9EqMatcherIPKcEEEENS_7MatcherIT_EERKT0_"}
!129 = distinct !{!129, !128, !"_ZN7testing11MatcherCastIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8internal9EqMatcherIPKcEEEENS_7MatcherIT_EERKT0_: argument 0"}
!130 = distinct !{!130, i1 false, !"_ZN7testing8internal15MatcherCastImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_9EqMatcherIPKcEEE4CastERKSD_"}
!131 = distinct !{!131, !130, !"_ZN7testing8internal15MatcherCastImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_9EqMatcherIPKcEEE4CastERKSD_: argument 0"}
!132 = distinct !{!132, i1 false, !"_ZN7testing8internal15MatcherCastImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_9EqMatcherIPKcEEE8CastImplILb0EEENS_7MatcherIS9_EERKSD_St17integral_constantIbLb1EESK_IbXT_EE"}
end_hunk_1
begin_hunk_2_@llvm.umax.i64
!168 = distinct !{!168, i1 false, !"_ZN7testing8internal15MatcherCastImplIRKSt10unique_ptrI8_IO_FILESt8functionIFvPS3_EEENS_18PolymorphicMatcherINS0_14NotNullMatcherEEEE8CastImplILb0EEENS_7MatcherISA_EERKSD_St17integral_constantIbLb1EESK_IbXT_EE"}
!169 = distinct !{!169, !168, !"_ZN7testing8internal15MatcherCastImplIRKSt10unique_ptrI8_IO_FILESt8functionIFvPS3_EEENS_18PolymorphicMatcherINS0_14NotNullMatcherEEEE8CastImplILb0EEENS_7MatcherISA_EERKSD_St17integral_constantIbLb1EESK_IbXT_EE: argument 0"}
!170 = distinct !{!170, i1 false, !"_ZNK7testing18PolymorphicMatcherINS_8internal14NotNullMatcherEEcvNS_7MatcherIT_EEIRKSt10unique_ptrI8_IO_FILESt8functionIFvPS9_EEEEEv"}
!171 = distinct !{!171, !170, !"_ZNK7testing18PolymorphicMatcherINS_8internal14NotNullMatcherEEcvNS_7MatcherIT_EEIRKSt10unique_ptrI8_IO_FILESt8functionIFvPS9_EEEEEv: argument 0"}
!172 = distinct !{null}
!173 = distinct !{!173, i1 false, !"_ZNK7testing25StringMatchResultListener3strB5cxx11Ev"}
!174 = distinct !{!174, !173, !"_ZNK7testing25StringMatchResultListener3strB5cxx11Ev: argument 0"}
!175 = distinct !{!175, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!176 = distinct !{!176, !175, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!177 = distinct !{!177, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!178 = distinct !{!178, !177, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!179 = distinct !{!179, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!180 = distinct !{!180, !179, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!181 = distinct !{!181, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!182 = distinct !{!182, !181, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!183 = !{!163}
!184 = !{!165}
!185 = !{!167}
!186 = !{!169}
!187 = !{!171}
!188 = !{!171, !169, !167, !165, !163}
!189 = !{ptr @_ZNK7testing8internal11MatcherBaseIRKSt10unique_ptrI8_IO_FILESt8functionIFvPS3_EEEE10DescribeToEPSo}
!190 = !{!174}
!191 = !{!176}
!192 = !{!178}
!193 = !{!178, !176, !174}
!194 = !{!180}
!195 = !{!182}
!196 = !{!182, !180}
!197 = distinct !{!197, i1 false, !"_ZN7testing11MakeMatcherIP8_IO_FILEEENS_7MatcherIT_EEPKNS_16MatcherInterfaceIS4_EE"}
!198 = distinct !{!198, !197, !"_ZN7testing11MakeMatcherIP8_IO_FILEEENS_7MatcherIT_EEPKNS_16MatcherInterfaceIS4_EE: argument 0"}
!199 = !{!198}
!200 = distinct !{!200, i1 false, !"_ZN7testing15SafeMatcherCastIRKP8_IO_FILES2_EENS_7MatcherIT_EERKNS5_IT0_EE"}
!201 = distinct !{!201, !200, !"_ZN7testing15SafeMatcherCastIRKP8_IO_FILES2_EENS_7MatcherIT_EERKNS5_IT0_EE: argument 0"}
!202 = distinct !{!202, i1 false, !"_ZN7testing11MatcherCastIRKP8_IO_FILENS_7MatcherIS2_EEEENS5_IT_EERKT0_"}
!203 = distinct !{!203, !202, !"_ZN7testing11MatcherCastIRKP8_IO_FILENS_7MatcherIS2_EEEENS5_IT_EERKT0_: argument 0"}
!204 = distinct !{!204, i1 false, !"_ZN7testing8internal15MatcherCastImplIRKP8_IO_FILENS_7MatcherIS3_EEE4CastERKS7_"}
!205 = distinct !{!205, !204, !"_ZN7testing8internal15MatcherCastImplIRKP8_IO_FILENS_7MatcherIS3_EEE4CastERKS7_: argument 0"}
!206 = distinct !{!206, i1 false, !"_ZNK7testing25StringMatchResultListener3strB5cxx11Ev"}
!207 = distinct !{!207, !206, !"_ZNK7testing25StringMatchResultListener3strB5cxx11Ev: argument 0"}
!208 = distinct !{!208, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!209 = distinct !{!209, !208, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!210 = distinct !{!210, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!211 = distinct !{!211, !210, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!212 = distinct !{!212, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!213 = distinct !{!213, !212, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!214 = distinct !{!214, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!215 = distinct !{!215, !214, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!216 = !{!201}
!217 = !{!203}
!218 = !{!205}
!219 = !{!205, !203, !201}
!220 = !{!207}
!221 = !{!209}
!222 = !{!211}
!223 = !{!211, !209, !207}
!224 = !{!213}
!225 = !{!215}
!226 = !{!215, !213}
!227 = distinct !{null}
!228 = distinct !{!228, i1 false, !"_ZNK7testing25StringMatchResultListener3strB5cxx11Ev"}
!229 = distinct !{!229, !228, !"_ZNK7testing25StringMatchResultListener3strB5cxx11Ev: argument 0"}
!230 = distinct !{!230, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!231 = distinct !{!231, !230, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!232 = distinct !{!232, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!233 = distinct !{!233, !232, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!234 = distinct !{!234, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!235 = distinct !{!235, !234, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!236 = distinct !{!236, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!237 = distinct !{!237, !236, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!238 = !{!229}
!239 = !{!231}
!240 = !{!233}
!241 = !{!233, !231, !229}
!242 = !{!235}
!243 = !{!237}
!244 = !{!237, !235}
!245 = distinct !{null, null}
!246 = distinct !{null}
!247 = distinct !{!247, i1 false, !"_ZNK7testing25StringMatchResultListener3strB5cxx11Ev"}
!248 = distinct !{!248, !247, !"_ZNK7testing25StringMatchResultListener3strB5cxx11Ev: argument 0"}
!249 = distinct !{!249, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!250 = distinct !{!250, !249, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!251 = distinct !{!251, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!252 = distinct !{!252, !251, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!253 = !{!248}
!254 = !{!250}
!255 = !{!252}
!256 = !{!252, !250, !248}
!257 = distinct !{null}
!258 = !{!"_ZTSSt9type_info", !21, i64 8}
!259 = !{!258, !21, i64 8}
!260 = distinct !{!260, !112}
!261 = distinct !{!261, i1 false, !"_ZSt11make_uniqueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!262 = distinct !{!262, !261, !"_ZSt11make_uniqueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!263 = !{!262}
!264 = !{!20, !20, i64 0}
!265 = distinct !{null, null}
!266 = distinct !{null}
!267 = distinct !{!267, i1 false, !"_ZNK7testing25StringMatchResultListener3strB5cxx11Ev"}
!268 = distinct !{!268, !267, !"_ZNK7testing25StringMatchResultListener3strB5cxx11Ev: argument 0"}
!269 = distinct !{!269, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!270 = distinct !{!270, !269, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!271 = distinct !{!271, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!272 = distinct !{!272, !271, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!273 = !{!268}
!274 = !{!270}
!275 = !{!272}
!276 = !{!272, !270, !268}
!277 = distinct !{null}
!278 = distinct !{null, null, null}
!279 = distinct !{null, null, null}
!280 = distinct !{!280, !112}
!281 = distinct !{!281, !112}
!282 = distinct !{null, null}
!283 = distinct !{!283, i1 false, !"_ZNK7testing25StringMatchResultListener3strB5cxx11Ev"}
!284 = distinct !{!284, !283, !"_ZNK7testing25StringMatchResultListener3strB5cxx11Ev: argument 0"}
!285 = distinct !{!285, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!286 = distinct !{!286, !285, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!287 = distinct !{!287, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!288 = distinct !{!288, !287, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!289 = !{!284}
!290 = !{!286}
!291 = !{!288}
!292 = !{!288, !286, !284}
!293 = distinct !{null}
!294 = distinct !{ptr @_ZN7testing8internal15MatcherCastImplIRKP8_IO_FILENS_7MatcherIS3_EEE4ImplD2Ev, ptr @_ZN7testing8internal11MatcherBaseIP8_IO_FILEED2Ev, null}
!295 = !{ptr @_ZN7testing8internal15MatcherCastImplIRKP8_IO_FILENS_7MatcherIS3_EEE4ImplD2Ev, ptr @_ZN7testing8internal11MatcherBaseIP8_IO_FILEED2Ev}
!296 = !{ptr @_ZNK7testing8internal11MatcherBaseIP8_IO_FILEE10DescribeToEPSo}
!297 = !{ptr @_ZNK7testing8internal11MatcherBaseIP8_IO_FILEE18DescribeNegationToEPSo}
!298 = distinct !{null}
!299 = !{!48, !20, i64 0}
!300 = distinct !{null, null, null}
!301 = distinct !{!301, i1 false, !"_ZN7testing15SafeMatcherCastIRKP8_IO_FILES2_EENS_7MatcherIT_EERKNS5_IT0_EE"}
!302 = distinct !{!302, !301, !"_ZN7testing15SafeMatcherCastIRKP8_IO_FILES2_EENS_7MatcherIT_EERKNS5_IT0_EE: argument 0"}
!303 = distinct !{!303, i1 false, !"_ZN7testing11MatcherCastIRKP8_IO_FILENS_7MatcherIS2_EEEENS5_IT_EERKT0_"}
!304 = distinct !{!304, !303, !"_ZN7testing11MatcherCastIRKP8_IO_FILENS_7MatcherIS2_EEEENS5_IT_EERKT0_: argument 0"}
!305 = distinct !{!305, i1 false, !"_ZN7testing8internal15MatcherCastImplIRKP8_IO_FILENS_7MatcherIS3_EEE4CastERKS7_"}
!306 = distinct !{!306, !305, !"_ZN7testing8internal15MatcherCastImplIRKP8_IO_FILENS_7MatcherIS3_EEE4CastERKS7_: argument 0"}
!307 = !{!302}
!308 = !{!304}
!309 = !{!306}
!310 = !{!306, !304, !302}
!311 = distinct !{ptr @_ZN7testing8internal14NotMatcherImplIRKP8_IO_FILEED2Ev, ptr @_ZN7testing8internal11MatcherBaseIRKP8_IO_FILEED2Ev, null}
!312 = !{ptr @_ZN7testing8internal14NotMatcherImplIRKP8_IO_FILEED2Ev, ptr @_ZN7testing8internal11MatcherBaseIRKP8_IO_FILEED2Ev}
!313 = !{ptr @_ZNK7testing8internal11MatcherBaseIRKP8_IO_FILEE18DescribeNegationToEPSo}
!314 = distinct !{!314, i1 false, !"_ZN7testing8internal33MakePredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_"}
!315 = distinct !{!315, !314, !"_ZN7testing8internal33MakePredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_: argument 0"}
!316 = !{!315}
!317 = distinct !{!317, i1 false, !"_ZN7testing8internal33MakePredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_"}
!318 = distinct !{!318, !317, !"_ZN7testing8internal33MakePredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_: argument 0"}
!319 = !{!318}
!320 = distinct !{!320, i1 false, !"_ZN7testing8internal33MakePredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_"}
!321 = distinct !{!321, !320, !"_ZN7testing8internal33MakePredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_: argument 0"}
!322 = !{!321}
!323 = distinct !{!323, i1 false, !"_ZN7testing8internal33MakePredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_"}
!324 = distinct !{!324, !323, !"_ZN7testing8internal33MakePredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_: argument 0"}
!325 = !{!324}
!326 = distinct !{!326, i1 false, !"_ZN7testing8internal33MakePredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_"}
!327 = distinct !{!327, !326, !"_ZN7testing8internal33MakePredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_: argument 0"}
!328 = !{!"_ZTSN4absl12lts_2026052611LogSeverityE", !14, i64 0}
!329 = !{!328, !328, i64 0}
!330 = !{!327}
!331 = distinct !{!331, i1 false, !"_ZN7testing8internal33MakePredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_"}
!332 = distinct !{!332, !331, !"_ZN7testing8internal33MakePredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_: argument 0"}
!333 = distinct !{!333, i1 false, !"_ZN7testing8internal33MakePredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_"}
!334 = distinct !{!334, !333, !"_ZN7testing8internal33MakePredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_: argument 0"}
!335 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!336 = !{!332}
!337 = !{!334}
!338 = distinct !{!338, i1 false, !"_ZN7testing8internal33MakePredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_"}
!339 = distinct !{!339, !338, !"_ZN7testing8internal33MakePredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_: argument 0"}
!340 = distinct !{!340, i1 false, !"_ZN7testing8internal33MakePredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_"}
!341 = distinct !{!341, !340, !"_ZN7testing8internal33MakePredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_: argument 0"}
!342 = distinct !{!342, i1 false, !"_ZN7testing8internal33MakePredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_"}
!343 = distinct !{!343, !342, !"_ZN7testing8internal33MakePredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_: argument 0"}
!344 = !{!339}
!345 = !{!341}
!346 = !{!343}
!347 = distinct !{!347, i1 false, !"_ZN7testing8internal33MakePredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_"}
!348 = distinct !{!348, !347, !"_ZN7testing8internal33MakePredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_: argument 0"}
!349 = distinct !{!349, i1 false, !"_ZN7testing8internal33MakePredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_"}
!350 = distinct !{!350, !349, !"_ZN7testing8internal33MakePredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_: argument 0"}
!351 = distinct !{!351, i1 false, !"_ZN7testing8internal33MakePredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_"}
!352 = distinct !{!352, !351, !"_ZN7testing8internal33MakePredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_: argument 0"}
!353 = !{!348}
!354 = !{!350}
!355 = !{!352}
!356 = distinct !{!356, i1 false, !"_ZN4absl12lts_202605268OkStatusEv"}
!357 = distinct !{!357, !356, !"_ZN4absl12lts_202605268OkStatusEv: argument 0"}
!358 = distinct !{!358, i1 false, !"_ZN4absl12lts_2026052620InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE"}
!359 = distinct !{!359, !358, !"_ZN4absl12lts_2026052620InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE: argument 0"}
!360 = distinct !{!360, i1 false, !"_ZN4absl12lts_2026052615status_internal9MakeErrorILNS0_10StatusCodeE3EEENS0_6StatusESt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE"}
!361 = distinct !{!361, !360, !"_ZN4absl12lts_2026052615status_internal9MakeErrorILNS0_10StatusCodeE3EEENS0_6StatusESt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE: argument 0"}
!362 = distinct !{!362, i1 false, !"_ZN7testing8internal33MakePredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_"}
!363 = distinct !{!363, !362, !"_ZN7testing8internal33MakePredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_: argument 0"}
!364 = distinct !{!364, i1 false, !"_ZN7testing8internal33MakePredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_"}
!365 = distinct !{!365, !364, !"_ZN7testing8internal33MakePredicateFormatterFromMatcherINS_7MatcherIP8_IO_FILEEEEENS0_29PredicateFormatterFromMatcherIT_EES7_: argument 0"}
!366 = !{!357}
!367 = !{!361, !359}
!368 = !{!"branch_weights", i32 1073206, i32 2146410442}
!369 = !{!363}
!370 = !{!365}
!371 = !{!"_ZTSN7testing8internal12CodeLocationE", !24, i64 0, !15, i64 32}
!372 = !{!371, !15, i64 32}
!373 = !{!"p1 _ZTSN7testing8TestInfoE", !20, i64 0}
!374 = !{!373, !373, i64 0}
end_hunk_2

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/time_test?download=true
inline.NumInlined: 7926
inline.NumDeleted: 2008
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12_GLOBAL__N_127Time_PrevTransitionUTC_Test8TestBodyEv:bb.a
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit: ; preds = %bb.a, %bb.l, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.ap = call noundef zeroext i1 @_ZNK4absl12lts_202605268TimeZone14PrevTransitionENS0_4TimeEPNS1_15CivilTransitionE(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 -9223372036854775808, i32 -1, ptr noundef nonnull %2) ; 2 uses
  %i.aq = zext i1 %i.ap to i8
  store i8 %i.aq, ptr %8, align 8, !tbaa !80
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !219
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 0, ptr %i.as, align 8, !tbaa !221
  br i1 %i.ap, label %bb.n, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit56

bb.n:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull @.str.545, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.85)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.at = load ptr, ptr %12, align 8, !tbaa !87
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !91
  store i64 %i.av, ptr %11, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.at, ptr %i.aw, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 1, i64 60, ptr nonnull @.str.2, i32 noundef 1289, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %11)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #26
  %i.ax = load ptr, ptr %12, align 8, !tbaa !87   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.r
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !90
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.bc = load ptr, ptr %9, align 8, !tbaa !89    ; 3 uses
  %.not.i.i43 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i43, label %bb.x, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !54
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(128) %i.bc) #26, !inline_history !0
  br label %bb.x

bb.s:                                             ; preds = %bb.n
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit51

bb.t:                                             ; preds = %bb.o
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.u:                                             ; preds = %bb.p
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.q
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #26
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn27 = phi { ptr, i32 } [ %i.bj, %bb.v ], [ %i.bi, %bb.u ] ; 2 uses
  %i.bk = load ptr, ptr %12, align 8, !tbaa !87   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.w
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !90
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.t
  %.pn27.pn = phi { ptr, i32 } [ %i.bh, %bb.t ], [ %.pn27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %.pn27, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.bp = load ptr, ptr %9, align 8, !tbaa !89    ; 3 uses
  %.not.i.i49 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i49, label %_ZN7testing7MessageD2Ev.exit51, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i50

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !54
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(128) %i.bp) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit51

_ZN7testing7MessageD2Ev.exit51:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %bb.s
  %.pn27.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.s ], [ %.pn27.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %.pn27.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i50 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.z

bb.x:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %.pr61 = load ptr, ptr %i.ar, align 8, !tbaa !83 ; 4 uses
  %.not.i.i.i52 = icmp eq ptr %.pr61, null
  br i1 %.not.i.i.i52, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit56, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bt = load ptr, ptr %.pr61, align 8, !tbaa !87 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.pr61, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i53: ; preds = %bb.y
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !90
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i54

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i54: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i53
  call void @_ZdlPvm(ptr noundef nonnull %.pr61, i64 noundef 32) #28
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit56

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit56: ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, %bb.x, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void

bb.z:                                             ; preds = %_ZN7testing7MessageD2Ev.exit51, %_ZN7testing7MessageD2Ev.exit37
  %.pn27.pn.pn.pn = phi { ptr, i32 } [ %.pn27.pn.pn, %_ZN7testing7MessageD2Ev.exit51 ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %.pn27.pn.pn.pn
}

declare noundef zeroext i1 @_ZNK4absl12lts_202605268TimeZone14PrevTransitionENS0_4TimeEPNS1_15CivilTransitionE(ptr noundef nonnull align 8 dereferenceable(8), i64, i32, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_127Time_NextTransitionNYC_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_127Time_NextTransitionNYC_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_127Time_NextTransitionNYC_TestE, i64 16), ptr %i.a, align 8, !tbaa !54
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #28
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_127Time_NextTransitionNYC_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_127Time_NextTransitionNYC_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %1 = alloca %"class.absl::lts_20260526::TimeZone", align 8 ; 4 uses
  %2 = alloca %"struct.absl::lts_20260526::TimeZone::TimeInfo", align 4 ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.absl::lts_20260526::TimeZone", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"struct.absl::lts_20260526::TimeZone::CivilTransition", align 8 ; 22 uses
  %6 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %12 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time", align 8 ; 5 uses
  %13 = alloca %"class.testing::Message", align 8 ; 7 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %16 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time", align 8 ; 5 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %22 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %25 = alloca %"class.testing::Message", align 8 ; 7 uses
  %26 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %27 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %30 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time", align 8 ; 5 uses
  %31 = alloca %"class.testing::Message", align 8 ; 7 uses
  %32 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %33 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %34 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time", align 8 ; 5 uses
  %35 = alloca %"class.testing::Message", align 8 ; 7 uses
  %36 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %37 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %38 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time", align 8 ; 5 uses
  %39 = alloca %"class.testing::Message", align 8 ; 7 uses
  %40 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 16, ptr %i.a, align 8, !tbaa !103
  %i.c = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.b     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.c, ptr %4, align 8, !tbaa !87
  %i.d = load i64, ptr %i.a, align 8, !tbaa !103  ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.c, ptr noundef nonnull align 1 dereferenceable(16) @.str.71, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !91
  %i.f = load ptr, ptr %4, align 8, !tbaa !87
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.h = invoke ptr @_ZN4absl12lts_2026052613time_internal12LoadTimeZoneERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.a unwind label %bb.c

bb.a:                                             ; preds = %.noexc
  store ptr %i.h, ptr %3, align 8
  %i.i = load ptr, ptr %4, align 8, !tbaa !87     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.b, align 8, !tbaa !90
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i64 1970, ptr %5, align 8, !tbaa !224
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 9 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 11
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.m, align 8, !tbaa !90
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  store i8 0, ptr %i.q, align 4, !tbaa !225
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store i64 1970, ptr %i.r, align 8, !tbaa !224
  %41 = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  %42 = getelementptr inbounds nuw i8, ptr %5, i64 25
  %43 = getelementptr inbounds nuw i8, ptr %5, i64 26
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 27
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %41, align 8, !tbaa !90
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 4 uses
  store i8 0, ptr %i.t, align 4, !tbaa !225
  %i.u = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 2018, i8 noundef signext 6, i64 noundef 30, i64 noundef 0, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #26 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i64 } %i.u, 1
  %.fca.0.extract.i = extractvalue { i64, i64 } %i.u, 0
  %.sroa.024.0.copyload = load ptr, ptr %3, align 8, !tbaa !215
  %.sroa.2342.8.insert.ext = and i64 %.fca.1.extract.i.i, 1099511627775
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %.sroa.024.0.copyload, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZNK4absl12lts_202605268TimeZone2AtENS0_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20260526::TimeZone::TimeInfo") align 4 %2, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %.fca.0.extract.i, i64 %.sroa.2342.8.insert.ext) #26
  %i.v = load i32, ptr %2, align 4, !tbaa !218
  %i.w = icmp eq i32 %i.v, 1                      ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.05.0.copyload.i = load i64, ptr %i.x, align 4
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.3.0.copyload.i = load i32, ptr %.sroa.3.0..sroa_idx.i, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.05.0.copyload6.i = load i64, ptr %i.y, align 4
  %.sroa.3.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.3.0.copyload8.i = load i32, ptr %.sroa.3.0..sroa_idx7.i, align 4
  %.sroa.05.0.i = select i1 %i.w, i64 %.sroa.05.0.copyload.i, i64 %.sroa.05.0.copyload6.i
  %.sroa.3.0.i = select i1 %i.w, i32 %.sroa.3.0.copyload.i, i32 %.sroa.3.0.copyload8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.z = call noundef zeroext i1 @_ZNK4absl12lts_202605268TimeZone14NextTransitionENS0_4TimeEPNS1_15CivilTransitionE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 %.sroa.05.0.i, i32 %.sroa.3.0.i, ptr noundef nonnull %5) ; 2 uses
  %i.aa = zext i1 %i.z to i8
  store i8 %i.aa, ptr %6, align 8, !tbaa !80
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr null, ptr %i.ab, align 8, !tbaa !219
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 1, ptr %i.ac, align 8, !tbaa !221
  br i1 %i.z, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %bb.d

bb.b:                                             ; preds = %.noexc.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

bb.c:                                             ; preds = %.noexc
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = load ptr, ptr %4, align 8, !tbaa !87    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.b
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.c
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !90
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %bb.b
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.b ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %i.ae, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.db

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.544, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.99)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %10, align 8, !tbaa !87
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !91
  store i64 %i.al, ptr %9, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.aj, ptr %i.am, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, i64 60, ptr nonnull @.str.2, i32 noundef 1297, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %9)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #26
  %i.an = load ptr, ptr %10, align 8, !tbaa !87   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.h
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !90
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.as = load ptr, ptr %7, align 8, !tbaa !89    ; 3 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %bb.n, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !54
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(128) %i.as) #26, !inline_history !0
  br label %bb.n

bb.i:                                             ; preds = %bb.d
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit95

bb.j:                                             ; preds = %bb.e
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

bb.k:                                             ; preds = %bb.f
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn53 = phi { ptr, i32 } [ %i.az, %bb.l ], [ %i.ay, %bb.k ] ; 2 uses
  %i.ba = load ptr, ptr %10, align 8, !tbaa !87   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.m
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !90
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90, %bb.j
  %.pn53.pn = phi { ptr, i32 } [ %i.ax, %bb.j ], [ %.pn53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %.pn53, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.bf = load ptr, ptr %7, align 8, !tbaa !89    ; 3 uses
  %.not.i.i93 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i93, label %_ZN7testing7MessageD2Ev.exit95, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !54
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(128) %i.bf) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit95

_ZN7testing7MessageD2Ev.exit95:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %bb.i
  %.pn53.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.i ], [ %.pn53.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ], [ %.pn53.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.da

bb.n:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %.pr = load ptr, ptr %i.ab, align 8, !tbaa !83  ; 4 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = load ptr, ptr %.pr, align 8, !tbaa !87  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !90
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #28
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.n, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  store i64 2018, ptr %12, align 8
  %.sroa.2.0..sroa_idx.i.i98 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i40 132107, ptr %.sroa.2.0..sroa_idx.i.i98, align 8
  %i.bo = load i64, ptr %5, align 8, !tbaa !100, !noalias !1859
  %i.bp = icmp eq i64 %i.bo, 2018
  %i.bq = load <4 x i8>, ptr %i.m, align 8
  %.fr = freeze <4 x i8> %i.bq
  %i.br = load i8, ptr %i.q, align 4
  %i.bs = icmp eq i8 %i.br, 0
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %i.bt = icmp eq i32 %.fr.scalar, 132107
  %i.bu = and i1 %i.bp, %i.bt
  %op.rdx469.a = select i1 %i.bu, i1 %i.bs, i1 false
  br i1 %op.rdx469.a, label %bb.p, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i

bb.p:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i: ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11, ptr noundef nonnull @.str.546, ptr noundef nonnull @.str.547, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %5)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit: ; preds = %bb.p, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.bv = load i8, ptr %11, align 8, !tbaa !80, !range !81, !noundef !82
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.z, label %bb.q

bb.q:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.bx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !83 ; 2 uses
  %.not.i.i100 = icmp eq ptr %i.by, null
  br i1 %.not.i.i100, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !87
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.s, %bb.r
  %i.ca = phi ptr [ %i.bz, %bb.s ], [ @.str.64, %bb.r ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1298, ptr noundef %i.ca)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.cb = load ptr, ptr %13, align 8, !tbaa !89   ; 3 uses
  %.not.i.i101 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i101, label %_ZN7testing7MessageD2Ev.exit103, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102: ; preds = %bb.u
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !54
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(128) %i.cb) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit103

_ZN7testing7MessageD2Ev.exit103:                  ; preds = %bb.u, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.z

bb.v:                                             ; preds = %bb.q
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit106

bb.w:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.t
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #26
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn57 = phi { ptr, i32 } [ %i.ch, %bb.x ], [ %i.cg, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.ci = load ptr, ptr %13, align 8, !tbaa !89   ; 3 uses
  %.not.i.i104 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i104, label %_ZN7testing7MessageD2Ev.exit106, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105: ; preds = %bb.y
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !54
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(128) %i.ci) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit106

_ZN7testing7MessageD2Ev.exit106:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105, %bb.y, %bb.v
  %.pn57.pn = phi { ptr, i32 } [ %i.cf, %bb.v ], [ %.pn57, %bb.y ], [ %.pn57, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.da

bb.z:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit, %_ZN7testing7MessageD2Ev.exit103
  %i.cm = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !83 ; 4 uses
  %.not.i.i107 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i107, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !87 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.aa
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !90
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.z, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  store i64 2018, ptr %16, align 8
  %.sroa.2.0..sroa_idx.i.i110 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i40 66571, ptr %.sroa.2.0..sroa_idx.i.i110, align 8
  %i.ct = load i64, ptr %i.r, align 8, !tbaa !100, !noalias !1860
  %i.cu = icmp eq i64 %i.ct, 2018
  %i.cv = load <4 x i8>, ptr %41, align 8
  %.fr470 = freeze <4 x i8> %i.cv
  %i.cw = load i8, ptr %i.t, align 4
  %i.cx = icmp eq i8 %i.cw, 0
  %.fr470.scalar = bitcast <4 x i8> %.fr470 to i32
  %i.cy = icmp eq i32 %.fr470.scalar, 66571
  %i.cz = and i1 %i.cu, %i.cy
  %op.rdx467.a = select i1 %i.cz, i1 %i.cx, i1 false
  br i1 %op.rdx467.a, label %bb.ab, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i112

bb.ab:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit114

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i112: ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15, ptr noundef nonnull @.str.548, ptr noundef nonnull @.str.549, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit114

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit114: ; preds = %bb.ab, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.da = load i8, ptr %15, align 8, !tbaa !80, !range !81, !noundef !82
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.al, label %bb.ac

bb.ac:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit114
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.ad unwind label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.dc = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !83 ; 2 uses
  %.not.i.i115 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i115, label %_ZNK7testing15AssertionResult15failure_messageEv.exit116, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !87
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit116

_ZNK7testing15AssertionResult15failure_messageEv.exit116: ; preds = %bb.ae, %bb.ad
  %i.df = phi ptr [ %i.de, %bb.ae ], [ @.str.64, %bb.ad ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1299, ptr noundef %i.df)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit116
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %bb.af
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.dg = load ptr, ptr %17, align 8, !tbaa !89   ; 3 uses
  %.not.i.i117 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i117, label %_ZN7testing7MessageD2Ev.exit119, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118: ; preds = %bb.ag
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !54
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(128) %i.dg) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit119

_ZN7testing7MessageD2Ev.exit119:                  ; preds = %bb.ag, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.al

bb.ah:                                            ; preds = %bb.ac
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit122

bb.ai:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit116
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.af
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #26
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn60 = phi { ptr, i32 } [ %i.dm, %bb.aj ], [ %i.dl, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.dn = load ptr, ptr %17, align 8, !tbaa !89   ; 3 uses
  %.not.i.i120 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i120, label %_ZN7testing7MessageD2Ev.exit122, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121: ; preds = %bb.ak
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !54
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(128) %i.dn) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit122

_ZN7testing7MessageD2Ev.exit122:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121, %bb.ak, %bb.ah
  %.pn60.pn = phi { ptr, i32 } [ %i.dk, %bb.ah ], [ %.pn60, %bb.ak ], [ %.pn60, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.da

bb.al:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit114, %_ZN7testing7MessageD2Ev.exit119
  %i.dr = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !83 ; 4 uses
  %.not.i.i123 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i123, label %_ZN7testing15AssertionResultD2Ev.exit127, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !87 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i124: ; preds = %bb.am
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !90
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i124
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit127

_ZN7testing15AssertionResultD2Ev.exit127:         ; preds = %bb.al, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.dy = call noundef zeroext i1 @_ZNK4absl12lts_202605268TimeZone14NextTransitionENS0_4TimeEPNS1_15CivilTransitionE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 9223372036854775807, i32 -1, ptr noundef nonnull %5) ; 2 uses
  %i.dz = zext i1 %i.dy to i8
  store i8 %i.dz, ptr %19, align 8, !tbaa !80
  %i.ea = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  store ptr null, ptr %i.ea, align 8, !tbaa !219
  %i.eb = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i8 0, ptr %i.eb, align 8, !tbaa !221
  br i1 %i.dy, label %bb.an, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit146

bb.an:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit127
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull @.str.544, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.85)
          to label %bb.ap unwind label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %i.ec = load ptr, ptr %23, align 8, !tbaa !87
  %i.ed = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !91
  store i64 %i.ee, ptr %22, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %i.ec, ptr %i.ef, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 1, i64 60, ptr nonnull @.str.2, i32 noundef 1302, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %22)
          to label %bb.aq unwind label %bb.au

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.ar unwind label %bb.av

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #26
  %i.eg = load ptr, ptr %23, align 8, !tbaa !87   ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %bb.ar
  %i.ej = load i64, ptr %i.eh, align 8, !tbaa !90
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ek) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  %i.el = load ptr, ptr %20, align 8, !tbaa !89   ; 3 uses
  %.not.i.i133 = icmp eq ptr %i.el, null
  br i1 %.not.i.i133, label %bb.ax, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i134

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i134: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !54
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(128) %i.el) #26, !inline_history !0
  br label %bb.ax

bb.as:                                            ; preds = %bb.an
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit141

bb.at:                                            ; preds = %bb.ao
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

bb.au:                                            ; preds = %bb.ap
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_127Time_NextTransitionNYC_Test8TestBodyEv:.noexc.i
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i143: ; preds = %bb.ay
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !90
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i144

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i144: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i143
  call void @_ZdlPvm(ptr noundef nonnull %.pr346, i64 noundef 32) #28
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit146

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit146: ; preds = %_ZN7testing15AssertionResultD2Ev.exit127, %bb.ax, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  %i.fh = call noundef zeroext i1 @_ZNK4absl12lts_202605268TimeZone14NextTransitionENS0_4TimeEPNS1_15CivilTransitionE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 -9223372036854775808, i32 -1, ptr noundef nonnull %5) ; 2 uses
  %i.fi = zext i1 %i.fh to i8
  store i8 %i.fi, ptr %24, align 8, !tbaa !80
  %i.fj = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  store ptr null, ptr %i.fj, align 8, !tbaa !219
  %i.fk = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i8 1, ptr %i.fk, align 8, !tbaa !221
  br i1 %i.fh, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit165, label %bb.az

bb.az:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit146
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.ba unwind label %bb.be

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #26
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull @.str.544, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.99)
          to label %bb.bb unwind label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  %i.fl = load ptr, ptr %28, align 8, !tbaa !87
  %i.fm = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !91
  store i64 %i.fn, ptr %27, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %i.fl, ptr %i.fo, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %26, i32 noundef 1, i64 60, ptr nonnull @.str.2, i32 noundef 1305, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %27)
          to label %bb.bc unwind label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.bd unwind label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #26
  %i.fp = load ptr, ptr %28, align 8, !tbaa !87   ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.fr = icmp eq ptr %i.fp, %i.fq
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %bb.bd
  %i.fs = load i64, ptr %i.fq, align 8, !tbaa !90
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.ft) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  %i.fu = load ptr, ptr %25, align 8, !tbaa !89   ; 3 uses
  %.not.i.i152 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i152, label %bb.bj, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !54
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8
  call void %i.fx(ptr noundef nonnull align 8 dereferenceable(128) %i.fu) #26, !inline_history !0
  br label %bb.bj

bb.be:                                            ; preds = %bb.az
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit160

bb.bf:                                            ; preds = %bb.ba
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

bb.bg:                                            ; preds = %bb.bb
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bc
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #26
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.pn67 = phi { ptr, i32 } [ %i.gb, %bb.bh ], [ %i.ga, %bb.bg ] ; 2 uses
  %i.gc = load ptr, ptr %28, align 8, !tbaa !87   ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.ge = icmp eq ptr %i.gc, %i.gd
  br i1 %i.ge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %bb.bi
  %i.gf = load i64, ptr %i.gd, align 8, !tbaa !90
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gg) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155, %bb.bf
  %.pn67.pn = phi { ptr, i32 } [ %i.fz, %bb.bf ], [ %.pn67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155 ], [ %.pn67, %bb.bi ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  %i.gh = load ptr, ptr %25, align 8, !tbaa !89   ; 3 uses
  %.not.i.i158 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i158, label %_ZN7testing7MessageD2Ev.exit160, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i159

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !54
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(128) %i.gh) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit160

_ZN7testing7MessageD2Ev.exit160:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i159, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %bb.be
  %.pn67.pn.pn = phi { ptr, i32 } [ %i.fy, %bb.be ], [ %.pn67.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157 ], [ %.pn67.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i159 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  br label %bb.da

bb.bj:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  %.pr349 = load ptr, ptr %i.fj, align 8, !tbaa !83 ; 4 uses
  %.not.i.i.i161 = icmp eq ptr %.pr349, null
  br i1 %.not.i.i.i161, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit165, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gl = load ptr, ptr %.pr349, align 8, !tbaa !87 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.pr349, i64 16 ; 2 uses
  %i.gn = icmp eq ptr %i.gl, %i.gm
  br i1 %i.gn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i162: ; preds = %bb.bk
  %i.go = load i64, ptr %i.gm, align 8, !tbaa !90
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.gp) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i163

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i163: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i162
  call void @_ZdlPvm(ptr noundef nonnull %.pr349, i64 noundef 32) #28
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit165

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit165: ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit146, %bb.bj, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  %i.gq = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 1918, i8 noundef signext 3, i64 noundef 31, i64 noundef 0, i8 noundef signext 2, i8 noundef signext 0, i8 noundef signext 0) #26 ; 2 uses
  %.fca.1.extract.i.i262 = extractvalue { i64, i64 } %i.gq, 1 ; 5 uses
  %.fca.0.extract.i166 = extractvalue { i64, i64 } %i.gq, 0
  %i.gr = load i64, ptr %5, align 8, !tbaa !100   ; 2 uses
  %i.gs = icmp eq i64 %i.gr, %.fca.0.extract.i166
  %i.gt = load i8, ptr %i.m, align 8              ; 2 uses
  %.sroa.4.8.extract.trunc = trunc i64 %.fca.1.extract.i.i262 to i8
  %i.gu = icmp eq i8 %i.gt, %.sroa.4.8.extract.trunc
  %or.cond = select i1 %i.gs, i1 %i.gu, i1 false
  br i1 %or.cond, label %bb.bl, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread

bb.bl:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit165
  %i.gv = load i8, ptr %i.n, align 1, !tbaa !105
  %.sroa.4.9.extract.shift353 = lshr i64 %.fca.1.extract.i.i262, 8
  %.sroa.4.9.extract.trunc = trunc i64 %.sroa.4.9.extract.shift353 to i8
  %i.gw = icmp eq i8 %i.gv, %.sroa.4.9.extract.trunc
  br i1 %i.gw, label %bb.bm, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread

bb.bm:                                            ; preds = %bb.bl
  %i.gx = load i8, ptr %i.o, align 2, !tbaa !106
  %.sroa.4.10.extract.shift354 = lshr i64 %.fca.1.extract.i.i262, 16
  %.sroa.4.10.extract.trunc = trunc i64 %.sroa.4.10.extract.shift354 to i8
  %i.gy = icmp eq i8 %i.gx, %.sroa.4.10.extract.trunc
  br i1 %i.gy, label %bb.bn, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread

bb.bn:                                            ; preds = %bb.bm
  %i.gz = load i8, ptr %i.p, align 1, !tbaa !107
  %.sroa.4.11.extract.shift355 = lshr i64 %.fca.1.extract.i.i262, 24
  %.sroa.4.11.extract.trunc = trunc i64 %.sroa.4.11.extract.shift355 to i8
  %i.ha = icmp eq i8 %i.gz, %.sroa.4.11.extract.trunc
  br i1 %i.ha, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit: ; preds = %bb.bn
  %i.hb = load i8, ptr %i.q, align 4, !tbaa !108
  %.sroa.4.12.extract.shift356 = lshr i64 %.fca.1.extract.i.i262, 32
  %.sroa.4.12.extract.trunc = trunc i64 %.sroa.4.12.extract.shift356 to i8
  %i.hc = icmp eq i8 %i.hb, %.sroa.4.12.extract.trunc
  br i1 %i.hc, label %bb.bo, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread

bb.bo:                                            ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #26
  %i.hd = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 1918, i8 noundef signext 3, i64 noundef 31, i64 noundef 0, i8 noundef signext 3, i8 noundef signext 0, i8 noundef signext 0) #26 ; 2 uses
  %.fca.1.extract.i.i283 = extractvalue { i64, i64 } %i.hd, 1 ; 6 uses
  %.fca.0.extract.i170 = extractvalue { i64, i64 } %i.hd, 0 ; 2 uses
  store i64 %.fca.0.extract.i170, ptr %30, align 8
  %.sroa.2.0..sroa_idx.i.i172 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %.sroa.2.0.extract.trunc.i.i173 = trunc i64 %.fca.1.extract.i.i283 to i40
  store i40 %.sroa.2.0.extract.trunc.i.i173, ptr %.sroa.2.0..sroa_idx.i.i172, align 8
  %i.he = load i64, ptr %i.r, align 8, !tbaa !100, !noalias !1861
  %i.hf = icmp eq i64 %.fca.0.extract.i170, %i.he
  %44 = lshr i64 %.fca.1.extract.i.i283, 8
  %45 = trunc i64 %44 to i8
  %46 = lshr i64 %.fca.1.extract.i.i283, 16
  %47 = trunc i64 %46 to i8
  %48 = lshr i64 %.fca.1.extract.i.i283, 24
  %49 = trunc i64 %48 to i8
  %i.hg = lshr i64 %.fca.1.extract.i.i283, 32
  %50 = trunc i64 %i.hg to i8
  %i.hh = trunc i64 %.fca.1.extract.i.i283 to i8
  %51 = load i8, ptr %41, align 8
  %52 = icmp eq i8 %51, %i.hh
  %or.cond435 = select i1 %i.hf, i1 %52, i1 false
  %53 = load i8, ptr %42, align 1
  %54 = icmp eq i8 %53, %45
  %or.cond437 = select i1 %or.cond435, i1 %54, i1 false
  %i.hi = load i8, ptr %43, align 2
  %i.hj = icmp eq i8 %i.hi, %47
  %or.cond439 = select i1 %or.cond437, i1 %i.hj, i1 false
  %55 = load i8, ptr %i.s, align 1
  %i.hk = icmp eq i8 %55, %49
  %or.cond441 = select i1 %or.cond439, i1 %i.hk, i1 false
  %56 = load i8, ptr %i.t, align 4
  %57 = icmp eq i8 %56, %50
  %or.cond443 = select i1 %or.cond441, i1 %57, i1 false
  br i1 %or.cond443, label %bb.bp, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i174

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %29)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit176

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i174: ; preds = %bb.bo
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %29, ptr noundef nonnull @.str.550, ptr noundef nonnull @.str.549, ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit176

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit176: ; preds = %bb.bp, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  %i.hl = load i8, ptr %29, align 8, !tbaa !80, !range !81, !noundef !82
  %i.hm = trunc nuw i8 %i.hl to i1
  br i1 %i.hm, label %bb.bz, label %bb.bq

bb.bq:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit176
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.br unwind label %bb.bv

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #26
  %i.hn = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !83 ; 2 uses
  %.not.i.i177 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i177, label %_ZNK7testing15AssertionResult15failure_messageEv.exit178, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !87
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit178

_ZNK7testing15AssertionResult15failure_messageEv.exit178: ; preds = %bb.bs, %bb.br
  %i.hq = phi ptr [ %i.hp, %bb.bs ], [ @.str.64, %bb.br ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %32, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1309, ptr noundef %i.hq)
          to label %bb.bt unwind label %bb.bw

bb.bt:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit178
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.bu unwind label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  %i.hr = load ptr, ptr %31, align 8, !tbaa !89   ; 3 uses
  %.not.i.i179 = icmp eq ptr %i.hr, null
  br i1 %.not.i.i179, label %_ZN7testing7MessageD2Ev.exit181, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i180

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i180: ; preds = %bb.bu
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !54
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(128) %i.hr) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit181

_ZN7testing7MessageD2Ev.exit181:                  ; preds = %bb.bu, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i180
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  br label %bb.bz

bb.bv:                                            ; preds = %bb.bq
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit184

bb.bw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit178
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bx:                                            ; preds = %bb.bt
  %i.hx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #26
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.pn77 = phi { ptr, i32 } [ %i.hx, %bb.bx ], [ %i.hw, %bb.bw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  %i.hy = load ptr, ptr %31, align 8, !tbaa !89   ; 3 uses
  %.not.i.i182 = icmp eq ptr %i.hy, null
  br i1 %.not.i.i182, label %_ZN7testing7MessageD2Ev.exit184, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183: ; preds = %bb.by
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !54
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(128) %i.hy) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit184

_ZN7testing7MessageD2Ev.exit184:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183, %bb.by, %bb.bv
  %.pn77.pn = phi { ptr, i32 } [ %i.hv, %bb.bv ], [ %.pn77, %bb.by ], [ %.pn77, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %29) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  br label %bb.da

bb.bz:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit176, %_ZN7testing7MessageD2Ev.exit181
  %i.ic = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !83 ; 4 uses
  %.not.i.i185 = icmp eq ptr %i.id, null
  br i1 %.not.i.i185, label %_ZN7testing15AssertionResultD2Ev.exit189, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !87 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 16 ; 2 uses
  %i.ig = icmp eq ptr %i.ie, %i.if
  br i1 %i.ig, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i186: ; preds = %bb.ca
  %i.ih = load i64, ptr %i.if, align 8, !tbaa !90
  %i.ii = add i64 %i.ih, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ii) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i186
  call void @_ZdlPvm(ptr noundef nonnull %i.id, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit189

_ZN7testing15AssertionResultD2Ev.exit189:         ; preds = %bb.bz, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  br label %bb.cz

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread: ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit165, %bb.bl, %bb.bm, %bb.bn, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #26
  store i64 1883, ptr %34, align 8
  %.sroa.2.0..sroa_idx.i.i192 = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i40 249159225867, ptr %.sroa.2.0..sroa_idx.i.i192, align 8
  %i.ij = icmp eq i64 %i.gr, 1883
  %i.ik = icmp eq i8 %i.gt, 11
  %i.il = load <4 x i8>, ptr %i.n, align 1
  %.fr471 = freeze <4 x i8> %i.il
  %.fr471.scalar = bitcast <4 x i8> %.fr471 to i32
  %i.im = icmp eq i32 %.fr471.scalar, 973278226
  %i.in = and i1 %i.ij, %i.im
  %op.rdx465.a = select i1 %i.in, i1 %i.ik, i1 false
  br i1 %op.rdx465.a, label %bb.cb, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i194

bb.cb:                                            ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %33)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit196

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i194: ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %33, ptr noundef nonnull @.str.551, ptr noundef nonnull @.str.547, ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(16) %5)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit196

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit196: ; preds = %bb.cb, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i194
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26
  %i.io = load i8, ptr %33, align 8, !tbaa !80, !range !81, !noundef !82
  %i.ip = trunc nuw i8 %i.io to i1
  br i1 %i.ip, label %bb.cl, label %bb.cc

bb.cc:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit196
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.cd unwind label %bb.ch

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #26
  %i.iq = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !83 ; 2 uses
  %.not.i.i197 = icmp eq ptr %i.ir, null
  br i1 %.not.i.i197, label %_ZNK7testing15AssertionResult15failure_messageEv.exit198, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !87
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit198

_ZNK7testing15AssertionResult15failure_messageEv.exit198: ; preds = %bb.ce, %bb.cd
  %i.it = phi ptr [ %i.is, %bb.ce ], [ @.str.64, %bb.cd ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %36, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1311, ptr noundef %i.it)
          to label %bb.cf unwind label %bb.ci

bb.cf:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit198
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.cg unwind label %bb.cj

bb.cg:                                            ; preds = %bb.cf
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26
  %i.iu = load ptr, ptr %35, align 8, !tbaa !89   ; 3 uses
  %.not.i.i199 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i199, label %_ZN7testing7MessageD2Ev.exit201, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200: ; preds = %bb.cg
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !54
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8
  call void %i.ix(ptr noundef nonnull align 8 dereferenceable(128) %i.iu) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit201

_ZN7testing7MessageD2Ev.exit201:                  ; preds = %bb.cg, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  br label %bb.cl

bb.ch:                                            ; preds = %bb.cc
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit204

bb.ci:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit198
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cj:                                            ; preds = %bb.cf
  %i.ja = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #26
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.pn71 = phi { ptr, i32 } [ %i.ja, %bb.cj ], [ %i.iz, %bb.ci ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26
  %i.jb = load ptr, ptr %35, align 8, !tbaa !89   ; 3 uses
  %.not.i.i202 = icmp eq ptr %i.jb, null
  br i1 %.not.i.i202, label %_ZN7testing7MessageD2Ev.exit204, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i203

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i203: ; preds = %bb.ck
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !54
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load ptr, ptr %i.jd, align 8
  call void %i.je(ptr noundef nonnull align 8 dereferenceable(128) %i.jb) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit204

_ZN7testing7MessageD2Ev.exit204:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i203, %bb.ck, %bb.ch
  %.pn71.pn = phi { ptr, i32 } [ %i.iy, %bb.ch ], [ %.pn71, %bb.ck ], [ %.pn71, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i203 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #26
  br label %bb.da

bb.cl:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit196, %_ZN7testing7MessageD2Ev.exit201
  %i.jf = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !83 ; 4 uses
  %.not.i.i205 = icmp eq ptr %i.jg, null
  br i1 %.not.i.i205, label %_ZN7testing15AssertionResultD2Ev.exit209, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !87 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 16 ; 2 uses
  %i.jj = icmp eq ptr %i.jh, %i.ji
  br i1 %i.jj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i206: ; preds = %bb.cm
  %i.jk = load i64, ptr %i.ji, align 8, !tbaa !90
  %i.jl = add i64 %i.jk, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jl) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207: ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i206
  call void @_ZdlPvm(ptr noundef nonnull %i.jg, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit209

_ZN7testing15AssertionResultD2Ev.exit209:         ; preds = %bb.cl, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #26
  store i64 1883, ptr %38, align 8
  %.sroa.2.0..sroa_idx.i.i212 = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i40 791051, ptr %.sroa.2.0..sroa_idx.i.i212, align 8
  %i.jm = load i64, ptr %i.r, align 8, !tbaa !100, !noalias !1862
  %i.jn = icmp eq i64 %i.jm, 1883
  %i.jo = load <4 x i8>, ptr %41, align 8
  %.fr472 = freeze <4 x i8> %i.jo
  %i.jp = load i8, ptr %i.t, align 4
  %i.jq = icmp eq i8 %i.jp, 0
  %.fr472.scalar = bitcast <4 x i8> %.fr472 to i32
  %i.jr = icmp eq i32 %.fr472.scalar, 791051
  %i.js = and i1 %i.jn, %i.jr
  %op.rdx463 = select i1 %i.js, i1 %i.jq, i1 false
  br i1 %op.rdx463, label %bb.cn, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i214

bb.cn:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit209
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %37)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit216

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i214: ; preds = %_ZN7testing15AssertionResultD2Ev.exit209
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %37, ptr noundef nonnull @.str.552, ptr noundef nonnull @.str.549, ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit216

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit216: ; preds = %bb.cn, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i214
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #26
  %i.jt = load i8, ptr %37, align 8, !tbaa !80, !range !81, !noundef !82
  %i.ju = trunc nuw i8 %i.jt to i1
  br i1 %i.ju, label %bb.cx, label %bb.co

bb.co:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit216
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.cp unwind label %bb.ct

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #26
  %i.jv = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !83 ; 2 uses
  %.not.i.i217 = icmp eq ptr %i.jw, null
  br i1 %.not.i.i217, label %_ZNK7testing15AssertionResult15failure_messageEv.exit218, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !87
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit218

_ZNK7testing15AssertionResult15failure_messageEv.exit218: ; preds = %bb.cq, %bb.cp
  %i.jy = phi ptr [ %i.jx, %bb.cq ], [ @.str.64, %bb.cp ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %40, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1312, ptr noundef %i.jy)
          to label %bb.cr unwind label %bb.cu

bb.cr:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit218
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.cs unwind label %bb.cv

bb.cs:                                            ; preds = %bb.cr
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #26
  %i.jz = load ptr, ptr %39, align 8, !tbaa !89   ; 3 uses
  %.not.i.i219 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i219, label %_ZN7testing7MessageD2Ev.exit221, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i220

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i220: ; preds = %bb.cs
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !54
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8
  call void %i.kc(ptr noundef nonnull align 8 dereferenceable(128) %i.jz) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit221

_ZN7testing7MessageD2Ev.exit221:                  ; preds = %bb.cs, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i220
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #26
  br label %bb.cx

bb.ct:                                            ; preds = %bb.co
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit224

bb.cu:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit218
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cv:                                            ; preds = %bb.cr
  %i.kf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #26
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.pn74 = phi { ptr, i32 } [ %i.kf, %bb.cv ], [ %i.ke, %bb.cu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #26
  %i.kg = load ptr, ptr %39, align 8, !tbaa !89   ; 3 uses
  %.not.i.i222 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i222, label %_ZN7testing7MessageD2Ev.exit224, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i223

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i223: ; preds = %bb.cw
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !54
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8
  call void %i.kj(ptr noundef nonnull align 8 dereferenceable(128) %i.kg) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit224

_ZN7testing7MessageD2Ev.exit224:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i223, %bb.cw, %bb.ct
  %.pn74.pn = phi { ptr, i32 } [ %i.kd, %bb.ct ], [ %.pn74, %bb.cw ], [ %.pn74, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i223 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %37) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26
  br label %bb.da

bb.cx:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit216, %_ZN7testing7MessageD2Ev.exit221
  %i.kk = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !83 ; 4 uses
  %.not.i.i225 = icmp eq ptr %i.kl, null
  br i1 %.not.i.i225, label %_ZN7testing15AssertionResultD2Ev.exit229, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !87 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 16 ; 2 uses
  %i.ko = icmp eq ptr %i.km, %i.kn
  br i1 %i.ko, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i226: ; preds = %bb.cy
  %i.kp = load i64, ptr %i.kn, align 8, !tbaa !90
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %i.km, i64 noundef %i.kq) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i226
  call void @_ZdlPvm(ptr noundef nonnull %i.kl, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit229

_ZN7testing15AssertionResultD2Ev.exit229:         ; preds = %bb.cx, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26
  br label %bb.cz

bb.cz:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit229, %_ZN7testing15AssertionResultD2Ev.exit189
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.da:                                            ; preds = %_ZN7testing7MessageD2Ev.exit224, %_ZN7testing7MessageD2Ev.exit204, %_ZN7testing7MessageD2Ev.exit184, %_ZN7testing7MessageD2Ev.exit160, %_ZN7testing7MessageD2Ev.exit141, %_ZN7testing7MessageD2Ev.exit122, %_ZN7testing7MessageD2Ev.exit106, %_ZN7testing7MessageD2Ev.exit95
  %.pn77.pn.pn = phi { ptr, i32 } [ %.pn77.pn, %_ZN7testing7MessageD2Ev.exit184 ], [ %.pn74.pn, %_ZN7testing7MessageD2Ev.exit224 ], [ %.pn71.pn, %_ZN7testing7MessageD2Ev.exit204 ], [ %.pn67.pn.pn, %_ZN7testing7MessageD2Ev.exit160 ], [ %.pn63.pn.pn, %_ZN7testing7MessageD2Ev.exit141 ], [ %.pn60.pn, %_ZN7testing7MessageD2Ev.exit122 ], [ %.pn57.pn, %_ZN7testing7MessageD2Ev.exit106 ], [ %.pn53.pn.pn, %_ZN7testing7MessageD2Ev.exit95 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  %.pn77.pn.pn.pn = phi { ptr, i32 } [ %.pn77.pn.pn, %bb.da ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn77.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_127Time_PrevTransitionNYC_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_127Time_PrevTransitionNYC_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_127Time_PrevTransitionNYC_TestE, i64 16), ptr %i.a, align 8, !tbaa !54
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #28
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_127Time_PrevTransitionNYC_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_127Time_PrevTransitionNYC_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %1 = alloca %"class.absl::lts_20260526::TimeZone", align 8 ; 4 uses
  %2 = alloca %"struct.absl::lts_20260526::TimeZone::TimeInfo", align 4 ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.absl::lts_20260526::TimeZone", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"struct.absl::lts_20260526::TimeZone::CivilTransition", align 8 ; 14 uses
  %6 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %12 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time", align 8 ; 5 uses
  %13 = alloca %"class.testing::Message", align 8 ; 7 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %16 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time", align 8 ; 5 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
end_hunk_1

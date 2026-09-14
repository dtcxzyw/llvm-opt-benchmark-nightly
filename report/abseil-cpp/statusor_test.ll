Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/statusor_test?download=true
inline.NumInlined: 18650
inline.NumDeleted: 6198
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK7testing8internal29PredicateFormatterFromMatcherIN12absl_testing12lts_2026052615status_internal19IsOkAndHoldsMatcherINS_7MatcherIRKN12_GLOBAL__N_112CopyDetectorEEEEEEclIN4absl12lts_202605268StatusOrIS8_EEEENS_15AssertionResultEPKcRKT_:bb.a

bb.aw:                                            ; preds = %.body35, %bb.ab
  %.pn14.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn.pn.pn, %.body35 ], [ %i.et, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %.body

bb.ax:                                            ; preds = %bb.d, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIN12_GLOBAL__N_112CopyDetectorEEEEE, i64 16), ptr %14, align 8, !tbaa !98
  %.val.i.i = load ptr, ptr %i.k, align 8, !tbaa !251 ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i79, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIN12_GLOBAL__N_112CopyDetectorEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIN12_GLOBAL__N_112CopyDetectorEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIN12_GLOBAL__N_112CopyDetectorEEEE8IsSharedEv.exit.i.i: ; preds = %bb.ax
  %i.jg = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !258
  %.not.i.i80 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i80, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIN12_GLOBAL__N_112CopyDetectorEEEED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIN12_GLOBAL__N_112CopyDetectorEEEE8IsSharedEv.exit.i.i
  %i.ji = load ptr, ptr %i.l, align 8, !tbaa !133
  %i.jj = atomicrmw sub ptr %i.ji, i32 1 acq_rel, align 4
  %i.jk = icmp eq i32 %i.jj, 1
  br i1 %i.jk, label %bb.az, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIN12_GLOBAL__N_112CopyDetectorEEEED2Ev.exit

bb.az:                                            ; preds = %bb.ay
  %i.jl = load ptr, ptr %i.k, align 8, !tbaa !251
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 24
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !258
  %i.jo = load ptr, ptr %i.l, align 8, !tbaa !133
  invoke void %i.jn(ptr noundef %i.jo)
          to label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIN12_GLOBAL__N_112CopyDetectorEEEED2Ev.exit unwind label %bb.ba, !inline_history !15

bb.ba:                                            ; preds = %bb.az
  %i.jp = landingpad { ptr, i32 }
          catch ptr null
  %i.jq = extractvalue { ptr, i32 } %i.jp, 0
  call void @__clang_call_terminate(ptr %i.jq) #29, !inline_history !259
  unreachable

_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIN12_GLOBAL__N_112CopyDetectorEEEED2Ev.exit: ; preds = %bb.ax, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIN12_GLOBAL__N_112CopyDetectorEEEE8IsSharedEv.exit.i.i, %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  ret void

.body:                                            ; preds = %bb.e, %.body.i, %bb.aw
  %.pn21 = phi { ptr, i32 } [ %.pn14.pn.pn.pn.pn.pn, %bb.aw ], [ %i.w, %bb.e ], [ %i.s, %.body.i ]
  call void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605268StatusOrIN12_GLOBAL__N_112CopyDetectorEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  resume { ptr, i32 } %.pn21
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN7testing8internal29PredicateFormatterFromMatcherIN12absl_testing12lts_2026052615status_internal19IsOkAndHoldsMatcherINS_7MatcherIRKN12_GLOBAL__N_112CopyDetectorEEEEEED2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(24) dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEEE, i64 16), ptr %0, align 8, !tbaa !98
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !221 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZN12absl_testing12lts_2026052615status_internal19IsOkAndHoldsMatcherIN7testing7MatcherIRKN12_GLOBAL__N_112CopyDetectorEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEE8IsSharedEv.exit.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEE8IsSharedEv.exit.i.i.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !223
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN12absl_testing12lts_2026052615status_internal19IsOkAndHoldsMatcherIN7testing7MatcherIRKN12_GLOBAL__N_112CopyDetectorEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEE8IsSharedEv.exit.i.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !133
  %i.f = atomicrmw sub ptr %i.e, i32 1 acq_rel, align 4
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %_ZN12absl_testing12lts_2026052615status_internal19IsOkAndHoldsMatcherIN7testing7MatcherIRKN12_GLOBAL__N_112CopyDetectorEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !221
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !223
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !133
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN12absl_testing12lts_2026052615status_internal19IsOkAndHoldsMatcherIN7testing7MatcherIRKN12_GLOBAL__N_112CopyDetectorEEEED2Ev.exit unwind label %bb.d, !inline_history !11

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #29, !inline_history !224
  unreachable

_ZN12absl_testing12lts_2026052615status_internal19IsOkAndHoldsMatcherIN7testing7MatcherIRKN12_GLOBAL__N_112CopyDetectorEEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEE8IsSharedEv.exit.i.i.i, %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN12absl_testing12lts_2026052615status_internal19IsOkAndHoldsMatcherIN7testing7MatcherIRKN12_GLOBAL__N_112CopyDetectorEEEED2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(24) dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEEE, i64 16), ptr %0, align 8, !tbaa !98
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val.i.i = load ptr, ptr %i.a, align 8, !tbaa !221 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !223
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEE8IsSharedEv.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !133
  %i.f = atomicrmw sub ptr %i.e, i32 1 acq_rel, align 4
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !221
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !223
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !133
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEED2Ev.exit unwind label %bb.d, !inline_history !11

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #29, !inline_history !224
  unreachable

_ZN7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEED2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(24) dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEEE, i64 16), ptr %0, align 8, !tbaa !98
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !221 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEE7DestroyEv.exit, label %_ZNK7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEE8IsSharedEv.exit.i

_ZNK7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEE8IsSharedEv.exit.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !223
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEE7DestroyEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEE8IsSharedEv.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !133
  %i.f = atomicrmw sub ptr %i.e, i32 1 acq_rel, align 4
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEE7DestroyEv.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !221
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !223
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !133
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEE7DestroyEv.exit unwind label %bb.d, !inline_history !1144

_ZN7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEE7DestroyEv.exit: ; preds = %bb.b, %_ZNK7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEE8IsSharedEv.exit.i, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS_7MatcherIRKN12_GLOBAL__N_112CopyDetectorEEEEclIS4_EENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr %.8.val, i64 %.16.val, ptr noundef nonnull align 4 dereferenceable(6) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %5 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %6 = alloca %"class.testing::StringMatchResultListener", align 8 ; 20 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %10 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %11 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %12 = alloca %"class.testing::Matcher.257", align 8 ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %14 = alloca %"class.testing::StringMatchResultListener", align 8 ; 19 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  %i.a = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 10 uses
  store ptr %.8.val, ptr %i.a, align 8, !tbaa !221, !alias.scope !1172
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store i64 %.16.val, ptr %i.b, align 8, !tbaa !133, !alias.scope !1172
  %.not.i.i.i.i.i.i = icmp ne ptr %.8.val, null   ; 2 uses
  %i.c = inttoptr i64 %.16.val to ptr
  br i1 %.not.i.i.i.i.i.i, label %_ZNK7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEE8IsSharedEv.exit.i.i.i.i.i, label %_ZN7testing15SafeMatcherCastIRKN12_GLOBAL__N_112CopyDetectorES4_EENS_7MatcherIT_EERKNS5_IT0_EE.exit

_ZNK7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEE8IsSharedEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !223, !noalias !1172
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZN7testing15SafeMatcherCastIRKN12_GLOBAL__N_112CopyDetectorES4_EENS_7MatcherIT_EERKNS5_IT0_EE.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEE8IsSharedEv.exit.i.i.i.i.i
  %i.f = atomicrmw add ptr %i.c, i32 1 monotonic, align 4, !noalias !1172 ; 0 uses
  br label %_ZN7testing15SafeMatcherCastIRKN12_GLOBAL__N_112CopyDetectorES4_EENS_7MatcherIT_EERKNS5_IT0_EE.exit

_ZN7testing15SafeMatcherCastIRKN12_GLOBAL__N_112CopyDetectorES4_EENS_7MatcherIT_EERKNS5_IT0_EE.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEE8IsSharedEv.exit.i.i.i.i.i, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN12_GLOBAL__N_112CopyDetectorEEE, i64 16), ptr %12, align 8, !tbaa !98, !alias.scope !1172
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing8internal24DummyMatchResultListenerE, i64 16), ptr %11, align 8, !tbaa !98
  %i.h = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %.not.i.i.i.i.i.i)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %_ZN7testing15SafeMatcherCastIRKN12_GLOBAL__N_112CopyDetectorES4_EENS_7MatcherIT_EERKNS5_IT0_EE.exit
  br i1 %i.h, label %_ZNK7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEE15MatchAndExplainES5_PNS_19MatchResultListenerE.exit.i, label %.noexc3.i

.noexc3.i:                                        ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %10, i32 noundef 3, ptr noundef nonnull @.str.299, i32 noundef 234)
          to label %.noexc24 unwind label %bb.e

.noexc24:                                         ; preds = %.noexc3.i
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.300, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %.body.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc24
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %_ZNK7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEE15MatchAndExplainES5_PNS_19MatchResultListenerE.exit.i

.body.i:                                          ; preds = %.noexc24
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %.body

_ZNK7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEE15MatchAndExplainES5_PNS_19MatchResultListenerE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !221
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !260
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 4 dereferenceable(6) %1, ptr noundef nonnull %11)
          to label %bb.c unwind label %bb.e, !inline_history !1151

bb.c:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEE15MatchAndExplainES5_PNS_19MatchResultListenerE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %0)
          to label %bb.av unwind label %bb.e

bb.e:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEE15MatchAndExplainES5_PNS_19MatchResultListenerE.exit.i, %.noexc3.i, %_ZN7testing15SafeMatcherCastIRKN12_GLOBAL__N_112CopyDetectorES4_EENS_7MatcherIT_EERKNS5_IT0_EE.exit, %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %13)
          to label %bb.g unwind label %bb.z

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 9 uses
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.290, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.g
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.346, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28 unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.291, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.292, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !221
  %i.u = icmp ne ptr %i.t, null
  %i.v = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.u)
          to label %.noexc33 unwind label %bb.aa

.noexc33:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  br i1 %i.v, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.noexc33
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %9, i32 noundef 3, ptr noundef nonnull @.str.299, i32 noundef 246)
          to label %.noexc34 unwind label %bb.aa

.noexc34:                                         ; preds = %bb.h
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.300, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc34
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.j

bb.i:                                             ; preds = %.noexc34
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %.body35

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc33
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !221
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !261
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull %i.o, i1 noundef zeroext false)
          to label %_ZNK7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEE10DescribeToEPSo.exit unwind label %bb.aa, !inline_history !262

_ZNK7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEE10DescribeToEPSo.exit: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %14, align 8, !tbaa !98
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.ab)
          to label %_ZN7testing25StringMatchResultListenerC2Ev.exit unwind label %bb.ab

_ZN7testing25StringMatchResultListenerC2Ev.exit:  ; preds = %_ZNK7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEE10DescribeToEPSo.exit
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !176
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN7testing25StringMatchResultListenerC2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.af, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing8internal24DummyMatchResultListenerE, i64 16), ptr %5, align 8, !tbaa !98
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !221
  %i.ah = icmp ne ptr %i.ag, null
  %i.ai = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.ah)
          to label %.noexc43 unwind label %bb.ac

.noexc43:                                         ; preds = %bb.k
  br i1 %i.ai, label %_ZNK7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEE7MatchesES5_.exit.i, label %.noexc3.i.i

.noexc3.i.i:                                      ; preds = %.noexc43
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef 3, ptr noundef nonnull @.str.299, i32 noundef 234)
          to label %.noexc44 unwind label %bb.ac

.noexc44:                                         ; preds = %.noexc3.i.i
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.300, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i unwind label %.body.i.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i: ; preds = %.noexc44
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZNK7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEE7MatchesES5_.exit.i

.body.i.i:                                        ; preds = %.noexc44
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %.body45

_ZNK7testing8internal11MatcherBaseIRKN12_GLOBAL__N_112CopyDetectorEE7MatchesES5_.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i, %.noexc43
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !221
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !260
  %i.an = invoke noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 4 dereferenceable(6) %1, ptr noundef nonnull %5)
          to label %_ZN7testing8internal20MatchPrintAndExplainIKN12_GLOBAL__N_112CopyDetectorERS4_EEbRT_RKNS_7MatcherIT0_EEPNS_19MatchResultListenerE.exit unwind label %bb.ac, !inline_history !1152

bb.l:                                             ; preds = %_ZN7testing25StringMatchResultListenerC2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %6, align 8, !tbaa !98
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.ao)
          to label %.noexc48 unwind label %bb.ac

.noexc48:                                         ; preds = %bb.l
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !221
  %i.as = icmp ne ptr %i.ar, null
  %i.at = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.as)
          to label %.noexc.i unwind label %bb.p

.noexc.i:                                         ; preds = %.noexc48
  br i1 %i.at, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.299, i32 noundef 234)
          to label %.noexc23.i unwind label %bb.p

.noexc23.i:                                       ; preds = %bb.m
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.300, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i40 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i40: ; preds = %.noexc23.i
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.o

bb.n:                                             ; preds = %.noexc23.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.body.i39
end_hunk_0

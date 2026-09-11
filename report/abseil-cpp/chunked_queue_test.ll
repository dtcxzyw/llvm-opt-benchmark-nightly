Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/chunked_queue_test?download=true
inline.NumInlined: 6731
inline.NumDeleted: 2085
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE6resizeEm:bb.a
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !58 ; 4 uses
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = add i64 %i.bc, 16                       ; 2 uses
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !59 ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.ba ; 2 uses
  %i.bi = icmp ugt ptr %i.bh, %i.bg
  br i1 %i.bi, label %.lr.ph.i, label %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE15iterator_common6IncrByEm.exit.thread, !llvm.loop !794

_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE15iterator_common6IncrByEm.exit: ; preds = %bb.h
  %.not.i12 = icmp eq ptr %.sroa.021.0.copyload, null
  br i1 %.not.i12, label %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE12EraseAllFromENS3_14basic_iteratorIlEE.exit, label %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE15iterator_common6IncrByEm.exit.thread

_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE15iterator_common6IncrByEm.exit.thread: ; preds = %.lr.ph.i, %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE15iterator_common6IncrByEm.exit
  %.lcssa.i28 = phi ptr [ %i.ar, %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE15iterator_common6IncrByEm.exit ], [ %i.bh, %.lr.ph.i ] ; 2 uses
  %.sroa.10.027 = phi ptr [ %.sroa.10.0.copyload, %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE15iterator_common6IncrByEm.exit ], [ %i.bg, %.lr.ph.i ]
  %.sroa.021.026 = phi ptr [ %.sroa.021.0.copyload, %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE15iterator_common6IncrByEm.exit ], [ %i.bb, %.lr.ph.i ] ; 4 uses
  %i.bj = load ptr, ptr %.sroa.021.026, align 8, !tbaa !58 ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.bj, null           ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.021.026, i64 8
  %.in.i.i = select i1 %.not.i.i13, ptr %i.bk, ptr %i.bl
  %i.bm = load ptr, ptr %.in.i.i, align 8, !tbaa !136
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %.lcssa.i28 to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 3
  %i.br = sub i64 %.lcssa33, %i.bq
  store i64 %i.br, ptr %i.a, align 8, !tbaa !65
  br i1 %.not.i.i13, label %._crit_edge.i, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE15iterator_common6IncrByEm.exit.thread, %.lr.ph.i14
  %.013.i = phi ptr [ %i.bs, %.lr.ph.i14 ], [ %i.bj, %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE15iterator_common6IncrByEm.exit.thread ] ; 4 uses
  %i.bs = load ptr, ptr %.013.i, align 8, !tbaa !58 ; 2 uses
  %i.bt = ptrtoint ptr %.013.i to i64
  %.not.i9.i = icmp eq ptr %i.bs, null            ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.013.i, i64 8
  %.in.i10.i = select i1 %.not.i9.i, ptr %i.bk, ptr %i.bu
  %i.bv = load ptr, ptr %.in.i10.i, align 8, !tbaa !136
  %i.bw = ptrtoint ptr %i.bv to i64
  %reass.sub37 = sub i64 %i.bw, %i.bt
  %i.bx = add i64 %reass.sub37, -16
  %i.by = ashr exact i64 %i.bx, 3
  %i.bz = load i64, ptr %i.a, align 8, !tbaa !65
  %i.ca = sub i64 %i.bz, %i.by
  store i64 %i.ca, ptr %i.a, align 8, !tbaa !65
  tail call void @_ZdlPv(ptr noundef nonnull %.013.i) #22
  br i1 %.not.i9.i, label %._crit_edge.i, label %.lr.ph.i14, !llvm.loop !20

._crit_edge.i:                                    ; preds = %.lr.ph.i14, %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE15iterator_common6IncrByEm.exit.thread
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.021.026, ptr %i.cb, align 8
  store ptr %.lcssa.i28, ptr %i.bk, align 8
  %.sroa.4.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.10.027, ptr %.sroa.4.0..sroa_idx19, align 8
  store ptr null, ptr %.sroa.021.026, align 8, !tbaa !58
  br label %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE12EraseAllFromENS3_14basic_iteratorIlEE.exit

_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE12EraseAllFromENS3_14basic_iteratorIlEE.exit: ; preds = %._crit_edge.i, %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE15iterator_common6IncrByEm.exit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal18ElementsAreMatcherISt5tupleIJiiiEEEcvNS_7MatcherIT_EEIRKN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEEEEEv(ptr dead_on_unwind noalias writable sret(%"class.testing::Matcher") align 8 %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt12_Vector_baseIN7testing7MatcherIRKlEESaIS4_EE11_M_allocateEm.exit.i:
  %2 = alloca %"struct.testing::internal::TransformTupleValuesHelper<std::tuple<int, int, int>, testing::internal::CastAndAppendTransform<const long &>, std::back_insert_iterator<std::vector<testing::Matcher<const long &>>>>::IterateOverTuple", align 1 ; 3 uses
  %3 = alloca %"class.std::vector", align 8       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.c = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25
          to label %_ZNSt12_Vector_baseIN7testing7MatcherIRKlEESaIS4_EE13_M_deallocateEPS4_m.exit.i unwind label %bb.f ; 3 uses

_ZNSt12_Vector_baseIN7testing7MatcherIRKlEESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN7testing7MatcherIRKlEESaIS4_EE11_M_allocateEm.exit.i
  store ptr %i.c, ptr %3, align 8, !tbaa !112
  store ptr %i.c, ptr %i.b, align 8, !tbaa !113
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store ptr %i.d, ptr %i.a, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.e = invoke ptr @_ZNK7testing8internal26TransformTupleValuesHelperISt5tupleIJiiiEENS0_22CastAndAppendTransformIRKlEESt20back_insert_iteratorISt6vectorINS_7MatcherIS6_EESaISB_EEEE16IterateOverTupleIS3_Lm3EEclES7_RKS3_SE_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr nonnull %3)
          to label %bb.a unwind label %bb.f       ; 0 uses

bb.a:                                             ; preds = %_ZNSt12_Vector_baseIN7testing7MatcherIRKlEESaIS4_EE13_M_deallocateEPS4_m.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.f = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25
          to label %bb.b unwind label %bb.f       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %3, align 8, !tbaa !115
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !115
  invoke void @_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEEEEC2IN9__gnu_cxx17__normal_iteratorIPNS_7MatcherIRKlEESt6vectorISG_SaISG_EEEEEET_SM_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr %i.g, ptr %i.h)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEEEEE, i64 16), ptr %0, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.j, align 8
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEEEE9GetVTableINS9_11ValuePolicyIPKNS_16MatcherInterfaceIS8_EELb1EEEEEPKNS9_6VTableEvE7kVTable, ptr %i.i, align 8, !tbaa !95
  %i.k = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25
          to label %bb.d unwind label %bb.f       ; 3 uses

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.k, align 4, !tbaa !117
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = ptrtoint ptr %i.f to i64
  store i64 %i.m, ptr %i.l, align 8, !tbaa !119
  store ptr %i.k, ptr %i.j, align 8, !tbaa !88
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEEEEE, i64 16), ptr %0, align 8, !tbaa !43
  %i.n = load ptr, ptr %3, align 8, !tbaa !112    ; 3 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !113  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7testing7MatcherIRKlEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.n, %bb.d ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i, align 8, !tbaa !43
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #22, !inline_history !4
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.o
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7testing7MatcherIRKlEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPN7testing7MatcherIRKlEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i9 = load ptr, ptr %3, align 8, !tbaa !112
  br label %_ZSt8_DestroyIPN7testing7MatcherIRKlEES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7testing7MatcherIRKlEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7testing7MatcherIRKlEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.d
  %i.s = phi ptr [ %.pr.i9, %_ZSt8_DestroyIPN7testing7MatcherIRKlEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.n, %bb.d ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7testing7MatcherIRKlEESaIS4_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN7testing7MatcherIRKlEES4_EvT_S6_RSaIT0_E.exit.i
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !114
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #24
  br label %_ZNSt6vectorIN7testing7MatcherIRKlEESaIS4_EED2Ev.exit

_ZNSt6vectorIN7testing7MatcherIRKlEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7testing7MatcherIRKlEES4_EvT_S6_RSaIT0_E.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

bb.f:                                             ; preds = %bb.c, %_ZNSt12_Vector_baseIN7testing7MatcherIRKlEESaIS4_EE13_M_deallocateEPS4_m.exit.i, %_ZNSt12_Vector_baseIN7testing7MatcherIRKlEESaIS4_EE11_M_allocateEm.exit.i, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 32) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.x, %bb.f ], [ %i.y, %bb.g ]
  call void @_ZNSt6vectorIN7testing7MatcherIRKlEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_137ChunkedQueue_CountValueConstruct_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_137ChunkedQueue_CountValueConstruct_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_137ChunkedQueue_CountValueConstruct_TestE, i64 16), ptr %i.a, align 8, !tbaa !43
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #24
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_137ChunkedQueue_CountValueConstruct_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_137ChunkedQueue_CountValueConstruct_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE9push_backERKl.exit.i.1:
  %1 = alloca %"class.absl::lts_20260526::chunked_queue", align 8 ; 14 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %3 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.194", align 4 ; 7 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 0, ptr %9, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.45.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.56.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.g = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 7 uses
  store ptr null, ptr %i.g, align 8, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = add i64 %i.i, 16
  %i.k = inttoptr i64 %i.j to ptr                 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.h, align 8, !tbaa !59
  store ptr %i.g, ptr %1, align 8
  store ptr %i.k, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i, align 8
  store ptr %i.l, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i, align 8
  store i64 1, ptr %i.f, align 8, !tbaa !65
  store i64 10, ptr %i.k, align 8, !tbaa !67
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !59
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.g to i64
  %reass.sub.1 = sub i64 %i.o, %i.p
  %i.q = add i64 %reass.sub.1, -16                ; 2 uses
  %i.r = ashr exact i64 %i.q, 2
  %.sroa.speculated.i.i.i.i.i.i.1 = tail call i64 @llvm.umin.i64(i64 %i.r, i64 128) ; 2 uses
  %i.s = shl nuw nsw i64 %.sroa.speculated.i.i.i.i.i.i.1, 3
  %i.t = add nuw nsw i64 %i.s, 16
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #26 ; 8 uses
  store ptr null, ptr %i.u, align 8, !tbaa !58
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = add i64 %i.w, 16
  %i.y = inttoptr i64 %i.x to ptr                 ; 3 uses
  %.idx = shl nuw nsw i64 %.sroa.speculated.i.i.i.i.i.i.1, 3
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx ; 2 uses
  store ptr %i.z, ptr %i.v, align 8, !tbaa !59
  store ptr %i.u, ptr %i.g, align 8, !tbaa !58
  store ptr %i.u, ptr %i.e, align 8
  store ptr %i.z, ptr %i.d, align 8
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !65
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.f, align 8, !tbaa !65
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 10, ptr %i.y, align 8, !tbaa !67
  %i.ad = icmp eq i64 %i.q, 4
  br i1 %i.ad, label %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE12AddTailBlockEv.exit.i.i.i.i.2, label %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE9push_backERKl.exit.i.2

_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE12AddTailBlockEv.exit.i.i.i.i.2: ; preds = %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE9push_backERKl.exit.i.1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !59
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.u to i64
  %reass.sub.2 = sub i64 %i.ag, %i.ah
  %i.ai = add i64 %reass.sub.2, -16
  %i.aj = ashr exact i64 %i.ai, 2
  %.sroa.speculated.i.i.i.i.i.i.2 = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 128) ; 2 uses
  %i.ak = shl nuw nsw i64 %.sroa.speculated.i.i.i.i.i.i.2, 3
  %i.al = add nuw nsw i64 %i.ak, 16
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #26 ; 5 uses
  store ptr null, ptr %i.am, align 8, !tbaa !58
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = add i64 %i.ao, 16
  %i.aq = inttoptr i64 %i.ap to ptr               ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.sroa.speculated.i.i.i.i.i.i.2 ; 2 uses
  store ptr %i.ar, ptr %i.an, align 8, !tbaa !59
  store ptr %i.am, ptr %i.u, align 8, !tbaa !58
  store ptr %i.am, ptr %i.e, align 8
  store ptr %i.ar, ptr %i.d, align 8
  br label %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE9push_backERKl.exit.i.2

_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE9push_backERKl.exit.i.2: ; preds = %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE12AddTailBlockEv.exit.i.i.i.i.2, %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE9push_backERKl.exit.i.1
  %i.as = phi ptr [ %i.aq, %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE12AddTailBlockEv.exit.i.i.i.i.2 ], [ %i.ac, %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE9push_backERKl.exit.i.1 ] ; 2 uses
  %i.at = load i64, ptr %i.f, align 8, !tbaa !65
  %i.au = add i64 %i.at, 1
  store i64 %i.au, ptr %i.f, align 8, !tbaa !65
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 10, ptr %i.as, align 8, !tbaa !67
  store ptr %i.av, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i32 10, ptr %3, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 10, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 10, ptr %.sroa.5.0..sroa_idx, align 4
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_18ElementsAreMatcherISt5tupleIJiiiEEEEEclIN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEEEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull @.str.172, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE9push_backERKl.exit.i.2
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.aw = load i8, ptr %2, align 8, !tbaa !78, !range !79, !noundef !80
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.l, label %bb.c

bb.b:                                             ; preds = %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE9push_backERKl.exit.i.2
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !81 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !85
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.e, %bb.d
  %i.bc = phi ptr [ %i.bb, %bb.e ], [ @.str.159, %bb.d ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 160, ptr noundef %i.bc)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bd = load ptr, ptr %4, align 8, !tbaa !87    ; 3 uses
  %.not.i.i18 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i18, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.g
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !43
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.g, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit21

bb.i:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.j ], [ %i.bi, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bk = load ptr, ptr %4, align 8, !tbaa !87    ; 3 uses
  %.not.i.i19 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i19, label %_ZN7testing7MessageD2Ev.exit21, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i20

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i20: ; preds = %bb.k
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !43
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(128) %i.bk) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit21

_ZN7testing7MessageD2Ev.exit21:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i20, %bb.k, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.h ], [ %.pn, %bb.k ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i20 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #22
  br label %bb.p

bb.l:                                             ; preds = %bb.a, %_ZN7testing7MessageD2Ev.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !81 ; 4 uses
  %.not.i.i22 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i22, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !85 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.m
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !88
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.l, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 3, ptr %i.a, align 4, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.bv = load i64, ptr %i.f, align 8, !tbaa !65  ; 2 uses
  store i64 %i.bv, ptr %i.b, align 8, !tbaa !67
  %i.bw = icmp eq i64 %i.bv, 3
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6)
          to label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.q

bb.o:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIimEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.185, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.q

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.bx = load i8, ptr %6, align 8, !tbaa !78, !range !79, !noundef !80
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.aa, label %bb.r

bb.p:                                             ; preds = %_ZN7testing7MessageD2Ev.exit21, %bb.b
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit21 ], [ %i.ay, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.ad

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.ac

bb.r:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !81 ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i24, label %_ZNK7testing15AssertionResult15failure_messageEv.exit25, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !85
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit25

_ZNK7testing15AssertionResult15failure_messageEv.exit25: ; preds = %bb.t, %bb.s
  %i.cd = phi ptr [ %i.cc, %bb.t ], [ @.str.159, %bb.s ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 161, ptr noundef %i.cd)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit25
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.ce = load ptr, ptr %7, align 8, !tbaa !87    ; 3 uses
  %.not.i.i26 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i26, label %_ZN7testing7MessageD2Ev.exit28, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i27

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i27: ; preds = %bb.v
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !43
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(128) %i.ce) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit28

end_hunk_0

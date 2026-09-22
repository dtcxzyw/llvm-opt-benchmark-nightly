Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/btree_test?download=true
inline.NumInlined: 114243
inline.NumDeleted: 30281
loop-unroll.NumCompletelyUnrolled: 135
loop-unroll.NumRuntimeUnrolled: 695
loop-unroll.NumUnrolled: 833
begin_hunk_0_@_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_120Btree_set_int32_TestEE10CreateTestEv:bb.a
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #35 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal12_GLOBAL__N_120Btree_set_int32_TestE, i64 16), ptr %i.a, align 8, !tbaa !816
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #36
  resume { ptr, i32 } %i.b
}

declare void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_120Btree_set_int32_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

declare void @_ZN7testing4Test5SetUpEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare void @_ZN7testing4Test8TearDownEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_120Btree_set_int32_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.146", align 8   ; 12 uses
  %2 = alloca %"class.absl::lts_20260526::container_internal::(anonymous namespace)::unique_checker", align 8 ; 19 uses
  %3 = alloca %"class.std::vector.146", align 8   ; 8 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
  %i.a = load i8, ptr %4, align 8, !tbaa !842, !range !843, !noundef !844
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !845  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !810
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i

_ZNK7testing15AssertionResult15failure_messageEv.exit.i: ; preds = %bb.d, %bb.c
  %i.f = phi ptr [ %i.e, %bb.d ], [ @.str.192, %bb.c ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 697, ptr noundef %i.f)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.g = load ptr, ptr %5, align 8, !tbaa !827    ; 3 uses
  %.not.i.i5.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i5.i, label %_ZN7testing7MessageD2Ev.exit.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !816
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(128) %i.g) #37, !inline_history !2845
  br label %_ZN7testing7MessageD2Ev.exit.i

_ZN7testing7MessageD2Ev.exit.i:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit8.i

bb.h:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #37
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn.i = phi { ptr, i32 } [ %i.m, %bb.i ], [ %i.l, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.n = load ptr, ptr %5, align 8, !tbaa !827    ; 3 uses
  %.not.i.i6.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i6.i, label %_ZN7testing7MessageD2Ev.exit8.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i7.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i7.i: ; preds = %bb.j
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !816
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(128) %i.n) #37, !inline_history !2845
  br label %_ZN7testing7MessageD2Ev.exit8.i

common.resume.i:                                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit22.i.i, %_ZN7testing7MessageD2Ev.exit8.i
  %common.resume.op.i = phi { ptr, i32 } [ %.pn.pn.i, %_ZN7testing7MessageD2Ev.exit8.i ], [ %.pn.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit22.i.i ]
  resume { ptr, i32 } %common.resume.op.i

_ZN7testing7MessageD2Ev.exit8.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i7.i, %bb.j, %bb.g
  %.pn.pn.i = phi { ptr, i32 } [ %i.k, %bb.g ], [ %.pn.i, %bb.j ], [ %.pn.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i7.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %common.resume.i

bb.k:                                             ; preds = %_ZN7testing7MessageD2Ev.exit.i, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !845  ; 4 uses
  %.not.i.i9.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i9.i, label %_ZN7testing15AssertionResultD2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !810  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.l
  %i.w = load i64, ptr %i.u, align 8, !tbaa !813
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 32) #36
  br label %_ZN7testing15AssertionResultD2Ev.exit.i

_ZN7testing15AssertionResultD2Ev.exit.i:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_19ConstTestINS0_9btree_setIiSt4lessIiESaIiEEEEEvv()
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  %i.y = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_values, i64 88) acquire, align 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueIiLNS1_20FlagValueStorageKindE0EE3GetERKNS1_12SequenceLockERi.exit.i.i.i.i.i, label %_ZN4absl12lts_202605267GetFlagIiEET_RKNS0_14flags_internal4FlagIS2_EE.exit.i.i, !prof !812

_ZNK4absl12lts_2026052614flags_internal9FlagValueIiLNS1_20FlagValueStorageKindE0EE3GetERKNS1_12SequenceLockERi.exit.i.i.i.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit.i
  %i.z = call noundef i64 @_ZNK4absl12lts_2026052614flags_internal8FlagImpl11ReadOneWordEv(ptr noundef nonnull align 8 dereferenceable(96) @FLAGS_test_values)
  br label %_ZN4absl12lts_202605267GetFlagIiEET_RKNS0_14flags_internal4FlagIS2_EE.exit.i.i

_ZN4absl12lts_202605267GetFlagIiEET_RKNS0_14flags_internal4FlagIS2_EE.exit.i.i: ; preds = %_ZNK4absl12lts_2026052614flags_internal9FlagValueIiLNS1_20FlagValueStorageKindE0EE3GetERKNS1_12SequenceLockERi.exit.i.i.i.i.i, %_ZN7testing15AssertionResultD2Ev.exit.i
  %.sroa.0.0.in.i.i.i.i.i = phi i64 [ %i.z, %_ZNK4absl12lts_2026052614flags_internal9FlagValueIiLNS1_20FlagValueStorageKindE0EE3GetERKNS1_12SequenceLockERi.exit.i.i.i.i.i ], [ %i.y, %_ZN7testing15AssertionResultD2Ev.exit.i ]
  %.sroa.0.0.i.i.i.i.i = trunc i64 %.sroa.0.0.in.i.i.i.i.i to i32
  %i.aa = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_values, i64 88) acquire, align 8 ; 2 uses
  %.not.i.i.i8.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i8.i.i, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueIiLNS1_20FlagValueStorageKindE0EE3GetERKNS1_12SequenceLockERi.exit.i.i.i11.i.i, label %bb.m, !prof !812

_ZNK4absl12lts_2026052614flags_internal9FlagValueIiLNS1_20FlagValueStorageKindE0EE3GetERKNS1_12SequenceLockERi.exit.i.i.i11.i.i: ; preds = %_ZN4absl12lts_202605267GetFlagIiEET_RKNS0_14flags_internal4FlagIS2_EE.exit.i.i
  %i.ab = call noundef i64 @_ZNK4absl12lts_2026052614flags_internal8FlagImpl11ReadOneWordEv(ptr noundef nonnull align 8 dereferenceable(96) @FLAGS_test_values)
  br label %bb.m

bb.m:                                             ; preds = %_ZNK4absl12lts_2026052614flags_internal9FlagValueIiLNS1_20FlagValueStorageKindE0EE3GetERKNS1_12SequenceLockERi.exit.i.i.i11.i.i, %_ZN4absl12lts_202605267GetFlagIiEET_RKNS0_14flags_internal4FlagIS2_EE.exit.i.i
  %.sroa.0.0.in.i.i.i9.i.i = phi i64 [ %i.ab, %_ZNK4absl12lts_2026052614flags_internal9FlagValueIiLNS1_20FlagValueStorageKindE0EE3GetERKNS1_12SequenceLockERi.exit.i.i.i11.i.i ], [ %i.aa, %_ZN4absl12lts_202605267GetFlagIiEET_RKNS0_14flags_internal4FlagIS2_EE.exit.i.i ]
  %.sroa.0.0.i.i.i10.i.i = trunc i64 %.sroa.0.0.in.i.i.i9.i.i to i32
  %i.ac = shl nsw i32 %.sroa.0.0.i.i.i10.i.i, 2
  %i.ad = load i32, ptr @_ZN7testing23FLAGS_gtest_random_seedE, align 4, !tbaa !802
  call void @_ZN4absl12lts_2026052618container_internal22GenerateValuesWithSeedIiEESt6vectorIT_SaIS4_EEiii(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.146") align 8 %1, i32 noundef %.sroa.0.0.i.i.i.i.i, i32 noundef %i.ac, i32 noundef %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  store ptr @_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJEEEE9EmptyNodeEvE10empty_node, ptr %2, align 8, !tbaa !851
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr @_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJEEEE9EmptyNodeEvE10empty_node, ptr %i.ae, align 8, !tbaa !852
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i64 0, ptr %i.af, align 8, !tbaa !853
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %2, ptr %i.ag, align 8, !tbaa !855
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  store i32 0, ptr %i.ah, align 8, !tbaa !860
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store ptr null, ptr %i.ai, align 8, !tbaa !861
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !862
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !863
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 0, ptr %i.al, align 8, !tbaa !864
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !867 ; 2 uses
  %i.ao = load ptr, ptr %1, align 8, !tbaa !868   ; 3 uses
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.ar = sub i64 %i.ap, %i.aq                    ; 5 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not.i.i.i.i.i.i, label %.noexc13.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = icmp ugt i64 %i.ar, 9223372036854775804
  br i1 %i.as, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !812

.noexc.i.i.i.i:                                   ; preds = %bb.n
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc.i.i unwind label %bb.ab

.noexc.i.i:                                       ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.n
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #35
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc13_crit_edge.i.i unwind label %bb.ab

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc13_crit_edge.i.i: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !869 ; 3 uses
  %.pre23.i.i = load ptr, ptr %i.am, align 8, !tbaa !869 ; 2 uses
  %.pre24.i.i = ptrtoint ptr %.pre23.i.i to i64
  %.pre25.i.i = ptrtoint ptr %.pre.i.i to i64
  %7 = icmp eq ptr %.pre23.i.i, %.pre.i.i
  br label %.noexc13.i.i

.noexc13.i.i:                                     ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc13_crit_edge.i.i, %bb.m
  %.pre-phi26.i.i = phi i64 [ %.pre25.i.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc13_crit_edge.i.i ], [ %i.aq, %bb.m ]
  %.pre-phi.i.i = phi i64 [ %.pre24.i.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc13_crit_edge.i.i ], [ %i.ap, %bb.m ]
  %.not.i.i.i.i = phi i1 [ %7, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc13_crit_edge.i.i ], [ true, %bb.m ]
  %i.au = phi ptr [ %.pre.i.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc13_crit_edge.i.i ], [ %i.ao, %bb.m ] ; 2 uses
  %i.av = phi ptr [ %i.at, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc13_crit_edge.i.i ], [ null, %bb.m ] ; 12 uses
  store ptr %i.av, ptr %3, align 8, !tbaa !868
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ar
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !870
  %i.az = sub i64 %.pre-phi.i.i, %.pre-phi26.i.i  ; 5 uses
  %i.ba = icmp sgt i64 %i.az, 4                   ; 2 uses
  br i1 %i.ba, label %bb.o, label %bb.p, !prof !871

bb.o:                                             ; preds = %.noexc13.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.av, ptr align 4 %i.au, i64 %i.az, i1 false)
  br label %bb.r

bb.p:                                             ; preds = %.noexc13.i.i
  %i.bb = icmp eq i64 %i.az, 4
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bc = load i32, ptr %i.au, align 4, !tbaa !802
  store i32 %i.bc, ptr %i.av, align 4, !tbaa !802
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.bd = getelementptr inbounds i8, ptr %i.av, i64 %i.az ; 4 uses
  store ptr %i.bd, ptr %i.aw, align 8, !tbaa !867
  br i1 %.not.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = ashr exact i64 %i.az, 2
  %i.bf = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.be, i1 true)
  %i.bg = shl nuw nsw i64 %i.bf, 1
  %i.bh = xor i64 %i.bg, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.av, ptr nonnull %i.bd, i64 noundef %i.bh)
          to label %.noexc14.i.i unwind label %bb.ac

.noexc14.i.i:                                     ; preds = %bb.s
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.av, ptr nonnull %i.bd)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i unwind label %bb.ac

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i: ; preds = %.noexc14.i.i, %bb.r
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_16DoTestINS2_14unique_checkerINS0_9btree_setIiSt4lessIiESaIiEEESt3setIiS7_S8_EEEiEEvPKcPT_RKSt6vectorIT0_SaISI_EE(ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.t unwind label %bb.ac

bb.t:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i
  br i1 %i.ba, label %.lr.ph.i.i.preheader.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.t
  %.sroa.0.08.i.i.i.i = getelementptr inbounds i8, ptr %i.bd, i64 -4
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.preheader.i.i
  %.sroa.0.010.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.0.08.i.i.i.i, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %.sroa.05.09.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i ], [ %i.av, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.bi = load i32, ptr %.sroa.05.09.i.i.i.i, align 4, !tbaa !802
  %i.bj = load i32, ptr %.sroa.0.010.i.i.i.i, align 4, !tbaa !802
  store i32 %i.bj, ptr %.sroa.05.09.i.i.i.i, align 4, !tbaa !802
  store i32 %i.bi, ptr %.sroa.0.010.i.i.i.i, align 4, !tbaa !802
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i.i, i64 4 ; 2 uses
  %.sroa.0.0.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i.i, i64 -4 ; 2 uses
  %i.bl = icmp ult ptr %i.bk, %.sroa.0.0.i.i.i.i
  br i1 %i.bl, label %.lr.ph.i.i.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i, !llvm.loop !1

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.t
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_16DoTestINS2_14unique_checkerINS0_9btree_setIiSt4lessIiESaIiEEESt3setIiS7_S8_EEEiEEvPKcPT_RKSt6vectorIT0_SaISI_EE(ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.u unwind label %bb.ac

bb.u:                                             ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_16DoTestINS2_14unique_checkerINS0_9btree_setIiSt4lessIiESaIiEEESt3setIiS7_S8_EEEiEEvPKcPT_RKSt6vectorIT0_SaISI_EE(ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.v unwind label %bb.ac

bb.v:                                             ; preds = %bb.u
  %.not.i.i.i16.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i16.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ar) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i:                ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bn = load ptr, ptr %i.ai, align 8, !tbaa !861
  invoke void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %i.bm, ptr noundef %i.bn)
          to label %_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit.i.i.i unwind label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #39
  unreachable

_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit.i.i.i:       ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i
  %i.bq = load i64, ptr %i.af, align 8, !tbaa !853
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_ZN4absl12lts_2026052618container_internal12base_checkerINS0_9btree_setIiSt4lessIiESaIiEEESt3setIiS5_S6_EED2Ev.exit.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit.i.i.i
  %i.bs = load ptr, ptr %2, align 8, !tbaa !851
  invoke void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE16clear_and_deleteEPS5_PSaIiE(ptr noundef %i.bs, ptr noundef nonnull %i.ae)
          to label %_ZN4absl12lts_2026052618container_internal12base_checkerINS0_9btree_setIiSt4lessIiESaIiEEESt3setIiS5_S6_EED2Ev.exit.i.i unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #39
  unreachable

_ZN4absl12lts_2026052618container_internal12base_checkerINS0_9btree_setIiSt4lessIiESaIiEEESt3setIiS5_S6_EED2Ev.exit.i.i: ; preds = %bb.y, %_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  %i.bv = load ptr, ptr %1, align 8, !tbaa !868   ; 3 uses
  %.not.i.i.i17.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i17.i.i, label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_17SetTestIiLi256EEEvv.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12base_checkerINS0_9btree_setIiSt4lessIiESaIiEEESt3setIiS5_S6_EED2Ev.exit.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !870
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.ca) #36
  br label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_17SetTestIiLi256EEEvv.exit

bb.ab:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit20.i.i

bb.ac:                                            ; preds = %bb.u, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i, %.noexc14.i.i, %bb.s
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i19.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i19.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit20.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ar) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit20.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit20.i.i:              ; preds = %bb.ad, %bb.ac, %bb.ab
  %.pn.i.i = phi { ptr, i32 } [ %i.cb, %bb.ab ], [ %i.cc, %bb.ac ], [ %i.cc, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @_ZN4absl12lts_2026052618container_internal12base_checkerINS0_9btree_setIiSt4lessIiESaIiEEESt3setIiS5_S6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  %i.cd = load ptr, ptr %1, align 8, !tbaa !868   ; 3 uses
  %.not.i.i.i21.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i21.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit22.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit20.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !870
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.ci) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit22.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit22.i.i:              ; preds = %bb.ae, %_ZNSt6vectorIiSaIiEED2Ev.exit20.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %common.resume.i

_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_17SetTestIiLi256EEEvv.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12base_checkerINS0_9btree_setIiSt4lessIiESaIiEEESt3setIiS5_S6_EED2Ev.exit.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing4Test5SetupEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr null
}

declare void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

declare void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !845  ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !810  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !813
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #36
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  ret void
}

declare void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18CmpHelperEQFailureImmEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  call void @_ZN7testing13PrintToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  invoke void @_ZN7testing13PrintToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageImmEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageImmEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageImmEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.a = load ptr, ptr %6, align 8, !tbaa !810    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !813
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.f = load ptr, ptr %5, align 8, !tbaa !810    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

end_hunk_0
begin_hunk_1_@_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_125Btree_multiset_int32_TestEED0Ev:bb.a
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_125Btree_multiset_int32_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #35 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal12_GLOBAL__N_125Btree_multiset_int32_TestE, i64 16), ptr %i.a, align 8, !tbaa !816
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_125Btree_multiset_int32_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_125Btree_multiset_int32_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.146", align 8   ; 14 uses
  %2 = alloca %"class.absl::lts_20260526::container_internal::(anonymous namespace)::multi_checker", align 8 ; 21 uses
  %3 = alloca %"class.std::vector.146", align 8   ; 8 uses
  %4 = alloca %"class.std::vector.146", align 8   ; 10 uses
  %5 = alloca %"class.std::vector.146", align 8   ; 7 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6)
  %i.a = load i8, ptr %6, align 8, !tbaa !842, !range !843, !noundef !844
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !845  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !810
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i

_ZNK7testing15AssertionResult15failure_messageEv.exit.i: ; preds = %bb.d, %bb.c
  %i.f = phi ptr [ %i.e, %bb.d ], [ @.str.192, %bb.c ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 723, ptr noundef %i.f)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %i.g = load ptr, ptr %7, align 8, !tbaa !827    ; 3 uses
  %.not.i.i5.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i5.i, label %_ZN7testing7MessageD2Ev.exit.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !816
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(128) %i.g) #37, !inline_history !5811
  br label %_ZN7testing7MessageD2Ev.exit.i

_ZN7testing7MessageD2Ev.exit.i:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit8.i

bb.h:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #37
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn.i = phi { ptr, i32 } [ %i.m, %bb.i ], [ %i.l, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %i.n = load ptr, ptr %7, align 8, !tbaa !827    ; 3 uses
  %.not.i.i6.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i6.i, label %_ZN7testing7MessageD2Ev.exit8.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i7.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i7.i: ; preds = %bb.j
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !816
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(128) %i.n) #37, !inline_history !5811
  br label %_ZN7testing7MessageD2Ev.exit8.i

common.resume.i:                                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit54.i.i, %_ZN7testing7MessageD2Ev.exit8.i
  %common.resume.op.i = phi { ptr, i32 } [ %.pn.pn.i, %_ZN7testing7MessageD2Ev.exit8.i ], [ %.pn.pn.pn.pn.pn.pn.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit54.i.i ]
  resume { ptr, i32 } %common.resume.op.i

_ZN7testing7MessageD2Ev.exit8.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i7.i, %bb.j, %bb.g
  %.pn.pn.i = phi { ptr, i32 } [ %i.k, %bb.g ], [ %.pn.i, %bb.j ], [ %.pn.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i7.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %common.resume.i

bb.k:                                             ; preds = %_ZN7testing7MessageD2Ev.exit.i, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !845  ; 4 uses
  %.not.i.i9.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i9.i, label %_ZN7testing15AssertionResultD2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !810  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.l
  %i.w = load i64, ptr %i.u, align 8, !tbaa !813
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 32) #36
  br label %_ZN7testing15AssertionResultD2Ev.exit.i

_ZN7testing15AssertionResultD2Ev.exit.i:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_19ConstTestINS0_14btree_multisetIiSt4lessIiESaIiEEEEEvv()
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  %i.y = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_values, i64 88) acquire, align 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueIiLNS1_20FlagValueStorageKindE0EE3GetERKNS1_12SequenceLockERi.exit.i.i.i.i.i, label %_ZN4absl12lts_202605267GetFlagIiEET_RKNS0_14flags_internal4FlagIS2_EE.exit.i.i, !prof !812

_ZNK4absl12lts_2026052614flags_internal9FlagValueIiLNS1_20FlagValueStorageKindE0EE3GetERKNS1_12SequenceLockERi.exit.i.i.i.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit.i
  %i.z = call noundef i64 @_ZNK4absl12lts_2026052614flags_internal8FlagImpl11ReadOneWordEv(ptr noundef nonnull align 8 dereferenceable(96) @FLAGS_test_values)
  br label %_ZN4absl12lts_202605267GetFlagIiEET_RKNS0_14flags_internal4FlagIS2_EE.exit.i.i

_ZN4absl12lts_202605267GetFlagIiEET_RKNS0_14flags_internal4FlagIS2_EE.exit.i.i: ; preds = %_ZNK4absl12lts_2026052614flags_internal9FlagValueIiLNS1_20FlagValueStorageKindE0EE3GetERKNS1_12SequenceLockERi.exit.i.i.i.i.i, %_ZN7testing15AssertionResultD2Ev.exit.i
  %.sroa.0.0.in.i.i.i.i.i = phi i64 [ %i.z, %_ZNK4absl12lts_2026052614flags_internal9FlagValueIiLNS1_20FlagValueStorageKindE0EE3GetERKNS1_12SequenceLockERi.exit.i.i.i.i.i ], [ %i.y, %_ZN7testing15AssertionResultD2Ev.exit.i ]
  %.sroa.0.0.i.i.i.i.i = trunc i64 %.sroa.0.0.in.i.i.i.i.i to i32
  %i.aa = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_test_values, i64 88) acquire, align 8 ; 2 uses
  %.not.i.i.i23.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i23.i.i, label %_ZNK4absl12lts_2026052614flags_internal9FlagValueIiLNS1_20FlagValueStorageKindE0EE3GetERKNS1_12SequenceLockERi.exit.i.i.i26.i.i, label %bb.m, !prof !812

_ZNK4absl12lts_2026052614flags_internal9FlagValueIiLNS1_20FlagValueStorageKindE0EE3GetERKNS1_12SequenceLockERi.exit.i.i.i26.i.i: ; preds = %_ZN4absl12lts_202605267GetFlagIiEET_RKNS0_14flags_internal4FlagIS2_EE.exit.i.i
  %i.ab = call noundef i64 @_ZNK4absl12lts_2026052614flags_internal8FlagImpl11ReadOneWordEv(ptr noundef nonnull align 8 dereferenceable(96) @FLAGS_test_values)
  br label %bb.m

bb.m:                                             ; preds = %_ZNK4absl12lts_2026052614flags_internal9FlagValueIiLNS1_20FlagValueStorageKindE0EE3GetERKNS1_12SequenceLockERi.exit.i.i.i26.i.i, %_ZN4absl12lts_202605267GetFlagIiEET_RKNS0_14flags_internal4FlagIS2_EE.exit.i.i
  %.sroa.0.0.in.i.i.i24.i.i = phi i64 [ %i.ab, %_ZNK4absl12lts_2026052614flags_internal9FlagValueIiLNS1_20FlagValueStorageKindE0EE3GetERKNS1_12SequenceLockERi.exit.i.i.i26.i.i ], [ %i.aa, %_ZN4absl12lts_202605267GetFlagIiEET_RKNS0_14flags_internal4FlagIS2_EE.exit.i.i ]
  %.sroa.0.0.i.i.i25.i.i = trunc i64 %.sroa.0.0.in.i.i.i24.i.i to i32
  %i.ac = shl nsw i32 %.sroa.0.0.i.i.i25.i.i, 2
  %i.ad = load i32, ptr @_ZN7testing23FLAGS_gtest_random_seedE, align 4, !tbaa !802
  call void @_ZN4absl12lts_2026052618container_internal22GenerateValuesWithSeedIiEESt6vectorIT_SaIS4_EEiii(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.146") align 8 %1, i32 noundef %.sroa.0.0.i.i.i.i.i, i32 noundef %i.ac, i32 noundef %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  store ptr @_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJSt4lessIiESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE9EmptyNodeEvE10empty_node, ptr %2, align 8, !tbaa !1133
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr @_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJSt4lessIiESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE9EmptyNodeEvE10empty_node, ptr %i.ae, align 8, !tbaa !1134
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i64 0, ptr %i.af, align 8, !tbaa !1135
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %2, ptr %i.ag, align 8, !tbaa !1137
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  store i32 0, ptr %i.ah, align 8, !tbaa !860
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store ptr null, ptr %i.ai, align 8, !tbaa !861
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !862
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !863
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 0, ptr %i.al, align 8, !tbaa !864
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !867 ; 2 uses
  %i.ao = load ptr, ptr %1, align 8, !tbaa !868   ; 3 uses
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.ar = sub i64 %i.ap, %i.aq                    ; 5 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not.i.i.i.i.i.i, label %.noexc28.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = icmp ugt i64 %i.ar, 9223372036854775804
  br i1 %i.as, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !812

.noexc.i.i.i.i:                                   ; preds = %bb.n
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc.i.i unwind label %bb.aj

.noexc.i.i:                                       ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.n
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #35
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc28_crit_edge.i.i unwind label %bb.aj

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc28_crit_edge.i.i: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !869 ; 3 uses
  %.pre58.i.i = load ptr, ptr %i.am, align 8, !tbaa !869 ; 2 uses
  %.pre61.i.i = ptrtoint ptr %.pre58.i.i to i64
  %.pre62.i.i = ptrtoint ptr %.pre.i.i to i64
  %9 = icmp eq ptr %.pre58.i.i, %.pre.i.i
  br label %.noexc28.i.i

.noexc28.i.i:                                     ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc28_crit_edge.i.i, %bb.m
  %.pre-phi63.i.i = phi i64 [ %.pre62.i.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc28_crit_edge.i.i ], [ %i.aq, %bb.m ]
  %.pre-phi.i.i = phi i64 [ %.pre61.i.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc28_crit_edge.i.i ], [ %i.ap, %bb.m ]
  %.not.i.i.i.i = phi i1 [ %9, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc28_crit_edge.i.i ], [ true, %bb.m ]
  %i.au = phi ptr [ %.pre.i.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc28_crit_edge.i.i ], [ %i.ao, %bb.m ] ; 2 uses
  %i.av = phi ptr [ %i.at, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc28_crit_edge.i.i ], [ null, %bb.m ] ; 12 uses
  store ptr %i.av, ptr %3, align 8, !tbaa !868
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ar
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !870
  %i.az = sub i64 %.pre-phi.i.i, %.pre-phi63.i.i  ; 5 uses
  %i.ba = icmp sgt i64 %i.az, 4                   ; 2 uses
  br i1 %i.ba, label %bb.o, label %bb.p, !prof !871

bb.o:                                             ; preds = %.noexc28.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.av, ptr align 4 %i.au, i64 %i.az, i1 false)
  br label %bb.r

bb.p:                                             ; preds = %.noexc28.i.i
  %i.bb = icmp eq i64 %i.az, 4
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bc = load i32, ptr %i.au, align 4, !tbaa !802
  store i32 %i.bc, ptr %i.av, align 4, !tbaa !802
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.bd = getelementptr inbounds i8, ptr %i.av, i64 %i.az ; 4 uses
  store ptr %i.bd, ptr %i.aw, align 8, !tbaa !867
  br i1 %.not.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = ashr exact i64 %i.az, 2
  %i.bf = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.be, i1 true)
  %i.bg = shl nuw nsw i64 %i.bf, 1
  %i.bh = xor i64 %i.bg, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.av, ptr nonnull %i.bd, i64 noundef %i.bh)
          to label %.noexc29.i.i unwind label %bb.ak

.noexc29.i.i:                                     ; preds = %bb.s
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.av, ptr nonnull %i.bd)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i unwind label %bb.ak

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i: ; preds = %.noexc29.i.i, %bb.r
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_16DoTestINS2_13multi_checkerINS0_14btree_multisetIiSt4lessIiESaIiEEESt8multisetIiS7_S8_EEEiEEvPKcPT_RKSt6vectorIT0_SaISI_EE(ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.t unwind label %bb.ak

bb.t:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i
  br i1 %i.ba, label %.lr.ph.i.i.preheader.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.t
  %.sroa.0.08.i.i.i.i = getelementptr inbounds i8, ptr %i.bd, i64 -4
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.preheader.i.i
  %.sroa.0.010.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.0.08.i.i.i.i, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %.sroa.05.09.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i ], [ %i.av, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.bi = load i32, ptr %.sroa.05.09.i.i.i.i, align 4, !tbaa !802
  %i.bj = load i32, ptr %.sroa.0.010.i.i.i.i, align 4, !tbaa !802
  store i32 %i.bj, ptr %.sroa.05.09.i.i.i.i, align 4, !tbaa !802
  store i32 %i.bi, ptr %.sroa.0.010.i.i.i.i, align 4, !tbaa !802
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i.i, i64 4 ; 2 uses
  %.sroa.0.0.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i.i, i64 -4 ; 2 uses
  %i.bl = icmp ult ptr %i.bk, %.sroa.0.0.i.i.i.i
  br i1 %i.bl, label %.lr.ph.i.i.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i, !llvm.loop !1

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.t
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_16DoTestINS2_13multi_checkerINS0_14btree_multisetIiSt4lessIiESaIiEEESt8multisetIiS7_S8_EEEiEEvPKcPT_RKSt6vectorIT0_SaISI_EE(ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.u unwind label %bb.ak

bb.u:                                             ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_16DoTestINS2_13multi_checkerINS0_14btree_multisetIiSt4lessIiESaIiEEESt8multisetIiS7_S8_EEEiEEvPKcPT_RKSt6vectorIT0_SaISI_EE(ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.v unwind label %bb.ak

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.bm = load ptr, ptr %i.am, align 8, !tbaa !867 ; 3 uses
  %i.bn = load ptr, ptr %1, align 8, !tbaa !868   ; 3 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.bq = sub i64 %i.bo, %i.bp                    ; 3 uses
  %.not.i.i.i.i31.i.i = icmp eq ptr %i.bm, %i.bn
  br i1 %.not.i.i.i.i31.i.i, label %.noexc35.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.br = icmp ugt i64 %i.bq, 9223372036854775804
  br i1 %i.br, label %.noexc.i.i33.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i32.i.i, !prof !812

.noexc.i.i33.i.i:                                 ; preds = %bb.w
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc34.i.i unwind label %bb.al

.noexc34.i.i:                                     ; preds = %.noexc.i.i33.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i32.i.i: ; preds = %bb.w
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #35
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i32..noexc35_crit_edge.i.i unwind label %bb.al

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i32..noexc35_crit_edge.i.i: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i32.i.i
  %.pre59.i.i = load ptr, ptr %1, align 8, !tbaa !869 ; 2 uses
  %.pre60.i.i = load ptr, ptr %i.am, align 8, !tbaa !869 ; 2 uses
  %.pre64.i.i = ptrtoint ptr %.pre60.i.i to i64
  %.pre66.i.i = ptrtoint ptr %.pre59.i.i to i64
  br label %.noexc35.i.i

.noexc35.i.i:                                     ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i32..noexc35_crit_edge.i.i, %bb.v
  %.pre-phi67.i.i = phi i64 [ %.pre66.i.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i32..noexc35_crit_edge.i.i ], [ %i.bp, %bb.v ]
  %.pre-phi65.i.i = phi i64 [ %.pre64.i.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i32..noexc35_crit_edge.i.i ], [ %i.bo, %bb.v ]
  %i.bt = phi ptr [ %.pre60.i.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i32..noexc35_crit_edge.i.i ], [ %i.bm, %bb.v ]
  %i.bu = phi ptr [ %.pre59.i.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i32..noexc35_crit_edge.i.i ], [ %i.bn, %bb.v ] ; 3 uses
  %i.bv = phi ptr [ %i.bs, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i32..noexc35_crit_edge.i.i ], [ null, %bb.v ] ; 5 uses
  store ptr %i.bv, ptr %4, align 8, !tbaa !868
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bq
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !870
  %i.bz = sub i64 %.pre-phi65.i.i, %.pre-phi67.i.i ; 4 uses
  %i.ca = icmp sgt i64 %i.bz, 4
  br i1 %i.ca, label %bb.x, label %bb.y, !prof !871

bb.x:                                             ; preds = %.noexc35.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bv, ptr align 4 %i.bu, i64 %i.bz, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %.noexc35.i.i
  %i.cb = icmp eq i64 %i.bz, 4
  br i1 %i.cb, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cc = load i32, ptr %i.bu, align 4, !tbaa !802
  store i32 %i.cc, ptr %i.bv, align 4, !tbaa !802
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cd = getelementptr inbounds i8, ptr %i.bv, i64 %i.bz ; 2 uses
  store ptr %i.cd, ptr %i.bw, align 8, !tbaa !867
  invoke void @_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEvNS4_IPiS1_EET_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.cd, ptr %i.bu, ptr %i.bt)
          to label %bb.ab unwind label %bb.am

bb.ab:                                            ; preds = %bb.aa
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_16DoTestINS2_13multi_checkerINS0_14btree_multisetIiSt4lessIiESaIiEEESt8multisetIiS7_S8_EEEiEEvPKcPT_RKSt6vectorIT0_SaISI_EE(ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.ac unwind label %bb.an

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.ce = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #35
          to label %vector.ph unwind label %bb.ao ; 33 uses

vector.ph:                                        ; preds = %bb.ac
  store ptr %i.ce, ptr %5, align 8, !tbaa !868
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 400 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !870
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.ce, i8 0, i64 400, i1 false)
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !867
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store <4 x i32> splat (i32 2), ptr %i.ce, align 4, !tbaa !802
  store <4 x i32> splat (i32 2), ptr %i.ci, align 4, !tbaa !802
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  store <4 x i32> splat (i32 2), ptr %i.cj, align 4, !tbaa !802
  store <4 x i32> splat (i32 2), ptr %i.ck, align 4, !tbaa !802
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 80
  store <4 x i32> splat (i32 2), ptr %i.cl, align 4, !tbaa !802
  store <4 x i32> splat (i32 2), ptr %i.cm, align 4, !tbaa !802
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 96
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 112
  store <4 x i32> splat (i32 2), ptr %i.cn, align 4, !tbaa !802
  store <4 x i32> splat (i32 2), ptr %i.co, align 4, !tbaa !802
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 128
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ce, i64 144
  store <4 x i32> splat (i32 2), ptr %i.cp, align 4, !tbaa !802
  store <4 x i32> splat (i32 2), ptr %i.cq, align 4, !tbaa !802
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ce, i64 160
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ce, i64 176
  store <4 x i32> splat (i32 2), ptr %i.cr, align 4, !tbaa !802
  store <4 x i32> splat (i32 2), ptr %i.cs, align 4, !tbaa !802
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ce, i64 192
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 208
  store <4 x i32> splat (i32 2), ptr %i.ct, align 4, !tbaa !802
  store <4 x i32> splat (i32 2), ptr %i.cu, align 4, !tbaa !802
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ce, i64 224
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ce, i64 240
  store <4 x i32> splat (i32 2), ptr %i.cv, align 4, !tbaa !802
  store <4 x i32> splat (i32 2), ptr %i.cw, align 4, !tbaa !802
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ce, i64 256
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ce, i64 272
  store <4 x i32> splat (i32 2), ptr %i.cx, align 4, !tbaa !802
  store <4 x i32> splat (i32 2), ptr %i.cy, align 4, !tbaa !802
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ce, i64 288
  %i.da = getelementptr inbounds nuw i8, ptr %i.ce, i64 304
  store <4 x i32> splat (i32 2), ptr %i.cz, align 4, !tbaa !802
  store <4 x i32> splat (i32 2), ptr %i.da, align 4, !tbaa !802
  %i.db = getelementptr inbounds nuw i8, ptr %i.ce, i64 320
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ce, i64 336
  store <4 x i32> splat (i32 2), ptr %i.db, align 4, !tbaa !802
  store <4 x i32> splat (i32 2), ptr %i.dc, align 4, !tbaa !802
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ce, i64 352
  %i.de = getelementptr inbounds nuw i8, ptr %i.ce, i64 368
  store <4 x i32> splat (i32 2), ptr %i.dd, align 4, !tbaa !802
  store <4 x i32> splat (i32 2), ptr %i.de, align 4, !tbaa !802
  %.06.i.i.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 384
  store i32 2, ptr %.06.i.i.i.i.ptr.i.i, align 4, !tbaa !802
  %.06.i.i.i.i.ptr.i.i.1 = getelementptr inbounds nuw i8, ptr %i.ce, i64 388
  store i32 2, ptr %.06.i.i.i.i.ptr.i.i.1, align 4, !tbaa !802
  %.06.i.i.i.i.ptr.i.i.2 = getelementptr inbounds nuw i8, ptr %i.ce, i64 392
  store i32 2, ptr %.06.i.i.i.i.ptr.i.i.2, align 4, !tbaa !802
  %.06.i.i.i.i.ptr.i.i.3 = getelementptr inbounds nuw i8, ptr %i.ce, i64 396
  store i32 2, ptr %.06.i.i.i.i.ptr.i.i.3, align 4, !tbaa !802
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_16DoTestINS2_13multi_checkerINS0_14btree_multisetIiSt4lessIiESaIiEEESt8multisetIiS7_S8_EEEiEEvPKcPT_RKSt6vectorIT0_SaISI_EE(ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit48.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i:                ; preds = %vector.ph
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef 400) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.df = load ptr, ptr %4, align 8, !tbaa !868   ; 3 uses
  %.not.i.i.i41.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i41.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit42.i.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i
  %i.dg = load ptr, ptr %i.by, align 8, !tbaa !870
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.df to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.dj) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit42.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit42.i.i:              ; preds = %bb.ad, %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %.not.i.i.i43.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i43.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit44.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit42.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ar) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit44.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit44.i.i:              ; preds = %bb.ae, %_ZNSt6vectorIiSaIiEED2Ev.exit42.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dl = load ptr, ptr %i.ai, align 8, !tbaa !861
  invoke void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %i.dk, ptr noundef %i.dl)
          to label %_ZNSt8multisetIiSt4lessIiESaIiEED2Ev.exit.i.i.i unwind label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit44.i.i
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
end_hunk_1

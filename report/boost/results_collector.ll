Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/results_collector?download=true
inline.NumInlined: 412
inline.NumDeleted: 186
begin_hunk_0_@_ZN5boost9unit_test19results_collector_t10test_startEmm:bb.a
bb.a:
  %3 = alloca %"class.boost::unit_test::(anonymous namespace)::clear_subtree_result", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = load atomic i8, ptr @_ZGVZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5boost9unit_test12_GLOBAL__N_19s_rc_implEv.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst) #18
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5boost9unit_test12_GLOBAL__N_19s_rc_implEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 8), align 8, !tbaa !25
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 16), align 8, !tbaa !26
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 24), align 8, !tbaa !27
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 32), align 8, !tbaa !28
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 40), align 8, !tbaa !29
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost9unit_test12_GLOBAL__N_122results_collector_implD2Ev, ptr nonnull @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, ptr nonnull @__dso_handle) #18 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst) #18
  br label %_ZN5boost9unit_test12_GLOBAL__N_19s_rc_implEv.exit

_ZN5boost9unit_test12_GLOBAL__N_19s_rc_implEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5boost9unit_test12_GLOBAL__N_120clear_subtree_resultE, i64 16), ptr %3, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, ptr %i.e, align 8, !tbaa !115
  call void @_ZN5boost9unit_test18traverse_test_treeEmRNS0_17test_tree_visitorEb(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

declare void @_ZN5boost9unit_test18traverse_test_treeEmRNS0_17test_tree_visitorEb(i64 noundef, ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: mustprogress uwtable
define void @_ZN5boost9unit_test19results_collector_t15test_unit_startERKNS0_9test_unitE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(280) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple", align 8        ; 4 uses
  %3 = alloca %"class.std::tuple.58", align 1     ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5boost9unit_test12_GLOBAL__N_19s_rc_implEv.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst) #18
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5boost9unit_test12_GLOBAL__N_19s_rc_implEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 8), align 8, !tbaa !25
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 16), align 8, !tbaa !26
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 24), align 8, !tbaa !27
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 32), align 8, !tbaa !28
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 40), align 8, !tbaa !29
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost9unit_test12_GLOBAL__N_122results_collector_implD2Ev, ptr nonnull @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, ptr nonnull @__dso_handle) #18 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst) #18
  br label %_ZN5boost9unit_test12_GLOBAL__N_19s_rc_implEv.exit

_ZN5boost9unit_test12_GLOBAL__N_19s_rc_implEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 16), align 8, !tbaa !26 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5boost9unit_test12_GLOBAL__N_19s_rc_implEv.exit
  %i.g = load i64, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.d ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 8), %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.d ]
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !16
  %i.j = icmp ult i64 %i.i, %i.g                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.j, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.j, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !33 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapImN5boost9unit_test12test_resultsESt4lessImESaISt4pairIKmS2_EEE11lower_boundERS6_.exit.i, label %bb.d, !llvm.loop !0

_ZNSt3mapImN5boost9unit_test12test_resultsESt4lessImESaISt4pairIKmS2_EEE11lower_boundERS6_.exit.i: ; preds = %bb.d
  %i.k = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 8)
  br i1 %i.k, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapImN5boost9unit_test12test_resultsESt4lessImESaISt4pairIKmS2_EEE11lower_boundERS6_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !16
  %i.n = icmp ult i64 %i.g, %i.m
  br i1 %i.n, label %.critedge.i, label %_ZNSt3mapImN5boost9unit_test12test_resultsESt4lessImESaISt4pairIKmS2_EEEixERS6_.exit

.critedge.i:                                      ; preds = %bb.e, %_ZNSt3mapImN5boost9unit_test12test_resultsESt4lessImESaISt4pairIKmS2_EEE11lower_boundERS6_.exit.i, %_ZN5boost9unit_test12_GLOBAL__N_19s_rc_implEv.exit
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.e ], [ getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 8), %_ZNSt3mapImN5boost9unit_test12test_resultsESt4lessImESaISt4pairIKmS2_EEE11lower_boundERS6_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 8), %_ZN5boost9unit_test12_GLOBAL__N_19s_rc_implEv.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr %i.e, ptr %2, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.o = call ptr @_ZNSt8_Rb_treeImSt4pairIKmN5boost9unit_test12test_resultsEESt10_Select1stIS5_ESt4lessImESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %_ZNSt3mapImN5boost9unit_test12test_resultsESt4lessImESaISt4pairIKmS2_EEEixERS6_.exit

_ZNSt3mapImN5boost9unit_test12test_resultsESt4lessImESaISt4pairIKmS2_EEEixERS6_.exit: ; preds = %bb.e, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.o, %.critedge.i ], [ %.19.i.i.i.i, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(107) %i.p, i8 0, i64 107, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.r = load i64, ptr %i.q, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 72
  store i64 %i.r, ptr %i.s, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost9unit_test19results_collector_t16test_unit_finishERKNS0_9test_unitEm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(280) %1, i64 noundef %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple", align 8        ; 4 uses
  %4 = alloca %"class.std::tuple.58", align 1     ; 3 uses
  %5 = alloca %"class.boost::unit_test::results_collect_helper", align 8 ; 6 uses
  %6 = alloca %"class.boost::unit_test::ut_detail::entry_value_collector", align 1 ; 7 uses
  %7 = alloca %"struct.boost::unit_test::log::begin", align 8 ; 7 uses
  %8 = alloca %"class.boost::unit_test::lazy_ostream_impl", align 8 ; 8 uses
  %9 = alloca %"class.boost::unit_test::lazy_ostream_impl.44", align 8 ; 8 uses
  %10 = alloca %"class.boost::unit_test::lazy_ostream_impl.45", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.boost::unit_test::ut_detail::entry_value_collector", align 1 ; 7 uses
  %13 = alloca %"struct.boost::unit_test::log::begin", align 8 ; 7 uses
  %14 = alloca %"class.boost::unit_test::lazy_ostream_impl.46", align 8 ; 8 uses
  %15 = alloca %"class.boost::unit_test::lazy_ostream_impl.44", align 8 ; 8 uses
  %16 = alloca %"class.boost::unit_test::lazy_ostream_impl.45", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5boost9unit_test12_GLOBAL__N_19s_rc_implEv.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst) #18
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5boost9unit_test12_GLOBAL__N_19s_rc_implEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 8), align 8, !tbaa !25
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 16), align 8, !tbaa !26
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 24), align 8, !tbaa !27
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 32), align 8, !tbaa !28
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 40), align 8, !tbaa !29
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost9unit_test12_GLOBAL__N_122results_collector_implD2Ev, ptr nonnull @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, ptr nonnull @__dso_handle) #18 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst) #18
  br label %_ZN5boost9unit_test12_GLOBAL__N_19s_rc_implEv.exit

_ZN5boost9unit_test12_GLOBAL__N_19s_rc_implEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 16), align 8, !tbaa !26 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5boost9unit_test12_GLOBAL__N_19s_rc_implEv.exit
  %i.g = load i64, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.d ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 8), %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.d ]
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !16
  %i.j = icmp ult i64 %i.i, %i.g                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.j, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.j, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !33 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapImN5boost9unit_test12test_resultsESt4lessImESaISt4pairIKmS2_EEE11lower_boundERS6_.exit.i, label %bb.d, !llvm.loop !0

_ZNSt3mapImN5boost9unit_test12test_resultsESt4lessImESaISt4pairIKmS2_EEE11lower_boundERS6_.exit.i: ; preds = %bb.d
  %i.k = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 8)
  br i1 %i.k, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapImN5boost9unit_test12test_resultsESt4lessImESaISt4pairIKmS2_EEE11lower_boundERS6_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !16
  %i.n = icmp ult i64 %i.g, %i.m
  br i1 %i.n, label %.critedge.i, label %_ZNSt3mapImN5boost9unit_test12test_resultsESt4lessImESaISt4pairIKmS2_EEEixERS6_.exit

.critedge.i:                                      ; preds = %bb.e, %_ZNSt3mapImN5boost9unit_test12test_resultsESt4lessImESaISt4pairIKmS2_EEE11lower_boundERS6_.exit.i, %_ZN5boost9unit_test12_GLOBAL__N_19s_rc_implEv.exit
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.e ], [ getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 8), %_ZNSt3mapImN5boost9unit_test12test_resultsESt4lessImESaISt4pairIKmS2_EEE11lower_boundERS6_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 8), %_ZN5boost9unit_test12_GLOBAL__N_19s_rc_implEv.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr %i.e, ptr %3, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.o = call ptr @_ZNSt8_Rb_treeImSt4pairIKmN5boost9unit_test12test_resultsEESt10_Select1stIS5_ESt4lessImESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZNSt3mapImN5boost9unit_test12test_resultsESt4lessImESaISt4pairIKmS2_EEEixERS6_.exit

_ZNSt3mapImN5boost9unit_test12test_resultsESt4lessImESaISt4pairIKmS2_EEEixERS6_.exit: ; preds = %bb.e, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.o, %.critedge.i ], [ %.19.i.i.i.i, %bb.e ] ; 7 uses
  %i.p = load i32, ptr %1, align 8, !tbaa !91
  %i.q = icmp eq i32 %i.p, 16
  br i1 %i.q, label %_ZN5boost9unit_test18traverse_test_treeERKNS0_9test_unitERNS0_17test_tree_visitorEb.exit, label %bb.f

_ZN5boost9unit_test18traverse_test_treeERKNS0_9test_unitERNS0_17test_tree_visitorEb.exit: ; preds = %_ZNSt3mapImN5boost9unit_test12test_resultsESt4lessImESaISt4pairIKmS2_EEEixERS6_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5boost9unit_test22results_collect_helperE, i64 16), ptr %5, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.r, ptr %i.s, align 8, !tbaa !128
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %1, ptr %i.t, align 8, !tbaa !129
  %i.u = getelementptr inbounds i8, ptr %1, i64 -8
  call void @_ZN5boost9unit_test18traverse_test_treeERKNS0_10test_suiteERNS0_17test_tree_visitorEb(ptr noundef nonnull align 8 dereferenceable(384) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %5, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %.critedge41

bb.f:                                             ; preds = %_ZNSt3mapImN5boost9unit_test12test_resultsESt4lessImESaISt4pairIKmS2_EEEixERS6_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 144 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !17, !range !13, !noundef !14
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %.critedge41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56
  %i.z = load i64, ptr %i.y, align 8, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 72
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !16
  %.not55 = icmp ult i64 %i.z, %i.ab
  br i1 %.not55, label %bb.h, label %.critedge.thread65

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ac = load ptr, ptr @_ZN5boost9unit_test12_GLOBAL__N_113unit_test_logE, align 8, !tbaa !95, !nonnull !14, !align !96
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store ptr @.str, ptr %7, align 8, !tbaa !130
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @.str, i64 20), ptr %i.ad, align 8, !tbaa !131
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.ae, align 8, !tbaa !133
  %i.af = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost9unit_test15unit_test_log_tlsERKNS0_3log5beginE(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %7)
  call void @_ZN5boost9unit_test15unit_test_log_tclENS0_9log_levelE(ptr dead_on_unwind nonnull writable sret(%"class.boost::unit_test::ut_detail::entry_value_collector") align 1 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.af, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 0, ptr %i.ag, align 8, !tbaa !134, !alias.scope !135
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost9unit_test17lazy_ostream_implINS0_12lazy_ostreamEA11_cRA11_KcEE, i64 16), ptr %10, align 8, !tbaa !31, !alias.scope !135
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr @_ZN5boost9unit_test12lazy_ostream4instE, ptr %i.ah, align 8, !tbaa !136, !alias.scope !135
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr @.str.2, ptr %i.ai, align 8, !tbaa !137, !alias.scope !135
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  invoke void @_ZNK5boost9unit_test9test_unit9full_nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(280) %1)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.aj, align 8, !tbaa !134, !alias.scope !138
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost9unit_test17lazy_ostream_implINS1_INS0_12lazy_ostreamEA11_cRA11_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSD_EE, i64 16), ptr %9, align 8, !tbaa !31, !alias.scope !138
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %10, ptr %i.ak, align 8, !tbaa !139, !alias.scope !138
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %11, ptr %i.al, align 8, !tbaa !140, !alias.scope !138
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 0, ptr %i.am, align 8, !tbaa !134, !alias.scope !141
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost9unit_test17lazy_ostream_implINS1_INS1_INS0_12lazy_ostreamEA11_cRA11_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSD_EEA34_cRA34_S4_EE, i64 16), ptr %8, align 8, !tbaa !31, !alias.scope !141
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %9, ptr %i.an, align 8, !tbaa !142, !alias.scope !141
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr @.str.3, ptr %i.ao, align 8, !tbaa !137, !alias.scope !141
  %i.ap = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5boost9unit_test9ut_detail21entry_value_collectorlsERKNS0_12lazy_ostreamE(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(9) %8)
          to label %bb.j unwind label %bb.l       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr %11, align 8, !tbaa !101  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %.critedge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !143
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #19
  br label %.critedge

bb.k:                                             ; preds = %bb.h
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

bb.l:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %11, align 8, !tbaa !101  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.l
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !143
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.k
  %.pn.pn.pn = phi { ptr, i32 } [ %i.av, %bb.k ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %i.aw, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN5boost9unit_test9ut_detail21entry_value_collectorD1Ev(ptr noundef nonnull align 1 dead_on_return(1) dereferenceable(1) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.s

.critedge:                                        ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN5boost9unit_test9ut_detail21entry_value_collectorD1Ev(ptr noundef nonnull align 1 dead_on_return(1) dereferenceable(1) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %.pre = load i8, ptr %i.v, align 8, !tbaa !17, !range !13
  %i.bc = trunc nuw i8 %.pre to i1
  br i1 %i.bc, label %.critedge41, label %.critedge.thread65

.critedge.thread65:                               ; preds = %bb.g, %.critedge
  %18 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56
  %19 = load i64, ptr %18, align 8, !tbaa !16
  %.not = icmp eq i64 %19, 0
  br i1 %.not, label %bb.m, label %.critedge41

bb.m:                                             ; preds = %.critedge.thread65
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !16
  %.not56 = icmp eq i64 %i.be, 0
  br i1 %.not56, label %bb.n, label %.critedge41

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.bf = load ptr, ptr @_ZN5boost9unit_test12_GLOBAL__N_113unit_test_logE, align 8, !tbaa !95, !nonnull !14, !align !96
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  store ptr @.str, ptr %13, align 8, !tbaa !130
  %i.bg = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @.str, i64 20), ptr %i.bg, align 8, !tbaa !131
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 0, ptr %i.bh, align 8, !tbaa !133
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost9unit_test15unit_test_log_tlsERKNS0_3log5beginE(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %13)
  call void @_ZN5boost9unit_test15unit_test_log_tclENS0_9log_levelE(ptr dead_on_unwind nonnull writable sret(%"class.boost::unit_test::ut_detail::entry_value_collector") align 1 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.bi, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.bj = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i8 0, ptr %i.bj, align 8, !tbaa !134, !alias.scope !144
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost9unit_test17lazy_ostream_implINS0_12lazy_ostreamEA11_cRA11_KcEE, i64 16), ptr %16, align 8, !tbaa !31, !alias.scope !144
  %i.bk = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr @_ZN5boost9unit_test12lazy_ostream4instE, ptr %i.bk, align 8, !tbaa !136, !alias.scope !144
  %i.bl = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr @.str.2, ptr %i.bl, align 8, !tbaa !137, !alias.scope !144
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  invoke void @_ZNK5boost9unit_test9test_unit9full_nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(280) %1)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i8 0, ptr %i.bm, align 8, !tbaa !134, !alias.scope !145
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost9unit_test17lazy_ostream_implINS1_INS0_12lazy_ostreamEA11_cRA11_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSD_EE, i64 16), ptr %15, align 8, !tbaa !31, !alias.scope !145
  %i.bn = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %16, ptr %i.bn, align 8, !tbaa !139, !alias.scope !145
  %i.bo = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %17, ptr %i.bo, align 8, !tbaa !140, !alias.scope !145
  %i.bp = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i8 0, ptr %i.bp, align 8, !tbaa !134, !alias.scope !146
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost9unit_test17lazy_ostream_implINS1_INS1_INS0_12lazy_ostreamEA11_cRA11_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSD_EEA30_cRA30_S4_EE, i64 16), ptr %14, align 8, !tbaa !31, !alias.scope !146
  %i.bq = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %15, ptr %i.bq, align 8, !tbaa !142, !alias.scope !146
  %i.br = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr @.str.4, ptr %i.br, align 8, !tbaa !137, !alias.scope !146
  %i.bs = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5boost9unit_test9ut_detail21entry_value_collectorlsERKNS0_12lazy_ostreamE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(9) %14)
          to label %bb.p unwind label %bb.r       ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.bt = load ptr, ptr %17, align 8, !tbaa !101  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.p
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !143
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @_ZN5boost9unit_test9ut_detail21entry_value_collectorD1Ev(ptr noundef nonnull align 1 dead_on_return(1) dereferenceable(1) %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %.critedge41

bb.q:                                             ; preds = %bb.n
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.r:                                             ; preds = %bb.o
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = load ptr, ptr %17, align 8, !tbaa !101  ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.r
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !143
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.q
  %.pn32.pn.pn = phi { ptr, i32 } [ %i.by, %bb.q ], [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %i.bz, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @_ZN5boost9unit_test9ut_detail21entry_value_collectorD1Ev(ptr noundef nonnull align 1 dead_on_return(1) dereferenceable(1) %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.s

.critedge41:                                      ; preds = %bb.f, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %.critedge, %.critedge.thread65, %_ZN5boost9unit_test18traverse_test_treeERKNS0_9test_unitERNS0_17test_tree_visitorEb.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 136
  store i64 %2, ptr %i.cf, align 8, !tbaa !19
  ret void

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn38 = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %.pn32.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ]
  resume { ptr, i32 } %.pn38
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost9unit_test15unit_test_log_tlsERKNS0_3log5beginE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

declare void @_ZN5boost9unit_test15unit_test_log_tclENS0_9log_levelE(ptr dead_on_unwind writable sret(%"class.boost::unit_test::ut_detail::entry_value_collector") align 1, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

declare noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5boost9unit_test9ut_detail21entry_value_collectorlsERKNS0_12lazy_ostreamE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #0

declare void @_ZNK5boost9unit_test9test_unit9full_nameB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(280)) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN5boost9unit_test9ut_detail21entry_value_collectorD1Ev(ptr noundef nonnull align 1 dead_on_return(1) dereferenceable(1)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN5boost9unit_test19results_collector_t17test_unit_skippedERKNS0_9test_unitENS0_13basic_cstringIKcEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(280) %1, ptr nofree readnone align 8 captures(none) dead_on_return %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple", align 8        ; 4 uses
  %4 = alloca %"class.std::tuple.58", align 1     ; 3 uses
  %5 = alloca %"class.boost::unit_test::test_case_counter", align 8 ; 6 uses
  %i.a = load atomic i8, ptr @_ZGVZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5boost9unit_test12_GLOBAL__N_19s_rc_implEv.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst) #18
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5boost9unit_test12_GLOBAL__N_19s_rc_implEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 8), align 8, !tbaa !25
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 16), align 8, !tbaa !26
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 24), align 8, !tbaa !27
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 32), align 8, !tbaa !28
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 40), align 8, !tbaa !29
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost9unit_test12_GLOBAL__N_122results_collector_implD2Ev, ptr nonnull @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, ptr nonnull @__dso_handle) #18 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst) #18
  br label %_ZN5boost9unit_test12_GLOBAL__N_19s_rc_implEv.exit

_ZN5boost9unit_test12_GLOBAL__N_19s_rc_implEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 16), align 8, !tbaa !26 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5boost9unit_test12_GLOBAL__N_19s_rc_implEv.exit
  %i.g = load i64, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.d ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 8), %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.d ]
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !16
  %i.j = icmp ult i64 %i.i, %i.g                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.j, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.j, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !33 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapImN5boost9unit_test12test_resultsESt4lessImESaISt4pairIKmS2_EEE11lower_boundERS6_.exit.i, label %bb.d, !llvm.loop !0

_ZNSt3mapImN5boost9unit_test12test_resultsESt4lessImESaISt4pairIKmS2_EEE11lower_boundERS6_.exit.i: ; preds = %bb.d
  %i.k = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 8)
  br i1 %i.k, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapImN5boost9unit_test12test_resultsESt4lessImESaISt4pairIKmS2_EEE11lower_boundERS6_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !16
  %i.n = icmp ult i64 %i.g, %i.m
  br i1 %i.n, label %.critedge.i, label %_ZNSt3mapImN5boost9unit_test12test_resultsESt4lessImESaISt4pairIKmS2_EEEixERS6_.exit

.critedge.i:                                      ; preds = %bb.e, %_ZNSt3mapImN5boost9unit_test12test_resultsESt4lessImESaISt4pairIKmS2_EEE11lower_boundERS6_.exit.i, %_ZN5boost9unit_test12_GLOBAL__N_19s_rc_implEv.exit
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.e ], [ getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 8), %_ZNSt3mapImN5boost9unit_test12test_resultsESt4lessImESaISt4pairIKmS2_EEE11lower_boundERS6_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, i64 8), %_ZN5boost9unit_test12_GLOBAL__N_19s_rc_implEv.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr %i.e, ptr %3, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.o = call ptr @_ZNSt8_Rb_treeImSt4pairIKmN5boost9unit_test12test_resultsEESt10_Select1stIS5_ESt4lessImESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN5boost9unit_test12_GLOBAL__N_19s_rc_implEvE8the_inst, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZNSt3mapImN5boost9unit_test12test_resultsESt4lessImESaISt4pairIKmS2_EEEixERS6_.exit

_ZNSt3mapImN5boost9unit_test12test_resultsESt4lessImESaISt4pairIKmS2_EEEixERS6_.exit: ; preds = %bb.e, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.o, %.critedge.i ], [ %.19.i.i.i.i, %bb.e ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(107) %i.p, i8 0, i64 107, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 145
  store i8 1, ptr %i.q, align 1, !tbaa !12
  %i.r = load i32, ptr %1, align 8, !tbaa !91
  %i.s = icmp eq i32 %i.r, 16
end_hunk_0

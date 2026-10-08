Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_func_ops_main?download=true
inline.NumInlined: 21423
inline.NumDeleted: 1880
loop-unroll.NumCompletelyUnrolled: 144
loop-unroll.NumRuntimeUnrolled: 369
loop-unroll.NumUnrolled: 513
begin_hunk_0_@_ZN6duckdb14ScalarFunctionD2Ev:bb.a
bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit, !prof !80

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !72   ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.u = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #29
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit, %bb.h
  tail call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(236) %0) #25
  ret void
}

declare noundef zeroext i1 @_ZNK6duckdb11LogicalType10IsIntegralEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_121PropagateNumericStatsINS_14TryAddOperatorENS0_22AddPropagateStatisticsENS_11AddOperatorEEENS_10unique_ptrINS_14BaseStatisticsESt14default_deleteIS6_ELb1EEERNS_13ClientContextERNS_23FunctionStatisticsInputE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.61") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function", align 16    ; 9 uses
  %4 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %5 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %6 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %7 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %8 = alloca %"class.duckdb::Value", align 8     ; 5 uses
  %9 = alloca %"class.duckdb::Value", align 8     ; 5 uses
  %10 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %11 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %12 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %13 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %14 = alloca %"class.duckdb::Value", align 8    ; 5 uses
  %15 = alloca %"class.duckdb::Value", align 8    ; 5 uses
  %16 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %17 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %18 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %19 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %20 = alloca %"class.duckdb::Value", align 8    ; 5 uses
  %21 = alloca %"class.duckdb::Value", align 8    ; 5 uses
  %22 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %23 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %24 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %25 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %26 = alloca %"class.duckdb::Value", align 8    ; 5 uses
  %27 = alloca %"class.duckdb::Value", align 8    ; 5 uses
  %28 = alloca %"class.duckdb::Value", align 8    ; 12 uses
  %29 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %30 = alloca %"class.duckdb::Value", align 8    ; 12 uses
  %31 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %32 = alloca %"class.duckdb::Value", align 8    ; 6 uses
  %33 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %34 = alloca %"class.duckdb::Value", align 8    ; 6 uses
  %35 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %36 = alloca %"class.std::function", align 8    ; 3 uses
  %37 = alloca %"class.duckdb::BaseStatistics", align 8 ; 10 uses
  %38 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163, !nonnull !154, !align !164 ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !165, !nonnull !154, !align !164 ; 6 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb6vectorINS_14BaseStatisticsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0) ; 10 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb6vectorINS_14BaseStatisticsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1) ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 noundef zeroext 1)
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %28, ptr noundef nonnull %29)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %29) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %31, i8 noundef zeroext 1)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %30, ptr noundef nonnull %31)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %31) #25
  %i.f = invoke noundef zeroext i1 @_ZN6duckdb12NumericStats9HasMinMaxERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  br i1 %i.f, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.g = invoke noundef zeroext i1 @_ZN6duckdb12NumericStats9HasMinMaxERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %i.e)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  br i1 %i.g, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 57 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !73
  switch i8 %i.j, label %bb.ao [
    i8 3, label %bb.m
    i8 5, label %bb.t
    i8 7, label %bb.aa
    i8 9, label %bb.ah
  ]

bb.i:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %29) #25
  br label %bb.bt

bb.j:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.k:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %31) #25
  br label %bb.bs

bb.l:                                             ; preds = %.noexc88, %bb.an, %_ZN6duckdb12NumericStats6GetMaxIlEET_RKNS_14BaseStatisticsE.exit.i, %bb.ak, %_ZN6duckdb12NumericStats6GetMinIlEET_RKNS_14BaseStatisticsE.exit.i, %bb.ah, %.noexc77, %bb.ag, %_ZN6duckdb12NumericStats6GetMaxIiEET_RKNS_14BaseStatisticsE.exit.i, %bb.ad, %_ZN6duckdb12NumericStats6GetMinIiEET_RKNS_14BaseStatisticsE.exit.i, %bb.aa, %.noexc64, %bb.z, %_ZN6duckdb12NumericStats6GetMaxIsEET_RKNS_14BaseStatisticsE.exit.i, %bb.w, %_ZN6duckdb12NumericStats6GetMinIsEET_RKNS_14BaseStatisticsE.exit.i, %bb.t, %.noexc49, %bb.s, %_ZN6duckdb12NumericStats6GetMaxIaEET_RKNS_14BaseStatisticsE.exit.i, %bb.p, %_ZN6duckdb12NumericStats6GetMinIaEET_RKNS_14BaseStatisticsE.exit.i, %bb.m, %bb.bc, %bb.f, %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  invoke void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %25, ptr noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.m
  %i.o = invoke noundef signext i8 @_ZNK6duckdb5Value14GetValueUnsafeIaEET_v(ptr noundef nonnull align 8 dereferenceable(64) %25)
          to label %_ZN6duckdb12NumericStats6GetMinIaEET_RKNS_14BaseStatisticsE.exit.i unwind label %bb.n

bb.n:                                             ; preds = %.noexc
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %25) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  br label %.body

_ZN6duckdb12NumericStats6GetMinIaEET_RKNS_14BaseStatisticsE.exit.i: ; preds = %.noexc
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %25) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  invoke void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %24, ptr noundef nonnull align 8 dereferenceable(128) %i.e)
          to label %.noexc46 unwind label %bb.l

.noexc46:                                         ; preds = %_ZN6duckdb12NumericStats6GetMinIaEET_RKNS_14BaseStatisticsE.exit.i
  %i.q = invoke noundef signext i8 @_ZNK6duckdb5Value14GetValueUnsafeIaEET_v(ptr noundef nonnull align 8 dereferenceable(64) %24)
          to label %_ZN6duckdb12NumericStats6GetMinIaEET_RKNS_14BaseStatisticsE.exit9.i unwind label %bb.o

bb.o:                                             ; preds = %.noexc46
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %24) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  br label %.body

_ZN6duckdb12NumericStats6GetMinIaEET_RKNS_14BaseStatisticsE.exit9.i: ; preds = %.noexc46
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %24) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  %i.s = sext i8 %i.o to i16
  %i.t = sext i8 %i.q to i16
  %i.u = add nsw i16 %i.t, %i.s                   ; 2 uses
  %i.v = add nsw i16 %i.u, 128
  %or.cond.i.i.i = icmp ult i16 %i.v, 256
  br i1 %or.cond.i.i.i, label %bb.p, label %.critedge

bb.p:                                             ; preds = %_ZN6duckdb12NumericStats6GetMinIaEET_RKNS_14BaseStatisticsE.exit9.i
  %39 = zext i16 %i.u to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  invoke void @_ZN6duckdb12NumericStats3MaxERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %23, ptr noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %.noexc47 unwind label %bb.l

.noexc47:                                         ; preds = %bb.p
  %i.w = invoke noundef signext i8 @_ZNK6duckdb5Value14GetValueUnsafeIaEET_v(ptr noundef nonnull align 8 dereferenceable(64) %23)
          to label %_ZN6duckdb12NumericStats6GetMaxIaEET_RKNS_14BaseStatisticsE.exit.i unwind label %bb.q

bb.q:                                             ; preds = %.noexc47
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  br label %.body

_ZN6duckdb12NumericStats6GetMaxIaEET_RKNS_14BaseStatisticsE.exit.i: ; preds = %.noexc47
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  invoke void @_ZN6duckdb12NumericStats3MaxERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %22, ptr noundef nonnull align 8 dereferenceable(128) %i.e)
          to label %.noexc48 unwind label %bb.l

.noexc48:                                         ; preds = %_ZN6duckdb12NumericStats6GetMaxIaEET_RKNS_14BaseStatisticsE.exit.i
  %i.y = invoke noundef signext i8 @_ZNK6duckdb5Value14GetValueUnsafeIaEET_v(ptr noundef nonnull align 8 dereferenceable(64) %22)
          to label %_ZN6duckdb12NumericStats6GetMaxIaEET_RKNS_14BaseStatisticsE.exit10.i unwind label %bb.r

bb.r:                                             ; preds = %.noexc48
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %22) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br label %.body

_ZN6duckdb12NumericStats6GetMaxIaEET_RKNS_14BaseStatisticsE.exit10.i: ; preds = %.noexc48
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %22) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  %i.aa = sext i8 %i.w to i16
  %i.ab = sext i8 %i.y to i16
  %i.ac = add nsw i16 %i.ab, %i.aa                ; 2 uses
  %i.ad = add nsw i16 %i.ac, 128
  %or.cond.i.i11.i = icmp ult i16 %i.ad, 256
  br i1 %or.cond.i.i11.i, label %bb.s, label %.critedge

bb.s:                                             ; preds = %_ZN6duckdb12NumericStats6GetMaxIaEET_RKNS_14BaseStatisticsE.exit10.i
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  %sext.i = shl i64 %39, 56
  %40 = ashr exact i64 %sext.i, 56
  invoke void @_ZN6duckdb5Value7NumericERKNS_11LogicalTypeEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %26, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %40)
          to label %.noexc49 unwind label %bb.l

.noexc49:                                         ; preds = %bb.s
  %41 = zext i16 %i.ac to i64
  %i.ae = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %28, ptr noundef nonnull align 8 dereferenceable(64) %26) #25 ; 0 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %26) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  %sext20.i = shl i64 %41, 56
  %42 = ashr exact i64 %sext20.i, 56
  invoke void @_ZN6duckdb5Value7NumericERKNS_11LogicalTypeEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %27, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %42)
          to label %.noexc50 unwind label %bb.l

.noexc50:                                         ; preds = %.noexc49
  %i.af = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %30, ptr noundef nonnull align 8 dereferenceable(64) %27) #25 ; 0 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %27) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  br label %_ZN6duckdb12_GLOBAL__N_122AddPropagateStatistics9OperationIaNS_14TryAddOperatorEEEbRKNS_11LogicalTypeERNS_14BaseStatisticsES8_RNS_5ValueESA_.exit

bb.t:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  invoke void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %19, ptr noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %.noexc58 unwind label %bb.l

.noexc58:                                         ; preds = %bb.t
  %i.ag = invoke noundef signext i16 @_ZNK6duckdb5Value14GetValueUnsafeIsEET_v(ptr noundef nonnull align 8 dereferenceable(64) %19)
          to label %_ZN6duckdb12NumericStats6GetMinIsEET_RKNS_14BaseStatisticsE.exit.i unwind label %bb.u

bb.u:                                             ; preds = %.noexc58
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %19) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %.body

_ZN6duckdb12NumericStats6GetMinIsEET_RKNS_14BaseStatisticsE.exit.i: ; preds = %.noexc58
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %19) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  invoke void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %18, ptr noundef nonnull align 8 dereferenceable(128) %i.e)
          to label %.noexc61.a unwind label %bb.l

.noexc61.a:                                       ; preds = %_ZN6duckdb12NumericStats6GetMinIsEET_RKNS_14BaseStatisticsE.exit.i
  %i.ai = invoke noundef signext i16 @_ZNK6duckdb5Value14GetValueUnsafeIsEET_v(ptr noundef nonnull align 8 dereferenceable(64) %18)
          to label %_ZN6duckdb12NumericStats6GetMinIsEET_RKNS_14BaseStatisticsE.exit9.i unwind label %bb.v

bb.v:                                             ; preds = %.noexc61.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %.body

_ZN6duckdb12NumericStats6GetMinIsEET_RKNS_14BaseStatisticsE.exit9.i: ; preds = %.noexc61.a
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  %i.ak = sext i16 %i.ag to i32
  %i.al = sext i16 %i.ai to i32
  %i.am = add nsw i32 %i.al, %i.ak                ; 2 uses
  %i.an = add nsw i32 %i.am, 32768
  %or.cond.i.i.i53 = icmp ult i32 %i.an, 65536
  br i1 %or.cond.i.i.i53, label %bb.w, label %.critedge

bb.w:                                             ; preds = %_ZN6duckdb12NumericStats6GetMinIsEET_RKNS_14BaseStatisticsE.exit9.i
  %43 = zext i32 %i.am to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  invoke void @_ZN6duckdb12NumericStats3MaxERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %17, ptr noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %.noexc62.a unwind label %bb.l

.noexc62.a:                                       ; preds = %bb.w
  %i.ao = invoke noundef signext i16 @_ZNK6duckdb5Value14GetValueUnsafeIsEET_v(ptr noundef nonnull align 8 dereferenceable(64) %17)
          to label %_ZN6duckdb12NumericStats6GetMaxIsEET_RKNS_14BaseStatisticsE.exit.i unwind label %bb.x

bb.x:                                             ; preds = %.noexc62.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %.body

_ZN6duckdb12NumericStats6GetMaxIsEET_RKNS_14BaseStatisticsE.exit.i: ; preds = %.noexc62.a
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  invoke void @_ZN6duckdb12NumericStats3MaxERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %16, ptr noundef nonnull align 8 dereferenceable(128) %i.e)
          to label %.noexc63.a unwind label %bb.l

.noexc63.a:                                       ; preds = %_ZN6duckdb12NumericStats6GetMaxIsEET_RKNS_14BaseStatisticsE.exit.i
  %i.aq = invoke noundef signext i16 @_ZNK6duckdb5Value14GetValueUnsafeIsEET_v(ptr noundef nonnull align 8 dereferenceable(64) %16)
          to label %_ZN6duckdb12NumericStats6GetMaxIsEET_RKNS_14BaseStatisticsE.exit10.i unwind label %bb.y

bb.y:                                             ; preds = %.noexc63.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %.body

_ZN6duckdb12NumericStats6GetMaxIsEET_RKNS_14BaseStatisticsE.exit10.i: ; preds = %.noexc63.a
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  %i.as = sext i16 %i.ao to i32
  %i.at = sext i16 %i.aq to i32
  %i.au = add nsw i32 %i.at, %i.as                ; 2 uses
  %i.av = add nsw i32 %i.au, 32768
  %or.cond.i.i11.i55 = icmp ult i32 %i.av, 65536
  br i1 %or.cond.i.i11.i55, label %bb.z, label %.critedge

bb.z:                                             ; preds = %_ZN6duckdb12NumericStats6GetMaxIsEET_RKNS_14BaseStatisticsE.exit10.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  %sext.i56 = shl i64 %43, 48
  %44 = ashr exact i64 %sext.i56, 48
  invoke void @_ZN6duckdb5Value7NumericERKNS_11LogicalTypeEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %44)
          to label %.noexc64 unwind label %bb.l

.noexc64:                                         ; preds = %bb.z
  %45 = zext i32 %i.au to i64
  %i.aw = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %28, ptr noundef nonnull align 8 dereferenceable(64) %20) #25 ; 0 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %20) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  %sext20.i57 = shl i64 %45, 48
  %46 = ashr exact i64 %sext20.i57, 48
  invoke void @_ZN6duckdb5Value7NumericERKNS_11LogicalTypeEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %21, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %46)
          to label %.noexc65 unwind label %bb.l

.noexc65:                                         ; preds = %.noexc64
  %i.ax = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %30, ptr noundef nonnull align 8 dereferenceable(64) %21) #25 ; 0 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %21) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %_ZN6duckdb12_GLOBAL__N_122AddPropagateStatistics9OperationIaNS_14TryAddOperatorEEEbRKNS_11LogicalTypeERNS_14BaseStatisticsES8_RNS_5ValueESA_.exit

bb.aa:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  invoke void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %13, ptr noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %.noexc71 unwind label %bb.l

.noexc71:                                         ; preds = %bb.aa
  %i.ay = invoke noundef i32 @_ZNK6duckdb5Value14GetValueUnsafeIiEET_v(ptr noundef nonnull align 8 dereferenceable(64) %13)
          to label %_ZN6duckdb12NumericStats6GetMinIiEET_RKNS_14BaseStatisticsE.exit.i unwind label %bb.ab

bb.ab:                                            ; preds = %.noexc71
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %.body

_ZN6duckdb12NumericStats6GetMinIiEET_RKNS_14BaseStatisticsE.exit.i: ; preds = %.noexc71
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  invoke void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %12, ptr noundef nonnull align 8 dereferenceable(128) %i.e)
          to label %.noexc74.a unwind label %bb.l

.noexc74.a:                                       ; preds = %_ZN6duckdb12NumericStats6GetMinIiEET_RKNS_14BaseStatisticsE.exit.i
  %i.ba = invoke noundef i32 @_ZNK6duckdb5Value14GetValueUnsafeIiEET_v(ptr noundef nonnull align 8 dereferenceable(64) %12)
          to label %_ZN6duckdb12NumericStats6GetMinIiEET_RKNS_14BaseStatisticsE.exit9.i unwind label %bb.ac

bb.ac:                                            ; preds = %.noexc74.a
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %.body

_ZN6duckdb12NumericStats6GetMinIiEET_RKNS_14BaseStatisticsE.exit9.i: ; preds = %.noexc74.a
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.bc = sext i32 %i.ay to i64
  %i.bd = sext i32 %i.ba to i64
  %i.be = add nsw i64 %i.bd, %i.bc                ; 2 uses
  %i.bf = add nsw i64 %i.be, 2147483648
  %or.cond.i.i.i68 = icmp ult i64 %i.bf, 4294967296
  br i1 %or.cond.i.i.i68, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %_ZN6duckdb12NumericStats6GetMinIiEET_RKNS_14BaseStatisticsE.exit9.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZN6duckdb12NumericStats3MaxERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %11, ptr noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %.noexc75.a unwind label %bb.l

.noexc75.a:                                       ; preds = %bb.ad
  %i.bg = invoke noundef i32 @_ZNK6duckdb5Value14GetValueUnsafeIiEET_v(ptr noundef nonnull align 8 dereferenceable(64) %11)
          to label %_ZN6duckdb12NumericStats6GetMaxIiEET_RKNS_14BaseStatisticsE.exit.i unwind label %bb.ae

bb.ae:                                            ; preds = %.noexc75.a
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.body

_ZN6duckdb12NumericStats6GetMaxIiEET_RKNS_14BaseStatisticsE.exit.i: ; preds = %.noexc75.a
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZN6duckdb12NumericStats3MaxERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %10, ptr noundef nonnull align 8 dereferenceable(128) %i.e)
          to label %.noexc76.a unwind label %bb.l

.noexc76.a:                                       ; preds = %_ZN6duckdb12NumericStats6GetMaxIiEET_RKNS_14BaseStatisticsE.exit.i
  %i.bi = invoke noundef i32 @_ZNK6duckdb5Value14GetValueUnsafeIiEET_v(ptr noundef nonnull align 8 dereferenceable(64) %10)
          to label %_ZN6duckdb12NumericStats6GetMaxIiEET_RKNS_14BaseStatisticsE.exit10.i unwind label %bb.af

bb.af:                                            ; preds = %.noexc76.a
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %.body

_ZN6duckdb12NumericStats6GetMaxIiEET_RKNS_14BaseStatisticsE.exit10.i: ; preds = %.noexc76.a
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.bk = sext i32 %i.bg to i64
  %i.bl = sext i32 %i.bi to i64
  %i.bm = add nsw i64 %i.bl, %i.bk                ; 2 uses
  %i.bn = add nsw i64 %i.bm, 2147483648
  %or.cond.i.i11.i70 = icmp ult i64 %i.bn, 4294967296
  br i1 %or.cond.i.i11.i70, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %_ZN6duckdb12NumericStats6GetMaxIiEET_RKNS_14BaseStatisticsE.exit10.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  invoke void @_ZN6duckdb5Value7NumericERKNS_11LogicalTypeEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.be)
          to label %.noexc77 unwind label %bb.l

.noexc77:                                         ; preds = %bb.ag
  %i.bo = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %28, ptr noundef nonnull align 8 dereferenceable(64) %14) #25 ; 0 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  invoke void @_ZN6duckdb5Value7NumericERKNS_11LogicalTypeEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.bm)
          to label %.noexc78 unwind label %bb.l

.noexc78:                                         ; preds = %.noexc77
  %i.bp = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %30, ptr noundef nonnull align 8 dereferenceable(64) %15) #25 ; 0 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %_ZN6duckdb12_GLOBAL__N_122AddPropagateStatistics9OperationIaNS_14TryAddOperatorEEEbRKNS_11LogicalTypeERNS_14BaseStatisticsES8_RNS_5ValueESA_.exit

bb.ah:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %7, ptr noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %.noexc82 unwind label %bb.l

.noexc82:                                         ; preds = %bb.ah
  %i.bq = invoke noundef i64 @_ZNK6duckdb5Value14GetValueUnsafeIlEET_v(ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %_ZN6duckdb12NumericStats6GetMinIlEET_RKNS_14BaseStatisticsE.exit.i unwind label %bb.ai

bb.ai:                                            ; preds = %.noexc82
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.body

_ZN6duckdb12NumericStats6GetMinIlEET_RKNS_14BaseStatisticsE.exit.i: ; preds = %.noexc82
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %6, ptr noundef nonnull align 8 dereferenceable(128) %i.e)
          to label %.noexc85.a unwind label %bb.l

.noexc85.a:                                       ; preds = %_ZN6duckdb12NumericStats6GetMinIlEET_RKNS_14BaseStatisticsE.exit.i
  %i.bs = invoke noundef i64 @_ZNK6duckdb5Value14GetValueUnsafeIlEET_v(ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %_ZN6duckdb12NumericStats6GetMinIlEET_RKNS_14BaseStatisticsE.exit9.i unwind label %bb.aj

bb.aj:                                            ; preds = %.noexc85.a
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.body

_ZN6duckdb12NumericStats6GetMinIlEET_RKNS_14BaseStatisticsE.exit9.i: ; preds = %.noexc85.a
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.bu = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bq, i64 %i.bs) ; 2 uses
  %i.bv = extractvalue { i64, i1 } %i.bu, 1
  %i.bw = extractvalue { i64, i1 } %i.bu, 0
  br i1 %i.bv, label %.critedge, label %bb.ak

bb.ak:                                            ; preds = %_ZN6duckdb12NumericStats6GetMinIlEET_RKNS_14BaseStatisticsE.exit9.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZN6duckdb12NumericStats3MaxERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %5, ptr noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %.noexc86.a unwind label %bb.l

.noexc86.a:                                       ; preds = %bb.ak
  %i.bx = invoke noundef i64 @_ZNK6duckdb5Value14GetValueUnsafeIlEET_v(ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZN6duckdb12NumericStats6GetMaxIlEET_RKNS_14BaseStatisticsE.exit.i unwind label %bb.al

bb.al:                                            ; preds = %.noexc86.a
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.body

_ZN6duckdb12NumericStats6GetMaxIlEET_RKNS_14BaseStatisticsE.exit.i: ; preds = %.noexc86.a
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN6duckdb12NumericStats3MaxERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %4, ptr noundef nonnull align 8 dereferenceable(128) %i.e)
          to label %.noexc87.a unwind label %bb.l

.noexc87.a:                                       ; preds = %_ZN6duckdb12NumericStats6GetMaxIlEET_RKNS_14BaseStatisticsE.exit.i
  %i.bz = invoke noundef i64 @_ZNK6duckdb5Value14GetValueUnsafeIlEET_v(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZN6duckdb12NumericStats6GetMaxIlEET_RKNS_14BaseStatisticsE.exit10.i unwind label %bb.am

bb.am:                                            ; preds = %.noexc87.a
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.body

_ZN6duckdb12NumericStats6GetMaxIlEET_RKNS_14BaseStatisticsE.exit10.i: ; preds = %.noexc87.a
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.cb = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bx, i64 %i.bz) ; 2 uses
  %i.cc = extractvalue { i64, i1 } %i.cb, 1
  br i1 %i.cc, label %.critedge, label %bb.an

bb.an:                                            ; preds = %_ZN6duckdb12NumericStats6GetMaxIlEET_RKNS_14BaseStatisticsE.exit10.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_128DeserializeDecimalArithmeticINS_16SubtractOperatorENS_28DecimalSubtractOverflowCheckELb0EEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS5_ELb1EEERNS_12DeserializerERNS_14ScalarFunctionE:bb.a
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !67 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.cg, %i.ci
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i ], [ %i.cg, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #25
  %i.cj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.cj, %i.ci
  br i1 %.not.i.i.i30, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !65
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit
  %i.ck = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.cg, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_125DecimalArithmeticBindDataESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ck) #27
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void

bb.r:                                             ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.at, %bb.k ], [ %i.cl, %bb.r ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #25
  br label %.body

.body:                                            ; preds = %bb.j, %bb.d, %bb.s
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.s ], [ %i.as, %bb.j ], [ %i.ae, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_121PropagateNumericStatsINS_19TrySubtractOperatorENS0_27SubtractPropagateStatisticsENS_16SubtractOperatorEEENS_10unique_ptrINS_14BaseStatisticsESt14default_deleteIS6_ELb1EEERNS_13ClientContextERNS_23FunctionStatisticsInputE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.61") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function", align 16    ; 9 uses
  %4 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %5 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %6 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %7 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %8 = alloca %"class.duckdb::Value", align 8     ; 5 uses
  %9 = alloca %"class.duckdb::Value", align 8     ; 5 uses
  %10 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %11 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %12 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %13 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %14 = alloca %"class.duckdb::Value", align 8    ; 5 uses
  %15 = alloca %"class.duckdb::Value", align 8    ; 5 uses
  %16 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %17 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %18 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %19 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %20 = alloca %"class.duckdb::Value", align 8    ; 5 uses
  %21 = alloca %"class.duckdb::Value", align 8    ; 5 uses
  %22 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %23 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %24 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %25 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %26 = alloca %"class.duckdb::Value", align 8    ; 5 uses
  %27 = alloca %"class.duckdb::Value", align 8    ; 5 uses
  %28 = alloca %"class.duckdb::Value", align 8    ; 12 uses
  %29 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %30 = alloca %"class.duckdb::Value", align 8    ; 12 uses
  %31 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %32 = alloca %"class.duckdb::Value", align 8    ; 6 uses
  %33 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %34 = alloca %"class.duckdb::Value", align 8    ; 6 uses
  %35 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %36 = alloca %"class.std::function", align 8    ; 3 uses
  %37 = alloca %"class.duckdb::BaseStatistics", align 8 ; 10 uses
  %38 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163, !nonnull !154, !align !164 ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !165, !nonnull !154, !align !164 ; 6 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb6vectorINS_14BaseStatisticsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0) ; 10 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb6vectorINS_14BaseStatisticsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1) ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 noundef zeroext 1)
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %28, ptr noundef nonnull %29)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %29) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %31, i8 noundef zeroext 1)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %30, ptr noundef nonnull %31)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %31) #25
  %i.f = invoke noundef zeroext i1 @_ZN6duckdb12NumericStats9HasMinMaxERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  br i1 %i.f, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.g = invoke noundef zeroext i1 @_ZN6duckdb12NumericStats9HasMinMaxERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %i.e)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  br i1 %i.g, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 57 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !73
  switch i8 %i.j, label %bb.ao [
    i8 3, label %bb.m
    i8 5, label %bb.t
    i8 7, label %bb.aa
    i8 9, label %bb.ah
  ]

bb.i:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %29) #25
  br label %bb.bt

bb.j:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.k:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %31) #25
  br label %bb.bs

bb.l:                                             ; preds = %.noexc88, %bb.an, %_ZN6duckdb12NumericStats6GetMaxIlEET_RKNS_14BaseStatisticsE.exit9.i, %bb.ak, %_ZN6duckdb12NumericStats6GetMinIlEET_RKNS_14BaseStatisticsE.exit.i, %bb.ah, %.noexc77, %bb.ag, %_ZN6duckdb12NumericStats6GetMaxIiEET_RKNS_14BaseStatisticsE.exit9.i, %bb.ad, %_ZN6duckdb12NumericStats6GetMinIiEET_RKNS_14BaseStatisticsE.exit.i, %bb.aa, %.noexc64, %bb.z, %_ZN6duckdb12NumericStats6GetMaxIsEET_RKNS_14BaseStatisticsE.exit9.i, %bb.w, %_ZN6duckdb12NumericStats6GetMinIsEET_RKNS_14BaseStatisticsE.exit.i, %bb.t, %.noexc49, %bb.s, %_ZN6duckdb12NumericStats6GetMaxIaEET_RKNS_14BaseStatisticsE.exit9.i, %bb.p, %_ZN6duckdb12NumericStats6GetMinIaEET_RKNS_14BaseStatisticsE.exit.i, %bb.m, %bb.bc, %bb.f, %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  invoke void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %25, ptr noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.m
  %i.o = invoke noundef signext i8 @_ZNK6duckdb5Value14GetValueUnsafeIaEET_v(ptr noundef nonnull align 8 dereferenceable(64) %25)
          to label %_ZN6duckdb12NumericStats6GetMinIaEET_RKNS_14BaseStatisticsE.exit.i unwind label %bb.n

bb.n:                                             ; preds = %.noexc
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %25) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  br label %.body

_ZN6duckdb12NumericStats6GetMinIaEET_RKNS_14BaseStatisticsE.exit.i: ; preds = %.noexc
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %25) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  invoke void @_ZN6duckdb12NumericStats3MaxERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %24, ptr noundef nonnull align 8 dereferenceable(128) %i.e)
          to label %.noexc46 unwind label %bb.l

.noexc46:                                         ; preds = %_ZN6duckdb12NumericStats6GetMinIaEET_RKNS_14BaseStatisticsE.exit.i
  %i.q = invoke noundef signext i8 @_ZNK6duckdb5Value14GetValueUnsafeIaEET_v(ptr noundef nonnull align 8 dereferenceable(64) %24)
          to label %_ZN6duckdb12NumericStats6GetMaxIaEET_RKNS_14BaseStatisticsE.exit.i unwind label %bb.o

bb.o:                                             ; preds = %.noexc46
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %24) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  br label %.body

_ZN6duckdb12NumericStats6GetMaxIaEET_RKNS_14BaseStatisticsE.exit.i: ; preds = %.noexc46
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %24) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  %i.s = sext i8 %i.o to i16
  %i.t = sext i8 %i.q to i16
  %i.u = sub nsw i16 %i.s, %i.t                   ; 2 uses
  %i.v = add nsw i16 %i.u, 128
  %or.cond.i.i.i = icmp ult i16 %i.v, 256
  br i1 %or.cond.i.i.i, label %bb.p, label %.critedge

bb.p:                                             ; preds = %_ZN6duckdb12NumericStats6GetMaxIaEET_RKNS_14BaseStatisticsE.exit.i
  %39 = zext i16 %i.u to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  invoke void @_ZN6duckdb12NumericStats3MaxERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %23, ptr noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %.noexc47 unwind label %bb.l

.noexc47:                                         ; preds = %bb.p
  %i.w = invoke noundef signext i8 @_ZNK6duckdb5Value14GetValueUnsafeIaEET_v(ptr noundef nonnull align 8 dereferenceable(64) %23)
          to label %_ZN6duckdb12NumericStats6GetMaxIaEET_RKNS_14BaseStatisticsE.exit9.i unwind label %bb.q

bb.q:                                             ; preds = %.noexc47
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  br label %.body

_ZN6duckdb12NumericStats6GetMaxIaEET_RKNS_14BaseStatisticsE.exit9.i: ; preds = %.noexc47
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  invoke void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %22, ptr noundef nonnull align 8 dereferenceable(128) %i.e)
          to label %.noexc48 unwind label %bb.l

.noexc48:                                         ; preds = %_ZN6duckdb12NumericStats6GetMaxIaEET_RKNS_14BaseStatisticsE.exit9.i
  %i.y = invoke noundef signext i8 @_ZNK6duckdb5Value14GetValueUnsafeIaEET_v(ptr noundef nonnull align 8 dereferenceable(64) %22)
          to label %_ZN6duckdb12NumericStats6GetMinIaEET_RKNS_14BaseStatisticsE.exit10.i unwind label %bb.r

bb.r:                                             ; preds = %.noexc48
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %22) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br label %.body

_ZN6duckdb12NumericStats6GetMinIaEET_RKNS_14BaseStatisticsE.exit10.i: ; preds = %.noexc48
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %22) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  %i.aa = sext i8 %i.w to i16
  %i.ab = sext i8 %i.y to i16
  %i.ac = sub nsw i16 %i.aa, %i.ab                ; 2 uses
  %i.ad = add nsw i16 %i.ac, 128
  %or.cond.i.i11.i = icmp ult i16 %i.ad, 256
  br i1 %or.cond.i.i11.i, label %bb.s, label %.critedge

bb.s:                                             ; preds = %_ZN6duckdb12NumericStats6GetMinIaEET_RKNS_14BaseStatisticsE.exit10.i
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  %sext.i = shl i64 %39, 56
  %40 = ashr exact i64 %sext.i, 56
  invoke void @_ZN6duckdb5Value7NumericERKNS_11LogicalTypeEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %26, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %40)
          to label %.noexc49 unwind label %bb.l

.noexc49:                                         ; preds = %bb.s
  %41 = zext i16 %i.ac to i64
  %i.ae = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %28, ptr noundef nonnull align 8 dereferenceable(64) %26) #25 ; 0 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %26) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  %sext20.i = shl i64 %41, 56
  %42 = ashr exact i64 %sext20.i, 56
  invoke void @_ZN6duckdb5Value7NumericERKNS_11LogicalTypeEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %27, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %42)
          to label %.noexc50 unwind label %bb.l

.noexc50:                                         ; preds = %.noexc49
  %i.af = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %30, ptr noundef nonnull align 8 dereferenceable(64) %27) #25 ; 0 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %27) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  br label %_ZN6duckdb12_GLOBAL__N_127SubtractPropagateStatistics9OperationIaNS_19TrySubtractOperatorEEEbRKNS_11LogicalTypeERNS_14BaseStatisticsES8_RNS_5ValueESA_.exit

bb.t:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  invoke void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %19, ptr noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %.noexc58 unwind label %bb.l

.noexc58:                                         ; preds = %bb.t
  %i.ag = invoke noundef signext i16 @_ZNK6duckdb5Value14GetValueUnsafeIsEET_v(ptr noundef nonnull align 8 dereferenceable(64) %19)
          to label %_ZN6duckdb12NumericStats6GetMinIsEET_RKNS_14BaseStatisticsE.exit.i unwind label %bb.u

bb.u:                                             ; preds = %.noexc58
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %19) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %.body

_ZN6duckdb12NumericStats6GetMinIsEET_RKNS_14BaseStatisticsE.exit.i: ; preds = %.noexc58
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %19) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  invoke void @_ZN6duckdb12NumericStats3MaxERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %18, ptr noundef nonnull align 8 dereferenceable(128) %i.e)
          to label %.noexc61.a unwind label %bb.l

.noexc61.a:                                       ; preds = %_ZN6duckdb12NumericStats6GetMinIsEET_RKNS_14BaseStatisticsE.exit.i
  %i.ai = invoke noundef signext i16 @_ZNK6duckdb5Value14GetValueUnsafeIsEET_v(ptr noundef nonnull align 8 dereferenceable(64) %18)
          to label %_ZN6duckdb12NumericStats6GetMaxIsEET_RKNS_14BaseStatisticsE.exit.i unwind label %bb.v

bb.v:                                             ; preds = %.noexc61.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %.body

_ZN6duckdb12NumericStats6GetMaxIsEET_RKNS_14BaseStatisticsE.exit.i: ; preds = %.noexc61.a
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  %i.ak = sext i16 %i.ag to i32
  %i.al = sext i16 %i.ai to i32
  %i.am = sub nsw i32 %i.ak, %i.al                ; 2 uses
  %i.an = add nsw i32 %i.am, 32768
  %or.cond.i.i.i53 = icmp ult i32 %i.an, 65536
  br i1 %or.cond.i.i.i53, label %bb.w, label %.critedge

bb.w:                                             ; preds = %_ZN6duckdb12NumericStats6GetMaxIsEET_RKNS_14BaseStatisticsE.exit.i
  %43 = zext i32 %i.am to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  invoke void @_ZN6duckdb12NumericStats3MaxERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %17, ptr noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %.noexc62.a unwind label %bb.l

.noexc62.a:                                       ; preds = %bb.w
  %i.ao = invoke noundef signext i16 @_ZNK6duckdb5Value14GetValueUnsafeIsEET_v(ptr noundef nonnull align 8 dereferenceable(64) %17)
          to label %_ZN6duckdb12NumericStats6GetMaxIsEET_RKNS_14BaseStatisticsE.exit9.i unwind label %bb.x

bb.x:                                             ; preds = %.noexc62.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %.body

_ZN6duckdb12NumericStats6GetMaxIsEET_RKNS_14BaseStatisticsE.exit9.i: ; preds = %.noexc62.a
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  invoke void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %16, ptr noundef nonnull align 8 dereferenceable(128) %i.e)
          to label %.noexc63.a unwind label %bb.l

.noexc63.a:                                       ; preds = %_ZN6duckdb12NumericStats6GetMaxIsEET_RKNS_14BaseStatisticsE.exit9.i
  %i.aq = invoke noundef signext i16 @_ZNK6duckdb5Value14GetValueUnsafeIsEET_v(ptr noundef nonnull align 8 dereferenceable(64) %16)
          to label %_ZN6duckdb12NumericStats6GetMinIsEET_RKNS_14BaseStatisticsE.exit10.i unwind label %bb.y

bb.y:                                             ; preds = %.noexc63.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %.body

_ZN6duckdb12NumericStats6GetMinIsEET_RKNS_14BaseStatisticsE.exit10.i: ; preds = %.noexc63.a
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  %i.as = sext i16 %i.ao to i32
  %i.at = sext i16 %i.aq to i32
  %i.au = sub nsw i32 %i.as, %i.at                ; 2 uses
  %i.av = add nsw i32 %i.au, 32768
  %or.cond.i.i11.i55 = icmp ult i32 %i.av, 65536
  br i1 %or.cond.i.i11.i55, label %bb.z, label %.critedge

bb.z:                                             ; preds = %_ZN6duckdb12NumericStats6GetMinIsEET_RKNS_14BaseStatisticsE.exit10.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  %sext.i56 = shl i64 %43, 48
  %44 = ashr exact i64 %sext.i56, 48
  invoke void @_ZN6duckdb5Value7NumericERKNS_11LogicalTypeEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %44)
          to label %.noexc64 unwind label %bb.l

.noexc64:                                         ; preds = %bb.z
  %45 = zext i32 %i.au to i64
  %i.aw = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %28, ptr noundef nonnull align 8 dereferenceable(64) %20) #25 ; 0 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %20) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  %sext20.i57 = shl i64 %45, 48
  %46 = ashr exact i64 %sext20.i57, 48
  invoke void @_ZN6duckdb5Value7NumericERKNS_11LogicalTypeEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %21, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %46)
          to label %.noexc65 unwind label %bb.l

.noexc65:                                         ; preds = %.noexc64
  %i.ax = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %30, ptr noundef nonnull align 8 dereferenceable(64) %21) #25 ; 0 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %21) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %_ZN6duckdb12_GLOBAL__N_127SubtractPropagateStatistics9OperationIaNS_19TrySubtractOperatorEEEbRKNS_11LogicalTypeERNS_14BaseStatisticsES8_RNS_5ValueESA_.exit

bb.aa:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  invoke void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %13, ptr noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %.noexc71 unwind label %bb.l

.noexc71:                                         ; preds = %bb.aa
  %i.ay = invoke noundef i32 @_ZNK6duckdb5Value14GetValueUnsafeIiEET_v(ptr noundef nonnull align 8 dereferenceable(64) %13)
          to label %_ZN6duckdb12NumericStats6GetMinIiEET_RKNS_14BaseStatisticsE.exit.i unwind label %bb.ab

bb.ab:                                            ; preds = %.noexc71
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %.body

_ZN6duckdb12NumericStats6GetMinIiEET_RKNS_14BaseStatisticsE.exit.i: ; preds = %.noexc71
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  invoke void @_ZN6duckdb12NumericStats3MaxERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %12, ptr noundef nonnull align 8 dereferenceable(128) %i.e)
          to label %.noexc74.a unwind label %bb.l

.noexc74.a:                                       ; preds = %_ZN6duckdb12NumericStats6GetMinIiEET_RKNS_14BaseStatisticsE.exit.i
  %i.ba = invoke noundef i32 @_ZNK6duckdb5Value14GetValueUnsafeIiEET_v(ptr noundef nonnull align 8 dereferenceable(64) %12)
          to label %_ZN6duckdb12NumericStats6GetMaxIiEET_RKNS_14BaseStatisticsE.exit.i unwind label %bb.ac

bb.ac:                                            ; preds = %.noexc74.a
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %.body

_ZN6duckdb12NumericStats6GetMaxIiEET_RKNS_14BaseStatisticsE.exit.i: ; preds = %.noexc74.a
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.bc = sext i32 %i.ay to i64
  %i.bd = sext i32 %i.ba to i64
  %i.be = sub nsw i64 %i.bc, %i.bd                ; 2 uses
  %i.bf = add nsw i64 %i.be, 2147483648
  %or.cond.i.i.i68 = icmp ult i64 %i.bf, 4294967296
  br i1 %or.cond.i.i.i68, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %_ZN6duckdb12NumericStats6GetMaxIiEET_RKNS_14BaseStatisticsE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZN6duckdb12NumericStats3MaxERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %11, ptr noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %.noexc75.a unwind label %bb.l

.noexc75.a:                                       ; preds = %bb.ad
  %i.bg = invoke noundef i32 @_ZNK6duckdb5Value14GetValueUnsafeIiEET_v(ptr noundef nonnull align 8 dereferenceable(64) %11)
          to label %_ZN6duckdb12NumericStats6GetMaxIiEET_RKNS_14BaseStatisticsE.exit9.i unwind label %bb.ae

bb.ae:                                            ; preds = %.noexc75.a
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.body

_ZN6duckdb12NumericStats6GetMaxIiEET_RKNS_14BaseStatisticsE.exit9.i: ; preds = %.noexc75.a
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %10, ptr noundef nonnull align 8 dereferenceable(128) %i.e)
          to label %.noexc76.a unwind label %bb.l

.noexc76.a:                                       ; preds = %_ZN6duckdb12NumericStats6GetMaxIiEET_RKNS_14BaseStatisticsE.exit9.i
  %i.bi = invoke noundef i32 @_ZNK6duckdb5Value14GetValueUnsafeIiEET_v(ptr noundef nonnull align 8 dereferenceable(64) %10)
          to label %_ZN6duckdb12NumericStats6GetMinIiEET_RKNS_14BaseStatisticsE.exit10.i unwind label %bb.af

bb.af:                                            ; preds = %.noexc76.a
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %.body

_ZN6duckdb12NumericStats6GetMinIiEET_RKNS_14BaseStatisticsE.exit10.i: ; preds = %.noexc76.a
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.bk = sext i32 %i.bg to i64
  %i.bl = sext i32 %i.bi to i64
  %i.bm = sub nsw i64 %i.bk, %i.bl                ; 2 uses
  %i.bn = add nsw i64 %i.bm, 2147483648
  %or.cond.i.i11.i70 = icmp ult i64 %i.bn, 4294967296
  br i1 %or.cond.i.i11.i70, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %_ZN6duckdb12NumericStats6GetMinIiEET_RKNS_14BaseStatisticsE.exit10.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  invoke void @_ZN6duckdb5Value7NumericERKNS_11LogicalTypeEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.be)
          to label %.noexc77 unwind label %bb.l

.noexc77:                                         ; preds = %bb.ag
  %i.bo = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %28, ptr noundef nonnull align 8 dereferenceable(64) %14) #25 ; 0 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  invoke void @_ZN6duckdb5Value7NumericERKNS_11LogicalTypeEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.bm)
          to label %.noexc78 unwind label %bb.l

.noexc78:                                         ; preds = %.noexc77
  %i.bp = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %30, ptr noundef nonnull align 8 dereferenceable(64) %15) #25 ; 0 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %_ZN6duckdb12_GLOBAL__N_127SubtractPropagateStatistics9OperationIaNS_19TrySubtractOperatorEEEbRKNS_11LogicalTypeERNS_14BaseStatisticsES8_RNS_5ValueESA_.exit

bb.ah:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %7, ptr noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %.noexc82 unwind label %bb.l

.noexc82:                                         ; preds = %bb.ah
  %i.bq = invoke noundef i64 @_ZNK6duckdb5Value14GetValueUnsafeIlEET_v(ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %_ZN6duckdb12NumericStats6GetMinIlEET_RKNS_14BaseStatisticsE.exit.i unwind label %bb.ai

bb.ai:                                            ; preds = %.noexc82
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.body

_ZN6duckdb12NumericStats6GetMinIlEET_RKNS_14BaseStatisticsE.exit.i: ; preds = %.noexc82
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZN6duckdb12NumericStats3MaxERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %6, ptr noundef nonnull align 8 dereferenceable(128) %i.e)
          to label %.noexc85.a unwind label %bb.l

.noexc85.a:                                       ; preds = %_ZN6duckdb12NumericStats6GetMinIlEET_RKNS_14BaseStatisticsE.exit.i
  %i.bs = invoke noundef i64 @_ZNK6duckdb5Value14GetValueUnsafeIlEET_v(ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %_ZN6duckdb12NumericStats6GetMaxIlEET_RKNS_14BaseStatisticsE.exit.i unwind label %bb.aj

bb.aj:                                            ; preds = %.noexc85.a
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.body

_ZN6duckdb12NumericStats6GetMaxIlEET_RKNS_14BaseStatisticsE.exit.i: ; preds = %.noexc85.a
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.bu = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.bq, i64 %i.bs) ; 2 uses
  %i.bv = extractvalue { i64, i1 } %i.bu, 1
  %i.bw = extractvalue { i64, i1 } %i.bu, 0
  br i1 %i.bv, label %.critedge, label %bb.ak

bb.ak:                                            ; preds = %_ZN6duckdb12NumericStats6GetMaxIlEET_RKNS_14BaseStatisticsE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZN6duckdb12NumericStats3MaxERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %5, ptr noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %.noexc86.a unwind label %bb.l

.noexc86.a:                                       ; preds = %bb.ak
  %i.bx = invoke noundef i64 @_ZNK6duckdb5Value14GetValueUnsafeIlEET_v(ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZN6duckdb12NumericStats6GetMaxIlEET_RKNS_14BaseStatisticsE.exit9.i unwind label %bb.al

bb.al:                                            ; preds = %.noexc86.a
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.body

_ZN6duckdb12NumericStats6GetMaxIlEET_RKNS_14BaseStatisticsE.exit9.i: ; preds = %.noexc86.a
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %4, ptr noundef nonnull align 8 dereferenceable(128) %i.e)
          to label %.noexc87.a unwind label %bb.l

.noexc87.a:                                       ; preds = %_ZN6duckdb12NumericStats6GetMaxIlEET_RKNS_14BaseStatisticsE.exit9.i
  %i.bz = invoke noundef i64 @_ZNK6duckdb5Value14GetValueUnsafeIlEET_v(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZN6duckdb12NumericStats6GetMinIlEET_RKNS_14BaseStatisticsE.exit10.i unwind label %bb.am

bb.am:                                            ; preds = %.noexc87.a
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.body

_ZN6duckdb12NumericStats6GetMinIlEET_RKNS_14BaseStatisticsE.exit10.i: ; preds = %.noexc87.a
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.cb = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.bx, i64 %i.bz) ; 2 uses
  %i.cc = extractvalue { i64, i1 } %i.cb, 1
  br i1 %i.cc, label %.critedge, label %bb.an

bb.an:                                            ; preds = %_ZN6duckdb12NumericStats6GetMinIlEET_RKNS_14BaseStatisticsE.exit10.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
end_hunk_1

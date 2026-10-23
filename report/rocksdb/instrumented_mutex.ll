Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/instrumented_mutex?download=true
inline.NumInlined: 111
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@__cxx_global_array_dtor.23:bb.a
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 8), align 8, !tbaa !16 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 24)
  br i1 %i.ap, label %_ZN7rocksdb18OperationStageInfoD2Ev.exit.10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.10: ; preds = %_ZN7rocksdb18OperationStageInfoD2Ev.exit.9
  %i.aq = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 24), align 8, !tbaa !17
  %i.ar = add i64 %i.aq, 1
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #13
  br label %_ZN7rocksdb18OperationStageInfoD2Ev.exit.10

_ZN7rocksdb18OperationStageInfoD2Ev.exit.10:      ; preds = %_ZN7rocksdb18OperationStageInfoD2Ev.exit.9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_array_dtor.26(ptr nofree readnone captures(none) %0) #1 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL18global_state_tableE, i64 48), align 16, !tbaa !16 ; 2 uses
  %i.b = icmp eq ptr %i.a, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL18global_state_tableE, i64 64)
  br i1 %i.b, label %_ZN7rocksdb9StateInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL18global_state_tableE, i64 64), align 16, !tbaa !17
  %i.d = add i64 %i.c, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.d) #13
  br label %_ZN7rocksdb9StateInfoD2Ev.exit

_ZN7rocksdb9StateInfoD2Ev.exit:                   ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL18global_state_tableE, i64 8), align 8, !tbaa !16 ; 2 uses
  %i.f = icmp eq ptr %i.e, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL18global_state_tableE, i64 24)
  br i1 %i.f, label %_ZN7rocksdb9StateInfoD2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZN7rocksdb9StateInfoD2Ev.exit
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL18global_state_tableE, i64 24), align 8, !tbaa !17
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #13
  br label %_ZN7rocksdb9StateInfoD2Ev.exit.1

_ZN7rocksdb9StateInfoD2Ev.exit.1:                 ; preds = %_ZN7rocksdb9StateInfoD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_array_dtor.34(ptr nofree readnone captures(none) %0) #1 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 208), align 16, !tbaa !16 ; 2 uses
  %i.b = icmp eq ptr %i.a, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 224)
  br i1 %i.b, label %_ZN7rocksdb17OperationPropertyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 224), align 16, !tbaa !17
  %i.d = add i64 %i.c, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.d) #13
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit

_ZN7rocksdb17OperationPropertyD2Ev.exit:          ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 168), align 8, !tbaa !16 ; 2 uses
  %i.f = icmp eq ptr %i.e, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 184)
  br i1 %i.f, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 184), align 8, !tbaa !17
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #13
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.1

_ZN7rocksdb17OperationPropertyD2Ev.exit.1:        ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 128), align 16, !tbaa !16 ; 2 uses
  %i.j = icmp eq ptr %i.i, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 144)
  br i1 %i.j, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2: ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.1
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 144), align 16, !tbaa !17
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #13
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.2

_ZN7rocksdb17OperationPropertyD2Ev.exit.2:        ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 88), align 8, !tbaa !16 ; 2 uses
  %i.n = icmp eq ptr %i.m, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 104)
  br i1 %i.n, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3: ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.2
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 104), align 8, !tbaa !17
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #13
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.3

_ZN7rocksdb17OperationPropertyD2Ev.exit.3:        ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 48), align 16, !tbaa !16 ; 2 uses
  %i.r = icmp eq ptr %i.q, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 64)
  br i1 %i.r, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4: ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.3
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 64), align 16, !tbaa !17
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #13
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.4

_ZN7rocksdb17OperationPropertyD2Ev.exit.4:        ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 8), align 8, !tbaa !16 ; 2 uses
  %i.v = icmp eq ptr %i.u, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 24)
  br i1 %i.v, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.5: ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.4
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 24), align 8, !tbaa !17
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #13
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.5

_ZN7rocksdb17OperationPropertyD2Ev.exit.5:        ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_array_dtor.37(ptr nofree readnone captures(none) %0) #1 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 88), align 8, !tbaa !16 ; 2 uses
  %i.b = icmp eq ptr %i.a, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 104)
  br i1 %i.b, label %_ZN7rocksdb17OperationPropertyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 104), align 8, !tbaa !17
  %i.d = add i64 %i.c, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.d) #13
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit

_ZN7rocksdb17OperationPropertyD2Ev.exit:          ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 48), align 16, !tbaa !16 ; 2 uses
  %i.f = icmp eq ptr %i.e, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 64)
  br i1 %i.f, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 64), align 16, !tbaa !17
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #13
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.1

_ZN7rocksdb17OperationPropertyD2Ev.exit.1:        ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 8), align 8, !tbaa !16 ; 2 uses
  %i.j = icmp eq ptr %i.i, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 24)
  br i1 %i.j, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2: ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.1
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL26flush_operation_propertiesE, i64 24), align 8, !tbaa !17
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #13
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.2

_ZN7rocksdb17OperationPropertyD2Ev.exit.2:        ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2
  ret void
}

; Function Attrs: uwtable
define void @_ZN7rocksdb17InstrumentedMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(60) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.rocksdb::PerfStepTimer", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %.not.i = icmp eq ptr @_ZTHN7rocksdb12perf_contextE, null
  br i1 %.not.i, label %_ZTWN7rocksdb12perf_contextE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZTHN7rocksdb12perf_contextE()
  br label %_ZTWN7rocksdb12perf_contextE.exit

_ZTWN7rocksdb12perf_contextE.exit:                ; preds = %bb.a, %bb.b
  %i.a = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb12perf_contextE)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 496 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48   ; 3 uses
  %i.g = icmp ne ptr %i.d, null
  %i.h = icmp ne ptr %i.f, null
  %or.cond.i = and i1 %i.g, %i.h
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZTWN7rocksdb12perf_contextE.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.j = load atomic i8, ptr %i.i monotonic, align 1
  %i.k = icmp ugt i8 %i.j, 4
  br i1 %i.k, label %_ZN7rocksdb12_GLOBAL__N_116stats_for_reportEPNS_11SystemClockEPNS_10StatisticsE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZTWN7rocksdb12perf_contextE.exit
  br label %_ZN7rocksdb12_GLOBAL__N_116stats_for_reportEPNS_11SystemClockEPNS_10StatisticsE.exit

_ZN7rocksdb12_GLOBAL__N_116stats_for_reportEPNS_11SystemClockEPNS_10StatisticsE.exit: ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ null, %bb.d ], [ %i.f, %bb.c ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !49   ; 2 uses
  %.not.i.i = icmp eq ptr @_ZTHN7rocksdb10perf_levelE, null
  br i1 %.not.i.i, label %_ZTWN7rocksdb10perf_levelE.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN7rocksdb12_GLOBAL__N_116stats_for_reportEPNS_11SystemClockEPNS_10StatisticsE.exit
  tail call void @_ZTHN7rocksdb10perf_levelE()
  br label %_ZTWN7rocksdb10perf_levelE.exit.i

_ZTWN7rocksdb10perf_levelE.exit.i:                ; preds = %bb.e, %_ZN7rocksdb12_GLOBAL__N_116stats_for_reportEPNS_11SystemClockEPNS_10StatisticsE.exit
  %i.o = tail call noundef align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN7rocksdb10perf_levelE)
  %i.p = load i8, ptr %i.o, align 1, !tbaa !21
  %i.q = icmp ugt i8 %i.p, 5                      ; 4 uses
  %i.r = zext i1 %i.q to i8
  store i8 %i.r, ptr %1, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 0, ptr %i.s, align 1, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.n, ptr %i.t, align 4, !tbaa !27
  %i.u = icmp ne ptr %i.l, null                   ; 3 uses
  %or.cond.i2 = or i1 %i.u, %i.q
  br i1 %or.cond.i2, label %bb.f, label %_ZN7rocksdb13PerfStepTimerC2EPmPNS_11SystemClockEbNS_9PerfLevelEPNS_10StatisticsEj.exit

bb.f:                                             ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i
  %i.v = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN7rocksdb11SystemClock7DefaultEv()
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  br label %_ZN7rocksdb13PerfStepTimerC2EPmPNS_11SystemClockEbNS_9PerfLevelEPNS_10StatisticsEj.exit

_ZN7rocksdb13PerfStepTimerC2EPmPNS_11SystemClockEbNS_9PerfLevelEPNS_10StatisticsEj.exit: ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i, %bb.f
  %i.x = phi ptr [ %i.w, %bb.f ], [ null, %_ZTWN7rocksdb10perf_levelE.exit.i ] ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i64 0, ptr %i.z, align 8, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.b, ptr %i.aa, align 8, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.l, ptr %i.ab, align 8, !tbaa !35
  %i.ac = load i32, ptr %i.m, align 8, !tbaa !49
  %i.ad = icmp eq i32 %i.ac, 77
  %or.cond.i4.demorgan = or i1 %i.u, %i.q
  %or.cond = and i1 %i.ad, %or.cond.i4.demorgan
  br i1 %or.cond, label %bb.g, label %_ZN7rocksdb13PerfStepTimer5StartEv.exit

bb.g:                                             ; preds = %_ZN7rocksdb13PerfStepTimerC2EPmPNS_11SystemClockEbNS_9PerfLevelEPNS_10StatisticsEj.exit
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !37
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 160
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = invoke noundef i64 %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %.noexc unwind label %bb.h, !inline_history !0 ; 2 uses

.noexc:                                           ; preds = %bb.g
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !33
  br label %_ZN7rocksdb13PerfStepTimer5StartEv.exit

bb.h:                                             ; preds = %_ZN7rocksdb13PerfStepTimer5StartEv.exit, %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb13PerfStepTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  resume { ptr, i32 } %i.ai

_ZN7rocksdb13PerfStepTimer5StartEv.exit:          ; preds = %.noexc, %_ZN7rocksdb13PerfStepTimerC2EPmPNS_11SystemClockEbNS_9PerfLevelEPNS_10StatisticsEj.exit
  %i.aj = phi i64 [ %i.ah, %.noexc ], [ 0, %_ZN7rocksdb13PerfStepTimerC2EPmPNS_11SystemClockEbNS_9PerfLevelEPNS_10StatisticsEj.exit ] ; 2 uses
  invoke void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(60) %0)
          to label %_ZN7rocksdb17InstrumentedMutex12LockInternalEv.exit unwind label %bb.h

_ZN7rocksdb17InstrumentedMutex12LockInternalEv.exit: ; preds = %_ZN7rocksdb13PerfStepTimer5StartEv.exit
  %.not.i.i5 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i5, label %_ZN7rocksdb13PerfStepTimerD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN7rocksdb17InstrumentedMutex12LockInternalEv.exit
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !37
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 160
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = invoke noundef i64 %i.am(ptr noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %.noexc.i unwind label %bb.l, !inline_history !1

.noexc.i:                                         ; preds = %bb.i
  %i.ao = sub i64 %i.an, %i.aj                    ; 2 uses
  br i1 %i.q, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.noexc.i
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !38
  %i.aq = add i64 %i.ap, %i.ao
  store i64 %i.aq, ptr %i.b, align 8, !tbaa !38
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.noexc.i
  br i1 %i.u, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit.i.i, label %_ZN7rocksdb13PerfStepTimerD2Ev.exit

_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit.i.i: ; preds = %bb.k
  %i.ar = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 176
  %i.at = load ptr, ptr %i.as, align 8
  invoke void %i.at(ptr noundef nonnull align 8 dereferenceable(33) %i.l, i32 noundef %i.n, i64 noundef %i.ao)
          to label %_ZN7rocksdb13PerfStepTimerD2Ev.exit unwind label %bb.l, !inline_history !1

bb.l:                                             ; preds = %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit.i.i, %bb.i
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  tail call void @__clang_call_terminate(ptr %i.av) #15
  unreachable

_ZN7rocksdb13PerfStepTimerD2Ev.exit:              ; preds = %_ZN7rocksdb17InstrumentedMutex12LockInternalEv.exit, %bb.k, %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb17InstrumentedMutex12LockInternalEv(ptr noundef nonnull align 8 dereferenceable(60) %0) local_unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb13PerfStepTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !33
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZN7rocksdb13PerfStepTimer4StopEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !26, !range !50, !noundef !51
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  %..i.i = select i1 %i.e, i64 176, i64 160
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %..i.i
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = invoke noundef i64 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %.noexc unwind label %bb.e, !inline_history !1

.noexc:                                           ; preds = %bb.b
  %i.l = load i64, ptr %i.a, align 8, !tbaa !33
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = load i8, ptr %0, align 8, !tbaa !25, !range !50, !noundef !51
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34   ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !38
  %i.s = add i64 %i.r, %i.m
  store i64 %i.s, ptr %i.q, align 8, !tbaa !38
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !35   ; 3 uses
  %.not2.i = icmp eq ptr %i.u, null
  br i1 %.not2.i, label %_ZN7rocksdb13PerfStepTimer4StopEv.exit, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit.i

_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit.i: ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !27
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !37
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 176
  %i.z = load ptr, ptr %i.y, align 8
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(33) %i.u, i32 noundef %i.w, i64 noundef %i.m)
          to label %_ZN7rocksdb13PerfStepTimer4StopEv.exit unwind label %bb.e, !inline_history !1

_ZN7rocksdb13PerfStepTimer4StopEv.exit:           ; preds = %bb.d, %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit.i, %bb.a
  ret void

bb.e:                                             ; preds = %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit.i, %bb.b
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #15
  unreachable
}

declare void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

; Function Attrs: uwtable
define void @_ZN7rocksdb19InstrumentedCondVar4WaitEv(ptr noundef nonnull align 8 dereferenceable(76) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.rocksdb::PerfStepTimer", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %.not.i = icmp eq ptr @_ZTHN7rocksdb12perf_contextE, null
  br i1 %.not.i, label %_ZTWN7rocksdb12perf_contextE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZTHN7rocksdb12perf_contextE()
  br label %_ZTWN7rocksdb12perf_contextE.exit

_ZTWN7rocksdb12perf_contextE.exit:                ; preds = %bb.a, %bb.b
  %i.a = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb12perf_contextE)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 504 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43   ; 3 uses
  %i.g = icmp ne ptr %i.d, null
  %i.h = icmp ne ptr %i.f, null
  %or.cond.i = and i1 %i.g, %i.h
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZTWN7rocksdb12perf_contextE.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.j = load atomic i8, ptr %i.i monotonic, align 1
  %i.k = icmp ugt i8 %i.j, 4
  br i1 %i.k, label %_ZN7rocksdb12_GLOBAL__N_116stats_for_reportEPNS_11SystemClockEPNS_10StatisticsE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZTWN7rocksdb12perf_contextE.exit
  br label %_ZN7rocksdb12_GLOBAL__N_116stats_for_reportEPNS_11SystemClockEPNS_10StatisticsE.exit

_ZN7rocksdb12_GLOBAL__N_116stats_for_reportEPNS_11SystemClockEPNS_10StatisticsE.exit: ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ null, %bb.d ], [ %i.f, %bb.c ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !44   ; 2 uses
  %.not.i.i = icmp eq ptr @_ZTHN7rocksdb10perf_levelE, null
  br i1 %.not.i.i, label %_ZTWN7rocksdb10perf_levelE.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN7rocksdb12_GLOBAL__N_116stats_for_reportEPNS_11SystemClockEPNS_10StatisticsE.exit
  tail call void @_ZTHN7rocksdb10perf_levelE()
  br label %_ZTWN7rocksdb10perf_levelE.exit.i

_ZTWN7rocksdb10perf_levelE.exit.i:                ; preds = %bb.e, %_ZN7rocksdb12_GLOBAL__N_116stats_for_reportEPNS_11SystemClockEPNS_10StatisticsE.exit
  %i.o = tail call noundef align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN7rocksdb10perf_levelE)
  %i.p = load i8, ptr %i.o, align 1, !tbaa !21
  %i.q = icmp ugt i8 %i.p, 5                      ; 4 uses
  %i.r = zext i1 %i.q to i8
  store i8 %i.r, ptr %1, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 0, ptr %i.s, align 1, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.n, ptr %i.t, align 4, !tbaa !27
  %i.u = icmp ne ptr %i.l, null                   ; 3 uses
  %or.cond.i2 = or i1 %i.u, %i.q
  br i1 %or.cond.i2, label %bb.f, label %_ZN7rocksdb13PerfStepTimerC2EPmPNS_11SystemClockEbNS_9PerfLevelEPNS_10StatisticsEj.exit

bb.f:                                             ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i
  %i.v = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN7rocksdb11SystemClock7DefaultEv()
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  br label %_ZN7rocksdb13PerfStepTimerC2EPmPNS_11SystemClockEbNS_9PerfLevelEPNS_10StatisticsEj.exit

_ZN7rocksdb13PerfStepTimerC2EPmPNS_11SystemClockEbNS_9PerfLevelEPNS_10StatisticsEj.exit: ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i, %bb.f
  %i.x = phi ptr [ %i.w, %bb.f ], [ null, %_ZTWN7rocksdb10perf_levelE.exit.i ] ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i64 0, ptr %i.z, align 8, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.b, ptr %i.aa, align 8, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.l, ptr %i.ab, align 8, !tbaa !35
  %i.ac = load i32, ptr %i.m, align 8, !tbaa !44
  %i.ad = icmp eq i32 %i.ac, 77
  %or.cond.i4.demorgan = or i1 %i.u, %i.q
  %or.cond = and i1 %i.ad, %or.cond.i4.demorgan
  br i1 %or.cond, label %bb.g, label %_ZN7rocksdb13PerfStepTimer5StartEv.exit

bb.g:                                             ; preds = %_ZN7rocksdb13PerfStepTimerC2EPmPNS_11SystemClockEbNS_9PerfLevelEPNS_10StatisticsEj.exit
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !37
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 160
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = invoke noundef i64 %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %.noexc unwind label %bb.h, !inline_history !0 ; 2 uses

.noexc:                                           ; preds = %bb.g
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !33
  br label %_ZN7rocksdb13PerfStepTimer5StartEv.exit

bb.h:                                             ; preds = %_ZN7rocksdb13PerfStepTimer5StartEv.exit, %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb13PerfStepTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  resume { ptr, i32 } %i.ai

_ZN7rocksdb13PerfStepTimer5StartEv.exit:          ; preds = %.noexc, %_ZN7rocksdb13PerfStepTimerC2EPmPNS_11SystemClockEbNS_9PerfLevelEPNS_10StatisticsEj.exit
  %i.aj = phi i64 [ %i.ah, %.noexc ], [ 0, %_ZN7rocksdb13PerfStepTimerC2EPmPNS_11SystemClockEbNS_9PerfLevelEPNS_10StatisticsEj.exit ] ; 2 uses
  invoke void @_ZN7rocksdb4port7CondVar4WaitEv(ptr noundef nonnull align 8 dereferenceable(76) %0)
          to label %_ZN7rocksdb19InstrumentedCondVar12WaitInternalEv.exit unwind label %bb.h

_ZN7rocksdb19InstrumentedCondVar12WaitInternalEv.exit: ; preds = %_ZN7rocksdb13PerfStepTimer5StartEv.exit
  %.not.i.i5 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i5, label %_ZN7rocksdb13PerfStepTimerD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN7rocksdb19InstrumentedCondVar12WaitInternalEv.exit
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !37
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 160
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = invoke noundef i64 %i.am(ptr noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %.noexc.i unwind label %bb.l, !inline_history !1

.noexc.i:                                         ; preds = %bb.i
  %i.ao = sub i64 %i.an, %i.aj                    ; 2 uses
  br i1 %i.q, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.noexc.i
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !38
  %i.aq = add i64 %i.ap, %i.ao
  store i64 %i.aq, ptr %i.b, align 8, !tbaa !38
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.noexc.i
  br i1 %i.u, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit.i.i, label %_ZN7rocksdb13PerfStepTimerD2Ev.exit

_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit.i.i: ; preds = %bb.k
  %i.ar = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 176
  %i.at = load ptr, ptr %i.as, align 8
  invoke void %i.at(ptr noundef nonnull align 8 dereferenceable(33) %i.l, i32 noundef %i.n, i64 noundef %i.ao)
          to label %_ZN7rocksdb13PerfStepTimerD2Ev.exit unwind label %bb.l, !inline_history !1

bb.l:                                             ; preds = %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit.i.i, %bb.i
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  tail call void @__clang_call_terminate(ptr %i.av) #15
  unreachable

_ZN7rocksdb13PerfStepTimerD2Ev.exit:              ; preds = %_ZN7rocksdb19InstrumentedCondVar12WaitInternalEv.exit, %bb.k, %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb19InstrumentedCondVar12WaitInternalEv(ptr noundef nonnull align 8 dereferenceable(76) %0) local_unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN7rocksdb4port7CondVar4WaitEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

declare void @_ZN7rocksdb4port7CondVar4WaitEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #6

; Function Attrs: uwtable
define noundef zeroext i1 @_ZN7rocksdb19InstrumentedCondVar9TimedWaitEm(ptr noundef nonnull align 8 dereferenceable(76) %0, i64 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rocksdb::PerfStepTimer", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %.not.i = icmp eq ptr @_ZTHN7rocksdb12perf_contextE, null
  br i1 %.not.i, label %_ZTWN7rocksdb12perf_contextE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZTHN7rocksdb12perf_contextE()
  br label %_ZTWN7rocksdb12perf_contextE.exit

_ZTWN7rocksdb12perf_contextE.exit:                ; preds = %bb.a, %bb.b
  %i.a = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb12perf_contextE)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 504 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43   ; 3 uses
  %i.g = icmp ne ptr %i.d, null
  %i.h = icmp ne ptr %i.f, null
  %or.cond.i = and i1 %i.g, %i.h
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZTWN7rocksdb12perf_contextE.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.j = load atomic i8, ptr %i.i monotonic, align 1
  %i.k = icmp ugt i8 %i.j, 4
  br i1 %i.k, label %_ZN7rocksdb12_GLOBAL__N_116stats_for_reportEPNS_11SystemClockEPNS_10StatisticsE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZTWN7rocksdb12perf_contextE.exit
  br label %_ZN7rocksdb12_GLOBAL__N_116stats_for_reportEPNS_11SystemClockEPNS_10StatisticsE.exit

_ZN7rocksdb12_GLOBAL__N_116stats_for_reportEPNS_11SystemClockEPNS_10StatisticsE.exit: ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ null, %bb.d ], [ %i.f, %bb.c ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !44   ; 2 uses
  %.not.i.i = icmp eq ptr @_ZTHN7rocksdb10perf_levelE, null
  br i1 %.not.i.i, label %_ZTWN7rocksdb10perf_levelE.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN7rocksdb12_GLOBAL__N_116stats_for_reportEPNS_11SystemClockEPNS_10StatisticsE.exit
  tail call void @_ZTHN7rocksdb10perf_levelE()
  br label %_ZTWN7rocksdb10perf_levelE.exit.i

_ZTWN7rocksdb10perf_levelE.exit.i:                ; preds = %bb.e, %_ZN7rocksdb12_GLOBAL__N_116stats_for_reportEPNS_11SystemClockEPNS_10StatisticsE.exit
  %i.o = tail call noundef align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN7rocksdb10perf_levelE)
  %i.p = load i8, ptr %i.o, align 1, !tbaa !21
  %i.q = icmp ugt i8 %i.p, 5                      ; 4 uses
  %i.r = zext i1 %i.q to i8
  store i8 %i.r, ptr %2, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %i.s, align 1, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.n, ptr %i.t, align 4, !tbaa !27
  %i.u = icmp ne ptr %i.l, null                   ; 3 uses
  %or.cond.i3 = or i1 %i.u, %i.q
  br i1 %or.cond.i3, label %bb.f, label %_ZN7rocksdb13PerfStepTimerC2EPmPNS_11SystemClockEbNS_9PerfLevelEPNS_10StatisticsEj.exit

bb.f:                                             ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i
  %i.v = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN7rocksdb11SystemClock7DefaultEv()
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  br label %_ZN7rocksdb13PerfStepTimerC2EPmPNS_11SystemClockEbNS_9PerfLevelEPNS_10StatisticsEj.exit

_ZN7rocksdb13PerfStepTimerC2EPmPNS_11SystemClockEbNS_9PerfLevelEPNS_10StatisticsEj.exit: ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i, %bb.f
  %i.x = phi ptr [ %i.w, %bb.f ], [ null, %_ZTWN7rocksdb10perf_levelE.exit.i ] ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i64 0, ptr %i.z, align 8, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.b, ptr %i.aa, align 8, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.l, ptr %i.ab, align 8, !tbaa !35
  %i.ac = load i32, ptr %i.m, align 8, !tbaa !44
  %i.ad = icmp eq i32 %i.ac, 77
  %or.cond.i5.demorgan = or i1 %i.u, %i.q
  %or.cond = and i1 %i.ad, %or.cond.i5.demorgan
  br i1 %or.cond, label %bb.g, label %_ZN7rocksdb13PerfStepTimer5StartEv.exit

bb.g:                                             ; preds = %_ZN7rocksdb13PerfStepTimerC2EPmPNS_11SystemClockEbNS_9PerfLevelEPNS_10StatisticsEj.exit
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !37
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 160
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = invoke noundef i64 %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %.noexc unwind label %bb.h, !inline_history !0 ; 2 uses

.noexc:                                           ; preds = %bb.g
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !33
  br label %_ZN7rocksdb13PerfStepTimer5StartEv.exit

bb.h:                                             ; preds = %_ZN7rocksdb13PerfStepTimer5StartEv.exit, %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb13PerfStepTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  resume { ptr, i32 } %i.ai

_ZN7rocksdb13PerfStepTimer5StartEv.exit:          ; preds = %.noexc, %_ZN7rocksdb13PerfStepTimerC2EPmPNS_11SystemClockEbNS_9PerfLevelEPNS_10StatisticsEj.exit
  %i.aj = phi i64 [ %i.ah, %.noexc ], [ 0, %_ZN7rocksdb13PerfStepTimerC2EPmPNS_11SystemClockEbNS_9PerfLevelEPNS_10StatisticsEj.exit ] ; 2 uses
  %i.ak = invoke noundef zeroext i1 @_ZN7rocksdb4port7CondVar9TimedWaitEm(ptr noundef nonnull align 8 dereferenceable(76) %0, i64 noundef %1)
          to label %_ZN7rocksdb19InstrumentedCondVar17TimedWaitInternalEm.exit unwind label %bb.h

_ZN7rocksdb19InstrumentedCondVar17TimedWaitInternalEm.exit: ; preds = %_ZN7rocksdb13PerfStepTimer5StartEv.exit
  %.not.i.i6 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i6, label %_ZN7rocksdb13PerfStepTimerD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN7rocksdb19InstrumentedCondVar17TimedWaitInternalEm.exit
  %i.al = load ptr, ptr %i.x, align 8, !tbaa !37
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 160
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = invoke noundef i64 %i.an(ptr noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %.noexc.i unwind label %bb.l, !inline_history !1

.noexc.i:                                         ; preds = %bb.i
  %i.ap = sub i64 %i.ao, %i.aj                    ; 2 uses
  br i1 %i.q, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.noexc.i
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !38
  %i.ar = add i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %i.b, align 8, !tbaa !38
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.noexc.i
  br i1 %i.u, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit.i.i, label %_ZN7rocksdb13PerfStepTimerD2Ev.exit

_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit.i.i: ; preds = %bb.k
  %i.as = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 176
  %i.au = load ptr, ptr %i.at, align 8
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(33) %i.l, i32 noundef %i.n, i64 noundef %i.ap)
          to label %_ZN7rocksdb13PerfStepTimerD2Ev.exit unwind label %bb.l, !inline_history !1

bb.l:                                             ; preds = %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit.i.i, %bb.i
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  tail call void @__clang_call_terminate(ptr %i.aw) #15
  unreachable

_ZN7rocksdb13PerfStepTimerD2Ev.exit:              ; preds = %_ZN7rocksdb19InstrumentedCondVar17TimedWaitInternalEm.exit, %bb.k, %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret i1 %i.ak
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb19InstrumentedCondVar17TimedWaitInternalEm(ptr noundef nonnull align 8 dereferenceable(76) %0, i64 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN7rocksdb4port7CondVar9TimedWaitEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1)
  ret i1 %i.a
}

declare noundef zeroext i1 @_ZN7rocksdb4port7CondVar9TimedWaitEm(ptr noundef nonnull align 8 dereferenceable(56), i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN7rocksdb11SystemClock7DefaultEv() local_unnamed_addr #6

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_instrumented_mutex.cc() #11 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 0, ptr @_ZN7rocksdbL22global_operation_tableE, align 16, !tbaa !54
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 24), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 8), align 8, !tbaa !55
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 16), align 16, !tbaa !56
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 24), align 8, !tbaa !17
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 40), align 8, !tbaa !54
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 64), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 48), align 16, !tbaa !55
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 64), ptr noundef nonnull align 1 dereferenceable(10) @.str.1, i64 10, i1 false)
  store i64 10, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 56), align 8, !tbaa !56
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 74), align 2, !tbaa !17
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 80), align 16, !tbaa !54
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 104), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 88), align 8, !tbaa !55
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 104), ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i64 5, i1 false)
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 96), align 16, !tbaa !56
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 109), align 1, !tbaa !17
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 120), align 8, !tbaa !54
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 144), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 128), align 16, !tbaa !55
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 144), ptr noundef nonnull align 1 dereferenceable(6) @.str.3, i64 6, i1 false)
  store i64 6, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 136), align 8, !tbaa !56
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 150), align 2, !tbaa !17
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 160), align 16, !tbaa !54
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 184), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 168), align 8, !tbaa !55
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 184), ptr noundef nonnull align 1 dereferenceable(3) @.str.4, i64 3, i1 false)
  store i64 3, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 176), align 16, !tbaa !56
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 187), align 1, !tbaa !17
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 200), align 8, !tbaa !54
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 224), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 208), align 16, !tbaa !55
  store i64 8387188399297819981, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 224), align 16
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 216), align 8, !tbaa !56
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 232), align 8, !tbaa !17
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 240), align 16, !tbaa !54
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 264), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 248), align 8, !tbaa !55
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 264), ptr noundef nonnull align 1 dereferenceable(10) @.str.6, i64 10, i1 false)
  store i64 10, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 256), align 16, !tbaa !56
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 274), align 2, !tbaa !17
  store i32 7, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 280), align 8, !tbaa !54
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 304), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 288), align 16, !tbaa !55
  %i.a = invoke noalias noundef nonnull dereferenceable(17) ptr @_Znwm(i64 noundef 17) #16
          to label %.noexc93.i unwind label %bb.b ; 3 uses

.noexc93.i:                                       ; preds = %bb.a
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 288), align 16, !tbaa !16
  store i64 16, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 304), align 16, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) @.str.7, i64 16, i1 false)
  store i64 16, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 296), align 8, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 0, ptr %i.b, align 1, !tbaa !17
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 320), align 16, !tbaa !54
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 344), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 328), align 8, !tbaa !55
  %i.c = invoke noalias noundef nonnull dereferenceable(20) ptr @_Znwm(i64 noundef 20) #16
          to label %.noexc101.i unwind label %bb.c ; 3 uses

.noexc101.i:                                      ; preds = %.noexc93.i
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 328), align 8, !tbaa !16
  store i64 19, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 344), align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.c, ptr noundef nonnull align 1 dereferenceable(19) @.str.8, i64 19, i1 false)
  store i64 19, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 336), align 16, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 19
  store i8 0, ptr %i.d, align 1, !tbaa !17
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 360), align 8, !tbaa !54
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 384), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 368), align 16, !tbaa !55
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 384), ptr noundef nonnull align 1 dereferenceable(9) @.str.9, i64 9, i1 false)
  store i64 9, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 376), align 8, !tbaa !56
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 393), align 1, !tbaa !17
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 400), align 16, !tbaa !54
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 424), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 408), align 8, !tbaa !55
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 424), ptr noundef nonnull align 1 dereferenceable(14) @.str.10, i64 14, i1 false)
  store i64 14, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 416), align 16, !tbaa !56
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 438), align 2, !tbaa !17
  store i32 11, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 440), align 8, !tbaa !54
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 464), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 448), align 16, !tbaa !55
  %i.e = invoke noalias noundef nonnull dereferenceable(36) ptr @_Znwm(i64 noundef 36) #16
          to label %__cxx_global_var_init.exit unwind label %bb.d ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.c:                                             ; preds = %.noexc93.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %.noexc101.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.1025.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 320), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 440), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 280), %bb.b ]
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.h, %bb.d ], [ %i.f, %bb.b ]
  br label %bb.f

bb.f:                                             ; preds = %_ZN7rocksdb13OperationInfoD2Ev.exit.i, %bb.e
  %i.i = phi ptr [ %.1025.i, %bb.e ], [ %i.j, %_ZN7rocksdb13OperationInfoD2Ev.exit.i ] ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -40 ; 2 uses
end_hunk_0

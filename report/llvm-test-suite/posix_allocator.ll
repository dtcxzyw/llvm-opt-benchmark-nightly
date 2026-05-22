inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@halide_profiler_memory_allocate:entry
  %i.b = load ptr, ptr %funcs, align 8, !tbaa !55
  %num_allocs = getelementptr inbounds nuw i8, ptr %pipeline_state, i64 88
  %i.c = atomicrmw add ptr %num_allocs, i32 1 seq_cst, align 4 ; 0 uses
  %memory_total = getelementptr inbounds nuw i8, ptr %pipeline_state, i64 24
  %i.d = atomicrmw add ptr %memory_total, i64 %incr seq_cst, align 8 ; 0 uses
  %memory_current = getelementptr inbounds nuw i8, ptr %pipeline_state, i64 8
  %i.e = atomicrmw add ptr %memory_current, i64 %incr seq_cst, align 8
  %i.f = add i64 %i.e, %incr                      ; 2 uses
  %memory_peak = getelementptr inbounds nuw i8, ptr %pipeline_state, i64 16 ; 2 uses
  %i.g = load i64, ptr %memory_peak, align 8, !tbaa !69
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %if.end9
  %old_val.0.i = phi i64 [ %i.g, %if.end9 ], [ %i.i, %while.body.i ] ; 3 uses
  %cmp.i = icmp ult i64 %old_val.0.i, %i.f
  br i1 %cmp.i, label %while.body.i, label %_ZN12_GLOBAL__N_125sync_compare_max_and_swapIyEEvPT_S1_.exit

while.body.i:                                     ; preds = %while.cond.i
  %i.h = cmpxchg ptr %memory_peak, i64 %old_val.0.i, i64 %i.f seq_cst seq_cst, align 8
  %i.i = extractvalue { i64, i1 } %i.h, 0         ; 2 uses
  %not.cmp1.i = icmp eq i64 %old_val.0.i, %i.i
  br i1 %not.cmp1.i, label %_ZN12_GLOBAL__N_125sync_compare_max_and_swapIyEEvPT_S1_.exit, label %while.cond.i

_ZN12_GLOBAL__N_125sync_compare_max_and_swapIyEEvPT_S1_.exit: ; preds = %while.body.i, %while.cond.i
  %num_allocs10.split = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %idxprom ; 4 uses
  %num_allocs10 = getelementptr inbounds nuw i8, ptr %num_allocs10.split, i64 64
  %i.j = atomicrmw add ptr %num_allocs10, i32 1 seq_cst, align 4 ; 0 uses
  %memory_total11 = getelementptr inbounds nuw i8, ptr %num_allocs10.split, i64 24
  %i.k = atomicrmw add ptr %memory_total11, i64 %incr seq_cst, align 8 ; 0 uses
  %memory_current12 = getelementptr inbounds nuw i8, ptr %num_allocs10.split, i64 8
  %i.l = atomicrmw add ptr %memory_current12, i64 %incr seq_cst, align 8
  %i.m = add i64 %i.l, %incr                      ; 2 uses
  %memory_peak13 = getelementptr inbounds nuw i8, ptr %num_allocs10.split, i64 16 ; 2 uses
  %i.n = load i64, ptr %memory_peak13, align 8, !tbaa !69
  br label %while.cond.i37

while.cond.i37:                                   ; preds = %while.body.i39, %_ZN12_GLOBAL__N_125sync_compare_max_and_swapIyEEvPT_S1_.exit
  %old_val.0.i35 = phi i64 [ %i.n, %_ZN12_GLOBAL__N_125sync_compare_max_and_swapIyEEvPT_S1_.exit ], [ %i.p, %while.body.i39 ] ; 3 uses
  %cmp.i36 = icmp ult i64 %old_val.0.i35, %i.m
  br i1 %cmp.i36, label %while.body.i39, label %return

while.body.i39:                                   ; preds = %while.cond.i37
  %i.o = cmpxchg ptr %memory_peak13, i64 %old_val.0.i35, i64 %i.m seq_cst seq_cst, align 8
  %i.p = extractvalue { i64, i1 } %i.o, 0         ; 2 uses
  %not.cmp1.i38 = icmp eq i64 %old_val.0.i35, %i.p
  br i1 %not.cmp1.i38, label %return, label %while.cond.i37

return:                                           ; preds = %while.cond.i37, %while.body.i39, %entry
  ret void
}

; Function Attrs: nounwind
define weak void @halide_profiler_memory_free(ptr %user_context, ptr %pipeline_state, i32 %func_id, i64 %decr) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %decr, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq ptr %pipeline_state, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @halide_print(ptr %user_context, ptr nonnull @.str.4) #16
  tail call void @abort() #16
  unreachable

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp sgt i32 %func_id, -1
  br i1 %cmp4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end3
  tail call void @halide_print(ptr %user_context, ptr nonnull @.str.5.32) #16
  tail call void @abort() #16
  unreachable

if.end6:                                          ; preds = %if.end3
  %num_funcs = getelementptr inbounds nuw i8, ptr %pipeline_state, i64 72
  %i.a = load i32, ptr %num_funcs, align 8, !tbaa !54
  %cmp7 = icmp sgt i32 %i.a, %func_id
  br i1 %cmp7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end6
  tail call void @halide_print(ptr %user_context, ptr nonnull @.str.6.33) #16
  tail call void @abort() #16
  unreachable

if.end9:                                          ; preds = %if.end6
  %idxprom = zext nneg i32 %func_id to i64
  %funcs = getelementptr inbounds nuw i8, ptr %pipeline_state, i64 56
  %i.b = load ptr, ptr %funcs, align 8, !tbaa !55
  %memory_current = getelementptr inbounds nuw i8, ptr %pipeline_state, i64 8
  %i.c = atomicrmw sub ptr %memory_current, i64 %decr seq_cst, align 8 ; 0 uses
  %memory_current10.split = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %idxprom
  %memory_current10 = getelementptr inbounds nuw i8, ptr %memory_current10.split, i64 8
  %i.d = atomicrmw sub ptr %memory_current10, i64 %decr seq_cst, align 8 ; 0 uses
  br label %return

return:                                           ; preds = %if.end9, %entry
  ret void
}

; Function Attrs: nounwind
define weak void @halide_profiler_report(ptr %user_context) local_unnamed_addr #0 {
entry:
  %call = tail call ptr @halide_profiler_get_state() #17 ; 3 uses
  tail call void @halide_mutex_lock(ptr %call) #16
  tail call void @halide_profiler_report_unlocked(ptr %user_context, ptr %call) #17
  tail call void @halide_mutex_unlock(ptr %call) #16
  ret void
}

; Function Attrs: nounwind
define weak void @halide_profiler_reset() local_unnamed_addr #0 {
entry:
  %call = tail call ptr @halide_profiler_get_state() #17 ; 4 uses
  tail call void @halide_mutex_lock(ptr %call) #16
  %pipelines = getelementptr inbounds nuw i8, ptr %call, i64 80 ; 3 uses
  %i.a = load ptr, ptr %pipelines, align 8, !tbaa !68 ; 2 uses
  %tobool13 = icmp eq ptr %i.a, null
  br i1 %tobool13, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %i.b = phi ptr [ %i.e, %while.body ], [ %i.a, %entry ] ; 3 uses
  %next = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.c = load i64, ptr %next, align 8, !tbaa !65
  store i64 %i.c, ptr %pipelines, align 8, !tbaa !68
  %funcs = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %funcs, align 8, !tbaa !55
  tail call void @free(ptr %i.d) #16
  tail call void @free(ptr nonnull %i.b) #16
  %i.e = load ptr, ptr %pipelines, align 8, !tbaa !68 ; 2 uses
  %tobool = icmp eq ptr %i.e, null
  br i1 %tobool, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  %first_free_id = getelementptr inbounds nuw i8, ptr %call, i64 68
  store i32 0, ptr %first_free_id, align 4, !tbaa !66
  tail call void @halide_mutex_unlock(ptr nonnull %call) #16
  ret void
}

; Function Attrs: norecurse nounwind
define weak void @halide_profiler_pipeline_end(ptr %user_context, ptr %state) local_unnamed_addr #3 {
entry:
  %current_func = getelementptr inbounds nuw i8, ptr %state, i64 72
  store i32 -1, ptr %current_func, align 8, !tbaa !42
  ret void
}

; Function Attrs: norecurse nounwind
define weak void @halide_set_gpu_device(i32 %d) local_unnamed_addr #3 {
entry:
  store i32 %d, ptr @_ZN6Halide7Runtime8Internal17halide_gpu_deviceE, align 4, !tbaa !71
  store i8 1, ptr @_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE, align 1, !tbaa !9
  ret void
}

; Function Attrs: nounwind
define weak i32 @halide_get_gpu_device(ptr %user_context) local_unnamed_addr #0 {
entry:
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %entry
  %i.a = atomicrmw xchg ptr @_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE, i32 1 seq_cst, align 4
  %tobool.i = icmp eq i32 %i.a, 0
  br i1 %tobool.i, label %_ZN6Halide7Runtime8Internal14ScopedSpinLockC2EPVi.exit, label %while.cond.i

_ZN6Halide7Runtime8Internal14ScopedSpinLockC2EPVi.exit: ; preds = %while.cond.i
  %i.b = load i8, ptr @_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE, align 1, !tbaa !9, !range !11
  %tobool = icmp eq i8 %i.b, 0
  br i1 %tobool, label %if.then, label %_ZN6Halide7Runtime8Internal14ScopedSpinLockC2EPVi.exit.if.end4_crit_edge

_ZN6Halide7Runtime8Internal14ScopedSpinLockC2EPVi.exit.if.end4_crit_edge: ; preds = %_ZN6Halide7Runtime8Internal14ScopedSpinLockC2EPVi.exit
  %.pre = load i32, ptr @_ZN6Halide7Runtime8Internal17halide_gpu_deviceE, align 4, !tbaa !71
  br label %if.end4

if.then:                                          ; preds = %_ZN6Halide7Runtime8Internal14ScopedSpinLockC2EPVi.exit
  %call = tail call ptr @getenv(ptr nonnull @.str.34) #16 ; 2 uses
  %tobool1 = icmp eq ptr %call, null
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %call3 = tail call i32 @atoi(ptr nonnull %call) #16
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %storemerge = phi i32 [ %call3, %if.then2 ], [ -1, %if.then ] ; 2 uses
  store i32 %storemerge, ptr @_ZN6Halide7Runtime8Internal17halide_gpu_deviceE, align 4, !tbaa !71
  store i8 1, ptr @_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE, align 1, !tbaa !9
  br label %if.end4

if.end4:                                          ; preds = %if.end, %_ZN6Halide7Runtime8Internal14ScopedSpinLockC2EPVi.exit.if.end4_crit_edge
  %i.c = phi i32 [ %.pre, %_ZN6Halide7Runtime8Internal14ScopedSpinLockC2EPVi.exit.if.end4_crit_edge ], [ %storemerge, %if.end ]
  store atomic i32 0, ptr @_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE release, align 4
  ret i32 %i.c
}

; Function Attrs: nounwind
define linkonce i32 @_ZN6Halide7Runtime8Internal13default_traceEPvPK18halide_trace_event(ptr %user_context, ptr %e) #0 {
entry:
  %buffer = alloca [4096 x i8], align 4           ; 51 uses
  %i.a = atomicrmw add ptr @_ZZN6Halide7Runtime8Internal13default_traceEPvPK18halide_trace_eventE3ids, i32 1 seq_cst, align 4 ; 2 uses
  %call = tail call i32 @halide_get_trace_file(ptr %user_context) #17 ; 2 uses
  %cmp = icmp sgt i32 %call, 0
  %i.1592.ph.sroa.gep = getelementptr inbounds nuw i8, ptr %buffer, i64 14 ; 2 uses
  %i.1592.ph.sroa.gep15 = getelementptr inbounds nuw i8, ptr %buffer, i64 15 ; 2 uses
  %i.1592.ph.sroa.gep16 = getelementptr inbounds nuw i8, ptr %buffer, i64 46
  %i.1592.ph.sroa.gep17 = getelementptr inbounds nuw i8, ptr %buffer, i64 16 ; 2 uses
  %i.1592.ph.sroa.gep18 = getelementptr inbounds nuw i8, ptr %buffer, i64 31 ; 2 uses
  %i.1592.ph.sroa.gep19 = getelementptr inbounds nuw i8, ptr %buffer, i64 17 ; 2 uses
  %i.1592.ph.sroa.gep20 = getelementptr inbounds nuw i8, ptr %buffer, i64 45
  %i.1592.ph.sroa.gep21 = getelementptr inbounds nuw i8, ptr %buffer, i64 18 ; 2 uses
  %i.1592.ph.sroa.gep22 = getelementptr inbounds nuw i8, ptr %buffer, i64 38 ; 2 uses
  %i.1592.ph.sroa.gep23 = getelementptr inbounds nuw i8, ptr %buffer, i64 19 ; 2 uses
  %i.1592.ph.sroa.gep24 = getelementptr inbounds nuw i8, ptr %buffer, i64 44 ; 2 uses
  %i.1592.ph.sroa.gep25 = getelementptr inbounds nuw i8, ptr %buffer, i64 20 ; 2 uses
  %i.1592.ph.sroa.gep26 = getelementptr inbounds nuw i8, ptr %buffer, i64 32 ; 2 uses
  %i.1592.ph.sroa.gep27 = getelementptr inbounds nuw i8, ptr %buffer, i64 21 ; 2 uses
  %i.1592.ph.sroa.gep28 = getelementptr inbounds nuw i8, ptr %buffer, i64 43 ; 2 uses
  %i.1592.ph.sroa.gep29 = getelementptr inbounds nuw i8, ptr %buffer, i64 22 ; 2 uses
  %i.1592.ph.sroa.gep30 = getelementptr inbounds nuw i8, ptr %buffer, i64 35 ; 2 uses
  %i.1592.ph.sroa.gep31 = getelementptr inbounds nuw i8, ptr %buffer, i64 23 ; 2 uses
  %i.1592.ph.sroa.gep32 = getelementptr inbounds nuw i8, ptr %buffer, i64 42 ; 2 uses
  %i.1592.ph.sroa.gep33 = getelementptr inbounds nuw i8, ptr %buffer, i64 24 ; 2 uses
  %i.1592.ph.sroa.gep34 = getelementptr inbounds nuw i8, ptr %buffer, i64 33 ; 2 uses
  %i.1592.ph.sroa.gep35 = getelementptr inbounds nuw i8, ptr %buffer, i64 25 ; 2 uses
  %i.1592.ph.sroa.gep36 = getelementptr inbounds nuw i8, ptr %buffer, i64 41 ; 2 uses
  %i.1592.ph.sroa.gep37 = getelementptr inbounds nuw i8, ptr %buffer, i64 26 ; 2 uses
  %i.1592.ph.sroa.gep38 = getelementptr inbounds nuw i8, ptr %buffer, i64 37 ; 2 uses
  %i.1592.ph.sroa.gep39 = getelementptr inbounds nuw i8, ptr %buffer, i64 27 ; 2 uses
  %i.1592.ph.sroa.gep40 = getelementptr inbounds nuw i8, ptr %buffer, i64 40 ; 2 uses
  %i.1592.ph.sroa.gep41 = getelementptr inbounds nuw i8, ptr %buffer, i64 28 ; 2 uses
  %i.1592.ph.sroa.gep42 = getelementptr inbounds nuw i8, ptr %buffer, i64 34 ; 2 uses
  %i.1592.ph.sroa.gep43 = getelementptr inbounds nuw i8, ptr %buffer, i64 29 ; 2 uses
  %i.1592.ph.sroa.gep44 = getelementptr inbounds nuw i8, ptr %buffer, i64 39 ; 2 uses
  %i.1592.ph.sroa.gep45 = getelementptr inbounds nuw i8, ptr %buffer, i64 30 ; 2 uses
  %i.1592.ph.sroa.gep46 = getelementptr inbounds nuw i8, ptr %buffer, i64 36 ; 2 uses
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %lanes = getelementptr inbounds nuw i8, ptr %e, i64 18
  %i.b = load i16, ptr %lanes, align 1, !tbaa !73 ; 2 uses
  %dimensions = getelementptr inbounds nuw i8, ptr %e, i64 32
  %i.c = load i32, ptr %dimensions, align 1, !tbaa !78 ; 2 uses
  %bits = getelementptr inbounds nuw i8, ptr %e, i64 17
  %i.d = load i8, ptr %bits, align 1, !tbaa !79   ; 2 uses
  %conv14 = zext i8 %i.d to i32
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %if.then
  %bytes.0 = phi i32 [ %shl, %while.cond ], [ 1, %if.then ] ; 3 uses
  %mul = shl nsw i32 %bytes.0, 3
  %cmp15 = icmp slt i32 %mul, %conv14
  %shl = shl i32 %bytes.0, 1
  br i1 %cmp15, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond
  %phitmp = trunc i16 %i.b to i8
  %phitmp411 = trunc i32 %i.c to i8
  %cmp1 = icmp ult i16 %i.b, 256
  %phitmp. = select i1 %cmp1, i8 %phitmp, i8 -1   ; 2 uses
  %cmp6 = icmp slt i32 %i.c, 256
  %cond11 = select i1 %cmp6, i8 %phitmp411, i8 -1 ; 3 uses
  %conv16 = zext i8 %phitmp. to i32
  %mul17 = mul nsw i32 %bytes.0, %conv16          ; 3 uses
  %conv18 = sext i32 %mul17 to i64                ; 7 uses
  %conv19 = zext i8 %cond11 to i64
  %mul20 = shl nuw nsw i64 %conv19, 2             ; 5 uses
  %add = add nsw i64 %conv18, 48                  ; 2 uses
  %add21 = add nsw i64 %add, %mul20               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %buffer)
  %cmp22 = icmp ult i64 %add21, 4097
  br i1 %cmp22, label %if.end, label %if.then23

if.then23:                                        ; preds = %while.end
  tail call void @halide_print(ptr %user_context, ptr nonnull @.str.35) #16
  tail call void @abort() #16
  unreachable

if.end:                                           ; preds = %while.end
  store i32 %i.a, ptr %buffer, align 4, !tbaa !71
  %parent_id = getelementptr inbounds nuw i8, ptr %e, i64 12
  %i.e = load i32, ptr %parent_id, align 1, !tbaa !80
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %buffer, i64 4
  store i32 %i.e, ptr %arrayidx25, align 4, !tbaa !71
  %event = getelementptr inbounds nuw i8, ptr %e, i64 8
  %i.f = load i32, ptr %event, align 1, !tbaa !81
  %conv26 = trunc i32 %i.f to i8
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %buffer, i64 8
  store i8 %conv26, ptr %arrayidx27, align 4, !tbaa !8
  %code = getelementptr inbounds nuw i8, ptr %e, i64 16
  %i.g = load i8, ptr %code, align 1, !tbaa !82
  %arrayidx29 = getelementptr inbounds nuw i8, ptr %buffer, i64 9
  store i8 %i.g, ptr %arrayidx29, align 1, !tbaa !8
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %buffer, i64 10
  store i8 %i.d, ptr %arrayidx32, align 2, !tbaa !8
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %buffer, i64 11
  store i8 %phitmp., ptr %arrayidx33, align 1, !tbaa !8
  %value_index = getelementptr inbounds nuw i8, ptr %e, i64 20
  %i.h = load i32, ptr %value_index, align 1, !tbaa !83
  %conv34 = trunc i32 %i.h to i8
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %buffer, i64 12
  store i8 %conv34, ptr %arrayidx35, align 4, !tbaa !8
  %arrayidx36 = getelementptr inbounds nuw i8, ptr %buffer, i64 13
  store i8 %cond11, ptr %arrayidx36, align 1, !tbaa !8
  %.pre606 = load ptr, ptr %e, align 1, !tbaa !84 ; 33 uses
  %i.i = load i8, ptr %.pre606, align 1, !tbaa !8 ; 2 uses
  store i8 %i.i, ptr %i.1592.ph.sroa.gep, align 2, !tbaa !8
  %cmp43 = icmp eq i8 %i.i, 0
  br i1 %cmp43, label %min.iters.checked, label %for.inc

for.body48.preheader666:                          ; preds = %for.inc.31, %for.inc.30, %min.iters.checked.for.body48.preheader666_crit_edge
  %i.1592.ph.sink = phi i64 [ %ind.end, %min.iters.checked.for.body48.preheader666_crit_edge ], [ %spec.select, %for.inc.31 ], [ 45, %for.inc.30 ] ; 2 uses
  %i.j = sub nsw i64 48, %i.1592.ph.sink
  %scevgep10 = getelementptr nuw i8, ptr %buffer, i64 %i.1592.ph.sink
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %scevgep10, i8 0, i64 %i.j, i1 false), !tbaa !8
  br label %for.cond54.preheader

min.iters.checked:                                ; preds = %if.end, %for.inc, %for.inc.1, %for.inc.16, %for.inc.2, %for.inc.3, %for.inc.23, %for.inc.4, %for.inc.29, %for.inc.5, %for.inc.17, %for.inc.6, %for.inc.28, %for.inc.7, %for.inc.20, %for.inc.8, %for.inc.27, %for.inc.9, %for.inc.18, %for.inc.10, %for.inc.26, %for.inc.11, %for.inc.22, %for.inc.12, %for.inc.25, %for.inc.13, %for.inc.19, %for.inc.14, %for.inc.24, %for.inc.15, %for.inc.21
  %i.1592.ph.sroa.phi.ph = phi ptr [ %i.1592.ph.sroa.gep46, %for.inc.21 ], [ %i.1592.ph.sroa.gep45, %for.inc.15 ], [ %i.1592.ph.sroa.gep44, %for.inc.24 ], [ %i.1592.ph.sroa.gep43, %for.inc.14 ], [ %i.1592.ph.sroa.gep42, %for.inc.19 ], [ %i.1592.ph.sroa.gep41, %for.inc.13 ], [ %i.1592.ph.sroa.gep40, %for.inc.25 ], [ %i.1592.ph.sroa.gep39, %for.inc.12 ], [ %i.1592.ph.sroa.gep38, %for.inc.22 ], [ %i.1592.ph.sroa.gep37, %for.inc.11 ], [ %i.1592.ph.sroa.gep36, %for.inc.26 ], [ %i.1592.ph.sroa.gep35, %for.inc.10 ], [ %i.1592.ph.sroa.gep34, %for.inc.18 ], [ %i.1592.ph.sroa.gep33, %for.inc.9 ], [ %i.1592.ph.sroa.gep32, %for.inc.27 ], [ %i.1592.ph.sroa.gep31, %for.inc.8 ], [ %i.1592.ph.sroa.gep30, %for.inc.20 ], [ %i.1592.ph.sroa.gep29, %for.inc.7 ], [ %i.1592.ph.sroa.gep28, %for.inc.28 ], [ %i.1592.ph.sroa.gep27, %for.inc.6 ], [ %i.1592.ph.sroa.gep26, %for.inc.17 ], [ %i.1592.ph.sroa.gep25, %for.inc.5 ], [ %i.1592.ph.sroa.gep24, %for.inc.29 ], [ %i.1592.ph.sroa.gep23, %for.inc.4 ], [ %i.1592.ph.sroa.gep22, %for.inc.23 ], [ %i.1592.ph.sroa.gep21, %for.inc.3 ], [ %i.1592.ph.sroa.gep19, %for.inc.2 ], [ %i.1592.ph.sroa.gep18, %for.inc.16 ], [ %i.1592.ph.sroa.gep17, %for.inc.1 ], [ %i.1592.ph.sroa.gep15, %for.inc ], [ %i.1592.ph.sroa.gep, %if.end ]
  %i.1592.ph.ph = phi i64 [ 36, %for.inc.21 ], [ 30, %for.inc.15 ], [ 39, %for.inc.24 ], [ 29, %for.inc.14 ], [ 34, %for.inc.19 ], [ 28, %for.inc.13 ], [ 40, %for.inc.25 ], [ 27, %for.inc.12 ], [ 37, %for.inc.22 ], [ 26, %for.inc.11 ], [ 41, %for.inc.26 ], [ 25, %for.inc.10 ], [ 33, %for.inc.18 ], [ 24, %for.inc.9 ], [ 42, %for.inc.27 ], [ 23, %for.inc.8 ], [ 35, %for.inc.20 ], [ 22, %for.inc.7 ], [ 43, %for.inc.28 ], [ 21, %for.inc.6 ], [ 32, %for.inc.17 ], [ 20, %for.inc.5 ], [ 44, %for.inc.29 ], [ 19, %for.inc.4 ], [ 38, %for.inc.23 ], [ 18, %for.inc.3 ], [ 17, %for.inc.2 ], [ 31, %for.inc.16 ], [ 16, %for.inc.1 ], [ 15, %for.inc ], [ 14, %if.end ] ; 2 uses
  %i.k = sub nuw nsw i64 48, %i.1592.ph.ph        ; 2 uses
  %n.vec = and i64 %i.k, 60                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.1592.ph.sroa.phi.ph, i8 0, i64 %n.vec, i1 false), !tbaa !8
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %for.cond54.preheader, label %min.iters.checked.for.body48.preheader666_crit_edge

min.iters.checked.for.body48.preheader666_crit_edge: ; preds = %min.iters.checked
  %ind.end = add nuw nsw i64 %n.vec, %i.1592.ph.ph
  br label %for.body48.preheader666

for.inc:                                          ; preds = %if.end
  %arrayidx39.1 = getelementptr i8, ptr %.pre606, i64 1
  %i.l = load i8, ptr %arrayidx39.1, align 1, !tbaa !8 ; 2 uses
  store i8 %i.l, ptr %i.1592.ph.sroa.gep15, align 1, !tbaa !8
  %cmp43.1 = icmp eq i8 %i.l, 0
  br i1 %cmp43.1, label %min.iters.checked, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %arrayidx39.2 = getelementptr i8, ptr %.pre606, i64 2
  %i.m = load i8, ptr %arrayidx39.2, align 1, !tbaa !8 ; 2 uses
  store i8 %i.m, ptr %i.1592.ph.sroa.gep17, align 4, !tbaa !8
  %cmp43.2 = icmp eq i8 %i.m, 0
  br i1 %cmp43.2, label %min.iters.checked, label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx39.3 = getelementptr i8, ptr %.pre606, i64 3
  %i.n = load i8, ptr %arrayidx39.3, align 1, !tbaa !8 ; 2 uses
  store i8 %i.n, ptr %i.1592.ph.sroa.gep19, align 1, !tbaa !8
  %cmp43.3 = icmp eq i8 %i.n, 0
  br i1 %cmp43.3, label %min.iters.checked, label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx39.4 = getelementptr i8, ptr %.pre606, i64 4
  %i.o = load i8, ptr %arrayidx39.4, align 1, !tbaa !8 ; 2 uses
  store i8 %i.o, ptr %i.1592.ph.sroa.gep21, align 2, !tbaa !8
  %cmp43.4 = icmp eq i8 %i.o, 0
  br i1 %cmp43.4, label %min.iters.checked, label %for.inc.4

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx39.5 = getelementptr i8, ptr %.pre606, i64 5
  %i.p = load i8, ptr %arrayidx39.5, align 1, !tbaa !8 ; 2 uses
  store i8 %i.p, ptr %i.1592.ph.sroa.gep23, align 1, !tbaa !8
  %cmp43.5 = icmp eq i8 %i.p, 0
  br i1 %cmp43.5, label %min.iters.checked, label %for.inc.5

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx39.6 = getelementptr i8, ptr %.pre606, i64 6
  %i.q = load i8, ptr %arrayidx39.6, align 1, !tbaa !8 ; 2 uses
  store i8 %i.q, ptr %i.1592.ph.sroa.gep25, align 4, !tbaa !8
  %cmp43.6 = icmp eq i8 %i.q, 0
  br i1 %cmp43.6, label %min.iters.checked, label %for.inc.6

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx39.7 = getelementptr i8, ptr %.pre606, i64 7
  %i.r = load i8, ptr %arrayidx39.7, align 1, !tbaa !8 ; 2 uses
  store i8 %i.r, ptr %i.1592.ph.sroa.gep27, align 1, !tbaa !8
  %cmp43.7 = icmp eq i8 %i.r, 0
  br i1 %cmp43.7, label %min.iters.checked, label %for.inc.7

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx39.8 = getelementptr i8, ptr %.pre606, i64 8
  %i.s = load i8, ptr %arrayidx39.8, align 1, !tbaa !8 ; 2 uses
  store i8 %i.s, ptr %i.1592.ph.sroa.gep29, align 2, !tbaa !8
  %cmp43.8 = icmp eq i8 %i.s, 0
  br i1 %cmp43.8, label %min.iters.checked, label %for.inc.8

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx39.9 = getelementptr i8, ptr %.pre606, i64 9
  %i.t = load i8, ptr %arrayidx39.9, align 1, !tbaa !8 ; 2 uses
  store i8 %i.t, ptr %i.1592.ph.sroa.gep31, align 1, !tbaa !8
  %cmp43.9 = icmp eq i8 %i.t, 0
  br i1 %cmp43.9, label %min.iters.checked, label %for.inc.9

for.inc.9:                                        ; preds = %for.inc.8
  %arrayidx39.10 = getelementptr i8, ptr %.pre606, i64 10
  %i.u = load i8, ptr %arrayidx39.10, align 1, !tbaa !8 ; 2 uses
  store i8 %i.u, ptr %i.1592.ph.sroa.gep33, align 4, !tbaa !8
  %cmp43.10 = icmp eq i8 %i.u, 0
  br i1 %cmp43.10, label %min.iters.checked, label %for.inc.10

for.inc.10:                                       ; preds = %for.inc.9
  %arrayidx39.11 = getelementptr i8, ptr %.pre606, i64 11
  %i.v = load i8, ptr %arrayidx39.11, align 1, !tbaa !8 ; 2 uses
  store i8 %i.v, ptr %i.1592.ph.sroa.gep35, align 1, !tbaa !8
  %cmp43.11 = icmp eq i8 %i.v, 0
  br i1 %cmp43.11, label %min.iters.checked, label %for.inc.11

for.inc.11:                                       ; preds = %for.inc.10
  %arrayidx39.12 = getelementptr i8, ptr %.pre606, i64 12
  %i.w = load i8, ptr %arrayidx39.12, align 1, !tbaa !8 ; 2 uses
  store i8 %i.w, ptr %i.1592.ph.sroa.gep37, align 2, !tbaa !8
  %cmp43.12 = icmp eq i8 %i.w, 0
  br i1 %cmp43.12, label %min.iters.checked, label %for.inc.12

for.inc.12:                                       ; preds = %for.inc.11
  %arrayidx39.13 = getelementptr i8, ptr %.pre606, i64 13
  %i.x = load i8, ptr %arrayidx39.13, align 1, !tbaa !8 ; 2 uses
  store i8 %i.x, ptr %i.1592.ph.sroa.gep39, align 1, !tbaa !8
  %cmp43.13 = icmp eq i8 %i.x, 0
  br i1 %cmp43.13, label %min.iters.checked, label %for.inc.13

for.inc.13:                                       ; preds = %for.inc.12
  %arrayidx39.14 = getelementptr i8, ptr %.pre606, i64 14
  %i.y = load i8, ptr %arrayidx39.14, align 1, !tbaa !8 ; 2 uses
  store i8 %i.y, ptr %i.1592.ph.sroa.gep41, align 4, !tbaa !8
  %cmp43.14 = icmp eq i8 %i.y, 0
  br i1 %cmp43.14, label %min.iters.checked, label %for.inc.14

for.inc.14:                                       ; preds = %for.inc.13
  %arrayidx39.15 = getelementptr i8, ptr %.pre606, i64 15
  %i.z = load i8, ptr %arrayidx39.15, align 1, !tbaa !8 ; 2 uses
  store i8 %i.z, ptr %i.1592.ph.sroa.gep43, align 1, !tbaa !8
  %cmp43.15 = icmp eq i8 %i.z, 0
  br i1 %cmp43.15, label %min.iters.checked, label %for.inc.15

for.inc.15:                                       ; preds = %for.inc.14
  %arrayidx39.16 = getelementptr i8, ptr %.pre606, i64 16
  %i.aa = load i8, ptr %arrayidx39.16, align 1, !tbaa !8 ; 2 uses
  store i8 %i.aa, ptr %i.1592.ph.sroa.gep45, align 2, !tbaa !8
  %cmp43.16 = icmp eq i8 %i.aa, 0
  br i1 %cmp43.16, label %min.iters.checked, label %for.inc.16

for.inc.16:                                       ; preds = %for.inc.15
  %arrayidx39.17 = getelementptr i8, ptr %.pre606, i64 17
  %i.ab = load i8, ptr %arrayidx39.17, align 1, !tbaa !8 ; 2 uses
  store i8 %i.ab, ptr %i.1592.ph.sroa.gep18, align 1, !tbaa !8
  %cmp43.17 = icmp eq i8 %i.ab, 0
  br i1 %cmp43.17, label %min.iters.checked, label %for.inc.17

for.inc.17:                                       ; preds = %for.inc.16
  %arrayidx39.18 = getelementptr i8, ptr %.pre606, i64 18
  %i.ac = load i8, ptr %arrayidx39.18, align 1, !tbaa !8 ; 2 uses
  store i8 %i.ac, ptr %i.1592.ph.sroa.gep26, align 4, !tbaa !8
  %cmp43.18 = icmp eq i8 %i.ac, 0
  br i1 %cmp43.18, label %min.iters.checked, label %for.inc.18

for.inc.18:                                       ; preds = %for.inc.17
  %arrayidx39.19 = getelementptr i8, ptr %.pre606, i64 19
  %i.ad = load i8, ptr %arrayidx39.19, align 1, !tbaa !8 ; 2 uses
  store i8 %i.ad, ptr %i.1592.ph.sroa.gep34, align 1, !tbaa !8
  %cmp43.19 = icmp eq i8 %i.ad, 0
  br i1 %cmp43.19, label %min.iters.checked, label %for.inc.19

for.inc.19:                                       ; preds = %for.inc.18
  %arrayidx39.20 = getelementptr i8, ptr %.pre606, i64 20
  %i.ae = load i8, ptr %arrayidx39.20, align 1, !tbaa !8 ; 2 uses
  store i8 %i.ae, ptr %i.1592.ph.sroa.gep42, align 2, !tbaa !8
  %cmp43.20 = icmp eq i8 %i.ae, 0
  br i1 %cmp43.20, label %min.iters.checked, label %for.inc.20

for.inc.20:                                       ; preds = %for.inc.19
  %arrayidx39.21 = getelementptr i8, ptr %.pre606, i64 21
  %i.af = load i8, ptr %arrayidx39.21, align 1, !tbaa !8 ; 2 uses
  store i8 %i.af, ptr %i.1592.ph.sroa.gep30, align 1, !tbaa !8
  %cmp43.21 = icmp eq i8 %i.af, 0
  br i1 %cmp43.21, label %min.iters.checked, label %for.inc.21

for.inc.21:                                       ; preds = %for.inc.20
  %arrayidx39.22 = getelementptr i8, ptr %.pre606, i64 22
  %i.ag = load i8, ptr %arrayidx39.22, align 1, !tbaa !8 ; 2 uses
  store i8 %i.ag, ptr %i.1592.ph.sroa.gep46, align 4, !tbaa !8
  %cmp43.22 = icmp eq i8 %i.ag, 0
  br i1 %cmp43.22, label %min.iters.checked, label %for.inc.22

for.inc.22:                                       ; preds = %for.inc.21
  %arrayidx39.23 = getelementptr i8, ptr %.pre606, i64 23
  %i.ah = load i8, ptr %arrayidx39.23, align 1, !tbaa !8 ; 2 uses
  store i8 %i.ah, ptr %i.1592.ph.sroa.gep38, align 1, !tbaa !8
  %cmp43.23 = icmp eq i8 %i.ah, 0
  br i1 %cmp43.23, label %min.iters.checked, label %for.inc.23

for.inc.23:                                       ; preds = %for.inc.22
  %arrayidx39.24 = getelementptr i8, ptr %.pre606, i64 24
  %i.ai = load i8, ptr %arrayidx39.24, align 1, !tbaa !8 ; 2 uses
  store i8 %i.ai, ptr %i.1592.ph.sroa.gep22, align 2, !tbaa !8
  %cmp43.24 = icmp eq i8 %i.ai, 0
  br i1 %cmp43.24, label %min.iters.checked, label %for.inc.24

for.inc.24:                                       ; preds = %for.inc.23
  %arrayidx39.25 = getelementptr i8, ptr %.pre606, i64 25
  %i.aj = load i8, ptr %arrayidx39.25, align 1, !tbaa !8 ; 2 uses
  store i8 %i.aj, ptr %i.1592.ph.sroa.gep44, align 1, !tbaa !8
  %cmp43.25 = icmp eq i8 %i.aj, 0
  br i1 %cmp43.25, label %min.iters.checked, label %for.inc.25

for.inc.25:                                       ; preds = %for.inc.24
  %arrayidx39.26 = getelementptr i8, ptr %.pre606, i64 26
  %i.ak = load i8, ptr %arrayidx39.26, align 1, !tbaa !8 ; 2 uses
  store i8 %i.ak, ptr %i.1592.ph.sroa.gep40, align 4, !tbaa !8
  %cmp43.26 = icmp eq i8 %i.ak, 0
  br i1 %cmp43.26, label %min.iters.checked, label %for.inc.26

for.inc.26:                                       ; preds = %for.inc.25
  %arrayidx39.27 = getelementptr i8, ptr %.pre606, i64 27
  %i.al = load i8, ptr %arrayidx39.27, align 1, !tbaa !8 ; 2 uses
  store i8 %i.al, ptr %i.1592.ph.sroa.gep36, align 1, !tbaa !8
  %cmp43.27 = icmp eq i8 %i.al, 0
  br i1 %cmp43.27, label %min.iters.checked, label %for.inc.27

for.inc.27:                                       ; preds = %for.inc.26
  %arrayidx39.28 = getelementptr i8, ptr %.pre606, i64 28
  %i.am = load i8, ptr %arrayidx39.28, align 1, !tbaa !8 ; 2 uses
  store i8 %i.am, ptr %i.1592.ph.sroa.gep32, align 2, !tbaa !8
  %cmp43.28 = icmp eq i8 %i.am, 0
  br i1 %cmp43.28, label %min.iters.checked, label %for.inc.28

for.inc.28:                                       ; preds = %for.inc.27
  %arrayidx39.29 = getelementptr i8, ptr %.pre606, i64 29
  %i.an = load i8, ptr %arrayidx39.29, align 1, !tbaa !8 ; 2 uses
  store i8 %i.an, ptr %i.1592.ph.sroa.gep28, align 1, !tbaa !8
  %cmp43.29 = icmp eq i8 %i.an, 0
  br i1 %cmp43.29, label %min.iters.checked, label %for.inc.29

for.inc.29:                                       ; preds = %for.inc.28
  %arrayidx39.30 = getelementptr i8, ptr %.pre606, i64 30
  %i.ao = load i8, ptr %arrayidx39.30, align 1, !tbaa !8 ; 2 uses
  store i8 %i.ao, ptr %i.1592.ph.sroa.gep24, align 4, !tbaa !8
  %cmp43.30 = icmp eq i8 %i.ao, 0
  br i1 %cmp43.30, label %min.iters.checked, label %for.inc.30

for.inc.30:                                       ; preds = %for.inc.29
  %arrayidx39.31 = getelementptr i8, ptr %.pre606, i64 31
  %i.ap = load i8, ptr %arrayidx39.31, align 1, !tbaa !8 ; 2 uses
  store i8 %i.ap, ptr %i.1592.ph.sroa.gep20, align 1, !tbaa !8
  %cmp43.31 = icmp eq i8 %i.ap, 0
  br i1 %cmp43.31, label %for.body48.preheader666, label %for.inc.31

for.inc.31:                                       ; preds = %for.inc.30
  %arrayidx39.32 = getelementptr i8, ptr %.pre606, i64 32
  %i.aq = load i8, ptr %arrayidx39.32, align 1, !tbaa !8 ; 2 uses
  store i8 %i.aq, ptr %i.1592.ph.sroa.gep16, align 2, !tbaa !8
  %cmp43.32 = icmp eq i8 %i.aq, 0
  %spec.select = select i1 %cmp43.32, i64 46, i64 47
  br label %for.body48.preheader666

for.cond54.preheader:                             ; preds = %for.body48.preheader666, %min.iters.checked
  %cmp55589 = icmp eq i32 %mul17, 0
  br i1 %cmp55589, label %for.cond64.preheader, label %for.body56.lr.ph

for.body56.lr.ph:                                 ; preds = %for.cond54.preheader
  %value = getelementptr inbounds nuw i8, ptr %e, i64 24
  %.pre607 = load ptr, ptr %value, align 1, !tbaa !85 ; 4 uses
  %min.iters.check617 = icmp ult i32 %mul17, 4
  br i1 %min.iters.check617, label %for.body56.preheader, label %min.iters.checked618

for.body56.preheader:                             ; preds = %middle.block615.a, %min.iters.checked618, %for.body56.lr.ph
  %i53.0590.ph = phi i64 [ 0, %for.body56.lr.ph ], [ %n.vec620, %middle.block615.a ], [ 0, %min.iters.checked618 ]
  br label %for.body56

min.iters.checked618:                             ; preds = %for.body56.lr.ph
  %n.vec620 = and i64 %conv18, -4                 ; 3 uses
  %scevgep = getelementptr inbounds nuw i8, ptr %buffer, i64 48
  %i.ar = getelementptr i8, ptr %buffer, i64 %conv18
  %scevgep624 = getelementptr i8, ptr %i.ar, i64 47
  %i.as = getelementptr i8, ptr %.pre607, i64 %conv18
  %scevgep625 = getelementptr i8, ptr %i.as, i64 -1
  %bound0 = icmp ule ptr %scevgep, %scevgep625
  %bound1 = icmp ule ptr %.pre607, %scevgep624
  %memcheck.conflict = and i1 %bound1, %bound0
  br i1 %memcheck.conflict, label %for.body56.preheader, label %vector.body614

vector.body614:                                   ; preds = %min.iters.checked618, %vector.body614
  %index627 = phi i64 [ %index.next628, %vector.body614 ], [ 0, %min.iters.checked618 ] ; 3 uses
  %index.next628 = add i64 %index627, 4           ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.pre607, i64 %index627
  %wide.load664 = load i32, ptr %i.at, align 1, !tbaa !8, !alias.scope !86
  %i.au = getelementptr i8, ptr %buffer, i64 %index627
  %i.av = getelementptr i8, ptr %i.au, i64 48
  store i32 %wide.load664, ptr %i.av, align 4, !tbaa !8, !alias.scope !89, !noalias !86
  %i.aw = icmp eq i64 %index.next628, %n.vec620
  br i1 %i.aw, label %middle.block615.a, label %vector.body614, !llvm.loop !91

middle.block615.a:                                ; preds = %vector.body614
  %cmp.n630.a = icmp eq i64 %n.vec620, %conv18
  br i1 %cmp.n630.a, label %for.cond64.preheader, label %for.body56.preheader

for.cond64.preheader:                             ; preds = %for.body56, %middle.block615.a, %for.cond54.preheader
  %cmp65587 = icmp eq i8 %cond11, 0
  br i1 %cmp65587, label %while.cond.i.preheader.a, label %for.body67.lr.ph

while.cond.i.preheader.a:                         ; preds = %vector.body633, %for.body67, %for.cond64.preheader
  br label %while.cond.i

for.body67.lr.ph:                                 ; preds = %for.cond64.preheader
  %coordinates = getelementptr inbounds nuw i8, ptr %e, i64 36
  %.pre608 = load ptr, ptr %coordinates, align 1, !tbaa !94 ; 4 uses
  %scevgep643 = getelementptr i8, ptr %buffer, i64 %add ; 3 uses
  %i.ax = getelementptr i8, ptr %buffer, i64 %mul20
  %i.ay = getelementptr i8, ptr %i.ax, i64 %conv18
  %scevgep645 = getelementptr i8, ptr %i.ay, i64 47
  %i.az = getelementptr i8, ptr %.pre608, i64 %mul20
  %scevgep646 = getelementptr i8, ptr %i.az, i64 -1
  %bound0647 = icmp ule ptr %scevgep643, %scevgep646
  %bound1648 = icmp ule ptr %.pre608, %scevgep645
  %memcheck.conflict650 = and i1 %bound1648, %bound0647
  br i1 %memcheck.conflict650, label %for.body67, label %vector.body633

vector.body633:                                   ; preds = %for.body67.lr.ph, %vector.body633
  %index653 = phi i64 [ %index.next654, %vector.body633 ], [ 0, %for.body67.lr.ph ] ; 3 uses
  %index.next654 = add nuw nsw i64 %index653, 4   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre608, i64 %index653
  %wide.load659665 = load i32, ptr %i.ba, align 1, !tbaa !8, !alias.scope !95
  %gep = getelementptr i8, ptr %scevgep643, i64 %index653
  store i32 %wide.load659665, ptr %gep, align 1, !tbaa !8, !alias.scope !98, !noalias !95
  %i.bb = icmp eq i64 %index.next654, %mul20
  br i1 %i.bb, label %while.cond.i.preheader.a, label %vector.body633, !llvm.loop !100

for.body56:                                       ; preds = %for.body56.preheader, %for.body56
  %i53.0590 = phi i64 [ %inc61, %for.body56 ], [ %i53.0590.ph, %for.body56.preheader ] ; 3 uses
  %arrayidx57 = getelementptr inbounds i8, ptr %.pre607, i64 %i53.0590
  %i.bc = load i8, ptr %arrayidx57, align 1, !tbaa !8
  %i.bd = getelementptr i8, ptr %buffer, i64 %i53.0590
  %arrayidx59 = getelementptr i8, ptr %i.bd, i64 48
  store i8 %i.bc, ptr %arrayidx59, align 1, !tbaa !8
  %inc61 = add nuw i64 %i53.0590, 1               ; 2 uses
  %cmp55 = icmp ult i64 %inc61, %conv18
  br i1 %cmp55, label %for.body56, label %for.cond64.preheader, !llvm.loop !101

while.cond.i:                                     ; preds = %while.cond.i.preheader.a, %while.cond.i
  %i.be = atomicrmw xchg ptr @_ZN6Halide7Runtime8Internal22halide_trace_file_lockE, i32 1 seq_cst, align 4
  %tobool.i = icmp eq i32 %i.be, 0
  br i1 %tobool.i, label %_ZN6Halide7Runtime8Internal14ScopedSpinLockC2EPVi.exit, label %while.cond.i

_ZN6Halide7Runtime8Internal14ScopedSpinLockC2EPVi.exit: ; preds = %while.cond.i
  %call76 = call i64 @write(i32 %call, ptr nonnull %buffer, i64 %add21) #16
  %cmp77 = icmp eq i64 %call76, %add21
  br i1 %cmp77, label %if.end79, label %if.then78

for.body67:                                       ; preds = %for.body67.lr.ph, %for.body67
  %i63.0588 = phi i64 [ %inc73, %for.body67 ], [ 0, %for.body67.lr.ph ] ; 3 uses
  %arrayidx68 = getelementptr inbounds nuw i8, ptr %.pre608, i64 %i63.0588
  %i.bf = load i8, ptr %arrayidx68, align 1, !tbaa !8
  %gep5 = getelementptr i8, ptr %scevgep643, i64 %i63.0588
  store i8 %i.bf, ptr %gep5, align 1, !tbaa !8
  %inc73 = add nuw nsw i64 %i63.0588, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %inc73, %mul20
  br i1 %exitcond.not, label %while.cond.i.preheader.a, label %for.body67, !llvm.loop !102

if.then78:                                        ; preds = %_ZN6Halide7Runtime8Internal14ScopedSpinLockC2EPVi.exit
  call void @halide_print(ptr %user_context, ptr nonnull @.str.1.36) #16
  call void @abort() #16
  unreachable

if.end79:                                         ; preds = %_ZN6Halide7Runtime8Internal14ScopedSpinLockC2EPVi.exit
  store atomic i32 0, ptr @_ZN6Halide7Runtime8Internal22halide_trace_file_lockE release, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %buffer)
  br label %if.end298

if.else:                                          ; preds = %entry
  %call.i424 = tail call ptr @halide_malloc(ptr %user_context, i64 1024) #16 ; 4 uses
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %call.i424, i64 1023 ; 40 uses
  store i8 0, ptr %add.ptr.i, align 1, !tbaa !8
  %bits82 = getelementptr inbounds nuw i8, ptr %e, i64 17
  %i.bg = load i8, ptr %bits82, align 1, !tbaa !79
  %conv83 = zext i8 %i.bg to i32
  br label %while.cond80

while.cond80:                                     ; preds = %while.cond80, %if.else
  %print_bits.0 = phi i32 [ 8, %if.else ], [ %shl86, %while.cond80 ] ; 10 uses
  %cmp84 = icmp slt i32 %print_bits.0, %conv83
  %shl86 = shl i32 %print_bits.0, 1
  br i1 %cmp84, label %while.cond80, label %while.end87

while.end87:                                      ; preds = %while.cond80
  %cmp88 = icmp samesign ult i32 %print_bits.0, 65
  br i1 %cmp88, label %if.end90, label %if.then89

if.then89:                                        ; preds = %while.end87
  tail call void @halide_print(ptr %user_context, ptr nonnull @.str.2.37) #16
  tail call void @abort() #16
  unreachable

if.end90:                                         ; preds = %while.end87
  %event91 = getelementptr inbounds nuw i8, ptr %e, i64 8
  %i.bh = load i32, ptr %event91, align 1, !tbaa !81 ; 2 uses
  %cmp92 = icmp slt i32 %i.bh, 2
  %idxprom = zext i32 %i.bh to i64
  %arrayidx94 = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6Halide7Runtime8Internal13default_traceEPvPK18halide_trace_eventE11event_types, i64 %idxprom
  %i.bi = load ptr, ptr %arrayidx94, align 8, !tbaa !4
  %call.i429 = tail call ptr @halide_string_to_string(ptr nonnull %call.i424, ptr nonnull %add.ptr.i, ptr %i.bi) #16
  %call.i432 = tail call ptr @halide_string_to_string(ptr %call.i429, ptr nonnull %add.ptr.i, ptr nonnull @.str.13.38) #16
  %i.bj = load ptr, ptr %e, align 1, !tbaa !84
  %call.i435 = tail call ptr @halide_string_to_string(ptr %call.i432, ptr nonnull %add.ptr.i, ptr %i.bj) #16
  %call.i438 = tail call ptr @halide_string_to_string(ptr %call.i435, ptr nonnull %add.ptr.i, ptr nonnull @.str.25.130) #16
  %value_index100 = getelementptr inbounds nuw i8, ptr %e, i64 20
  %i.bk = load i32, ptr %value_index100, align 1, !tbaa !83
  %conv.i = sext i32 %i.bk to i64
  %call.i441 = tail call ptr @halide_int64_to_string(ptr %call.i438, ptr nonnull %add.ptr.i, i64 %conv.i, i32 1) #16
  %call.i444 = tail call ptr @halide_string_to_string(ptr %call.i441, ptr nonnull %add.ptr.i, ptr nonnull @.str.15.40) #16 ; 2 uses
  %lanes104 = getelementptr inbounds nuw i8, ptr %e, i64 18 ; 7 uses
  %i.bl = load i16, ptr %lanes104, align 1, !tbaa !73
  %cmp106 = icmp ugt i16 %i.bl, 1
  br i1 %cmp106, label %if.then107, label %for.cond111.preheader

if.then107:                                       ; preds = %if.end90
  %call.i447 = tail call ptr @halide_string_to_string(ptr %call.i444, ptr nonnull %add.ptr.i, ptr nonnull @.str.16.41) #16
  br label %for.cond111.preheader

for.cond111.preheader:                            ; preds = %if.then107, %if.end90
  %ss.sroa.5.0.ph = phi ptr [ %call.i444, %if.end90 ], [ %call.i447, %if.then107 ] ; 2 uses
  %dimensions112 = getelementptr inbounds nuw i8, ptr %e, i64 32 ; 3 uses
  %i.bm = load i32, ptr %dimensions112, align 1, !tbaa !78
  %cmp113599 = icmp sgt i32 %i.bm, 0
  br i1 %cmp113599, label %if.end131.peel, label %for.cond.cleanup114

if.end131.peel:                                   ; preds = %for.cond111.preheader
  %coordinates133 = getelementptr inbounds nuw i8, ptr %e, i64 36 ; 2 uses
  %.pre = load ptr, ptr %coordinates133, align 1, !tbaa !94
  %.pre47 = load i32, ptr %.pre, align 4, !tbaa !71
  %conv.i456.peel = sext i32 %.pre47 to i64
  %call.i457.peel = tail call ptr @halide_int64_to_string(ptr %ss.sroa.5.0.ph, ptr nonnull %add.ptr.i, i64 %conv.i456.peel, i32 1) #16 ; 2 uses
  %i.bn = load i32, ptr %dimensions112, align 1, !tbaa !78
  %cmp113.peel = icmp sgt i32 %i.bn, 1
  br i1 %cmp113.peel, label %if.then117, label %for.cond.cleanup114

for.cond.cleanup114:                              ; preds = %if.end131, %if.end131.peel, %for.cond111.preheader
  %ss.sroa.5.0.lcssa = phi ptr [ %ss.sroa.5.0.ph, %for.cond111.preheader ], [ %call.i457.peel, %if.end131.peel ], [ %call.i457, %if.end131 ]
  %i.bo = load i16, ptr %lanes104, align 1, !tbaa !73
  %cmp142 = icmp ugt i16 %i.bo, 1
  %.str.19.44..str.20.45 = select i1 %cmp142, ptr @.str.19.44, ptr @.str.8.113
  %call.i463 = tail call ptr @halide_string_to_string(ptr %ss.sroa.5.0.lcssa, ptr nonnull %add.ptr.i, ptr nonnull %.str.19.44..str.20.45) #16 ; 2 uses
  br i1 %cmp92, label %if.then148, label %if.end294

if.then117:                                       ; preds = %if.end131.peel, %if.end131
  %indvars.iv604 = phi i64 [ %indvars.iv.next605, %if.end131 ], [ 1, %if.end131.peel ] ; 3 uses
  %ss.sroa.5.0600 = phi ptr [ %call.i457, %if.end131 ], [ %call.i457.peel, %if.end131.peel ]
  %i.bp = load i16, ptr %lanes104, align 1, !tbaa !73 ; 2 uses
  %cmp121 = icmp ugt i16 %i.bp, 1
  br i1 %cmp121, label %land.lhs.true, label %if.else128

land.lhs.true:                                    ; preds = %if.then117
  %conv120 = zext i16 %i.bp to i32
  %i.bq = trunc nuw nsw i64 %indvars.iv604 to i32
  %rem2 = urem i32 %i.bq, %conv120
  %cmp125 = icmp eq i32 %rem2, 0
  br i1 %cmp125, label %if.end131, label %if.else128

if.else128:                                       ; preds = %land.lhs.true, %if.then117
  br label %if.end131

if.end131:                                        ; preds = %land.lhs.true, %if.else128
  %.str.18.43.sink = phi ptr [ @.str.18.43, %if.else128 ], [ @.str.17.42, %land.lhs.true ]
  %call.i453 = tail call ptr @halide_string_to_string(ptr %ss.sroa.5.0600, ptr nonnull %add.ptr.i, ptr nonnull %.str.18.43.sink) #16
  %i.br = load ptr, ptr %coordinates133, align 1, !tbaa !94
  %arrayidx134 = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv604
  %i.bs = load i32, ptr %arrayidx134, align 4, !tbaa !71
  %conv.i456 = sext i32 %i.bs to i64
  %call.i457 = tail call ptr @halide_int64_to_string(ptr %call.i453, ptr nonnull %add.ptr.i, i64 %conv.i456, i32 1) #16 ; 2 uses
  %indvars.iv.next605 = add nuw nsw i64 %indvars.iv604, 1 ; 2 uses
  %i.bt = load i32, ptr %dimensions112, align 1, !tbaa !78
  %i.bu = sext i32 %i.bt to i64
  %cmp113 = icmp slt i64 %indvars.iv.next605, %i.bu
  br i1 %cmp113, label %if.then117, label %for.cond.cleanup114, !llvm.loop !103

if.then148:                                       ; preds = %for.cond.cleanup114
  %i.bv = load i16, ptr %lanes104, align 1, !tbaa !73
  %cmp152 = icmp ugt i16 %i.bv, 1
  %.str.21.46..str.22.47 = select i1 %cmp152, ptr @.str.21.46, ptr @.str.22.47
  %call.i469 = tail call ptr @halide_string_to_string(ptr %call.i463, ptr nonnull %add.ptr.i, ptr nonnull %.str.21.46..str.22.47) #16 ; 14 uses
  %i.bw = load i16, ptr %lanes104, align 1, !tbaa !73
  %cmp163595 = icmp eq i16 %i.bw, 0
  br i1 %cmp163595, label %if.end294, label %if.end169.peel

if.end169.peel:                                   ; preds = %if.then148
  %code171 = getelementptr inbounds nuw i8, ptr %e, i64 16 ; 2 uses
  %cmp191 = icmp eq i32 %print_bits.0, 32         ; 6 uses
  %value194 = getelementptr inbounds nuw i8, ptr %e, i64 24 ; 8 uses
  %cmp247 = icmp sgt i32 %print_bits.0, 15        ; 2 uses
  %cmp257 = icmp eq i32 %print_bits.0, 16         ; 2 uses
  %.pre48 = load i8, ptr %code171, align 1, !tbaa !82
  switch i8 %.pre48, label %for.inc284.peel [
    i8 0, label %if.then174.peel
    i8 1, label %if.then210.peel
    i8 2, label %if.then246.peel
    i8 3, label %if.then275.peel
  ]

if.then275.peel:                                  ; preds = %if.end169.peel
  %i.bx = load ptr, ptr %value194, align 1, !tbaa !85
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !4
  %call.i515.peel = tail call ptr @halide_pointer_to_string(ptr %call.i469, ptr nonnull %add.ptr.i, ptr %i.by) #16
  br label %for.inc284.peel

if.then246.peel:                                  ; preds = %if.end169.peel
  br i1 %cmp247, label %if.end249.peel, label %if.else256.thread

if.end249.peel:                                   ; preds = %if.then246.peel
  %i.bz = load ptr, ptr %value194, align 1, !tbaa !85 ; 3 uses
  br i1 %cmp191, label %if.then251.peel, label %if.else256.peel

if.else256.peel:                                  ; preds = %if.end249.peel
  br i1 %cmp257, label %if.then258.peel, label %if.else263.peel

if.else263.peel:                                  ; preds = %if.else256.peel
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !105
  %call.i512.peel = tail call ptr @halide_double_to_string(ptr %call.i469, ptr nonnull %add.ptr.i, double %i.ca, i32 1) #16
  br label %for.inc284.peel

if.then258.peel:                                  ; preds = %if.else256.peel
  %i.cb = load i16, ptr %i.bz, align 2, !tbaa !107
  %call.i507.peel = tail call double @halide_float16_bits_to_double(i16 zeroext %i.cb) #16
  %call2.i.peel = tail call ptr @halide_double_to_string(ptr %call.i469, ptr nonnull %add.ptr.i, double %call.i507.peel, i32 1) #16
  br label %for.inc284.peel

if.then251.peel:                                  ; preds = %if.end249.peel
  %i.cc = load float, ptr %i.bz, align 4, !tbaa !108
  %conv.i505.peel = fpext float %i.cc to double
  %call.i506.peel = tail call ptr @halide_double_to_string(ptr %call.i469, ptr nonnull %add.ptr.i, double %conv.i505.peel, i32 0) #16
  br label %for.inc284.peel

if.then210.peel:                                  ; preds = %if.end169.peel
  %i.cd = load ptr, ptr %value194, align 1, !tbaa !85 ; 4 uses
  switch i32 %print_bits.0, label %if.else226.peel [
    i32 8, label %if.then212.peel
    i32 16, label %if.then220.peel
  ]

if.then220.peel:                                  ; preds = %if.then210.peel
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !107
  %conv.i494.peel = zext i16 %i.ce to i64
  %call.i495.peel = tail call ptr @halide_int64_to_string(ptr %call.i469, ptr nonnull %add.ptr.i, i64 %conv.i494.peel, i32 1) #16
  br label %for.inc284.peel

if.then212.peel:                                  ; preds = %if.then210.peel
  %i.cf = load i8, ptr %i.cd, align 1, !tbaa !8
  %conv.i490.peel = zext i8 %i.cf to i64
  %call.i491.peel = tail call ptr @halide_int64_to_string(ptr %call.i469, ptr nonnull %add.ptr.i, i64 %conv.i490.peel, i32 1) #16
  br label %for.inc284.peel

if.else226.peel:                                  ; preds = %if.then210.peel
  br i1 %cmp191, label %if.then228.peel, label %if.else233.peel

if.else233.peel:                                  ; preds = %if.else226.peel
  %i.cg = load i64, ptr %i.cd, align 8, !tbaa !69
  %call.i502.peel = tail call ptr @halide_uint64_to_string(ptr %call.i469, ptr nonnull %add.ptr.i, i64 %i.cg, i32 1) #16
  br label %for.inc284.peel

end_hunk_0
begin_hunk_1_@halide_error_buffer_argument_is_null:_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
  %call.i11 = tail call ptr @halide_string_to_string(ptr %call.i8, ptr nonnull %add.ptr.i, ptr nonnull @.str.34.137) #16 ; 0 uses
  tail call void @halide_error(ptr %user_context, ptr %call.i) #16
  tail call void @halide_free(ptr %user_context, ptr %call.i) #16
  ret i32 -12
}

; Function Attrs: nounwind
define weak i32 @halide_error_debug_to_file_failed(ptr %user_context, ptr %func, ptr %filename, i32 %error_code) local_unnamed_addr #0 {
_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit:
  %call.i = tail call ptr @halide_malloc(ptr %user_context, i64 1024) #16 ; 4 uses
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %call.i, i64 1023 ; 7 uses
  store i8 0, ptr %add.ptr.i, align 1, !tbaa !8
  %call.i8 = tail call ptr @halide_string_to_string(ptr %call.i, ptr nonnull %add.ptr.i, ptr nonnull @.str.35.138) #16
  %call.i11 = tail call ptr @halide_string_to_string(ptr %call.i8, ptr nonnull %add.ptr.i, ptr %func) #16
  %call.i14 = tail call ptr @halide_string_to_string(ptr %call.i11, ptr nonnull %add.ptr.i, ptr nonnull @.str.36) #16
  %call.i17 = tail call ptr @halide_string_to_string(ptr %call.i14, ptr nonnull %add.ptr.i, ptr %filename) #16
  %call.i20 = tail call ptr @halide_string_to_string(ptr %call.i17, ptr nonnull %add.ptr.i, ptr nonnull @.str.37.139) #16
  %conv.i = sext i32 %error_code to i64
  %call.i23 = tail call ptr @halide_int64_to_string(ptr %call.i20, ptr nonnull %add.ptr.i, i64 %conv.i, i32 1) #16 ; 0 uses
  tail call void @halide_error(ptr %user_context, ptr %call.i) #16
  tail call void @halide_free(ptr %user_context, ptr %call.i) #16
  ret i32 -13
}

; Function Attrs: nounwind
define weak i32 @halide_error_unaligned_host_ptr(ptr %user_context, ptr %func, i32 %alignment) local_unnamed_addr #0 {
_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit:
  %call.i = tail call ptr @halide_malloc(ptr %user_context, i64 1024) #16 ; 4 uses
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %call.i, i64 1023 ; 6 uses
  store i8 0, ptr %add.ptr.i, align 1, !tbaa !8
  %call.i7 = tail call ptr @halide_string_to_string(ptr %call.i, ptr nonnull %add.ptr.i, ptr nonnull @.str.38) #16
  %call.i10 = tail call ptr @halide_string_to_string(ptr %call.i7, ptr nonnull %add.ptr.i, ptr %func) #16
  %call.i13 = tail call ptr @halide_string_to_string(ptr %call.i10, ptr nonnull %add.ptr.i, ptr nonnull @.str.39.140) #16
  %conv.i = sext i32 %alignment to i64
  %call.i16 = tail call ptr @halide_int64_to_string(ptr %call.i13, ptr nonnull %add.ptr.i, i64 %conv.i, i32 1) #16
  %call.i19 = tail call ptr @halide_string_to_string(ptr %call.i16, ptr nonnull %add.ptr.i, ptr nonnull @.str.40) #16 ; 0 uses
  tail call void @halide_error(ptr %user_context, ptr %call.i) #16
  tail call void @halide_free(ptr %user_context, ptr %call.i) #16
  ret i32 -24
}

; Function Attrs: nounwind
define weak i32 @halide_error_bad_fold(ptr %user_context, ptr %func_name, ptr %var_name, ptr %loop_name) local_unnamed_addr #0 {
_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit:
  %call.i = tail call ptr @halide_malloc(ptr %user_context, i64 1024) #16 ; 4 uses
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %call.i, i64 1023 ; 8 uses
  store i8 0, ptr %add.ptr.i, align 1, !tbaa !8
  %call.i9 = tail call ptr @halide_string_to_string(ptr %call.i, ptr nonnull %add.ptr.i, ptr nonnull @.str.41.141) #16
  %call.i12 = tail call ptr @halide_string_to_string(ptr %call.i9, ptr nonnull %add.ptr.i, ptr %var_name) #16
  %call.i15 = tail call ptr @halide_string_to_string(ptr %call.i12, ptr nonnull %add.ptr.i, ptr nonnull @.str.42) #16
  %call.i18 = tail call ptr @halide_string_to_string(ptr %call.i15, ptr nonnull %add.ptr.i, ptr %func_name) #16
  %call.i21 = tail call ptr @halide_string_to_string(ptr %call.i18, ptr nonnull %add.ptr.i, ptr nonnull @.str.43) #16
  %call.i24 = tail call ptr @halide_string_to_string(ptr %call.i21, ptr nonnull %add.ptr.i, ptr %loop_name) #16
  %call.i27 = tail call ptr @halide_string_to_string(ptr %call.i24, ptr nonnull %add.ptr.i, ptr nonnull @.str.25.130) #16 ; 0 uses
  tail call void @halide_error(ptr %user_context, ptr %call.i) #16
  tail call void @halide_free(ptr %user_context, ptr %call.i) #16
  ret i32 -25
}

; Function Attrs: nounwind
define weak i32 @halide_error_fold_factor_too_small(ptr %user_context, ptr %func_name, ptr %var_name, i32 %fold_factor, ptr %loop_name, i32 %required_extent) local_unnamed_addr #0 {
_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit:
  %call.i = tail call ptr @halide_malloc(ptr %user_context, i64 1024) #16 ; 4 uses
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %call.i, i64 1023 ; 12 uses
  store i8 0, ptr %add.ptr.i, align 1, !tbaa !8
  %call.i13 = tail call ptr @halide_string_to_string(ptr %call.i, ptr nonnull %add.ptr.i, ptr nonnull @.str.44) #16
  %conv.i = sext i32 %fold_factor to i64
  %call.i16 = tail call ptr @halide_int64_to_string(ptr %call.i13, ptr nonnull %add.ptr.i, i64 %conv.i, i32 1) #16
  %call.i19 = tail call ptr @halide_string_to_string(ptr %call.i16, ptr nonnull %add.ptr.i, ptr nonnull @.str.45) #16
  %call.i22 = tail call ptr @halide_string_to_string(ptr %call.i19, ptr nonnull %add.ptr.i, ptr %var_name) #16
  %call.i25 = tail call ptr @halide_string_to_string(ptr %call.i22, ptr nonnull %add.ptr.i, ptr nonnull @.str.42) #16
  %call.i28 = tail call ptr @halide_string_to_string(ptr %call.i25, ptr nonnull %add.ptr.i, ptr %func_name) #16
  %call.i31 = tail call ptr @halide_string_to_string(ptr %call.i28, ptr nonnull %add.ptr.i, ptr nonnull @.str.46) #16
  %call.i34 = tail call ptr @halide_string_to_string(ptr %call.i31, ptr nonnull %add.ptr.i, ptr %loop_name) #16
  %call.i37 = tail call ptr @halide_string_to_string(ptr %call.i34, ptr nonnull %add.ptr.i, ptr nonnull @.str.27.132) #16
  %conv.i40 = sext i32 %required_extent to i64
  %call.i41 = tail call ptr @halide_int64_to_string(ptr %call.i37, ptr nonnull %add.ptr.i, i64 %conv.i40, i32 1) #16
  %call.i44 = tail call ptr @halide_string_to_string(ptr %call.i41, ptr nonnull %add.ptr.i, ptr nonnull @.str.47) #16 ; 0 uses
  tail call void @halide_error(ptr %user_context, ptr %call.i) #16
  tail call void @halide_free(ptr %user_context, ptr %call.i) #16
  ret i32 -26
}

; Function Attrs: nounwind
define weak i32 @halide_default_can_use_target_features(i64 %features) #0 {
entry:
  %ref.tmp = alloca %struct.timespec, align 8     ; 4 uses
  %.b9 = load i1, ptr @_ZZ38halide_default_can_use_target_featuresE11initialized, align 1
  br i1 %.b9, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(ptr nonnull %ref.tmp)
  call void @_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv(ptr nonnull sret(%struct.timespec) %ref.tmp) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZ38halide_default_can_use_target_featuresE12cpu_features, ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %ref.tmp)
  store i1 true, ptr @_ZZ38halide_default_can_use_target_featuresE11initialized, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %i.a = load i64, ptr @_ZZ38halide_default_can_use_target_featuresE12cpu_features, align 8, !tbaa !158
  %and = and i64 %i.a, %features                  ; 3 uses
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %if.end6, label %if.then1

if.then1:                                         ; preds = %if.end
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZ38halide_default_can_use_target_featuresE12cpu_features, i64 8), align 8, !tbaa !160
  %and2 = and i64 %i.b, %and
  %cmp3 = icmp eq i64 %and2, %and
  br i1 %cmp3, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.then1, %if.end
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then1
  %retval.0 = phi i32 [ 1, %if.end6 ], [ 0, %if.then1 ]
  ret i32 %retval.0
}

; Function Attrs: norecurse nounwind
define weak ptr @halide_set_custom_can_use_target_features(ptr %fn) local_unnamed_addr #3 {
entry:
  %i.a = load ptr, ptr @_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE, align 8, !tbaa !4
  store ptr %fn, ptr @_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE, align 8, !tbaa !4
  ret ptr %i.a
}

; Function Attrs: nounwind
define weak i32 @halide_can_use_target_features(i64 %features) local_unnamed_addr #0 {
entry:
  %i.a = load ptr, ptr @_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE, align 8, !tbaa !4
  %call = tail call i32 %i.a(i64 %features) #16
  ret i32 %call
}

; Function Attrs: nounwind
define linkonce void @_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv(ptr noalias sret(%struct.timespec) %agg.result) local_unnamed_addr #0 {
entry:
  %info = alloca [4 x i32], align 4               ; 5 uses
  %info2 = alloca [4 x i32], align 4              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %info)
  store i32 1, ptr %info, align 4, !tbaa !71
  call void asm sideeffect inteldialect "xchg ebx, esi\0A\09mov eax, dword ptr $$0 $0\0A\09mov ecx, 0\0A\09cpuid\0A\09mov dword ptr $$0 $0, eax\0A\09mov dword ptr $$4 $0, ebx\0A\09mov dword ptr $$8 $0, ecx\0A\09mov dword ptr $$12 $0, edx\0A\09xchg ebx, esi", "=*m,~{eax},~{ebx},~{ecx},~{edx},~{esi},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %info) #18
  %arrayidx = getelementptr inbounds nuw i8, ptr %info, i64 8
  %i.a = load i32, ptr %arrayidx, align 4, !tbaa !71 ; 5 uses
  %and = lshr i32 %i.a, 15
  %i.b = and i32 %and, 16
  %and2 = lshr i32 %i.a, 23
  %i.c = and i32 %and2, 32
  %i.d = or disjoint i32 %i.c, %i.b
  %and6 = lshr i32 %i.a, 20
  %i.e = and i32 %and6, 512
  %i.f = or disjoint i32 %i.d, %i.e
  %and14 = lshr i32 %i.a, 5
  %i.g = and i32 %and14, 128
  %i.h = or disjoint i32 %i.f, %i.g               ; 2 uses
  %i.i = and i32 %i.a, 1879048192
  %i.j = icmp eq i32 %i.i, 1879048192
  br i1 %i.j, label %if.then33, label %if.end43

if.then33:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(ptr nonnull %info2)
  store i32 7, ptr %info2, align 4, !tbaa !71
  call void asm sideeffect inteldialect "xchg ebx, esi\0A\09mov eax, dword ptr $$0 $0\0A\09mov ecx, 0\0A\09cpuid\0A\09mov dword ptr $$0 $0, eax\0A\09mov dword ptr $$4 $0, ebx\0A\09mov dword ptr $$8 $0, ecx\0A\09mov dword ptr $$12 $0, edx\0A\09xchg ebx, esi", "=*m,~{eax},~{ebx},~{ecx},~{edx},~{esi},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %info2) #18
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %info2, i64 4
  %i.k = load i32, ptr %arrayidx35, align 4, !tbaa !71
  %and36 = shl i32 %i.k, 1
  %i.l = and i32 %and36, 64
  %i.m = or disjoint i32 %i.l, %i.h
  call void @llvm.lifetime.end.p0(ptr nonnull %info2)
  br label %if.end43

if.end43:                                         ; preds = %if.then33, %entry
  %available.5.in = phi i32 [ %i.m, %if.then33 ], [ %i.h, %entry ]
  %available.5 = zext nneg i32 %available.5.in to i64
  store i64 752, ptr %agg.result, align 8, !tbaa !158
  %available45 = getelementptr inbounds nuw i8, ptr %agg.result, i64 8
  store i64 %available.5, ptr %available45, align 8, !tbaa !160
  call void @llvm.lifetime.end.p0(ptr nonnull %info)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

attributes #0 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold nofree noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nofree "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nofree nounwind memory(read) "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(read) "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nobuiltin }
attributes #18 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}

!0 = !{!"clang version 3.9.0 (trunk 275577) (llvm/trunk 275433)"}
!1 = !{i32 2, !"halide_use_soft_float_abi", i32 0}
!2 = !{i32 2, !"halide_mcpu", !"haswell"}
!3 = !{i32 2, !"halide_mattrs", !"+fma,+f16c"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"bool", !6, i64 0}
!11 = !{i8 0, i8 2}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTS8timespec", !14, i64 0, !14, i64 8}
!14 = !{!"long", !6, i64 0}
!15 = !{!13, !14, i64 8}
!16 = !{!17, !5, i64 0}
!17 = !{!"_ZTSN6Halide7Runtime8Internal14spawned_threadE", !5, i64 0, !5, i64 8, !14, i64 16}
!18 = !{!17, !5, i64 8}
!19 = !{!17, !14, i64 16}
!20 = !{!21, !10, i64 793}
!21 = !{!"_ZTSN6Halide7Runtime8Internal12work_queue_tE", !22, i64 0, !5, i64 64, !23, i64 72, !23, i64 76, !24, i64 80, !24, i64 144, !24, i64 208, !6, i64 272, !23, i64 784, !23, i64 788, !10, i64 792, !10, i64 793}
!22 = !{!"_ZTS12halide_mutex", !6, i64 0}
!23 = !{!"int", !6, i64 0}
!24 = !{!"_ZTS11halide_cond", !6, i64 0}
!25 = !{!21, !10, i64 792}
!26 = !{!21, !5, i64 64}
!27 = !{!21, !23, i64 788}
!28 = !{!21, !23, i64 784}
!29 = !{!21, !23, i64 72}
!30 = !{!31, !5, i64 8}
!31 = !{!"_ZTSN6Halide7Runtime8Internal4workE", !5, i64 0, !5, i64 8, !5, i64 16, !23, i64 24, !23, i64 28, !5, i64 32, !23, i64 40, !23, i64 44}
!32 = !{!31, !5, i64 16}
!33 = !{!31, !23, i64 24}
!34 = !{!31, !23, i64 28}
!35 = !{!31, !5, i64 32}
!36 = !{!31, !23, i64 44}
!37 = !{!31, !23, i64 40}
!38 = !{!21, !23, i64 76}
!39 = !{!31, !5, i64 0}
!40 = !{!41, !10, i64 96}
!41 = !{!"_ZTS21halide_profiler_state", !22, i64 0, !23, i64 64, !23, i64 68, !23, i64 72, !23, i64 76, !5, i64 80, !5, i64 88, !10, i64 96}
!42 = !{!41, !23, i64 72}
!43 = !{!44, !23, i64 80}
!44 = !{!"_ZTS30halide_profiler_pipeline_stats", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !23, i64 72, !23, i64 76, !23, i64 80, !23, i64 84, !23, i64 88}
!45 = !{!"long long", !6, i64 0}
!46 = !{!44, !45, i64 0}
!47 = !{!44, !45, i64 32}
!48 = !{!44, !45, i64 40}
!49 = !{!44, !5, i64 48}
!50 = !{!44, !23, i64 84}
!51 = !{!44, !23, i64 88}
!52 = !{!44, !45, i64 16}
!53 = !{!44, !45, i64 24}
!54 = !{!44, !23, i64 72}
!55 = !{!44, !5, i64 56}
!56 = !{!57, !45, i64 32}
!57 = !{!"_ZTS26halide_profiler_func_stats", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !5, i64 56, !23, i64 64}
!58 = !{!57, !45, i64 0}
!59 = !{!57, !5, i64 56}
!60 = !{!57, !45, i64 40}
!61 = !{!57, !45, i64 48}
!62 = !{!57, !23, i64 64}
!63 = !{!57, !45, i64 24}
!64 = !{!57, !45, i64 16}
!65 = !{!44, !5, i64 64}
!66 = !{!41, !23, i64 68}
!67 = !{!44, !23, i64 76}
!68 = !{!41, !5, i64 80}
!69 = !{!45, !45, i64 0}
!70 = !{!41, !5, i64 88}
!71 = !{!23, !23, i64 0}
!72 = !{!41, !23, i64 64}
!73 = !{!74, !77, i64 18}
!74 = !{!"_ZTS18halide_trace_event", !5, i64 0, !75, i64 8, !23, i64 12, !76, i64 16, !23, i64 20, !5, i64 24, !23, i64 32, !5, i64 36}
!75 = !{!"_ZTS23halide_trace_event_code", !6, i64 0}
!76 = !{!"_ZTS13halide_type_t", !6, i64 0, !6, i64 1, !77, i64 2}
!77 = !{!"short", !6, i64 0}
!78 = !{!74, !23, i64 32}
!79 = !{!74, !6, i64 17}
!80 = !{!74, !23, i64 12}
!81 = !{!74, !75, i64 8}
!82 = !{!74, !6, i64 16}
!83 = !{!74, !23, i64 20}
!84 = !{!74, !5, i64 0}
!85 = !{!74, !5, i64 24}
!86 = !{!87}
!87 = distinct !{!87, !88}
!88 = distinct !{!88, !"LVerDomain"}
!89 = !{!90}
!90 = distinct !{!90, !88}
!91 = distinct !{!91, !92, !93}
!92 = !{!"llvm.loop.vectorize.width", i32 1}
!93 = !{!"llvm.loop.interleave.count", i32 1}
!94 = !{!74, !5, i64 36}
!95 = !{!96}
!96 = distinct !{!96, !97}
!97 = distinct !{!97, !"LVerDomain"}
!98 = !{!99}
!99 = distinct !{!99, !97}
!100 = distinct !{!100, !92, !93}
!101 = distinct !{!101, !92, !93}
!102 = distinct !{!102, !92, !93}
!103 = distinct !{!103, !104}
!104 = !{!"llvm.loop.peeled.count", i32 1}
!105 = !{!106, !106, i64 0}
!106 = !{!"double", !6, i64 0}
!107 = !{!77, !77, i64 0}
!108 = !{!109, !109, i64 0}
!109 = !{!"float", !6, i64 0}
!110 = distinct !{!110, !104}
!111 = !{!112, !5, i64 8}
!112 = !{!"_ZTS8buffer_t", !45, i64 0, !5, i64 8, !6, i64 16, !6, i64 32, !6, i64 48, !23, i64 64, !10, i64 68, !10, i64 69, !6, i64 70}
!113 = !{!112, !23, i64 64}
!114 = !{!115, !77, i64 0}
!115 = !{!"_ZTSN6Halide7Runtime8Internal18halide_tiff_headerE", !77, i64 0, !77, i64 2, !23, i64 4, !77, i64 8, !6, i64 10, !23, i64 190, !6, i64 194, !6, i64 202}
!116 = !{!115, !77, i64 2}
!117 = !{!115, !23, i64 4}
!118 = !{!115, !77, i64 8}
!119 = !{!120, !77, i64 0}
!120 = !{!"_ZTSN6Halide7Runtime8Internal8tiff_tagE", !77, i64 0, !77, i64 2, !23, i64 4, !6, i64 8}
!121 = !{!120, !77, i64 2}
!122 = !{!120, !23, i64 4}
!123 = !{!124, !5, i64 0}
!124 = !{!"_ZTSN6Halide7Runtime8Internal10CacheEntryE", !5, i64 0, !5, i64 8, !5, i64 16, !14, i64 24, !5, i64 32, !23, i64 40, !23, i64 44, !23, i64 48, !112, i64 56, !6, i64 128}
!125 = !{!124, !5, i64 32}
!126 = !{!124, !23, i64 48}
!127 = !{!124, !14, i64 24}
!128 = !{!124, !23, i64 40}
!129 = !{!124, !23, i64 44}
!130 = !{!124, !5, i64 8}
!131 = !{!124, !5, i64 16}
!132 = !{!133, !23, i64 8}
!133 = !{!"_ZTSN6Halide7Runtime8Internal16CacheBlockHeaderE", !5, i64 0, !23, i64 8}
!134 = !{!133, !5, i64 0}
!135 = !{!136, !45, i64 0}
!136 = !{!"_ZTSN6Halide7Runtime8Internal21device_handle_wrapperE", !45, i64 0, !5, i64 8}
!137 = !{!112, !10, i64 69}
!138 = !{!112, !45, i64 0}
!139 = !{!112, !10, i64 68}
!140 = !{!141, !5, i64 48}
!141 = !{!"_ZTS23halide_device_interface", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72}
!142 = !{!136, !5, i64 8}
!143 = !{!141, !5, i64 0}
!144 = !{!141, !5, i64 8}
!145 = !{!141, !5, i64 40}
!146 = !{!141, !5, i64 56}
!147 = !{!141, !5, i64 24}
!148 = !{!141, !5, i64 16}
!149 = !{!141, !5, i64 32}
!150 = !{!141, !5, i64 64}
!151 = !{!141, !5, i64 72}
!152 = !{!153, !5, i64 64}
!153 = !{!"_ZTSN6Halide7Runtime8Internal11list_head_tE", !22, i64 0, !5, i64 64}
!154 = !{!155, !5, i64 0}
!155 = !{!"_ZTS44_halide_runtime_internal_registered_filter_t", !5, i64 0, !5, i64 8, !5, i64 16}
!156 = !{!155, !5, i64 8}
!157 = !{!155, !5, i64 16}
!158 = !{!159, !45, i64 0}
!159 = !{!"_ZTSN6Halide7Runtime8Internal11CpuFeaturesE", !45, i64 0, !45, i64 8}
!160 = !{!159, !45, i64 8}
end_hunk_1

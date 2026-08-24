Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/timer_list?download=true
inline.NumInlined: 31
inline.NumDeleted: 13
begin_hunk_0_@print_tickdevice:bb.a

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.ah = phi ptr [ %i.ag, %bb.q ], [ @.str.58, %bb.p ]
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.57, ptr noundef %i.ah) #9, !srcloc !77
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.r, %bb.d
  %.str.3.sink = phi ptr [ @.str.41, %bb.d ], [ @.str.3, %bb.r ], [ @.str.3, %bb.o ]
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull %.str.3.sink) #9
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @tick_get_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal range(i32 -12, 1) i32 @init_timer_list_procfs() #3 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.59, i16 noundef zeroext 256, ptr noundef null, ptr noundef nonnull @timer_list_sops, i32 noundef 16, ptr noundef null) #8
  %.not = icmp eq ptr %i.a, null
  %. = select i1 %.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @SEQ_printf(ptr noundef %0, ptr noundef %1, ...) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false), !annotation !78
  call void @llvm.va_start.p0(ptr nonnull %2)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @seq_vprintf(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.a = call i32 @vprintk(ptr noundef %1, ptr noundef nonnull %2) #8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @seq_vprintf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @vprintk(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @tick_get_tick_sched(i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @tick_get_broadcast_device() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @tick_get_broadcast_mask() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @tick_get_broadcast_oneshot_mask() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @tick_get_wakeup_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @timer_list_start(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.c = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @ktime_get() #8
  %i.e = getelementptr i8, ptr %i.b, i64 8
  store i64 %i.d, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i32 -1, ptr %i.b, align 8
  %i.f = getelementptr i8, ptr %i.b, i64 4        ; 2 uses
  store i8 0, ptr %i.f, align 4
  %i.g = load i64, ptr %1, align 8                ; 2 uses
  %.not11.i = icmp eq i64 %i.g, 0
  br i1 %.not11.i, label %move_iter.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.h
  %i.h = phi i8 [ %i.t, %bb.h ], [ 0, %bb.c ]     ; 2 uses
  %i.i = phi i32 [ %i.u, %bb.h ], [ -1, %bb.c ]
  %.012.i = phi i64 [ %i.v, %bb.h ], [ %i.g, %bb.c ]
  %i.j = add i32 %i.i, 1                          ; 2 uses
  %i.k = icmp ugt i32 %i.j, 63
  br i1 %i.k, label %cpumask_next.exit.i, label %bb.d, !prof !79

bb.d:                                             ; preds = %.lr.ph.i
  %i.l = load i64, ptr @__cpu_online_mask, align 8
  %i.m = zext nneg i32 %i.j to i64
  %i.n = shl nsw i64 -1, %i.m
  %i.o = and i64 %i.l, %i.n                       ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i, label %cpumask_next.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.o) #10, !srcloc !14
  %i.q = trunc i64 %i.p to i32
  br label %cpumask_next.exit.i

cpumask_next.exit.i:                              ; preds = %bb.e, %bb.d, %.lr.ph.i
  %.0.i.i.i = phi i32 [ 64, %.lr.ph.i ], [ %i.q, %bb.e ], [ 64, %bb.d ] ; 3 uses
  store i32 %.0.i.i.i, ptr %i.b, align 8
  %i.r = load i32, ptr @nr_cpu_ids, align 4
  %.not10.i = icmp ugt i32 %i.r, %.0.i.i.i
  br i1 %.not10.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %cpumask_next.exit.i
  %i.s = trunc nuw i8 %i.h to i1
  br i1 %i.s, label %move_iter.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 -1, ptr %i.b, align 8
  store i8 1, ptr %i.f, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %cpumask_next.exit.i
  %i.t = phi i8 [ %i.h, %cpumask_next.exit.i ], [ 1, %bb.g ]
  %i.u = phi i32 [ %.0.i.i.i, %cpumask_next.exit.i ], [ -1, %bb.g ]
  %i.v = add i64 %.012.i, -1                      ; 2 uses
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %move_iter.exit, label %.lr.ph.i, !llvm.loop !80

move_iter.exit:                                   ; preds = %bb.f, %bb.h, %bb.c
  %.09.i = phi ptr [ %i.b, %bb.c ], [ null, %bb.f ], [ %i.b, %bb.h ]
  ret ptr %.09.i
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal void @timer_list_stop(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #6 align 16 prefalign(16) {
bb.a:
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal noundef ptr @timer_list_next(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef captures(none) %2) #7 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = load i64, ptr %2, align 8
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr %2, align 8
  %i.e = getelementptr i8, ptr %i.b, i64 4        ; 2 uses
  %.pre.i = load i32, ptr %i.b, align 8
  %i.f = add i32 %.pre.i, 1                       ; 2 uses
  %i.g = icmp ugt i32 %i.f, 63
  br i1 %i.g, label %cpumask_next.exit.i, label %bb.b, !prof !79

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr @__cpu_online_mask, align 8
  %i.i = zext nneg i32 %i.f to i64
  %i.j = shl nsw i64 -1, %i.i
  %i.k = and i64 %i.h, %i.j                       ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i, label %cpumask_next.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.k) #10, !srcloc !14
  %i.m = trunc i64 %i.l to i32
  br label %cpumask_next.exit.i

cpumask_next.exit.i:                              ; preds = %bb.c, %bb.b, %bb.a
  %.0.i.i.i = phi i32 [ 64, %bb.a ], [ %i.m, %bb.c ], [ 64, %bb.b ] ; 2 uses
  store i32 %.0.i.i.i, ptr %i.b, align 8
  %i.n = load i32, ptr @nr_cpu_ids, align 4
  %.not10.i = icmp ugt i32 %i.n, %.0.i.i.i
  br i1 %.not10.i, label %move_iter.exit, label %bb.d, !llvm.loop !80

bb.d:                                             ; preds = %cpumask_next.exit.i
  %i.o = load i8, ptr %i.e, align 4, !range !37, !noundef !38
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %move_iter.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 -1, ptr %i.b, align 8
  store i8 1, ptr %i.e, align 4
  br label %move_iter.exit, !llvm.loop !80

move_iter.exit:                                   ; preds = %cpumask_next.exit.i, %bb.e, %bb.d
  %.09.i = phi ptr [ null, %bb.d ], [ %i.b, %bb.e ], [ %i.b, %cpumask_next.exit.i ]
  ret ptr %.09.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @timer_list_show(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 3 uses
  %i.b = icmp eq i32 %i.a, -1
  %i.c = getelementptr i8, ptr %1, i64 4
  %i.d = load i8, ptr %i.c, align 4, !range !37, !noundef !38
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str) #9, !srcloc !10
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef 8) #9, !srcloc !11
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %i.g) #9, !srcloc !12
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.3) #9, !srcloc !13
  br label %bb.g

.thread:                                          ; preds = %bb.a
  br i1 %i.e, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.h = getelementptr i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8
  tail call fastcc void @print_cpu(ptr noundef %0, i32 noundef %i.a, i64 noundef %i.i) #9, !srcloc !81
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.j = tail call ptr @tick_get_broadcast_device() #8 ; 2 uses
  %.val.i = load ptr, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val4.i = load i32, ptr %i.k, align 8
  tail call fastcc void @print_tickdevice(ptr noundef %0, ptr %.val.i, i32 %.val4.i, i32 noundef -1) #9
  %i.l = load i32, ptr @nr_cpu_ids, align 4
  %i.m = tail call ptr @tick_get_broadcast_mask() #8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.35, i32 noundef %i.l, ptr noundef %i.m) #9, !srcloc !19
  %i.n = load i32, ptr @nr_cpu_ids, align 4
  %i.o = tail call ptr @tick_get_broadcast_oneshot_mask() #8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %i.n, ptr noundef %i.o) #9, !srcloc !20
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.3) #9, !srcloc !21
  br label %bb.g

bb.f:                                             ; preds = %.thread
  %i.p = tail call ptr @tick_get_device(i32 noundef %i.a) #8 ; 2 uses
  %i.q = load i32, ptr %1, align 8
  %.val = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.p, i64 8
  %.val15 = load i32, ptr %i.r, align 8
  tail call fastcc void @print_tickdevice(ptr noundef %0, ptr %.val, i32 %.val15, i32 noundef %i.q) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.c
  ret i32 0
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #8 = { noredzone nounwind "no-builtin-wcslen" }
attributes #9 = { noredzone "no-builtin-wcslen" }
attributes #10 = { nounwind memory(none) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{i64 6462}
!11 = !{i64 6509}
!12 = !{i64 6583}
!13 = !{i64 6646}
!14 = !{i64 1065096}
!15 = !{i64 6813}
!16 = !{!"branch_weights", i32 1, i32 1999}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{i64 6113}
!20 = !{i64 6236}
!21 = !{i64 6355}
!22 = distinct !{!22, !18}
!23 = !{i64 2753}
!24 = !{i64 2837}
!25 = !{i64 2233}
!26 = !{i64 2278}
!27 = !{i64 2331}
!28 = !{i64 2426}
!29 = !{i64 2510}
!30 = distinct !{!30, !18}
!31 = !{i64 844}
!32 = !{i64 924}
!33 = !{i64 970}
!34 = !{i64 992}
!35 = distinct !{!35, !18}
!36 = !{i64 2156143581}
!37 = !{i8 0, i8 2}
!38 = !{}
!39 = !{i64 2156143707}
!40 = !{i64 2156143812}
!41 = !{i64 2156143913}
!42 = !{i64 2156144016}
!43 = !{i64 2156144115}
!44 = !{i64 2156144224}
!45 = !{i64 2156144398}
!46 = !{i64 2156144575}
!47 = !{i64 2156144689}
!48 = !{i64 2156144871}
!49 = !{i64 2156144968}
!50 = !{i64 2156145067}
!51 = !{i64 2156145191}
!52 = !{i64 2156145313}
!53 = !{i64 2156145414}
!54 = !{i64 2156145511}
!55 = !{i64 3937}
!56 = !{i64 4038}
!57 = !{i64 4252}
!58 = !{i64 4324}
!59 = !{i64 4369}
!60 = !{i64 4415}
!61 = !{i64 4510}
!62 = !{i64 4545}
!63 = !{i64 4633}
!64 = !{i64 4721}
!65 = !{i64 4773}
!66 = !{i64 4826}
!67 = !{i64 4894}
!68 = !{i64 4999}
!69 = !{i64 5094}
!70 = !{i64 5196}
!71 = !{i64 5297}
!72 = !{i64 5405}
!73 = !{i64 5508}
!74 = !{i64 5572}
!75 = !{i64 5634}
!76 = !{i64 5656}
!77 = !{i64 5845}
!78 = !{!"auto-init"}
!79 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!80 = distinct !{!80, !18}
!81 = !{i64 7243}
end_hunk_0

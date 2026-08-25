Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/bug?download=true
inline.NumInlined: 20
inline.NumDeleted: 14
begin_hunk_0_@__report_bug:bb.a
  %i.o = ptrtoint ptr %.01728.i.i to i64
  %i.p = load i32, ptr %.01728.i.i, align 4
  %i.q = sext i32 %i.p to i64
  %i.r = add i64 %i.q, %i.o
  %i.s = icmp eq i64 %1, %i.r
  br i1 %i.s, label %module_find_bug.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.t = add nuw i32 %.02027.i.i, 1               ; 2 uses
  %i.u = getelementptr i8, ptr %.01728.i.i, i64 16
  %exitcond.not.i.i = icmp eq i32 %i.t, %i.l
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !15

._crit_edge.i.i:                                  ; preds = %bb.e, %.lr.ph32.i.i
  %i.v = load volatile ptr, ptr %.pn30.i.i, align 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, @module_bug_list
  br i1 %.not.i.i, label %module_find_bug.exit.i, label %.lr.ph32.i.i, !llvm.loop !16

module_find_bug.exit.i:                           ; preds = %._crit_edge.i.i, %.lr.ph.i.i, %._crit_edge.i
  %.2.i.i = phi ptr [ null, %._crit_edge.i ], [ %.01728.i.i, %.lr.ph.i.i ], [ null, %._crit_edge.i.i ]
  tail call void @__rcu_read_unlock() #11
  br label %find_bug.exit

find_bug.exit:                                    ; preds = %.lr.ph.i, %module_find_bug.exit.i
  %.06.i = phi ptr [ %.2.i.i, %module_find_bug.exit.i ], [ %.010.i, %.lr.ph.i ] ; 2 uses
  %.not31 = icmp eq ptr %.06.i, null
  br i1 %.not31, label %bb.t, label %bb.f

bb.f:                                             ; preds = %find_bug.exit, %bb.a
  %.026 = phi ptr [ %0, %bb.a ], [ %.06.i, %find_bug.exit ] ; 4 uses
  %i.w = getelementptr i8, ptr %.026, i64 8       ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr i8, ptr %i.w, i64 %i.y     ; 3 uses
  %i.aa = getelementptr i8, ptr %.026, i64 12
  %i.ab = load i16, ptr %i.aa, align 4
  %i.ac = zext i16 %i.ab to i32                   ; 2 uses
  %i.ad = getelementptr i8, ptr %.026, i64 4      ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4            ; 2 uses
  %.not.i = icmp eq i32 %i.ae, 0
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr i8, ptr %i.ad, i64 %i.af  ; 3 uses
  %.not78.i = icmp eq ptr %i.ag, null
  %.not7.i = or i1 %.not.i, %.not78.i
  br i1 %.not7.i, label %bug_get_format.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = icmp eq i8 %i.ah, 0
  %spec.store.select.i = select i1 %i.ai, ptr null, ptr %i.ag
  br label %bug_get_format.exit

bug_get_format.exit:                              ; preds = %bb.f, %bb.g
  %.1.i = phi ptr [ %spec.store.select.i, %bb.g ], [ null, %bb.f ] ; 3 uses
  %i.aj = getelementptr i8, ptr %.026, i64 14     ; 4 uses
  %i.ak = load i16, ptr %i.aj, align 2            ; 2 uses
  %i.al = zext i16 %i.ak to i32                   ; 4 uses
  %i.am = trunc i16 %i.ak to i1                   ; 2 uses
  %i.an = and i32 %i.al, 2
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = and i32 %i.al, 8
  %.not33 = icmp eq i32 %i.ap, 0
  %i.aq = and i32 %i.al, 16
  %.not34 = icmp eq i32 %i.aq, 0
  tail call void @disable_trace_on_warning() #11
  %or.cond = and i1 %i.ao, %i.am
  br i1 %or.cond, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bug_get_format.exit
  %i.ar = and i32 %i.al, 4
  %.not32 = icmp eq i32 %i.ar, 0
  br i1 %.not32, label %bb.i, label %bb.t

bb.i:                                             ; preds = %bb.h
  %i.as = load i16, ptr %i.aj, align 2
  %i.at = or i16 %i.as, 4
  store i16 %i.at, ptr %i.aj, align 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bug_get_format.exit
  br i1 %.not33, label %bb.k, label %__warn_printf.exit

bb.k:                                             ; preds = %bb.j
  %i.au = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #15 ; 0 uses
  %.not.i36 = icmp eq ptr %.1.i, null
  br i1 %.not.i36, label %__warn_printf.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not10.i39 = icmp eq ptr %2, null
  %.not10.i = or i1 %.not10.i39, %.not34
  br i1 %.not10.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, i8 0, i64 72, i1 false), !annotation !27
  %i.av = call ptr @__warn_args(ptr noundef nonnull %3, ptr noundef nonnull %2) #11 ; 2 uses
  %.not11.not.i = icmp eq ptr %i.av, null
  br i1 %.not11.not.i, label %.thread.i, label %bb.n

.thread.i:                                        ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aw = call i32 @vprintk(ptr noundef nonnull %.1.i, ptr noundef nonnull %i.av) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %__warn_printf.exit

bb.o:                                             ; preds = %.thread.i, %bb.l
  %i.ax = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %.1.i) #15 ; 0 uses
  br label %__warn_printf.exit

__warn_printf.exit:                               ; preds = %bb.o, %bb.n, %bb.k, %bb.j
  br i1 %i.am, label %bb.p, label %bb.q

bb.p:                                             ; preds = %__warn_printf.exit
  %i.ay = inttoptr i64 %1 to ptr
  %i.az = load i16, ptr %i.aj, align 2
  %i.ba = lshr i16 %i.az, 8
  %i.bb = zext nneg i16 %i.ba to i32
  call void @__warn(ptr noundef %i.z, i32 noundef %i.ac, ptr noundef %i.ay, i32 noundef %i.bb, ptr noundef %2, ptr noundef null) #11
  br label %bb.t

bb.q:                                             ; preds = %__warn_printf.exit
  %.not35 = icmp eq ptr %i.z, null
  br i1 %.not35, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.z, i32 noundef %i.ac) #15 ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bd = inttoptr i64 %1 to ptr
  %i.be = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %i.bd) #15 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.h, %find_bug.exit, %bb.b, %bb.p
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %find_bug.exit ], [ 1, %bb.p ], [ 1, %bb.h ], [ 2, %bb.s ], [ 2, %bb.r ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 3) i32 @report_bug(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #12, !srcloc !17
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.a = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @this_cpu_off) #13, !srcloc !19
  %i.b = add i64 %i.a, ptrtoint (ptr @context_tracking to i64)
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load volatile i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %warn_rcu_enter.exit

warn_rcu_enter.exit:                              ; preds = %bb.a
  %i.f = tail call fastcc i32 @__report_bug(ptr noundef null, i64 noundef %0, ptr noundef %1) #14, !srcloc !28
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @this_cpu_off) #13, !srcloc !21
  %i.h = add i64 %i.g, ptrtoint (ptr @context_tracking to i64)
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.i, i32 4, ptr elementtype(i32) %i.i) #12, !srcloc !22 ; 0 uses
  %i.k = tail call fastcc i32 @__report_bug(ptr noundef null, i64 noundef %0, ptr noundef %1) #14, !srcloc !28
  %i.l = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @this_cpu_off) #13, !srcloc !21
  %i.m = add i64 %i.l, ptrtoint (ptr @context_tracking to i64)
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.n, i32 4, ptr elementtype(i32) %i.n) #12, !srcloc !22 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %warn_rcu_enter.exit, %bb.b
  %i.p = phi i32 [ %i.k, %bb.b ], [ %i.f, %warn_rcu_enter.exit ]
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !23
  %i.q = tail call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #12, !srcloc !24 ; 2 uses
  %i.r = icmp ult i8 %i.q, 2
  tail call void @llvm.assume(i1 %i.r)
  %i.s = trunc nuw i8 %i.q to i1
  br i1 %i.s, label %bb.d, label %warn_rcu_exit.exit, !prof !25

bb.d:                                             ; preds = %bb.c
  %i.t = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.u = tail call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.t) #12, !srcloc !26
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.u)
  br label %warn_rcu_exit.exit

warn_rcu_exit.exit:                               ; preds = %bb.c, %bb.d
  ret i32 %i.p
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @generic_bug_clear_once() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @__rcu_read_lock() #11
  %i.a = load volatile ptr, ptr @module_bug_list, align 8 ; 2 uses
  %.not15 = icmp eq ptr %i.a, @module_bug_list
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %clear_once_table.exit
  %.pn16 = phi ptr [ %i.n, %clear_once_table.exit ], [ %i.a, %bb.a ] ; 3 uses
  %i.b = getelementptr i8, ptr %.pn16, i64 16
  %i.c = load ptr, ptr %i.b, align 64             ; 3 uses
  %i.d = getelementptr i8, ptr %.pn16, i64 -8
  %i.e = load i32, ptr %i.d, align 8
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr [16 x i8], ptr %i.c, i64 %i.f ; 2 uses
  %i.h = icmp ult ptr %i.c, %i.g
  br i1 %i.h, label %.lr.ph.i, label %clear_once_table.exit

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph.i
  %.05.i = phi ptr [ %i.l, %.lr.ph.i ], [ %i.c, %.lr.ph ] ; 2 uses
  %i.i = getelementptr i8, ptr %.05.i, i64 14     ; 2 uses
  %i.j = load i16, ptr %i.i, align 2
  %i.k = and i16 %i.j, -5
  store i16 %i.k, ptr %i.i, align 2
  %i.l = getelementptr i8, ptr %.05.i, i64 16     ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.g
  br i1 %i.m, label %.lr.ph.i, label %clear_once_table.exit, !llvm.loop !29

clear_once_table.exit:                            ; preds = %.lr.ph.i, %.lr.ph
  %i.n = load volatile ptr, ptr %.pn16, align 16  ; 2 uses
  %.not = icmp eq ptr %i.n, @module_bug_list
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !30

._crit_edge:                                      ; preds = %clear_once_table.exit, %bb.a
  tail call void @__rcu_read_unlock() #11
  %i.o = icmp ult ptr @__start___bug_table, @__stop___bug_table
  br i1 %i.o, label %.lr.ph.i12, label %clear_once_table.exit14

.lr.ph.i12:                                       ; preds = %._crit_edge, %.lr.ph.i12
  %.05.i13 = phi ptr [ %i.s, %.lr.ph.i12 ], [ @__start___bug_table, %._crit_edge ] ; 2 uses
  %i.p = getelementptr i8, ptr %.05.i13, i64 14   ; 2 uses
  %i.q = load i16, ptr %i.p, align 2
  %i.r = and i16 %i.q, -5
  store i16 %i.r, ptr %i.p, align 2
  %i.s = getelementptr i8, ptr %.05.i13, i64 16   ; 2 uses
  %i.t = icmp ult ptr %i.s, @__stop___bug_table
  br i1 %i.t, label %.lr.ph.i12, label %clear_once_table.exit14, !llvm.loop !29

clear_once_table.exit14:                          ; preds = %.lr.ph.i12, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @is_valid_bugaddr(i64 noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @disable_trace_on_warning() local_unnamed_addr #6

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__warn(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__warn_args(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @vprintk(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_lock() local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_unlock() local_unnamed_addr #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #9 = { nocallback nounwind }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { noredzone nounwind "no-builtin-wcslen" }
attributes #12 = { nounwind }
attributes #13 = { nounwind memory(read) }
attributes #14 = { noredzone "no-builtin-wcslen" }
attributes #15 = { cold noredzone nounwind "no-builtin-wcslen" }

!llvm.named.register.rsp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{!"rsp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 8, !"cf-protection-branch", i32 1}
!3 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5 = !{i32 1, !"Code Model", i32 2}
!6 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!7 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!8 = !{i32 1, !"override-stack-alignment", i32 8}
!9 = !{i32 4, !"SkipRaxSetup", i32 1}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{i64 2153035762}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = !{i64 2149923960}
!18 = !{i64 2156041194}
!19 = !{i64 2156037728}
!20 = !{i64 7017}
!21 = !{i64 2156040489}
!22 = !{i64 2148946578, i64 2148946617, i64 2148946638, i64 2148946675, i64 2148946698, i64 2148946707}
!23 = !{i64 2156043785}
!24 = !{i64 2149930141}
!25 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!26 = !{i64 2156043944}
!27 = !{!"auto-init"}
!28 = !{i64 7241}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !12}
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/itimer?download=true
inline.NumInlined: 57
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@do_getitimer:bb.a
  %i.ae = load i64, ptr %i.ad, align 8
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %get_cpu_itimer.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, i8 0, i64 24, i1 false), !annotation !10
  call void @thread_group_sample_cputime(ptr noundef %i.d, ptr noundef nonnull %i.b) #8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = icmp ult i64 %i.ac, %i.ag
  %i.ai = sub nuw i64 %i.ac, %i.ag
  %.0.i13 = select i1 %i.ah, i64 1000000, i64 %i.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %get_cpu_itimer.exit

get_cpu_itimer.exit:                              ; preds = %bb.c, %bb.d
  %.1.i = phi i64 [ %.0.i13, %bb.d ], [ 0, %bb.c ]
  %i.aj = load ptr, ptr %i.aa, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %i.aj) #8
  %i.ak = getelementptr i8, ptr %1, i64 16
  %i.al = call { i64, i64 } @ns_to_timespec64(i64 noundef %.1.i) #8 ; 2 uses
  %i.am = extractvalue { i64, i64 } %i.al, 0
  %i.an = extractvalue { i64, i64 } %i.al, 1
  store i64 %i.am, ptr %i.ak, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr i8, ptr %1, i64 24
  store i64 %i.an, ptr %.sroa.42.0..sroa_idx.i, align 8
  %i.ao = call { i64, i64 } @ns_to_timespec64(i64 noundef %i.ae) #8 ; 2 uses
  %i.ap = extractvalue { i64, i64 } %i.ao, 0
  %i.aq = extractvalue { i64, i64 } %i.ao, 1
  store i64 %i.ap, ptr %1, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.aq, ptr %.sroa.4.0..sroa_idx.i, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.ar = getelementptr i8, ptr %i.d, i64 2096
  %i.as = load ptr, ptr %i.ar, align 16           ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 240
  %i.au = getelementptr i8, ptr %i.d, i64 2104    ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef %i.av) #8
  %i.aw = load i64, ptr %i.at, align 8            ; 3 uses
  %i.ax = getelementptr i8, ptr %i.as, i64 248
  %i.ay = load i64, ptr %i.ax, align 8
  %.not.i14 = icmp eq i64 %i.aw, 0
  br i1 %.not.i14, label %get_cpu_itimer.exit19, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false), !annotation !10
  call void @thread_group_sample_cputime(ptr noundef %i.d, ptr noundef nonnull %i.a) #8
  %i.az = load i64, ptr %i.a, align 16            ; 2 uses
  %i.ba = icmp ult i64 %i.aw, %i.az
  %i.bb = sub nuw i64 %i.aw, %i.az
  %.0.i15 = select i1 %i.ba, i64 1000000, i64 %i.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %get_cpu_itimer.exit19

get_cpu_itimer.exit19:                            ; preds = %bb.e, %bb.f
  %.1.i16 = phi i64 [ %.0.i15, %bb.f ], [ 0, %bb.e ]
  %i.bc = load ptr, ptr %i.au, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %i.bc) #8
  %i.bd = getelementptr i8, ptr %1, i64 16
  %i.be = call { i64, i64 } @ns_to_timespec64(i64 noundef %.1.i16) #8 ; 2 uses
  %i.bf = extractvalue { i64, i64 } %i.be, 0
  %i.bg = extractvalue { i64, i64 } %i.be, 1
  store i64 %i.bf, ptr %i.bd, align 8
  %.sroa.42.0..sroa_idx.i17 = getelementptr i8, ptr %1, i64 24
  store i64 %i.bg, ptr %.sroa.42.0..sroa_idx.i17, align 8
  %i.bh = call { i64, i64 } @ns_to_timespec64(i64 noundef %i.ay) #8 ; 2 uses
  %i.bi = extractvalue { i64, i64 } %i.bh, 0
  %i.bj = extractvalue { i64, i64 } %i.bh, 1
  store i64 %i.bi, ptr %1, align 8
  %.sroa.4.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.bj, ptr %.sroa.4.0..sroa_idx.i18, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %get_cpu_itimer.exit, %get_cpu_itimer.exit19, %bb.a
  %.0 = phi i32 [ -22, %bb.a ], [ 0, %get_cpu_itimer.exit19 ], [ 0, %get_cpu_itimer.exit ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local { i64, i64 } @ns_to_timespec64(i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @__hrtimer_get_remaining(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @hrtimer_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @thread_group_sample_cputime(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @hrtimer_cb_get_time(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_itimer_expire(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @hrtimer_try_to_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @set_cpu_itimer(ptr noundef %0, i32 noundef range(i32 0, 2) %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.c = getelementptr i8, ptr %0, i64 2096
  %i.d = load ptr, ptr %i.c, align 16
  %i.e = getelementptr i8, ptr %i.d, i64 240
  %i.f = zext nneg i32 %1 to i64
  %i.g = getelementptr [16 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %i.h = getelementptr i8, ptr %2, i64 16
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp sgt i64 %i.i, 9223372035
  br i1 %i.j, label %timespec64_to_ns.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp slt i64 %i.i, -9223372035
  br i1 %i.k, label %timespec64_to_ns.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = mul nsw i64 %i.i, 1000000000
  %i.m = getelementptr i8, ptr %2, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = add i64 %i.n, %i.l
  br label %timespec64_to_ns.exit

timespec64_to_ns.exit:                            ; preds = %bb.a, %bb.b, %bb.c
  %i.p = phi i64 [ %i.o, %bb.c ], [ 9223372036854775807, %bb.a ], [ -9223372036854775808, %bb.b ] ; 4 uses
  store i64 %i.p, ptr %i.b, align 8
  %i.q = load i64, ptr %2, align 8                ; 3 uses
  %i.r = icmp sgt i64 %i.q, 9223372035
  br i1 %i.r, label %timespec64_to_ns.exit25, label %bb.d

bb.d:                                             ; preds = %timespec64_to_ns.exit
  %i.s = icmp slt i64 %i.q, -9223372035
  br i1 %i.s, label %timespec64_to_ns.exit25, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = mul nsw i64 %i.q, 1000000000
  %i.u = getelementptr i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = add i64 %i.v, %i.t
  br label %timespec64_to_ns.exit25

timespec64_to_ns.exit25:                          ; preds = %timespec64_to_ns.exit, %bb.d, %bb.e
  %.0.i24 = phi i64 [ %i.w, %bb.e ], [ 9223372036854775807, %timespec64_to_ns.exit ], [ -9223372036854775808, %bb.d ]
  %i.x = getelementptr i8, ptr %0, i64 2104       ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef %i.y) #8
  %i.z = load i64, ptr %i.g, align 8              ; 2 uses
  store i64 %i.z, ptr %i.a, align 8
  %i.aa = getelementptr i8, ptr %i.g, i64 8       ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = icmp ne i64 %i.z, 0
  %i.ad = icmp ne i64 %i.p, 0
  %or.cond = select i1 %i.ac, i1 true, i1 %i.ad
  br i1 %or.cond, label %bb.f, label %bb.i

bb.f:                                             ; preds = %timespec64_to_ns.exit25
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = add i64 %i.p, 1000000
  store i64 %i.ae, ptr %i.b, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @set_process_cpu_timer(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #8
  %.pre = load i64, ptr %i.b, align 8
  br label %bb.i

bb.i:                                             ; preds = %timespec64_to_ns.exit25, %bb.h
  %i.af = phi i64 [ 0, %timespec64_to_ns.exit25 ], [ %.pre, %bb.h ] ; 2 uses
  store i64 %i.af, ptr %i.g, align 8
  store i64 %.0.i24, ptr %i.aa, align 8
  %.not22 = icmp eq i32 %1, 0
  %4 = select i1 %.not22, i32 2, i32 1
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_itimer_state, i64 8), i1 false) #6
          to label %trace_itimer_state.exit [label %arch_test_bit.exit.i.i], !srcloc !15

arch_test_bit.exit.i.i:                           ; preds = %bb.i
  %i.ag = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #6, !srcloc !26
  %i.ah = zext i32 %i.ag to i64
  %i.ai = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ah) #6, !srcloc !17 ; 2 uses
  %i.aj = icmp ult i8 %i.ai, 2
  call void @llvm.assume(i1 %i.aj)
  %i.ak = trunc nuw i8 %i.ai to i1
  br i1 %i.ak, label %bb.j, label %trace_itimer_state.exit

bb.j:                                             ; preds = %arch_test_bit.exit.i.i
  %i.al = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.al, ptr elementtype(i64) %i.al) #6, !srcloc !18
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !19
  %i.am = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_itimer_state, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call i32 @__SCT__tp_func_itimer_state(ptr noundef %i.ao, i32 noundef range(i32 0, 3) %4, ptr noundef %2, i64 noundef %i.af) #8 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !20
  %i.aq = getelementptr i8, ptr %i.al, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.aq, ptr elementtype(i64) %i.aq) #6, !srcloc !21
  br label %trace_itimer_state.exit

trace_itimer_state.exit:                          ; preds = %bb.i, %arch_test_bit.exit.i.i, %bb.l
  %i.ar = load ptr, ptr %i.x, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %i.ar) #8
  %.not23 = icmp eq ptr %3, null
  br i1 %.not23, label %bb.n, label %bb.m

bb.m:                                             ; preds = %trace_itimer_state.exit
  %i.as = getelementptr i8, ptr %3, i64 16
  %i.at = load i64, ptr %i.a, align 8
  %i.au = call { i64, i64 } @ns_to_timespec64(i64 noundef %i.at) #8 ; 2 uses
  %i.av = extractvalue { i64, i64 } %i.au, 0
  %i.aw = extractvalue { i64, i64 } %i.au, 1
  store i64 %i.av, ptr %i.as, align 8
  %.sroa.43.0..sroa_idx = getelementptr i8, ptr %3, i64 24
  store i64 %i.aw, ptr %.sroa.43.0..sroa_idx, align 8
  %i.ax = call { i64, i64 } @ns_to_timespec64(i64 noundef %i.ab) #8 ; 2 uses
  %i.ay = extractvalue { i64, i64 } %i.ax, 0
  %i.az = extractvalue { i64, i64 } %i.ax, 1
  store i64 %i.ay, ptr %3, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.az, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %trace_itimer_state.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_itimer_state(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @set_process_cpu_timer(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noredzone "no-builtin-wcslen" }
attributes #8 = { noredzone nounwind "no-builtin-wcslen" }
attributes #9 = { nounwind memory(none) }
attributes #10 = { cold noredzone nounwind "no-builtin-wcslen" }

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
!10 = !{!"auto-init"}
!11 = !{i64 2843}
!12 = !{i64 3693}
!13 = !{i8 0, i8 2}
!14 = !{}
!15 = !{i64 2148443670, i64 2148443710, i64 2148443827, i64 2148443848, i64 2148443891, i64 2148443906, i64 2148443939, i64 2148443973, i64 2148443997}
!16 = !{i64 2158896004}
!17 = !{i64 2149349478}
!18 = !{i64 2151667567}
!19 = !{i64 2151670869}
!20 = !{i64 2151671291}
!21 = !{i64 2151683073}
!22 = !{i64 7166}
!23 = !{i64 2149891805}
!24 = !{i64 2627354}
!25 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!26 = !{i64 2158860725}
!27 = !{i64 6858}
!28 = !{i64 6939}
!29 = !{i64 7899}
!30 = !{i64 2158997432}
!31 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!32 = !{i64 9536}
!33 = !{i64 2159000690}
!34 = !{i64 10861}
end_hunk_0

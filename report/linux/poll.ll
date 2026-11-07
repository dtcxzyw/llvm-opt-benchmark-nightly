Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/poll?download=true
inline.NumInlined: 135
inline.NumDeleted: 62
begin_hunk_0_@io_poll_double_prepare:bb.a
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = icmp eq i8 %i.b, 6
  br i1 %i.c, label %io_poll_get_single.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 176
  %i.e = load ptr, ptr %i.d, align 8
  br label %io_poll_get_single.exit

io_poll_get_single.exit:                          ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.e, %bb.b ], [ %0, %bb.a ]
  tail call void @__rcu_read_lock() #9
  %i.f = getelementptr i8, ptr %.0.i, i64 8
  %i.g = load volatile ptr, ptr %i.f, align 8     ; 3 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !58
  %i.h = icmp ne ptr %i.g, null                   ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %io_poll_get_single.exit
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull %i.g) #9
  %i.i = getelementptr i8, ptr %0, i64 72         ; 3 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = or i64 %i.j, 33554432
  store i64 %i.k, ptr %i.i, align 8
  %i.l = load i8, ptr %i.a, align 8
  %i.m = icmp eq i8 %i.l, 6
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = or i64 %i.j, 37748736
  store i64 %i.n, ptr %i.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull %i.g) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %io_poll_get_single.exit
  tail call void @__rcu_read_unlock() #9
  ret i1 %i.h
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @add_wait_queue_exclusive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 2) i32 @io_poll_wake(ptr noundef %0, i32 %1, i32 %2, ptr noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val = load ptr, ptr %i.a, align 8
  %i.b = ptrtoint ptr %.val to i64
  %i.c = and i64 %i.b, -2
  %i.d = inttoptr i64 %i.c to ptr                 ; 6 uses
  %i.e = ptrtoint ptr %3 to i64
  %i.f = trunc i64 %i.e to i32                    ; 5 uses
  %i.g = and i32 %i.f, 16384
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 -24
  tail call fastcc void @io_pollfree_wake(ptr noundef %i.d, ptr noundef %i.h) #12
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %.not24 = icmp eq i32 %i.f, 0                   ; 2 uses
  br i1 %.not24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 -8
  %i.j = load i32, ptr %i.i, align 8
  %i.k = and i32 %i.f, -1073758211
  %i.l = and i32 %i.k, %i.j
  %.not25 = icmp eq i32 %i.l, 0
  br i1 %.not25, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr i8, ptr %i.d, i64 192      ; 3 uses
  %i.n = load volatile i32, ptr %i.m, align 4
  %i.o = icmp ugt i32 %i.n, 127
  br i1 %i.o, label %.split, label %io_poll_get_ownership.exit, !prof !10

.split:                                           ; preds = %bb.e
  %i.p = tail call fastcc zeroext i1 @io_poll_get_ownership_slowpath(ptr noundef %i.d) #10, !srcloc !25
  br i1 %i.p, label %bb.f, label %bb.j

io_poll_get_ownership.exit:                       ; preds = %bb.e
  %i.q = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.m, i32 1, ptr elementtype(i32) %i.m) #8, !srcloc !24
  %i.r = and i32 %i.q, 1073741823
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.f, label %bb.j

bb.f:                                             ; preds = %.split, %io_poll_get_ownership.exit
  %i.s = and i32 %i.f, 134217728
  %.not26 = icmp eq i32 %i.s, 0
  br i1 %.not26, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.f
  %i.t = getelementptr i8, ptr %0, i64 -8         ; 2 uses
  %i.u = load i32, ptr %i.t, align 8
  %i.v = or i32 %i.u, 1073741824
  store i32 %i.v, ptr %i.t, align 8
  %i.w = getelementptr i8, ptr %i.d, i64 120      ; 2 uses
  %i.x = load i32, ptr %i.w, align 8
  %i.y = or i32 %i.x, 1073741824
  store i32 %i.y, ptr %i.w, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %.not24, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %i.z = getelementptr i8, ptr %0, i64 -8
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = and i32 %i.aa, 1073741824
  %.not27 = icmp eq i32 %i.ab, 0
  br i1 %.not27, label %bb.i, label %.sink.split

.sink.split:                                      ; preds = %bb.h
  %i.ac = getelementptr i8, ptr %0, i64 24        ; 4 uses
  %i.ad = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  store ptr %i.ae, ptr %i.ag, align 8
  store volatile ptr %i.af, ptr %i.ae, align 8
  store volatile ptr %i.ac, ptr %i.ac, align 8
  store volatile ptr %i.ac, ptr %i.ad, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !19
  %i.ah = getelementptr i8, ptr %0, i64 -16
  store volatile ptr null, ptr %i.ah, align 8
  %.val28 = load ptr, ptr %i.a, align 8
  %i.ai = ptrtoint ptr %.val28 to i64
  %i.aj = trunc i64 %i.ai to i1
  %i.ak = getelementptr i8, ptr %i.d, i64 72      ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8
  %. = select i1 %i.aj, i64 -33554433, i64 -16777217
  %i.am = and i64 %i.al, %.
  store i64 %i.am, ptr %i.ak, align 8
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.h, %bb.g
  tail call fastcc void @__io_poll_execute(ptr noundef %i.d, i32 noundef %i.f) #10, !srcloc !59
  br label %bb.j

bb.j:                                             ; preds = %.split, %io_poll_get_ownership.exit, %bb.i, %bb.d, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.d ], [ 1, %bb.i ], [ 1, %io_poll_get_ownership.exit ], [ 1, %.split ]
  ret i32 %.0
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc void @io_pollfree_wake(ptr noundef %0, ptr noundef %1) unnamed_addr #4 align 16 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 192        ; 5 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orl $1, $0", "=*m,ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.a, i32 -2147483648, ptr elementtype(i32) %i.a) #8, !srcloc !23
  %i.b = load volatile i32, ptr %i.a, align 4
  %i.c = icmp ugt i32 %i.b, 127
  br i1 %i.c, label %.split.i, label %io_poll_get_ownership.exit.i, !prof !10

.split.i:                                         ; preds = %bb.a
  %i.d = tail call fastcc zeroext i1 @io_poll_get_ownership_slowpath(ptr noundef %0) #10, !srcloc !25
  br i1 %i.d, label %bb.b, label %io_poll_execute.exit

io_poll_get_ownership.exit.i:                     ; preds = %bb.a
  %i.e = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.a, i32 1, ptr elementtype(i32) %i.a) #8, !srcloc !24
  %i.f = and i32 %i.e, 1073741823
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.b, label %io_poll_execute.exit

bb.b:                                             ; preds = %io_poll_get_ownership.exit.i, %.split.i
  tail call fastcc void @__io_poll_execute(ptr noundef %0, i32 noundef 0) #10, !srcloc !26
  br label %io_poll_execute.exit

io_poll_execute.exit:                             ; preds = %.split.i, %io_poll_get_ownership.exit.i, %bb.b
  %i.g = getelementptr i8, ptr %1, i64 48         ; 4 uses
  %i.h = getelementptr i8, ptr %1, i64 56         ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8
  store ptr %i.i, ptr %i.k, align 8
  store volatile ptr %i.j, ptr %i.i, align 8
  store volatile ptr %i.g, ptr %i.g, align 8
  store volatile ptr %i.g, ptr %i.h, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !19
  %i.l = getelementptr i8, ptr %1, i64 8
  store volatile ptr null, ptr %i.l, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc zeroext i1 @io_poll_get_ownership_slowpath(ptr noundef %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 192        ; 7 uses
  %i.b = load volatile i32, ptr %i.a, align 4     ; 3 uses
  %i.c = or i32 %i.b, 1073741824
  %i.d = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.a, i32 range(i32 1073741824, 0) %i.c, ptr elementtype(i32) %i.a, i32 %i.b) #8, !srcloc !60 ; 2 uses
  %i.e = extractvalue { i8, i32 } %i.d, 0         ; 2 uses
  %i.f = icmp ult i8 %i.e, 2
  tail call void @llvm.assume(i1 %i.f)
  %i.g = trunc nuw i8 %i.e to i1
  br i1 %i.g, label %arch_atomic_fetch_or.exit, label %arch_atomic_try_cmpxchg.exit, !prof !61

arch_atomic_try_cmpxchg.exit:                     ; preds = %bb.a, %arch_atomic_try_cmpxchg.exit
  %i.h = phi { i8, i32 } [ %i.k, %arch_atomic_try_cmpxchg.exit ], [ %i.d, %bb.a ]
  %i.i = extractvalue { i8, i32 } %i.h, 1         ; 3 uses
  %i.j = or i32 %i.i, 1073741824
  %i.k = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.a, i32 range(i32 1073741824, 0) %i.j, ptr elementtype(i32) %i.a, i32 %i.i) #8, !srcloc !60 ; 2 uses
  %i.l = extractvalue { i8, i32 } %i.k, 0         ; 2 uses
  %i.m = icmp ult i8 %i.l, 2
  tail call void @llvm.assume(i1 %i.m)
  %i.n = trunc nuw i8 %i.l to i1
  br i1 %i.n, label %arch_atomic_fetch_or.exit, label %arch_atomic_try_cmpxchg.exit, !prof !62

arch_atomic_fetch_or.exit:                        ; preds = %arch_atomic_try_cmpxchg.exit, %bb.a
  %.06.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.i, %arch_atomic_try_cmpxchg.exit ]
  %i.o = and i32 %.06.lcssa, 1073741823
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %arch_atomic_fetch_or.exit
  %i.p = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.a, i32 1, ptr elementtype(i32) %i.a) #8, !srcloc !24
  %i.q = and i32 %i.p, 1073741823
  %.not3 = icmp eq i32 %i.q, 0
  br label %bb.c

bb.c:                                             ; preds = %arch_atomic_fetch_or.exit, %bb.b
  %.0 = phi i1 [ %.not3, %bb.b ], [ false, %arch_atomic_fetch_or.exit ]
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc zeroext i1 @io_poll_can_finish_inline(ptr noundef %0, i8 %.32.val) unnamed_addr #0 align 16 {
bb.a:
  %i.a = trunc nuw i8 %.32.val to i1
  br i1 %i.a, label %io_poll_get_ownership.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 192        ; 3 uses
  %i.c = load volatile i32, ptr %i.b, align 4
  %i.d = icmp ugt i32 %i.c, 127
  br i1 %i.d, label %bb.c, label %bb.d, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.e = tail call fastcc zeroext i1 @io_poll_get_ownership_slowpath(ptr noundef %0) #10, !srcloc !25
  br label %io_poll_get_ownership.exit

bb.d:                                             ; preds = %bb.b
  %i.f = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.b, i32 1, ptr elementtype(i32) %i.b) #8, !srcloc !24
  %i.g = and i32 %i.f, 1073741823
  %.not.i = icmp eq i32 %i.g, 0
  br label %io_poll_get_ownership.exit

io_poll_get_ownership.exit:                       ; preds = %bb.d, %bb.c, %bb.a
  %i.h = phi i1 [ true, %bb.a ], [ %i.e, %bb.c ], [ %.not.i, %bb.d ]
  ret i1 %i.h
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_io_uring_poll_arm(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @io_cancel_req_match(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite, inaccessiblemem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind "no-builtin-wcslen" }
attributes #10 = { noredzone "no-builtin-wcslen" }
attributes #11 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }
attributes #12 = { cold noredzone "no-builtin-wcslen" }

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
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{i64 2148833327, i64 2148833367, i64 2148833484, i64 2148833505, i64 2148833548, i64 2148833563, i64 2148833596, i64 2148833630, i64 2148833654}
!14 = !{i64 2148012146}
!15 = !{i64 2151766245}
!16 = !{i64 2151769547}
!17 = !{i64 2151769969}
!18 = !{i64 2151781751}
!19 = !{i64 2163338286}
!20 = !{!"auto-init"}
!21 = !{i8 0, i8 2}
!22 = !{}
!23 = !{i64 2149030569, i64 2149030608, i64 2149030629, i64 2149030666, i64 2149030689, i64 2149030560}
!24 = !{i64 2149022211, i64 2149022250, i64 2149022271, i64 2149022308, i64 2149022331, i64 2149022340}
!25 = !{i64 2490}
!26 = !{i64 6414}
!27 = !{i64 24847}
!28 = distinct !{null, null}
!29 = distinct !{!29, !12}
!30 = !{i64 2163348807, i64 2163348677}
!31 = !{i64 2163349338, i64 2163350399, i64 2163350432, i64 2163350467, i64 2163350483, i64 2163351410, i64 2163351468, i64 2163351517, i64 2163351327, i64 2163350542, i64 2163350574, i64 2163350657}
!32 = !{i64 2163351817, i64 2163351688}
!33 = !{i64 2149029963, i64 2149030002, i64 2149030023, i64 2149030060, i64 2149030083, i64 2149029954}
!34 = !{i64 2149019967, i64 2149020006, i64 2149020027, i64 2149020064, i64 2149020087, i64 2149020096}
!35 = !{i64 9722}
!36 = !{i64 9763}
!37 = !{i64 2157104778}
!38 = !{i64 2163344657}
!39 = !{!"branch_weights", i32 2002, i32 2000}
!40 = !{i64 19559}
!41 = !{i64 2157069479}
!42 = !{i64 18049}
!43 = distinct !{null}
!44 = !{i64 16789}
!45 = !{i64 17232}
!46 = !{i64 17493}
!47 = !{i64 2149024898, i64 2149024937, i64 2149024958, i64 2149024995, i64 2149025018, i64 2149025027}
!48 = !{i64 17766}
!49 = distinct !{!49, !12}
!50 = !{i64 21001}
!51 = distinct !{!51, !12}
!52 = !{i64 14628}
!53 = !{i64 22200}
!54 = !{i64 2163395281, i64 2163395151}
!55 = !{i64 2163395812, i64 2163396884, i64 2163396917, i64 2163396952, i64 2163396968, i64 2163397895, i64 2163397953, i64 2163398002, i64 2163397812, i64 2163397027, i64 2163397059, i64 2163397142}
!56 = !{i64 2163398302, i64 2163398173}
!57 = !{i64 13901}
!58 = !{i64 2163364737}
!59 = !{i64 12085}
!60 = !{i64 2149027960, i64 2149027999, i64 2149028020, i64 2149028057, i64 2149028080, i64 2149028089}
!61 = !{!"branch_weights", i32 1999, i32 1}
!62 = !{!"branch_weights", i32 1, i32 0}
end_hunk_0

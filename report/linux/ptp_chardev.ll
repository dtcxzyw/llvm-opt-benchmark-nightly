Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/ptp_chardev?download=true
inline.NumInlined: 51
inline.NumDeleted: 31
begin_hunk_0_@ptp_sys_offset_extended:bb.a
  store i64 %i.aj, ptr %i.p, align 8
  %i.ak = getelementptr [48 x i8], ptr %i.r, i64 %indvars.iv
  store i64 %i.ai, ptr %i.ak, align 8
  %i.al = trunc i64 %i.aj to i32
  %i.am = getelementptr i8, ptr %i.ab, i64 24
  store i32 %i.al, ptr %i.am, align 8
  %i.an = load i64, ptr %i.s, align 8
  %i.ao = call { i64, i64 } @ns_to_timespec64(i64 noundef %i.an) #9 ; 2 uses
  %i.ap = extractvalue { i64, i64 } %i.ao, 0
  %i.aq = extractvalue { i64, i64 } %i.ao, 1
  %i.ar = getelementptr i8, ptr %i.ab, i64 48
  store i64 %i.ap, ptr %i.ar, align 8
  %i.as = trunc i64 %i.aq to i32
  %i.at = getelementptr i8, ptr %i.ab, i64 56
  store i32 %i.as, ptr %i.at, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.au = load i32, ptr %i.a, align 8
  %i.av = zext i32 %i.au to i64
  %.not31 = icmp samesign ult i64 %indvars.iv.next, %i.av
  br i1 %.not31, label %bb.h, label %copy_to_user.exit, !llvm.loop !30

copy_to_user.exit:                                ; preds = %bb.k, %bb.g
  %i.aw = call i64 @_copy_to_user(ptr noundef %1, ptr noundef %i.a, i64 noundef 1216) #9
  %.fr = freeze i64 %i.aw
  %.not32 = icmp eq i64 %.fr, 0
  %spec.select = select i1 %.not32, i64 0, i64 -14
  br label %bb.l

bb.l:                                             ; preds = %copy_to_user.exit, %.thread48, %bb.f, %bb.c, %bb.d, %bb.e
  %.3 = phi i64 [ -22, %bb.d ], [ %spec.select, %copy_to_user.exit ], [ -22, %bb.c ], [ -22, %bb.f ], [ %.1.ph, %.thread48 ], [ -22, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %__free_kfree.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @kfree(ptr noundef nonnull %i.a) #9
  br label %__free_kfree.exit

__free_kfree.exit:                                ; preds = %.thread, %.thread54, %bb.l, %bb.m
  %.359 = phi i64 [ -95, %.thread54 ], [ %.3, %bb.l ], [ %.3, %bb.m ], [ %i.c, %.thread ]
  ret i64 %.359
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 9) i32 @ptp_poll(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 1072
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %poll_wait.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %2, align 8                ; 2 uses
  %.not7.i = icmp eq ptr %i.e, null
  br i1 %.not7.i, label %poll_wait.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.e(ptr noundef %1, ptr noundef %i.d, ptr noundef nonnull %2) #9, !inline_history !31
  tail call void asm sideeffect "lock addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !32
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %bb.b, %bb.c, %bb.d
  %i.f = getelementptr i8, ptr %i.b, i64 4100
  %i.g = load volatile i32, ptr %i.f, align 4
  %i.h = getelementptr i8, ptr %i.b, i64 4096
  %i.i = load volatile i32, ptr %i.h, align 8
  %i.j = sub i32 %i.g, %i.i                       ; 2 uses
  %i.k = lshr i32 %i.j, 24
  %i.l = and i32 %i.k, 128
  %i.m = sub i32 0, %i.j
  %.not10 = icmp ne i32 %i.l, %i.m
  %i.n = zext i1 %.not10 to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %poll_wait.exit
  %.0 = phi i32 [ %i.n, %poll_wait.exit ], [ 8, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -512, 961) i64 @ptp_read(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.wait_queue_entry, align 8   ; 7 uses
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %.not = icmp ne ptr %i.c, null
  %i.d = and i64 %3, 31
  %.not61 = icmp eq i64 %i.d, 0
  %or.cond = and i1 %.not61, %.not
  br i1 %or.cond, label %bb.b, label %.critedge.thread

bb.b:                                             ; preds = %bb.a
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %3, i64 960)
  %i.e = tail call i32 @__SCT__might_resched() #9 ; 0 uses
  %i.f = getelementptr i8, ptr %i.a, i64 1096     ; 4 uses
  %i.g = load i32, ptr %i.f, align 8
  %.not62 = icmp eq i32 %i.g, 0
  br i1 %.not62, label %bb.c, label %.critedge.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.c, i64 4100     ; 4 uses
  %i.i = load volatile i32, ptr %i.h, align 4
  %i.j = getelementptr i8, ptr %i.c, i64 4096     ; 5 uses
  %i.k = load volatile i32, ptr %i.j, align 8
  %i.l = sub i32 %i.i, %i.k                       ; 2 uses
  %i.m = lshr i32 %i.l, 24
  %i.n = and i32 %i.m, 128
  %i.o = sub i32 0, %i.l
  %.not63 = icmp eq i32 %i.n, %i.o
  br i1 %.not63, label %bb.d, label %.critedge.thread98

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false), !annotation !11
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #9
  %i.p = getelementptr i8, ptr %i.a, i64 1072     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %bb.d
  %i.q = call i64 @prepare_to_wait_event(ptr noundef %i.p, ptr noundef nonnull %4, i32 noundef 1) #9 ; 2 uses
  %i.r = load i32, ptr %i.f, align 8
  %.not64 = icmp eq i32 %i.r, 0
  br i1 %.not64, label %bb.f, label %.thread82.thread

bb.f:                                             ; preds = %bb.e
  %i.s = load volatile i32, ptr %i.h, align 4
  %i.t = load volatile i32, ptr %i.j, align 8
  %i.u = sub i32 %i.s, %i.t                       ; 2 uses
  %i.v = lshr i32 %i.u, 24
  %i.w = and i32 %i.v, 128
  %i.x = sub i32 0, %i.u
  %.not65 = icmp eq i32 %i.w, %i.x
  br i1 %.not65, label %bb.g, label %.thread82.thread

bb.g:                                             ; preds = %bb.f
  %.not66 = icmp eq i64 %i.q, 0
  br i1 %.not66, label %bb.h, label %.thread82

bb.h:                                             ; preds = %bb.g
  call void @schedule() #9
  %i.y = load i32, ptr %i.f, align 8
  %.not67 = icmp eq i32 %i.y, 0
  br i1 %.not67, label %bb.i, label %.thread82.thread

bb.i:                                             ; preds = %bb.h
  %i.z = load volatile i32, ptr %i.h, align 4
  %i.aa = load volatile i32, ptr %i.j, align 8
  %i.ab = sub i32 %i.z, %i.aa                     ; 2 uses
  %i.ac = lshr i32 %i.ab, 24
  %i.ad = and i32 %i.ac, 128
  %i.ae = sub i32 0, %i.ab
  %.not68 = icmp eq i32 %i.ad, %i.ae
  br i1 %.not68, label %bb.e, label %.thread82.thread

.thread82.thread:                                 ; preds = %bb.i, %bb.f, %bb.e, %bb.h
  call void @finish_wait(ptr noundef %i.p, ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %.critedge

.thread82:                                        ; preds = %bb.g
  %i.af = and i64 %i.q, 4294967295
  %i.ag = icmp eq i64 %i.af, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br i1 %i.ag, label %.critedge, label %.critedge.thread

.critedge:                                        ; preds = %.thread82, %.thread82.thread
  %.pr.pre = load i32, ptr %i.f, align 8
  %i.ah = icmp eq i32 %.pr.pre, 0
  br i1 %i.ah, label %.critedge.thread98, label %.critedge.thread

.critedge.thread98:                               ; preds = %bb.c, %.critedge
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 80), align 16
  %i.aj = call noalias align 8 dereferenceable_or_null(960) ptr @__kmalloc_cache_noprof(ptr noundef %i.ai, i32 noundef 3264, i64 noundef 960) #12 ; 4 uses
  %.not71 = icmp eq ptr %i.aj, null
  br i1 %.not71, label %.critedge.thread, label %bb.j

bb.j:                                             ; preds = %.critedge.thread98
  %i.ak = getelementptr i8, ptr %i.c, i64 4104    ; 2 uses
  call void @_raw_spin_lock_irq(ptr noundef %i.ak) #9
  %i.al = load volatile i32, ptr %i.h, align 4
  %i.am = load volatile i32, ptr %i.j, align 8    ; 2 uses
  %i.an = sub i32 %i.al, %i.am                    ; 2 uses
  %i.ao = lshr i32 %i.an, 24
  %i.ap = and i32 %i.ao, 128
  %i.aq = add i32 %i.ap, %i.an
  %i.ar = sext i32 %i.aq to i64
  %i.as = lshr exact i64 %spec.store.select, 5
  %i.at = call i64 @llvm.umin.i64(i64 %i.as, i64 %i.ar) ; 3 uses
  %.not91 = icmp eq i64 %i.at, 0
  br i1 %.not91, label %copy_to_user.exit, label %.lr.ph

copy_to_user.exit:                                ; preds = %.lr.ph, %bb.j
  call void @_raw_spin_unlock_irq(ptr noundef %i.ak) #9
  %5 = shl nuw nsw i64 %i.at, 5                   ; 2 uses
  %i.au = call i64 @_copy_to_user(ptr noundef %2, ptr noundef nonnull %i.aj, i64 noundef %5) #9
  %i.av = icmp eq i64 %i.au, 0
  %i.aw = select i1 %i.av, i64 %5, i64 -14
  call void @kfree(ptr noundef nonnull %i.aj) #9
  br label %.critedge.thread

.lr.ph:                                           ; preds = %bb.j, %.lr.ph
  %i.ax = phi i32 [ %i.bc, %.lr.ph ], [ %i.am, %bb.j ] ; 2 uses
  %.090 = phi i64 [ %i.bd, %.lr.ph ], [ 0, %bb.j ] ; 2 uses
  %i.ay = getelementptr [32 x i8], ptr %i.aj, i64 %.090
  %i.az = sext i32 %i.ax to i64
  %i.ba = getelementptr [32 x i8], ptr %i.c, i64 %i.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(32) %i.ay, ptr noundef align 8 dereferenceable(32) %i.ba, i64 32, i1 false)
  %i.bb = add i32 %i.ax, 1
  %i.bc = srem i32 %i.bb, 128                     ; 2 uses
  store volatile i32 %i.bc, ptr %i.j, align 8
  %i.bd = add nuw nsw i64 %.090, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bd, %i.at
  br i1 %exitcond.not, label %copy_to_user.exit, label %.lr.ph, !llvm.loop !33

.critedge.thread:                                 ; preds = %bb.b, %.critedge.thread98, %.critedge, %.thread82, %bb.a, %copy_to_user.exit
  %.052 = phi i64 [ -22, %bb.a ], [ -12, %.critedge.thread98 ], [ -512, %.thread82 ], [ %i.aw, %copy_to_user.exit ], [ -19, %.critedge ], [ -19, %bb.b ]
  ret i64 %.052
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local { i64, i64 } @ns_to_timespec64(i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare dso_local ptr @memdup_user(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nofree noredzone nounwind null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid allocsize(1) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noredzone nounwind "no-builtin-wcslen" }
attributes #10 = { nounwind }
attributes #11 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #12 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }
attributes #13 = { nounwind memory(none) }
attributes #14 = { noredzone "no-builtin-wcslen" }
attributes #15 = { noredzone nounwind allocsize(1) "no-builtin-wcslen" }

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
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"auto-init"}
!12 = distinct !{null}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{null}
!16 = distinct !{null}
!17 = distinct !{null}
!18 = distinct !{null}
!19 = distinct !{null}
!20 = distinct !{null}
!21 = distinct !{!21, !10}
!22 = !{i64 2148212098}
!23 = !{i64 14838}
!24 = !{i64 2157188383}
!25 = !{i64 2157192288}
!26 = !{i64 2148430827, i64 2148430866, i64 2148430887, i64 2148430924, i64 2148430947, i64 2148430818}
!27 = !{i8 0, i8 2}
!28 = !{}
!29 = !{i64 15688}
!30 = distinct !{!30, !10}
!31 = distinct !{null}
!32 = !{i64 2155309057}
!33 = distinct !{!33, !10}
end_hunk_0

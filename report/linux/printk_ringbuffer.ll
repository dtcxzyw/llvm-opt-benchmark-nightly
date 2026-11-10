Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/printk_ringbuffer?download=true
inline.NumInlined: 179
inline.NumDeleted: 28
begin_hunk_0_@prb_next_seq:bb.a
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.f = load i64, ptr %i.a, align 8
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.a, align 8
  %i.h = call fastcc zeroext i1 @_prb_read_valid(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null) #12, !srcloc !82
  br i1 %i.h, label %.lr.ph, label %._crit_edge, !llvm.loop !81

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %i.i
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local void @prb_init(ptr nofree noundef captures(address) initializes((0, 4), (8, 24)) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %i.a = zext nneg i32 %4 to i64                  ; 3 uses
  %i.b = shl nuw i64 1, %i.a                      ; 3 uses
  %i.c = shl i64 24, %i.a
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %i.c, i1 false)
  %i.d = shl i64 88, %i.a
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %i.d, i1 false)
  store i32 %4, ptr %0, align 8
  %i.e = getelementptr i8, ptr %0, i64 8
  store ptr %3, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %0, i64 16
  store ptr %5, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %0, i64 24
  %i.h = and i64 %i.b, 4611686018427387903
  %i.i = xor i64 %i.h, 4611686018427387903        ; 3 uses
  store volatile i64 %i.i, ptr %i.g, align 8
  %i.j = getelementptr i8, ptr %0, i64 32
  store volatile i64 %i.i, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %0, i64 40
  store volatile i64 0, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %0, i64 48
  store i32 %2, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %0, i64 56
  store ptr %1, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %0, i64 64
  %i.o = zext nneg i32 %2 to i64
  %.neg = shl nsw i64 -1, %i.o                    ; 2 uses
  store volatile i64 %.neg, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %0, i64 72
  store volatile i64 %.neg, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %0, i64 80
  store volatile i64 0, ptr %i.q, align 8
  %i.r = add i64 %i.b, -1                         ; 2 uses
  %i.s = getelementptr [24 x i8], ptr %3, i64 %i.r ; 3 uses
  %i.t = or disjoint i64 %i.i, -4611686018427387904
  store volatile i64 %i.t, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.s, i64 8
  store i64 1, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %i.s, i64 16
  store i64 1, ptr %i.v, align 8
  %i.w = sub i64 0, %i.b
  store i64 %i.w, ptr %5, align 8
  %i.x = getelementptr [88 x i8], ptr %5, i64 %i.r
  store i64 0, ptr %i.x, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local i32 @prb_record_text_space(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8
  ret i32 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef zeroext i1 @data_push_tail(ptr noundef %0, i64 noundef %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.sroa.0.i = alloca i64, align 8                ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 48         ; 3 uses
  %i.b = and i64 %1, 1
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %arch_atomic64_try_cmpxchg.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 72         ; 4 uses
  %i.d = load volatile i64, ptr %i.c, align 8     ; 2 uses
  %.val24 = load i32, ptr %i.a, align 8
  %i.e = xor i64 %i.d, -1
  %i.f = add i64 %1, %i.e
  %i.g = zext nneg i32 %.val24 to i64             ; 2 uses
  %.highbits.i25 = lshr i64 %i.f, %i.g
  %i.h = icmp eq i64 %.highbits.i25, 0
  br i1 %i.h, label %.lr.ph.i.lr.ph, label %arch_atomic64_try_cmpxchg.exit.thread

.lr.ph.i.lr.ph:                                   ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 56
  %i.j = getelementptr i8, ptr %0, i64 8          ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %.backedge
  %i.k = phi i64 [ %i.g, %.lr.ph.i.lr.ph ], [ %i.aw, %.backedge ]
  %.01726 = phi i64 [ %i.d, %.lr.ph.i.lr.ph ], [ %.017.be, %.backedge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.lr.ph.i
  %i.l = phi i64 [ %i.k, %.lr.ph.i ], [ %i.am, %bb.h ]
  %.02044.i = phi i64 [ %.01726, %.lr.ph.i ], [ %.sroa.7.1.i, %bb.h ] ; 3 uses
  %.sroa.7.043.i = phi i64 [ 0, %.lr.ph.i ], [ %.sroa.7.1.i, %bb.h ]
  %.sroa.4.042.i = phi i64 [ 0, %.lr.ph.i ], [ %.sroa.4.1.i, %bb.h ]
  %.val23.i = load ptr, ptr %i.i, align 8
  %notmask.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i, -1
  %i.n = and i64 %.02044.i, %i.m
  %i.o = getelementptr i8, ptr %.val23.i, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8              ; 6 uses
  %.val.i.i = load i32, ptr %0, align 8
  %i.q = zext nneg i32 %.val.i.i to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.q
  %i.r = xor i64 %notmask.i.i.i, -1
  %i.s = and i64 %i.p, %i.r
  %.val35.i.i = load ptr, ptr %i.j, align 8
  %i.t = getelementptr [24 x i8], ptr %.val35.i.i, i64 %i.s ; 4 uses
  %i.u = load volatile i64, ptr %i.t, align 8     ; 3 uses
  %i.v = and i64 %i.u, 4611686018427387903
  %.not.i.i.i = icmp eq i64 %i.p, %i.v
  %i.w = lshr i64 %i.u, 62
  %i.x = trunc nuw nsw i64 %i.w to i32
  %.0.i.i.i = select i1 %.not.i.i.i, i32 %i.x, i32 -1 ; 2 uses
  %or.cond.i.i = icmp slt i32 %.0.i.i.i, 1
  br i1 %or.cond.i.i, label %desc_read.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !13
  %i.y = getelementptr i8, ptr %i.t, i64 8
  %.sroa.4.8.copyload.i = load i64, ptr %i.y, align 8
  %.sroa.7.8..sroa_idx.i = getelementptr i8, ptr %i.t, i64 16
  %.sroa.7.8.copyload.i = load i64, ptr %.sroa.7.8..sroa_idx.i, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !14
  %i.z = load volatile i64, ptr %i.t, align 8     ; 4 uses
  %i.aa = and i64 %i.z, 4611686018427387903
  %.not.i37.i.i = icmp eq i64 %i.p, %i.aa
  %i.ab = lshr i64 %i.z, 62
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  br i1 %.not.i37.i.i, label %desc_read.exit.i, label %desc_read.exit.thread.i

desc_read.exit.thread.i:                          ; preds = %bb.d
  store volatile i64 %i.z, ptr %.sroa.0.i, align 8
  br label %.loopexit

desc_read.exit.i:                                 ; preds = %bb.d, %bb.c
  %.sroa.4.1.i = phi i64 [ %.sroa.4.042.i, %bb.c ], [ %.sroa.4.8.copyload.i, %bb.d ] ; 3 uses
  %.sroa.7.1.i = phi i64 [ %.sroa.7.043.i, %bb.c ], [ %.sroa.7.8.copyload.i, %bb.d ] ; 4 uses
  %.026.i.i = phi i32 [ %.0.i.i.i, %bb.c ], [ %i.ac, %bb.d ]
  %.0.i.i = phi i64 [ %i.u, %bb.c ], [ %i.z, %bb.d ]
  store volatile i64 %.0.i.i, ptr %.sroa.0.i, align 8
  switch i32 %.026.i.i, label %default.unreachable [
    i32 -1, label %.loopexit
    i32 0, label %.loopexit
    i32 1, label %.loopexit
    i32 2, label %bb.e
    i32 3, label %bb.g
  ]

bb.e:                                             ; preds = %desc_read.exit.i
  %.not21.i = icmp eq i64 %.sroa.4.1.i, %.02044.i
  br i1 %.not21.i, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %.val24.i = load i32, ptr %0, align 8
  %.val25.i = load ptr, ptr %i.j, align 8
  %i.ad = or i64 %i.p, -9223372036854775808
  %i.ae = or i64 %i.p, -4611686018427387904
  %i.af = zext nneg i32 %.val24.i to i64
  %notmask.i.i26.i = shl nsw i64 -1, %i.af
  %i.ag = xor i64 %notmask.i.i26.i, -1
  %i.ah = and i64 %i.p, %i.ag
  %i.ai = getelementptr [24 x i8], ptr %.val25.i, i64 %i.ah ; 2 uses
  %i.aj = tail call i64 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgq $2, $1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ai, i64 range(i64 -4611686018427387904, 0) %i.ae, i64 range(i64 -9223372036854775808, 0) %i.ad, ptr elementtype(i64) %i.ai) #10, !srcloc !24 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %desc_read.exit.i
  %.not.i = icmp eq i64 %.sroa.4.1.i, %.02044.i
  br i1 %.not.i, label %bb.h, label %.loopexit

default.unreachable:                              ; preds = %desc_read.exit.i
  unreachable

bb.h:                                             ; preds = %bb.g, %bb.f
  %.val.i = load i32, ptr %i.a, align 8
  %i.ak = xor i64 %.sroa.7.1.i, -1
  %i.al = add i64 %1, %i.ak
  %i.am = zext nneg i32 %.val.i to i64            ; 2 uses
  %.highbits.i.i = lshr i64 %i.al, %i.am
  %.not47.i = icmp eq i64 %.highbits.i.i, 0
  br i1 %.not47.i, label %bb.c, label %bb.i, !llvm.loop !83

.loopexit:                                        ; preds = %bb.g, %desc_read.exit.i, %desc_read.exit.i, %desc_read.exit.i, %bb.e, %desc_read.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !85
  %i.an = load volatile i64, ptr %i.c, align 8    ; 2 uses
  %i.ao = icmp eq i64 %i.an, %.01726
  br i1 %i.ao, label %arch_atomic64_try_cmpxchg.exit.thread, label %.backedge

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.ap = tail call { i8, i64 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgq $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.c, i64 %.sroa.7.1.i, ptr elementtype(i64) %i.c, i64 %.01726) #10, !srcloc !15 ; 2 uses
  %i.aq = extractvalue { i8, i64 } %i.ap, 0       ; 2 uses
  %i.ar = icmp ult i8 %i.aq, 2
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = trunc nuw i8 %i.aq to i1
  br i1 %i.as, label %arch_atomic64_try_cmpxchg.exit.thread, label %arch_atomic64_try_cmpxchg.exit, !prof !17

arch_atomic64_try_cmpxchg.exit:                   ; preds = %bb.i
  %i.at = extractvalue { i8, i64 } %i.ap, 1
  br label %.backedge

.backedge:                                        ; preds = %arch_atomic64_try_cmpxchg.exit, %.loopexit
  %.017.be = phi i64 [ %i.at, %arch_atomic64_try_cmpxchg.exit ], [ %i.an, %.loopexit ] ; 2 uses
  %.val = load i32, ptr %i.a, align 8
  %i.au = xor i64 %.017.be, -1
  %i.av = add i64 %1, %i.au
  %i.aw = zext nneg i32 %.val to i64              ; 2 uses
  %.highbits.i = lshr i64 %i.av, %i.aw
  %i.ax = icmp eq i64 %.highbits.i, 0
  br i1 %i.ax, label %.lr.ph.i, label %arch_atomic64_try_cmpxchg.exit.thread, !llvm.loop !84

arch_atomic64_try_cmpxchg.exit.thread:            ; preds = %.loopexit, %.backedge, %bb.i, %bb.b, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ true, %bb.b ], [ true, %.backedge ], [ false, %.loopexit ], [ true, %bb.i ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @panic_on_this_cpu() local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite, inaccessiblemem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #12 = { noredzone "no-builtin-wcslen" }
attributes #13 = { noredzone nounwind "no-builtin-wcslen" }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !{!0, !29}
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
!11 = !{i64 817234, i64 817255}
!12 = !{i64 817446}
!13 = !{i64 2153702241}
!14 = !{i64 2153702419}
!15 = !{i64 2148708760, i64 2148708799, i64 2148708820, i64 2148708857, i64 2148708880, i64 2148708889}
!16 = !{i64 817538}
!17 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!18 = !{!"auto-init"}
!19 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!20 = !{i64 2153766723, i64 2153766598}
!21 = !{i64 2153767246, i64 2153768285, i64 2153768318, i64 2153768353, i64 2153768369, i64 2153769296, i64 2153769354, i64 2153769403, i64 2153769213, i64 2153768428, i64 2153768460, i64 2153768543}
!22 = !{i64 2153769717, i64 2153769593}
!23 = !{i64 54405}
!24 = !{i64 2148705694, i64 2148705733, i64 2148705754, i64 2148705791, i64 2148705814, i64 2148705823}
!25 = !{i64 2148874090}
!26 = !{i64 2153771862}
!27 = !{i8 0, i8 2}
!28 = !{}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{i64 2153753095, i64 2153752970}
!31 = !{i64 2153753618, i64 2153754675, i64 2153754708, i64 2153754743, i64 2153754759, i64 2153755686, i64 2153755744, i64 2153755793, i64 2153755603, i64 2153754818, i64 2153754850, i64 2153754933}
!32 = !{i64 2153756107, i64 2153755983}
!33 = !{i64 49356}
!34 = !{i64 49436}
!35 = !{i64 2153759042, i64 2153758917}
!36 = !{i64 2153759565, i64 2153760629, i64 2153760662, i64 2153760697, i64 2153760713, i64 2153761640, i64 2153761698, i64 2153761747, i64 2153761557, i64 2153760772, i64 2153760804, i64 2153760887}
!37 = !{i64 2153762061, i64 2153761937}
!38 = !{i64 2153719006, i64 2153718881}
!39 = !{i64 2153719529, i64 2153720617, i64 2153720650, i64 2153720685, i64 2153720701, i64 2153721628, i64 2153721686, i64 2153721735, i64 2153721545, i64 2153720760, i64 2153720792, i64 2153720875}
!40 = !{i64 2153722049, i64 2153721925}
!41 = !{i64 40836}
!42 = !{!"branch_weights", i32 1, i32 127}
!43 = !{i64 2153714316, i64 2153714191}
!44 = !{i64 2153714839, i64 2153715922, i64 2153715955, i64 2153715990, i64 2153716006, i64 2153716933, i64 2153716991, i64 2153717040, i64 2153716850, i64 2153716065, i64 2153716097, i64 2153716180}
!45 = !{i64 2153717354, i64 2153717230}
!46 = !{i64 37121}
!47 = !{!"branch_weights", i32 127, i32 255873}
!48 = !{i64 2153724890, i64 2153724765}
!49 = !{i64 2153729474, i64 2153730513, i64 2153730546, i64 2153730581, i64 2153730597, i64 2153731524, i64 2153731582, i64 2153731631, i64 2153731441, i64 2153730656, i64 2153730688, i64 2153730771}
!50 = !{i64 2153731945, i64 2153731821}
!51 = !{i64 2153733862, i64 2153733737}
!52 = !{i64 2153734385, i64 2153735480, i64 2153735513, i64 2153735548, i64 2153735564, i64 2153736491, i64 2153736549, i64 2153736598, i64 2153736408, i64 2153735623, i64 2153735655, i64 2153735738}
!53 = !{i64 2153736912, i64 2153736788}
!54 = !{i64 2153738803, i64 2153738678}
!55 = !{i64 2153739326, i64 2153740419, i64 2153740452, i64 2153740487, i64 2153740503, i64 2153741430, i64 2153741488, i64 2153741537, i64 2153741347, i64 2153740562, i64 2153740594, i64 2153740677}
!56 = !{i64 2153741851, i64 2153741727}
!57 = !{i64 2153743222, i64 2153743097}
!58 = !{i64 2153743745, i64 2153744811, i64 2153744844, i64 2153744879, i64 2153744895, i64 2153745822, i64 2153745880, i64 2153745929, i64 2153745739, i64 2153744954, i64 2153744986, i64 2153745069}
!59 = !{i64 2153746243, i64 2153746119}
!60 = !{i64 2153747647, i64 2153747522}
!61 = !{i64 2153748170, i64 2153749247, i64 2153749280, i64 2153749315, i64 2153749331, i64 2153750258, i64 2153750316, i64 2153750365, i64 2153750175, i64 2153749390, i64 2153749422, i64 2153749505}
!62 = !{i64 2153750679, i64 2153750555}
!63 = !{i64 2153704340}
!64 = !{i64 28613}
!65 = !{i64 2153703749}
!66 = !{i64 2153705111, i64 2153704986}
!67 = !{i64 2153705634, i64 2153706673, i64 2153706706, i64 2153706741, i64 2153706757, i64 2153707684, i64 2153707742, i64 2153707791, i64 2153707601, i64 2153706816, i64 2153706848, i64 2153706931}
!68 = !{i64 2153708104, i64 2153707980}
!69 = !{i64 2153709485, i64 2153709360}
!70 = !{i64 2153710008, i64 2153711047, i64 2153711080, i64 2153711115, i64 2153711131, i64 2153712058, i64 2153712116, i64 2153712165, i64 2153711975, i64 2153711190, i64 2153711222, i64 2153711305}
!71 = !{i64 2153712479, i64 2153712355}
!72 = !{i64 2148692647, i64 2148692686, i64 2148692707, i64 2148692744, i64 2148692767, i64 2148692638}
!73 = !{i64 57593}
!74 = !{i64 61217}
!75 = distinct !{!75, !29}
!76 = !{i64 73444}
!77 = distinct !{!77, !29}
!78 = !{i64 62449}
!79 = !{i64 74715}
!80 = !{i64 75352}
!81 = distinct !{!81, !29}
!82 = !{i64 76531}
!83 = distinct !{!83, !29}
!84 = distinct !{!84, !29}
!85 = !{i64 2153702848}
end_hunk_0

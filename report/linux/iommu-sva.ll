Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/iommu-sva?download=true
inline.NumInlined: 57
inline.NumDeleted: 39
begin_hunk_0_@iommu_sva_unbind_device:bb.a
bb.j:                                             ; preds = %bb.i, %bb.e
  tail call void @mutex_unlock(ptr noundef nonnull @iommu_sva_lock) #5
  tail call void @kfree(ptr noundef %0) #5
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.d
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @iommu_detach_device_pasid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define dso_local i32 @iommu_sva_get_pasid(ptr nofree noundef readonly captures(none) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 1656
  %i.e = load volatile ptr, ptr %i.d, align 8     ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %mm_get_enqcmd_pasid.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.e, align 8
  br label %mm_get_enqcmd_pasid.exit

mm_get_enqcmd_pasid.exit:                         ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.f, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @mm_pasid_drop(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1656
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8
  tail call void @iommu_free_global_pasid(i32 noundef %i.c) #5
  tail call void @kfree(ptr noundef nonnull %i.b) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @iommu_free_global_pasid(i32 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @iommu_sva_invalidate_kva_range(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @mutex_lock(ptr noundef nonnull @iommu_sva_lock) #5
  %.b = load i1, ptr @iommu_sva_present, align 1
  %.pn8 = load ptr, ptr @iommu_sva_mms, align 8   ; 2 uses
  %.not9 = icmp ne ptr %.pn8, @iommu_sva_mms
  %or.cond.not = select i1 %.b, i1 %.not9, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %mmu_notifier_arch_invalidate_secondary_tlbs.exit
  %.pn10 = phi ptr [ %.pn, %mmu_notifier_arch_invalidate_secondary_tlbs.exit ], [ %.pn8, %bb.a ] ; 2 uses
  %i.a = getelementptr i8, ptr %.pn10, i64 -24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 1584
  %.val.i = load ptr, ptr %i.c, align 16
  %.not3.i = icmp eq ptr %.val.i, null
  br i1 %.not3.i, label %mmu_notifier_arch_invalidate_secondary_tlbs.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @__mmu_notifier_arch_invalidate_secondary_tlbs(ptr noundef %i.b, i64 noundef %0, i64 noundef %1) #5
  br label %mmu_notifier_arch_invalidate_secondary_tlbs.exit

mmu_notifier_arch_invalidate_secondary_tlbs.exit: ; preds = %.lr.ph, %bb.b
  %.pn = load ptr, ptr %.pn10, align 8            ; 2 uses
  %.not = icmp eq ptr %.pn, @iommu_sva_mms
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !19

.loopexit:                                        ; preds = %mmu_notifier_arch_invalidate_secondary_tlbs.exit, %bb.a
  tail call void @mutex_unlock(ptr noundef nonnull @iommu_sva_lock) #5
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @iommu_alloc_global_pasid(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -16, 1) i32 @iommu_sva_iopf_handler(ptr noundef initializes((104, 112)) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 104        ; 2 uses
  store i64 4503599625273344, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %0, i64 112        ; 3 uses
  store volatile ptr %i.d, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %0, i64 120
  store volatile ptr %i.d, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %0, i64 128
  store ptr @iommu_sva_handle_iopf, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %i.b, i64 56
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %i.i, ptr noundef %i.c) #5
  %. = select i1 %i.j, i32 0, i32 -16
  ret i32 %.
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @iommu_sva_handle_iopf(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -40        ; 3 uses
  %.pn18 = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.b = icmp eq ptr %.pn18, %i.a
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %iommu_sva_handle_mm.exit
  %.pn19 = phi ptr [ %.pn18, %.lr.ph ], [ %.pn, %iommu_sva_handle_mm.exit ] ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 80
  %i.g = load ptr, ptr %i.f, align 8              ; 7 uses
  %i.h = getelementptr i8, ptr %.pn19, i64 -40
  %i.i = load i32, ptr %i.h, align 8
  %i.j = and i32 %i.i, 1
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.g, i64 132      ; 3 uses
  %i.l = load volatile i32, ptr %i.k, align 4     ; 2 uses
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph.i.i, !prof !21

.lr.ph.i.i:                                       ; preds = %bb.c, %arch_atomic_try_cmpxchg.exit.i.i
  %.04.i.i = phi i32 [ %i.r, %arch_atomic_try_cmpxchg.exit.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.m = add i32 %.04.i.i, 1
  %i.n = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.k, i32 range(i32 2, 1) %i.m, ptr elementtype(i32) %i.k, i32 %.04.i.i) #7, !srcloc !22 ; 2 uses
  %i.o = extractvalue { i8, i32 } %i.n, 0         ; 2 uses
  %i.p = icmp ult i8 %i.o, 2
  tail call void @llvm.assume(i1 %i.p)
  %i.q = trunc nuw i8 %i.o to i1
  br i1 %i.q, label %mmget_not_zero.exit.i, label %arch_atomic_try_cmpxchg.exit.i.i, !prof !12

arch_atomic_try_cmpxchg.exit.i.i:                 ; preds = %.lr.ph.i.i
  %i.r = extractvalue { i8, i32 } %i.n, 1         ; 2 uses
  %.not7.i.i = icmp eq i32 %i.r, 0
  br i1 %.not7.i.i, label %._crit_edge, label %.lr.ph.i.i, !prof !23

mmget_not_zero.exit.i:                            ; preds = %.lr.ph.i.i
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_start_locking, i64 8), i1 false) #7
          to label %__mmap_lock_trace_start_locking.exit.i.i [label %bb.d], !srcloc !24

bb.d:                                             ; preds = %mmget_not_zero.exit.i
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %i.g, i1 noundef zeroext false) #5
  br label %__mmap_lock_trace_start_locking.exit.i.i

__mmap_lock_trace_start_locking.exit.i.i:         ; preds = %bb.d, %mmget_not_zero.exit.i
  %i.s = getelementptr i8, ptr %i.g, i64 464      ; 2 uses
  tail call void @down_read(ptr noundef %i.s) #5
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_acquire_returned, i64 8), i1 false) #7
          to label %mmap_read_lock.exit.i [label %bb.e], !srcloc !24

bb.e:                                             ; preds = %__mmap_lock_trace_start_locking.exit.i.i
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %i.g, i1 noundef zeroext false, i1 noundef zeroext true) #5
  br label %mmap_read_lock.exit.i

mmap_read_lock.exit.i:                            ; preds = %bb.e, %__mmap_lock_trace_start_locking.exit.i.i
  %i.t = getelementptr i8, ptr %.pn19, i64 -24    ; 2 uses
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr i8, ptr %i.g, i64 64
  %i.w = tail call ptr @mtree_load(ptr noundef %i.v, i64 noundef %i.u) #5 ; 3 uses
  %.not34.i = icmp eq ptr %i.w, null
  br i1 %.not34.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %mmap_read_lock.exit.i
  %i.x = getelementptr i8, ptr %.pn19, i64 -28
  %i.y = load i32, ptr %i.x, align 4              ; 4 uses
  %.23143.i = and i32 %i.y, 7
  %.231.i = zext nneg i32 %.23143.i to i64
  %i.z = getelementptr i8, ptr %i.w, i64 32
  %i.aa = load i64, ptr %i.z, align 32
  %i.ab = xor i64 %i.aa, -1
  %i.ac = and i64 %.231.i, %i.ab
  %.not39.i = icmp eq i64 %i.ac, 0
  br i1 %.not39.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %1 = and i32 %i.y, 2
  %.not36.i = icmp eq i32 %1, 0
  %.028.i = select i1 %.not36.i, i32 128, i32 129
  %i.ad = shl i32 %i.y, 6
  %i.ae = and i32 %i.ad, 256
  %i.af = shl i32 %i.y, 3
  %i.ag = and i32 %i.af, 64
  %.1.i = or disjoint i32 %i.ag, %i.ae
  %i.ah = or disjoint i32 %.1.i, %.028.i
  %.2.i = xor i32 %i.ah, 64
  %i.ai = load i64, ptr %i.t, align 8
  %i.aj = tail call i32 @handle_mm_fault(ptr noundef nonnull %i.w, i64 noundef %i.ai, i32 noundef %.2.i, ptr noundef null) #5
  %i.ak = and i32 %i.aj, 2163
  %.not40.i = icmp ne i32 %i.ak, 0
  %i.al = zext i1 %.not40.i to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %mmap_read_lock.exit.i
  %.0.i = phi i32 [ 1, %bb.f ], [ %i.al, %bb.g ], [ 1, %mmap_read_lock.exit.i ] ; 2 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_released, i64 8), i1 false) #7
          to label %iommu_sva_handle_mm.exit [label %bb.i], !srcloc !24

bb.i:                                             ; preds = %bb.h
  tail call void @__mmap_lock_do_trace_released(ptr noundef %i.g, i1 noundef zeroext false) #5
  br label %iommu_sva_handle_mm.exit

iommu_sva_handle_mm.exit:                         ; preds = %bb.h, %bb.i
  tail call void @up_read(ptr noundef %i.s) #5
  tail call void @mmput(ptr noundef %i.g) #5
  %.pn = load ptr, ptr %.pn19, align 8            ; 2 uses
  %i.am = icmp eq ptr %.pn, %i.a
  %i.an = icmp ne i32 %.0.i, 0
  %or.cond = select i1 %i.am, i1 true, i1 %i.an
  br i1 %or.cond, label %._crit_edge, label %bb.b, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.c, %bb.b, %iommu_sva_handle_mm.exit, %arch_atomic_try_cmpxchg.exit.i.i, %bb.a
  %.017.lcssa = phi i32 [ 0, %bb.a ], [ 1, %arch_atomic_try_cmpxchg.exit.i.i ], [ 1, %bb.c ], [ 1, %bb.b ], [ %.0.i, %iommu_sva_handle_mm.exit ]
  %i.ao = getelementptr i8, ptr %0, i64 -104      ; 2 uses
  tail call void @iopf_group_response(ptr noundef %i.ao, i32 noundef %.017.lcssa) #5
  tail call void @iopf_free_group(ptr noundef %i.ao) #5
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @iopf_group_response(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @iopf_free_group(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @handle_mm_fault(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @mtree_load(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__mmu_notifier_arch_invalidate_secondary_tlbs(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { noredzone nounwind "no-builtin-wcslen" }
attributes #6 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }
attributes #7 = { nounwind }

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
!10 = !{i64 2148021730, i64 2148021769, i64 2148021790, i64 2148021827, i64 2148021850, i64 2148021859}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{null}
!16 = !{i64 2156836549}
!17 = !{i64 2148011524, i64 2148011563, i64 2148011584, i64 2148011621, i64 2148011644, i64 2148011515}
!18 = !{i64 2150373026}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = !{!"branch_weights", i32 1, i32 127}
!22 = !{i64 2148027479, i64 2148027518, i64 2148027539, i64 2148027576, i64 2148027599, i64 2148027608}
!23 = !{!"branch_weights", i32 127, i32 255873}
!24 = !{i64 2148968202, i64 2148968242, i64 2148968359, i64 2148968380, i64 2148968423, i64 2148968438, i64 2148968471, i64 2148968505, i64 2148968529}
end_hunk_0

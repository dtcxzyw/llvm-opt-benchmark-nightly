Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/i915_vma_resource?download=true
inline.NumInlined: 86
inline.NumDeleted: 50
begin_hunk_0_@i915_vma_resource_bind_dep_sync:bb.a
  %i.m = getelementptr i8, ptr %i.l, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp ult i64 %i.n, %.131
  br i1 %i.o, label %vma_res_itree_iter_next.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %0, i64 544
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 104
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr i8, ptr %i.q, i64 128
  %i.u = load i32, ptr %i.t, align 8
  %i.v = zext i32 %i.u to i64
  %i.w = sub i64 %i.s, %i.v
  %i.x = icmp ugt i64 %i.w, %.0
  br i1 %i.x, label %vma_res_itree_iter_next.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i.backedge
  %.pn.i.pn.i = phi ptr [ %.pn.i.pn.i.be, %.preheader.i.backedge ], [ %i.l, %bb.d ] ; 6 uses
  %i.y = getelementptr i8, ptr %.pn.i.pn.i, i64 16
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  %i.aa = getelementptr i8, ptr %i.z, i64 24
  %i.ab = load i64, ptr %i.aa, align 8
  %.not22.i.i = icmp ugt i64 %.131, %i.ab
  br i1 %.not22.i.i, label %bb.f, label %.preheader.i.backedge

bb.f:                                             ; preds = %bb.e, %.preheader.i
  %i.ac = getelementptr i8, ptr %.pn.i.pn.i, i64 104
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr i8, ptr %.pn.i.pn.i, i64 128
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = sub i64 %i.ad, %i.ag
  %.not23.i.i = icmp ugt i64 %i.ah, %.0
  br i1 %.not23.i.i, label %vma_res_itree_iter_next.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr i8, ptr %.pn.i.pn.i, i64 112
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = add i64 %i.ad, -1
  %i.al = add i64 %i.ak, %i.ag
  %i.am = add i64 %i.al, %i.aj
  %.not24.i.i = icmp ugt i64 %.131, %i.am
  br i1 %.not24.i.i, label %bb.h, label %vma_res_itree_iter_first.exit

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr i8, ptr %.pn.i.pn.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  br label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %bb.h, %bb.e
  %.pn.i.pn.i.be = phi ptr [ %i.z, %bb.e ], [ %i.ao, %bb.h ]
  br label %.preheader.i

vma_res_itree_iter_first.exit:                    ; preds = %bb.g
  %.019.i.le.i = getelementptr i8, ptr %.pn.i.pn.i, i64 -144 ; 2 uses
  %.not42 = icmp eq ptr %.019.i.le.i, null
  br i1 %.not42, label %vma_res_itree_iter_next.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %vma_res_itree_iter_first.exit, %vma_res_itree_iter_next.exit
  %.01043 = phi ptr [ %.1, %vma_res_itree_iter_next.exit ], [ %.019.i.le.i, %vma_res_itree_iter_first.exit ] ; 3 uses
  %i.ap = tail call i64 @dma_fence_wait_timeout(ptr noundef nonnull %.01043, i1 noundef zeroext %3, i64 noundef 9223372036854775807) #8
  %i.aq = tail call range(i64 -9223372036854775808, 1) i64 @llvm.smin.i64(i64 %i.ap, i64 0)
  %i.ar = trunc i64 %i.aq to i32                  ; 2 uses
  %.not14 = icmp eq i32 %i.ar, 0
  br i1 %.not14, label %bb.i, label %vma_res_itree_iter_next.exit.thread

bb.i:                                             ; preds = %.lr.ph
  %i.as = getelementptr i8, ptr %.01043, i64 152
  %i.at = load ptr, ptr %i.as, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.r, %bb.i
  %.031.i = phi ptr [ %i.at, %bb.i ], [ %i.bt, %bb.r ] ; 3 uses
  %.028.i = phi ptr [ %.01043, %bb.i ], [ %i.br, %bb.r ]
  %.not.i16 = icmp eq ptr %.031.i, null
  br i1 %.not.i16, label %vma_res_itree_subtree_search.exit.thread.i.preheader, label %bb.k

vma_res_itree_subtree_search.exit.thread.i.preheader: ; preds = %bb.k, %bb.j
  br label %vma_res_itree_subtree_search.exit.thread.i

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr i8, ptr %.031.i, i64 24
  %i.av = load i64, ptr %i.au, align 8
  %.not35.i = icmp ugt i64 %.131, %i.av
  br i1 %.not35.i, label %vma_res_itree_subtree_search.exit.thread.i.preheader, label %.preheader.i17

.preheader.i17:                                   ; preds = %bb.k, %.preheader.i17.backedge
  %.031.pn.i = phi ptr [ %.031.pn.i.be, %.preheader.i17.backedge ], [ %.031.i, %bb.k ] ; 6 uses
  %i.aw = getelementptr i8, ptr %.031.pn.i, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8            ; 3 uses
  %.not.i.i18 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i18, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader.i17
  %i.ay = getelementptr i8, ptr %i.ax, i64 24
  %i.az = load i64, ptr %i.ay, align 8
  %.not22.i.i19 = icmp ugt i64 %.131, %i.az
  br i1 %.not22.i.i19, label %bb.m, label %.preheader.i17.backedge

bb.m:                                             ; preds = %bb.l, %.preheader.i17
  %i.ba = getelementptr i8, ptr %.031.pn.i, i64 104
  %i.bb = load i64, ptr %i.ba, align 8            ; 2 uses
  %i.bc = getelementptr i8, ptr %.031.pn.i, i64 128
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = zext i32 %i.bd to i64                   ; 2 uses
  %i.bf = sub i64 %i.bb, %i.be
  %.not23.i.i22 = icmp ugt i64 %i.bf, %.0
  br i1 %.not23.i.i22, label %vma_res_itree_iter_next.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr i8, ptr %.031.pn.i, i64 112
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = add i64 %i.bb, -1
  %i.bj = add i64 %i.bi, %i.be
  %i.bk = add i64 %i.bj, %i.bh
  %.not24.i.i23 = icmp ugt i64 %.131, %i.bk
  br i1 %.not24.i.i23, label %bb.o, label %vma_res_itree_subtree_search.exit.loopexit.split.loop.exit.i

bb.o:                                             ; preds = %bb.n
  %i.bl = getelementptr i8, ptr %.031.pn.i, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  br label %.preheader.i17.backedge

.preheader.i17.backedge:                          ; preds = %bb.o, %bb.l
  %.031.pn.i.be = phi ptr [ %i.ax, %bb.l ], [ %i.bm, %bb.o ]
  br label %.preheader.i17

vma_res_itree_subtree_search.exit.thread.i:       ; preds = %vma_res_itree_subtree_search.exit.thread.i.preheader, %bb.p
  %.129.i = phi ptr [ %i.br, %bb.p ], [ %.028.i, %vma_res_itree_subtree_search.exit.thread.i.preheader ]
  %i.bn = getelementptr i8, ptr %.129.i, i64 144  ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = and i64 %i.bo, -4                       ; 2 uses
  %.not36.i = icmp eq i64 %i.bp, 0
  br i1 %.not36.i, label %vma_res_itree_iter_next.exit.thread, label %bb.p

bb.p:                                             ; preds = %vma_res_itree_subtree_search.exit.thread.i
  %i.bq = inttoptr i64 %i.bp to ptr               ; 5 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 -144   ; 3 uses
  %i.bs = getelementptr i8, ptr %i.bq, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.bu = icmp eq ptr %i.bn, %i.bt
  br i1 %i.bu, label %vma_res_itree_subtree_search.exit.thread.i, label %bb.q, !llvm.loop !2

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr i8, ptr %i.bq, i64 104
  %i.bw = load i64, ptr %i.bv, align 8            ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bq, i64 128
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = sub i64 %i.bw, %i.bz
  %i.cb = icmp ult i64 %.0, %i.ca
  br i1 %i.cb, label %vma_res_itree_iter_next.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cc = getelementptr i8, ptr %i.bq, i64 112
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = add i64 %i.bw, -1
  %i.cf = add i64 %i.ce, %i.bz
  %i.cg = add i64 %i.cf, %i.cd
  %.not37.i = icmp ugt i64 %.131, %i.cg
  br i1 %.not37.i, label %bb.j, label %vma_res_itree_iter_next.exit

vma_res_itree_subtree_search.exit.loopexit.split.loop.exit.i: ; preds = %bb.n
  %.019.i.le.i24 = getelementptr i8, ptr %.031.pn.i, i64 -144
  br label %vma_res_itree_iter_next.exit

vma_res_itree_iter_next.exit:                     ; preds = %bb.r, %vma_res_itree_subtree_search.exit.loopexit.split.loop.exit.i
  %.1 = phi ptr [ %.019.i.le.i24, %vma_res_itree_subtree_search.exit.loopexit.split.loop.exit.i ], [ %i.br, %bb.r ] ; 2 uses
  %.not = icmp eq ptr %.1, null
  br i1 %.not, label %vma_res_itree_iter_next.exit.thread, label %.lr.ph, !llvm.loop !25

vma_res_itree_iter_next.exit.thread:              ; preds = %bb.f, %vma_res_itree_iter_next.exit, %.lr.ph, %bb.q, %bb.m, %vma_res_itree_subtree_search.exit.thread.i, %bb.d, %bb.c, %i915_vma_resource_color_adjust_range.exit, %vma_res_itree_iter_first.exit
  %.2 = phi i32 [ 0, %vma_res_itree_iter_first.exit ], [ 0, %bb.q ], [ 0, %vma_res_itree_iter_next.exit ], [ 0, %bb.m ], [ 0, %i915_vma_resource_color_adjust_range.exit ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %vma_res_itree_subtree_search.exit.thread.i ], [ %i.ar, %.lr.ph ], [ 0, %bb.f ]
  ret i32 %.2
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @i915_vma_resource_bind_dep_sync_all(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 384        ; 4 uses
  tail call void @mutex_lock(ptr noundef %i.a) #8
  %i.b = getelementptr i8, ptr %0, i64 536        ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i21 = icmp eq ptr %i.c, null
  br i1 %.not.i21, label %.thread.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i.backedge
  %.pn.i.pn.i = phi ptr [ %.pn.i.pn.i.be, %.preheader.i.backedge ], [ %i.c, %bb.a ] ; 3 uses
  %i.d = getelementptr i8, ptr %.pn.i.pn.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %vma_res_itree_iter_first.exit, label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %.preheader.i, %dma_fence_put.exit.backedge
  %.pn.i.pn.i.be = phi ptr [ %i.e, %.preheader.i ], [ %i.u, %dma_fence_put.exit.backedge ]
  br label %.preheader.i, !llvm.loop !26

vma_res_itree_iter_first.exit:                    ; preds = %.preheader.i
  %.019.i.le.i = getelementptr i8, ptr %.pn.i.pn.i, i64 -144 ; 2 uses
  %.not = icmp eq ptr %.019.i.le.i, null
  br i1 %.not, label %.thread.thread, label %bb.b

bb.b:                                             ; preds = %vma_res_itree_iter_first.exit
  %i.f = getelementptr i8, ptr %.pn.i.pn.i, i64 -88 ; 8 uses
  %i.g = load volatile i32, ptr %i.f, align 8     ; 2 uses
  %.old1.not.i.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.old1.not.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.b, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.m, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.h = add i32 %.0.i.i.i.i.i, 1
  %i.i = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.f, i32 %i.h, ptr elementtype(i32) %i.f, i32 %.0.i.i.i.i.i) #10, !srcloc !17 ; 2 uses
  %i.j = extractvalue { i8, i32 } %i.i, 0         ; 2 uses
  %i.k = icmp ult i8 %i.j, 2
  tail call void @llvm.assume(i1 %i.k)
  %i.l = trunc nuw i8 %i.j to i1
  br i1 %i.l, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i.i.i, !prof !18

arch_atomic_try_cmpxchg.exit.i.i.i.i.i:           ; preds = %.preheader.i.i.i.i.i
  %i.m = extractvalue { i8, i32 } %i.i, 1         ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i, label %.preheader.i.i.i.i.i, !llvm.loop !0

arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i:    ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i.i.i, %.preheader.i.i.i.i.i, %bb.b
  %.2.i.i.i.i.i = phi i32 [ 0, %bb.b ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i ], [ %.0.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.o = add i32 %.2.i.i.i.i.i, 1
  %i.p = or i32 %i.o, %.2.i.i.i.i.i
  %.not.i.i.i.i.i = icmp sgt i32 %i.p, -1
  br i1 %.not.i.i.i.i.i, label %dma_fence_get_rcu.exit, label %bb.c, !prof !18

bb.c:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %i.f, i32 noundef 0) #8
  br label %dma_fence_get_rcu.exit

dma_fence_get_rcu.exit:                           ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i, %bb.c
  %.not3.i = icmp eq i32 %.2.i.i.i.i.i, 0
  tail call void @mutex_unlock(ptr noundef %i.a) #8
  br i1 %.not3.i, label %dma_fence_put.exit.backedge, label %bb.d

.thread.thread:                                   ; preds = %vma_res_itree_iter_first.exit, %dma_fence_put.exit.backedge, %bb.a
  tail call void @mutex_unlock(ptr noundef %i.a) #8
  ret void

bb.d:                                             ; preds = %dma_fence_get_rcu.exit
  %i.q = tail call i64 @dma_fence_wait_timeout(ptr noundef nonnull %.019.i.le.i, i1 noundef zeroext false, i64 noundef 9223372036854775807) #8 ; 0 uses
  %i.r = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.f, i32 -1, ptr elementtype(i32) %i.f) #10, !srcloc !13 ; 2 uses
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp slt i32 %i.r, 1
  br i1 %i.t, label %.split19, label %dma_fence_put.exit.backedge, !prof !14

.split19:                                         ; preds = %bb.e
  tail call void @refcount_warn_saturate(ptr noundef %i.f, i32 noundef 3) #8
  br label %dma_fence_put.exit.backedge

dma_fence_put.exit.backedge:                      ; preds = %dma_fence_get_rcu.exit, %.split19, %.split, %bb.e
  tail call void @mutex_lock(ptr noundef %i.a) #8
  %i.u = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %.thread.thread, label %.preheader.i.backedge

.split:                                           ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !15
  tail call void @dma_fence_release(ptr noundef %i.f) #8, !inline_history !1
  br label %dma_fence_put.exit.backedge
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @i915_vma_resource_bind_dep_await(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = add i64 %3, %2                           ; 2 uses
  %i.b = add i64 %i.a, -1                         ; 2 uses
  %i.c = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #11, !srcloc !28
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr i8, ptr %i.d, i64 44
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 2048
  %.not.i = icmp eq i32 %i.g, 0
  %i.h = and i32 %5, 1024
  %i.i = icmp ne i32 %i.h, 0
  %or.cond.i = and i1 %i.i, %.not.i
  br i1 %or.cond.i, label %bb.b, label %might_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 @__SCT__might_resched() #8 ; 0 uses
  br label %might_alloc.exit

might_alloc.exit:                                 ; preds = %bb.a, %bb.b
  %i.k = tail call i32 @__SCT__might_resched() #8 ; 0 uses
  %i.l = getelementptr i8, ptr %0, i64 520
  %i.m = load i8, ptr %i.l, align 8
  %i.n = trunc i8 %i.m to i1
  br i1 %i.n, label %i915_vm_has_cache_coloring.exit.i, label %i915_vma_resource_color_adjust_range.exit

i915_vm_has_cache_coloring.exit.i:                ; preds = %might_alloc.exit
  %i.o = getelementptr i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  %.not4.i = icmp eq ptr %i.p, null
  br i1 %.not4.i, label %i915_vma_resource_color_adjust_range.exit, label %bb.c

bb.c:                                             ; preds = %i915_vm_has_cache_coloring.exit.i
  %.not.i20 = icmp eq i64 %2, 0
  %i.q = add i64 %2, -4096
  %spec.select = select i1 %.not.i20, i64 0, i64 %i.q
  %i.r = add i64 %i.a, 4095
  br label %i915_vma_resource_color_adjust_range.exit

i915_vma_resource_color_adjust_range.exit:        ; preds = %might_alloc.exit, %i915_vm_has_cache_coloring.exit.i, %bb.c
  %.137 = phi i64 [ %2, %i915_vm_has_cache_coloring.exit.i ], [ %spec.select, %bb.c ], [ %2, %might_alloc.exit ] ; 7 uses
  %.0 = phi i64 [ %i.b, %i915_vm_has_cache_coloring.exit.i ], [ %i.r, %bb.c ], [ %i.b, %might_alloc.exit ] ; 4 uses
  %i.s = getelementptr i8, ptr %0, i64 536
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %.not.i21 = icmp eq ptr %i.t, null
  br i1 %.not.i21, label %vma_res_itree_iter_next.exit.thread, label %bb.d

bb.d:                                             ; preds = %i915_vma_resource_color_adjust_range.exit
  %i.u = getelementptr i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp ult i64 %i.v, %.137
  br i1 %i.w, label %vma_res_itree_iter_next.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr i8, ptr %0, i64 544
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 104
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %i.y, i64 128
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = zext i32 %i.ac to i64
  %i.ae = sub i64 %i.aa, %i.ad
  %i.af = icmp ugt i64 %i.ae, %.0
  br i1 %i.af, label %vma_res_itree_iter_next.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e, %.preheader.i.backedge
  %.pn.i.pn.i = phi ptr [ %.pn.i.pn.i.be, %.preheader.i.backedge ], [ %i.t, %bb.e ] ; 6 uses
  %i.ag = getelementptr i8, ptr %.pn.i.pn.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.preheader.i
  %i.ai = getelementptr i8, ptr %i.ah, i64 24
  %i.aj = load i64, ptr %i.ai, align 8
  %.not22.i.i = icmp ugt i64 %.137, %i.aj
  br i1 %.not22.i.i, label %bb.g, label %.preheader.i.backedge

bb.g:                                             ; preds = %bb.f, %.preheader.i
  %i.ak = getelementptr i8, ptr %.pn.i.pn.i, i64 104
  %i.al = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr i8, ptr %.pn.i.pn.i, i64 128
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = sub i64 %i.al, %i.ao
  %.not23.i.i = icmp ugt i64 %i.ap, %.0
  br i1 %.not23.i.i, label %vma_res_itree_iter_next.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr i8, ptr %.pn.i.pn.i, i64 112
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = add i64 %i.al, -1
  %i.at = add i64 %i.as, %i.ao
  %i.au = add i64 %i.at, %i.ar
  %.not24.i.i = icmp ugt i64 %.137, %i.au
  br i1 %.not24.i.i, label %bb.i, label %vma_res_itree_iter_first.exit

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr i8, ptr %.pn.i.pn.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  br label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %bb.i, %bb.f
  %.pn.i.pn.i.be = phi ptr [ %i.ah, %bb.f ], [ %i.aw, %bb.i ]
  br label %.preheader.i

vma_res_itree_iter_first.exit:                    ; preds = %bb.h
  %.019.i.le.i = getelementptr i8, ptr %.pn.i.pn.i, i64 -144 ; 2 uses
  %.not49 = icmp eq ptr %.019.i.le.i, null
  br i1 %.not49, label %vma_res_itree_iter_next.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %vma_res_itree_iter_first.exit, %vma_res_itree_iter_next.exit
  %.01550 = phi ptr [ %.1, %vma_res_itree_iter_next.exit ], [ %.019.i.le.i, %vma_res_itree_iter_first.exit ] ; 4 uses
  %i.ax = tail call i32 @i915_sw_fence_await_dma_fence(ptr noundef %1, ptr noundef nonnull %.01550, i64 noundef 0, i32 noundef %5) #8
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.az = tail call i64 @dma_fence_wait_timeout(ptr noundef nonnull %.01550, i1 noundef zeroext %4, i64 noundef 9223372036854775807) #8
  %i.ba = tail call range(i64 -9223372036854775808, 1) i64 @llvm.smin.i64(i64 %i.az, i64 0)
  %i.bb = trunc i64 %i.ba to i32                  ; 2 uses
  %.not19 = icmp eq i32 %i.bb, 0
  br i1 %.not19, label %bb.k, label %vma_res_itree_iter_next.exit.thread

bb.k:                                             ; preds = %bb.j, %.lr.ph
  %i.bc = getelementptr i8, ptr %.01550, i64 152
  %i.bd = load ptr, ptr %i.bc, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.t, %bb.k
  %.031.i = phi ptr [ %i.bd, %bb.k ], [ %i.cd, %bb.t ] ; 3 uses
  %.028.i = phi ptr [ %.01550, %bb.k ], [ %i.cb, %bb.t ]
  %.not.i22 = icmp eq ptr %.031.i, null
  br i1 %.not.i22, label %vma_res_itree_subtree_search.exit.thread.i.preheader, label %bb.m

vma_res_itree_subtree_search.exit.thread.i.preheader: ; preds = %bb.m, %bb.l
  br label %vma_res_itree_subtree_search.exit.thread.i

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr i8, ptr %.031.i, i64 24
  %i.bf = load i64, ptr %i.be, align 8
  %.not35.i = icmp ugt i64 %.137, %i.bf
  br i1 %.not35.i, label %vma_res_itree_subtree_search.exit.thread.i.preheader, label %.preheader.i23

.preheader.i23:                                   ; preds = %bb.m, %.preheader.i23.backedge
  %.031.pn.i = phi ptr [ %.031.pn.i.be, %.preheader.i23.backedge ], [ %.031.i, %bb.m ] ; 6 uses
  %i.bg = getelementptr i8, ptr %.031.pn.i, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8            ; 3 uses
  %.not.i.i24 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i24, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.preheader.i23
  %i.bi = getelementptr i8, ptr %i.bh, i64 24
  %i.bj = load i64, ptr %i.bi, align 8
  %.not22.i.i25 = icmp ugt i64 %.137, %i.bj
  br i1 %.not22.i.i25, label %bb.o, label %.preheader.i23.backedge

bb.o:                                             ; preds = %bb.n, %.preheader.i23
  %i.bk = getelementptr i8, ptr %.031.pn.i, i64 104
  %i.bl = load i64, ptr %i.bk, align 8            ; 2 uses
  %i.bm = getelementptr i8, ptr %.031.pn.i, i64 128
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %i.bp = sub i64 %i.bl, %i.bo
  %.not23.i.i28 = icmp ugt i64 %i.bp, %.0
  br i1 %.not23.i.i28, label %vma_res_itree_iter_next.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = getelementptr i8, ptr %.031.pn.i, i64 112
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = add i64 %i.bl, -1
  %i.bt = add i64 %i.bs, %i.bo
  %i.bu = add i64 %i.bt, %i.br
  %.not24.i.i29 = icmp ugt i64 %.137, %i.bu
  br i1 %.not24.i.i29, label %bb.q, label %vma_res_itree_subtree_search.exit.loopexit.split.loop.exit.i

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr i8, ptr %.031.pn.i, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  br label %.preheader.i23.backedge

.preheader.i23.backedge:                          ; preds = %bb.q, %bb.n
  %.031.pn.i.be = phi ptr [ %i.bh, %bb.n ], [ %i.bw, %bb.q ]
  br label %.preheader.i23

vma_res_itree_subtree_search.exit.thread.i:       ; preds = %vma_res_itree_subtree_search.exit.thread.i.preheader, %bb.r
  %.129.i = phi ptr [ %i.cb, %bb.r ], [ %.028.i, %vma_res_itree_subtree_search.exit.thread.i.preheader ]
  %i.bx = getelementptr i8, ptr %.129.i, i64 144  ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = and i64 %i.by, -4                       ; 2 uses
  %.not36.i = icmp eq i64 %i.bz, 0
  br i1 %.not36.i, label %vma_res_itree_iter_next.exit.thread, label %bb.r

bb.r:                                             ; preds = %vma_res_itree_subtree_search.exit.thread.i
  %i.ca = inttoptr i64 %i.bz to ptr               ; 5 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 -144   ; 3 uses
  %i.cc = getelementptr i8, ptr %i.ca, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %i.ce = icmp eq ptr %i.bx, %i.cd
  br i1 %i.ce, label %vma_res_itree_subtree_search.exit.thread.i, label %bb.s, !llvm.loop !2

bb.s:                                             ; preds = %bb.r
  %i.cf = getelementptr i8, ptr %i.ca, i64 104
  %i.cg = load i64, ptr %i.cf, align 8            ; 2 uses
  %i.ch = getelementptr i8, ptr %i.ca, i64 128
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %i.ck = sub i64 %i.cg, %i.cj
  %i.cl = icmp ult i64 %.0, %i.ck
  br i1 %i.cl, label %vma_res_itree_iter_next.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cm = getelementptr i8, ptr %i.ca, i64 112
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = add i64 %i.cg, -1
  %i.cp = add i64 %i.co, %i.cj
  %i.cq = add i64 %i.cp, %i.cn
  %.not37.i = icmp ugt i64 %.137, %i.cq
  br i1 %.not37.i, label %bb.l, label %vma_res_itree_iter_next.exit

vma_res_itree_subtree_search.exit.loopexit.split.loop.exit.i: ; preds = %bb.p
  %.019.i.le.i30 = getelementptr i8, ptr %.031.pn.i, i64 -144
  br label %vma_res_itree_iter_next.exit

vma_res_itree_iter_next.exit:                     ; preds = %bb.t, %vma_res_itree_subtree_search.exit.loopexit.split.loop.exit.i
  %.1 = phi ptr [ %.019.i.le.i30, %vma_res_itree_subtree_search.exit.loopexit.split.loop.exit.i ], [ %i.cb, %bb.t ] ; 2 uses
  %.not = icmp eq ptr %.1, null
  br i1 %.not, label %vma_res_itree_iter_next.exit.thread, label %.lr.ph, !llvm.loop !27

vma_res_itree_iter_next.exit.thread:              ; preds = %bb.g, %vma_res_itree_iter_next.exit, %bb.j, %bb.s, %bb.o, %vma_res_itree_subtree_search.exit.thread.i, %bb.e, %bb.d, %i915_vma_resource_color_adjust_range.exit, %vma_res_itree_iter_first.exit
  %.2 = phi i32 [ 0, %vma_res_itree_iter_first.exit ], [ 0, %bb.s ], [ 0, %vma_res_itree_iter_next.exit ], [ 0, %bb.o ], [ 0, %i915_vma_resource_color_adjust_range.exit ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %vma_res_itree_subtree_search.exit.thread.i ], [ %i.bb, %bb.j ], [ 0, %bb.g ]
  ret i32 %.2
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_sw_fence_await_dma_fence(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @i915_vma_resource_module_exit() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr @slab_vma_resources, align 8
  tail call void @kmem_cache_destroy(ptr noundef %i.a) #8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local range(i32 -12, 1) i32 @i915_vma_resource_module_init() local_unnamed_addr #2 section ".init.text" align 16 prefalign(16) {
bb.a:
  %0 = alloca %struct.kmem_cache_args, align 8    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  store i32 8, ptr %0, align 8
  %i.a = call ptr @__kmem_cache_create_args(ptr noundef @.str, i32 noundef 296, ptr noundef nonnull %0, i32 noundef 16) #8 ; 2 uses
  store ptr %i.a, ptr @slab_vma_resources, align 8
  %.not = icmp eq ptr %i.a, null
  %. = select i1 %.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__kmem_cache_create_args(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dma_fence_signal(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_runtime_pm_put_unchecked(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rb_erase_color(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal void @vma_res_itree_augment_rotate(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((24, 32)) %1) #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %1, i64 24
  store i64 %i.b, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %0, i64 104
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %0, i64 112
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %0, i64 128
  %i.i = load i32, ptr %i.h, align 8
  %i.j = zext i32 %i.i to i64
  %i.k = add i64 %i.e, -1
  %i.l = add i64 %i.k, %i.g
  %i.m = add i64 %i.l, %i.j                       ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr i8, ptr %i.o, i64 24
  %i.q = load i64, ptr %i.p, align 8
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %i.m)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.022.i = phi i64 [ %i.m, %bb.a ], [ %spec.select.i, %bb.b ] ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not28.i = icmp eq ptr %i.s, null
  br i1 %.not28.i, label %vma_res_itree_augment_compute_max.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr i8, ptr %i.s, i64 24
  %i.u = load i64, ptr %i.t, align 8
  %spec.select29.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %.022.i)
  br label %vma_res_itree_augment_compute_max.exit

vma_res_itree_augment_compute_max.exit:           ; preds = %bb.c, %bb.d
  %.1.i = phi i64 [ %.022.i, %bb.c ], [ %spec.select29.i, %bb.d ]
  store i64 %.1.i, ptr %i.a, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rb_insert_augmented(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal noundef nonnull ptr @get_driver_name(ptr nofree readnone captures(none) %0) #6 align 16 prefalign(16) {
bb.a:
  ret ptr @.str.1
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal noundef nonnull ptr @get_timeline_name(ptr nofree readnone captures(none) %0) #6 align 16 prefalign(16) {
bb.a:
  ret ptr @.str.2
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @unbind_fence_release(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  tail call void @call_rcu(ptr noundef %i.a, ptr noundef @unbind_fence_free_rcu) #8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @unbind_fence_free_rcu(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -16        ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %i915_vma_resource_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @slab_vma_resources, align 8
  tail call void @kmem_cache_free(ptr noundef %i.b, ptr noundef nonnull %i.a) #8
  br label %i915_vma_resource_free.exit

i915_vma_resource_free.exit:                      ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i915_vma_resource_unbind_work(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -72        ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 212
  %i.c = load i8, ptr %i.b, align 4
  %i.d = and i8 %i.c, 8
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 104
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef %i.f, ptr noundef %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call fastcc void @__i915_vma_resource_unhold(ptr noundef %i.a) #9, !srcloc !19
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %i915_vma_resource_put.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %0, i64 -16        ; 4 uses
  %i.l = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.k, i32 -1, ptr elementtype(i32) %i.k) #10, !srcloc !13 ; 2 uses
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = icmp slt i32 %i.l, 1
  br i1 %i.n, label %bb.f, label %i915_vma_resource_put.exit, !prof !14

bb.f:                                             ; preds = %bb.e
  tail call void @refcount_warn_saturate(ptr noundef %i.k, i32 noundef 3) #8
  br label %i915_vma_resource_put.exit

bb.g:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !15
  tail call void @dma_fence_release(ptr noundef %i.k) #8, !inline_history !1
  br label %i915_vma_resource_put.exit

i915_vma_resource_put.exit:                       ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { noredzone nounwind "no-builtin-wcslen" }
attributes #9 = { noredzone "no-builtin-wcslen" }
attributes #10 = { nounwind }
attributes #11 = { nounwind memory(none) }

!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !{!0, !16}
!1 = distinct !{null}
!2 = distinct !{!2, !16}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 8, !"cf-protection-branch", i32 1}
!5 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!7 = !{i32 1, !"Code Model", i32 2}
!8 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!9 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!10 = !{i32 1, !"override-stack-alignment", i32 8}
!11 = !{i32 4, !"SkipRaxSetup", i32 1}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!13 = !{i64 2148094369, i64 2148094408, i64 2148094429, i64 2148094466, i64 2148094489, i64 2148094498}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{i64 2150795958}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{i64 2148100118, i64 2148100157, i64 2148100178, i64 2148100215, i64 2148100238, i64 2148100247}
!18 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!19 = !{i64 5348}
!20 = !{i64 4247}
!21 = distinct !{!21, !16}
!22 = distinct !{null, null}
!23 = distinct !{!23, !16}
!24 = !{ptr @i915_vma_resource_unbind_work}
!25 = distinct !{!25, !16}
!26 = distinct !{!26, !16}
!27 = distinct !{!27, !16}
!28 = !{i64 2149665782}
end_hunk_0

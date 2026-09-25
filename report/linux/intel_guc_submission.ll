Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_guc_submission?download=true
inline.NumInlined: 1050
inline.NumDeleted: 350
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@i915_request_put:bb.a

bb.e:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !33
  tail call void @dma_fence_release(ptr noundef %i.a) #21, !inline_history !3
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_lock() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_unlock() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @lrc_init_regs(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @lrc_update_regs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none)
define internal ptr @guc_virtual_get_sibling(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #10 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4940
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, %i.b
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.016 = phi i32 [ %i.g, %bb.a ], [ %i.m, %bb.c ] ; 3 uses
  %.015 = phi i32 [ 0, %bb.a ], [ %i.n, %bb.c ]   ; 2 uses
  %.not = icmp eq i32 %.016, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 1, 0) %.016, i32 -1) #20, !srcloc !34 ; 2 uses
  %i.i = zext nneg i32 %i.h to i64
  %i.j = shl nuw i64 1, %i.i
  %i.k = trunc i64 %i.j to i32
  %i.l = xor i32 %i.k, -1
  %i.m = and i32 %.016, %i.l
  %i.n = add i32 %.015, 1
  %i.o = icmp eq i32 %.015, %1
  br i1 %i.o, label %.thread.split.loop.exit22, label %bb.b, !llvm.loop !146

.thread.split.loop.exit22:                        ; preds = %bb.c
  %i.p = getelementptr i8, ptr %i.d, i64 4024
  %i.q = sext i32 %i.h to i64
  %i.r = getelementptr [8 x i8], ptr %i.p, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8
  br label %.thread

.thread:                                          ; preds = %bb.b, %.thread.split.loop.exit22
  %.0 = phi ptr [ %i.s, %.thread.split.loop.exit22 ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__i915_request_unsubmit(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @i915_sched_lookup_priolist(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @i915_request_mark_eio(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @__i915_request_submit(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__i915_priolist_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__tasklet_hi_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_guc_allocate_and_map_vma(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_noprof(i64 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__xa_alloc_cyclic(ptr noundef, ptr noundef, ptr noundef, i64, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_vma_unpin_and_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @update_context_prio(ptr nofree noundef captures(none) %0) unnamed_addr #7 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.context_policy, align 4     ; 8 uses
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 6 uses
  %i.f = getelementptr i8, ptr %i.e, i64 624      ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 516
  %i.h = load i32, ptr %i.g, align 4
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.a
  %.09.lcssa.wide = phi i32 [ 0, %bb.a ], [ 1, %bb.i ], [ 2, %bb.j ], [ 3, %bb.k ] ; 3 uses
  %i.i = trunc nuw nsw i32 %.09.lcssa.wide to i8  ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 512        ; 3 uses
  %i.k = load i8, ptr %i.j, align 8
  %i.l = icmp eq i8 %i.k, %i.i
  br i1 %i.l, label %submission_disabled.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.e, i64 1656
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %submission_disabled.exit.thread.i, label %bb.d, !prof !32

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %i.n, i64 56
  %i.p = load volatile i32, ptr %i.o, align 4
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %submission_disabled.exit.i, label %submission_disabled.exit.thread.i, !prof !19

submission_disabled.exit.i:                       ; preds = %bb.d
  %i.q = getelementptr i8, ptr %i.e, i64 3488
  %i.r = load volatile i64, ptr %i.q, align 8
  %.in.i.i.i = icmp slt i64 %i.r, 0
  br i1 %.in.i.i.i, label %submission_disabled.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %submission_disabled.exit.i
  %i.s = getelementptr i8, ptr %0, i64 436
  %.val.i = load i32, ptr %i.s, align 4
  %i.t = and i32 %.val.i, 64
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %submission_disabled.exit.thread.i, label %bb.f

submission_disabled.exit.thread.i:                ; preds = %bb.e, %submission_disabled.exit.i, %bb.d, %bb.c, %bb.b
  store i8 %i.i, ptr %i.j, align 8
  br label %guc_context_set_prio.exit

bb.f:                                             ; preds = %bb.e
  store i8 %i.i, ptr %i.j, align 8
  %i.u = getelementptr i8, ptr %i.e, i64 1908
  %i.v = load i32, ptr %i.u, align 4
  %i.w = shl i32 %i.v, 16
  %i.x = getelementptr i8, ptr %i.e, i64 1912
  %i.y = load i32, ptr %i.x, align 8
  %i.z = shl i32 %i.y, 8
  %i.aa = or i32 %i.z, %i.w
  %i.ab = getelementptr i8, ptr %i.e, i64 1916
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = or i32 %i.aa, %i.ac
  %i.ae = icmp ugt i32 %i.ad, 65535
  %i.af = getelementptr i8, ptr %0, i64 624       ; 2 uses
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ag, i8 0, i64 32, i1 false), !annotation !41
  %i.ah = load i16, ptr %i.af, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store i32 4107, ptr %i.ai, align 4
  %i.aj = zext i16 %i.ah to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.aj, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 537067521, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %.09.lcssa.wide, ptr %i.am, align 4
  store i32 1, ptr %1, align 4
  %i.an = call fastcc i32 @guc_submission_send_busy_loop(ptr noundef %i.f, ptr noundef nonnull %i.ai, i32 noundef 2, i32 noundef 0, i1 noundef zeroext true) #22, !srcloc !49 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %guc_context_set_prio.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 4101, ptr %i.a, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ap = load i16, ptr %i.af, align 8
  %i.aq = zext i16 %i.ap to i32
  store i32 %i.aq, ptr %i.ao, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.09.lcssa.wide, ptr %i.ar, align 4
  %i.as = call fastcc i32 @guc_submission_send_busy_loop(ptr noundef %i.f, ptr noundef nonnull %i.a, i32 noundef 3, i32 noundef 0, i1 noundef zeroext true) #22, !srcloc !147 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %guc_context_set_prio.exit

bb.i:                                             ; preds = %bb.a
  %i.at = getelementptr i8, ptr %0, i64 520
  %i.au = load i32, ptr %i.at, align 8
  %.not.1 = icmp eq i32 %i.au, 0
  br i1 %.not.1, label %bb.j, label %bb.b

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr i8, ptr %0, i64 524
  %i.aw = load i32, ptr %i.av, align 4
  %.not.2 = icmp eq i32 %i.aw, 0
  br i1 %.not.2, label %bb.k, label %bb.b

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr i8, ptr %0, i64 528
  %i.ay = load i32, ptr %i.ax, align 8
  %.not.3 = icmp eq i32 %i.ay, 0
  br i1 %.not.3, label %guc_context_set_prio.exit, label %bb.b

guc_context_set_prio.exit:                        ; preds = %bb.k, %bb.h, %bb.g, %submission_disabled.exit.thread.i
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @guc_submission_send_busy_loop(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef range(i32 0, 3) %3, i1 noundef zeroext %4) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ne i32 %3, 0                        ; 2 uses
  br i1 %i.a, label %.split12, label %.split

.split:                                           ; preds = %bb.a
  %i.b = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count) #25, !srcloc !43
  %i.c = and i32 %i.b, 2147483647
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %.thread.i.thread

bb.b:                                             ; preds = %.split
  %i.d = tail call i64 asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !44
  %i.e = and i64 %i.d, 512
  %.not.i.i = icmp ne i64 %i.e, 0                 ; 2 uses
  %or.cond.i = select i1 %4, i1 %.not.i.i, i1 false
  br i1 %or.cond.i, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__SCT__might_resched() #21 ; 0 uses
  br label %.thread.i

.thread.i:                                        ; preds = %bb.c, %bb.b
  %i.g = phi i1 [ %.not.i.i, %bb.b ], [ true, %bb.c ]
  %i.h = getelementptr i8, ptr %0, i64 640        ; 3 uses
  %i.i = tail call i32 @intel_guc_ct_send(ptr noundef %i.h, ptr noundef %1, i32 noundef %2, ptr noundef null, i32 noundef 0, i32 noundef -2147483648) #21 ; 2 uses
  %i.j = icmp eq i32 %i.i, -16
  %i.k = and i1 %4, %i.j
  br i1 %i.k, label %.lr.ph.i, label %intel_guc_send_busy_loop.exit.thread, !prof !45

.thread.i.thread:                                 ; preds = %.split
  %i.l = getelementptr i8, ptr %0, i64 640        ; 2 uses
  %i.m = tail call i32 @intel_guc_ct_send(ptr noundef %i.l, ptr noundef %1, i32 noundef %2, ptr noundef null, i32 noundef 0, i32 noundef -2147483648) #21 ; 2 uses
  %i.n = icmp eq i32 %i.m, -16
  %i.o = and i1 %4, %i.n
  br i1 %i.o, label %.lr.ph.split.split.i.preheader, label %intel_guc_send_busy_loop.exit.thread, !prof !45

.lr.ph.i:                                         ; preds = %.thread.i
  br i1 %i.g, label %.lr.ph.split.us.split.i, label %.lr.ph.split.split.i.preheader, !prof !50

.lr.ph.split.split.i.preheader:                   ; preds = %.thread.i.thread, %.lr.ph.i
  %i.p = phi ptr [ %i.h, %.lr.ph.i ], [ %i.l, %.thread.i.thread ]
  br label %.lr.ph.split.split.i

.lr.ph.split.us.split.i:                          ; preds = %.lr.ph.i, %bb.d
  %.01620.us.i = phi i32 [ %i.r, %bb.d ], [ 1, %.lr.ph.i ] ; 2 uses
  %i.q = tail call i64 @msleep_interruptible(i32 noundef %.01620.us.i) #21
  %.not18.us.i = icmp eq i64 %i.q, 0
  br i1 %.not18.us.i, label %bb.d, label %intel_guc_send_busy_loop.exit

bb.d:                                             ; preds = %.lr.ph.split.us.split.i
  %i.r = shl i32 %.01620.us.i, 1
  %i.s = tail call i32 @intel_guc_ct_send(ptr noundef %i.h, ptr noundef %1, i32 noundef %2, ptr noundef null, i32 noundef 0, i32 noundef -2147483648) #21 ; 2 uses
  %i.t = icmp eq i32 %i.s, -16
  br i1 %i.t, label %.lr.ph.split.us.split.i, label %intel_guc_send_busy_loop.exit, !prof !46

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.split.i.preheader, %.lr.ph.split.split.i
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !47
  %i.u = tail call i32 @intel_guc_ct_send(ptr noundef %i.p, ptr noundef %1, i32 noundef %2, ptr noundef null, i32 noundef 0, i32 noundef -2147483648) #21 ; 2 uses
  %i.v = icmp eq i32 %i.u, -16
  br i1 %i.v, label %.lr.ph.split.split.i, label %intel_guc_send_busy_loop.exit.thread, !prof !46

.split12:                                         ; preds = %bb.a
  %i.w = getelementptr i8, ptr %0, i64 1060       ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.w, ptr elementtype(i32) %i.w) #19, !srcloc !25
  %i.x = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count) #25, !srcloc !43
  %i.y = and i32 %i.x, 2147483647
  %.not.i13 = icmp eq i32 %i.y, 0
  br i1 %.not.i13, label %bb.e, label %.thread.i14

bb.e:                                             ; preds = %.split12
  %i.z = tail call i64 asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !44
  %i.aa = and i64 %i.z, 512
  %.not.i.i21 = icmp ne i64 %i.aa, 0              ; 2 uses
  %or.cond.i22 = select i1 %4, i1 %.not.i.i21, i1 false
  br i1 %or.cond.i22, label %bb.f, label %.thread.i14

bb.f:                                             ; preds = %bb.e
  %i.ab = tail call i32 @__SCT__might_resched() #21 ; 0 uses
  br label %.thread.i14

.thread.i14:                                      ; preds = %bb.f, %bb.e, %.split12
  %i.ac = phi i1 [ %.not.i.i21, %bb.e ], [ true, %bb.f ], [ false, %.split12 ]
  %i.ad = getelementptr i8, ptr %0, i64 640       ; 3 uses
  %i.ae = or disjoint i32 %3, -2147483648         ; 3 uses
  %i.af = tail call i32 @intel_guc_ct_send(ptr noundef %i.ad, ptr noundef %1, i32 noundef %2, ptr noundef null, i32 noundef 0, i32 noundef %i.ae) #21 ; 2 uses
  %i.ag = icmp eq i32 %i.af, -16
  %i.ah = and i1 %4, %i.ag
  br i1 %i.ah, label %.lr.ph.i16, label %intel_guc_send_busy_loop.exit, !prof !45

.lr.ph.i16:                                       ; preds = %.thread.i14
  br i1 %i.ac, label %.lr.ph.split.us.split.i18, label %.lr.ph.split.split.i17, !prof !19

.lr.ph.split.us.split.i18:                        ; preds = %.lr.ph.i16, %bb.g
  %.01620.us.i19 = phi i32 [ %i.aj, %bb.g ], [ 1, %.lr.ph.i16 ] ; 2 uses
  %i.ai = tail call i64 @msleep_interruptible(i32 noundef %.01620.us.i19) #21
  %.not18.us.i20 = icmp eq i64 %i.ai, 0
  br i1 %.not18.us.i20, label %bb.g, label %intel_guc_send_busy_loop.exit

bb.g:                                             ; preds = %.lr.ph.split.us.split.i18
  %i.aj = shl i32 %.01620.us.i19, 1
  %i.ak = tail call i32 @intel_guc_ct_send(ptr noundef %i.ad, ptr noundef %1, i32 noundef %2, ptr noundef null, i32 noundef 0, i32 noundef %i.ae) #21 ; 2 uses
  %i.al = icmp eq i32 %i.ak, -16
  br i1 %i.al, label %.lr.ph.split.us.split.i18, label %intel_guc_send_busy_loop.exit, !prof !46

.lr.ph.split.split.i17:                           ; preds = %.lr.ph.i16, %.lr.ph.split.split.i17
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !47
  %i.am = tail call i32 @intel_guc_ct_send(ptr noundef %i.ad, ptr noundef %1, i32 noundef %2, ptr noundef null, i32 noundef 0, i32 noundef %i.ae) #21 ; 2 uses
  %i.an = icmp eq i32 %i.am, -16
  br i1 %i.an, label %.lr.ph.split.split.i17, label %intel_guc_send_busy_loop.exit, !prof !46

intel_guc_send_busy_loop.exit:                    ; preds = %bb.d, %.lr.ph.split.us.split.i, %.lr.ph.split.split.i17, %bb.g, %.lr.ph.split.us.split.i18, %.thread.i14
  %phi.call = phi i32 [ %i.af, %.thread.i14 ], [ -4, %.lr.ph.split.us.split.i18 ], [ %i.am, %.lr.ph.split.split.i17 ], [ %i.ak, %bb.g ], [ -4, %.lr.ph.split.us.split.i ], [ %i.s, %bb.d ] ; 3 uses
  %i.ao = icmp ne i32 %phi.call, 0
  %or.cond = and i1 %i.a, %i.ao
  br i1 %or.cond, label %bb.h, label %intel_guc_send_busy_loop.exit.thread

bb.h:                                             ; preds = %intel_guc_send_busy_loop.exit
  %i.ap = getelementptr i8, ptr %0, i64 1060      ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ap, ptr elementtype(i32) %i.ap) #19, !srcloc !26
  br label %intel_guc_send_busy_loop.exit.thread

intel_guc_send_busy_loop.exit.thread:             ; preds = %.lr.ph.split.split.i, %.thread.i.thread, %.thread.i, %bb.h, %intel_guc_send_busy_loop.exit
  %phi.call26 = phi i32 [ %phi.call, %intel_guc_send_busy_loop.exit ], [ %phi.call, %bb.h ], [ %i.i, %.thread.i ], [ %i.m, %.thread.i.thread ], [ %i.u, %.lr.ph.split.split.i ]
  ret i32 %phi.call26
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @msleep_interruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_guc_ct_send(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__WARN_trap(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -18, -19) i32 @try_context_registration(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.h = getelementptr i8, ptr %i.c, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 6 uses
  %i.j = getelementptr i8, ptr %i.i, i64 624      ; 3 uses
  %i.k = getelementptr i8, ptr %0, i64 624        ; 2 uses
  %i.l = load i16, ptr %i.k, align 8              ; 2 uses
  %i.m = zext i16 %i.l to i32                     ; 3 uses
  %i.n = getelementptr i8, ptr %i.i, i64 2104     ; 7 uses
  %i.o = zext i16 %i.l to i64                     ; 4 uses
  %i.p = tail call ptr @xa_load(ptr noundef %i.n, i64 noundef %i.o) #21
  %.not51 = icmp eq ptr %i.p, null
  %i.q = getelementptr i8, ptr %i.i, i64 1906
  %.val.i = load i8, ptr %i.q, align 2, !range !20, !noundef !21
  %i.r = trunc nuw i8 %.val.i to i1
  br i1 %i.r, label %bb.b, label %clr_ctx_id_mapping.exit, !prof !19

end_hunk_0
begin_hunk_1_@guc_add_request:bb.a
bb.f:                                             ; preds = %.split46.i
  %i.ab = add i32 %i.aa, 1
  %i.ac = or i32 %i.ab, %i.aa
  %.not10.i.i.i.i.i.i = icmp sgt i32 %i.ac, -1
  br i1 %.not10.i.i.i.i.i.i, label %bb.g, label %.sink.split.i.i.i.i.i.i, !prof !19

.sink.split.i.i.i.i.i.i:                          ; preds = %bb.f, %.split46.i
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %.split46.i ], [ 1, %bb.f ]
  tail call void @refcount_warn_saturate(ptr noundef %spec.select.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #21
  br label %bb.g

.thread72.i:                                      ; preds = %.critedge.thread.i, %bb.e
  store i32 4096, ptr %i.a, align 4
  %i.ad = getelementptr i8, ptr %spec.select.i.i.i, i64 624
  %i.ae = load i16, ptr %i.ad, align 8
  %i.af = zext i16 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.af, ptr %i.ag, align 4
  %i.ah = getelementptr i8, ptr %0, i64 640
  %i.ai = call i32 @intel_guc_ct_send(ptr noundef %i.ah, ptr noundef nonnull %i.a, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef -2147483648) #21
  br label %intel_context_put.exit.thread.i

bb.g:                                             ; preds = %.sink.split.i.i.i.i.i.i, %bb.f
  %i.aj = getelementptr i8, ptr %0, i64 640       ; 2 uses
  %i.ak = call i32 @intel_guc_ct_send(ptr noundef %i.aj, ptr noundef nonnull %i.a, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef -2147483646) #21 ; 4 uses
  %.not74.i = icmp eq i32 %i.ak, 0
  br i1 %.not74.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr i8, ptr %0, i64 1060      ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.al, ptr elementtype(i32) %i.al) #19, !srcloc !25
  %i.am = load i32, ptr %i.n, align 4
  %i.an = or i32 %i.am, 16
  store i32 %i.an, ptr %i.n, align 4
  %i.ao = getelementptr i8, ptr %spec.select.i.i.i, i64 708
  %.val.i = load i8, ptr %i.ao, align 4
  %.not64.i = icmp eq i8 %.val.i, 0
  br i1 %.not64.i, label %intel_context_put.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 4096, ptr %i.a, align 4
  %i.ap = call i32 @intel_guc_ct_send(ptr noundef %i.aj, ptr noundef nonnull %i.a, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef -2147483648) #21
  br label %intel_context_put.exit.thread.i

bb.j:                                             ; preds = %bb.g
  %i.aq = load i32, ptr %i.n, align 4
  %i.ar = and i32 %i.aq, -33
  store i32 %i.ar, ptr %i.n, align 4
  %i.as = getelementptr i8, ptr %spec.select.i.i.i, i64 392
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr i8, ptr %i.at, i64 112
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %spec.select.i.i.i, i32 -1, ptr elementtype(i32) %spec.select.i.i.i) #19, !srcloc !24 ; 2 uses
  %i.ax = icmp eq i32 %i.aw, 1
  br i1 %i.ax, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = icmp slt i32 %i.aw, 1
  br i1 %i.ay, label %bb.l, label %intel_context_put.exit.thread.i, !prof !32

bb.l:                                             ; preds = %bb.k
  call void @refcount_warn_saturate(ptr noundef %spec.select.i.i.i, i32 noundef 3) #21
  br label %intel_context_put.exit.thread.i

bb.m:                                             ; preds = %bb.j
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !33
  call void %i.av(ptr noundef %spec.select.i.i.i) #21, !inline_history !155
  br label %intel_context_put.exit.thread.i

intel_context_put.exit.thread.i:                  ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h, %.thread72.i, %bb.e
  %.2.i = phi i32 [ 0, %bb.e ], [ 0, %bb.h ], [ %i.ai, %.thread72.i ], [ %i.ak, %bb.m ], [ %i.ap, %bb.i ], [ %i.ak, %bb.k ], [ %i.ak, %bb.l ]
  call void @_raw_spin_unlock(ptr noundef %i.q) #21
  br label %__guc_add_request.exit

__guc_add_request.exit:                           ; preds = %bb.c, %intel_context_put.exit.thread.i
  %.044.i = phi i32 [ %i.p, %bb.c ], [ %.2.i, %intel_context_put.exit.thread.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.az = icmp eq i32 %.044.i, -16
  br i1 %i.az, label %bb.n, label %bb.o, !prof !158

bb.n:                                             ; preds = %__guc_add_request.exit
  %i.ba = getelementptr i8, ptr %0, i64 1040
  store ptr %1, ptr %i.ba, align 8
  %i.bb = getelementptr i8, ptr %0, i64 1048
  store i32 3, ptr %i.bb, align 8
  br label %bb.o

bb.o:                                             ; preds = %__guc_add_request.exit.thread, %bb.n, %__guc_add_request.exit
  %.044.i7 = phi i32 [ 0, %__guc_add_request.exit.thread ], [ -16, %bb.n ], [ %.044.i, %__guc_add_request.exit ]
  ret i32 %.044.i7
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @clr_ctx_id_mapping(ptr noundef %0, i32 noundef range(i32 0, 65536) %1) unnamed_addr #7 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1282
  %.val = load i8, ptr %i.a, align 2, !range !20, !noundef !21
  %i.b = trunc nuw i8 %.val to i1
  br i1 %i.b, label %bb.b, label %bb.d, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 1472
  %.val7 = load ptr, ptr %i.c, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %.val7, null
  %i.d = zext nneg i32 %1 to i64                  ; 2 uses
  %i.e = getelementptr [128 x i8], ptr %.val7, i64 %i.d ; 2 uses
  %.not1.i = icmp eq ptr %i.e, null
  %.not.i = select i1 %.not.i.i, i1 true, i1 %.not1.i
  br i1 %.not.i, label %_reset_lrc_desc_v69.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.e, i8 0, i64 128, i1 false)
  br label %_reset_lrc_desc_v69.exit

_reset_lrc_desc_v69.exit:                         ; preds = %bb.b, %bb.c
  %i.f = getelementptr i8, ptr %0, i64 1480       ; 3 uses
  %i.g = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.f) #21
  %i.h = tail call ptr @__xa_erase(ptr noundef %i.f, i64 noundef %i.d) #21 ; 0 uses
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.f, i64 noundef %i.g) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_reset_lrc_desc_v69.exit
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__xa_erase(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__xa_store(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_guc_write_barrier(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @guc_context_policy_init_v70(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.context_policy, align 4     ; 17 uses
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i64 0, ptr %i.e, align 4, !annotation !41
  %i.f = getelementptr i8, ptr %i.b, i64 5440
  %i.g = load i64, ptr %i.f, align 8
  %i.h = trunc i64 %i.g to i32
  %i.i = mul i32 %i.h, 1000
  %i.j = getelementptr i8, ptr %i.b, i64 5424
  %i.k = load i64, ptr %i.j, align 8
  %i.l = trunc i64 %i.k to i32
  %i.m = mul i32 %i.l, 1000
  %i.n = getelementptr i8, ptr %0, i64 136
  %i.o = load i64, ptr %i.n, align 8
  %i.p = trunc i64 %i.o to i32
  %i.q = shl i32 %i.p, 14
  %spec.select = and i32 %i.q, 268435456
  %i.r = getelementptr i8, ptr %0, i64 624
  %i.s = load i16, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store i32 4107, ptr %i.t, align 4
  %i.u = zext i16 %i.s to i32
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.u, ptr %i.v, align 4
  %i.w = getelementptr i8, ptr %0, i64 512
  %i.x = load i8, ptr %i.w, align 8
  %i.y = zext i8 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 537067521, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.y, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 536936449, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.i, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 537001985, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.m, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 537198593, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %spec.select, ptr %i.ag, align 4
  store i32 4, ptr %2, align 4
  %i.ah = getelementptr i8, ptr %i.b, i64 1240
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = and i32 %i.ai, 256
  %.not20 = icmp eq i32 %i.aj, 0
  br i1 %.not20, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 537133057, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 1, ptr %i.al, align 4
  store i32 5, ptr %2, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.am = getelementptr i8, ptr %0, i64 432       ; 2 uses
  %i.an = getelementptr i8, ptr %i.d, i64 624
  %i.ao = call fastcc i32 @guc_submission_send_busy_loop(ptr noundef %i.an, ptr noundef nonnull %i.t, i32 noundef 10, i32 noundef 0, i1 noundef zeroext %1) #22, !srcloc !49 ; 2 uses
  %i.ap = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.am) #21
  %.not21 = icmp eq i32 %i.ao, 0
  %i.aq = getelementptr i8, ptr %0, i64 436       ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = and i32 %i.ar, -129
  %masksel = select i1 %.not21, i32 0, i32 128
  %.sink = or disjoint i32 %i.as, %masksel
  store i32 %.sink, ptr %i.aq, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.am, i64 noundef %i.ap) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i32 %i.ao
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @guc_resume(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @assert_forcewakes_active(ptr noundef %i.b, i32 noundef 65535) #21
  tail call void @intel_mocs_init_engine(ptr noundef %0) #21
  %i.c = getelementptr i8, ptr %0, i64 528
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @intel_breadcrumbs_reset(ptr noundef %i.d) #21
  tail call void @intel_engine_set_hwsp_writemask(ptr noundef %0, i32 noundef -1) #21
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 72         ; 4 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = add i32 %i.g, 128                        ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 592
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val.i = load i64, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %i.j, i64 248
  %.val4.i = load i32, ptr %i.l, align 8
  %i.m = icmp ult i32 %i.h, 262144
  br i1 %i.m, label %bb.b, label %setup_hwsp.exit

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %i.e, i64 36
  %i.o = load i32, ptr %i.n, align 4
  %i.p = add i32 %i.o, %i.h
  br label %setup_hwsp.exit

setup_hwsp.exit:                                  ; preds = %bb.a, %bb.b
  %.0.i.i = phi i32 [ %i.p, %bb.b ], [ %i.h, %bb.a ]
  %i.q = trunc i64 %.val.i to i32
  %i.r = add i32 %.val4.i, %i.q
  %i.s = load ptr, ptr %i.e, align 8
  %i.t = zext i32 %.0.i.i to i64
  %i.u = getelementptr i8, ptr %i.s, i64 %i.t
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.r, ptr elementtype(i32) %i.u) #19, !srcloc !39
  %i.v = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.w = load i32, ptr %i.f, align 8
  %i.x = add i32 %i.w, 668                        ; 3 uses
  %i.y = icmp ult i32 %i.x, 262144
  br i1 %i.y, label %bb.c, label %__raw_uncore_write32.exit.i

bb.c:                                             ; preds = %setup_hwsp.exit
  %i.z = getelementptr i8, ptr %i.v, i64 36
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = add i32 %i.aa, %i.x
  br label %__raw_uncore_write32.exit.i

__raw_uncore_write32.exit.i:                      ; preds = %bb.c, %setup_hwsp.exit
  %.0.i.i7 = phi i32 [ %i.ab, %bb.c ], [ %i.x, %setup_hwsp.exit ]
  %i.ac = load ptr, ptr %i.v, align 8
  %i.ad = zext i32 %.0.i.i7 to i64
  %i.ae = getelementptr i8, ptr %i.ac, i64 %i.ad
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 524296, ptr elementtype(i32) %i.ae) #19, !srcloc !39
  %i.af = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ag = load i32, ptr %i.f, align 8
  %i.ah = add i32 %i.ag, 156                      ; 3 uses
  %i.ai = icmp ult i32 %i.ah, 262144
  br i1 %i.ai, label %bb.d, label %__raw_uncore_write32.exit9.i

bb.d:                                             ; preds = %__raw_uncore_write32.exit.i
  %i.aj = getelementptr i8, ptr %i.af, i64 36
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = add i32 %i.ak, %i.ah
  br label %__raw_uncore_write32.exit9.i

__raw_uncore_write32.exit9.i:                     ; preds = %bb.d, %__raw_uncore_write32.exit.i
  %.0.i8.i = phi i32 [ %i.al, %bb.d ], [ %i.ah, %__raw_uncore_write32.exit.i ]
  %i.am = load ptr, ptr %i.af, align 8
  %i.an = zext i32 %.0.i8.i to i64
  %i.ao = getelementptr i8, ptr %i.am, i64 %i.an
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 16777216, ptr elementtype(i32) %i.ao) #19, !srcloc !39
  %i.ap = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.aq = load i32, ptr %i.f, align 8
  %i.ar = add i32 %i.aq, 156                      ; 3 uses
  %i.as = icmp ult i32 %i.ar, 262144
  br i1 %i.as, label %bb.e, label %start_engine.exit

bb.e:                                             ; preds = %__raw_uncore_write32.exit9.i
  %i.at = getelementptr i8, ptr %i.ap, i64 36
  %i.au = load i32, ptr %i.at, align 4
  %i.av = add i32 %i.au, %i.ar
  br label %start_engine.exit

start_engine.exit:                                ; preds = %__raw_uncore_write32.exit9.i, %bb.e
  %.0.i10.i = phi i32 [ %i.av, %bb.e ], [ %i.ar, %__raw_uncore_write32.exit9.i ]
  %i.aw = load ptr, ptr %i.ap, align 8
  %i.ax = zext i32 %.0.i10.i to i64
  %i.ay = getelementptr i8, ptr %i.aw, i64 %i.ax
  %i.az = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ay) #19, !srcloc !22 ; 0 uses
  %i.ba = getelementptr i8, ptr %0, i64 1240
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = and i32 %i.bb, 2048
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %start_engine.exit
  tail call void @xehp_enable_ccs_engines(ptr noundef %0) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %start_engine.exit
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @guc_request_alloc(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 88
  %.val69 = load ptr, ptr %i.a, align 8           ; 2 uses
  %i.b = getelementptr i8, ptr %.val69, i64 680
  %.val.i.i = load ptr, ptr %i.b, align 8         ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i.i, null
  %spec.select.i.i = select i1 %.not.i.i, ptr %.val69, ptr %.val.i.i ; 16 uses
  %i.c = getelementptr i8, ptr %spec.select.i.i, i64 16 ; 3 uses
  %.val68 = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %.val68, i64 8
  %.val68.val = load ptr, ptr %i.d, align 8       ; 3 uses
  %i.e = getelementptr i8, ptr %.val68.val, i64 624 ; 3 uses
  %i.f = getelementptr i8, ptr %0, i64 476        ; 4 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = add i32 %i.g, 64
  store i32 %i.h, ptr %i.f, align 4
  %i.i = getelementptr i8, ptr %0, i64 80
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 880
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call i32 %i.l(ptr noundef %0, i32 noundef 1) #21 ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr %i.f, align 4
  %i.o = add i32 %i.n, -64
  store i32 %i.o, ptr %i.f, align 4
  %i.p = getelementptr i8, ptr %spec.select.i.i, i64 136 ; 3 uses
  %i.q = load volatile i64, ptr %i.p, align 8
  %i.r = and i64 %i.q, 1024
  %.not87 = icmp eq i64 %i.r, 0
  br i1 %.not87, label %bb.c, label %bb.d, !prof !32

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @guc_context_init(ptr noundef %spec.select.i.i) #22, !srcloc !159
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = getelementptr i8, ptr %spec.select.i.i, i64 432 ; 2 uses
  %i.t = getelementptr i8, ptr %spec.select.i.i, i64 536
  %i.u = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %i.t) #21
  br i1 %i.u, label %bb.e, label %intel_context_is_closed.exit

bb.e:                                             ; preds = %bb.d
  tail call void @__intel_context_do_unpin(ptr noundef %spec.select.i.i, i32 noundef 2) #21
  br label %bb.i

intel_context_is_closed.exit:                     ; preds = %bb.d
  %i.v = load volatile i64, ptr %i.p, align 8
  %.in.in.i = and i64 %i.v, 16
  %.in.i.not = icmp eq i64 %.in.in.i, 0
  br i1 %.in.i.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %intel_context_is_closed.exit
  %i.w = tail call i64 @ktime_get_raw() #21
  %i.x = add i64 %i.w, 1500000000                 ; 2 uses
  %i.y = tail call i32 @__SCT__might_resched() #21 ; 0 uses
  %i.z = tail call i64 @ktime_get_raw() #21
  %i.aa = icmp sgt i64 %i.z, %i.x
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !160
  %i.ab = getelementptr i8, ptr %spec.select.i.i, i64 436 ; 2 uses
  %.val7090 = load i32, ptr %i.ab, align 4
  %i.ac = and i32 %.val7090, 256
  %i.ad = icmp ne i32 %i.ac, 0                    ; 2 uses
  %brmerge91 = select i1 %i.ad, i1 true, i1 %i.aa
  br i1 %brmerge91, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.05892 = phi i64 [ %spec.select, %.lr.ph ], [ 10, %bb.f ] ; 4 uses
  %i.ae = shl i64 %.05892, 1                      ; 2 uses
  tail call void @usleep_range_state(i64 noundef %.05892, i64 noundef %i.ae, i32 noundef 2) #21
  %i.af = icmp slt i64 %.05892, 1000
  %spec.select = select i1 %i.af, i64 %i.ae, i64 %.05892
  %i.ag = tail call i64 @ktime_get_raw() #21
  %i.ah = icmp sgt i64 %i.ag, %i.x
end_hunk_1
begin_hunk_2_@guc_create_parallel:_kmalloc_noprof.exit
  %i.t = sext i32 %i.o to i64
  %i.u = getelementptr [8 x i8], ptr %i.c, i64 %i.t
  store ptr %i.s, ptr %i.u, align 8
  %i.v = or disjoint i32 %.05666.us, 2            ; 2 uses
  %i.w = add i32 %i.v, %i.h
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr [8 x i8], ptr %0, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = sext i32 %i.v to i64
  %i.ab = getelementptr [8 x i8], ptr %i.c, i64 %i.aa
  store ptr %i.z, ptr %i.ab, align 8
  %i.ac = or disjoint i32 %.05666.us, 3           ; 2 uses
  %i.ad = add i32 %i.ac, %i.h
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr [8 x i8], ptr %0, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = sext i32 %i.ac to i64
  %i.ai = getelementptr [8 x i8], ptr %i.c, i64 %i.ah
  store ptr %i.ag, ptr %i.ai, align 8
  %i.aj = add nuw i32 %.05666.us, 4               ; 2 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !178

bb.b:                                             ; preds = %._crit_edge.us
  %i.ak = icmp eq i32 %.05467.us, 0
  %i.al = getelementptr i8, ptr %i.au, i64 392    ; 2 uses
  br i1 %i.ak, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @virtual_child_context_ops, ptr %i.al, align 8
  tail call void @intel_context_bind_parent_child(ptr noundef %.05268.us, ptr noundef %i.au) #21
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store ptr @virtual_parent_context_ops, ptr %i.al, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.us = phi ptr [ %i.au, %bb.d ], [ %.05268.us, %bb.c ] ; 2 uses
  %i.am = add nuw i32 %.05467.us, 1               ; 2 uses
  %exitcond84.not = icmp eq i32 %i.am, %2
  br i1 %exitcond84.not, label %._crit_edge69, label %.preheader.us, !llvm.loop !179

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %.05666.us.epil.init = phi i32 [ 0, %.preheader.us ], [ %i.aj, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod122)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.05666.us.epil = phi i32 [ %.05666.us.epil.init, %.epil.preheader ], [ %i.at, %bb.f ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.an = add i32 %.05666.us.epil, %i.h
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr [8 x i8], ptr %0, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = sext i32 %.05666.us.epil to i64
  %i.as = getelementptr [8 x i8], ptr %i.c, i64 %i.ar
  store ptr %i.aq, ptr %i.as, align 8
  %i.at = add nuw i32 %.05666.us.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.f, !llvm.loop !180

._crit_edge.us:                                   ; preds = %bb.f, %._crit_edge.us.unr-lcssa
  %i.au = tail call ptr @intel_engine_create_virtual(ptr noundef nonnull %i.c, i32 noundef %1, i64 noundef 1) #21 ; 5 uses
  %i.av = icmp ugt ptr %i.au, inttoptr (i64 -4096 to ptr)
  br i1 %i.av, label %.split.us, label %bb.b

.preheader:                                       ; preds = %bb.a, %bb.g
  %.05467 = phi i32 [ %i.az, %bb.g ], [ 1, %bb.a ]
  %i.aw = tail call ptr @intel_engine_create_virtual(ptr noundef nonnull %i.c, i32 noundef 0, i64 noundef 1) #21 ; 4 uses
  %i.ax = icmp ugt ptr %i.aw, inttoptr (i64 -4096 to ptr)
  br i1 %i.ax, label %.split.us, label %bb.g

.split.us:                                        ; preds = %._crit_edge.us, %.preheader
  %.us-phi = phi ptr [ %i.aw, %.preheader ], [ %i.au, %._crit_edge.us ] ; 4 uses
  %.us-phi70 = phi ptr [ %i.e, %.preheader ], [ %.05268.us, %._crit_edge.us ] ; 6 uses
  %.not60 = icmp eq ptr %.us-phi70, null
  br i1 %.not60, label %.sink.split, label %bb.h

bb.g:                                             ; preds = %.preheader
  %i.ay = getelementptr i8, ptr %i.aw, i64 392
  store ptr @virtual_child_context_ops, ptr %i.ay, align 8
  tail call void @intel_context_bind_parent_child(ptr noundef %i.e, ptr noundef %i.aw) #21
  %i.az = add nuw i32 %.05467, 1                  ; 2 uses
  %exitcond85.not = icmp eq i32 %i.az, %2
  br i1 %exitcond85.not, label %._crit_edge69, label %.preheader, !llvm.loop !181

._crit_edge69:                                    ; preds = %bb.e, %bb.g, %bb.a, %.preheader64
  %.052.lcssa = phi ptr [ null, %.preheader64 ], [ %i.e, %bb.a ], [ %i.e, %bb.g ], [ %.1.us, %bb.e ] ; 6 uses
  %i.ba = tail call i64 @dma_fence_context_alloc(i32 noundef 1) #21
  %i.bb = getelementptr i8, ptr %.052.lcssa, i64 664 ; 3 uses
  %i.bc = getelementptr i8, ptr %.052.lcssa, i64 696
  store i64 %i.ba, ptr %i.bc, align 8
  %i.bd = getelementptr i8, ptr %.052.lcssa, i64 16 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr i8, ptr %i.be, i64 888
  store ptr @emit_bb_start_parent_no_preempt_mid_batch, ptr %i.bf, align 8
  %i.bg = load ptr, ptr %i.bd, align 8
  %i.bh = getelementptr i8, ptr %i.bg, i64 904
  store ptr @emit_fini_breadcrumb_parent_no_preempt_mid_batch, ptr %i.bh, align 8
  %i.bi = getelementptr i8, ptr %.052.lcssa, i64 708
  %i.bj = load i8, ptr %i.bi, align 4
  %i.bk = zext i8 %i.bj to i32
  %i.bl = shl nuw nsw i32 %i.bk, 2
  %i.bm = add nuw nsw i32 %i.bl, 12
  %i.bn = load ptr, ptr %i.bd, align 8
  %i.bo = getelementptr i8, ptr %i.bn, i64 912
  store i32 %i.bm, ptr %i.bo, align 8
  %.pn72 = load ptr, ptr %i.bb, align 8           ; 2 uses
  %.not6373 = icmp eq ptr %.pn72, %i.bb
  br i1 %.not6373, label %.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge69, %.lr.ph
  %.pn74 = phi ptr [ %.pn, %.lr.ph ], [ %.pn72, %._crit_edge69 ] ; 2 uses
  %i.bp = getelementptr i8, ptr %.pn74, i64 -648  ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr i8, ptr %i.bq, i64 888
  store ptr @emit_bb_start_child_no_preempt_mid_batch, ptr %i.br, align 8
  %i.bs = load ptr, ptr %i.bp, align 8
  %i.bt = getelementptr i8, ptr %i.bs, i64 904
  store ptr @emit_fini_breadcrumb_child_no_preempt_mid_batch, ptr %i.bt, align 8
  %i.bu = load ptr, ptr %i.bp, align 8
  %i.bv = getelementptr i8, ptr %i.bu, i64 912
  store i32 16, ptr %i.bv, align 8
  %.pn = load ptr, ptr %.pn74, align 8            ; 2 uses
  %.not63 = icmp eq ptr %.pn, %i.bb
  br i1 %.not63, label %.sink.split, label %.lr.ph, !llvm.loop !182

bb.h:                                             ; preds = %.split.us
  %i.bw = getelementptr i8, ptr %.us-phi70, i64 392
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr i8, ptr %i.bx, i64 112
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %.us-phi70, i32 -1, ptr nonnull elementtype(i32) %.us-phi70) #19, !srcloc !24 ; 2 uses
  %i.cb = icmp eq i32 %i.ca, 1
  br i1 %i.cb, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cc = icmp slt i32 %i.ca, 1
  br i1 %i.cc, label %bb.j, label %.sink.split, !prof !32

bb.j:                                             ; preds = %bb.i
  tail call void @refcount_warn_saturate(ptr noundef nonnull %.us-phi70, i32 noundef 3) #21
  br label %.sink.split

bb.k:                                             ; preds = %bb.h
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !33
  tail call void %i.bz(ptr noundef nonnull %.us-phi70) #21, !inline_history !2
  br label %.sink.split

.sink.split:                                      ; preds = %.lr.ph, %.split.us, %bb.i, %bb.j, %bb.k, %.preheader.preheader, %._crit_edge69
  %.0.ph = phi ptr [ %.052.lcssa, %._crit_edge69 ], [ %i.e, %.preheader.preheader ], [ %.us-phi, %.split.us ], [ %.us-phi, %bb.k ], [ %.us-phi, %bb.j ], [ %.us-phi, %bb.i ], [ %.052.lcssa, %.lr.ph ]
  tail call void @kfree(ptr noundef nonnull %i.c) #21
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %_kmalloc_noprof.exit
  %.0 = phi ptr [ inttoptr (i64 -12 to ptr), %_kmalloc_noprof.exit ], [ %.0.ph, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @lrc_alloc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @__guc_context_set_preemption_timeout(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.context_policy, align 4     ; 8 uses
  %i.a = alloca [3 x i32], align 4                ; 9 uses
  %i.b = getelementptr i8, ptr %0, i64 1284
  %i.c = load i32, ptr %i.b, align 4
  %i.d = shl i32 %i.c, 16
  %i.e = getelementptr i8, ptr %0, i64 1288
  %i.f = load i32, ptr %i.e, align 4
  %i.g = shl i32 %i.f, 8
  %i.h = or i32 %i.g, %i.d
  %i.i = getelementptr i8, ptr %0, i64 1292
  %i.j = load i32, ptr %i.i, align 4
  %i.k = or i32 %i.h, %i.j
  %i.l = icmp ugt i32 %i.k, 65535
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.m, i8 0, i64 32, i1 false), !annotation !41
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 4107, ptr %i.n, align 4
  %i.o = zext i16 %1 to i32
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.o, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 537001985, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %2, ptr %i.r, align 4
  store i32 1, ptr %3, align 4
  %i.s = call fastcc i32 @guc_submission_send_busy_loop(ptr noundef %0, ptr noundef nonnull %i.n, i32 noundef 2, i32 noundef 0, i1 noundef zeroext true) #22, !srcloc !49 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 4103, ptr %i.a, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.u = zext i16 %1 to i32
  store i32 %i.u, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %2, ptr %i.v, align 4
  %i.w = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count) #25, !srcloc !43
  %i.x = and i32 %i.w, 2147483647
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  %i.y = tail call i64 asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !44
  %i.z = and i64 %i.y, 512
  %.not.i.i.not = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.not, label %.thread.i, label %.thread.i.thread

.thread.i:                                        ; preds = %bb.d, %bb.c
  %i.aa = getelementptr i8, ptr %0, i64 640       ; 2 uses
  %i.ab = call i32 @intel_guc_ct_send(ptr noundef %i.aa, ptr noundef nonnull %i.a, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef -2147483648) #21
  %i.ac = icmp eq i32 %i.ab, -16
  br i1 %i.ac, label %.lr.ph.split.split.i, label %intel_guc_send_busy_loop.exit, !prof !45

.thread.i.thread:                                 ; preds = %bb.d
  %i.ad = tail call i32 @__SCT__might_resched() #21 ; 0 uses
  %i.ae = getelementptr i8, ptr %0, i64 640       ; 2 uses
  %i.af = call i32 @intel_guc_ct_send(ptr noundef %i.ae, ptr noundef nonnull %i.a, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef -2147483648) #21
  %i.ag = icmp eq i32 %i.af, -16
  br i1 %i.ag, label %.lr.ph.split.us.split.i, label %intel_guc_send_busy_loop.exit, !prof !45

.lr.ph.split.us.split.i:                          ; preds = %.thread.i.thread, %bb.e
  %.01620.us.i = phi i32 [ %i.ai, %bb.e ], [ 1, %.thread.i.thread ] ; 2 uses
  %i.ah = call i64 @msleep_interruptible(i32 noundef %.01620.us.i) #21
  %.not18.us.i = icmp eq i64 %i.ah, 0
  br i1 %.not18.us.i, label %bb.e, label %intel_guc_send_busy_loop.exit

bb.e:                                             ; preds = %.lr.ph.split.us.split.i
  %i.ai = shl i32 %.01620.us.i, 1
  %i.aj = call i32 @intel_guc_ct_send(ptr noundef %i.ae, ptr noundef nonnull %i.a, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef -2147483648) #21
  %i.ak = icmp eq i32 %i.aj, -16
  br i1 %i.ak, label %.lr.ph.split.us.split.i, label %intel_guc_send_busy_loop.exit, !prof !46

.lr.ph.split.split.i:                             ; preds = %.thread.i, %.lr.ph.split.split.i
  call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !47
  %i.al = call i32 @intel_guc_ct_send(ptr noundef %i.aa, ptr noundef nonnull %i.a, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef -2147483648) #21
  %i.am = icmp eq i32 %i.al, -16
  br i1 %i.am, label %.lr.ph.split.split.i, label %intel_guc_send_busy_loop.exit, !prof !46

intel_guc_send_busy_loop.exit:                    ; preds = %.lr.ph.split.us.split.i, %bb.e, %.lr.ph.split.split.i, %.thread.i.thread, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.f

bb.f:                                             ; preds = %intel_guc_send_busy_loop.exit, %bb.b
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_sw_fence_reinit(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @i915_sw_fence_await(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_sw_fence_commit(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__delay_sched_disable(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -536       ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 -520
  %.val = load ptr, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.c, align 8         ; 4 uses
  %i.d = getelementptr i8, ptr %.val.val, i64 624
  %i.e = getelementptr i8, ptr %0, i64 -104       ; 2 uses
  %i.f = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.e) #21 ; 2 uses
  %i.g = getelementptr i8, ptr %.val.val, i64 1656
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bypass_sched_disable.exit.thread, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.h, i64 56
  %i.j = load volatile i32, ptr %i.i, align 4
  %.not.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i, label %submission_disabled.exit.i, label %bypass_sched_disable.exit.thread, !prof !19

submission_disabled.exit.i:                       ; preds = %bb.b
  %i.k = getelementptr i8, ptr %.val.val, i64 3488
  %i.l = load volatile i64, ptr %i.k, align 8
  %.in.i.i.i = icmp slt i64 %i.l, 0
  br i1 %.in.i.i.i, label %bypass_sched_disable.exit.thread, label %bb.c

bb.c:                                             ; preds = %submission_disabled.exit.i
  %i.m = getelementptr i8, ptr %0, i64 88
  %.val.i = load i16, ptr %i.m, align 8           ; 2 uses
  %i.n = icmp eq i16 %.val.i, -1
  br i1 %i.n, label %bypass_sched_disable.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %.val.val, i64 2104
  %i.p = zext i16 %.val.i to i64
  %i.q = tail call ptr @xa_load(ptr noundef %i.o, i64 noundef %i.p) #21
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bypass_sched_disable.exit.thread, label %bypass_sched_disable.exit

bypass_sched_disable.exit.thread:                 ; preds = %bb.a, %bb.b, %submission_disabled.exit.i, %bb.c, %bb.d
  %i.r = getelementptr i8, ptr %0, i64 -100       ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, -17
  store i32 %i.t, ptr %i.r, align 4
  br label %bb.e

bypass_sched_disable.exit:                        ; preds = %bb.d
  %i.u = getelementptr i8, ptr %0, i64 -100
  %.val7.i = load i32, ptr %i.u, align 4
  %i.v = and i32 %.val7.i, 16
  %.not8.i = icmp eq i32 %i.v, 0
  br i1 %.not8.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bypass_sched_disable.exit.thread, %bypass_sched_disable.exit
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.e, i64 noundef %i.f) #21
  tail call void @__intel_context_do_unpin(ptr noundef %i.a, i32 noundef 2) #21
  br label %bb.g

bb.f:                                             ; preds = %bypass_sched_disable.exit
  tail call fastcc void @do_sched_disable(ptr noundef %i.d, ptr noundef %i.a, i64 noundef %i.f) #22, !srcloc !184
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @do_sched_disable(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = getelementptr i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 3176     ; 2 uses
  %i.h = getelementptr i8, ptr %1, i64 436        ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, -21
  %i.k = or disjoint i32 %i.j, 4
  store i32 %i.k, ptr %i.h, align 4
  %i.l = getelementptr i8, ptr %1, i64 456        ; 3 uses
  tail call void @i915_sw_fence_reinit(ptr noundef %i.l) #21
  %i.m = tail call zeroext i1 @i915_sw_fence_await(ptr noundef %i.l) #21 ; 0 uses
  tail call void @i915_sw_fence_commit(ptr noundef %i.l) #21
  %i.n = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %1, i32 1, ptr elementtype(i32) %1) #19, !srcloc !24 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.o = add i32 %i.n, 1
  %i.p = or i32 %i.o, %i.n
  %.not10.i.i.i.i.i.i = icmp sgt i32 %i.p, -1
  br i1 %.not10.i.i.i.i.i.i, label %prep_context_pending_disable.exit, label %.sink.split.i.i.i.i.i.i, !prof !19

.sink.split.i.i.i.i.i.i:                          ; preds = %bb.b, %bb.a
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %bb.a ], [ 1, %bb.b ]
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef %.sink.i.i.i.i.i.i) #21
  br label %prep_context_pending_disable.exit

prep_context_pending_disable.exit:                ; preds = %bb.b, %.sink.split.i.i.i.i.i.i
  %i.q = getelementptr i8, ptr %1, i64 624
  %i.r = load i16, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %1, i64 432
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.s, i64 noundef %2) #21
  %i.t = tail call ptr @intel_runtime_pm_get(ptr noundef %i.g) #21
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %prep_context_pending_disable.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.w = zext i16 %i.r to i32
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 4097, ptr %i.a, align 4
  store i32 %i.w, ptr %i.v, align 4
  store i32 0, ptr %i.x, align 4
  %i.y = call fastcc i32 @guc_submission_send_busy_loop(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 3, i32 noundef 2, i1 noundef zeroext true) #22, !srcloc !54 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @intel_runtime_pm_put_unchecked(ptr noundef %i.g) #21
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %prep_context_pending_disable.exit
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @lrc_pre_pin(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3
end_hunk_2

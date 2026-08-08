inline.NumInlined: 101
inline.NumDeleted: 48
begin_hunk_0_@i915_gem_object_has_cache_level
declare dso_local zeroext i1 @i915_gem_object_has_cache_level(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_gem_object_set_cache_coherency(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_object_unbind(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -95, 1) i32 @i915_gem_get_caching_ioctl(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1648
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 28
  %i.d = load i64, ptr %i.c, align 4
  %i.e = and i64 %i.d, 4
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  tail call void @__rcu_read_lock() #7
  %i.f = load i32, ptr %1, align 4
  %i.g = getelementptr i8, ptr %2, i64 80
  %i.h = zext i32 %i.f to i64
  %i.i = tail call ptr @idr_find(ptr noundef %i.g, i64 noundef %i.h) #7 ; 5 uses
  %.not15 = icmp eq ptr %i.i, null
  br i1 %.not15, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.i, i64 660
  %i.k = load i16, ptr %i.j, align 4
  %i.l = and i16 %i.k, 64
  %.not16 = icmp eq i16 %i.l, 0
  br i1 %.not16, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.m = tail call zeroext i1 @i915_gem_object_has_cache_level(ptr noundef nonnull %i.i, i32 noundef 1) #7
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call zeroext i1 @i915_gem_object_has_cache_level(ptr noundef nonnull %i.i, i32 noundef 2) #7
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = getelementptr i8, ptr %1, i64 4
  store i32 1, ptr %i.o, align 4
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.p = tail call zeroext i1 @i915_gem_object_has_cache_level(ptr noundef nonnull %i.i, i32 noundef 3) #7
  %i.q = getelementptr i8, ptr %1, i64 4          ; 2 uses
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 2, ptr %i.q, align 4
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i32 0, ptr %i.q, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.b, %bb.f, %bb.i, %bb.h
  %.0 = phi i32 [ -2, %bb.b ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ], [ -95, %bb.c ]
  tail call void @__rcu_read_unlock() #7
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  %.013 = phi i32 [ %.0, %bb.j ], [ -19, %bb.a ]
  ret i32 %.013
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @i915_gem_set_caching_ioctl(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1648
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 28
  %i.d = load i64, ptr %i.c, align 4              ; 2 uses
  %i.e = and i64 %i.d, 4
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %i915_gem_object_put.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 1656
  %i.g = load i8, ptr %i.f, align 8
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 8
  %i.j = getelementptr i8, ptr %0, i64 1657
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = or disjoint i32 %i.i, %i.l
  %i.n = icmp samesign ugt i32 %i.m, 3141
  br i1 %i.n, label %i915_gem_object_put.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  switch i32 %i.p, label %i915_gem_object_put.exit [
    i32 0, label %bb.f
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.q = and i64 %i.d, 4295229440
  %or.cond = icmp eq i64 %i.q, 0
  br i1 %or.cond, label %i915_gem_object_put.exit, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %0, i64 3112
  %i.s = load i32, ptr %i.r, align 8
  %.not27 = icmp eq i32 %i.s, 0
  %i.t = select i1 %.not27, i32 0, i32 3
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  %.023 = phi i32 [ %i.t, %bb.e ], [ %i.p, %bb.c ], [ 1, %bb.d ]
  %i.u = load i32, ptr %1, align 4
  tail call void @__rcu_read_lock() #7
  %i.v = getelementptr i8, ptr %2, i64 80
  %i.w = zext i32 %i.u to i64
  %i.x = tail call ptr @idr_find(ptr noundef %i.v, i64 noundef %i.w) #7 ; 19 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %i915_gem_object_lookup.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load volatile i32, ptr %i.x, align 4     ; 2 uses
  %.old1.not.i.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.old1.not.i.i.i.i.i.i, label %raw_atomic_try_cmpxchg_relaxed.exit.thread.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.g, %raw_atomic_try_cmpxchg_relaxed.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ae, %raw_atomic_try_cmpxchg_relaxed.exit.i.i.i.i.i.i ], [ %i.y, %bb.g ] ; 3 uses
  %i.z = add i32 %.0.i.i.i.i.i.i, 1
  %i.aa = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.x, i32 %i.z, ptr nonnull elementtype(i32) %i.x, i32 %.0.i.i.i.i.i.i) #8, !srcloc !16 ; 2 uses
  %i.ab = extractvalue { i8, i32 } %i.aa, 0       ; 2 uses
  %i.ac = icmp ult i8 %i.ab, 2
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = trunc nuw i8 %i.ab to i1
  br i1 %i.ad, label %raw_atomic_try_cmpxchg_relaxed.exit.thread.i.i.i.i.i.i, label %raw_atomic_try_cmpxchg_relaxed.exit.i.i.i.i.i.i, !prof !12

raw_atomic_try_cmpxchg_relaxed.exit.i.i.i.i.i.i:  ; preds = %.preheader.i.i.i.i.i.i
  %i.ae = extractvalue { i8, i32 } %i.aa, 1       ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %raw_atomic_try_cmpxchg_relaxed.exit.thread.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, !llvm.loop !28

raw_atomic_try_cmpxchg_relaxed.exit.thread.i.i.i.i.i.i: ; preds = %raw_atomic_try_cmpxchg_relaxed.exit.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i, %bb.g
  %.2.i.i.i.i.i.i = phi i32 [ 0, %bb.g ], [ %.0.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ 0, %raw_atomic_try_cmpxchg_relaxed.exit.i.i.i.i.i.i ] ; 3 uses
  %i.ag = add i32 %.2.i.i.i.i.i.i, 1
  %i.ah = or i32 %i.ag, %.2.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp sgt i32 %i.ah, -1
  br i1 %.not.i.i.i.i.i.i, label %kref_get_unless_zero.exit.i.i, label %bb.h, !prof !12

bb.h:                                             ; preds = %raw_atomic_try_cmpxchg_relaxed.exit.thread.i.i.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.x, i32 noundef 0) #7
  br label %kref_get_unless_zero.exit.i.i

kref_get_unless_zero.exit.i.i:                    ; preds = %bb.h, %raw_atomic_try_cmpxchg_relaxed.exit.thread.i.i.i.i.i.i
  %.not5.i.i = icmp eq i32 %.2.i.i.i.i.i.i, 0
  br i1 %.not5.i.i, label %i915_gem_object_lookup.exit.thread, label %i915_gem_object_lookup.exit

i915_gem_object_lookup.exit.thread:               ; preds = %bb.f, %kref_get_unless_zero.exit.i.i
  tail call void @__rcu_read_unlock() #7
  br label %i915_gem_object_put.exit

i915_gem_object_lookup.exit:                      ; preds = %kref_get_unless_zero.exit.i.i
  tail call void @__rcu_read_unlock() #7
  %i.ai = getelementptr i8, ptr %i.x, i64 660
  %i.aj = load i16, ptr %i.ai, align 4
  %i.ak = and i16 %i.aj, 64
  %.not31 = icmp eq i16 %i.ak, 0
  br i1 %.not31, label %bb.i, label %bb.r

bb.i:                                             ; preds = %i915_gem_object_lookup.exit
  %i.al = getelementptr i8, ptr %i.x, i64 480     ; 2 uses
  %.val = load ptr, ptr %i.al, align 8
  %.val.val = load i32, ptr %.val, align 8
  %i.am = and i32 %.val.val, 8
  %.not39 = icmp eq i32 %i.am, 0
  br i1 %.not39, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr i8, ptr %i.x, i64 1096
  %.val34 = load ptr, ptr %i.an, align 8
  %.not40 = icmp eq ptr %.val34, null
  br i1 %.not40, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = load i32, ptr %i.o, align 4
  %.not33 = icmp eq i32 %i.ao, 1
  br i1 %.not33, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br label %bb.r

bb.m:                                             ; preds = %bb.i
  %i.ap = getelementptr i8, ptr %i.x, i64 248     ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %i.aq, ptr noundef null) #7 ; 3 uses
  %i.as = icmp eq i32 %i.ar, -114
  %spec.store.select.i.i = select i1 %i.as, i32 0, i32 %i.ar
  switch i32 %spec.store.select.i.i, label %bb.r [
    i32 -35, label %bb.n
    i32 0, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.at = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.x, i32 1, ptr nonnull elementtype(i32) %i.x) #8, !srcloc !10 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %bb.o, !prof !11

bb.o:                                             ; preds = %bb.n
  %i.au = add i32 %i.at, 1
  %i.av = or i32 %i.au, %i.at
  %.not10.i.i.i.i.i.i.i.i = icmp sgt i32 %i.av, -1
  br i1 %.not10.i.i.i.i.i.i.i.i, label %i915_gem_object_lock_interruptible.exit.thread, label %.sink.split.i.i.i.i.i.i.i.i, !prof !12

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.o, %bb.n
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ 2, %bb.n ], [ 1, %bb.o ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.x, i32 noundef %.sink.i.i.i.i.i.i.i.i) #7
  br label %i915_gem_object_lock_interruptible.exit.thread

i915_gem_object_lock_interruptible.exit.thread:   ; preds = %bb.o, %.sink.split.i.i.i.i.i.i.i.i
  store ptr %i.x, ptr inttoptr (i64 40 to ptr), align 8
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.aw = tail call i32 @i915_gem_object_set_cache_level(ptr noundef nonnull %i.x, i32 noundef %.023) #9
  %i.ax = load ptr, ptr %i.al, align 8
  %i.ay = getelementptr i8, ptr %i.ax, i64 80
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %i915_gem_object_unlock.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void %i.az(ptr noundef nonnull %i.x) #7, !inline_history !14
  br label %i915_gem_object_unlock.exit

i915_gem_object_unlock.exit:                      ; preds = %bb.p, %bb.q
  %i.ba = load ptr, ptr %i.ap, align 8
  tail call void @ww_mutex_unlock(ptr noundef %i.ba) #7
  br label %bb.r

bb.r:                                             ; preds = %bb.m, %i915_gem_object_lock_interruptible.exit.thread, %i915_gem_object_lookup.exit, %bb.k, %bb.l, %i915_gem_object_unlock.exit
  %.0 = phi i32 [ %i.aw, %i915_gem_object_unlock.exit ], [ -6, %bb.l ], [ 0, %bb.k ], [ %i.ar, %bb.m ], [ -95, %i915_gem_object_lookup.exit ], [ -35, %i915_gem_object_lock_interruptible.exit.thread ] ; 3 uses
  %i.bb = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.x, i32 -1, ptr nonnull elementtype(i32) %i.x) #8, !srcloc !10 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = icmp slt i32 %i.bb, 1
  br i1 %i.bd, label %bb.t, label %i915_gem_object_put.exit, !prof !11

bb.t:                                             ; preds = %bb.s
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.x, i32 noundef 3) #7
  br label %i915_gem_object_put.exit

bb.u:                                             ; preds = %bb.r
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !29
  tail call void @drm_gem_object_free(ptr noundef nonnull %i.x) #7
  br label %i915_gem_object_put.exit

i915_gem_object_put.exit:                         ; preds = %bb.u, %bb.t, %bb.s, %i915_gem_object_lookup.exit.thread, %bb.c, %bb.d, %bb.b, %bb.a
  %.024 = phi i32 [ -95, %bb.b ], [ -19, %bb.a ], [ -19, %bb.d ], [ -2, %i915_gem_object_lookup.exit.thread ], [ -22, %bb.c ], [ %.0, %bb.u ], [ %.0, %bb.s ], [ %.0, %bb.t ]
  ret i32 %.024
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @i915_gem_object_lock_interruptible(ptr noundef nonnull %0) unnamed_addr #3 align 16 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %i.b, ptr noundef null) #7 ; 2 uses
  %i.d = icmp eq i32 %i.c, -114
  %spec.store.select.i = select i1 %i.d, i32 0, i32 %i.c ; 2 uses
  %i.e = icmp eq i32 %spec.store.select.i, -35
  br i1 %i.e, label %bb.b, label %__i915_gem_object_lock.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %0, i32 1, ptr nonnull elementtype(i32) %0) #8, !srcloc !10 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.g = add i32 %i.f, 1
  %i.h = or i32 %i.g, %i.f
  %.not10.i.i.i.i.i.i.i = icmp sgt i32 %i.h, -1
  br i1 %.not10.i.i.i.i.i.i.i, label %i915_gem_object_get.exit.i, label %.sink.split.i.i.i.i.i.i.i, !prof !12

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.c, %bb.b
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %bb.b ], [ 1, %bb.c ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef %.sink.i.i.i.i.i.i.i) #7
  br label %i915_gem_object_get.exit.i

i915_gem_object_get.exit.i:                       ; preds = %.sink.split.i.i.i.i.i.i.i, %bb.c
  store ptr %0, ptr inttoptr (i64 40 to ptr), align 8
  br label %__i915_gem_object_lock.exit

__i915_gem_object_lock.exit:                      ; preds = %bb.a, %i915_gem_object_get.exit.i
  ret i32 %spec.store.select.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @i915_gem_object_pin_to_display_plane(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 1648
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 2
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call zeroext i1 @i915_gem_object_is_lmem(ptr noundef %0) #7
  br i1 %i.h, label %bb.c, label %i915_gem_object_flush_if_display_locked.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr i8, ptr %i.b, i64 3112
  %i.j = load i32, ptr %i.i, align 8
  %.not43 = icmp eq i32 %i.j, 0
  %i.k = select i1 %.not43, i32 0, i32 3          ; 2 uses
  %i.l = tail call zeroext i1 @i915_gem_object_has_cache_level(ptr noundef %0, i32 noundef %i.k) #7
  br i1 %i.l, label %i915_gem_object_set_cache_level.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i32 @i915_gem_object_wait(ptr noundef %0, i32 noundef 5, i64 noundef 9223372036854775807) #7 ; 2 uses
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %i915_gem_object_set_cache_level.exit, label %i915_gem_object_set_cache_level.exit.thread51

i915_gem_object_set_cache_level.exit:             ; preds = %bb.d
  tail call void @i915_gem_object_set_cache_coherency(ptr noundef %0, i32 noundef %i.k) #7
  %i.n = getelementptr i8, ptr %0, i64 660        ; 2 uses
  %i.o = load i16, ptr %i.n, align 4
  %i.p = or i16 %i.o, 512
  store i16 %i.p, ptr %i.n, align 4
  %i.q = tail call i32 @i915_gem_object_unbind(ptr noundef %0, i64 noundef 3) #7 ; 2 uses
  %.not44 = icmp eq i32 %i.q, 0
  br i1 %.not44, label %i915_gem_object_set_cache_level.exit.thread, label %i915_gem_object_set_cache_level.exit.thread51

i915_gem_object_set_cache_level.exit.thread51:    ; preds = %bb.d, %i915_gem_object_set_cache_level.exit
  %.0.i54 = phi i32 [ %i.q, %i915_gem_object_set_cache_level.exit ], [ %i.m, %bb.d ]
  %i.r = sext i32 %.0.i54 to i64
  %i.s = inttoptr i64 %i.r to ptr
  br label %i915_gem_object_flush_if_display_locked.exit

i915_gem_object_set_cache_level.exit.thread:      ; preds = %bb.c, %i915_gem_object_set_cache_level.exit
  %.not45 = icmp eq i32 %3, 0
  %i.t = shl i32 %3, 12
  %i.u = or i32 %i.t, %5
  %i.v = or i32 %i.u, 256
  %.038 = select i1 %.not45, i32 %5, i32 %i.v
  %i.w = zext i32 %.038 to i64                    ; 3 uses
  %i.x = and i64 %i.w, 8
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.e, label %.thread57

bb.e:                                             ; preds = %i915_gem_object_set_cache_level.exit.thread
  %.not46 = icmp eq ptr %4, null
  br i1 %.not46, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load i32, ptr %4, align 4
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.g, label %.thread57

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ab = zext i32 %2 to i64
  %i.ac = or i64 %i.w, 12
  %i.ad = tail call ptr @i915_gem_object_ggtt_pin_ww(ptr noundef %0, ptr noundef %1, ptr noundef %4, i64 noundef 0, i64 noundef %i.ab, i64 noundef %i.ac) #7 ; 3 uses
  %i.ae = icmp ugt ptr %i.ad, inttoptr (i64 -4096 to ptr)
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not47 = icmp eq ptr %i.ad, inttoptr (i64 -35 to ptr)
  br i1 %.not47, label %i915_gem_object_flush_if_display_locked.exit, label %.thread57

.thread57:                                        ; preds = %bb.f, %i915_gem_object_set_cache_level.exit.thread, %bb.h
  %i.af = zext i32 %2 to i64
  %i.ag = tail call ptr @i915_gem_object_ggtt_pin_ww(ptr noundef %0, ptr noundef %1, ptr noundef %4, i64 noundef 0, i64 noundef %i.af, i64 noundef %i.w) #7
  br label %bb.i

bb.i:                                             ; preds = %.thread57, %bb.g
  %.1 = phi ptr [ %i.ag, %.thread57 ], [ %i.ad, %bb.g ] ; 6 uses
  %i.ah = icmp ugt ptr %.1, inttoptr (i64 -4096 to ptr)
  br i1 %i.ah, label %i915_gem_object_flush_if_display_locked.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr i8, ptr %.1, i64 260      ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = tail call i32 @llvm.umax.i32(i32 %i.aj, i32 %2)
  store i32 %i.ak, ptr %i.ai, align 4
  %i.al = getelementptr i8, ptr %.1, i64 270      ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.al, i32 2, ptr elementtype(i8) %i.al) #8, !srcloc !26
  %i.am = getelementptr i8, ptr %0, i64 672
  %i.an = load volatile ptr, ptr %i.am, align 8
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %i915_gem_object_is_framebuffer.exit.i, label %i915_gem_object_is_framebuffer.exit.thread.i

i915_gem_object_is_framebuffer.exit.i:            ; preds = %bb.j
  %i.ao = getelementptr i8, ptr %0, i64 660
  %i.ap = load i16, ptr %i.ao, align 4
  %i.aq = and i16 %i.ap, 1024
  %.not.i48 = icmp eq i16 %i.aq, 0
  br i1 %.not.i48, label %i915_gem_object_flush_if_display_locked.exit, label %i915_gem_object_is_framebuffer.exit.thread.i

i915_gem_object_is_framebuffer.exit.thread.i:     ; preds = %i915_gem_object_is_framebuffer.exit.i, %bb.j
  tail call fastcc void @flush_write_domain(ptr noundef %0, i32 noundef -2) #9, !srcloc !13
  %i.ar = getelementptr i8, ptr %0, i64 660
  %i.as = load i16, ptr %i.ar, align 4
  %i.at = and i16 %i.as, 512
  %.not.i2.i = icmp eq i16 %i.at, 0
  br i1 %.not.i2.i, label %__i915_gem_object_flush_for_display.exit.i, label %bb.k

bb.k:                                             ; preds = %i915_gem_object_is_framebuffer.exit.thread.i
  %i.au = tail call zeroext i1 @i915_gem_clflush_object(ptr noundef %0, i32 noundef 1) #7 ; 0 uses
  br label %__i915_gem_object_flush_for_display.exit.i

__i915_gem_object_flush_for_display.exit.i:       ; preds = %bb.k, %i915_gem_object_is_framebuffer.exit.thread.i
  %i.av = getelementptr i8, ptr %0, i64 664
  store i16 0, ptr %i.av, align 8
  br label %i915_gem_object_flush_if_display_locked.exit

i915_gem_object_flush_if_display_locked.exit:     ; preds = %bb.h, %__i915_gem_object_flush_for_display.exit.i, %i915_gem_object_is_framebuffer.exit.i, %bb.b, %bb.i, %i915_gem_object_set_cache_level.exit.thread51
  %.0 = phi ptr [ %i.s, %i915_gem_object_set_cache_level.exit.thread51 ], [ %.1, %bb.i ], [ %.1, %__i915_gem_object_flush_for_display.exit.i ], [ inttoptr (i64 -22 to ptr), %bb.b ], [ %.1, %i915_gem_object_is_framebuffer.exit.i ], [ inttoptr (i64 -35 to ptr), %bb.h ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @i915_gem_object_is_lmem(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @i915_gem_object_ggtt_pin_ww(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @i915_gem_object_set_to_cpu_domain(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = select i1 %1, i32 5, i32 1
  %i.b = tail call i32 @i915_gem_object_wait(ptr noundef %0, i32 noundef %i.a, i64 noundef 9223372036854775807) #7 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %__start_cpu_write.exit

bb.b:                                             ; preds = %bb.a
end_hunk_0
